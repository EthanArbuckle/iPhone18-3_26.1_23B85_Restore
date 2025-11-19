__n128 re::CameraMultiView::makeCameraDataInstancedMode@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  re::CameraView::makeCameraData(a1, a2, a3, a4);
  re::DynamicInlineArray<re::Projection,2ul>::add((a4 + 128), a1 + 1616);
  if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((a4 + 48), v6))
  {
    v8 = a4 + 32 * *(a4 + 48);
    v9 = *(a1 + 1600);
    *(v8 + 64) = *(a1 + 1584);
    *(v8 + 80) = v9;
    ++*(a4 + 48);
    ++*(a4 + 56);
  }

  if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((a4 + 624), v7))
  {
    v11 = (a4 + (*(a4 + 624) << 6));
    v12 = *(a1 + 2688);
    v13 = *(a1 + 2656);
    v11[40] = *(a1 + 2640);
    v11[41] = v13;
    v11[42] = *(a1 + 2672);
    v11[43] = v12;
    ++*(a4 + 624);
    ++*(a4 + 632);
  }

  *(a4 + 890) = *(a4 + 128);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity((a4 + 768), v10))
  {
    result = *(a1 + 2784);
    *(a4 + 16 * (*(a4 + 768))++ + 784) = result;
    ++*(a4 + 776);
  }

  return result;
}

uint64_t re::CameraView::makeViewportPercentData@<X0>(re::CameraView *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_1F5D06920;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity((a3 + 16), a2);
  if (result)
  {
    *(a3 + 16 * (*(a3 + 16))++ + 32) = *(this + 66);
    ++*(a3 + 24);
  }

  *(a3 + 64) = 1;
  *(a3 + 68) = *(this + 292);
  return result;
}

void re::ViewportPercentData::~ViewportPercentData(re::ViewportPercentData *this)
{
  *(this + 2) = 0;
  ++*(this + 6);
}

{
  *(this + 2) = 0;
  ++*(this + 6);
  JUMPOUT(0x1E6906520);
}

uint64_t re::CameraMultiView::makeViewportPercentDataInstancedMode@<X0>(re::CameraMultiView *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::CameraView::makeViewportPercentData(this, a2, a3);
  result = re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity((a3 + 16), v5);
  if (result)
  {
    *(a3 + 16 * (*(a3 + 16))++ + 32) = *(this + 163);
    ++*(a3 + 24);
  }

  *(a3 + 64) = 2;
  *(a3 + 65) = *(this + 3105);
  *(a3 + 68) = 0;
  return result;
}

void re::CameraView::addPickupScopeLanes(re::CameraView *this, re::RenderFrame *a2)
{
  v2 = *(this + 80);
  if (v2)
  {
    v5 = this + 9;
    v6 = v2 << 6;
    v7 = (*(this + 82) + 48);
    do
    {
      if (*(v7 - 1))
      {
        v8 = *v7;
      }

      else
      {
        v8 = v7 - 7;
      }

      if (*(v7 - 5))
      {
        v9 = *(v7 - 4);
      }

      else
      {
        v9 = v7 - 39;
      }

      v10 = v5;
      if (*(this + 8))
      {
        v10 = *(this + 2);
      }

      re::RenderFrame::pickupScopeLane(a2, v8, v9, v10);
      v7 += 8;
      v6 -= 64;
    }

    while (v6);
  }
}

void re::SceneScope::~SceneScope(re::SceneScope *this)
{
  *this = &unk_1F5D06A20;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5D06A20;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::CameraView::prepareEmitDefault(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v65[6] = *MEMORY[0x1E69E9840];
  re::CameraView::addPickupScopeLanes(a1, a2);
  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = (a1 + 9);
  }

  v12 = strlen(a6);
  if (v12)
  {
    MurmurHash3_x64_128(a6, v12, 0, &v41);
    v13 = (*v42 - 0x61C8864680B583E9 + (v41 << 6) + (v41 >> 2)) ^ v41;
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(v11);
  if (v14)
  {
    MurmurHash3_x64_128(v11, v14, 0, &v41);
    v15 = ((*v42 - 0x61C8864680B583E9 + (v41 << 6) + (v41 >> 2)) ^ v41) - 0x61C8864680B583E9;
  }

  else
  {
    v15 = 0x9E3779B97F4A7C17;
  }

  v16 = ((v13 >> 2) + (v13 << 6) + v15) ^ v13;
  re::CameraView::makeCameraData(a1, a2[1], a5, &v41);
  re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a3, v16, &v41);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v65);
  ++v64;
  ++v62;
  ++DWORD2(v49);
  v63 = 0;
  v61 = 0;
  *&v49 = 0;
  *&v44 = 0;
  ++DWORD2(v44);
  if (*v42 && (v42[8] & 1) != 0)
  {
    (*(**v42 + 40))();
  }

  re::CameraView::makeViewportPercentData(a1, v17, &v41);
  re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a3, v16, &v41);
  v18 = a2[1];
  v41 = &unk_1F5D035F0;
  *v42 = *(a1 + 1152);
  v42[4] = (*v42 != -1) & *(v18 + 364);
  v42[5] = *(a1 + 701);
  re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(a3, v16, &v41);
  v41 = &unk_1F5D06960;
  *v42 = *(a1 + 1160);
  v19 = "N2re24RenderCommandEncoderDataE";
  if (("N2re24RenderCommandEncoderDataE" & 0x8000000000000000) != 0)
  {
    v20 = ("N2re24RenderCommandEncoderDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  v40 = (v16 - 0x61C8864680B583E9 + (v19 << 6) + (v19 >> 2)) ^ v19;
  v23 = (*(**(a3 + 8) + 32))(*(a3 + 8), 16, 8);
  *v23 = &unk_1F5D06960;
  v23[1] = *v42;
  v39 = v23;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a3 + 64, &v40, &v39);
  v41 = &unk_1F5D03570;
  v42[16] = *(a1 + 732);
  *v42 = *(a1 + 716);
  re::RenderGraphDataStore::add<re::StencilInfoData,re::StencilInfoData>(a3, v16, &v41);
  v41 = &unk_1F5D069E0;
  v51 = 0;
  v56 = 0;
  v24 = *(a1 + 768);
  *&v42[8] = *(a1 + 752);
  v43 = v24;
  v25 = *(a1 + 800);
  v44 = *(a1 + 784);
  v45 = v25;
  v26 = *(a1 + 864);
  v48 = *(a1 + 848);
  v49 = v26;
  v50 = *(a1 + 880);
  v27 = *(a1 + 832);
  v46 = *(a1 + 816);
  v47 = v27;
  if (*(a1 + 896) == 1)
  {
    v51 = 1;
    v28 = *(a1 + 928);
    v52 = *(a1 + 912);
    v53 = v28;
    v29 = *(a1 + 960);
    v54 = *(a1 + 944);
    v55 = v29;
  }

  if (*(a1 + 976) == 1)
  {
    v56 = 1;
    v30 = *(a1 + 1008);
    v57 = *(a1 + 992);
    v58 = v30;
    v31 = *(a1 + 1040);
    v59 = *(a1 + 1024);
    v60 = v31;
  }

  re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData>(a3, v16, &v41);
  v32 = *(a5 + 48);
  v33 = *a5;
  v41 = &unk_1F5D06A20;
  re::DynamicString::DynamicString(v42, v32, v33);
  re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a3, v16, &v41);
  v41 = &unk_1F5D06A20;
  if (*v42 && (v42[8] & 1) != 0)
  {
    (*(**v42 + 40))();
  }

  v41 = &unk_1F5D06A60;
  *v42 = *(a5 + 392);
  re::RenderGraphDataStore::add<re::SceneIndexData,re::SceneIndexData>(a3, v16, &v41);
  v41 = &unk_1F5CEFB58;
  *v42 = *(a1 + 1173);
  re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData>(a3, v16, &v41);
  v34 = *(a5 + 384);
  if (v34)
  {
    v41 = &unk_1F5D069A0;
    *&v42[8] = vaddq_f32(*(a1 + 672), *v34);
    LOBYTE(v43) = v34[1].i8[0];
    re::RenderGraphDataStore::add<re::TintContextData,re::TintContextData>(a3, v16, &v41);
  }

  v35 = *(a2[1] + 367);
  v41 = &unk_1F5D03630;
  v42[0] = v35;
  v36 = v35 == 0;
  v37 = 512;
  if (v36)
  {
    v37 = 0;
  }

  *&v42[8] = v37;
  return re::RenderGraphDataStore::addHashed<re::ThreadGroupMemoryData,re::ThreadGroupMemoryData>(a3, v16, &v41);
}

uint64_t re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10 = 0;
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0);
  }

  v9 = re::introspect<re::CameraData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v6, 0, v11);
    v7 = (v11[1] - 0x61C8864680B583E9 + (v11[0] << 6) + (v11[0] >> 2)) ^ v11[0];
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v10, &v9);
  v11[0] = (a2 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10;
  v9 = re::Allocator::create<re::CameraData>(*(a1 + 8), a3);
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v11, &v9);
}

uint64_t re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re19ViewportPercentDataE";
  if (("N2re19ViewportPercentDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re19ViewportPercentDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 80, 16);
  *v9 = &unk_1F5D06920;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  re::DynamicInlineArray<re::PlaneF,6ul>::move((v9 + 16), (a3 + 16));
  *(v9 + 64) = *(a3 + 64);
  v11 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12 = 0;
  {
    re::introspect<re::VRRData>(BOOL)::info = re::introspect_VRRData(0);
  }

  v11 = re::introspect<re::VRRData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::VRRData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::VRRData>(BOOL)::info + 6), v6, 0, v13);
    v7 = (v13[1] - 0x61C8864680B583E9 + (v13[0] << 6) + (v13[0] >> 2)) ^ v13[0];
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v12, &v11);
  v13[0] = (a2 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v8 = &unk_1F5D035F0;
  v9 = *(a3 + 12);
  *(v8 + 8) = *(a3 + 8);
  *(v8 + 12) = v9;
  v11 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v13, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::StencilInfoData,re::StencilInfoData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12 = 0;
  {
    re::introspect<re::StencilInfoData>(BOOL)::info = re::introspect_StencilInfoData(0);
  }

  v11 = re::introspect<re::StencilInfoData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::StencilInfoData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::StencilInfoData>(BOOL)::info + 6), v6, 0, v13);
    v7 = (v13[1] - 0x61C8864680B583E9 + (v13[0] << 6) + (v13[0] >> 2)) ^ v13[0];
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v12, &v11);
  v13[0] = (a2 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 32, 8);
  *v8 = &unk_1F5D03570;
  v9 = *(a3 + 24);
  *(v8 + 8) = *(a3 + 8);
  *(v8 + 24) = v9;
  v11 = v8;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v13, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re22MeshLodSelectInputDataE";
  if (("N2re22MeshLodSelectInputDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re22MeshLodSelectInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v26 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 320, 16);
  *v9 = &unk_1F5D069E0;
  v10 = *(a3 + 32);
  v12 = *(a3 + 48);
  v11 = *(a3 + 64);
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = v10;
  *(v9 + 48) = v12;
  *(v9 + 64) = v11;
  *(v9 + 80) = *(a3 + 80);
  v14 = *(a3 + 112);
  v13 = *(a3 + 128);
  v15 = *(a3 + 96);
  *(v9 + 144) = *(a3 + 144);
  *(v9 + 112) = v14;
  *(v9 + 128) = v13;
  *(v9 + 96) = v15;
  v16 = *(a3 + 160);
  *(v9 + 160) = v16;
  if (v16 == 1)
  {
    v17 = *(a3 + 176);
    v18 = *(a3 + 192);
    v19 = *(a3 + 224);
    *(v9 + 208) = *(a3 + 208);
    *(v9 + 224) = v19;
    *(v9 + 176) = v17;
    *(v9 + 192) = v18;
  }

  v20 = *(a3 + 240);
  *(v9 + 240) = v20;
  if (v20 == 1)
  {
    v21 = *(a3 + 256);
    v22 = *(a3 + 272);
    v23 = *(a3 + 304);
    *(v9 + 288) = *(a3 + 288);
    *(v9 + 304) = v23;
    *(v9 + 256) = v21;
    *(v9 + 272) = v22;
  }

  v25 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v26, &v25);
}

uint64_t re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re10SceneScopeE";
  if (("N2re10SceneScopeE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re10SceneScopeE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 40, 8);
  *v9 = &unk_1F5D06A20;
  re::DynamicString::DynamicString((v9 + 1), (a3 + 8));
  v11 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::SceneIndexData,re::SceneIndexData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re14SceneIndexDataE";
  if (("N2re14SceneIndexDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re14SceneIndexDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v9 = &unk_1F5D06A60;
  *(v9 + 8) = *(a3 + 8);
  v11 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re23PipelineCompilationDataE";
  if (("N2re23PipelineCompilationDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re23PipelineCompilationDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v9 = &unk_1F5CEFB58;
  *(v9 + 8) = *(a3 + 8);
  v11 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::TintContextData,re::TintContextData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re15TintContextDataE";
  if (("N2re15TintContextDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re15TintContextDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 48, 16);
  *v9 = &unk_1F5D069A0;
  v10 = *(a3 + 32);
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = v10;
  v12 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v13, &v12);
}

uint64_t re::RenderGraphDataStore::addHashed<re::ThreadGroupMemoryData,re::ThreadGroupMemoryData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11 = 0;
  {
    re::introspect<re::ThreadGroupMemoryData>(BOOL)::info = re::introspect_ThreadGroupMemoryData(0);
  }

  v10 = re::introspect<re::ThreadGroupMemoryData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::ThreadGroupMemoryData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::ThreadGroupMemoryData>(BOOL)::info + 6), v6, 0, v12);
    v7 = (v12[1] - 0x61C8864680B583E9 + (v12[0] << 6) + (v12[0] >> 2)) ^ v12[0];
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v11, &v10);
  v12[0] = (a2 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 24, 8);
  *v8 = &unk_1F5D03630;
  *(v8 + 8) = *(a3 + 8);
  v10 = v8;
  return re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::addNew((a1 + 112), v12, &v10);
}

uint64_t re::CameraMultiView::prepareEmitDefaultInstancedMode(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v58[6] = *MEMORY[0x1E69E9840];
  re::CameraView::addPickupScopeLanes(a1, a2);
  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = (a1 + 9);
  }

  v12 = 0x9E3779B97F4A7C17;
  v13 = strlen(a6);
  if (v13)
  {
    MurmurHash3_x64_128(a6, v13, 0, &v34);
    v14 = (*v35 - 0x61C8864680B583E9 + (v34 << 6) + (v34 >> 2)) ^ v34;
  }

  else
  {
    v14 = 0;
  }

  v15 = strlen(v11);
  if (v15)
  {
    MurmurHash3_x64_128(v11, v15, 0, &v34);
    v12 = ((*v35 - 0x61C8864680B583E9 + (v34 << 6) + (v34 >> 2)) ^ v34) - 0x61C8864680B583E9;
  }

  v16 = (v14 >> 2) + (v14 << 6) + v12;
  re::CameraMultiView::makeCameraDataInstancedMode(a1, a2[1], a5, &v34);
  re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a3, v16 ^ v14, &v34);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v58);
  ++v57;
  ++v55;
  ++DWORD2(v42);
  v56 = 0;
  v54 = 0;
  *&v42 = 0;
  *&v37 = 0;
  ++DWORD2(v37);
  if (*v35 && (v35[8] & 1) != 0)
  {
    (*(**v35 + 40))();
  }

  re::CameraMultiView::makeViewportPercentDataInstancedMode(a1, v17, &v34);
  re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a3, v16 ^ v14, &v34);
  v18 = a2[1];
  v34 = &unk_1F5D035F0;
  *v35 = *(a1 + 1152);
  v35[4] = (*v35 != -1) & *(v18 + 364);
  v35[5] = *(a1 + 701);
  re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(a3, v16 ^ v14, &v34);
  v34 = &unk_1F5D03570;
  v35[16] = *(a1 + 732);
  *v35 = *(a1 + 716);
  re::RenderGraphDataStore::add<re::StencilInfoData,re::StencilInfoData>(a3, v16 ^ v14, &v34);
  v34 = &unk_1F5D069E0;
  v44 = 0;
  v49 = 0;
  v19 = *(a1 + 768);
  *&v35[8] = *(a1 + 752);
  v36 = v19;
  v20 = *(a1 + 800);
  v37 = *(a1 + 784);
  v38 = v20;
  v21 = *(a1 + 864);
  v41 = *(a1 + 848);
  v42 = v21;
  v43 = *(a1 + 880);
  v22 = *(a1 + 832);
  v39 = *(a1 + 816);
  v40 = v22;
  if (*(a1 + 896) == 1)
  {
    v44 = 1;
    v23 = *(a1 + 928);
    v45 = *(a1 + 912);
    v46 = v23;
    v24 = *(a1 + 960);
    v47 = *(a1 + 944);
    v48 = v24;
  }

  if (*(a1 + 976) == 1)
  {
    v49 = 1;
    v25 = *(a1 + 1008);
    v50 = *(a1 + 992);
    v51 = v25;
    v26 = *(a1 + 1040);
    v52 = *(a1 + 1024);
    v53 = v26;
  }

  re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData>(a3, v16 ^ v14, &v34);
  v27 = *(a5 + 48);
  v28 = *a5;
  v34 = &unk_1F5D06A20;
  re::DynamicString::DynamicString(v35, v27, v28);
  re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a3, v16 ^ v14, &v34);
  v34 = &unk_1F5D06A20;
  if (*v35 && (v35[8] & 1) != 0)
  {
    (*(**v35 + 40))(*v35);
  }

  v34 = &unk_1F5D06A60;
  *v35 = *(a5 + 392);
  re::RenderGraphDataStore::add<re::SceneIndexData,re::SceneIndexData>(a3, v16 ^ v14, &v34);
  v34 = &unk_1F5CEFB58;
  *v35 = *(a1 + 1173);
  re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData>(a3, v16 ^ v14, &v34);
  v29 = *(a5 + 384);
  if (v29)
  {
    v34 = &unk_1F5D069A0;
    *&v35[8] = vaddq_f32(*(a1 + 672), *v29);
    LOBYTE(v36) = v29[1].i8[0];
    re::RenderGraphDataStore::add<re::TintContextData,re::TintContextData>(a3, v16 ^ v14, &v34);
  }

  v30 = *(a2[1] + 367);
  v34 = &unk_1F5D03630;
  v35[0] = v30;
  v31 = v30 == 0;
  v32 = 512;
  if (v31)
  {
    v32 = 0;
  }

  *&v35[8] = v32;
  return re::RenderGraphDataStore::addHashed<re::ThreadGroupMemoryData,re::ThreadGroupMemoryData>(a3, v16 ^ v14, &v34);
}

void re::CameraView::registerFileProviders(char *__s1@<X3>, uint64_t a2@<X0>, re::RenderGraphManager *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 24) = 0;
  v10 = *(a2 + 592);
  if (v10)
  {
    v11 = 0;
    for (i = 0; i < v10; ++i)
    {
      v13 = *(a2 + 608) + v11;
      if (*(v13 + 16))
      {
        v14 = *(v13 + 24);
      }

      else
      {
        v14 = (v13 + 17);
      }

      if (!strcmp(__s1, v14))
      {
        re::RenderGraphManager::addProviderInternal(a3, __s1, *v13, *(v13 + 40), 0, &v27);
        v15 = re::DynamicArray<re::ProviderHandle>::add(a5, &v27);
        if (*&v27.var0)
        {
          if (*&v27.var0)
          {
          }
        }

        v10 = *(a2 + 592);
      }

      v11 += 48;
    }
  }

  if ((*(a2 + 616) & 1) == 0)
  {
    v16 = *(a4 + 80);
    if (v16)
    {
      if (*(v16 + 40))
      {
        v17 = 0;
        v26 = *(a4 + 80);
        do
        {
          v18 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v16, v17);
          v19 = *(v18 + 16);
          if (v19)
          {
            v20 = v18;
            v21 = 0;
            for (j = 0; j < v19; ++j)
            {
              v23 = *(v20 + 32) + v21;
              if (*(v23 + 16))
              {
                v24 = *(v23 + 24);
              }

              else
              {
                v24 = (v23 + 17);
              }

              if (!strcmp(__s1, v24))
              {
                re::RenderGraphManager::addProviderInternal(a3, __s1, *v23, *(v23 + 40), 0, &v27);
                v25 = re::DynamicArray<re::ProviderHandle>::add(a5, &v27);
                if (*&v27.var0)
                {
                  if (*&v27.var0)
                  {
                  }
                }

                v19 = *(v20 + 16);
              }

              v21 += 48;
            }
          }

          ++v17;
          v16 = v26;
        }

        while (*(v26 + 40) > v17);
      }
    }
  }
}

re::StringID *re::DynamicArray<re::ProviderHandle>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ProviderHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::StringID::StringID((*(this + 4) + 24 * v4), a2);
  *(result + 2) = *&a2[1].var0;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::CameraView::unregisterFileProviders(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3 >= 1)
  {
    v5 = *(a2 + 16) & 0x7FFFFFFFLL;
    v6 = v5 + 1;
    v7 = 24 * v5 - 8;
    do
    {
      v8 = *(a2 + 16);
      if (v8 <= v6 - 2)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        v20 = 789;
        v21 = 2048;
        v22 = v6 - 2;
        v23 = 2048;
        v24 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(a2 + 32) + v7);
      re::StringID::StringID(&v13, v9 - 1);
      v15 = *&v9->var0;
      v10 = re::RenderGraphManager::removeProvider(a1, &v13);
      if (v13)
      {
        if (v13)
        {
        }
      }

      v13 = 0;
      v14 = &str_67;
      --v6;
      v7 -= 24;
    }

    while (v6 > 1);
    v3 = *(a2 + 16);
  }

  *(a2 + 16) = 0;
  if (v3)
  {
    v11 = *(a2 + 32);
    v12 = 24 * v3;
    do
    {
      re::StringID::destroyString(v11);
      v11 = (v11 + 24);
      v12 -= 24;
    }

    while (v12);
  }

  ++*(a2 + 24);
}

re::CameraData *re::CameraData::CameraData(re::CameraData *this, re::Allocator *a2)
{
  *this = &unk_1F5D03750;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v4 = (this + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(this + 51) = 0u;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 78) = 0;
  *(this + 158) = 0;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 208) = 0;
  *(this + 840) = 0u;
  *(this + 214) = 0;
  *(this + 860) = 0x10101000001;
  *(this + 217) = 1065353216;
  *(this + 436) = 1;
  *(this + 876) = 0;
  *(this + 221) = 1;
  *(this + 890) = 1;
  *(this + 225) = 2;
  *(this + 113) = 0xFFFFFFFFLL;
  *(this + 912) = 0;
  *(this + 118) = re::globalAllocators(v5)[2];
  *(this + 119) = 0;
  *v4 = a2;
  re::DynamicString::setCapacity(v4, 0);
  return this;
}

uint64_t re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 1uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v11);
  v6 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v12, v11);
    v8 = *a2;
    *(v7 + 16) = *a3;
    result = v7 + 16;
    *(result - 8) = v8;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 24 * v6;
    *(v10 + 16) = *a3;
    return v10 + 16;
  }

  return result;
}

uint64_t re::Allocator::create<re::CameraData>(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 32))(a1, 960, 16);
  *v3 = &unk_1F5D03750;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 32) = *(a2 + 32);
  v4 = *(a2 + 16);
  *(v3 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a2 + 24);
  *(a2 + 32) = 0;
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  re::DynamicInlineArray<re::RenderCamera,2ul>::move((v3 + 48), (a2 + 48));
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  re::DynamicInlineArray<re::Projection,2ul>::move((v3 + 128), (a2 + 128));
  *(v3 + 624) = 0;
  *(v3 + 632) = 0;
  re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::move((v3 + 624), (a2 + 624));
  *(v3 + 768) = 0;
  *(v3 + 776) = 0;
  re::DynamicInlineArray<re::PlaneF,6ul>::move((v3 + 768), (a2 + 768));
  v8 = *(a2 + 816);
  v9 = *(a2 + 832);
  v10 = *(a2 + 848);
  *(v3 + 858) = *(a2 + 858);
  *(v3 + 832) = v9;
  *(v3 + 848) = v10;
  *(v3 + 816) = v8;
  v11 = *(a2 + 876);
  *(v3 + 876) = v11;
  if (v11 == 1)
  {
    *(v3 + 880) = *(a2 + 880);
  }

  v12 = *(a2 + 884);
  *(v3 + 897) = *(a2 + 897);
  *(v3 + 884) = v12;
  *(v3 + 944) = *(a2 + 944);
  *(v3 + 952) = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v3 + 920, a2 + 920);
  return v3;
}

unint64_t *re::DynamicInlineArray<re::RenderCamera,2ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, 32 * v5);
    }

    result = memcpy(&v8[4 * v5], &a2[4 * v5 + 2], 32 * v6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, 32 * v4);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

__int128 *re::DynamicInlineArray<re::Projection,2ul>::move(void *a1, __int128 *a2)
{
  v4 = (a2 + 1);
  v5 = *a2;
  v6 = (a1 + 2);
  if (*a2 >= *a1)
  {
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(&v24, a2 + 1, &v4[30 * *a1], v6);
    if (*a1 != v5)
    {
      v8 = 240 * *a1 + 112;
      v9 = a1 + v8;
      v10 = (a2 + v8);
      do
      {
        *(v9 - 6) = *(v10 - 6);
        v11 = *(v10 - 5);
        v12 = *(v10 - 4);
        v13 = *(v10 - 3);
        *(v9 - 16) = *(v10 - 16);
        *(v9 - 4) = v12;
        *(v9 - 3) = v13;
        *(v9 - 5) = v11;
        v14 = *(v10 - 16);
        *(v9 - 16) = v14;
        if (v14 == 1)
        {
          v15 = *v10;
          v16 = v10[1];
          v17 = v10[3];
          *(v9 + 2) = v10[2];
          *(v9 + 3) = v17;
          *v9 = v15;
          *(v9 + 1) = v16;
        }

        v18 = v10 - 6;
        v19 = *(v10 + 64);
        v9[64] = v19;
        if (v19 == 1)
        {
          v20 = v10[5];
          v21 = v10[6];
          v22 = v10[8];
          *(v9 + 7) = v10[7];
          *(v9 + 8) = v22;
          *(v9 + 5) = v20;
          *(v9 + 6) = v21;
        }

        v9 += 240;
        v10 += 15;
      }

      while (v18 + 15 != &v4[30 * v5]);
    }
  }

  else
  {
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(&v23, a2 + 1, &v4[30 * v5], v6);
  }

  *a1 = v5;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    for (i = a2 + 6; ; i += 15)
    {
      *a4 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      *(a4 + 64) = *(i - 16);
      *(a4 + 32) = v7;
      *(a4 + 48) = v8;
      *(a4 + 16) = v6;
      if (*(a4 + 80))
      {
        if ((*(i - 1) & 1) == 0)
        {
          *(a4 + 80) = 0;
          goto LABEL_9;
        }
      }

      else
      {
        if ((*(i - 1) & 1) == 0)
        {
          goto LABEL_9;
        }

        *(a4 + 80) = 1;
      }

      v9 = *i;
      v10 = i[1];
      v11 = i[3];
      *(a4 + 128) = i[2];
      *(a4 + 144) = v11;
      *(a4 + 96) = v9;
      *(a4 + 112) = v10;
LABEL_9:
      v12 = i - 6;
      if (*(a4 + 160))
      {
        if (i[4])
        {
          goto LABEL_14;
        }

        *(a4 + 160) = 0;
      }

      else if (i[4])
      {
        *(a4 + 160) = 1;
LABEL_14:
        v13 = i[5];
        v14 = i[6];
        v15 = i[8];
        *(a4 + 208) = i[7];
        *(a4 + 224) = v15;
        *(a4 + 176) = v13;
        *(a4 + 192) = v14;
      }

      a4 += 240;
      if (v12 + 15 == a3)
      {
        return a3;
      }
    }
  }

  return result;
}

unint64_t *re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, v5 << 6);
    }

    result = memcpy(&v8[8 * v5], &a2[8 * v5 + 2], v6 << 6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, v4 << 6);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

uint64_t re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::addNew(void *a1, void *a2, uint64_t *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::internalAdd(a1, a2, a3);
}

uint64_t re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::internalAdd(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = (*(a1 + 8) + 16 * v16);
  v18 = *a3;
  *v17 = *a2;
  v17[1] = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v20);
  re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::updateHashes(a1, (*(a1 + 8) + 16 * v16));
  return *(a1 + 8) + 16 * v16 + 8;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = (*(a1 + 8) + 16 * v16);
  v18 = *a3;
  *v17 = *a2;
  v17[1] = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v20);
  re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::updateHashes(a1, (*(a1 + 8) + 16 * v16));
  return *(a1 + 8) + 16 * v16 + 8;
}

double re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::updateHashes(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  *(a1 + 40) ^= v5;
  result = (*(*v3 + 24))(v3);
  *(a1 + 48) ^= v5 ^ (result + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

void *re::DynamicArray<re::ProviderHandle>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::BufferArgument>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BufferArgument>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

re::WrapDeformerModelBuilder *re::WrapDeformerModelBuilder::WrapDeformerModelBuilder(re::WrapDeformerModelBuilder *this, re::Allocator *a2, const re::mtl::Device *a3, uint64_t a4, unint64_t a5, DeformationModelData *a6)
{
  *this = a3;
  *(this + 1) = a6;
  v10 = re::DeformationModelData::create<re::WrapDeformer,re::WrapDeformerModel>(a6, a2);
  re::FixedArray<re::WrapDeformerModel::WrapDeformerTarget>::init<>(v10, a2, a5);
  re::FixedArray<re::StringID>::init<>(v10 + 6, a2, a5);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v10 + 3, a2, a4, &re::WrapDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::WrapDeformer,re::WrapDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 72, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  v6[0] = &unk_1F5D06B78;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D06B78;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 480), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 480);
}

void *re::FixedArray<re::WrapDeformerModel::WrapDeformerTarget>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 40 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      result[1] = &str_67;
      result[3] = 0;
      result[4] = 0;
      result[2] = 0;
      result += 5;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = &str_67;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

float re::WrapDeformerModelBuilder::addWrapTarget(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 8) + 480);
  if (v4[4] <= a2)
  {
LABEL_20:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v4[5] + 2 * a2) = a3;
  if (v4[1] <= a3)
  {
    goto LABEL_21;
  }

  v7 = (v4[2] + 40 * a3);
  v8 = *(a4 + 24);
  v24[0] = [**a1 newBufferWithLength:12 * (v8 / 3) options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v7 + 2, v24);
  if (v24[0])
  {
  }

  v24[0] = [**a1 newBufferWithLength:12 * (v8 / 3) options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v7 + 3, v24);
  if (v24[0])
  {
  }

  v24[0] = [**a1 newBufferWithLength:12 * (v8 / 3) options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v7 + 4, v24);
  v9 = v24[0];
  if (v24[0])
  {
  }

  v10 = *a4;
  v24[0] = 0;
  v24[1] = &str_67;
  v11 = re::StringID::operator=(v7, v24);
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  memcpy([v7[2] contents], *(a4 + 16), 12 * (v8 / 3));
  v12 = [v7[3] contents];
  v13 = [v7[4] contents];
  if (v8 >= 3)
  {
    v16 = 0;
    v17 = *(a4 + 40);
    v18 = *(a4 + 56);
    v19 = (*(a4 + 48) + 8);
    v20 = (*(a4 + 32) + 8);
    v21 = v12 + 8;
    v22 = (v13 + 8);
    while (v17 != v16)
    {
      *(v21 - 2) = *(v20 - 2);
      *(v21 - 1) = *(v20 - 1);
      *v21 = *v20;
      if (v18 == v16)
      {
        goto LABEL_19;
      }

      *(v22 - 2) = *(v19 - 2);
      *(v22 - 1) = *(v19 - 1);
      v23 = *v19;
      v19 += 4;
      result = v23;
      ++v16;
      *v22 = v23;
      v22 += 3;
      v20 += 4;
      v21 += 3;
      if (v8 / 3 == v16)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v17);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, v18);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

unint64_t *re::WrapDeformerModelBuilder::setEnvelopeBufferName(re::WrapDeformerModelBuilder *this, unint64_t a2, unint64_t a3, const re::StringID *a4)
{
  v4 = *(*(this + 1) + 480);
  if (v4[4] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v4[5] + 2 * a2) = a3;
  if (v4[7] <= a3)
  {
    goto LABEL_7;
  }

  v5 = (v4[8] + 16 * a3);

  return re::StringID::operator=(v5, a4);
}

uint64_t re::WrapDeformer::init(uint64_t result, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((*(result + 24) & 1) == 0)
  {
    v2 = result;
    *(result + 24) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      if (*(v3 + 208))
      {
        *(result + 32) = *(v3 + 32);
        if (*(v3 + 312) == 1)
        {
          v4 = 0;
          v5 = 0;
          do
          {
            v6 = v4;
            v11 = 0;
            v14 = 0;
            memset(v17, 0, sizeof(v17));
            v18 = 0;
            v22 = 0;
            v23 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            memset(v24, 0, sizeof(v24));
            re::DynamicString::setCapacity(v24, 0);
            v29 = 0u;
            v28 = 0u;
            v27 = 0u;
            v26 = 0u;
            LOBYTE(v26) = v5;
            v25 = 53;
            re::DynamicArray<re::TechniqueFunctionConstant>::add(v17, v24);
            ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v9);
            NS::SharedPtr<MTL::Buffer>::operator=((v2 + 8 + 8 * v5), ComputePipelineState);
            if (v24[0] && (v24[1] & 1) != 0)
            {
              (*(*v24[0] + 40))();
            }

            if (v22)
            {

              v22 = 0;
            }

            re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v17);
            if (v14 == 1 && v15)
            {
              if (BYTE8(v15))
              {
                (*(*v15 + 40))();
              }

              v15 = 0u;
              v16 = 0u;
            }

            if (v11 == 1 && v12)
            {
              if (BYTE8(v12))
              {
                (*(*v12 + 40))();
              }

              v13 = 0u;
              v12 = 0u;
            }

            result = v9;
            if (v9)
            {
              if (v10)
              {
                result = (*(*v9 + 40))();
              }
            }

            v4 = 1;
            v5 = 1;
          }

          while ((v6 & 1) == 0);
          *(v2 + 25) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t re::WrapDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(result + 25);
  *a4 = xmmword_1E30D6450;
  *(a4 + 16) = 2;
  LODWORD(v6) = *a3;
  if (v6 == 255)
  {
    v6 = *(a3 + 2);
    if (v6)
    {
      v7 = (v5 ^ 1 | v4) ^ 1;
      if (*(v6 + 208))
      {
        LOBYTE(v6) = v7;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }
  }

  *(a4 + 24) = v6;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::WrapDeformer::allocateBuffers(uint64_t *a1, unint64_t a2, re::PerFrameAllocatorGPU **a3, int a4, void *a5)
{
  v74 = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v7 = (*(*a2 + 32))(a2, 24, 8);
  v9 = v7;
  v53 = a5;
  v10 = *(*a5 + 48);
  v7[1] = v10;
  v7[2] = 0;
  *v7 = a2;
  if (v10)
  {
    if (v10 >= 0x492492492492493)
    {
LABEL_45:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v10);
      _os_crash();
      __break(1u);
LABEL_46:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v7 = (*(*a2 + 32))(a2, 56 * v10, 8);
    v9[2] = v7;
    if (!v7)
    {
      goto LABEL_46;
    }

    v12 = v7;
    if (v10 != 1)
    {
      bzero(v7, 56 * v10 - 56);
      v12 += 7 * v10 - 7;
    }

    v12[6] = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
  }

  *(&v70 + 1) = re::globalAllocators(v7)[2];
  *&v71 = &v69;
  *&v69 = &unk_1F5D06B10;
  v13 = (*(*a2 + 16))(a2, v9, &v69);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v69);
  v50 = *(*v53 + 48);
  if (v50)
  {
    v14 = 0;
    while (1)
    {
      re::DeformationInstanceIterator::Instance::Instance(&v56, v53, v14);
      v15 = *(*(v58 + 344) + 480);
      v10 = *(v58 + 392);
      v16 = v15[4];
      if (v16 <= v10)
      {
        break;
      }

      v17 = v59;
      a2 = *(v15[5] + 2 * v10);
      v18 = re::DeformationVertexBufferState::inputVertexCount(v59, 1u);
      v10 = v57;
      v16 = *(v13 + 8);
      if (v16 <= v57)
      {
        goto LABEL_40;
      }

      v19 = v18;
      v10 = *(v13 + 16) + 56 * v57;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 4uLL, 4uLL, &v69);
      v20 = v69;
      v21 = v70;
      v22 = *(&v69 + 1);
      *(v69 + DWORD2(v69)) = v19;
      *v10 = v20;
      *(v10 + 8) = v22;
      *(v10 + 16) = v21;
      v16 = v15[7];
      if (v16 <= a2)
      {
        goto LABEL_41;
      }

      v23 = 12 * v19;
      re::StringID::StringID(&v55, (v15[8] + 16 * a2));
      a2 = re::DeformationInstanceIterator::Instance::meshPart(&v56, a1[4]);
      v24 = a2;
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24 && !v25[8]);
      *&v69 = v55 >> 1;
      v26 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v25 + 5, &v69);
      if (v26 == -1)
      {
        v27 = 0;
      }

      else
      {
        v27 = (v25[6] + 16 * v26 + 8);
      }

      v28 = 4 * v19;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, v28, 4uLL, &v69);
      v29 = v69;
      v16 = DWORD2(v69);
      v30 = HIDWORD(v69);
      v31 = v70;
      *(v10 + 24) = v69;
      *(v10 + 32) = v16;
      *(v10 + 36) = v30;
      *(v10 + 40) = v31;
      if (v27)
      {
        v32 = re::AttributeTable::buffers(a2);
        v34 = *v27;
        if (v33 <= v34)
        {
          goto LABEL_42;
        }

        v35 = re::BufferView::contents((v32 + 24 * *v27));
        memcpy((v29 + v16), v35, v28);
      }

      else if (v30 >= 4)
      {
        memset_pattern16((v29 + v16), &unk_1E30D6460, v30 & 0xFFFFFFFC);
      }

      v36 = a2;
      do
      {
        v37 = v36;
        v36 = *v36;
      }

      while (v36 && !v37[8]);
      *&v69 = 0x2DB839E585F57D8ALL;
      v38 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v37 + 5, &v69);
      if (v38 != -1)
      {
        v39 = v37[6] + 16 * v38;
        v38 = re::AttributeTable::buffers(a2);
        v41 = *(v39 + 8);
        if (v40 <= v41)
        {
          goto LABEL_43;
        }

        *(v10 + 48) = v38 + 24 * *(v39 + 8);
      }

      if (a4 == 1)
      {
        v42 = v58;
        v43 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](*v56 + 8, v57);
        v48 = v48 & 0xFFFFFF0000000000 | 0x1E00000000;
        v49 = v49 & 0xFFFF000000000000 | 0x1010001000CLL;
        v44 = re::DeformationBufferAllocator::alloc(*(v42 + 360), v53[2], 1, v49, v48, *(v43 + 16), v23);
        v45 = *(v42 + 360);
        v10 = *(v43 + 16);
        v16 = *(v45 + 8);
        if (v16 <= v10)
        {
          goto LABEL_44;
        }

        v46 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v45 + 16) + 72 * *(v43 + 16) + 16, v44);
        WORD2(v69) = 257;
        LODWORD(v69) = 65548;
        BYTE12(v69) = 30;
        DWORD2(v69) = 0;
        v38 = re::DeformationVertexBufferState::setOutputBuffer(v17, 1, 1, (v46 + 24), &v69);
      }

      else if (!a4)
      {
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, v23, 0x10uLL, &v69);
        LOWORD(v62) = 257;
        v61 = 65548;
        LOBYTE(v63) = 30;
        HIDWORD(v62) = 0;
        v38 = re::DeformationVertexBufferState::setOutputBuffer(v17, 1u, 0, &v69, &v61);
      }

      if (v55)
      {
        if (v55)
        {
        }
      }

      if (++v14 == v50)
      {
        return v13;
      }
    }

    v55 = 0;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    v64 = 476;
    v65 = 2048;
    v66 = v10;
    v67 = 2048;
    v68 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v55 = 0;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    v64 = 468;
    v65 = 2048;
    v66 = v10;
    v67 = 2048;
    v68 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_41:
    v55 = 0;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    v64 = 476;
    v65 = 2048;
    v66 = a2;
    v67 = 2048;
    v68 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v33);
    _os_crash();
    __break(1u);
LABEL_43:
    re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v41, v40);
    _os_crash();
    __break(1u);
LABEL_44:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    v64 = 476;
    v65 = 2048;
    v66 = v10;
    v67 = 2048;
    v68 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  return v13;
}

uint64_t re::WrapDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Wrap");
  v34 = *(*a4 + 48);
  if (v34)
  {
    v9 = 0;
    v31 = a1 + 8;
    v32 = a2;
    v33 = a4;
    do
    {
      v10 = re::DeformationInstanceIterator::Instance::Instance(&v35, a4, v9);
      v12 = **(*(v37 + 352) + 120);
      if (v12 == -1)
      {
        v29 = *re::graphicsLogObjects(v10);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Wrap deformer has invalid target index, skipping.", buf, 2u);
        }
      }

      else
      {
        v13 = *(*(v37 + 344) + 480);
        v14 = *(v37 + 392);
        v15 = v13[4];
        if (v15 <= v14)
        {
          v39 = 0;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v40 = 136315906;
          *&v40[4] = "operator[]";
          *&v40[12] = 1024;
          *&v40[14] = 476;
          *&v40[18] = 2048;
          *&v40[20] = v14;
          v41 = 2048;
          v42 = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v16, v17);
          _os_crash();
          __break(1u);
LABEL_17:
          v39 = 0;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v40 = 136315906;
          *&v40[4] = "operator[]";
          *&v40[12] = 1024;
          *&v40[14] = 476;
          *&v40[18] = 2048;
          *&v40[20] = v14;
          v41 = 2048;
          v42 = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_18:
          v39 = 0;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v40 = 136315906;
          *&v40[4] = "operator[]";
          *&v40[12] = 1024;
          *&v40[14] = 468;
          *&v40[18] = 2048;
          *&v40[20] = v15;
          v41 = 2048;
          v42 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v16 = *(v37 + 384) + v12;
        v17 = a4[6];
        if (v17 <= v16)
        {
          goto LABEL_16;
        }

        v14 = *(v13[5] + 2 * v14);
        v15 = v13[1];
        if (v15 <= v14)
        {
          goto LABEL_17;
        }

        v15 = v36;
        v4 = *(a2 + 8);
        if (v4 <= v36)
        {
          goto LABEL_18;
        }

        v18 = v38;
        v19 = a4[5] + 312 * v16;
        v20 = (v13[2] + 40 * v14);
        v4 = *(a2 + 16) + 56 * v36;
        v21 = *(v4 + 48) != 0;
        v22 = [*(v31 + 8 * (*(v4 + 48) != 0)) maxTotalThreadsPerThreadgroup];
        v23 = re::DeformationVertexBufferState::inputVertexCount(v18, 1u);
        [*this setComputePipelineState:*(v31 + 8 * v21)];
        [*this setBuffer:v20[2] offset:0 atIndex:0];
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        v24 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), buf) + 24);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        [*this setBuffer:v24 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), buf) + 16), 1}];
        [*this setBuffer:v20[3] offset:0 atIndex:2];
        [*this setBuffer:v20[4] offset:0 atIndex:3];
        [*this setBuffer:*(v4 + 40) offset:*(v4 + 32) atIndex:4];
        [*this setBuffer:*(v4 + 16) offset:*(v4 + 8) atIndex:5];
        v25 = *(v4 + 48);
        if (v25)
        {
          [*this setBuffer:*v25 offset:*(v25 + 16) atIndex:6];
        }

        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v26 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, buf) + 24);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        [*this setBuffer:v26 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, buf) + 16), 7}];
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v27 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, buf) + 24);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        [*this setBuffer:v27 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, buf) + 16), 8}];
        v28 = *this;
        *buf = (v23 + v22 - 1) / v22;
        *&buf[8] = vdupq_n_s64(1uLL);
        *v40 = v22;
        *&v40[8] = *&buf[8];
        [v28 dispatchThreadgroups:buf threadsPerThreadgroup:v40];
        a2 = v32;
        a4 = v33;
      }

      ++v9;
    }

    while (v34 != v9);
  }

  return [*this popDebugGroup];
}

void re::WrapDeformer::deformCPU(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v63 = *(*a3 + 48);
  if (v63)
  {
    v4 = a2;
    v5 = 0;
    v64 = a3;
    do
    {
      re::DeformationInstanceIterator::Instance::Instance(&v65, a3, v5);
      v6 = v66;
      v7 = *(v4 + 8);
      if (v7 <= v66)
      {
        goto LABEL_29;
      }

      v8 = *(v4 + 16) + 56 * v66;
      v9 = *(v8 + 48);
      if (v9)
      {
        v9 = re::BufferView::contents(v9);
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(*(v67 + 352) + 120);
      if (!v11 || *v11 == -1)
      {
        v55 = *re::graphicsLogObjects(v9);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, "Wrap deformer has invalid target index, skipping.", buf, 2u);
        }
      }

      else
      {
        v12 = *(*(v67 + 344) + 480);
        v6 = *(v67 + 392);
        v3 = v12[4];
        if (v3 <= v6)
        {
          goto LABEL_30;
        }

        v6 = *(v12[5] + 2 * v6);
        v3 = v12[1];
        if (v3 <= v6)
        {
          goto LABEL_31;
        }

        v60 = *(v8 + 32);
        v61 = *(v8 + 24);
        v13 = v68;
        v14 = (v12[2] + 40 * v6);
        v6 = [v14[2] length];
        v3 = [v14[2] contents];
        v15 = [v14[3] contents];
        v16 = [v14[4] contents];
        v18 = *(re::BucketArray<re::ActiveDeformation,8ul>::operator[](v64[1], v66) + 384) + *v11;
        v19 = v64[6];
        if (v19 <= v18)
        {
          goto LABEL_32;
        }

        v20 = v64[5] + 312 * v18;
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v20, 1u);
        v21 = *(v20 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v20 + 184), buf);
        v57 = *(v21 + 16);
        v58 = *(v21 + 8);
        v59 = *(v21 + 20);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
        v22 = v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, buf);
        v56 = *(v22 + 8);
        v7 = *(v22 + 16);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
        v23 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 23, buf);
        if (v6 >= 0xC)
        {
          v28 = 0;
          v29 = v58 + v57;
          v30 = v59 / 0xC;
          v31 = (*(v13[24] + 32 * v23 + 8) + *(v13[24] + 32 * v23 + 16) + 8);
          while (1)
          {
            v32 = v10 ? *(v10 + v28) : v28;
            v33 = 3 * v32;
            v34 = v3[3 * v32];
            if (v30 <= v34)
            {
              break;
            }

            v35 = v3[v33 + 1];
            if (v30 <= v35)
            {
              goto LABEL_27;
            }

            v36 = v3[v33 + 2];
            if (v30 <= v36)
            {
              goto LABEL_28;
            }

            v37 = v29 + 12 * v34;
            v25.i64[0] = *v37;
            v25.i32[2] = *(v37 + 8);
            v38 = v29 + 12 * v35;
            v26.i64[0] = *v38;
            v26.i32[2] = *(v38 + 8);
            v39 = v29 + 12 * v36;
            v27.i64[0] = *v39;
            v27.i32[2] = *(v39 + 8);
            v40 = vaddq_f32(vaddq_f32(vmulq_n_f32(v25, v15[3 * v32]), vmulq_n_f32(v26, v15[3 * v32 + 1])), vmulq_n_f32(v27, v15[3 * v32 + 2]));
            v41 = vsubq_f32(v26, v25);
            v42 = vsubq_f32(v27, v25);
            v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v41)), v42, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
            v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
            v45 = vmulq_f32(v43, v43);
            v43.f32[0] = v45.f32[1] + (v45.f32[2] + v45.f32[0]);
            *v45.f32 = vrsqrte_f32(v43.u32[0]);
            *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32)));
            v46 = vmulq_n_f32(v44, vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32))).f32[0]);
            v47 = vmulq_f32(v41, v41);
            v43.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
            *v47.f32 = vrsqrte_f32(v43.u32[0]);
            *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v47.f32, *v47.f32)));
            v48 = vmulq_n_f32(v41, vmul_f32(*v47.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v47.f32, *v47.f32))).f32[0]);
            v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), vnegq_f32(v46)), v48, vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
            v27 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
            v50 = &v16[12 * v32];
            v51 = vaddq_f32(v40, vmulq_n_f32(v48, *v50));
            v26 = vmulq_n_f32(v27, v50[1]);
            v52 = vaddq_f32(v51, v26);
            v25 = vmulq_n_f32(v46, v50[2]);
            v53 = v56 + v7 + 12 * v32;
            v26.i64[0] = *v53;
            v26.i32[2] = *(v53 + 8);
            v54 = vmlaq_n_f32(vmulq_n_f32(vaddq_f32(v25, v52), *(v61 + v60 + 4 * v28)), v26, 1.0 - *(v61 + v60 + 4 * v28));
            *(v31 - 1) = v54.i64[0];
            *v31 = v54.i32[2];
            ++v28;
            v31 += 3;
            if (v6 / 0xC == v28)
            {
              goto LABEL_24;
            }
          }

          re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v34, v30);
          _os_crash();
          __break(1u);
LABEL_27:
          re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v35, v30);
          v36 = _os_crash();
          __break(1u);
LABEL_28:
          re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v36, v30);
          _os_crash();
          __break(1u);
LABEL_29:
          v69 = 0;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v70 = 136315906;
          v71 = "operator[]";
          v72 = 1024;
          v73 = 468;
          v74 = 2048;
          v75 = v6;
          v76 = 2048;
          v77 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_30:
          v69 = 0;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v70 = 136315906;
          v71 = "operator[]";
          v72 = 1024;
          v73 = 476;
          v74 = 2048;
          v75 = v6;
          v76 = 2048;
          v77 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_31:
          v69 = 0;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v70 = 136315906;
          v71 = "operator[]";
          v72 = 1024;
          v73 = 476;
          v74 = 2048;
          v75 = v6;
          v76 = 2048;
          v77 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_32:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v18, v19);
          _os_crash();
          __break(1u);
        }
      }

LABEL_24:
      ++v5;
      a3 = v64;
      v4 = a2;
    }

    while (v5 != v63);
  }
}

re::StringID *re::WrapDeformerModelUtil::envelopeBufferNameForWrapDataIndex@<X0>(re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, re::StringID *a3@<X8>)
{
  v3 = *(this + 60);
  if (v3 && *(v3 + 56) > a2)
  {
    return re::StringID::StringID(a3, (*(v3 + 64) + 16 * a2));
  }

  else
  {
    return re::StringID::invalid(a3);
  }
}

re::StringID *re::WrapDeformerModelUtil::targetMeshInstanceNameForWrapDataIndex@<X0>(re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, re::StringID *a3@<X8>)
{
  v3 = *(this + 60);
  if (v3 && *(v3 + 8) > a2)
  {
    return re::StringID::StringID(a3, (*(v3 + 16) + 40 * a2));
  }

  else
  {
    return re::StringID::invalid(a3);
  }
}

void re::WrapDeformerModelUtil::faceIndicesForWrapDataIndex(re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 60);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v4 && *(v4 + 8) > a2)
  {
    v5 = *(v4 + 16) + 40 * a2;
    v14[0] = *(v5 + 16);
    v15 = 0;
    v16 = 0;
    v17 = [*(v5 + 16) length];
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v14, v9);
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&__src);
    }

    else if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }

    if (v15 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_2[v15])(v9, v14);
    }
  }
}

void re::WrapDeformerModelUtil::faceCoordinatesForWrapDataIndex(re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(this + 60);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 && *(v4 + 8) > a2)
  {
    v5 = *(v4 + 16) + 40 * a2;
    v19[0] = *(v5 + 24);
    v20 = 0;
    v21 = 0;
    v22 = [*(v5 + 24) length];
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v19, v14);
    if (v14[0] == 1)
    {
      v8 = v15;
      v7 = v16;
      v9 = v16 / 0xC;
      if (v7 >= 0xC)
      {
        v11 = 0;
        v12 = (v8 + 8);
        do
        {
          v13 = a3[1];
          if (v13 <= v11)
          {
            v23 = 0;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v24 = 136315906;
            v25 = "operator[]";
            v26 = 1024;
            v27 = 468;
            v28 = 2048;
            v29 = v11;
            v30 = 2048;
            v31 = v13;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *&v10 = *(v12 - 1);
          DWORD2(v10) = *v12;
          *(a3[2] + 16 * v11++) = v10;
          v12 += 3;
        }

        while (v9 != v11);
      }
    }

    if (v14[0] == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v15);
    }

    else if (v17 && (v18 & 1) != 0)
    {
      (*(*v17 + 40))();
    }

    if (v20 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_2[v20])(v14, v19);
    }
  }
}

void re::WrapDeformerModelUtil::positionOffsetsForWrapDataIndex(re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(this + 60);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 && *(v4 + 8) > a2)
  {
    v5 = *(v4 + 16) + 40 * a2;
    v19[0] = *(v5 + 32);
    v20 = 0;
    v21 = 0;
    v22 = [*(v5 + 32) length];
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v19, v14);
    if (v14[0] == 1)
    {
      v8 = v15;
      v7 = v16;
      v9 = v16 / 0xC;
      if (v7 >= 0xC)
      {
        v11 = 0;
        v12 = (v8 + 8);
        do
        {
          v13 = a3[1];
          if (v13 <= v11)
          {
            v23 = 0;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v24 = 136315906;
            v25 = "operator[]";
            v26 = 1024;
            v27 = 468;
            v28 = 2048;
            v29 = v11;
            v30 = 2048;
            v31 = v13;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *&v10 = *(v12 - 1);
          DWORD2(v10) = *v12;
          *(a3[2] + 16 * v11++) = v10;
          v12 += 3;
        }

        while (v9 != v11);
      }
    }

    if (v14[0] == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v15);
    }

    else if (v17 && (v18 & 1) != 0)
    {
      (*(*v17 + 40))();
    }

    if (v20 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_2[v20])(v14, v19);
    }
  }
}

uint64_t re::WrapDeformerModelUtil::computeWrapDeformerModelSizeExcludingMetalBuffers(re::WrapDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 60);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[7];
  v4 = 2 * v2[4] + 16 * v3 + 72;
  if (v3)
  {
    v5 = (v2[8] + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = v2[1];
  v8 = v4 + 40 * v7;
  if (v7)
  {
    v9 = (v2[2] + 8);
    do
    {
      if (*(v9 - 1))
      {
        v10 = strlen(*v9) + 1;
      }

      else
      {
        v10 = 0;
      }

      v8 += v10;
      v9 += 5;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void re::WrapDeformer::~WrapDeformer(re::WrapDeformer *this)
{
  v2 = 16;
  do
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
  }

  while (v2);
}

{
  v2 = 16;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (!v2)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

uint64_t re::internal::Callable<re::WrapDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  result = **a2;
  if (result)
  {
    if (v2[1])
    {
      result = (*(*result + 40))(result, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::WrapDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06B10;
  return result;
}

void *re::internal::Callable<re::WrapDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06B10;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_12WrapDeformerENS2_17WrapDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D06B78;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_12WrapDeformerENS2_17WrapDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::StringID>::deinit(v2 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 3);
    if (*v2)
    {
      v4 = v2[1];
      if (v4)
      {
        v5 = v2[2];
        v6 = 40 * v4;
        do
        {
          v7 = *(v5 + 4);
          if (v7)
          {

            *(v5 + 4) = 0;
          }

          v8 = *(v5 + 3);
          if (v8)
          {

            *(v5 + 3) = 0;
          }

          v9 = *(v5 + 2);
          if (v9)
          {

            *(v5 + 2) = 0;
          }

          re::StringID::destroyString(v5);
          v5 = (v5 + 40);
          v6 -= 40;
        }

        while (v6);
        (*(**v2 + 40))(*v2, v2[2]);
        v2[1] = 0;
        v2[2] = 0;
      }

      *v2 = 0;
    }

    v10 = *(*v3 + 40);

    return v10(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_12WrapDeformerENS2_17WrapDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphManager *re::RenderGraphManager::RenderGraphManager(re::RenderGraphManager *this)
{
  *(this + 6) = 0;
  *(this + 2) = 0;
  *this = 0u;
  *(this + 14) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 60) = 257;
  *(this + 122) = 1;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 156) = 0u;
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
  v2 = re::globalAllocators(this)[2];
  *(this + 94) = 0;
  *(this + 380) = 0;
  *(this + 400) = 0;
  *(this + 24) = 0u;
  *(this + 102) = 0;
  *(this + 412) = 0;
  *(this + 83) = 0;
  *(this + 164) = 0;
  *(this + 40) = 0u;
  *(this + 79) = 0;
  *(this + 168) = 0;
  *(this + 368) = 0;
  *(this + 22) = 0u;
  *(this + 42) = v2;
  *(this + 43) = 0;
  *(this + 484) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 87) = 0;
  *(this + 680) = 0u;
  return this;
}

void re::RenderGraphManager::~RenderGraphManager(re::RenderGraphManager *this)
{
  re::RenderGraphManager::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 632);
  *(this + 61) = 0;
  ++*(this + 124);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 424);
  re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *,re::Slice<re::DetailedError>)>::destroyCallable(this + 312);
  re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::deinit(this + 29);
  re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 23);
  re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 17);
  re::RenderGraphProcessorContainer::reset(this);

  re::RenderGraphProcessorContainer::~RenderGraphProcessorContainer(this);
}

re *re::RenderGraphManager::deinit(re::RenderGraphManager *this)
{
  v2 = *(this + 81);
  if (v2)
  {
    v3 = *(this + 83);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::RenderGraphProviderBase>("deinit", 128, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(this + 81) = 0;
  ++*(this + 164);
  v6 = *(this + 66);
  if (v6)
  {
    v7 = 0;
    v8 = (*(this + 31) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 10;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 66);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(this + 31) + 40 * v7;
    re::StringID::StringID(v48, (v10 + 16));
    v49 = *(v10 + 32);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v48[0] >> 31) ^ (v48[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v48[0] >> 31) ^ (v48[0] >> 1))) >> 27));
    v12 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 136, v48, v11 ^ (v11 >> 31), &v50);
    if (HIDWORD(v51) != 0x7FFFFFFF)
    {
      v12 = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(*(this + 19) + 72 * HIDWORD(v51) + 24, &v49);
      if (v12)
      {
        if (*(v12 + 2) > HIDWORD(v49))
        {
          v12 = re::internal::destroyPersistent<re::RenderGraphProviderBase>("deinit", 139, *(*(v12 + 4) + 8 * HIDWORD(v49)));
        }
      }
    }

    if (v48[0])
    {
      if (v48[0])
      {
      }
    }

    v13 = *(this + 66);
    if (v13 <= v7 + 1)
    {
      v13 = v7 + 1;
    }

    while (v13 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 31) + 40 * v7 + 8) & 0x80000000) != 0)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v7) = v13;
LABEL_24:
    ;
  }

  if (*(this + 41))
  {
    v14 = *(this + 40);
    if (v14)
    {
      memset_pattern16(*(this + 18), &unk_1E304C660, 4 * v14);
    }

    if (*(this + 42))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(this + 19) + v15));
        ++v16;
        v15 += 72;
      }

      while (v16 < *(this + 42));
    }

    *(this + 41) = 0;
    *(this + 42) = 0;
    v17 = *(this + 44) + 1;
    *(this + 43) = 0x7FFFFFFF;
    *(this + 44) = v17;
  }

  if (*(this + 53))
  {
    v18 = *(this + 52);
    if (v18)
    {
      memset_pattern16(*(this + 24), &unk_1E304C660, 4 * v18);
    }

    if (*(this + 54))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(this + 25) + v19));
        ++v20;
        v19 += 48;
      }

      while (v20 < *(this + 54));
    }

    *(this + 53) = 0;
    *(this + 54) = 0;
    v21 = *(this + 56) + 1;
    *(this + 55) = 0x7FFFFFFF;
    *(this + 56) = v21;
  }

  v22 = (this + 424);
  v50 = this + 424;
  v23 = *(this + 55);
  if (v23 >= 0x10)
  {
    v24 = 0;
    v25 = *v22;
    v26 = v23 >> 4;
    while (1)
    {
      v27 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v25), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v51 = v27 ^ 0xFFFFLL;
      if (v27 != 0xFFFFLL)
      {
        break;
      }

      v24 -= 16;
      ++v25;
      if (!--v26)
      {
        goto LABEL_47;
      }
    }

    v28 = __clz(__rbit64(v27 ^ 0xFFFFLL));
    v29 = v28 - v24;
    v52 = v28 - v24;
    if (v28 + 1 != v24)
    {
      do
      {
        re::internal::destroyPersistent<re::RenderGraphCompiled>("deinit", 147, *(*(v50 + 1) + 24 * v29 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v50);
        v29 = v52;
      }

      while (v52 != -1);
      v23 = *(this + 55);
    }
  }

LABEL_47:
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 56) = 0;
  *(this + 57) = v23;
  v50 = this + 424;
  if (v23 > 0xF)
  {
    v30 = 0;
    v31 = *v22;
    v32 = v23 >> 4;
    while (1)
    {
      v33 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v31), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v51 = v33 ^ 0xFFFFLL;
      if (v33 != 0xFFFFLL)
      {
        break;
      }

      v30 -= 16;
      ++v31;
      if (!--v32)
      {
        goto LABEL_55;
      }
    }

    v34 = __clz(__rbit64(v33 ^ 0xFFFFLL));
    v52 = v34 - v30;
    if (v34 + 1 != v30)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v50);
      }

      while (v52 != -1);
      v23 = *(this + 55);
    }

LABEL_55:
    if (v23 >= 0x10)
    {
      v35 = 0;
      *&v36 = -1;
      *(&v36 + 1) = -1;
      do
      {
        *(*(this + 53) + 16 * v35++) = v36;
      }

      while (v35 < *(this + 55) >> 4);
    }
  }

  result = *(this + 16);
  if (result)
  {
    result = re::RenderGraphResourceAllocationManager::deinit(result);
    v38 = *(this + 16);
    if (v38)
    {
      v39 = re::globalAllocators(result)[2];
      re::RenderGraphResourceAllocationManager::~RenderGraphResourceAllocationManager(v38);
      result = (*(*v39 + 40))(v39, v38);
    }

    *(this + 16) = 0;
  }

  v40 = *(this + 37);
  if (v40)
  {
    v41 = re::globalAllocators(result)[2];
    re::RenderGraphPersistentResourceManager::~RenderGraphPersistentResourceManager(v40);
    result = (*(*v41 + 40))(v41, v40);
    *(this + 37) = 0;
  }

  v42 = *(this + 35);
  if (v42)
  {
    v43 = re::globalAllocators(result)[2];
    re::StringID::destroyString((v42 + 61));
    re::FixedArray<re::StringID>::deinit(v42 + 41);
    re::AttributeTable::~AttributeTable(v42);
    result = (*(*v43 + 40))(v43, v42);
    *(this + 35) = 0;
  }

  v44 = *(this + 36);
  if (v44)
  {
    v45 = re::globalAllocators(result)[2];
    re::StringID::destroyString((v44 + 61));
    re::FixedArray<re::StringID>::deinit(v44 + 41);
    re::AttributeTable::~AttributeTable(v44);
    result = (*(*v45 + 40))(v45, v44);
    *(this + 36) = 0;
  }

  v46 = *(this + 86);
  if (v46)
  {
    v47 = re::globalAllocators(result)[2];
    (**v46)(v46);
    result = (*(*v47 + 40))(v47, v46);
    *(this + 86) = 0;
  }

  return result;
}

double re::RenderGraphManager::addGraphToCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = a2;
  if (re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 424), &v24) != -1)
  {
    v8 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 424), &v24);
    re::internal::destroyPersistent<re::RenderGraphCompiled>("addGraphToCache", 26, *(*(a1 + 432) + 24 * v8 + 8));
  }

  if ((*(a1 + 380) & 1) == 0)
  {
    v9 = (a1 + 488);
    v10 = (a1 + 504);
    v11 = *(a1 + 488);
    v12 = (a1 + 504);
    if (v11)
    {
      v13 = 8 * v11;
      v12 = (a1 + 504);
      while (*v12 != v24)
      {
        v12 += 8;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_11;
        }
      }
    }

    if (v12 != &v9[v11 + 2])
    {
      re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt((a1 + 488), (v12 - v10) >> 3);
      v11 = *v9;
    }

LABEL_11:
    if (v11 == 16)
    {
      re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt((a1 + 488), 0xFuLL);
    }

    v14 = re::DynamicInlineArray<unsigned long long,16ul>::ensureCapacity((a1 + 488), v7);
    if (v14)
    {
      v15 = *v9;
      v16 = &v10[8 * *v9];
      if (*v9)
      {
        *v16 = *(v16 - 1);
        if (v16 - 8 != v10)
        {
          v14 = memmove((a1 + 512), (a1 + 504), v16 - 8 - v10);
          v15 = *v9;
        }

        v16 = (a1 + 504);
      }

      *v16 = v24;
      *(a1 + 488) = v15 + 1;
      ++*(a1 + 496);
    }

    v17 = *(a1 + 672) + 1;
    *(a1 + 672) = v17;
    v18 = a4 & 0xFFFFFFFFFFFFFFFLL;
    if ((a4 & 0xFFFFFFFFFFFFFFFuLL) - *(a1 + 680) >= 0x80)
    {
      if (v17 >= 0x20)
      {
        v19 = *re::graphicsLogObjects(v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 672);
          v21 = v18 - *(a1 + 680);
          *buf = 67109376;
          *&buf[4] = v20;
          *&buf[8] = 2048;
          *&buf[10] = v21;
          _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "WARNING: %u render graphs were cached over %llu frames.A provider might be returning a frequently changing hash.", buf, 0x12u);
        }
      }

      *(a1 + 672) = 0;
      *(a1 + 680) = v18;
    }
  }

  *buf = a3;
  *&buf[8] = a4;
  v22 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 424), &v24);
  if (v22 == -1)
  {
    *&result = re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(a1 + 424, &v24, buf).u64[0];
  }

  else
  {
    result = *buf;
    *(*(a1 + 432) + 24 * v22 + 8) = *buf;
  }

  return result;
}

uint64_t re::RenderGraphManager::getCachedGraph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v5 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 424), &v8);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = *(a1 + 432) + 24 * v5;
  if ((*(v6 + 16) & 0xFFFFFFFFFFFFFFFuLL) < (a3 & 0xFFFFFFFFFFFFFFFuLL))
  {
    return 0;
  }

  else
  {
    return *(v6 + 8);
  }
}

void re::RenderGraphManager::deleteStaleGraphs(int64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v46 = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v43, a3, 16);
  v6 = a1[30].i64[1];
  if (v6)
  {
    v7 = &a1[31].i64[v6 + 1];
    for (i = &a1[31].i64[1]; i != v7; ++i)
    {
      v9 = *i;
      v39[0] = v9;
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      v11 = v10 ^ (v10 >> 31);
      if (DWORD2(v44))
      {
        v12 = v11 % DWORD2(v44);
        v13 = *(*(&v43 + 1) + 4 * v12);
        if (v13 != 0x7FFFFFFF)
        {
          while (*(v44 + 24 * v13 + 16) != v9)
          {
            LODWORD(v13) = *(v44 + 24 * v13 + 8) & 0x7FFFFFFF;
            if (v13 == 0x7FFFFFFF)
            {
              goto LABEL_9;
            }
          }

          continue;
        }
      }

      else
      {
        LODWORD(v12) = 0;
      }

LABEL_9:
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(&v43, v12, v11, v39, v39);
      ++HIDWORD(v46);
    }
  }

  v14 = a1[28].u64[0];
  v42 = 0;
  v39[1] = 0;
  v40 = 0;
  v41 = 0;
  v39[0] = a3;
  re::DynamicArray<float *>::setCapacity(v39, v14);
  ++v41;
  v37[0] = &a1[26].i64[1];
  v15 = a1[27].u64[1];
  if (v15 >= 0x10)
  {
    v16 = 0;
    v17 = a1[26].i64[1];
    v18 = v15 >> 4;
    while (1)
    {
      v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v17), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v37[1] = v19 ^ 0xFFFFLL;
      if (v19 != 0xFFFFLL)
      {
        break;
      }

      v16 -= 16;
      ++v17;
      if (!--v18)
      {
        goto LABEL_22;
      }
    }

    v20 = __clz(__rbit64(v19 ^ 0xFFFFLL));
    v21 = v20 - v16;
    v38 = v20 - v16;
    if (v20 + 1 != v16)
    {
      v22 = a2 & 0xFFFFFFFFFFFFFFFLL;
      do
      {
        v23 = (*(v37[0] + 8) + 24 * v21);
        if ((v23[2] & 0xFFFFFFFFFFFFFFFuLL) <= v22 && !re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v43, (*(v37[0] + 8) + 24 * v21)))
        {
          re::DynamicArray<re::TransitionCondition *>::add(v39, v23);
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v37);
        v21 = v38;
      }

      while (v38 != -1);
    }
  }

LABEL_22:
  if (v40)
  {
    v24 = v42;
    v25 = 8 * v40;
    do
    {
      v37[0] = *v24;
      v26 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(&a1[26].i64[1], v37);
      re::internal::destroyPersistent<re::RenderGraphCompiled>("deleteStaleGraphs", 96, *(a1[27].i64[0] + 24 * v26 + 8));
      v27 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(&a1[26].i64[1], v37);
      if (v27 != -1)
      {
        v28 = (a1[26].i64[1] + (v27 & 0xFFFFFFFFFFFFFFF0));
        v29.i64[0] = -1;
        v29.i64[1] = -1;
        v30 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v28, v29), xmmword_1E304FAD0)))), 0x3830282018100800);
        v31 = *&v30 ? -1 : 0x80;
        v28->i8[v27 & 0xF] = v31;
        v32 = a1[27].u64[1];
        v33 = *(a1[27].i64[0] + 24 * v27);
        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) >> 27));
        a1[29].i64[0] ^= (v34 >> 31) ^ v34;
        v35.i64[0] = -1;
        v35.i64[1] = *&v30 != 0;
        v36 = vaddq_s64(a1[28], v35);
        a1[28] = v36;
        if (v32 >= 0x11 && v36.i64[0] < v32 >> 2)
        {
          re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(&a1[26].i64[1], 0);
        }
      }

      ++v24;
      v25 -= 8;
    }

    while (v25);
  }

  if (v39[0] && v42)
  {
    (*(*v39[0] + 40))();
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v43);
}

_anonymous_namespace_ *re::RenderGraphManager::init(re::RenderGraphManager *this, id *a2)
{
  if (*(this + 16))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) m_resourceAllocationManager was not null before init was called.", "m_resourceAllocationManager == nullptr", "init", 103);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 1776, 8);
  v6 = re::RenderGraphResourceAllocationManager::RenderGraphResourceAllocationManager(v5);
  *(this + 16) = v6;
  re::RenderGraphResourceAllocationManager::init(v6, a2);
  if (*(this + 37))
  {
LABEL_8:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) m_renderGraphPersistentResourceManager was not null before init was called.", "m_renderGraphPersistentResourceManager == nullptr", "init", 109);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v9 = re::globalAllocators(v7);
  v10 = (*(*v9[2] + 32))(v9[2], 120, 8);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v10 + 52) = 0x7FFFFFFFLL;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 100) = 0x7FFFFFFFLL;
  *(v10 + 112) = 3;
  *(this + 37) = v10;
  *v10 = 0;
  *(v10 + 8) = a2;
  if (!*re::ObjCObject::operator=(v10, a2 + 26))
  {
LABEL_9:
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) m_persistentDataManager could not init", "initSuccess", "init", 113);
    result = _os_crash();
    __break(1u);
    return result;
  }

  re::RenderGraphManager::initFullscreenMeshPart(this, a2);
  re::RenderGraphManager::initCubeMeshPart(this, a2);
  *(this + 87) = a2;
  re::mtl::Device::isPhysicalHardware((a2 + 26));

  return re::RenderGraphProcessorManager::addDefaultProcessors(this);
}

uint64_t re::RenderGraphManager::initFullscreenMeshPart(uint64_t this, id *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!*(this + 280))
  {
    v3 = this;
    v26 = 0;
    v23[1] = 0;
    v24 = 0;
    v23[0] = 0;
    v25 = 0;
    re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v23, 3uLL);
    v30[0] = xmmword_1E30D66D0;
    v30[1] = unk_1E30D66E0;
    v30[2] = xmmword_1E30D66F0;
    v30[3] = unk_1E30D6700;
    v4 = [a2[26] newBufferWithBytes:v30 length:64 options:0];
    LOWORD(v18[0]) = 287;
    *(&v18[0] + 1) = v4;
    v19 = 0;
    v20 = 0;
    v21 = [(_anonymous_namespace_ *)v4 length];
    v22 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v23, v17);
    if (v19 != -1)
    {
      (off_1F5D06BE8[v19])(v29, v18 + 8);
    }

    v19 = -1;
    if (*&v17[0] && (BYTE8(v17[0]) & 1) != 0)
    {
      (*(**&v17[0] + 40))();
    }

    if (v4)
    {
    }

    v29[0] = xmmword_1E30D6710;
    v29[1] = unk_1E30D6720;
    v5 = [a2[26] newBufferWithBytes:v29 length:32 options:0];
    LOWORD(v18[0]) = 285;
    *(&v18[0] + 1) = v5;
    v19 = 0;
    v20 = 0;
    v21 = [(_anonymous_namespace_ *)v5 length];
    v22 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v23, v17);
    if (v19 != -1)
    {
      (off_1F5D06BE8[v19])(v16, v18 + 8);
    }

    v19 = -1;
    if (*&v17[0] && (BYTE8(v17[0]) & 1) != 0)
    {
      (*(**&v17[0] + 40))();
    }

    if (v5)
    {
    }

    v28 = 196610;
    v27 = 0x200010000;
    v6 = [a2[26] newBufferWithBytes:&v27 length:12 options:0];
    LOWORD(v18[0]) = 49;
    *(&v18[0] + 1) = v6;
    v19 = 0;
    v20 = 0;
    v21 = [(_anonymous_namespace_ *)v6 length];
    v22 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v23, v17);
    if (v19 != -1)
    {
      (off_1F5D06BE8[v19])(v16, v18 + 8);
    }

    v19 = -1;
    v7 = *&v17[0];
    if (*&v17[0] && (BYTE8(v17[0]) & 1) != 0)
    {
      v7 = (*(**&v17[0] + 40))();
    }

    if (v6)
    {
    }

    v8.i64[0] = 0x7F0000007FLL;
    v8.i64[1] = 0x7F0000007FLL;
    v16[0] = vnegq_f32(v8);
    v16[1] = v8;
    v9 = re::globalAllocators(v7);
    v10 = (*(*v9[2] + 32))(v9[2], 544, 16);
    v14 = 0x9D2E0E4D76250F84;
    v15 = "FullscreenQuad";
    v17[0] = xmmword_1E3047670;
    v17[1] = xmmword_1E3047680;
    v18[0] = xmmword_1E30476A0;
    v18[1] = xmmword_1E30474D0;
    v13 = 0;
    v12 = 0;
    v11 = re::MeshPart::MeshPart(v10, &v14, 0, v26, v24, 6, 4, 1, v16, 0, v17, &v12, -1, 0);
    *(v3 + 280) = v11;
    if (v14)
    {
      if (v14)
      {
      }
    }

    v14 = 0;
    v15 = &str_67;
    return re::DynamicArray<re::NamedVertexBuffer>::deinit(v23);
  }

  return this;
}

uint64_t re::RenderGraphManager::initCubeMeshPart(uint64_t this, id *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!*(this + 288))
  {
    v3 = this;
    v30 = 0;
    v27[1] = 0;
    v28 = 0;
    v27[0] = 0;
    v29 = 0;
    re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v27, 2uLL);
    v33[4] = xmmword_1E30D6770;
    v33[5] = unk_1E30D6780;
    v33[6] = xmmword_1E30D6790;
    v33[7] = unk_1E30D67A0;
    v33[0] = xmmword_1E30D6730;
    v33[1] = unk_1E30D6740;
    v33[2] = xmmword_1E30D6750;
    v33[3] = unk_1E30D6760;
    v4 = [a2[26] newBufferWithBytes:v33 length:128 options:0];
    LOWORD(v22[0]) = 287;
    *(&v22[0] + 1) = v4;
    v23 = 0;
    v24 = 0;
    v25 = [(_anonymous_namespace_ *)v4 length];
    v26 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v27, v21);
    if (v23 != -1)
    {
      (off_1F5D06BE8[v23])(v31, v22 + 8);
    }

    v23 = -1;
    if (*&v21[0] && (BYTE8(v21[0]) & 1) != 0)
    {
      (*(**&v21[0] + 40))();
    }

    if (v4)
    {
    }

    v31[2] = xmmword_1E30D67D0;
    v31[3] = unk_1E30D67E0;
    v32 = 0x4000300070003;
    v31[0] = xmmword_1E30D67B0;
    v31[1] = unk_1E30D67C0;
    v5 = [a2[26] newBufferWithBytes:v31 length:72 options:0];
    LOWORD(v22[0]) = 49;
    *(&v22[0] + 1) = v5;
    v23 = 0;
    v24 = 0;
    v25 = [(_anonymous_namespace_ *)v5 length];
    v26 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v27, v21);
    if (v23 != -1)
    {
      (off_1F5D06BE8[v23])(v20, v22 + 8);
    }

    v23 = -1;
    v6 = *&v21[0];
    if (*&v21[0] && (BYTE8(v21[0]) & 1) != 0)
    {
      v6 = (*(**&v21[0] + 40))();
    }

    if (v5)
    {
    }

    __asm
    {
      FMOV            V0.4S, #-1.0
      FMOV            V1.4S, #1.0
    }

    v20[0] = _Q0;
    v20[1] = _Q1;
    v13 = re::globalAllocators(v6);
    v14 = (*(*v13[2] + 32))(v13[2], 544, 16);
    v18 = 0x38C142D1FC4;
    v19 = "CubeMesh";
    v21[0] = xmmword_1E3047670;
    v21[1] = xmmword_1E3047680;
    v22[0] = xmmword_1E30476A0;
    v22[1] = xmmword_1E30474D0;
    v17 = 0;
    v16 = 0;
    v15 = re::MeshPart::MeshPart(v14, &v18, 0, v30, v28, 36, 8, 1, v20, 0, v21, &v16, -1, 0);
    *(v3 + 288) = v15;
    if (v18)
    {
      if (v18)
      {
      }
    }

    v18 = 0;
    v19 = &str_67;
    return re::DynamicArray<re::NamedVertexBuffer>::deinit(v27);
  }

  return this;
}

re *re::internal::destroyPersistent<re::RenderGraphProviderBase>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 8;
  }
}

uint64_t re::RenderGraphManager::cachePrioritizedProviders(uint64_t a1, StringID *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 28);
  v39 = 0;
  v36[1] = 0;
  v37 = 0;
  v38 = 0;
  v36[0] = a4;
  re::DynamicArray<int>::setCapacity(v36, v8);
  ++v38;
  v9 = *(a3 + 32);
  if (v9)
  {
    v10 = 0;
    v11 = *(a3 + 16);
    while (1)
    {
      v12 = *v11;
      v11 += 14;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 != v9)
  {
    v13 = *(a3 + 16);
    do
    {
      re::DynamicArray<int>::add(v36, (v13 + 56 * v10 + 4));
      if (*(a3 + 32) <= (v10 + 1))
      {
        v14 = v10 + 1;
      }

      else
      {
        v14 = *(a3 + 32);
      }

      v13 = *(a3 + 16);
      while (v14 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(v13 + 56 * v10) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v10) = v14;
LABEL_17:
      ;
    }

    while (v10 != v9);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v16 = v37;
  v34 = v37;
  v35 = 0;
  v33 = v4;
  if (v37)
  {
    if (v37 >> 61)
    {
LABEL_44:
      re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v16);
      _os_crash();
      __break(1u);
LABEL_45:
      re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v17 = (*(*v4 + 32))(v4, 8 * v37, 8);
    v35 = v17;
    if (!v17)
    {
      goto LABEL_45;
    }

    v19 = v17;
    v20 = v17;
    if (v16 != 1)
    {
      bzero(v17, 8 * v16 - 8);
      v20 = &v19[v16 - 1];
    }

    *v20 = 0;
    if (v37)
    {
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = 0xBF58476D1CE4E5B9 * (*(v39 + v21) ^ (*(v39 + v21) >> 30));
        re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a3, (v39 + v21), (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31), &v49);
        if (v16 <= v22)
        {
          break;
        }

        v24 = *(a3 + 16) + 56 * HIDWORD(v49);
        v19[v22++] = *(*(v24 + 40) + 8 * *(v24 + 24) - 8);
        v21 += 4;
        if (v37 <= v22)
        {
          goto LABEL_27;
        }
      }

      v40 = 0;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v41 = 136315906;
      v42 = "operator[]";
      v43 = 1024;
      v44 = 468;
      v45 = 2048;
      v46 = v22;
      v47 = 2048;
      v48 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_44;
    }
  }

LABEL_27:
  re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v49, a1 + 184, a2);
  v25 = HIDWORD(v49);
  if (HIDWORD(v49) != 0x7FFFFFFF)
  {
    v26 = *(a1 + 200);
    v27 = (v26 + 48 * HIDWORD(v49));
    v28 = *v27 & 0x7FFFFFFF;
    if (v50 == 0x7FFFFFFF)
    {
      *(*(a1 + 192) + 4 * DWORD2(v49)) = v28;
    }

    else
    {
      *(v26 + 48 * v50) = *(v26 + 48 * v50) & 0x80000000 | v28;
    }

    re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(v27);
    *(*(a1 + 200) + 48 * v25) = *(*(a1 + 200) + 48 * v25) & 0x80000000 | *(a1 + 220);
    --*(a1 + 212);
    v29 = *(a1 + 224) + 1;
    *(a1 + 220) = v25;
    *(a1 + 224) = v29;
  }

  if (v16)
  {
    v49 = 0uLL;
    *&v50 = 0;
    re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v49, a1 + 184, a2);
    if (HIDWORD(v49) == 0x7FFFFFFF)
    {
      v30 = re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 184, DWORD2(v49), v49);
      re::StringID::StringID((v30 + 8), a2);
      re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray((v30 + 24), &v33);
      ++*(a1 + 224);
      v4 = v33;
      v31 = v34 == 0;
      if (!v33)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v31 = 0;
      if (!v4)
      {
        goto LABEL_39;
      }
    }

    if (!v31)
    {
      (*(*v4 + 40))(v4, v35);
    }
  }

LABEL_39:
  result = v36[0];
  if (v36[0])
  {
    if (v39)
    {
      return (*(*v36[0] + 40))();
    }
  }

  return result;
}

void re::RenderGraphManager::addProviderInternal(re::RenderGraphManager *this@<X0>, const char *a2@<X1>, const re::RenderGraphProviderBase *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v44 = a4;
  *&v43.var0 = 0;
  v43.var1 = &str_67;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v43.var0 >> 31) ^ (*&v43.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v43.var0 >> 31) ^ (*&v43.var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 136, &v43, v12 ^ (v12 >> 31), &v46);
  if (HIDWORD(v47) == 0x7FFFFFFF)
  {
    v13 = re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(this + 136, v47, v46);
    re::StringID::StringID((v13 + 8), &v43);
    *(v13 + 24) = 0u;
    v14 = v13 + 24;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 36) = 0x7FFFFFFF;
    ++*(this + 44);
    v7 = v44;
  }

  else
  {
    v14 = *(this + 19) + 72 * HIDWORD(v47) + 24;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v15 = 0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30));
  re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(v14, &v44, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), &v46);
  if (HIDWORD(v47) == 0x7FFFFFFF)
  {
    v16 = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(v14, v47, v46);
    v17 = v44;
    *(v16 + 8) = 0;
    v18 = v16 + 8;
    *(v16 + 4) = v17;
    *(v16 + 40) = 0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    ++*(v14 + 40);
  }

  else
  {
    v18 = *(v14 + 16) + 56 * HIDWORD(v47) + 8;
  }

  re::StringID::invalid(a6);
  *(a6 + 16) = 0;
  v19 = re::StringID::operator=(a6, &v43);
  *(a6 + 16) = v44;
  v20 = *(v18 + 16);
  *(a6 + 20) = v20;
  v21 = *(v18 + 8);
  if (v20 >= v21)
  {
    v22 = v20 + 1;
    if (v21 < v20 + 1)
    {
      if (*v18)
      {
        v23 = 2 * v21;
        if (!v21)
        {
          v23 = 8;
        }

        if (v23 <= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        v19 = re::DynamicArray<float *>::setCapacity(v18, v24);
      }

      else
      {
        v19 = re::DynamicArray<float *>::setCapacity(v18, v22);
        ++*(v18 + 24);
      }
    }

    v20 = *(v18 + 16);
  }

  *(*(v18 + 32) + 8 * v20) = a3;
  *(v18 + 16) = v20 + 1;
  ++*(v18 + 24);
  if (!a5)
  {
    goto LABEL_37;
  }

  re::StringID::StringID(&v46, a6);
  v48 = *(a6 + 16);
  v25 = re::Hash<re::ProviderHandle>::operator()(&v45, &v46);
  v26 = v25;
  if (v46)
  {
    if (v46)
    {
    }
  }

  v27 = *(this + 64);
  if (!v27)
  {
    LODWORD(v28) = 0;
    goto LABEL_31;
  }

  v28 = v26 % v27;
  v29 = *(*(this + 30) + 4 * (v26 % v27));
  if (v29 == 0x7FFFFFFF)
  {
LABEL_31:
    v34 = *(this + 67);
    if (v34 == 0x7FFFFFFF)
    {
      v34 = *(this + 66);
      v35 = v34;
      if (v34 == v27)
      {
        re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::setCapacity(this + 232, 2 * *(this + 65));
        LODWORD(v28) = v26 % *(this + 64);
        v35 = *(this + 66);
      }

      *(this + 66) = v35 + 1;
      v36 = *(this + 31);
      v37 = *(v36 + 40 * v34 + 8);
    }

    else
    {
      v36 = *(this + 31);
      v37 = *(v36 + 40 * v34 + 8);
      *(this + 67) = v37 & 0x7FFFFFFF;
    }

    *(v36 + 40 * v34 + 8) = v37 | 0x80000000;
    *(*(this + 31) + 40 * v34 + 8) = *(*(this + 31) + 40 * v34 + 8) & 0x80000000 | *(*(this + 30) + 4 * v28);
    *(*(this + 31) + 40 * v34) = v26;
    v38 = *(this + 31) + 40 * v34;
    v19 = re::StringID::StringID((v38 + 16), a6);
    *(v38 + 32) = *(a6 + 16);
    *(*(this + 30) + 4 * v28) = v34;
    ++*(this + 65);
    ++*(this + 68);
    goto LABEL_37;
  }

  v40 = *(this + 64);
  v41 = v26 % v27;
  v42 = v26;
  v30 = *(this + 31);
  v32 = *(a6 + 16);
  v31 = *(a6 + 20);
  while (1)
  {
    v33 = v30 + 40 * v29;
    v19 = re::StringID::operator==((v33 + 16), a6);
    if (v19)
    {
      if (*(v33 + 32) == v32 && *(v33 + 36) == v31)
      {
        break;
      }
    }

    v29 = *(v30 + 40 * v29 + 8) & 0x7FFFFFFF;
    if (v29 == 0x7FFFFFFF)
    {
      LODWORD(v28) = v41;
      v26 = v42;
      LODWORD(v27) = v40;
      goto LABEL_31;
    }
  }

LABEL_37:
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }
}

uint64_t re::RenderGraphManager::addProvider@<X0>(re *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = re::globalAllocators(a1);
  v13 = (*(*v12[2] + 32))(v12[2], 120, 8);
  v14 = re::RenderGraphManager::providerCount(a1, a2);
  re::DynamicString::format("%s_%zu", &v16, a2, v14);
  v22 = *(a3 + 24);
  v23 = 0;
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>(v21, a3);
  v19 = *(a4 + 24);
  v20 = 0;
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>(v18, a4);
  re::InlineRenderGraphProvider::InlineRenderGraphProvider(v13, &v16, v21, v18);
  re::RenderGraphManager::addProviderInternal(a1, a2, v13, a5, 1, a6);
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v18);
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v21);
  result = v16;
  if (v16)
  {
    if (v17)
    {
      return (*(*v16 + 40))();
    }
  }

  return result;
}

uint64_t re::RenderGraphManager::providerCount(re::RenderGraphManager *this, const char *a2)
{
  v9 = 0;
  v10 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 136, &v9, v4 ^ (v4 >> 31), v11);
  v6 = v12;
  if (v12 == 0x7FFFFFFF)
  {
    if (v9)
    {
      if (v9)
      {
      }
    }

    return 0;
  }

  else
  {
    v8 = *(this + 19);
    if (v9)
    {
      if (v9)
      {
      }
    }

    return *(v8 + 72 * v6 + 52);
  }
}

uint64_t re::RenderGraphManager::removeProvider(uint64_t a1, uint64_t a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 136, a2, v4 ^ (v4 >> 31), v12);
  if (v13 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(a1 + 152) + 72 * v13;
  result = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(v5 + 24, (a2 + 16));
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *(a2 + 20);
  if (*(result + 16) <= v8)
  {
    return 0;
  }

  v9 = *(*(result + 32) + 8 * v8);
  re::DynamicArray<re::Allocator const*>::removeStableAt(result, v8);
  v10 = re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::contains(a1 + 232, a2);
  if (v10)
  {
    *v12 = v9;
    re::DynamicArray<re::TransitionCondition *>::add((a1 + 632), v12);
    v10 = re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::remove(a1 + 232, a2);
  }

  if (!*(v7 + 16))
  {
    v10 = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::remove(v5 + 24, (a2 + 16));
  }

  if (!*(v5 + 52))
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 136, a2, v11 ^ (v11 >> 31), v12);
    v10 = re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 136, v12);
  }

  return 1;
}

BOOL re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::contains(uint64_t a1, uint64_t a2)
{
  re::StringID::StringID(&v13, a2);
  v14 = *(a2 + 16);
  v4 = re::Hash<re::ProviderHandle>::operator()(&v15, &v13);
  v5 = v4;
  if (v13)
  {
    if (v13)
    {
    }
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    return 0;
  }

  v7 = *(*(a1 + 8) + 4 * (v5 % v6));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  while (1)
  {
    v11 = v8 + 40 * v7;
    result = re::StringID::operator==((v11 + 16), a2);
    if (result && *(v11 + 32) == v9 && *(v11 + 36) == v10)
    {
      break;
    }

    v7 = *(v8 + 40 * v7 + 8) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  re::StringID::StringID(&v22, a2);
  v23 = *(a2 + 16);
  v4 = re::Hash<re::ProviderHandle>::operator()(&v24, &v22);
  v5 = v4;
  if (v22)
  {
    if (v22)
    {
    }
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    return 0;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 8) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v20 = *(a1 + 8);
  v21 = v7;
  v9 = *(a1 + 16);
  v10 = 0x7FFFFFFFLL;
  v12 = *(a2 + 16);
  v11 = *(a2 + 20);
  while (1)
  {
    v13 = v9 + 40 * v8;
    if (re::StringID::operator==((v13 + 16), a2) && *(v13 + 32) == v12 && *(v13 + 36) == v11)
    {
      break;
    }

    v10 = v8;
    v8 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v15 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
  if (v10 == 0x7FFFFFFF)
  {
    *(v20 + 4 * v21) = v15;
  }

  else
  {
    *(v9 + 40 * v10 + 8) = *(v9 + 40 * v10 + 8) & 0x80000000 | v15;
  }

  v16 = *(a1 + 16);
  v17 = v16 + 40 * v8;
  v18 = *(v17 + 8);
  if (v18 < 0)
  {
    *(v17 + 8) = v18 & 0x7FFFFFFF;
    re::StringID::destroyString((v17 + 16));
    v16 = *(a1 + 16);
  }

  v19 = *(a1 + 40);
  *(v16 + 40 * v8 + 8) = *(v16 + 40 * v8 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v19 + 1;
  return 1;
}

BOOL re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::remove(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::removeInternal(a1, v5);
}

void re::RenderGraphManager::getProviderPointers(re::RenderGraphManager *this@<X0>, const char *a2@<X1>, re::Allocator *a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = *a2;
    if (*a2)
    {
      v9 = a2[1];
      if (v9)
      {
        v10 = a2 + 2;
        do
        {
          v8 = 31 * v8 + v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v19[0] = 2 * v8;
  v19[1] = a2;
  v12 = re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(buf, this + 184, v19);
  if (v22 == 0x7FFFFFFF)
  {
    v13 = *re::graphicsLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = a2;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Attempted to emit graph of type %s but no cached providers were found.", buf, 0xCu);
    }

    a4[1] = 0;
    a4[2] = 0;
    *a4 = a3;
  }

  else
  {
    v14 = *(this + 25) + 48 * v22;
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    re::FixedArray<unsigned long>::init<>(a4, a3, v16);
    if (a4[1] != v16)
    {
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
      _os_crash();
      __break(1u);
    }

    if (v16)
    {
      v18 = a4[2];

      memmove(v18, v15, 8 * v16);
    }
  }
}

re *re::RenderGraphManager::deleteRemovedProviders(re *this)
{
  v1 = this;
  v2 = *(this + 81);
  if (v2)
  {
    v3 = *(this + 83);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      this = re::internal::destroyPersistent<re::RenderGraphProviderBase>("deleteRemovedProviders", 291, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(v1 + 81) = 0;
  ++*(v1 + 164);
  return this;
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep re::RenderGraphManager::checkDisableTimeouts(std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep this)
{
  v1 = this;
  if (*(this + 412) == 1)
  {
    this = std::chrono::steady_clock::now().__d_.__rep_;
    v2 = 0x41CDCD6500000000;
    LOBYTE(v2) = *(v1 + 400);
    if (*(v1 + 392) + (this - *(v1 + 384)) / 1000000000.0 * v2 > *(v1 + 408))
    {
      *(v1 + 412) = 0;
    }
  }

  if (*(v1 + 380) == 1 && *(v1 + 376) > 0.0)
  {
    this = std::chrono::steady_clock::now().__d_.__rep_;
    v3 = 0x41CDCD6500000000;
    LOBYTE(v3) = *(v1 + 368);
    if (*(v1 + 360) + (this - *(v1 + 352)) / 1000000000.0 * v3 > *(v1 + 376))
    {
      *(v1 + 380) = 0;
    }
  }

  return this;
}

uint64_t re::RenderGraphManager::processRenderGraphErrors(re::RenderGraphManager *this, re::RenderFrame *a2, re::RenderFrameWorkload *a3)
{
  result = *(this + 43);
  if (result)
  {
    *(this + 416) = 1;
    v5 = *(a2 + 424);
    v7[0] = *(a2 + 426);
    v7[1] = v5;
    v6 = a3;
    result = (*(*result + 16))(result, &v6, v7);
    *(this + 416) = 0;
  }

  return result;
}

re *re::RenderGraphManager::setDataPipeFactory(re *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 86);
  if (v4)
  {
    v5 = re::globalAllocators(result)[2];
    (**v4)(v4);
    result = (*(*v5 + 40))(v5, v4);
  }

  *(v3 + 86) = a2;
  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *,re::Slice<re::DetailedError>)>::destroyCallable(uint64_t a1))(void)
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

double re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::deinit(uint64_t *a1)
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
          re::StringID::destroyString((v6 + v5 + 8));
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

uint64_t re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *,re::Slice<re::DetailedError>)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *,re::Slice<re::DetailedError>)>::destroyCallable(a1);
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

double re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
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

double re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 6);
    re::StringID::destroyString((a1 + 2));

    return re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(v2);
  }

  return result;
}

double re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 8);
          v3 = *(a1 + 8);
        }

        v4 += 56;
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

double re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 48;
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

_DWORD *re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 6);
    re::StringID::destroyString((result + 2));

    return re::FixedArray<CoreIKTransform>::deinit(v2);
  }

  return result;
}

uint64_t re::DynamicInlineArray<unsigned long long,16ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 0xFuLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

int64x2_t re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t a1, void *a2, _OWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1u);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 3 * (v13 + 16 * v11);
  v17 = *(a1 + 8) + 24 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 24), v19);
  *(a1 + 24) = result;
  v21 = *(*(a1 + 8) + 8 * v16) ^ (*(*(a1 + 8) + 8 * v16) >> 30);
  v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v21) ^ ((0xBF58476D1CE4E5B9 * v21) >> 27));
  *(a1 + 40) ^= (v22 >> 31) ^ v22;
  return result;
}

double re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v28, 0, sizeof(v28));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v28, v9, v4);
  v26[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    v15 = xmmword_1E304FAD0;
    v10.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v26[1] = v16 ^ 0xFFFFLL;
      if (v16 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
    v18 = v17 - v12;
    v27 = v17 - v12;
    if (v17 + 1 != v12)
    {
      do
      {
        re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v28, *(v26[0] + 8) + 24 * v18, *(v26[0] + 8) + 24 * v18 + 8, v15, v10);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v26);
        v18 = v27;
      }

      while (v27 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_13:
  v19 = *(&v28[3] + 1);
  *(&v28[3] + 1) = *(a1 + 56);
  v20 = v28[0];
  v21 = v28[1];
  v28[0] = *a1;
  *&v28[1] = v11;
  v22 = v28[2];
  v23 = *(a1 + 40);
  *(a1 + 48) = *&v28[3];
  *(a1 + 56) = v19;
  *(&v28[2] + 8) = v23;
  v24 = *(a1 + 24);
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 32) = v22;
  *(&v28[1] + 8) = v24;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v28);
}

uint64_t re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 56 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 56 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 56 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
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

BOOL re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 48 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 48 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 48 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        v8 = v12;
        v13 = *(v10 + 48 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 48 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % *(a1 + 24));
                v22 = *(v19 + 8);
                v21[1] = v21[1] & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v21[1] = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v21[2] = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v32[16];
                v23 = (*&v32[16] + v17);
                v21[4] = 0;
                v21[5] = 0;
                v21[3] = 0;
                v24 = v23[4];
                v21[3] = v23[3];
                v21[4] = v24;
                v23[3] = 0;
                v23[4] = 0;
                v25 = v21[5];
                v21[5] = v23[5];
                v23[5] = v25;
                v16 = *&v32[32];
              }

              ++v18;
              v17 += 48;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 48 * v4);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 48 * v4);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = 48 * v4;
  *(v26 + v29) = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *(v26 + v29) = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v26 + 48 * v4;
}

void re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 60;
            do
            {
              v19 = v13 + v18;
              if ((*(v13 + v18 - 60) & 0x80000000) != 0)
              {
                v20 = 0xBF58476D1CE4E5B9 * ((*(v19 - 52) >> 31) ^ (*(v19 - 52) >> 1));
                v21 = re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % *(a1 + 24));
                v22 = *(v19 - 52);
                *(v21 + 8) = *(v21 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 8) = *(v19 - 52) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 16) = *(v19 - 44);
                *(v19 - 44) = &str_67;
                *(v19 - 52) = 0;
                v13 = *&v32[16];
                v23 = (*&v32[16] + v18);
                *(v21 + 24) = 0u;
                *(v21 + 56) = 0;
                *(v21 + 40) = 0u;
                *(v21 + 60) = 0x7FFFFFFFLL;
                *(v21 + 24) = *(v23 - 9);
                *(v23 - 9) = 0;
                v24 = *(v21 + 32);
                *(v21 + 32) = *(v23 - 7);
                *(v23 - 7) = v24;
                v25 = *(v21 + 40);
                *(v21 + 40) = *(v23 - 5);
                *(v23 - 5) = v25;
                *(v21 + 48) = *(v23 - 3);
                *(v23 - 3) = 0;
                LODWORD(v25) = *(v21 + 52);
                *(v21 + 52) = *(v23 - 2);
                *(v23 - 2) = v25;
                LODWORD(v25) = *(v21 + 56);
                *(v21 + 56) = *(v23 - 1);
                *(v23 - 1) = v25;
                LODWORD(v25) = *(v21 + 60);
                *(v21 + 60) = *v23;
                *v23 = v25;
                ++*(v21 + 64);
                v16 = *&v32[32];
              }

              ++v17;
              v18 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 72 * v4);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 72 * v4);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = 72 * v4;
  *(v26 + v29) = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *(v26 + v29) = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v26 + 72 * v4;
}

void re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::init(v29, v9, v8);
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
            v17 = 0;
            v18 = v13 + 24;
            do
            {
              if ((*(v18 - 24) & 0x80000000) != 0)
              {
                v19 = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, *(v18 + 24) % *(a1 + 24));
                *(v19 + 4) = *(v18 - 20);
                *(v19 + 40) = 0;
                *(v19 + 32) = 0;
                *(v19 + 16) = 0;
                *(v19 + 24) = 0;
                *(v19 + 8) = 0;
                v20 = *(v18 - 8);
                *(v19 + 8) = *(v18 - 16);
                *(v19 + 16) = v20;
                *(v18 - 16) = 0;
                *(v18 - 8) = 0;
                v21 = *(v19 + 24);
                *(v19 + 24) = *v18;
                *v18 = v21;
                v22 = *(v19 + 40);
                *(v19 + 40) = *(v18 + 16);
                *(v18 + 16) = v22;
                ++*(v18 + 8);
                ++*(v19 + 32);
              }

              v18 += 56;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(v29);
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

void re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t re::Hash<re::ProviderHandle>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = 73244475 * (*(a2 + 16) ^ HIWORD(*(a2 + 16)));
  v3 = ((*a2 >> 3) + (*a2 >> 1 << 6) - 0x61C8864680B583E9 + ((73244475 * (v2 ^ HIWORD(v2))) ^ ((73244475 * (v2 ^ HIWORD(v2))) >> 16))) ^ (*a2 >> 1);
  v4 = 73244475 * ((73244475 * (*(a2 + 20) ^ HIWORD(*(a2 + 20)))) ^ ((73244475 * (*(a2 + 20) ^ HIWORD(*(a2 + 20)))) >> 16));
  return ((v4 ^ HIWORD(v4)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
}

void re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v25, 0, 36);
      *&v25[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::init(v25, v4, a2);
      v5 = *a1;
      *a1 = *v25;
      v6 = *(a1 + 16);
      v7 = *&v25[8];
      *v25 = v5;
      *&v25[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v25[24];
      *&v25[24] = *(a1 + 24);
      v8 = *&v25[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = DWORD1(v9);
        v13 = v7;
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 1) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 24);
            v17 = v15 % v16;
            v18 = *(a1 + 36);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 32);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::setCapacity(a1, (2 * v12));
                v17 = v15 % *(a1 + 24);
                v19 = *(a1 + 32);
                v13 = *(a1 + 8);
              }

              *(a1 + 32) = v19 + 1;
              v20 = *(a1 + 16);
              v21 = *(v20 + 40 * v18 + 8);
            }

            else
            {
              v20 = *(a1 + 16);
              v21 = *(v20 + 40 * v18 + 8);
              *(a1 + 36) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 40 * v18 + 8) = v21 | 0x80000000;
            *(*(a1 + 16) + 40 * v18 + 8) = *(*(a1 + 16) + 40 * v18 + 8) & 0x80000000 | *(v13 + 4 * v17);
            *(*(a1 + 16) + 40 * v18) = v15;
            v22 = (*(a1 + 16) + 40 * v18);
            v23 = *v14;
            v22[2] = v22[2] & 0xFFFFFFFFFFFFFFFELL | *v14 & 1;
            v22[2] = *v14 & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
            v22[3] = v14[1];
            *v14 = 0;
            v14[1] = &str_67;
            v22[4] = v14[2];
            v13 = *(a1 + 8);
            *(v13 + 4 * v17) = v18;
            v12 = *(a1 + 28) + 1;
            *(a1 + 28) = v12;
          }

          ++v11;
          v14 += 5;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::deinit(v25);
    }
  }

  else
  {
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 3;
    }
  }
}

void re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

BOOL re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
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
      v9 = v8;
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 56 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::DynamicArray<unsigned long>::deinit((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 56 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 56 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 72 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 72 * v5) = *(v6 + 72 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((v6 + 72 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 72 * v9) = *(*(a1 + 16) + 72 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void *re::PersistentShadowState::visualizeShadowClusters(void *this, re::DebugRenderer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    v5 = 0;
    v6 = this[18];
    while ((*v6 & 0x80000000) == 0)
    {
      v6 += 96;
      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v7 = (v3[18] + 384 * v5);
    v14[0] = xmmword_1E3047670;
    re::DebugRenderer::drawBox(a2, v7 + 10, v7[5].f32, v14, 1);
    v14[0] = xmmword_1E3047670;
    v14[1] = xmmword_1E3047680;
    v14[2] = xmmword_1E30476A0;
    v14[3] = xmmword_1E30474D0;
    re::BoundingSphere::BoundingSphere(&v12, &v7[5], v7 + 10);
    v8 = (&v12 | 0xC);
    v9 = vld1q_dup_f32(v8);
    v13[0] = vsubq_f32(v12, v9);
    v13[1] = vaddq_f32(v12, v9);
    v11 = xmmword_1E30476A0;
    this = re::DebugRenderer::drawBox(a2, v14, v13, &v11, 1);
    v10 = *(v3 + 40);
    if (v10 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    while (v10 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(v3[18] + 384 * v5) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v5) = v10;
LABEL_14:
    ;
  }

  return this;
}

void re::PersistentShadowState::visualizeShadowClusterInfo(uint64_t a1, void *a2, StringID *a3, uint64_t a4)
{
  v160 = *MEMORY[0x1E695E480];
  cf = CFDateFormatterCreate(*MEMORY[0x1E695E480], 0, kCFDateFormatterNoStyle, kCFDateFormatterLongStyle);
  CFDateFormatterSetFormat(cf, @"HH:mm:ss.SSS");
  v162 = *(a1 + 160);
  if (v162)
  {
    v7 = 0;
    v8 = *(a1 + 144);
    while ((*v8 & 0x80000000) == 0)
    {
      v8 += 96;
      if (v162 == ++v7)
      {
        LODWORD(v7) = *(a1 + 160);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v162)
  {
    v9 = *(a1 + 144) + 384 * v7;
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v160, cf, *(v9 + 256));
    v11 = *(v9 + 8);
    CStringPtr = CFStringGetCStringPtr(StringWithAbsoluteTime, 0x8000100u);
    re::DynamicString::format("%llu - %s", &v174, v11, CStringPtr);
    CFRelease(StringWithAbsoluteTime);
    v13 = *(v9 + 16);
    v176 = *(v9 + 8);
    *&v177 = v13;
    v14 = re::Hash<re::ShadowPair>::operator()(&v180, &v176);
    v15 = re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(a1 + 80, &v176, v14, &v180);
    if (v180.i32[3] == 0x7FFFFFFF)
    {
      v172 = 0u;
      v173 = 0u;
      re::DynamicString::setCapacity(&v172, 0);
    }

    else
    {
      ShadowInfo = re::PersistentShadowState::getShadowInfo(a1, *(a1 + 96) + 72 * v180.u32[3] + 32);
      re::DynamicString::format("%.3f x %.3f", &v172, ((ShadowInfo[78] - ShadowInfo[76]) / *(a4 + 4)), ((ShadowInfo[79] - ShadowInfo[77]) / *(a4 + 4)));
    }

    v17 = (v9 + 32);
    v180 = xmmword_1E3047670;
    re::DebugRenderer::drawBox(a2, v17 + 8, v17[3].f32, &v180, 1);
    re::DebugRenderer::drawAxis(a2, v17 + 8, 1, 0.5, 0.1);
    re::BoundingSphere::BoundingSphere(&v180, &v17[3], v17 + 8);
    v18 = (&v180 | 0xC);
    v19 = vld1q_dup_f32(v18);
    v21.columns[2] = vsubq_f32(v180, v19);
    v21.columns[0] = vaddq_f32(v180, v19);
    v21.columns[1] = vsubq_f32(v21.columns[0], v21.columns[2]);
    v21.columns[1].i32[3] = 0;
    v20 = vmaxnmq_f32(v21.columns[1], 0);
    v21.columns[1] = vcgtq_f32(v21.columns[2], v21.columns[0]);
    v21.columns[1].i32[3] = v21.columns[1].i32[2];
    LODWORD(v18) = vmaxvq_u32(v21.columns[1]);
    v21.columns[1].i64[0] = 0x3F0000003F000000;
    v21.columns[1].i64[1] = 0x3F0000003F000000;
    v21.columns[0] = vmulq_f32(vaddq_f32(v21.columns[2], v21.columns[0]), v21.columns[1]);
    v22 = v18 < 0;
    if (v18 >= 0)
    {
      v23 = v21.columns[0].i64[1];
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = v21.columns[0].i64[0];
    }

    v21.columns[0].i64[0] = v24;
    v21.columns[0].i64[1] = v23;
    v168 = v21.columns[0];
    v170 = v20;
    v21.columns[0].i64[0] = v17[8].i64[0];
    v21.columns[1].i64[0] = v17[9].i64[0];
    v21.columns[2].i64[0] = v17[10].i64[0];
    v21.columns[0].i32[2] = v17[8].i32[2];
    v21.columns[1].i32[2] = v17[9].i32[2];
    v21.columns[2].i32[2] = v17[10].i32[2];
    v184 = __invert_f3(v21);
    v25 = vzip2q_s32(v184.columns[0], v184.columns[2]);
    v26 = vzip1q_s32(vzip1q_s32(v184.columns[0], v184.columns[2]), v184.columns[1]);
    v184.columns[0] = vtrn2q_s32(v184.columns[0], v184.columns[1]);
    v184.columns[0].i32[2] = v184.columns[2].i32[1];
    v184.columns[0] = vaddq_f32(vzip1q_s32(v25, vdupq_laneq_s32(v184.columns[1], 2)), vmlaq_f32(vmulq_f32(v26, 0), 0, v184.columns[0]));
    v184.columns[1] = vmulq_f32(v184.columns[0], v184.columns[0]);
    v184.columns[2].f32[0] = v184.columns[1].f32[2] + vaddv_f32(*v184.columns[1].f32);
    *v184.columns[1].f32 = vrsqrte_f32(v184.columns[2].u32[0]);
    *v184.columns[1].f32 = vmul_f32(*v184.columns[1].f32, vrsqrts_f32(v184.columns[2].u32[0], vmul_f32(*v184.columns[1].f32, *v184.columns[1].f32)));
    v27 = vmulq_n_f32(v184.columns[0], vmul_f32(*v184.columns[1].f32, vrsqrts_f32(v184.columns[2].u32[0], vmul_f32(*v184.columns[1].f32, *v184.columns[1].f32))).f32[0]);
    v28 = vmuls_lane_f32(0.5, *v170.f32, 1);
    v184.columns[0].f32[0] = v28 * 1.1;
    v184.columns[1].i32[0] = 0;
    v184.columns[1].i32[1] = v184.columns[0].i32[0];
    v29 = vaddq_f32(v184.columns[1].u64[0], v168);
    v184.columns[1] = vsubq_f32(vaddq_f32(v29, v27), v29);
    v184.columns[2] = vmulq_f32(v184.columns[1], v184.columns[1]);
    v26.f32[0] = v184.columns[2].f32[2] + vaddv_f32(*v184.columns[2].f32);
    *v184.columns[2].f32 = vrsqrte_f32(v26.u32[0]);
    *v184.columns[2].f32 = vmul_f32(*v184.columns[2].f32, vrsqrts_f32(v26.u32[0], vmul_f32(*v184.columns[2].f32, *v184.columns[2].f32)));
    v30 = vmulq_n_f32(v184.columns[1], vmul_f32(*v184.columns[2].f32, vrsqrts_f32(v26.u32[0], vmul_f32(*v184.columns[2].f32, *v184.columns[2].f32))).f32[0]);
    v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
    v184.columns[2] = vmlaq_f32(vmulq_f32(v31, xmmword_1E30661D0), xmmword_1E30476A0, v30);
    v32 = vextq_s8(vuzp1q_s32(v184.columns[2], v184.columns[2]), v184.columns[2], 0xCuLL);
    v184.columns[2] = vmulq_f32(v184.columns[2], v184.columns[2]);
    *&v33 = v184.columns[2].f32[1] + (v184.columns[2].f32[2] + v184.columns[2].f32[0]);
    *v184.columns[2].f32 = vrsqrte_f32(v33);
    *v184.columns[2].f32 = vmul_f32(*v184.columns[2].f32, vrsqrts_f32(v33, vmul_f32(*v184.columns[2].f32, *v184.columns[2].f32)));
    v34 = vmulq_n_f32(v32, vmul_f32(*v184.columns[2].f32, vrsqrts_f32(v33, vmul_f32(*v184.columns[2].f32, *v184.columns[2].f32))).f32[0]);
    v35 = v34.f32[1];
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v30)), v34, v31);
    v37 = v30.f32[2] + vaddq_f32(v34, v36).f32[0];
    if (v37 >= 0.0)
    {
      v38 = 1.0;
      v36.f32[0] = sqrtf(v37 + 1.0);
      v34.f32[0] = v36.f32[0] + v36.f32[0];
      v42 = vrecpe_f32(COERCE_UNSIGNED_INT(v36.f32[0] + v36.f32[0]));
      v43 = vmul_f32(v42, vrecps_f32(COERCE_UNSIGNED_INT(v36.f32[0] + v36.f32[0]), v42));
      v44 = vmul_f32(v43, vrecps_f32(COERCE_UNSIGNED_INT(v36.f32[0] + v36.f32[0]), v43)).f32[0];
      v36.f32[0] = (v36.f32[1] - v30.f32[1]) * v44;
      v39 = (v30.f32[0] - v34.f32[2]) * v44;
      v40 = (v34.f32[1] - v36.f32[2]) * v44;
      v41 = v34.f32[0] * 0.25;
    }

    else
    {
      v38 = 1.0;
      if (v34.f32[0] < v30.f32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v34, v36))).u8[0] & 1) != 0)
      {
        v34.f32[0] = 1.0 - v34.f32[0];
        v45 = v36.f32[0] < v30.f32[2];
        v46 = sqrtf(v30.f32[2] + (v34.f32[0] - v36.f32[0]));
        *&v47 = v46 + v46;
        v48 = vrecpe_f32(v47);
        v49 = vmul_f32(v48, vrecps_f32(v47, v48));
        v50 = vmul_f32(v49, vrecps_f32(v47, v49)).f32[0];
        v51 = (v30.f32[0] + v34.f32[2]) * v50;
        v52 = (v30.f32[1] + v36.f32[1]) * v50;
        v53 = *&v47 * 0.25;
        v54 = (v34.f32[1] - v36.f32[2]) * v50;
        v36.f32[0] = sqrtf((v34.f32[0] - v30.f32[2]) + v36.f32[0]);
        v36.f32[0] = v36.f32[0] + v36.f32[0];
        *v34.f32 = vrecpe_f32(v36.u32[0]);
        *v34.f32 = vmul_f32(*v34.f32, vrecps_f32(v36.u32[0], *v34.f32));
        v55 = vmul_f32(*v34.f32, vrecps_f32(v36.u32[0], *v34.f32)).f32[0];
        v56 = (v35 + v36.f32[2]) * v55;
        v57 = v36.f32[0] * 0.25;
        v58 = (v30.f32[1] + v36.f32[1]) * v55;
        v59 = (v30.f32[0] - v34.f32[2]) * v55;
        if (v45)
        {
          v36.f32[0] = v51;
        }

        else
        {
          v36.f32[0] = v56;
        }

        if (v45)
        {
          v39 = v52;
        }

        else
        {
          v39 = v57;
        }

        if (v45)
        {
          v40 = v53;
        }

        else
        {
          v40 = v58;
        }

        if (v45)
        {
          v41 = v54;
        }

        else
        {
          v41 = v59;
        }
      }

      else
      {
        v36.f32[0] = sqrtf(v34.f32[0] + ((1.0 - v36.f32[0]) - v30.f32[2]));
        v36.f32[0] = v36.f32[0] + v36.f32[0];
        *v34.f32 = vrecpe_f32(v36.u32[0]);
        *v34.f32 = vmul_f32(*v34.f32, vrecps_f32(v36.u32[0], *v34.f32));
        v34.f32[0] = vmul_f32(*v34.f32, vrecps_f32(v36.u32[0], *v34.f32)).f32[0];
        v36.f32[0] = v36.f32[0] * 0.25;
        v39 = (v35 + v36.f32[2]) * v34.f32[0];
        v40 = (v30.f32[0] + v34.f32[2]) * v34.f32[0];
        v41 = (v36.f32[1] - v30.f32[1]) * v34.f32[0];
      }
    }

    v60 = vmulq_f32(v170, v170);
    v61 = v60.f32[2] + vaddv_f32(*v60.f32);
    LODWORD(v62) = 0;
    *(&v62 + 1) = v28;
    v63 = vsubq_f32(v168, v62);
    v64 = vsubq_f32(vaddq_f32(v63, v27), v63);
    v65 = vmulq_f32(v64, v64);
    *&v62 = v65.f32[2] + vaddv_f32(*v65.f32);
    *v65.f32 = vrsqrte_f32(v62);
    *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v62, vmul_f32(*v65.f32, *v65.f32)));
    v66 = vmulq_n_f32(v64, vmul_f32(*v65.f32, vrsqrts_f32(v62, vmul_f32(*v65.f32, *v65.f32))).f32[0]);
    v67 = vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL);
    v68 = vmlaq_f32(vmulq_f32(v67, xmmword_1E30661D0), xmmword_1E30476A0, v66);
    v69 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
    v70 = vmulq_f32(v68, v68);
    *&v71 = v70.f32[1] + (v70.f32[2] + v70.f32[0]);
    *v70.f32 = vrsqrte_f32(v71);
    *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32)));
    v72 = vmulq_n_f32(v69, vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32))).f32[0]);
    v73 = v72.f32[1];
    v74 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), vnegq_f32(v66)), v72, v67);
    v75 = v66.f32[2] + vaddq_f32(v72, v74).f32[0];
    if (v75 >= 0.0)
    {
      v74.f32[0] = sqrtf(v75 + v38);
      v72.f32[0] = v74.f32[0] + v74.f32[0];
      v79 = vrecpe_f32(COERCE_UNSIGNED_INT(v74.f32[0] + v74.f32[0]));
      v80 = vmul_f32(v79, vrecps_f32(COERCE_UNSIGNED_INT(v74.f32[0] + v74.f32[0]), v79));
      v81 = vmul_f32(v80, vrecps_f32(COERCE_UNSIGNED_INT(v74.f32[0] + v74.f32[0]), v80)).f32[0];
      v74.f32[0] = (v74.f32[1] - v66.f32[1]) * v81;
      v76 = (v66.f32[0] - v72.f32[2]) * v81;
      v77 = (v72.f32[1] - v74.f32[2]) * v81;
      v78 = v72.f32[0] * 0.25;
    }

    else if (v72.f32[0] < v66.f32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v72, v74))).u8[0] & 1) != 0)
    {
      v72.f32[0] = v38 - v72.f32[0];
      v82 = v74.f32[0] < v66.f32[2];
      v83 = sqrtf(v66.f32[2] + (v72.f32[0] - v74.f32[0]));
      *&v84 = v83 + v83;
      v85 = vrecpe_f32(v84);
      v86 = vmul_f32(v85, vrecps_f32(v84, v85));
      v87 = vmul_f32(v86, vrecps_f32(v84, v86)).f32[0];
      v88 = (v66.f32[0] + v72.f32[2]) * v87;
      v89 = (v66.f32[1] + v74.f32[1]) * v87;
      v90 = *&v84 * 0.25;
      v91 = (v72.f32[1] - v74.f32[2]) * v87;
      v74.f32[0] = sqrtf((v72.f32[0] - v66.f32[2]) + v74.f32[0]);
      v74.f32[0] = v74.f32[0] + v74.f32[0];
      *v72.f32 = vrecpe_f32(v74.u32[0]);
      *v72.f32 = vmul_f32(*v72.f32, vrecps_f32(v74.u32[0], *v72.f32));
      v92 = vmul_f32(*v72.f32, vrecps_f32(v74.u32[0], *v72.f32)).f32[0];
      v93 = (v73 + v74.f32[2]) * v92;
      v94 = v74.f32[0] * 0.25;
      v95 = (v66.f32[1] + v74.f32[1]) * v92;
      v78 = (v66.f32[0] - v72.f32[2]) * v92;
      if (v82)
      {
        v74.f32[0] = v88;
      }

      else
      {
        v74.f32[0] = v93;
      }

      if (v82)
      {
        v76 = v89;
      }

      else
      {
        v76 = v94;
      }

      if (v82)
      {
        v77 = v90;
      }

      else
      {
        v77 = v95;
      }

      if (v82)
      {
        v78 = v91;
      }
    }

    else
    {
      v74.f32[0] = sqrtf(v72.f32[0] + ((v38 - v74.f32[0]) - v66.f32[2]));
      v74.f32[0] = v74.f32[0] + v74.f32[0];
      *v72.f32 = vrecpe_f32(v74.u32[0]);
      *v72.f32 = vmul_f32(*v72.f32, vrecps_f32(v74.u32[0], *v72.f32));
      v72.f32[0] = vmul_f32(*v72.f32, vrecps_f32(v74.u32[0], *v72.f32)).f32[0];
      v74.f32[0] = v74.f32[0] * 0.25;
      v76 = (v73 + v74.f32[2]) * v72.f32[0];
      v77 = (v66.f32[0] + v72.f32[2]) * v72.f32[0];
      v78 = (v74.f32[1] - v66.f32[1]) * v72.f32[0];
    }

    v96 = 0;
    v97 = v36.f32[0] + v36.f32[0];
    v98 = v39 + v39;
    v99 = v40 + v40;
    v100 = v36.f32[0] * (v36.f32[0] + v36.f32[0]);
    v101 = v39 * (v39 + v39);
    v102 = v40 * (v40 + v40);
    v103 = (v36.f32[0] + v36.f32[0]) * v39;
    v104 = (v36.f32[0] + v36.f32[0]) * v40;
    v105 = v98 * v40;
    v106 = v98 * v41;
    v107 = v99 * v41;
    v108.i32[3] = 0;
    v108.f32[0] = v38 - (v101 + v102);
    v108.f32[1] = v103 + v107;
    v108.f32[2] = v104 - v106;
    v109 = v97 * v41;
    v110.i32[3] = 0;
    v110.f32[0] = v103 - v107;
    v110.f32[1] = v38 - (v100 + v102);
    v110.f32[2] = v105 + v109;
    v111 = v105 - v109;
    v112.i32[3] = 0;
    v112.f32[0] = v104 + v106;
    v112.f32[1] = v111;
    v112.f32[2] = v38 - (v100 + v101);
    v113 = sqrtf(v61);
    v29.f32[3] = v38;
    v114 = v77 + v77;
    v115 = v76 * (v76 + v76);
    v116 = v77 * (v77 + v77);
    v117 = (v74.f32[0] + v74.f32[0]) * v76;
    v118 = (v74.f32[0] + v74.f32[0]) * v77;
    v119 = (v76 + v76) * v77;
    v120 = (v74.f32[0] + v74.f32[0]) * v78;
    v121 = (v76 + v76) * v78;
    v122.i32[3] = 0;
    v123 = v114 * v78;
    v124.i32[3] = 0;
    v124.f32[0] = v117 - (v114 * v78);
    v125.i32[3] = 0;
    v125.f32[0] = v118 + v121;
    v125.f32[1] = v119 - v120;
    v126 = v74.f32[0] * (v74.f32[0] + v74.f32[0]);
    v127 = v175[0];
    v128 = v175[0] >> 1;
    if ((v175[0] & 1) == 0)
    {
      v128 = LOBYTE(v175[0]) >> 1;
    }

    v129 = v128;
    v130 = BYTE8(v172) >> 1;
    LODWORD(v131) = 0;
    *(&v131 + 1) = 0;
    *(&v131 + 1) = v113;
    if (BYTE8(v172))
    {
      v130 = *(&v172 + 1) >> 1;
    }

    *&v132 = 0;
    *(&v132 + 1) = LODWORD(v113);
    v163 = v131;
    v164 = LODWORD(v113);
    v176 = LODWORD(v113);
    v177 = v131;
    v178 = v132;
    v179 = xmmword_1E30474D0;
    do
    {
      *(&v180 + v96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, COERCE_FLOAT(*(&v176 + v96))), v110, *(&v176 + v96), 1), v112, *(&v176 + v96), 2), v29, *(&v176 + v96), 3);
      v96 += 16;
    }

    while (v96 != 64);
    v133 = 0;
    v124.f32[2] = v119 + v120;
    v134 = v180;
    v135 = v181;
    v136 = v182;
    v137 = v183;
    v176 = xmmword_1E30D6800;
    v177 = xmmword_1E30D6810;
    v165 = v130 / -3.0;
    v178 = xmmword_1E30D6820;
    v179 = xmmword_1E30474D0;
    do
    {
      *(&v180 + v133) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(*(&v176 + v133))), v135, *(&v176 + v133), 1), v136, *(&v176 + v133), 2), v137, *(&v176 + v133), 3);
      v133 += 16;
    }

    while (v133 != 64);
    v125.f32[2] = v38 - (v126 + v115);
    v166 = v125;
    v124.f32[1] = v38 - (v126 + v116);
    v167 = v124;
    v138 = 0;
    *&v139 = v129 / -3.0;
    DWORD1(v139) = 0;
    DWORD2(v139) = 0;
    *(&v139 + 3) = v38;
    v140 = v180;
    v141 = v181;
    v142 = v182;
    v143 = v183;
    v176 = xmmword_1E3047670;
    v177 = xmmword_1E3047680;
    v178 = xmmword_1E30476A0;
    v179 = v139;
    do
    {
      *(&v180 + v138) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, COERCE_FLOAT(*(&v176 + v138))), v141, *(&v176 + v138), 1), v142, *(&v176 + v138), 2), v143, *(&v176 + v138), 3);
      v138 += 16;
    }

    while (v138 != 64);
    v122.f32[1] = v117 + v123;
    v63.f32[3] = v38;
    v122.f32[2] = v118 - v121;
    v122.f32[0] = v38 - (v115 + v116);
    v169 = v122;
    v171 = v63;
    if (v127)
    {
      v144 = v175[1];
    }

    else
    {
      v144 = v175 + 1;
    }

    v176 = xmmword_1E3060D30;
    re::DebugRenderer::drawText(a2, &v180, v144, a3, &v176, 0);
    v145 = 0;
    v176 = v164;
    v177 = v163;
    v178 = v132;
    v179 = xmmword_1E30474D0;
    do
    {
      *(&v180 + v145) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v169, COERCE_FLOAT(*(&v176 + v145))), v167, *(&v176 + v145), 1), v166, *(&v176 + v145), 2), v171, *(&v176 + v145), 3);
      v145 += 16;
    }

    while (v145 != 64);
    v146 = 0;
    v147 = v180;
    v148 = v181;
    v149 = v182;
    v150 = v183;
    v176 = xmmword_1E30D6800;
    v177 = xmmword_1E30D6810;
    v178 = xmmword_1E30D6820;
    v179 = xmmword_1E30474D0;
    do
    {
      *(&v180 + v146) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v147, COERCE_FLOAT(*(&v176 + v146))), v148, *(&v176 + v146), 1), v149, *(&v176 + v146), 2), v150, *(&v176 + v146), 3);
      v146 += 16;
    }

    while (v146 != 64);
    v151 = 0;
    *&v152 = LODWORD(v165);
    DWORD2(v152) = 0;
    HIDWORD(v152) = 1.0;
    v153 = v180;
    v154 = v181;
    v155 = v182;
    v156 = v183;
    v176 = xmmword_1E3047670;
    v177 = xmmword_1E3047680;
    v178 = xmmword_1E30476A0;
    v179 = v152;
    do
    {
      *(&v180 + v151) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v153, COERCE_FLOAT(*(&v176 + v151))), v154, *(&v176 + v151), 1), v155, *(&v176 + v151), 2), v156, *(&v176 + v151), 3);
      v151 += 16;
    }

    while (v151 != 64);
    if (BYTE8(v172))
    {
      v157 = v173;
    }

    else
    {
      v157 = &v172 + 9;
    }

    v176 = xmmword_1E3060D30;
    re::DebugRenderer::drawText(a2, &v180, v157, a3, &v176, 0);
    if (v172 && (BYTE8(v172) & 1) != 0)
    {
      (*(*v172 + 40))();
    }

    if (v174 && (v175[0] & 1) != 0)
    {
      (*(*v174 + 40))();
    }

    v158 = *(a1 + 160);
    if (v158 <= v7 + 1)
    {
      v158 = v7 + 1;
    }

    while (v158 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(a1 + 144) + 384 * v7) & 0x80000000) != 0)
      {
        goto LABEL_84;
      }
    }

    LODWORD(v7) = v158;
LABEL_84:
    ;
  }

  CFRelease(cf);
}

void re::PersistentShadowState::visualizeShadowPlanes(re::PersistentShadowState *this, re::DebugRenderer *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (re::internal::shadows::g_enableShadowFlattening == 1)
  {
    v4 = *(this + 40);
    if (v4)
    {
      v5 = 0;
      v6 = *(this + 18);
      while ((*v6 & 0x80000000) == 0)
      {
        v6 += 96;
        if (v4 == ++v5)
        {
          LODWORD(v5) = *(this + 40);
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
      v7 = *(this + 40);
      do
      {
        v8 = (*(this + 18) + 384 * v5);
        if (v8[17].i8[0] == 1)
        {
          v9 = v8 + 2;
          v10.i64[0] = 0x3F0000003F000000;
          v10.i64[1] = 0x3F0000003F000000;
          v11 = vaddq_f32(v8[19], vmulq_f32(v8[18], v10));
          v14 = xmmword_1E30A32C0;
          v15[0] = v11;
          re::DebugRenderer::drawArrow(a2, v8 + 19, v15, &v14, 1, 0.1);
          v12 = vaddq_f32(v9[11], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v9[8], (v9[3].f32[0] + v9[4].f32[0]) * 0.5), v9[9], v9[3].f32[1]), v9[10], (v9[3].f32[2] + v9[4].f32[2]) * 0.5));
          v15[0] = v9[17];
          v15[1] = vdivq_f32(v12, vdupq_laneq_s32(v12, 3));
          v15[2] = xmmword_1E309E550;
          v16 = 1065353216;
          re::DynamicArray<re::RigTransform>::add((a2 + 16), v15);
          v7 = *(this + 40);
        }

        if (v7 <= v5 + 1)
        {
          v13 = v5 + 1;
        }

        else
        {
          v13 = v7;
        }

        while (v13 - 1 != v5)
        {
          LODWORD(v5) = v5 + 1;
          if ((*(*(this + 18) + 384 * v5) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v5) = v13;
LABEL_19:
        ;
      }

      while (v5 != v4);
    }
  }
}

void *re::PersistentShadowState::visualizeShadowMatrices(void *this, re::DebugRenderer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    v5 = 0;
    v6 = this[12];
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 28);
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
    __asm { FMOV            V0.4S, #-1.0 }

    v18 = _Q0;
    __asm { FMOV            V0.4S, #1.0 }

    v17 = _Q0;
    do
    {
      ShadowInfo = re::PersistentShadowState::getShadowInfo(v3, *(v3 + 96) + 72 * v5 + 32);
      v15 = v18;
      v27 = xmmword_1E30A23F0;
      v28 = 0x3F8000003F800000;
      v29 = 1065353216;
      DWORD2(v15) = *(ShadowInfo + 1696);
      v24 = v15;
      v25 = 0x3F8000003F800000;
      v26 = 1065353216;
      v30 = __invert_f4(*(ShadowInfo + 1488));
      v20 = v30.columns[0];
      v21 = v30.columns[1];
      v22 = v30.columns[2];
      v23 = v30.columns[3];
      v19 = v17;
      re::DebugRenderer::drawBox(a2, &v20, &v27, &v19, 1);
      v31 = __invert_f4(*(ShadowInfo + 1488));
      v20 = v31.columns[0];
      v21 = v31.columns[1];
      v22 = v31.columns[2];
      v23 = v31.columns[3];
      re::DebugRenderer::drawAxis(a2, &v20, 1, 0.5, 0.1);
      v32 = __invert_f4(*(ShadowInfo + 1552));
      v20 = v32.columns[0];
      v21 = v32.columns[1];
      v22 = v32.columns[2];
      v23 = v32.columns[3];
      v19 = xmmword_1E3060D60;
      re::DebugRenderer::drawBox(a2, &v20, &v24, &v19, 1);
      v33 = __invert_f4(*(ShadowInfo + 1552));
      v20 = v33.columns[0];
      v21 = v33.columns[1];
      v22 = v33.columns[2];
      v23 = v33.columns[3];
      re::DebugRenderer::drawAxis(a2, &v20, 1, 0.5, 0.1);
      v34 = __invert_f4(*(ShadowInfo + 1616));
      v20 = v34.columns[0];
      v21 = v34.columns[1];
      v22 = v34.columns[2];
      v23 = v34.columns[3];
      this = re::DebugRenderer::drawAxis(a2, &v20, 1, 0.5, 0.1);
      v16 = *(v3 + 112);
      if (v16 <= v5 + 1)
      {
        v16 = v5 + 1;
      }

      while (v16 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(v3 + 96) + 72 * v5) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v5) = v16;
LABEL_15:
      ;
    }

    while (v5 != v4);
  }

  return this;
}

uint64_t re::PersistentShadowState::getShadowInfo(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) <= *(a2 + 24))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 72) + 1840 * *(a2 + 24);
}

void *re::PersistentShadowState::visualizeCullBoundingBoxes(void *this, re::DebugRenderer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    v5 = 0;
    v6 = this[12];
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    ShadowInfo = re::PersistentShadowState::getShadowInfo(v3, *(v3 + 96) + 72 * v5 + 32);
    if (ShadowInfo[86].i8[0])
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    v11 = vbslq_s8(vdupq_n_s32(v9), xmmword_1E3047680, xmmword_1E3047670);
    this = re::DebugRenderer::drawBox(a2, ShadowInfo + 89, ShadowInfo[87].f32, v11.i8, 1);
    v10 = *(v3 + 112);
    if (v10 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    while (v10 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 96) + 72 * v5) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v5) = v10;
LABEL_17:
    ;
  }

  return this;
}

float32x4_t *re::BoundingSphere::BoundingSphere(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v6 = vcgtq_f32(*a2, v5);
  v6.i32[3] = v6.i32[2];
  v7 = vaddq_f32(*a2, v5);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(v7, v5);
  v9 = v8.i64[1];
  if ((vmaxvq_u32(v6) & 0x80000000) == 0)
  {
    v10 = *v8.f32;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *v11.f32 = v10;
  v11.i64[1] = v9;
  v12 = vaddq_f32(a3[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a3, v10.f32[0]), a3[1], v10, 1), a3[2], v11, 2));
  *a1 = vdivq_f32(v12, vdupq_laneq_s32(v12, 3));
  memset(v20, 0, sizeof(v20));
  re::AABB::extractCorners(a2, v20, 8uLL, 0);
  v13 = 0;
  v14 = 0.0;
  do
  {
    v15 = vaddq_f32(a3[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a3, COERCE_FLOAT(*&v20[v13])), a3[1], v20[v13].n128_u64[0], 1), a3[2], v20[v13], 2));
    v16 = vsubq_f32(vdivq_f32(v15, vdupq_laneq_s32(v15, 3)), *a1);
    v17 = vmulq_f32(v16, v16);
    v18 = vaddv_f32(*v17.f32);
    if ((v17.f32[2] + v18) >= v14)
    {
      v14 = v17.f32[2] + v18;
    }

    ++v13;
  }

  while (v13 != 8);
  a1->f32[3] = sqrtf(v14);
  return a1;
}

uint64_t re::AABB::extractCorners(uint64_t result, __n128 *a2, unint64_t a3, __n128 a4)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  a4.n128_u64[0] = *result;
  a4.n128_u32[2] = *(result + 8);
  *a2 = a4;
  if (a3 == 1)
  {
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  a4.n128_u32[0] = *(result + 16);
  a4.n128_u32[1] = *(result + 4);
  a4.n128_u32[2] = *(result + 8);
  a2[1] = a4;
  if (a3 <= 2)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  a4.n128_u64[0] = *(result + 16);
  a4.n128_u32[2] = *(result + 8);
  a2[2] = a4;
  if (a3 == 3)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  a4.n128_u32[0] = *result;
  a4.n128_u32[1] = *(result + 20);
  a4.n128_u32[2] = *(result + 8);
  a2[3] = a4;
  if (a3 <= 4)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 4, 4);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  a4.n128_u64[0] = *result;
  a4.n128_u32[2] = *(result + 24);
  a2[4] = a4;
  if (a3 == 5)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 5, 5);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  a4.n128_u32[0] = *(result + 16);
  a4.n128_u32[1] = *(result + 4);
  a4.n128_u32[2] = *(result + 24);
  a2[5] = a4;
  if (a3 <= 6)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 6, 6);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  a4.n128_u64[0] = *(result + 16);
  a4.n128_u32[2] = *(result + 24);
  a2[6] = a4;
  if (a3 != 7)
  {
    a4.n128_u32[0] = *result;
    a4.n128_u32[1] = *(result + 20);
    a4.n128_u32[2] = *(result + 24);
    a2[7] = a4;
    return result;
  }

LABEL_17:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 7, 7);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 72 * v6;
      v11 = *(v10 + 8);
      result = v10 + 8;
      if (v11 == *a2 && *(result + 8) == a2[1])
      {
        result = *(result + 16);
        if (result == a2[2])
        {
          break;
        }
      }

      v6 = *(v8 + 72 * v6) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

uint64_t re::Hash<re::ShadowPair>::operator()(uint64_t a1, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = a2[2] ^ (a2[2] >> 30);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
  return ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (((v7 ^ (v7 >> 31)) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5)) ^ v3;
}

uint64_t re::useDitherFade(re *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::BOOLValue("useDitherFade", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::useDitherFade(void)::kUseDitherFade = v7;
      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[240];
}

uint64_t re::useDepthDither(re *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::BOOLValue("useDepthDither", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::useDepthDither(void)::kUseDepthDither = v7;
      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[104];
}

double re::DrawingManager::DrawingManager(re::DrawingManager *this)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 0x7FFFFFFFLL;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 84) = 0x7FFFFFFFLL;
  *(this + 25) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 208) = 1;
  *(this + 27) = 0;
  *(this + 28) = &str_67;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  for (i = 328; i != 456; i += 32)
  {
    v2 = (this + i);
    *v2 = xmmword_1E30D6840;
    v2[1] = xmmword_1E30D6840;
  }

  do
  {
    v3 = (this + i);
    *v3 = xmmword_1E30D6840;
    v3[1] = xmmword_1E30D6840;
    i += 32;
  }

  while (i != 584);
  result = 0.0;
  *(this + 38) = 0u;
  *(this + 156) = 1;
  *(this + 632) = 0u;
  *(this + 87) = 0;
  *(this + 44) = 0u;
  *(this + 180) = 0;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 772) = 0u;
  *(this + 197) = 1;
  *(this + 109) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 222) = 2;
  *(this + 112) = 0;
  *(this + 904) = 0;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 236) = 0;
  *(this + 948) = 0x7FFFFFFFLL;
  *(this + 120) = 1;
  *(this + 127) = 0;
  *(this + 256) = 0;
  *(this + 1000) = 0u;
  *(this + 968) = 0u;
  *(this + 262) = 0;
  *(this + 1032) = 0u;
  *(this + 66) = xmmword_1E30A1A10;
  *(this + 67) = xmmword_1E30A1A10;
  *(this + 68) = xmmword_1E30A1A10;
  *(this + 69) = xmmword_1E30A1A10;
  *(this + 177) = 0;
  *(this + 352) = 0;
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  *(this + 85) = 0u;
  *(this + 84) = 0u;
  *(this + 83) = 0u;
  *(this + 82) = 0u;
  *(this + 81) = 0u;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 78) = 0u;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 75) = 0u;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 72) = 0u;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 1564) = 0u;
  *(this + 97) = 0u;
  *(this + 96) = 0u;
  *(this + 95) = 0u;
  *(this + 94) = 0u;
  *(this + 93) = 0u;
  *(this + 198) = 0;
  *(this + 1592) = 0u;
  *(this + 1608) = 0;
  *(this + 436) = 0;
  *(this + 223) = 0;
  *(this + 219) = 0;
  *(this + 110) = 0u;
  *(this + 444) = 0;
  *(this + 202) = 0;
  *(this + 1624) = 0u;
  *(this + 410) = 0;
  *(this + 424) = 0;
  *(this + 105) = 0u;
  *(this + 104) = 0u;
  *(this + 103) = 0u;
  *(this + 430) = 0;
  *(this + 1704) = 0u;
  *(this + 224) = 1114636288;
  *(this + 1800) = 1;
  *(this + 230) = 0;
  *(this + 228) = 0;
  *(this + 458) = 0;
  *(this + 113) = 0u;
  *(this + 462) = 0;
  return result;
}

void re::DrawingManager::~DrawingManager(re::DrawingManager *this)
{
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 1808);
  v2 = *(this + 219);
  if (v2)
  {
    v3 = *(this + 223);
    if (v3)
    {
      v4 = *(this + 221);
      if (v4)
      {
        v5 = 8 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          ++v3;
          v5 -= 8;
        }

        while (v5);
        v2 = *(this + 219);
        v3 = *(this + 223);
      }

      (*(*v2 + 40))(v2, v3);
    }

    *(this + 223) = 0;
    *(this + 220) = 0;
    *(this + 221) = 0;
    *(this + 219) = 0;
    ++*(this + 444);
  }

  *(this + 214) = 0;
  ++*(this + 430);
  v6 = *(this + 209);
  if (v6)
  {
    v7 = *(this + 213);
    if (v7)
    {
      v8 = *(this + 211);
      if (v8)
      {
        v9 = 32 * v8;
        do
        {
          v10 = *v7;
          v7 += 4;

          v9 -= 32;
        }

        while (v9);
        v6 = *(this + 209);
        v7 = *(this + 213);
      }

      (*(*v6 + 40))(v6, v7);
    }

    *(this + 213) = 0;
    *(this + 210) = 0;
    *(this + 211) = 0;
    *(this + 209) = 0;
    ++*(this + 424);
  }

  v11 = *(this + 173);
  if (v11)
  {
    v12 = *(this + 177);
    if (v12)
    {
      v13 = *(this + 175);
      if (v13)
      {
        v14 = 200 * v13;
        v15 = v12 + 40;
        do
        {
          re::SampleBufferObjectPool::~SampleBufferObjectPool((v15 + 40));
          re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(v15);

          v15 += 200;
          v14 -= 200;
        }

        while (v14);
        v11 = *(this + 173);
        v12 = *(this + 177);
      }

      (*(*v11 + 40))(v11, v12);
    }

    *(this + 177) = 0;
    *(this + 174) = 0;
    *(this + 175) = 0;
    *(this + 173) = 0;
    ++*(this + 352);
  }

  for (i = 1376; i != 1120; i -= 8)
  {
  }

  re::DynamicArray<unsigned long>::deinit(this + 1000);
  re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 114);

  v17 = *(this + 107);
  if (v17)
  {

    *(this + 107) = 0;
  }

  v18 = *(this + 105);
  if (v18)
  {

    *(this + 105) = 0;
  }

  v19 = *(this + 100);
  if (v19)
  {

    *(this + 100) = 0;
  }

  v20 = *(this + 97);
  if (v20)
  {

    *(this + 97) = 0;
  }

  v21 = *(this + 96);
  if (v21)
  {

    *(this + 96) = 0;
  }

  v22 = *(this + 95);
  if (v22)
  {

    *(this + 95) = 0;
  }

  v23 = *(this + 94);
  if (v23)
  {

    *(this + 94) = 0;
  }

  v24 = *(this + 93);
  if (v24)
  {

    *(this + 93) = 0;
  }

  v25 = *(this + 92);
  if (v25)
  {

    *(this + 92) = 0;
  }

  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 696);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 608);

  v26 = *(this + 29);
  if (v26)
  {

    *(this + 29) = 0;
  }

  re::StringID::destroyString((this + 216));
  v27 = *(this + 21);
  if (v27)
  {
    v28 = *(this + 25);
    if (v28)
    {
      v29 = *(this + 23);
      if (v29)
      {
        v30 = 8 * v29;
        do
        {
          if (*v28)
          {

            *v28 = 0;
          }

          ++v28;
          v30 -= 8;
        }

        while (v30);
        v27 = *(this + 21);
        v28 = *(this + 25);
      }

      (*(*v27 + 40))(v27, v28);
    }

    *(this + 25) = 0;
    *(this + 22) = 0;
    *(this + 23) = 0;
    *(this + 21) = 0;
    ++*(this + 48);
  }

  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 104);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(this + 48);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this);
}

uint64_t re::DrawingManager::init(re::DrawingManager *this, re::RenderManager *a2, re::ProfilerManager *a3, re::ColorManager *a4, void **a5, int a6)
{
  v121 = *MEMORY[0x1E69E9840];
  *(this + 32) = a2;
  *(this + 33) = a4;
  v12 = [objc_msgSend(MEMORY[0x1E6974018] alloc)];
  v13 = &_MergedGlobals_455;
  if ((atomic_load_explicit(&qword_1EE1B9A78, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_102;
  }

  while (1)
  {
    [v12 setDisableCrossQueueHazardTracking_];
    v14 = [v12 setMaxCommandBufferCount_];
    if ((atomic_load_explicit(v13 + 16, memory_order_acquire) & 1) == 0)
    {
      v14 = __cxa_guard_acquire(&qword_1EE1B9A80);
      if (v14)
      {
        re::Defaults::BOOLValue("enableSynchronousCommandQueue", v104, &buf);
        v105 = a2 + 324;
        if (buf)
        {
          v105 = &buf + 1;
        }

        byte_1EE1B9A71 = *v105;
        __cxa_guard_release(&qword_1EE1B9A80);
      }
    }

    v15 = *re::graphicsLogObjects(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1EE1B9A71)
      {
        v16 = "enabled";
      }

      else
      {
        v16 = "disabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "com.apple.re.enableSynchronousCommandQueue is %s", &buf, 0xCu);
    }

    v17 = [v12 setCommitSynchronously_];
    if (*(a2 + 318) == 1)
    {
      v18 = re::mtl::commandQueueSupportsDisableAsyncCompletionDispatch(v17);
      if (v18)
      {
        if (*(a2 + 314))
        {
          v19 = *re::graphicsLogObjects(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            v20 = "disableMetalAsyncCompletionDispatch is not supported with enableRenderThread";
LABEL_15:
            _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, v20, &buf, 2u);
          }
        }

        else
        {
          *(this + 786) = 1;
          [v12 setDisableAsyncCompletionDispatch_];
          v21 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
          v22 = dispatch_queue_attr_make_with_autorelease_frequency(v21, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v23 = dispatch_queue_create("RE Async Command Buffer Callback Queue", v22);
          v24 = [objc_msgSend(MEMORY[0x1E6974178] alloc)];
          v25 = *(this + 107);
          if (v25 == v24)
          {
          }

          else
          {
            if (v25)
            {
            }

            *(this + 107) = v24;
          }

          dispatch_release(v23);
        }
      }

      else
      {
        v19 = *re::graphicsLogObjects(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          v20 = "DisableAsyncCompletionDispatch is not supported";
          goto LABEL_15;
        }
      }
    }

    v13 = &dword_1EE1B9A74;
    if ((atomic_load_explicit(&qword_1EE1B9A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9A88))
    {
      re::Defaults::intValue("backboarddGPUPriorityOverride", v106, &buf);
      if (buf)
      {
        v107 = DWORD1(buf);
      }

      else
      {
        v107 = 1;
      }

      dword_1EE1B9A74 = v107;
      __cxa_guard_release(&qword_1EE1B9A88);
    }

    re::mtl::Device::makeCommandQueue(a2 + 26, v12, &buf);
    v26 = (this + 280);
    if ((this + 280) != &buf)
    {
      v27 = buf;
      *&buf = 0;
      v28 = *v26;
      *v26 = v27;
    }

    if ((atomic_load_explicit(&qword_1EE1B9AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9AB0))
    {
      v108 = re::ns::String::String(&qword_1EE1B9AA8, "RenderManagerQueue");
      __cxa_guard_release(v108 + 1);
    }

    v29 = qword_1EE1B9AA8;
    [*v26 setLabel:v29];

    v30 = [*v26 setGPUPriority:dword_1EE1B9A74];
    if (!*v26)
    {
      re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Failed to make command queue.", "m_commandQueue.isValid()", "init", 196);
      _os_crash();
      __break(1u);
LABEL_98:
      re::internal::assertLog(4, v37, "assertion failure: '%s' (%s:line %i) Failed to make command queue.", "m_caCommandQueue.isValid()", "init", 206);
      _os_crash();
      __break(1u);
LABEL_99:
      re::internal::assertLog(4, v59, "assertion failure: '%s' (%s:line %i) PerFrameAllocatorGPU manager is not null before init.", "m_perFrameAllocatorGPUManager == nullptr", "init", 276);
      _os_crash();
      __break(1u);
      goto LABEL_100;
    }

    if (re::mtl::commandQueueSupportsDisableAsyncCompletionDispatch(v30))
    {
      [v12 setDisableAsyncCompletionDispatch_];
    }

    re::mtl::Device::makeCommandQueue(a2 + 26, v12, &buf);
    v32 = (this + 288);
    if ((this + 288) != &buf)
    {
      v33 = buf;
      *&buf = 0;
      v34 = *v32;
      *v32 = v33;
    }

    if ((atomic_load_explicit(&qword_1EE1B9AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9AC0))
    {
      v109 = re::ns::String::String(&qword_1EE1B9AB8, "CA Command Queue");
      __cxa_guard_release(v109 + 1);
    }

    v35 = qword_1EE1B9AB8;
    [*v32 setLabel:v35];

    v36 = [*v32 setGPUPriority:dword_1EE1B9A74];
    if (!*v32)
    {
      goto LABEL_98;
    }

    v38 = re::globalAllocators(v36);
    v13 = *(a2 + 33);
    if (v13)
    {
      if (v13 >> 61 || (8 * v13) >= 0xFFFFFFFFFFFFFFF0)
      {
        goto LABEL_101;
      }

      v40 = (*(*v38[2] + 32))(v38[2], (8 * v13 + 16) | 7, 0);
      v41 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v41 - 2) = v13;
      *(v41 - 1) = v40;
      bzero(v41, 8 * v13);
      v42 = *(a2 + 33);
      *(this + 102) = v41;
      if (v42)
      {
        v43 = 0;
        v44 = 0;
        do
        {
          *&buf = [*(a2 + 26) newFence];
          NS::SharedPtr<MTL::Texture>::operator=((*(this + 102) + v43), &buf);
          if (buf)
          {
          }

          ++v44;
          v43 += 8;
        }

        while (*(a2 + 33) > v44);
      }
    }

    else
    {
      *(this + 102) = 0;
    }

    v13 = &selRef_iosurface;
    *&buf = [*(a2 + 26) newEvent];
    NS::SharedPtr<MTL::Texture>::operator=(this + 29, &buf);
    v45 = buf;
    if (buf)
    {
    }

    *(this + 248) = 1;
    v46 = *(*(this + 32) + 144);
    v47 = re::globalAllocators(v45);
    v48 = re::PerFrameAllocatorManager::addOwner(v47[6], this);
    *(v46 + 40) = v48;
    *(v46 + 48) = 0;
    v49 = *(*(this + 32) + 144);
    v119.i64[0] = re::globalAllocators(v48)[2];
    v119.i64[1] = &buf;
    *&buf = &unk_1F5D06C08;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v49 + 208, &buf);
    v50 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&buf);
    v51 = *(*(this + 32) + 144);
    v119.i64[0] = re::globalAllocators(v50)[2];
    v119.i64[1] = &buf;
    *&buf = &unk_1F5D06C60;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(v51 + 128, &buf);
    v52 = re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(&buf);
    v53 = *(*(this + 32) + 144);
    v119.i64[0] = re::globalAllocators(v52)[2];
    v119.i64[1] = &buf;
    *&buf = &unk_1F5D06CC8;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(v53 + 168, &buf);
    v54 = re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(&buf);
    v55 = *(*(this + 32) + 144);
    v119.i64[0] = re::globalAllocators(v54)[2];
    v119.i64[1] = &buf;
    *&buf = &unk_1F5D06D20;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v55 + 248, &buf);
    v56 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&buf);
    v57 = *(*(this + 32) + 144);
    v119.i64[0] = re::globalAllocators(v56)[2];
    v119.i64[1] = &buf;
    *&buf = &unk_1F5D06D78;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v57 + 288, &buf);
    v58 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&buf);
    if (*(this + 40))
    {
      goto LABEL_99;
    }

    v60 = re::globalAllocators(v58);
    v61 = (*(*v60[2] + 32))(v60[2], 5312, 8);
    *v61 = 0;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0;
    *(v61 + 16) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = 0;
    *(v61 + 56) = 0;
    *(v61 + 64) = 0;
    *(v61 + 68) = 0x1FFFFFFFFLL;
    *(v61 + 80) = 0;
    *(v61 + 96) = 0;
    *(v61 + 104) = 0;
    *(v61 + 88) = 0;
    *(v61 + 112) = 0;
    *(v61 + 5304) = 0;
    bzero((v61 + 120), 0x143CuLL);
    *(this + 40) = v61;
    re::PerFrameAllocatorGPUManager::init(v61, *(this + 32));
    if (!*(this + 37))
    {
      break;
    }

LABEL_100:
    re::internal::assertLog(4, v63, "assertion failure: '%s' (%s:line %i) Render Graph manager is not null before init.", "m_renderGraphManager == nullptr", "init", 280);
    _os_crash();
    __break(1u);
LABEL_101:
    re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 8, v13);
    _os_crash();
    __break(1u);
LABEL_102:
    if (__cxa_guard_acquire(&qword_1EE1B9A78))
    {
      re::Defaults::BOOLValue("disableCrossQueueHazardTracking", v102, &buf);
      if (buf)
      {
        v103 = BYTE1(buf);
      }

      else
      {
        v103 = 0;
      }

      *v13 = v103;
      __cxa_guard_release(v13 + 1);
    }
  }

  v64 = re::globalAllocators(v62);
  v65 = (*(*v64[2] + 32))(v64[2], 704, 8);
  v66 = re::RenderGraphManager::RenderGraphManager(v65);
  *(this + 37) = v66;
  re::RenderGraphManager::init(v66, *(this + 32));
  re::Defaults::BOOLValue("disableRenderGraphCaching", v67, &v111);
  v69 = a2 + 316;
  if (v111)
  {
    v69 = &v112;
  }

  if (*v69 == 1)
  {
    v70 = *(this + 37);
    *(v70 + 380) = 1;
    *(v70 + 376) = 0;
    *(v70 + 352) = 0;
    *(v70 + 360) = 0;
    *(v70 + 368) = 0;
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    *(v70 + 352) = rep;
    *(v70 + 368) = 1;
    *(v70 + 672) = 0;
  }

  v71 = re::globalAllocators(rep);
  v72 = (*(*v71[2] + 32))(v71[2], 912, 16);
  bzero(v72, 0x390uLL);
  *v72 = 1;
  *(v72 + 25) = 0;
  *(v72 + 26) = 0;
  *(v72 + 24) = 0;
  *(v72 + 54) = 0;
  v72[304] = 0;
  *(v72 + 47) = 0;
  *(v72 + 44) = 0;
  *(v72 + 45) = 0;
  *(v72 + 43) = 0;
  *(v72 + 92) = 0;
  *(v72 + 60) = 0;
  *(v72 + 57) = 0;
  *(v72 + 58) = 0;
  *(v72 + 56) = 0;
  *(v72 + 118) = 0;
  *(v72 + 70) = 0;
  *(v72 + 72) = 0;
  *(v72 + 71) = 0;
  *(v72 + 146) = 0;
  v72[809] = 0;
  *(v72 + 8) = 0u;
  *(v72 + 24) = 0u;
  *(v72 + 40) = 0u;
  *(v72 + 56) = 0u;
  *(v72 + 72) = 0u;
  *(v72 + 88) = 0u;
  *(v72 + 104) = 0u;
  *(v72 + 120) = 0u;
  *(v72 + 136) = 0u;
  *(v72 + 148) = 0u;
  *(v72 + 21) = 0;
  *(v72 + 22) = 0;
  v72[184] = 0;
  *(v72 + 37) = 0u;
  *(v72 + 38) = 0u;
  *(v72 + 156) = 0;
  *(v72 + 632) = 0u;
  *(v72 + 648) = 0u;
  *(v72 + 664) = 0u;
  *(v72 + 680) = 0u;
  *(v72 + 696) = 0u;
  *(v72 + 712) = 0u;
  *(v72 + 728) = 0u;
  *(v72 + 744) = 0u;
  *(v72 + 753) = 0u;
  *(v72 + 203) = 1065353216;
  *(v72 + 102) = 0x3F8000003F000000;
  *(v72 + 828) = 0x412000003DCCCCCDLL;
  v73 = MEMORY[0x1E69E9B10];
  v74 = *(MEMORY[0x1E69E9B10] + 32);
  *(v72 + 54) = *(MEMORY[0x1E69E9B10] + 16);
  *(v72 + 55) = v74;
  *(v72 + 53) = *v73;
  *(this + 38) = v72;
  v75 = re::ProbeManager::init(v72, *(this + 32));
  *(this + 73) = *(this + 32);
  *(this + 74) = this;
  *(this + 75) = a4;
  *(this + 208) = a3;
  if (a3)
  {
    v75 = re::ProfilerManager::getProcessor<re::FrameProfiler,void>(a3);
    *(this + 206) = v75;
  }

  v76 = *(a2 + 314);
  *(this + 785) = v76;
  *(this + 784) = v76;
  if (v76 == 1)
  {
    v77 = re::globalAllocators(v75);
    v78 = (*(*v77[2] + 32))(v77[2], 440, 8);
    *(v78 + 24) = 0;
    *(v78 + 40) = 0;
    *(v78 + 48) = 0;
    *(v78 + 32) = 0;
    *(v78 + 56) = 0;
    *(v78 + 104) = 0;
    *(v78 + 112) = 0;
    *(v78 + 120) = 0;
    *(v78 + 152) = 0;
    *(v78 + 64) = 0u;
    *(v78 + 80) = 0u;
    *(v78 + 96) = 0;
    *v78 = 0;
    *(v78 + 8) = 0;
    *(v78 + 15) = 0;
    *(v78 + 208) = 850045863;
    *(v78 + 216) = 0u;
    *(v78 + 232) = 0u;
    *(v78 + 248) = 0u;
    *(v78 + 264) = 0;
    *(v78 + 272) = 1018212795;
    *(v78 + 305) = 0u;
    *(v78 + 280) = 0u;
    *(v78 + 296) = 0u;
    *(v78 + 328) = 850045863;
    *(v78 + 352) = 0u;
    *(v78 + 368) = 0u;
    *(v78 + 336) = 0u;
    *(v78 + 384) = 0;
    *(v78 + 392) = 1018212795;
    *(v78 + 432) = 0;
    *(v78 + 400) = 0u;
    *(v78 + 416) = 0u;
    *(this + 39) = v78;
    v75 = re::RenderThread::init(v78, *(this + 32));
  }

  v79 = re::globalAllocators(v75);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::init(this + 48, v79[2], 3);
  if (*(this + 786) == 1)
  {
    *&buf = [*(*(this + 32) + 208) newSharedEvent];
    NS::SharedPtr<MTL::Texture>::operator=(this + 100, &buf);
    if (buf)
    {
    }
  }

  else
  {
    v80 = dispatch_semaphore_create(*(a2 + 33));

    v81 = *(this + 99);
    *(this + 99) = v80;
  }

  *&buf = [*(*(this + 32) + 208) newEvent];
  NS::SharedPtr<MTL::Texture>::operator=(this + 105, &buf);
  if (buf)
  {
  }

  if (a6)
  {
    re::TextureManager::stockTextureForType(*(*(this + 32) + 56), 2, &buf);
    NS::SharedPtr<MTL::Buffer>::operator=(this + 92, &buf);
    NS::SharedPtr<MTL::Buffer>::operator=(this + 96, &buf);
    NS::SharedPtr<MTL::Buffer>::operator=(this + 93, &buf);
    v116 = *(*(*(this + 32) + 24) + 760);
    NS::SharedPtr<MTL::Texture>::operator=(this + 94, &v116);
    if (v116)
    {
    }

    if (buf)
    {
    }

    re::TextureManager::stockTextureForType(*(*(this + 32) + 56), 3, &buf);
    NS::SharedPtr<MTL::Texture>::operator=(this + 95, &buf);
    if (buf)
    {
    }
  }

  else
  {
    v116 = *(*(this + 32) + 208);
    v82 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v82 setTextureType_];
    [v82 setWidth_];
    [v82 setHeight_];
    [v82 setPixelFormat_];
    [v82 setMipmapLevelCount_];
    [v82 setSampleCount_];
    [v82 setUsage_];
    [v82 setStorageMode_];
    re::mtl::Device::makeTexture(v82, &v116, &buf);
    v83 = (this + 736);
    NS::SharedPtr<MTL::Texture>::operator=(this + 92, &buf);
    if (buf)
    {
    }

    [*v83 setLabel_];
    v84 = *v83;
    buf = 0uLL;
    v118 = 0;
    v119 = vdupq_n_s64(0x80uLL);
    v120 = 1;
    [v84 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:&re::brdfMapData bytesPerRow:1024 bytesPerImage:0x20000];
    if (v82)
    {
    }

    v116 = *(*(this + 32) + 208);
    v85 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v85 setTextureType_];
    [v85 setWidth_];
    [v85 setHeight_];
    [v85 setPixelFormat_];
    [v85 setMipmapLevelCount_];
    [v85 setSampleCount_];
    [v85 setUsage_];
    [v85 setStorageMode_];
    re::mtl::Device::makeTexture(v85, &v116, &buf);
    v86 = (this + 768);
    NS::SharedPtr<MTL::Texture>::operator=(this + 96, &buf);
    if (buf)
    {
    }

    [*v86 setLabel_];
    v87 = *v86;
    buf = 0uLL;
    v118 = 0;
    v119 = vdupq_n_s64(0x80uLL);
    v120 = 1;
    [v87 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:&re::clothBrdfMapData bytesPerRow:1024 bytesPerImage:0x20000];
    if (v85)
    {
    }

    v116 = *(*(this + 32) + 208);
    v88 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v88 setTextureType_];
    [v88 setWidth_];
    [v88 setHeight_];
    [v88 setPixelFormat_];
    [v88 setMipmapLevelCount_];
    [v88 setSampleCount_];
    [v88 setUsage_];
    [v88 setStorageMode_];
    re::mtl::Device::makeTexture(v88, &v116, &buf);
    NS::SharedPtr<MTL::Texture>::operator=(this + 93, &buf);
    if (buf)
    {
    }

    [*(this + 93) setLabel_];
    *&buf = [v116 newBufferWithLength:64 options:0];
    v89 = (this + 752);
    NS::SharedPtr<MTL::Texture>::operator=(this + 94, &buf);
    if (buf)
    {
    }

    [*v89 setLabel_];
    v90 = *(this + 93);
    buf = 0uLL;
    v118 = 0;
    v119 = vdupq_n_s64(0x20uLL);
    v120 = 1;
    [v90 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:&re::multiscatterBrdfMapData bytesPerRow:64 bytesPerImage:2048];
    v91 = [*v89 contents];
    *v91 = re::multiscatterBrdfAvgTableData;
    v91[1] = unk_1E30D7437;
    v91[2] = xmmword_1E30D7447;
    v91[3] = unk_1E30D7457;
    if (v88)
    {
    }

    v92 = *(*(this + 32) + 208);
    v115 = 1;
    v116 = v92;
    v113 = 0;
    v114 = 115;
    *&buf = 2;
    TextureCompressionType = re::mtl::getTextureCompressionType(&v116, &v113, &v114, &v115, &buf);
    v94 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    if (([v94 respondsToSelector_] & 1) != 0 || objc_msgSend(v94, sel_methodSignatureForSelector_, sel_setCompressionType_))
    {
      [v94 setCompressionType_];
    }

    [v94 setTextureType_];
    [v94 setWidth_];
    [v94 setHeight_];
    [v94 setArrayLength_];
    [v94 setPixelFormat_];
    [v94 setSampleCount_];
    [v94 setMipmapLevelCount_];
    [v94 setUsage_];
    [v94 setStorageMode_];
    re::mtl::Device::makeTexture(v94, &v116, &buf);
    v95 = (this + 760);
    NS::SharedPtr<MTL::Texture>::operator=(this + 95, &buf);
    if (buf)
    {
    }

    [*v95 setLabel_];
    v96 = *v95;
    buf = 0uLL;
    v118 = 0;
    v110 = vdupq_n_s64(0x40uLL);
    v119 = v110;
    v120 = 1;
    [v96 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:&re::gAreaLightTable1 bytesPerRow:512 bytesPerImage:0x8000];
    v97 = *v95;
    buf = 0uLL;
    v118 = 0;
    v119 = v110;
    v120 = 1;
    [v97 replaceRegion:&buf mipmapLevel:0 slice:1 withBytes:&re::gAreaLightTable2 bytesPerRow:512 bytesPerImage:0x8000];
    if (v94)
    {
    }
  }

  re::TextureManager::stockTextureForType(*(*(this + 32) + 56), 3, &buf);
  NS::SharedPtr<MTL::Texture>::operator=(this + 97, &buf);
  if (buf)
  {
  }

  re::DrawingManager::initShaderSources(this);
  re::MeshManager::prewarmVertexFetchFunctions(a5);
  if (*(a2 + 317) == 1)
  {
    v99 = re::globalAllocators(v98)[2];
    *&buf = &unk_1F5D06DD0;
    *(&buf + 1) = this;
    v119.i64[0] = v99;
    v119.i64[1] = &buf;
    LOWORD(v116) = *(this + 120);
    re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::add(this + 912, &v116, &buf);
    ++*(this + 120);
    re::DrawingManager::activatePerfSampling(this);
    re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(&buf);
  }

  v100 = *(this + 248);
  if (v12)
  {
  }

  return v100;
}

uint64_t re::DrawingManager::initShaderSources(re::DrawingManager *this)
{
  re::MaterialManager::resizeScenes(*(*(this + 32) + 24), 1uLL);
  v2 = *(this + 32);
  v3 = *(*(v2 + 24) + 656);
  v18 = 0x59C04294BD50;
  re::TextureTable::setTexture(v3, &v18, (*(v2 + 56) + 24));
  v17 = 0x27635BB0799E8825;
  v18 = 0;
  re::TextureTable::setTexture(v3, &v17, (*(*(this + 32) + 56) + 24));
  v16 = 0x268DB2F30BB36DB1;
  v17 = 0;
  re::TextureTable::setTexture(v3, &v16, this + 97);
  v16 = 0;
  v4 = *(*(*(this + 32) + 24) + 640);
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity((v4 + 72), 3uLL);
  ++*(v4 + 96);
  v15 = 0x15085BDF2ALL;
  re::TextureTable::setTexture(v4, &v15, this + 92);
  v15 = 0;
  v14 = 0x242DE8CC841767B0;
  re::TextureTable::setTexture(v4, &v14, this + 96);
  v13 = 0x11BEEAE3F6511AA0;
  v14 = 0;
  re::TextureTable::setTexture(v4, &v13, this + 93);
  v6 = *(*(*(this + 32) + 24) + 712);
  v12 = 0x2803BD43311CF958;
  v13 = 0;
  v8[0] = *(this + 94);
  v9 = 0;
  v10 = 0;
  v11 = [*(this + 94) length];
  result = re::BufferTable::setBuffer(v6, &v12, v8);
  if (v9 != -1)
  {
    return (off_1F5D06E28[v9])(&v19, v8);
  }

  return result;
}

void re::DrawingManager::activatePerfSampling(re::DrawingManager *this)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 208);
  if (v2 && ((re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(v2) & 1) != 0 || (v3 = *(this + 208)) != 0 && (re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v3) & 1) != 0) || (v4 = *(this + 206)) != 0 && (*(v4 + 177) & 0x10) != 0)
  {
    v5 = re::RenderStat::activatePerfSampling(this + 864, this + 35, 1);
    v6 = re::globalAllocators(v5)[2];
    v10[0] = &unk_1F5D07058;
    v10[1] = this;
    v10[3] = v6;
    v10[4] = v10;
    v7 = re::RenderStat::addMTLCounterHandler(this + 864, v10, 1u);
    v8 = re::globalAllocators(v7)[2];
    v9[0] = &unk_1F5D070C0;
    v9[1] = this;
    v9[3] = v8;
    v9[4] = v9;
    re::RenderStat::addMTLCounterHandler(this + 864, v9, 2u);
    re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v9);
    re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v10);
  }

  else
  {
    objc_storeStrong(this + 112, *(this + 35));
    atomic_store(1u, this + 904);
    if (*(this + 222))
    {
      if (*(this + 904))
      {
        re::RenderStat::deinitializeCurrentMode((this + 864));
        *(this + 222) = 0;
        ++*(this + 121);
      }

      else
      {
        *(this + 222) = 0;
      }
    }
  }
}

void re::DrawingManager::prepareForDeinit(re::DrawingManager *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    re::RenderThread::join(v2);
  }

  if (*(this + 786) == 1)
  {
    [*(this + 35) dispatchAvailableCompletionNotifications];
  }

  if (!atomic_load(this + 208))
  {
    goto LABEL_13;
  }

  v4 = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v5 = v4 + 1;
    if (atomic_load(this + 208))
    {
      v7 = v4 >= 0x13;
    }

    else
    {
      v7 = 1;
    }

    ++v4;
  }

  while (!v7);
  if (v5 != 20)
  {
LABEL_13:
    if (*(this + 786))
    {
      [*(this + 100) waitUntilSignaledValue:*(this + 101) + *(*(this + 32) + 264) - 1 timeoutMS:0xFFFFFFFFLL];

      *(this + 50) = 0u;
    }

    else
    {
      if (*(*(this + 32) + 264))
      {
        v8 = 1;
        do
        {
          dispatch_semaphore_wait(*(this + 99), 0xFFFFFFFFFFFFFFFFLL);
          v9 = *(*(this + 32) + 264);
          v10 = v9 > v8++;
        }

        while (v10);
        if (v9)
        {
          v11 = 1;
          do
          {
            dispatch_semaphore_signal(*(this + 99));
            v10 = *(*(this + 32) + 264) > v11++;
          }

          while (v10);
        }
      }

      v12 = *(this + 99);
      *(this + 99) = 0;
    }
  }

  *(this + 787) = 1;
}

double re::DrawingManager::deinit(re::DrawingManager *this)
{
  re::DrawingManager::cleanupEcbContexts(this);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 1808);
  if (*(this + 76))
  {
    v2 = *(this + 77);
    if (v2)
    {
      if (*(this + 624))
      {
        v3 = (this + 632);
      }

      else
      {
        v3 = *(this + 80);
      }

      v4 = 8 * v2;
      do
      {
        v5 = *v3++;
        (*(*v5 + 2))(v5);
        objc_destroyWeak(v5 + 1);
        v5[1] = 0;
        v4 -= 8;
      }

      while (v4);
    }
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 608);
  v6 = *(this + 39);
  if (v6)
  {
    re::RenderThread::deinit(v6);
    re::internal::destroyPersistent<re::RenderThread>(*(this + 39));
    *(this + 39) = 0;
  }

  *(this + 29) = 0;
  *(this + 248) = 0;
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::clear(this + 48);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(this + 48);
  re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(*(this + 40), *(*(*(this + 32) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(this + 32) + 144) + 16) << 60));
  v7 = *(this + 37);
  if (v7)
  {
    v8 = re::RenderGraphManager::deinit(v7);
    v9 = *(this + 37);
    if (v9)
    {
      v10 = re::globalAllocators(v8)[2];
      re::RenderGraphManager::~RenderGraphManager(v9);
      (*(*v10 + 40))(v10, v9);
    }

    *(this + 37) = 0;
  }

  v11 = *(this + 38);
  if (v11)
  {
    *(v11 + 8) = 0;

    *(v11 + 80) = 0;
    *(v11 + 128) = 0;
    v13 = *(this + 38);
    if (v13)
    {
      v14 = re::globalAllocators(v12)[2];
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v13 + 704);
      v15.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v13 + 640);
      v16 = *(v13 + 600);
      if (v16)
      {
        v17 = *(v13 + 632);
        if (v17)
        {
          v18 = *(v13 + 616);
          if (v18)
          {
            v19 = 80 * v18;
            v20 = (v17 + 8);
            do
            {
              if (*v20)
              {

                *v20 = 0;
              }

              v20 += 10;
              v19 -= 80;
            }

            while (v19);
            v16 = *(v13 + 600);
            v17 = *(v13 + 632);
          }

          (*(*v16 + 40))(v16, v17, v15);
        }

        *(v13 + 632) = 0;
        *(v13 + 608) = 0;
        *(v13 + 616) = 0;
        *(v13 + 600) = 0;
        ++*(v13 + 624);
      }

      v21 = *(v13 + 560);
      if (v21)
      {
        v22 = *(v13 + 592);
        if (v22)
        {
          v23 = *(v13 + 576);
          if (v23)
          {
            v24 = 24 * v23;
            v25 = (v22 + 8);
            do
            {
              if (*v25)
              {

                *v25 = 0;
              }

              v25 += 3;
              v24 -= 24;
            }

            while (v24);
            v21 = *(v13 + 560);
            v22 = *(v13 + 592);
          }

          (*(*v21 + 40))(v21, v22, v15);
        }

        *(v13 + 592) = 0;
        *(v13 + 568) = 0;
        *(v13 + 576) = 0;
        *(v13 + 560) = 0;
        ++*(v13 + 584);
      }

      if (*(v13 + 488) == 1)
      {
        re::FixedArray<CoreIKTransform>::deinit((v13 + 536));
        re::FixedArray<CoreIKTransform>::deinit((v13 + 512));
      }

      re::DynamicArray<unsigned long>::deinit(v13 + 448);
      re::DynamicArray<unsigned long>::deinit(v13 + 344);
      if (*(v13 + 232) == 1)
      {
        std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v13 + 256);
        v26 = *(v13 + 240);
        if (v26)
        {

          *(v13 + 240) = 0;
        }
      }

      v27 = *(v13 + 192);
      if (v27)
      {
        v28 = *(v13 + 224);
        if (v28)
        {
          v29 = *(v13 + 208);
          if (v29)
          {
            v30 = v29 << 6;
            v31 = v28 + 16;
            do
            {
              std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v31);
              v32 = *(v31 - 16);
              if (v32)
              {

                *(v31 - 16) = 0;
              }

              v31 += 64;
              v30 -= 64;
            }

            while (v30);
            v27 = *(v13 + 192);
            v28 = *(v13 + 224);
          }

          (*(*v27 + 40))(v27, v28);
        }

        *(v13 + 224) = 0;
        *(v13 + 200) = 0;
        *(v13 + 208) = 0;
        *(v13 + 192) = 0;
        ++*(v13 + 216);
      }

      v33 = *(v13 + 136);
      if (v33)
      {
        if (*(v13 + 168))
        {
          (*(*v33 + 40))(v33);
        }

        *(v13 + 168) = 0;
        *(v13 + 144) = 0;
        *(v13 + 152) = 0;
        *(v13 + 136) = 0;
        ++*(v13 + 160);
      }

      v34 = *(v13 + 128);
      if (v34)
      {

        *(v13 + 128) = 0;
      }

      v35 = *(v13 + 120);
      if (v35)
      {

        *(v13 + 120) = 0;
      }

      v36 = *(v13 + 112);
      if (v36)
      {

        *(v13 + 112) = 0;
      }

      v37 = *(v13 + 104);
      if (v37)
      {

        *(v13 + 104) = 0;
      }

      v38 = *(v13 + 88);
      if (v38)
      {

        *(v13 + 88) = 0;
      }

      v39 = *(v13 + 80);
      if (v39)
      {

        *(v13 + 80) = 0;
      }

      v40 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v13 + 16);
      (*(*v14 + 40))(v14, v13, v40);
    }

    *(this + 38) = 0;
  }

  v41 = *(this + 40);
  if (v41)
  {
    v41 = re::PerFrameAllocatorGPUManager::deinit(v41);
    v42 = *(this + 40);
    if (v42)
    {
      v43 = re::globalAllocators(v41)[2];
      re::DynamicArray<unsigned long>::deinit(v42 + 5272);
      v44 = 5120;
      do
      {
        *(v42 + v44 + 96) = 0;
        v44 -= 40;
      }

      while (v44);
      re::DynamicArray<re::RigComponentConstraint>::deinit(v42 + 88);
      re::DataArray<re::PerFrameAllocatorGPU>::deinit(v42 + 16);
      re::DynamicArray<unsigned long>::deinit(v42 + 16);
      v41 = (*(*v43 + 40))(v43, v42);
    }

    *(this + 40) = 0;
  }

  v45 = re::globalAllocators(v41);
  v46 = *(this + 102);
  if (v46)
  {
    v47 = v45[2];
    v49 = *(v46 - 16);
    v48 = *(v46 - 8);
    if (v49 - 1 >= 0)
    {
      v50 = v46 - 8;
      do
      {
        v51 = *(v50 + 8 * v49);
        if (v51)
        {

          *(v50 + 8 * v49) = 0;
        }

        --v49;
      }

      while (v49 > 0);
    }

    (*(*v47 + 40))(v47, v48);
  }

  *(this + 102) = 0;
  if (*(this + 904))
  {
    re::RenderStat::clearMTLCounterHandlers(this + 108);
    re::RenderStat::deinitializeCurrentMode((this + 864));
    v52 = *(this + 112);
    *(this + 112) = 0;
  }

  v53 = *(*(this + 32) + 144);

  return re::FrameManager::deinitRenderFrameCounting(v53);
}

void re::DrawingManager::cleanupEcbContexts(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 462);
  v2 = *&this[456]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = 0;
    for (i = 0; i < v2; v3 = i)
    {
      v5 = *&this[460]._os_unfair_lock_opaque;
      v6 = *(v5 + 8 * v3);
      v7 = *(v6 + 24);
      if (v7)
      {
        v8 = atomic_load((v6 + 28));
        if (v7 == v8)
        {
          v9 = *(v5 + 8 * v3);
          if (*(v9 + 24))
          {
            v10 = 0;
            v11 = *(*&this[64]._os_unfair_lock_opaque + 144);
            do
            {
              FrameRefCount = re::FrameManager::getFrameRefCount(v11, *(v9 + 32));
              if (FrameRefCount)
              {
                atomic_fetch_add(FrameRefCount + 32, 0xFFFFFFFF);
              }

              v9 = *(v5 + 8 * v3);
              v13 = *(v9 + 40);
              if (*(v9 + 32) != v13)
              {
                v14 = re::FrameManager::getFrameRefCount(v11, v13);
                if (v14)
                {
                  atomic_fetch_add(v14 + 32, 0xFFFFFFFF);
                }

                v9 = *(v5 + 8 * v3);
              }

              ++v10;
            }

            while (v10 < *(v9 + 24));
          }

          v15 = *&this[456]._os_unfair_lock_opaque;
          if (v15 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v2 = v15 - 1;
          if (v15 - 1 > v3)
          {
            v16 = *&this[460]._os_unfair_lock_opaque;
            v17 = v16 + 8 * v15;
            v18 = *(v16 + 8 * v3);
            *(v16 + 8 * v3) = *(v17 - 8);
            *(v17 - 8) = v18;
          }

          v19 = *&this[460]._os_unfair_lock_opaque + 8 * v15;
          v20 = *(v19 - 8);
          if (v20)
          {

            *(v19 - 8) = 0;
            v2 = *&this[456]._os_unfair_lock_opaque - 1;
          }

          *&this[456]._os_unfair_lock_opaque = v2;
          ++this[458]._os_unfair_lock_opaque;
          continue;
        }

        v2 = *&this[456]._os_unfair_lock_opaque;
      }

      ++i;
    }
  }

  os_unfair_lock_unlock(this + 462);
}

re *re::internal::destroyPersistent<re::RenderThread>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    std::condition_variable::~condition_variable((v1 + 392));
    std::mutex::~mutex((v1 + 328));
    std::condition_variable::~condition_variable((v1 + 272));
    std::mutex::~mutex((v1 + 208));
    std::__function::__value_func<void ()(re::EventQueue &)>::~__value_func[abi:nn200100](v1 + 128);
    for (i = 72; i != -8; i -= 40)
    {
      re::DynamicArray<unsigned long>::deinit(v1 + i);
    }

    std::thread::~thread(v1);
    v4 = *(*v2 + 40);

    return v4(v2, v1);
  }

  return result;
}

void re::DrawingManager::deactivatePerfSampling(re::DrawingManager *this)
{
  re::RenderStat::clearMTLCounterHandlers(this + 108);
  re::RenderStat::deinitializeCurrentMode((this + 864));
  v2 = *(this + 112);
  *(this + 112) = 0;
}

void re::DrawingManager::waitForGPUInternal(re::DrawingManager *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 5008, this);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v2);
  if (*(this + 786) == 1)
  {
    [*(this + 100) waitUntilSignaledValue:*(this + 101) timeoutMS:0xFFFFFFFFLL];
  }

  else
  {
    dispatch_semaphore_wait(*(this + 99), 0xFFFFFFFFFFFFFFFFLL);
  }

  re::ProfilerTimeGuard<(re::ProfilerStatistic)12>::end(v2);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
}

uint64_t re::RenderFrameBox::get(pthread_t a1, unint64_t a2)
{
  v2 = a2;
  p_sig = &a1->__sig;
  v23[5] = *MEMORY[0x1E69E9840];
  v4 = *&a1->__opaque[240];
  v5 = *(v4 + 112);
  if (!v5 || (v6 = *(v5 + 312)) == 0)
  {
    if ((~a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  a1 = pthread_self();
  v7 = v2 & 0xFFFFFFFFFFFFFFFLL;
  if (*v6 == a1)
  {
    if (v7 == 0xFFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v21 = &p_sig[2 * (v2 & 7)];
    if (((v21[17] ^ v2) & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      return 0;
    }

    else
    {
      return v21[16];
    }
  }

  if (v7 == 0xFFFFFFFFFFFFFFFLL)
  {
    v4 = p_sig[32];
LABEL_7:
    v2 = *(*(v4 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v4 + 144) + 16) << 60);
  }

LABEL_8:
  v8 = &p_sig[2 * (v2 & 7)];
  if (((v8[1] ^ v2) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return *v8;
  }

  v9 = *(*(p_sig[32] + 144) + 48) & 0xFFFFFFFFFFFFFFFLL | (*(*(p_sig[32] + 144) + 40) << 60);
  v10 = re::globalAllocators(a1);
  v11 = re::PerFrameAllocatorManager::perFrameAllocator(v10[6], v2);
  v12 = re::globalAllocators(v11);
  v13 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v9);
  FrameRefCount = re::FrameManager::getFrameRefCount(*(p_sig[32] + 144), v2 & 0xFFFFFFFFFFFFFFFLL);
  if (FrameRefCount && *(FrameRefCount + 2) != 0xFFFFFFFFFFFFFFFLL)
  {
    v18 = p_sig[2 * (*(FrameRefCount + 2) & 7)];
    *(v18 + 384) = v2;
    *(v18 + 392) = v11;
    *(v18 + 400) = v9;
    *(v18 + 408) = v13;
    re::RenderFrame::prepareForReuse(v18);
  }

  else
  {
    re::globalAllocators(FrameRefCount);
    v15 = (*(*v11 + 32))(v11, 4808, 8);
    v16 = re::RenderFrame::RenderFrame(v15, p_sig[32], p_sig[33], p_sig[34], v2, v11, v9, v13);
    v17 = re::globalAllocators(v16)[2];
    v23[0] = &unk_1F5D07168;
    v23[3] = v17;
    v23[4] = v23;
    v18 = (*(*v11 + 16))(v11, v15, v23);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v23);
    v19 = *(p_sig[32] + 112);
    if (v19)
    {
      v20 = *(v19 + 296);
    }

    else
    {
      v20 = 0;
    }

    re::RenderGraphManager::checkDisableTimeouts(v20);
    if (*(v20 + 412) == 1)
    {
      *(v18 + 448) = 1;
    }

    *(v18 + 449) = *(v20 + 380);
  }

  *v8 = v18;
  v8[1] = v2;
  return v18;
}

uint64_t (***re::DrawingManager::trackCommandBufferForFrameCompletion(re *a1, void **a2, uint64_t a3))(void)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v5 = a3 & 0xFFFFFFFFFFFFFFFLL;
  v6 = re::globalAllocators(a1)[2];
  v12[2] = v5;
  v12[3] = v6;
  v12[0] = &unk_1F5D06E48;
  v12[1] = a1;
  v12[4] = v12;
  v10 = v6;
  v11 = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v9, v12);
  re::mtl::CommandBuffer::addCompletionHandler(a2, v9);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v9);
  FrameRefCount = re::FrameManager::getFrameRefCount(*(*(a1 + 32) + 144), v5);
  if (FrameRefCount)
  {
    atomic_fetch_add(FrameRefCount + 32, 1u);
  }

  return re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v12);
}

void re::DrawingManager::commit(uint64_t a1, unint64_t a2)
{
  re::DrawingManager::commitQueuedCommandBuffers(a1, a2);
  if (*(a1 + 1768))
  {
    v3 = 0;
    do
    {
      if ([*(*(a1 + 1784) + 8 * v3) status] <= 1)
      {
        if (*(a1 + 1768) <= v3)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        [*(*(a1 + 1784) + 8 * v3) commit];
      }

      ++v3;
    }

    while (*(a1 + 1768) > v3);
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(a1 + 1752);
}

void re::DrawingManager::commitQueuedCommandBuffers(uint64_t a1, unint64_t a2)
{
  v2 = re::RenderFrameBox::get((a1 + 328), a2);
  v3 = *(v2 + 4600);
  if (v3)
  {
    v4 = v2;
    if (*(v2 + 4608))
    {
      v5 = v2 + 4616;
    }

    else
    {
      v5 = *(v2 + 4624);
    }

    v6 = 24 * v3;
    v7 = (v5 + 16);
    do
    {
      [*v7 commit];
      v8 = *v7;
      *v7 = 0;
      v7 += 3;

      v6 -= 24;
    }

    while (v6);

    re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(v4 + 4592);
  }
}

void re::DrawingManager::commitAndWait(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v23 = *MEMORY[0x1E69E9840];
  v3 = re::RenderFrameBox::get((a1 + 328), a2);
  v4 = *(v3 + 4600);
  if (v4 != 1)
  {
    v5 = 0;
    v6 = 16;
    do
    {
      if (v4 <= v5)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_34:
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        v2 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_35;
      }

      v7 = v3 + 4616;
      if ((*(v3 + 4608) & 1) == 0)
      {
        v7 = *(v3 + 4624);
      }

      [*(v7 + v6) commit];
      v8 = *(v7 + v6);
      *(v7 + v6) = 0;

      ++v5;
      v4 = *(v3 + 4600);
      v6 += 24;
    }

    while (v5 < v4 - 1);
  }

  v4 = 4592;
  if ((atomic_load_explicit(&qword_1EE1B9A90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    if (*(v2 + 786) == 1 && byte_1EE1B9A72 != 1)
    {
      v12 = (*(v3 + 4608) & 1) != 0 ? v3 + 4616 : *(v3 + 4624);
      v13 = *(v12 + 24 * *(v3 + 4600) - 8);
      [v13 commit];
      [*(v2 + 280) dispatchAvailableCompletionNotifications];
      while (([v13 status] & 0xFFFFFFFELL) != 4)
      {
        [*(v2 + 280) dispatchAvailableCompletionNotifications];
        usleep(0x3E8u);
      }

      [*(v2 + 280) dispatchAvailableCompletionNotifications];
      v11 = 0;
    }

    else
    {
      v9 = (*(v3 + 4608) & 1) != 0 ? v3 + 4616 : *(v3 + 4624);
      v10 = v9 + 24 * *(v3 + 4600);
      [*(v10 - 8) commit];
      [*(v10 - 8) waitUntilCompleted];
      v11 = *(v10 - 8);
      *(v10 - 8) = 0;
    }

    re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(v3 + v4);
    if (!*(v2 + 1768))
    {
      break;
    }

    if (*(v2 + 786) != 1 || (byte_1EE1B9A72 & 1) != 0)
    {
      v3 = 0;
      v4 = &selRef_setOwnerWithIdentity_;
      do
      {
        if ([*(*(v2 + 1784) + 8 * v3) status] <= 1)
        {
          if (*(v2 + 1768) <= v3)
          {
            goto LABEL_34;
          }

          [*(*(v2 + 1784) + 8 * v3) commit];
        }

        ++v3;
        v15 = *(v2 + 1768);
      }

      while (v15 > v3);
      [*(*(v2 + 1784) + 8 * v15 - 8) waitUntilCompleted];

      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(v2 + 1752);
      return;
    }

LABEL_35:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) ", "!m_commandQueueNeedsManualDispatch || kUseBlockingWaitWithManualDispatch", "commitAndWait", 802);
    _os_crash();
    __break(1u);
LABEL_36:
    if (__cxa_guard_acquire(&qword_1EE1B9A90))
    {
      re::Defaults::BOOLValue("useBlockingWaitWithManualDispatch", v16, &v18);
      if (v18)
      {
        v17 = BYTE1(v18);
      }

      else
      {
        v17 = 0;
      }

      byte_1EE1B9A72 = v17;
      __cxa_guard_release(&qword_1EE1B9A90);
    }
  }
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 24;
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

  v5 = 24 * v2;
  v6 = (v4 + 16);
  do
  {
    v7 = *v6;
    v6 += 3;

    v5 -= 24;
  }

  while (v5);
  v3 = *(a1 + 16);
LABEL_8:
  *(a1 + 16) = v3 + 2;
}

void re::DrawingManager::commitAndWaitUntilScheduled(uint64_t a1, unint64_t a2)
{
  v3 = re::RenderFrameBox::get((a1 + 328), a2);
  v4 = *(v3 + 4600);
  if (v4 != 1)
  {
    v5 = 0;
    v6 = 16;
    do
    {
      if (v4 <= v5)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_21:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v7 = v3 + 4616;
      if ((*(v3 + 4608) & 1) == 0)
      {
        v7 = *(v3 + 4624);
      }

      [*(v7 + v6) commit];
      v8 = *(v7 + v6);
      *(v7 + v6) = 0;

      ++v5;
      v4 = *(v3 + 4600);
      v6 += 24;
    }

    while (v5 < v4 - 1);
  }

  if (*(v3 + 4608))
  {
    v9 = v3 + 4616;
  }

  else
  {
    v9 = *(v3 + 4624);
  }

  v10 = v9 + 24 * v4;
  [*(v10 - 8) commit];
  [*(v10 - 8) waitUntilScheduled];
  v11 = *(v10 - 8);
  *(v10 - 8) = 0;

  re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(v3 + 4592);
  if (*(a1 + 1768))
  {
    v12 = 0;
    do
    {
      if ([*(*(a1 + 1784) + 8 * v12) status] <= 1)
      {
        if (*(a1 + 1768) <= v12)
        {
          goto LABEL_21;
        }

        [*(*(a1 + 1784) + 8 * v12) commit];
      }

      ++v12;
      v13 = *(a1 + 1768);
    }

    while (v13 > v12);
    [*(*(a1 + 1784) + 8 * v13 - 8) waitUntilScheduled];

    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(a1 + 1752);
  }
}

void re::DrawingManager::configureForProfiling(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 904))
  {
    v6 = *(a2 + 16);
    *a2 = re::RenderStat::beginRecordPassStat(a1 + 864, &v6, a3);
  }
}

uint64_t re::DrawingManager::shouldRenderProfilerNode(re::DrawingManager *this)
{
  v2 = *(this + 206);
  if (v2 && *(v2 + 204) == 1)
  {
    v3 = *(v2 + 17) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 208);
  result = v4 != 0;
  if (v4 && (v3 & 1) == 0)
  {
    if (re::ProfilerManager::isProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(*(this + 208)) & 1) != 0 || (re::ProfilerManager::isProcessorEnabled<re::ProfilerFlameChartProcessor,void>(*(this + 208)))
    {
      return 1;
    }

    else
    {
      v6 = *(this + 208);

      return re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(v6);
    }
  }

  return result;
}

void re::DrawingManager::executeFrameInternal(re::DrawingManager *this, re::RenderFrameWorkload *a2)
{
  v309 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) NULL workload passed to RenderManager::executeFrameInternal", "workload", "executeFrameInternal", 895);
    _os_crash();
    __break(1u);
LABEL_300:
    v222 = __cxa_guard_acquire(&qword_1EE1B9AA0);
    if (v222)
    {
      qword_1EE1B9A98 = re::getCombinedScopeHash(v222, v223, v224);
      __cxa_guard_release(&qword_1EE1B9AA0);
    }

    goto LABEL_11;
  }

  v4 = a2;
  v2 = this;
  v6 = *(a2 + 19);
  v7 = *(this + 32);
  if ((~v6 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v6 = *(*(v7 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v7 + 144) + 16) << 60);
  }

  v8 = re::globalAllocators(this);
  v9 = re::PerFrameAllocatorManager::perFrameAllocator(v8[6], v6);
  v10 = *(v2 + 40);
  location = 0;
  v253 = 0;
  v254 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v10, v6);
  v255 = 0;
  v256 = v6;
  memset(&v258[17], 0, 25);
  *v257 = 0u;
  memset(v258, 0, 28);
  memset(&v258[4], 0, 100);
  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  v267 = 0;
  v260 = 0u;
  v259 = 0u;
  v271 = 0;
  memset(v272, 0, 24);
  v269 = 0u;
  v272[3] = v9;
  v268 = &unk_1F5D061E0;
  v270 = 16;
  *&v269 = (*(*v9 + 32))(v9, 272, 16);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *v269 = v11;
  *(&v269 + 1) = v269 + 16;
  v271 = 0;
  *&v272[1] = 0u;
  v272[0] = v270;
  v276 = 0;
  v274 = 0u;
  v275 = 0;
  v273 = v9;
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(&v273, 1uLL);
  ++v275;
  v228 = &v268;
  v268 = &unk_1F5D06170;
  memset(v279, 0, sizeof(v279));
  v277 = 0u;
  v280 = v9;
  v278 = 0x10uLL;
  *&v277 = (*(*v9 + 32))(v9, 272, 16);
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *v277 = v12;
  *(&v277 + 1) = v277 + 16;
  *(&v278 + 1) = 0;
  *&v279[8] = 0u;
  *v279 = v278;
  v284 = 0;
  v282 = 0u;
  v283 = 0;
  v281 = v9;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v281, 1uLL);
  ++v283;
  v285 = 0;
  v286 = 0u;
  v287 = 0;
  v288 = 0;
  v289 = 0u;
  v290 = 1;
  v291 = 0;
  v292 = 0u;
  v293 = 0;
  re::BucketArray<re::BufferSlice,8ul>::init(&v289, v9, 1uLL);
  v297 = 0;
  v295 = 0u;
  v296 = 0;
  v294 = v9;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(&v294, 1uLL);
  ++v296;
  v301 = 0;
  v299 = 0u;
  v300 = 0;
  v298 = v9;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v298, 1uLL);
  ++v300;
  v302 = 0;
  re::ObjCObject::operator=(&location, (v7 + 208));
  v255 = v9;
  v13 = *(v2 + 102);
  v14 = *(v2 + 103);
  v15 = *(v13 + 8 * v14);
  if (v257[0] != v15)
  {
    if (v257[0])
    {

      v15 = *(v13 + 8 * v14);
    }

    v257[0] = v15;
  }

  v252 = *(v4 + 44);
  re::DynamicArray<re::RenderFrameEvent>::operator=(v258, v4 + 27);
  v16 = v258[2];
  if (v258[2] >= v258[1])
  {
    re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::growCapacity(v258, v258[2] + 1);
    v16 = v258[2];
  }

  v229 = v7;
  v17 = (v258[4] + 16 * v16);
  *v17 = *(v4 + 23);
  v17[1] = *(v4 + 24);
  ++v258[2];
  ++LODWORD(v258[3]);
  v3 = re::RenderFrameBox::get((v2 + 328), v6);
  if ((atomic_load_explicit(&qword_1EE1B9AA0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_300;
  }

LABEL_11:
  p_location = &unk_1EE1B9000;
  v19 = qword_1EE1B9A98;
  v20 = "N2re15RendererGlobalsE";
  v21 = "N2re15RendererGlobalsE";
  if (("N2re15RendererGlobalsE" & 0x8000000000000000) != 0)
  {
    v22 = ("N2re15RendererGlobalsE" & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  if (v3[12])
  {
    v25 = (qword_1EE1B9A98 - 0x61C8864680B583E9 + (v21 << 6) + (v21 >> 2)) ^ v21;
    v26 = *(v3 + 30);
    v27 = v3[13];
    v28 = *(v27 + 4 * (v25 % v26));
    if (v28 != 0x7FFFFFFF)
    {
      v29 = v3[14];
      while (*(v29 + 24 * v28 + 8) != v25)
      {
        v28 = *(v29 + 24 * v28) & 0x7FFFFFFF;
        if (v28 == 0x7FFFFFFF)
        {
          goto LABEL_42;
        }
      }

      if (*(v29 + 24 * v28 + 16))
      {
        v30 = "N2re15RendererGlobalsE";
        if (("N2re15RendererGlobalsE" & 0x8000000000000000) != 0)
        {
          v31 = ("N2re15RendererGlobalsE" & 0x7FFFFFFFFFFFFFFFLL);
          v32 = 5381;
          do
          {
            v30 = v32;
            v33 = *v31++;
            v32 = (33 * v32) ^ v33;
          }

          while (v33);
        }

        v34 = (qword_1EE1B9A98 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
        v35 = v34 % v26;
        v36 = *(v27 + 4 * v35);
        if (v36 != 0x7FFFFFFF)
        {
          v37 = v36;
          while (*(v29 + 24 * v37 + 8) != v34)
          {
            v37 = *(v29 + 24 * v37) & 0x7FFFFFFF;
            if (v37 == 0x7FFFFFFF)
            {
              goto LABEL_42;
            }
          }

          if (*(v29 + 24 * v36 + 8) == v34)
          {
            v38 = v36;
            LODWORD(v36) = 0x7FFFFFFF;
          }

          else
          {
            v39 = *(v29 + 24 * v36) & 0x7FFFFFFF;
            v38 = 0x7FFFFFFF;
            if (v39 != 0x7FFFFFFF)
            {
              if (*(v29 + 24 * v39 + 8) == v34)
              {
                v38 = *(v29 + 24 * v36) & 0x7FFFFFFF;
              }

              else
              {
                v40 = *(v29 + 24 * v39) & 0x7FFFFFFF;
                v38 = 0x7FFFFFFF;
                if (v40 != 0x7FFFFFFF)
                {
                  v38 = 0x7FFFFFFF;
                  while (1)
                  {
                    LODWORD(v36) = v40;
                    if (*(v29 + 24 * v40 + 8) == v34)
                    {
                      break;
                    }

                    v40 = *(v29 + 24 * v40) & 0x7FFFFFFF;
                    LODWORD(v39) = v36;
                    if (v40 == 0x7FFFFFFF)
                    {
                      goto LABEL_41;
                    }
                  }

                  v38 = v40;
                }

                LODWORD(v36) = v39;
              }
            }
          }

LABEL_41:
          buf.n128_u64[0] = (qword_1EE1B9A98 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
          buf.n128_u64[1] = __PAIR64__(v38, v35);
          LODWORD(v304) = v36;
          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal((v3 + 12), &buf);
          v19 = qword_1EE1B9A98;
        }
      }
    }
  }

LABEL_42:
  v41 = *(v2 + 32);
  if (("N2re15RendererGlobalsE" & 0x8000000000000000) != 0)
  {
    v42 = ("N2re15RendererGlobalsE" & 0x7FFFFFFFFFFFFFFFLL);
    v43 = 5381;
    do
    {
      v20 = v43;
      v44 = *v42++;
      v43 = (33 * v43) ^ v44;
    }

    while (v44);
  }

  buf.n128_u64[0] = (v19 - 0x61C8864680B583E9 + (v20 << 6) + (v20 >> 2)) ^ v20;
  v45 = (*(*v3[5] + 32))(v3[5], 24, 8);
  *v45 = &unk_1F5D07230;
  v45[1] = &location;
  v45[2] = v41;
  v236[0] = v45;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((v3 + 12), buf.n128_u64, v236);
  v46 = re::RenderFrameBox::get((v2 + 328), v6);
  v48 = *(v2 + 214);
  if (v48 >= 4)
  {
    re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    _os_crash();
    __break(1u);
LABEL_303:
    if (__cxa_guard_acquire(&qword_1EE1B9AE0))
    {
      v225 = re::ns::String::String(&qword_1EE1B9AD8, "SharedEventSignalBuffer");
      __cxa_guard_release(v225 + 1);
    }

    goto LABEL_280;
  }

  *(v2 + v48 + 431) = *(v46 + 4600);
  *(v2 + 214) = v48 + 1;
  ++*(v2 + 430);
  v304 = 0;
  buf = 0xFFFFFFFFuLL;
  re::DynamicOverflowArray<re::CommandBuffer,8ul>::add(v46 + 4592, &buf);

  v50 = re::protectionOptions(v49);
  v51 = re::RenderFrameBox::get((v2 + 328), v6);
  QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v51);
  [*(QueuedCommandBuffer + 16) setProtectionOptions:v50];
  re::DrawingManager::configureForProfiling(v2, QueuedCommandBuffer, 1u);
  v234 = v3;
  v53 = v3[52] ^ v3[48];
  v54 = v6 & 0xFFFFFFFFFFFFFFFLL;
  if ((v53 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    re::ns::String::format("Initial CB %llu(R)", &buf, v6 & 0xFFFFFFFFFFFFFFFLL);
  }

  else
  {
    re::ns::String::format("Initial CB %llu", &buf, v6 & 0xFFFFFFFFFFFFFFFLL);
  }

  [*(QueuedCommandBuffer + 16) setLabel:buf.n128_u64[0]];

  [*(QueuedCommandBuffer + 16) addCompletedHandler:&__block_literal_global_43_0];
  v55 = re::RenderManager::splitCommandBuffersForDebugging(*(v2 + 32));
  if (v55)
  {
    v55 = [*(QueuedCommandBuffer + 16) addCompletedHandler:&__block_literal_global_43_0];
  }

  if (*(v2 + 106))
  {
    v55 = [*(QueuedCommandBuffer + 16) encodeWaitForEvent:*(v2 + 105) value:?];
  }

  v56 = *(v4 + 23);
  if (v56)
  {
    v55 = [*(QueuedCommandBuffer + 16) encodeWaitForEvent:v56 value:*(v4 + 24)];
  }

  v57 = *(v4 + 29);
  if (v57)
  {
    v58 = 16 * v57;
    v59 = (*(v4 + 31) + 8);
    do
    {
      v60 = *(v59 - 1);
      if (v60)
      {
        v55 = [*(QueuedCommandBuffer + 16) encodeWaitForEvent:v60 value:*v59];
      }

      v59 += 2;
      v58 -= 16;
    }

    while (v58);
  }

  v61 = *(v234 + 3352);
  if (v61)
  {
    v62 = *(QueuedCommandBuffer + 16);
    v63 = *(v234 + 3368);
    v64 = &v63[2 * v61];
    do
    {
      v65 = *v63;
      v66 = v63[1];
      v63 += 2;
      v55 = [v62 encodeSignalEvent:v65 value:v66];
    }

    while (v63 != v64);
  }

  v67 = *(v234 + 416) & 0xFFFFFFFFFFFFFFFLL;
  v68 = re::globalAllocators(v55)[2];
  v248[2] = v4;
  v249 = v68;
  v248[0] = &unk_1F5D06EF8;
  v248[1] = v2;
  v250 = v248;
  v246 = re::globalAllocators(v4 + 8)[2];
  v247 = 0;
  v69 = (*(*v246 + 32))(v246, 40, 0);
  *v69 = &unk_1F5D06F50;
  v69[1] = v2;
  v69[2] = v54;
  v69[3] = v67;
  v230 = v67;
  v69[4] = v4;
  v247 = v69;
  re::RenderFrameWorkload::beforeEncode(v4);
  re::RenderFrame::applyRenderFrameDeltas(v234);
  *(v2 + 1800) = 0;
  re::RenderFrame::execute(v234);
  v70 = re::RenderFrameWorkload::postEncode(v4);
  v233 = v4;
  v231 = v6 & 0xFFFFFFFFFFFFFFFLL;
  if (*(v234 + 3392))
  {
    v71 = *re::graphicsLogObjects(v70);
    v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
    if (v72)
    {
      buf.n128_u16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "Skipping render frame due to RenderGraph errors:", &buf, 2u);
    }

    v73 = *(v234 + 3392);
    if (v73)
    {
      v74 = 48 * v73;
      v75 = (*(v234 + 3408) + 32);
      do
      {
        v76 = *re::graphicsLogObjects(v72);
        v72 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
        if (v72)
        {
          if (*(v75 - 1))
          {
            v77 = *v75;
          }

          else
          {
            v77 = v75 - 7;
          }

          buf.n128_u32[0] = 136315138;
          *(buf.n128_u64 + 4) = v77;
          _os_log_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_DEFAULT, "- %s", &buf, 0xCu);
        }

        v75 += 6;
        v74 -= 48;
      }

      while (v74);
    }

    if (*(v234 + 4608))
    {
      v78 = v234 + 4616;
    }

    else
    {
      v78 = *(v234 + 4624);
    }

    v79 = *(v234 + 4600);
    if (v79)
    {
      v80 = 24 * v79;
      v81 = (v78 + 16);
      do
      {
        if (*v81)
        {
          if ([*v81 status] == 1)
          {
            v82 = *v81;
            v236[0] = v82;
            if (v82 != v257[1])
            {
              v83 = *re::graphicsLogObjects(v82);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                Label = re::mtl::CommandBuffer::getLabel(v236);
                buf.n128_u32[0] = 136315138;
                *(buf.n128_u64 + 4) = Label;
                _os_log_impl(&dword_1E1C61000, v83, OS_LOG_TYPE_DEFAULT, "Enqueued CommandBuffer in RenderManager's queue, cannot invalidate: %s", &buf, 0xCu);
              }
            }

            v85 = v236[0];
          }

          else
          {
            v85 = *v81;
            *v81 = 0;
          }
        }

        v81 += 3;
        v80 -= 24;
      }

      while (v80);
    }

    v86 = re::RenderGraphManager::processRenderGraphErrors(*(v2 + 37), v234, v4);
    buf.n128_u64[0] = 0;
    v87 = re::protectionOptions(v86);
    v88 = re::RenderFrameBox::get((v2 + 328), v6);
    v89 = (re::RenderFrame::createQueuedCommandBuffer(v88) + 16);
    [*v89 setProtectionOptions:v87];
    re::ObjCObject::operator=(&buf, v89);
    if ((atomic_load_explicit(&qword_1EE1B9AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9AD0))
    {
      v226 = re::ns::String::String(&qword_1EE1B9AC8, "Failed command buffer");
      __cxa_guard_release(v226 + 1);
    }

    v90 = qword_1EE1B9AC8;
    [buf.n128_u64[0] setLabel:v90];

    v91 = *(v4 + 23);
    v54 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v91)
    {
      [buf.n128_u64[0] encodeWaitForEvent:v91 value:*(v4 + 24)];
    }

    v92 = *(v4 + 29);
    if (v92)
    {
      v93 = 16 * v92;
      v94 = (*(v4 + 31) + 8);
      do
      {
        v95 = *(v94 - 1);
        if (v95)
        {
          [buf.n128_u64[0] encodeWaitForEvent:v95 value:*v94];
        }

        v94 += 2;
        v93 -= 16;
      }

      while (v93);
    }
  }

  p_buf = 0;
  v304 = 0;
  buf = 0uLL;
  LODWORD(v305) = 0;
  if (*(v234 + 4608))
  {
    v96 = v234 + 4616;
  }

  else
  {
    v96 = *(v234 + 4624);
  }

  v97 = *(v234 + 4600);
  if (v97)
  {
    v98 = 0;
    v99 = 0;
    v100 = (v96 + 16);
    v101 = 24 * v97;
    do
    {
      if (*v100)
      {
        if (v99 >= buf.n128_u64[1])
        {
          if (buf.n128_u64[1] < v99 + 1)
          {
            if (buf.n128_u64[0])
            {
              if (buf.n128_u64[1])
              {
                v102 = 2 * buf.n128_u64[1];
              }

              else
              {
                v102 = 8;
              }

              if (v102 <= v99 + 1)
              {
                v103 = v99 + 1;
              }

              else
              {
                v103 = v102;
              }

              re::DynamicArray<re::CommandBuffer>::setCapacity(&buf, v103);
            }

            else
            {
              re::DynamicArray<re::CommandBuffer>::setCapacity(&buf, v99 + 1);
              LODWORD(v305) = v305 + 1;
            }
          }

          v99 = v304;
          v98 = p_buf;
        }

        v104 = v98 + 24 * v99;
        *v104 = *(v100 - 1);
        v70 = *v100;
        *(v104 + 2) = v70;
        v99 = ++v304;
        LODWORD(v305) = v305 + 1;
      }

      v100 += 3;
      v101 -= 24;
    }

    while (v101);
    v105 = p_buf;
    v54 = v6 & 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v99 = 0;
    v105 = 0;
  }

  if (*(v234 + 4592))
  {
    if (!v99)
    {
      re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(v234 + 4592);
      goto LABEL_144;
    }

    re::DynamicOverflowArray<re::CommandBuffer,8ul>::copy(v234 + 4592, v105, v99);
    v107 = *(v234 + 4600);
    if (v107 >= v99)
    {
      if (v107 <= v99)
      {
        goto LABEL_144;
      }

      v109 = v234;
      v110 = 24 * v99 + 16;
      v111 = v99;
      do
      {
        v112 = v234 + 4616;
        if ((*(v234 + 4608) & 1) == 0)
        {
          v112 = *(v234 + 4624);
        }

        ++v111;
        v110 += 24;
      }

      while (v111 < *(v234 + 4600));
      goto LABEL_143;
    }

    if (*(v234 + 4592))
    {
      if ((*(v234 + 4608) & 1) == 0)
      {
LABEL_124:
        v108 = *(v234 + 4616);
LABEL_136:
        if (v108 < v99)
        {
          re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity((v234 + 4592), v99);
        }

        v109 = v234;
        v114 = *(v234 + 4600);
        v115 = v99 - v114;
        if (v99 > v114)
        {
          v116 = 24 * v114;
          do
          {
            v117 = v234 + 4616;
            if ((*(v109 + 4608) & 1) == 0)
            {
              v117 = *(v234 + 4624);
            }

            v118 = (v117 + v116);
            v118[1] = 0;
            v118[2] = 0;
            *v118 = 0xFFFFFFFFLL;
            v116 += 24;
            --v115;
            v109 = v234;
          }

          while (v115);
        }

LABEL_143:
        *(v109 + 4600) = v99;
        *(v109 + 4608) += 2;
        goto LABEL_144;
      }
    }

    else
    {
      re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity((v234 + 4592), v99);
      v113 = *(v234 + 4608) + 2;
      *(v234 + 4608) = v113;
      if ((v113 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    v108 = 8;
    goto LABEL_136;
  }

  if (v99)
  {
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity((v234 + 4592), v99);
    *(v234 + 4608) += 2;
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::copy(v234 + 4592, v105, v99);
  }

LABEL_144:
  v119 = buf.n128_u64[0];
  if (buf.n128_u64[0])
  {
    if (v105)
    {
      if (v99)
      {
        v120 = 24 * v99;
        v121 = (v105 + 16);
        do
        {
          v122 = *v121;
          v121 += 3;

          v120 -= 24;
        }

        while (v120);
      }

      (*(*v119 + 40))(v119, v105);
    }

    p_buf = 0;
  }

  *(v2 + 214) = 0;
  ++*(v2 + 430);
  *(v2 + 436) = 0;
  v123 = re::RenderFrameBox::get((v2 + 328), v6);
  v124 = re::RenderFrame::currentCommandBuffer(v123);
  if (*(v2 + 904))
  {
    v125 = re::RenderFrameBox::get((v2 + 328), v6);
    v126 = v125;
    v127 = *(v125 + 4608);
    if (v127)
    {
      v128 = v125 + 4616;
    }

    else
    {
      v128 = *(v125 + 4624);
    }

    v129 = *(v125 + 4600);
    if (v129)
    {
      v130 = 24 * v129;
      v131 = (v128 + 16);
      do
      {
        v132 = *(v131 - 4);
        if (v132 != -1)
        {
          buf.n128_u64[0] = *v131;
          re::RenderStat::finishMTLCounterSampling(v2 + 108, v132, &buf);
        }

        v131 += 3;
        v130 -= 24;
      }

      while (v130);
      v127 = *(v126 + 4608);
    }

    if (v127)
    {
      v133 = v126 + 4616;
    }

    else
    {
      v133 = *(v126 + 4624);
    }

    v134 = v133 + 24 * *(v126 + 4600);
    v135 = *(v134 - 24);
    v236[0] = *(v134 - 8);
    re::RenderStat::finishFrame(v2 + 864, v135, v236);
  }

  v227 = v6;
  v243 = v246;
  v244 = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v242, v245);
  re::mtl::CommandBuffer::addCompletionHandler(v124 + 2, v242);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v242);
  v240 = v249;
  v241 = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v239, v248);
  re::mtl::CommandBuffer::addScheduledHandler(v124 + 2, v239);
  v136 = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v239);
  v137 = re::globalAllocators(v136);
  v138 = (*(*v137[2] + 32))(v137[2], 48, 8);
  ArcSharedObject::ArcSharedObject(v138, 0);
  v138[3] = 0;
  *v138 = &unk_1F5D07258;
  v138[4] = v54;
  v138[5] = v230;
  v139 = v138 + 1;
  v237[0] = &unk_1F5D072A0;
  v237[1] = v138;
  v232 = v138;
  v238 = v237;
  v140 = v234;
  if (*(v234 + 4312))
  {
    v141 = 0;
    v142 = 0;
    v143 = (v2 + 1752);
    do
    {
      v144 = v143;
      v145 = v140[541];
      v146 = [*(v145 + v141) commandBuffer];
      if (v146)
      {
        ++*(v232 + 6);
        buf.n128_u64[0] = 0;
        buf.n128_u64[1] = &buf;
        v304 = 0x4802000000;
        v305 = __Block_byref_object_copy__14;
        p_buf = __Block_byref_object_dispose__14;
        if (v238)
        {
          if (v238 == v237)
          {
            v308 = v307;
            (*(*v238 + 24))();
          }

          else
          {
            v308 = (*(*v238 + 16))();
          }
        }

        else
        {
          v308 = 0;
        }

        v236[0] = MEMORY[0x1E69E9820];
        v236[1] = 0x40000000;
        v236[2] = ___ZN3MTL13CommandBuffer19addCompletedHandlerERKNSt3__18functionIFvPS0_EEE_block_invoke;
        v236[3] = &unk_1E871FC80;
        v236[4] = &buf;
        [v146 addCompletedHandler_];
        _Block_object_dispose(&buf, 8);
        std::__function::__value_func<void ()(MTL::CommandBuffer *)>::~__value_func[abi:nn200100](v307);
      }

      v143 = v144;
      if (*(v233 + 157) == 1)
      {
        (*(*(v145 + v141 + 8) + 264))(**(v145 + v141 + 8), sel_endEncoding);
        v147 = v146;
        v148 = *(v2 + 221);
        v149 = *(v2 + 220);
        if (v148 >= v149)
        {
          v150 = v148 + 1;
          if (v149 < v148 + 1)
          {
            if (*v144)
            {
              v151 = 2 * v149;
              v152 = v149 == 0;
              v153 = 8;
              if (!v152)
              {
                v153 = v151;
              }

              if (v153 <= v150)
              {
                v154 = v150;
              }

              else
              {
                v154 = v153;
              }

              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v144, v154);
            }

            else
            {
              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v144, v150);
              ++*(v2 + 444);
            }
          }

          v148 = *(v2 + 221);
        }

        *(*(v2 + 223) + 8 * v148) = v147;
        *(v2 + 221) = v148 + 1;
        ++*(v2 + 444);
        v143 = v144;
      }

      ++v142;
      v140 = v234;
      v141 += 24;
    }

    while (*(v234 + 4312) > v142);
  }

  p_location = &location;
  v155 = v140;
  if (*(v232 + 6))
  {
    os_unfair_lock_lock(v2 + 462);
    v157 = *(v2 + 228);
    v158 = *(v2 + 227);
    if (v157 >= v158)
    {
      v159 = v157 + 1;
      if (v158 < v157 + 1)
      {
        if (*(v2 + 226))
        {
          v160 = 2 * v158;
          v152 = v158 == 0;
          v161 = 8;
          if (!v152)
          {
            v161 = v160;
          }

          if (v161 <= v159)
          {
            v162 = v159;
          }

          else
          {
            v162 = v161;
          }

          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v2 + 226, v162);
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v2 + 226, v159);
          ++*(v2 + 458);
        }
      }

      v157 = *(v2 + 228);
    }

    *(*(v2 + 230) + 8 * v157) = v232;
    v163 = v232 + 1;
    ++*(v2 + 228);
    ++*(v2 + 458);
    os_unfair_lock_unlock(v2 + 462);
  }

  if (*(v2 + 786) == 1)
  {
    v164 = *(v2 + 101);
    v165 = v230;
    v5 = *(v229 + 264) + v164;
    v166 = v231;
    if (v155[514])
    {
      v167 = *(v2 + 100);
      v168 = *(v2 + 107);
      v235[0] = MEMORY[0x1E69E9820];
      v235[1] = 0x40000000;
      v235[2] = ___ZN2re14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadE_block_invoke;
      v235[3] = &__block_descriptor_tmp_29;
      v235[4] = v2;
      v235[5] = v231;
      v235[6] = v230;
      [v167 notifyListener:v168 atValue:v5 block:v235];
      v164 = *(v2 + 101);
    }

    v4 = v227;
    *(v2 + 101) = v164 + 1;
  }

  else
  {
    v5 = -1;
    v4 = v227;
    v165 = v230;
    v166 = v231;
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear((v155 + 555));
  v169 = *(v2 + 39);
  if (!v169 || *v169 != pthread_self())
  {
    FrameRefCount = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v166);
    if (FrameRefCount)
    {
      atomic_fetch_add(FrameRefCount + 32, 1u);
    }

    if (v166 != v165)
    {
      v171 = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v165);
      if (v171)
      {
        atomic_fetch_add(v171 + 32, 1u);
      }
    }

    if (v155[539])
    {
      v172 = 0;
      v173 = 0;
      do
      {
        if ([*(v155[541] + v172) commandBuffer])
        {
          v174 = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v166);
          if (v174)
          {
            atomic_fetch_add(v174 + 32, 1u);
          }

          if (v166 != v165)
          {
            v175 = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v165);
            if (v175)
            {
              atomic_fetch_add(v175 + 32, 1u);
            }
          }
        }

        ++v173;
        v172 += 24;
      }

      while (v155[539] > v173);
    }
  }

  *(v2 + 97) = *&v258[13];
  *(v2 + 98) = *&v258[15];
  *(v2 + 99) = *&v258[17];
  *(v2 + 93) = *&v258[5];
  *(v2 + 94) = *&v258[7];
  *(v2 + 95) = *&v258[9];
  *(v2 + 96) = *&v258[11];
  *(v2 + 1593) = *(&v258[18] + 1);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v176 = re::internal::enableSignposts(0, 0);
  if (v176)
  {
    v176 = kdebug_trace();
  }

  v177 = *(v2 + 373);
  v178 = *(v2 + 374);
  v179 = *(v2 + 375);
  v180 = *(v2 + 376);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v176);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v182 = *(isStatisticCollectionEnabled + 152);
    if (v182)
    {
      v183 = v182[280].u64[0];
      if (v183 >= v177)
      {
        v183 = v177;
      }

      v182[280].i64[0] = v183;
      v184 = v182[280].u64[1];
      if (v184 <= v177)
      {
        v184 = v177;
      }

      v182[280].i64[1] = v184;
      v185 = vdupq_n_s64(1uLL);
      v185.i64[0] = v177;
      v182[281] = vaddq_s64(v182[281], v185);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v186 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v186)
  {
    v186 = re::profilerThreadContext(v186);
    v187 = *(v186 + 152);
    if (v187)
    {
      v188 = v187[288].u64[0];
      if (v188 >= v178)
      {
        v188 = v178;
      }

      v187[288].i64[0] = v188;
      v189 = v187[288].u64[1];
      if (v189 <= v178)
      {
        v189 = v178;
      }

      v187[288].i64[1] = v189;
      v190 = vdupq_n_s64(1uLL);
      v190.i64[0] = v178;
      v187[289] = vaddq_s64(v187[289], v190);
      *(v186 + 184) = 0;
    }
  }

  v191 = re::ProfilerConfig::isStatisticCollectionEnabled(v186);
  if (v191)
  {
    v191 = re::profilerThreadContext(v191);
    v192 = *(v191 + 152);
    if (v192)
    {
      v193 = v192[296].u64[0];
      if (v193 >= v179)
      {
        v193 = v179;
      }

      v192[296].i64[0] = v193;
      v194 = v192[296].u64[1];
      if (v194 <= v179)
      {
        v194 = v179;
      }

      v192[296].i64[1] = v194;
      v195 = vdupq_n_s64(1uLL);
      v195.i64[0] = v179;
      v192[297] = vaddq_s64(v192[297], v195);
      *(v191 + 184) = 0;
    }
  }

  v196 = re::ProfilerConfig::isStatisticCollectionEnabled(v191);
  if (v196)
  {
    v197 = re::profilerThreadContext(v196);
    v198 = *(v197 + 152);
    if (v198)
    {
      v199 = v198[304].u64[0];
      if (v199 >= v180)
      {
        v199 = v180;
      }

      v198[304].i64[0] = v199;
      v200 = v198[304].u64[1];
      if (v200 <= v180)
      {
        v200 = v180;
      }

      v198[304].i64[1] = v200;
      v201 = vdupq_n_s64(1uLL);
      v201.i64[0] = v180;
      v198[305] = vaddq_s64(v198[305], v201);
      *(v197 + 184) = 0;
    }
  }

  if (*(v2 + 206))
  {
    v202 = *(v2 + 208);
    if (v202)
    {
      v203 = re::ProfilerManager::isProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(v202);
      if (v203 & 1) != 0 || (v203 = re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(*(v2 + 208)), (v203) || (v203 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(*(v2 + 208)), (v203) || (v221 = *(v2 + 206), v221[204] == 1) && (v221[17] & 1) == 0 && (v221[177])
      {
        if ((*(v2 + 904) & 1) == 0)
        {
          re::DrawingManager::activatePerfSampling(v2);
        }

        if (!*(v2 + 207))
        {
          v204 = re::globalAllocators(v203)[2];
          buf.n128_u64[0] = &unk_1F5D071C0;
          buf.n128_u64[1] = v2;
          v305 = v204;
          p_buf = &buf;
          LOWORD(v236[0]) = *(v2 + 120);
          re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::add(v2 + 912, v236, &buf);
          v205 = *(v2 + 120);
          *(v2 + 120) = v205 + 1;
          *(v2 + 207) = v205;
          re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(&buf);
        }
      }

      else if (*(v2 + 207))
      {
        buf.n128_u16[0] = *(v2 + 207);
        re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(v2 + 912, &buf);
        *(v2 + 207) = 0;
      }
    }
  }

  *(v2 + 202) = v259;
  if (*(v2 + 235))
  {
    if ((*(v2 + 904) & 1) == 0)
    {
      re::DrawingManager::activatePerfSampling(v2);
    }
  }

  else if (*(v2 + 904))
  {
    re::RenderStat::clearMTLCounterHandlers(v2 + 108);
    re::RenderStat::deinitializeCurrentMode((v2 + 864));
    v206 = *(v2 + 112);
    *(v2 + 112) = 0;
  }

  v207 = *(*(v2 + 32) + 64);
  if (v207)
  {
    v208 = v207[23];
    if (v208)
    {
      v207[18] = v208;
      v207[19] = v208 + 16;
      v207[20] = v208 + 16;
      v207[24] = 0;
    }
  }

  v209 = re::RenderFrameBox::get((v2 + 328), v4);
  v3 = *(re::RenderFrame::createQueuedCommandBuffer(v209) + 16);
  if ((atomic_load_explicit(&qword_1EE1B9AE0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_303;
  }

LABEL_280:
  v210 = qword_1EE1B9AD8;
  [v3 setLabel:v210];

  v211 = *(v2 + 29);
  ++*(v2 + 30);
  [v3 encodeSignalEvent:v211 value:?];
  ++*(v2 + 106);
  v212 = [v3 encodeSignalEvent:*(v2 + 105) value:?];
  if (v5 != -1)
  {
    v212 = [v3 encodeSignalEvent:*(v2 + 100) value:v5];
  }

  v213 = *(v233 + 25);
  if (v213)
  {
    v212 = [v3 encodeSignalEvent:v213 value:*(v233 + 26)];
  }

  v214 = *(v233 + 34);
  if (v214)
  {
    v215 = 16 * v214;
    v216 = (*(v233 + 36) + 8);
    do
    {
      v217 = *(v216 - 1);
      if (v217)
      {
        v212 = [v3 encodeSignalEvent:v217 value:*v216];
      }

      v216 += 2;
      v215 -= 16;
    }

    while (v215);
  }

  *(v2 + 103) = (*(v2 + 103) + 1) % *(v229 + 264);
  atomic_fetch_add(v2 + 208, 1u);
  atomic_fetch_add(v2 + 209, 1u);
  v218 = *(v233 + 20);
  v219 = re::globalAllocators(v212);
  re::PerFrameAllocatorManager::freeAllocatorsForFrame(v219[6], v218);
  re::FrameManager::destructOlderOrEqualOnRenderThread(*(*(v2 + 32) + 144), v4);
  v220 = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v231);
  if (v220)
  {
    *(v220 + 89) = 1;
  }

  *(v2 + 1800) = 1;

  std::__function::__value_func<void ()(MTL::CommandBuffer *)>::~__value_func[abi:nn200100](v237);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v245);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v248);
  re::BufferTable::~BufferTable((p_location + 60));
  re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::~TextureTableImpl(v228);
  re::DynamicArray<re::RenderFrameEvent>::deinit((p_location + 8));

  if (v257[0])
  {

    v257[0] = 0;
  }
}