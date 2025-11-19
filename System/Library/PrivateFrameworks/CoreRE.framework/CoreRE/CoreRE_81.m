void re::ObjectHelper::move<re::LinkedFunction>(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | *(a1 + 8) & 1;
  *(a2 + 8) = *(a1 + 8) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 16) = &str_67;
  *(a1 + 8) = 0;
  v6 = (a1 + 24);
  v5 = *(a1 + 24);
  *(a2 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | *(a1 + 24) & 1;
  *(a2 + 24) = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  v7 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = &str_67;
  *(a1 + 24) = 0;
  v8 = *(a1 + 48);
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a1 + 48) = 0;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  v9 = (a1 + 64);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = 0;
  v10 = *(a2 + 80);
  v11 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = v11;
  *(a1 + 72) = 0;
  *(a1 + 80) = v10;
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v12 = (a1 + 96);
  *(a2 + 96) = *(a1 + 96);
  *(a1 + 96) = 0;
  v13 = *(a2 + 112);
  v14 = *(a1 + 112);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = v14;
  *(a1 + 104) = 0;
  *(a1 + 112) = v13;
  *(a2 + 152) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = 0;
  *(a2 + 144) = 0;
  v15 = a1 + 120;
  v16 = *(a1 + 128);
  *(a2 + 120) = *(a1 + 120);
  *(a1 + 120) = 0;
  *(a2 + 128) = v16;
  *(a1 + 128) = 0;
  v17 = *(a2 + 136);
  *(a2 + 136) = *(a1 + 136);
  *(a1 + 136) = v17;
  v18 = *(a2 + 152);
  *(a2 + 152) = *(a1 + 152);
  *(a1 + 152) = v18;
  ++*(a1 + 144);
  ++*(a2 + 144);
  *(a2 + 192) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  *(a2 + 184) = 0;
  v20 = *(a1 + 160);
  v21 = *(a1 + 168);
  v19 = a1 + 160;
  *(a2 + 160) = v20;
  *(a2 + 168) = v21;
  *v19 = 0;
  *(v19 + 8) = 0;
  v22 = *(a2 + 176);
  *(a2 + 176) = *(v19 + 16);
  *(v19 + 16) = v22;
  v23 = *(a2 + 192);
  *(a2 + 192) = *(v19 + 32);
  *(v19 + 32) = v23;
  ++*(v19 + 24);
  ++*(a2 + 184);
  re::DynamicArray<unsigned long>::deinit(v19);
  re::DynamicArray<unsigned long>::deinit(v15);
  re::FixedArray<re::TypedArgument>::deinit(v12);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(v9);
  v24 = *(a1 + 48);
  if (v24)
  {

    *(a1 + 48) = 0;
  }

  re::StringID::destroyString(v6);

  re::StringID::destroyString(v4);
}

void re::dispatch::Queue::make(const char *a1@<X0>, unsigned int *a2@<X1>, NSObject **a3@<X8>)
{
  if (a2[2] == 1)
  {
    v6 = MEMORY[0x1E69E96A8];
    v7 = MEMORY[0x1E69E96A8];
  }

  else
  {
    v6 = 0;
  }

  v8 = *a2;
  if (v8 > 4)
  {
    v9 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v9 = dword_1E306A8E0[v8];
  }

  v10 = dispatch_queue_attr_make_with_qos_class(v6, v9, 0);

  v11 = a2[1];
  if (v11 == 2)
  {
    v12 = DISPATCH_AUTORELEASE_FREQUENCY_NEVER;
  }

  else
  {
    v12 = (v11 == 1);
  }

  attr = dispatch_queue_attr_make_with_autorelease_frequency(v10, v12);

  v13 = *(a2 + 2);
  if (v13 && *v13)
  {
    v14 = dispatch_queue_create_with_target_V2(a1, attr, *v13);
  }

  else
  {
    v14 = dispatch_queue_create(a1, attr);
  }

  v15 = v14;
  *a3 = v15;
}

void re::dispatch::Queue::global(re::dispatch::Queue *this@<X0>, uintptr_t a2@<X1>, void *a3@<X8>)
{
  v4 = dispatch_get_global_queue(this, a2);
  *a3 = v4;
}

void re::dispatch::Group::async(id *a1, NSObject **a2, void *a3, void (__cdecl *a4)(void *))
{
  v6 = *a2;
  v7 = *a1;
  dispatch_group_async_f(v7, v6, a3, a4);
}

void re::dispatch::Group::async(id *a1, NSObject **a2, void *a3)
{
  v4 = *a2;
  v5 = *a1;
  dispatch_group_async(v5, v4, a3);
}

void re::dispatch::Group::notify(id *a1, NSObject **a2, void *a3)
{
  v4 = *a2;
  v5 = *a1;
  dispatch_group_notify(v5, v4, a3);
}

uint64_t *re::mxiLogObjects(re *this)
{
  {
    re::mxiLogObjects(void)::_objects = os_log_create("com.apple.re", "MXI");
  }

  return &re::mxiLogObjects(void)::_objects;
}

void re::ecs2::introspect_MXISceneType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19DB08, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19DB10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DB10))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19DC80, "MXISceneType", 1, 1, 1, 1);
      qword_1EE19DC80 = &unk_1F5D0C658;
      qword_1EE19DCC0 = &re::ecs2::introspect_MXISceneType(BOOL)::enumTable;
      dword_1EE19DC90 = 9;
      __cxa_guard_release(&qword_1EE19DB10);
    }

    if (_MergedGlobals_138)
    {
      break;
    }

    _MergedGlobals_138 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19DC80, a2);
    v33 = 0x385C2A400D070F10;
    v34 = "MXISceneType";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19DCC0;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE19DCA0 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE19DB08);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Plane";
      qword_1EE19DBD0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Cube";
      qword_1EE19DBD8 = v32;
      __cxa_guard_release(&qword_1EE19DB08);
    }
  }
}

void re::ecs2::introspect_MXISplitMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19DB18, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19DB20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DB20))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19DCC8, "MXISplitMode", 1, 1, 1, 1);
      qword_1EE19DCC8 = &unk_1F5D0C658;
      qword_1EE19DD08 = &re::ecs2::introspect_MXISplitMode(BOOL)::enumTable;
      dword_1EE19DCD8 = 9;
      __cxa_guard_release(&qword_1EE19DB20);
    }

    if (byte_1EE19DB01)
    {
      break;
    }

    byte_1EE19DB01 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19DCC8, a2);
    v37 = 0x385C2AE96F0C7AFELL;
    v38 = "MXISplitMode";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19DD08;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE19DCE8 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE19DB18);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "None";
      qword_1EE19DC00 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "TwoRGBATextures";
      qword_1EE19DC08 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "OneRGBATextureAndOneMaskTexture";
      qword_1EE19DC10 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "TwoRGBATexturesFullBackground";
      qword_1EE19DC18 = v36;
      __cxa_guard_release(&qword_1EE19DB18);
    }
  }
}

void *re::ecs2::allocInfo_MXITwoPassOffscreenOptions(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19DB28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DB28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19DE30, "MXITwoPassOffscreenOptions");
    __cxa_guard_release(&qword_1EE19DB28);
  }

  return &unk_1EE19DE30;
}

void re::ecs2::initInfo_MXITwoPassOffscreenOptions(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v27[0] = 0x815F922AF7A8F084;
  v27[1] = "MXITwoPassOffscreenOptions";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE19DB30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19DB30);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "resolutionScale";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19DC20 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_int(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "framesPerRender";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19DC28 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "doReprojection";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19DC30 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "keepReprojectingThreshhold";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19DC38 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "forceRenderThreshhold";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19DC40 = v25;
      __cxa_guard_release(&qword_1EE19DB30);
    }
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE19DC20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MXITwoPassOffscreenOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MXITwoPassOffscreenOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MXITwoPassOffscreenOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MXITwoPassOffscreenOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

double re::internal::defaultConstruct<re::ecs2::MXITwoPassOffscreenOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x13F800000;
  *(a3 + 8) = 257;
  result = 5.2386907e-11;
  *(a3 + 12) = 0x3DCCCCCD3D4CCCCDLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MXITwoPassOffscreenOptions>(uint64_t a1)
{
  *a1 = 0x13F800000;
  *(a1 + 8) = 257;
  result = 5.2386907e-11;
  *(a1 + 12) = 0x3DCCCCCD3D4CCCCDLL;
  return result;
}

void *re::ecs2::allocInfo_MXIProxyDescription(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19DB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DB40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19DEC0, "MXIProxyDescription");
    __cxa_guard_release(&qword_1EE19DB40);
  }

  return &unk_1EE19DEC0;
}

void re::ecs2::initInfo_MXIProxyDescription(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v35[0] = 0x387BC5749897C998;
  v35[1] = "MXIProxyDescription";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE19DB48, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19DB48);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "width";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19DC48 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "height";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19DC50 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "distance";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19DC58 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "cornerRadius";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19DC60 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_uint16_t(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "widthSegmentCount";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19DC68 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_uint16_t(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "heightSegmentCount";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1200000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE19DC70 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "shouldResizeMeshInVertexShader";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1400000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE19DC78 = v33;
      __cxa_guard_release(&qword_1EE19DB48);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE19DC48;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MXIProxyDescription>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MXIProxyDescription>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MXIProxyDescription>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MXIProxyDescription>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v34 = v36;
}

double re::internal::defaultConstruct<re::ecs2::MXIProxyDescription>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.00781250185;
  *a3 = xmmword_1E306AAF0;
  *(a3 + 16) = 65537;
  *(a3 + 20) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MXIProxyDescription>(uint64_t a1)
{
  result = 0.00781250185;
  *a1 = xmmword_1E306AAF0;
  *(a1 + 16) = 65537;
  *(a1 + 20) = 0;
  return result;
}

void re::ecs2::introspect_MXIFrustumPlane(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19DB58, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19DB60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DB60))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19DD10, "MXIFrustumPlane", 1, 1, 1, 1);
      qword_1EE19DD10 = &unk_1F5D0C658;
      qword_1EE19DD50 = &re::ecs2::introspect_MXIFrustumPlane(BOOL)::enumTable;
      dword_1EE19DD20 = 9;
      __cxa_guard_release(&qword_1EE19DB60);
    }

    if (byte_1EE19DB02)
    {
      break;
    }

    byte_1EE19DB02 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19DD10, a2);
    v33 = 0xA4881A66AA5C2270;
    v34 = "MXIFrustumPlane";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19DD50;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE19DD30 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE19DB58);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Near";
      qword_1EE19DBE0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Far";
      qword_1EE19DBE8 = v32;
      __cxa_guard_release(&qword_1EE19DB58);
    }
  }
}

void re::ecs2::introspect_MXIHeadboxShape(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19DB68, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19DB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DB70))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19DD58, "MXIHeadboxShape", 1, 1, 1, 1);
      qword_1EE19DD58 = &unk_1F5D0C658;
      qword_1EE19DD98 = &re::ecs2::introspect_MXIHeadboxShape(BOOL)::enumTable;
      dword_1EE19DD68 = 9;
      __cxa_guard_release(&qword_1EE19DB70);
    }

    if (byte_1EE19DB03)
    {
      break;
    }

    byte_1EE19DB03 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19DD58, a2);
    v33 = 0xA5A19E372DD05328;
    v34 = "MXIHeadboxShape";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19DD98;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE19DD78 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE19DB68);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Sphere";
      qword_1EE19DBF0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "BiConeSDFAdaptive";
      qword_1EE19DBF8 = v32;
      __cxa_guard_release(&qword_1EE19DB68);
    }
  }
}

void *re::ecs2::allocInfo_MXIHeadboxControl(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19DB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DB78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19DF50, "MXIHeadboxControl");
    __cxa_guard_release(&qword_1EE19DB78);
  }

  return &unk_1EE19DF50;
}

void re::ecs2::initInfo_MXIHeadboxControl(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v42[0] = 0xC3B2ED1C77971D20;
  v42[1] = "MXIHeadboxControl";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE19DB80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19DB80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_MXIHeadboxShape(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "headboxShape";
      *(v8 + 16) = &qword_1EE19DD58;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19DDA0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "maxDisparity";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x400000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19DDA8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "maxErrorMarginInPixels";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE19DDB0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "minimumRadius";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xC00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE19DDB8 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_float(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "minimumForwardDistance";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE19DDC0 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_float(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "minimumBackwardDistance";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x1400000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE19DDC8 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_BOOL(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "enableAdaptiveScaling";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x1800000007;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE19DDD0 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_float(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "shearStrength";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x1C00000008;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE19DDD8 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_float(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "dynamicShearStrength";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x2000000009;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE19DDE0 = v40;
      __cxa_guard_release(&qword_1EE19DB80);
    }
  }

  *(this + 2) = 0x2400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE19DDA0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MXIHeadboxControl>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MXIHeadboxControl>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MXIHeadboxControl>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MXIHeadboxControl>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v41 = v43;
}

double re::internal::defaultConstruct<re::ecs2::MXIHeadboxControl>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 4) = 0x73E4CCCCDLL;
  result = 0.00781250183;
  *(a3 + 12) = 0x3F8000003F000000;
  *(a3 + 20) = 1065353216;
  *(a3 + 24) = 1;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MXIHeadboxControl>(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 4) = 0x73E4CCCCDLL;
  result = 0.00781250183;
  *(a1 + 12) = 0x3F8000003F000000;
  *(a1 + 20) = 1065353216;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  return result;
}

void *re::ecs2::allocInfo_MXITreatmentsControl(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19DB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DB90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19DFE0, "MXITreatmentsControl");
    __cxa_guard_release(&qword_1EE19DB90);
  }

  return &unk_1EE19DFE0;
}

void re::ecs2::initInfo_MXITreatmentsControl(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v153[0] = 0x72A7331BC812EB08;
  v153[1] = "MXITreatmentsControl";
  if (v153[0])
  {
    if (v153[0])
    {
    }
  }

  *(this + 2) = v154;
  if ((atomic_load_explicit(&qword_1EE19DB98, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19DB98);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "blurOutHeadboxRadius";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19E230 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "blurOutTransitionRadius";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19E238 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "blurOutSigma";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19E240 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "modelScale";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19E248 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "modelXYScale";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x2400000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19E250 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_uint16_t(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "backingResolution";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x2800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE19E258 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_float(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "backingBlurSigma";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x2C00000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE19E260 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_float(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "compositingMixBegin";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x3000000009;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE19E268 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_float(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "compositingMixEnd";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x340000000ALL;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE19E270 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_float(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "spillFalloffBegin";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x4C0000000BLL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE19E278 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_float(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "spillFalloffEnd";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x500000000CLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE19E280 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::introspect_float(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "spillCornerRadius";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x540000000DLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE19E288 = v53;
      v54 = re::introspectionAllocator(v53);
      re::ecs2::introspect_MXIFrustumPlane(v54, v55);
      v56 = (*(*v54 + 32))(v54, 72, 8);
      *v56 = 1;
      *(v56 + 8) = "spillFalloffPlane";
      *(v56 + 16) = &qword_1EE19DD10;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0x580000000ELL;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 0;
      qword_1EE19E290 = v56;
      v57 = re::introspectionAllocator(v56);
      v59 = re::introspect_float(1, v58);
      v60 = (*(*v57 + 32))(v57, 72, 8);
      *v60 = 1;
      *(v60 + 8) = "nearFalloffBegin";
      *(v60 + 16) = v59;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0x680000000FLL;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      qword_1EE19E298 = v60;
      v61 = re::introspectionAllocator(v60);
      v63 = re::introspect_float(1, v62);
      v64 = (*(*v61 + 32))(v61, 72, 8);
      *v64 = 1;
      *(v64 + 8) = "nearFalloffEnd";
      *(v64 + 16) = v63;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0x6C00000010;
      *(v64 + 40) = 0;
      *(v64 + 48) = 0;
      *(v64 + 56) = 0;
      *(v64 + 64) = 0;
      qword_1EE19E2A0 = v64;
      v65 = re::introspectionAllocator(v64);
      v67 = re::introspect_float(1, v66);
      v68 = (*(*v65 + 32))(v65, 72, 8);
      *v68 = 1;
      *(v68 + 8) = "nearCornerRadius";
      *(v68 + 16) = v67;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0x7000000011;
      *(v68 + 40) = 0;
      *(v68 + 48) = 0;
      *(v68 + 56) = 0;
      *(v68 + 64) = 0;
      qword_1EE19E2A8 = v68;
      v69 = re::introspectionAllocator(v68);
      v71 = re::introspect_BOOL(1, v70);
      v72 = (*(*v69 + 32))(v69, 72, 8);
      *v72 = 1;
      *(v72 + 8) = "allowReposition";
      *(v72 + 16) = v71;
      *(v72 + 24) = 0;
      *(v72 + 32) = 0x7C00000012;
      *(v72 + 40) = 0;
      *(v72 + 48) = 0;
      *(v72 + 56) = 0;
      *(v72 + 64) = 0;
      qword_1EE19E2B0 = v72;
      v73 = re::introspectionAllocator(v72);
      v75 = re::introspect_float(1, v74);
      v76 = (*(*v73 + 32))(v73, 72, 8);
      *v76 = 1;
      *(v76 + 8) = "blurOutStrength";
      *(v76 + 16) = v75;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0xC00000013;
      *(v76 + 40) = 0;
      *(v76 + 48) = 0;
      *(v76 + 56) = 0;
      *(v76 + 64) = 0;
      qword_1EE19E2B8 = v76;
      v77 = re::introspectionAllocator(v76);
      v79 = re::introspect_float(1, v78);
      v80 = (*(*v77 + 32))(v77, 72, 8);
      *v80 = 1;
      *(v80 + 8) = "collapseStrength";
      *(v80 + 16) = v79;
      *(v80 + 24) = 0;
      *(v80 + 32) = 0x8000000014;
      *(v80 + 40) = 0;
      *(v80 + 48) = 0;
      *(v80 + 56) = 0;
      *(v80 + 64) = 0;
      qword_1EE19E2C0 = v80;
      v81 = re::introspectionAllocator(v80);
      v83 = re::introspect_BOOL(1, v82);
      v84 = (*(*v81 + 32))(v81, 72, 8);
      *v84 = 1;
      *(v84 + 8) = "enableFadeOut";
      *(v84 + 16) = v83;
      *(v84 + 24) = 0;
      *(v84 + 32) = 0x1000000015;
      *(v84 + 40) = 0;
      *(v84 + 48) = 0;
      *(v84 + 56) = 0;
      *(v84 + 64) = 0;
      qword_1EE19E2C8 = v84;
      v85 = re::introspectionAllocator(v84);
      v87 = re::introspect_float(1, v86);
      v88 = (*(*v85 + 32))(v85, 72, 8);
      *v88 = 1;
      *(v88 + 8) = "fadeOutHeadboxRadius";
      *(v88 + 16) = v87;
      *(v88 + 24) = 0;
      *(v88 + 32) = 0x1400000016;
      *(v88 + 40) = 0;
      *(v88 + 48) = 0;
      *(v88 + 56) = 0;
      *(v88 + 64) = 0;
      qword_1EE19E2D0 = v88;
      v89 = re::introspectionAllocator(v88);
      v91 = re::introspect_float(1, v90);
      v92 = (*(*v89 + 32))(v89, 72, 8);
      *v92 = 1;
      *(v92 + 8) = "fadeOutTransitionRadius";
      *(v92 + 16) = v91;
      *(v92 + 24) = 0;
      *(v92 + 32) = 0x1800000017;
      *(v92 + 40) = 0;
      *(v92 + 48) = 0;
      *(v92 + 56) = 0;
      *(v92 + 64) = 0;
      qword_1EE19E2D8 = v92;
      v93 = re::introspectionAllocator(v92);
      v95 = re::introspect_float(1, v94);
      v96 = (*(*v93 + 32))(v93, 72, 8);
      *v96 = 1;
      *(v96 + 8) = "fadeOutStrengthScalar";
      *(v96 + 16) = v95;
      *(v96 + 24) = 0;
      *(v96 + 32) = 0x1C00000018;
      *(v96 + 40) = 0;
      *(v96 + 48) = 0;
      *(v96 + 56) = 0;
      *(v96 + 64) = 0;
      qword_1EE19E2E0 = v96;
      v97 = re::introspectionAllocator(v96);
      v99 = re::introspect_float(1, v98);
      v100 = (*(*v97 + 32))(v97, 72, 8);
      *v100 = 1;
      *(v100 + 8) = "fadeOutStrength";
      *(v100 + 16) = v99;
      *(v100 + 24) = 0;
      *(v100 + 32) = 0x8400000019;
      *(v100 + 40) = 0;
      *(v100 + 48) = 0;
      *(v100 + 56) = 0;
      *(v100 + 64) = 0;
      qword_1EE19E2E8 = v100;
      v101 = re::introspectionAllocator(v100);
      re::ecs2::introspect_MXIHeadboxShape(v101, v102);
      v103 = (*(*v101 + 32))(v101, 72, 8);
      *v103 = 1;
      *(v103 + 8) = "headboxShape";
      *(v103 + 16) = &qword_1EE19DD58;
      *(v103 + 24) = 0;
      *(v103 + 32) = 0x880000001ALL;
      *(v103 + 40) = 0;
      *(v103 + 48) = 0;
      *(v103 + 56) = 0;
      *(v103 + 64) = 0;
      qword_1EE19E2F0 = v103;
      v104 = re::introspectionAllocator(v103);
      v106 = re::introspect_float(1, v105);
      v107 = (*(*v104 + 32))(v104, 72, 8);
      *v107 = 1;
      *(v107 + 8) = "headboxShapeConeMaxDisparity";
      *(v107 + 16) = v106;
      *(v107 + 24) = 0;
      *(v107 + 32) = 0x8C0000001BLL;
      *(v107 + 40) = 0;
      *(v107 + 48) = 0;
      *(v107 + 56) = 0;
      *(v107 + 64) = 0;
      qword_1EE19E2F8 = v107;
      v108 = re::introspectionAllocator(v107);
      v110 = re::introspect_float(1, v109);
      v111 = (*(*v108 + 32))(v108, 72, 8);
      *v111 = 1;
      *(v111 + 8) = "sceneTargetVerticalFoVVisibleRegion";
      *(v111 + 16) = v110;
      *(v111 + 24) = 0;
      *(v111 + 32) = 0x900000001CLL;
      *(v111 + 40) = 0;
      *(v111 + 48) = 0;
      *(v111 + 56) = 0;
      *(v111 + 64) = 0;
      qword_1EE19E300 = v111;
      v112 = re::introspectionAllocator(v111);
      v114 = re::introspect_BOOL(1, v113);
      v115 = (*(*v112 + 32))(v112, 72, 8);
      *v115 = 1;
      *(v115 + 8) = "sceneScaleUseLowerBound";
      *(v115 + 16) = v114;
      *(v115 + 24) = 0;
      *(v115 + 32) = 0x940000001DLL;
      *(v115 + 40) = 0;
      *(v115 + 48) = 0;
      *(v115 + 56) = 0;
      *(v115 + 64) = 0;
      qword_1EE19E308 = v115;
      v116 = re::introspectionAllocator(v115);
      v118 = re::introspect_float(1, v117);
      v119 = (*(*v116 + 32))(v116, 72, 8);
      *v119 = 1;
      *(v119 + 8) = "nearPlaneSizeScalar";
      *(v119 + 16) = v118;
      *(v119 + 24) = 0;
      *(v119 + 32) = 0x9C0000001ELL;
      *(v119 + 40) = 0;
      *(v119 + 48) = 0;
      *(v119 + 56) = 0;
      *(v119 + 64) = 0;
      qword_1EE19E310 = v119;
      v120 = re::introspectionAllocator(v119);
      v122 = re::introspect_float(1, v121);
      v123 = (*(*v120 + 32))(v120, 72, 8);
      *v123 = 1;
      *(v123 + 8) = "spillFalloffBlend";
      *(v123 + 16) = v122;
      *(v123 + 24) = 0;
      *(v123 + 32) = 0x480000001FLL;
      *(v123 + 40) = 0;
      *(v123 + 48) = 0;
      *(v123 + 56) = 0;
      *(v123 + 64) = 0;
      qword_1EE19E318 = v123;
      v124 = re::introspectionAllocator(v123);
      v125 = v124;
      v126 = qword_1EE19DB88;
      if (!qword_1EE19DB88)
      {
        v126 = re::ecs2::allocInfo_MXIHeadboxControl(v124);
        qword_1EE19DB88 = v126;
        re::ecs2::initInfo_MXIHeadboxControl(v126, v127);
      }

      v128 = (*(*v125 + 32))(v125, 72, 8);
      *v128 = 1;
      *(v128 + 8) = "headboxControl";
      *(v128 + 16) = v126;
      *(v128 + 24) = 0;
      *(v128 + 32) = 0xD400000020;
      *(v128 + 40) = 0;
      *(v128 + 48) = 0;
      *(v128 + 56) = 0;
      *(v128 + 64) = 0;
      qword_1EE19E320 = v128;
      v129 = re::introspectionAllocator(v128);
      v130 = re::introspect_Vector3F(1);
      v131 = (*(*v129 + 32))(v129, 72, 8);
      *v131 = 1;
      *(v131 + 8) = "billboardToPosition";
      *(v131 + 16) = v130;
      *(v131 + 24) = 0;
      *(v131 + 32) = 0xB000000021;
      *(v131 + 40) = 0;
      *(v131 + 48) = 0;
      *(v131 + 56) = 0;
      *(v131 + 64) = 0;
      qword_1EE19E328 = v131;
      v132 = re::introspectionAllocator(v131);
      v134 = re::introspect_float(1, v133);
      v135 = (*(*v132 + 32))(v132, 72, 8);
      *v135 = 1;
      *(v135 + 8) = "billboardFadeBlend";
      *(v135 + 16) = v134;
      *(v135 + 24) = 0;
      *(v135 + 32) = 0xC000000022;
      *(v135 + 40) = 0;
      *(v135 + 48) = 0;
      *(v135 + 56) = 0;
      *(v135 + 64) = 0;
      qword_1EE19E330 = v135;
      v136 = re::introspectionAllocator(v135);
      v138 = re::introspect_float(1, v137);
      v139 = (*(*v136 + 32))(v136, 72, 8);
      *v139 = 1;
      *(v139 + 8) = "immersiveReducedExtent";
      *(v139 + 16) = v138;
      *(v139 + 24) = 0;
      *(v139 + 32) = 0x4000000023;
      *(v139 + 40) = 0;
      *(v139 + 48) = 0;
      *(v139 + 56) = 0;
      *(v139 + 64) = 0;
      qword_1EE19E338 = v139;
      v140 = re::introspectionAllocator(v139);
      v142 = re::introspect_float(1, v141);
      v143 = (*(*v140 + 32))(v140, 72, 8);
      *v143 = 1;
      *(v143 + 8) = "spillFalloffExp";
      *(v143 + 16) = v142;
      *(v143 + 24) = 0;
      *(v143 + 32) = 0x4400000024;
      *(v143 + 40) = 0;
      *(v143 + 48) = 0;
      *(v143 + 56) = 0;
      *(v143 + 64) = 0;
      qword_1EE19E340 = v143;
      v144 = re::introspectionAllocator(v143);
      v146 = re::introspect_float(1, v145);
      v147 = (*(*v144 + 32))(v144, 72, 8);
      *v147 = 1;
      *(v147 + 8) = "immersiveScaleTransition";
      *(v147 + 16) = v146;
      *(v147 + 24) = 0;
      *(v147 + 32) = 0x9800000025;
      *(v147 + 40) = 0;
      *(v147 + 48) = 0;
      *(v147 + 56) = 0;
      *(v147 + 64) = 0;
      qword_1EE19E348 = v147;
      v148 = re::introspectionAllocator(v147);
      v150 = re::introspect_BOOL(1, v149);
      v151 = (*(*v148 + 32))(v148, 72, 8);
      *v151 = 1;
      *(v151 + 8) = "enableGlowrayStarburstMitigation";
      *(v151 + 16) = v150;
      *(v151 + 24) = 0;
      *(v151 + 32) = 0x6400000026;
      *(v151 + 40) = 0;
      *(v151 + 48) = 0;
      *(v151 + 56) = 0;
      *(v151 + 64) = 0;
      qword_1EE19E350 = v151;
      __cxa_guard_release(&qword_1EE19DB98);
    }
  }

  *(this + 2) = 0x10000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 37;
  *(this + 8) = &qword_1EE19E230;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MXITreatmentsControl>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MXITreatmentsControl>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MXITreatmentsControl>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MXITreatmentsControl>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v152 = v154;
}

double re::internal::defaultConstruct<re::ecs2::MXITreatmentsControl>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = xmmword_1E306AB00;
  *(a3 + 16) = 0;
  *(a3 + 20) = xmmword_1E306AB10;
  *(a3 + 36) = 1065353216;
  *(a3 + 40) = 64;
  *(a3 + 44) = xmmword_1E306AB20;
  *(a3 + 60) = 10;
  *(a3 + 64) = xmmword_1E306AB30;
  *(a3 + 80) = 0x3DCCCCCD3E99999ALL;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0x10000000ALL;
  *(a3 + 100) = 0;
  *(a3 + 104) = 0x3CF5C28FBDCCCCCDLL;
  *(a3 + 112) = 1041865114;
  *(a3 + 116) = 0;
  *(a3 + 120) = 10;
  *(a3 + 124) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 140) = 0x3F8000003E4CCCCDLL;
  *(a3 + 148) = 1;
  *(a3 + 152) = 0x3F80000000000000;
  *(a3 + 160) = 0;
  *(a3 + 192) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 196) = 1045220557;
  *(a3 + 204) = 1;
  *(a3 + 208) = 1036831949;
  *(a3 + 212) = 1;
  *(a3 + 216) = 0x73E4CCCCDLL;
  result = 0.00781250183;
  *(a3 + 224) = 0x3F8000003F000000;
  *(a3 + 232) = 1065353216;
  *(a3 + 236) = 1;
  *(a3 + 240) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MXITreatmentsControl>(uint64_t a1)
{
  *a1 = xmmword_1E306AB00;
  *(a1 + 16) = 0;
  *(a1 + 20) = xmmword_1E306AB10;
  *(a1 + 36) = 1065353216;
  *(a1 + 40) = 64;
  *(a1 + 44) = xmmword_1E306AB20;
  *(a1 + 60) = 10;
  *(a1 + 64) = xmmword_1E306AB30;
  *(a1 + 80) = 0x3DCCCCCD3E99999ALL;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x10000000ALL;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0x3CF5C28FBDCCCCCDLL;
  *(a1 + 112) = 1041865114;
  *(a1 + 116) = 0;
  *(a1 + 120) = 10;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x3F8000003E4CCCCDLL;
  *(a1 + 148) = 1;
  *(a1 + 152) = 0x3F80000000000000;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 196) = 1045220557;
  *(a1 + 204) = 1;
  *(a1 + 208) = 1036831949;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0x73E4CCCCDLL;
  result = 0.00781250183;
  *(a1 + 224) = 0x3F8000003F000000;
  *(a1 + 232) = 1065353216;
  *(a1 + 236) = 1;
  *(a1 + 240) = 0;
  return result;
}

void *re::ecs2::allocInfo_MXISceneProperties(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19DBA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DBA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19E070, "MXISceneProperties");
    __cxa_guard_release(&qword_1EE19DBA8);
  }

  return &unk_1EE19E070;
}

void re::ecs2::initInfo_MXISceneProperties(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v42[0] = 0x8553D5681B4D2602;
  v42[1] = "MXISceneProperties";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE19DBB0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19DBB0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_MXISceneType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "sceneType";
      *(v8 + 16) = &qword_1EE19DC80;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19DDE8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "verticalFoV";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x400000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19DDF0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "aspectRatio";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE19DDF8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "nearDistance";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xC00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE19DE00 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_float(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "farDistance";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE19DE08 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_uint32_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "layerCount";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x1400000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE19DE10 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_uint32_t(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "resolutionWidth";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x1800000007;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE19DE18 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_uint32_t(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "resolutionHeight";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x1C00000008;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE19DE20 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_BOOL(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "premultipliedAlpha";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x2000000009;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE19DE28 = v40;
      __cxa_guard_release(&qword_1EE19DBB0);
    }
  }

  *(this + 2) = 0x2400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE19DDE8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MXISceneProperties>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MXISceneProperties>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MXISceneProperties>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MXISceneProperties>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v41 = v43;
}

double re::internal::defaultConstruct<re::ecs2::MXISceneProperties>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 4) = xmmword_1E306AB40;
  *&result = 0x80000000040;
  *(a3 + 20) = 0x80000000040;
  *(a3 + 28) = 2048;
  *(a3 + 32) = 1;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MXISceneProperties>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = xmmword_1E306AB40;
  *&result = 0x80000000040;
  *(a1 + 20) = 0x80000000040;
  *(a1 + 28) = 2048;
  *(a1 + 32) = 1;
  return result;
}

void *re::ecs2::allocInfo_MXIComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19DBC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DBC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19E100, "MXIComponent");
    __cxa_guard_release(&qword_1EE19DBC8);
  }

  return &unk_1EE19E100;
}

void re::ecs2::initInfo_MXIComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v87[0] = 0x385C120A97FD5D3ELL;
  v87[1] = "MXIComponent";
  if (v87[0])
  {
    if (v87[0])
    {
    }
  }

  *(this + 2) = v88;
  if ((atomic_load_explicit(&qword_1EE19DBC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19DBC0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19E190 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_meshHandle";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x26000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19E198 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_textureHandle";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2C000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE19E1A0 = v16;
      v17 = re::introspectionAllocator(v16);
      re::ecs2::introspect_MXISceneType(v17, v18);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "m_sceneType";
      *(v19 + 16) = &qword_1EE19DC80;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x30000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE19E1A8 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_float(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_verticalFoV";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x30400000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE19E1B0 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_float(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "m_aspectRatio";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x30800000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE19E1B8 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_BOOL(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "renderTwoPass";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x5000000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE19E1C0 = v31;
      v32 = re::introspectionAllocator(v31);
      v33 = v32;
      v34 = qword_1EE19DB50;
      if (!qword_1EE19DB50)
      {
        v34 = re::ecs2::allocInfo_MXIProxyDescription(v32);
        qword_1EE19DB50 = v34;
        re::ecs2::initInfo_MXIProxyDescription(v34, v35);
      }

      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "proxyDescription";
      *(v36 + 16) = v34;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x8400000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE19E1C8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = v37;
      v39 = qword_1EE19DB38;
      if (!qword_1EE19DB38)
      {
        v39 = re::ecs2::allocInfo_MXITwoPassOffscreenOptions(v37);
        qword_1EE19DB38 = v39;
        re::ecs2::initInfo_MXITwoPassOffscreenOptions(v39, v40);
      }

      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "twoPassOffscreenOptions";
      *(v41 + 16) = v39;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x7000000008;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE19E1D0 = v41;
      v42 = re::introspectionAllocator(v41);
      re::ecs2::introspect_MXISplitMode(v42, v43);
      v44 = (*(*v42 + 32))(v42, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "splitMode";
      *(v44 + 16) = &qword_1EE19DCC8;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x5200000009;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE19E1D8 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_float(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "splitDepth";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x540000000ALL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE19E1E0 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = v49;
      v51 = qword_1EE19DBA0;
      if (!qword_1EE19DBA0)
      {
        v51 = re::ecs2::allocInfo_MXITreatmentsControl(v49);
        qword_1EE19DBA0 = v51;
        re::ecs2::initInfo_MXITreatmentsControl(v51, v52);
      }

      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "treatmentsControl";
      *(v53 + 16) = v51;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x1300000000BLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE19E1E8 = v53;
      v54 = re::introspectionAllocator(v53);
      v55 = v54;
      v56 = qword_1EE19DBB8;
      if (!qword_1EE19DBB8)
      {
        v56 = re::ecs2::allocInfo_MXISceneProperties(v54);
        qword_1EE19DBB8 = v56;
        re::ecs2::initInfo_MXISceneProperties(v56, v57);
      }

      v58 = (*(*v55 + 32))(v55, 72, 8);
      *v58 = 1;
      *(v58 + 8) = "sceneProperties";
      *(v58 + 16) = v56;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0x2300000000CLL;
      *(v58 + 40) = 0;
      *(v58 + 48) = 0;
      *(v58 + 56) = 0;
      *(v58 + 64) = 0;
      qword_1EE19E1F0 = v58;
      v59 = re::introspectionAllocator(v58);
      v61 = re::introspect_BOOL(1, v60);
      v62 = (*(*v59 + 32))(v59, 72, 8);
      *v62 = 1;
      *(v62 + 8) = "performSRGBConversion";
      *(v62 + 16) = v61;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0x2580000000DLL;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = 0;
      *(v62 + 64) = 0;
      qword_1EE19E1F8 = v62;
      v63 = re::introspectionAllocator(v62);
      v65 = re::introspect_float(1, v64);
      v66 = (*(*v63 + 32))(v63, 72, 8);
      *v66 = 1;
      *(v66 + 8) = "alphaThreshold";
      *(v66 + 16) = v65;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0x25C0000000ELL;
      *(v66 + 40) = 0;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      *(v66 + 64) = 0;
      qword_1EE19E200 = v66;
      v67 = re::introspectionAllocator(v66);
      v69 = re::introspect_BOOL(1, v68);
      v70 = (*(*v67 + 32))(v67, 72, 8);
      *v70 = 1;
      *(v70 + 8) = "enableCroppedForegroundTexture";
      *(v70 + 16) = v69;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0x580000000FLL;
      *(v70 + 40) = 0;
      *(v70 + 48) = 0;
      *(v70 + 56) = 0;
      *(v70 + 64) = 0;
      qword_1EE19E208 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = re::introspect_Vector4F(1);
      v73 = (*(*v71 + 32))(v71, 72, 8);
      *v73 = 1;
      *(v73 + 8) = "foregroundRect";
      *(v73 + 16) = v72;
      *(v73 + 24) = 0;
      *(v73 + 32) = 0x6000000010;
      *(v73 + 40) = 0;
      *(v73 + 48) = 0;
      *(v73 + 56) = 0;
      *(v73 + 64) = 0;
      qword_1EE19E210 = v73;
      v74 = re::introspectionAllocator(v73);
      v76 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v75);
      v77 = (*(*v74 + 32))(v74, 72, 8);
      *v77 = 1;
      *(v77 + 8) = "m_textureHandles";
      *(v77 + 16) = v76;
      *(v77 + 24) = 0;
      *(v77 + 32) = 0x2D800000011;
      *(v77 + 40) = 0;
      *(v77 + 48) = 0;
      *(v77 + 56) = 0;
      *(v77 + 64) = 0;
      qword_1EE19E218 = v77;
      v78 = re::introspectionAllocator(v77);
      v80 = re::introspect_AssetHandle(1, v79);
      v81 = (*(*v78 + 32))(v78, 72, 8);
      *v81 = 1;
      *(v81 + 8) = "backgroundTextureHandle";
      *(v81 + 16) = v80;
      *(v81 + 24) = 0;
      *(v81 + 32) = 0x2000000012;
      *(v81 + 40) = 0;
      *(v81 + 48) = 0;
      *(v81 + 56) = 0;
      *(v81 + 64) = 0;
      qword_1EE19E220 = v81;
      v82 = re::introspectionAllocator(v81);
      v84 = re::introspect_float(1, v83);
      v85 = (*(*v82 + 32))(v82, 72, 8);
      *v85 = 1;
      *(v85 + 8) = "signedDistanceToHeadboxBiCone";
      *(v85 + 16) = v84;
      *(v85 + 24) = 0;
      *(v85 + 32) = 0x25400000013;
      *(v85 + 40) = 0;
      *(v85 + 48) = 0;
      *(v85 + 56) = 0;
      *(v85 + 64) = 0;
      qword_1EE19E228 = v85;
      __cxa_guard_release(&qword_1EE19DBC0);
    }
  }

  *(this + 2) = 0x32000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 20;
  *(this + 8) = &qword_1EE19E190;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MXIComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MXIComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MXIComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MXIComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs212MXIComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v86 = v88;
}

re::ecs2::MXIComponent *re::ecs2::MXIComponent::MXIComponent(re::ecs2::MXIComponent *this)
{
  v2 = (this + 324);
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1E10;
  *(v3 + 84) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 79) = 0;
  *(v3 + 96) = xmmword_1E3063230;
  *(v3 + 112) = 0x13F800000;
  *(v3 + 120) = 257;
  *(v3 + 124) = xmmword_1E306AB50;
  *(v3 + 140) = 1056964608;
  *(v3 + 148) = 65537;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  v4 = MEMORY[0x1E69E9B18];
  v5 = *MEMORY[0x1E69E9B18];
  v6 = *(MEMORY[0x1E69E9B18] + 16);
  v7 = *(MEMORY[0x1E69E9B18] + 48);
  *(v3 + 208) = *(MEMORY[0x1E69E9B18] + 32);
  *(v3 + 224) = v7;
  v8 = v4[1];
  v9 = v4[2];
  v10 = *v4;
  *(v3 + 176) = v5;
  *(v3 + 192) = v8;
  v11 = v4[3];
  *(v3 + 272) = v9;
  *(v3 + 288) = v11;
  *(v3 + 240) = v10;
  *(v3 + 256) = v6;
  *(v3 + 304) = xmmword_1E306AB00;
  *(v3 + 320) = 0;
  *v2 = xmmword_1E306AB10;
  *(v3 + 340) = 1065353216;
  *(v3 + 344) = 64;
  *(v2 + 24) = xmmword_1E306AB20;
  *(v3 + 364) = 10;
  *(v3 + 368) = xmmword_1E306AB30;
  *(v3 + 384) = 0x3DCCCCCD3E99999ALL;
  *(v3 + 392) = 0;
  *(v3 + 396) = 0x10000000ALL;
  *(v3 + 404) = 0;
  *(v3 + 408) = 0x3CF5C28FBDCCCCCDLL;
  *(v3 + 416) = 1041865114;
  *(v3 + 420) = 0;
  *(v3 + 424) = 10;
  *(v3 + 428) = 0;
  *(v3 + 440) = 0;
  *(v3 + 432) = 0;
  *(v3 + 444) = 0x3F8000003E4CCCCDLL;
  *(v3 + 452) = 1;
  *(v3 + 456) = 0x3F80000000000000;
  *(v3 + 464) = 0;
  *(v3 + 496) = 0;
  *(v3 + 480) = 0;
  *(v3 + 488) = 0;
  *(v3 + 500) = 1045220557;
  *(v3 + 508) = 1;
  *(v3 + 512) = 1036831949;
  *(v3 + 516) = 1;
  *(v3 + 520) = 0x73E4CCCCDLL;
  *(v3 + 528) = 0x3F8000003F000000;
  *(v3 + 536) = 1065353216;
  *(v3 + 540) = 1;
  *(v3 + 544) = 0;
  *(v3 + 560) = 0;
  v2[15] = xmmword_1E306AB40;
  *(v3 + 580) = 64;
  *(v3 + 584) = 0x80000000800;
  *(v3 + 592) = 1;
  *(v3 + 596) = -1082130432;
  *(v3 + 600) = 0;
  *(v3 + 684) = 0;
  *(v3 + 652) = 0u;
  *(v3 + 668) = 0u;
  *(v3 + 620) = 0u;
  *(v3 + 636) = 0u;
  *(v3 + 604) = 0u;
  *(v3 + 692) = 0x7FFFFFFFLL;
  *(v3 + 760) = 0;
  *(v3 + 768) = 0;
  *(v3 + 752) = 0;
  *(v3 + 720) = 0u;
  *(v3 + 736) = 0u;
  *(v3 + 704) = 0u;
  *(v3 + 772) = 0x3F8000003FC90FDBLL;
  inited = objc_initWeak((v3 + 784), 0);
  v13 = *re::mxiLogObjects(inited);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEBUG, "MXIComponent init", v15, 2u);
  }

  return this;
}

void re::ecs2::MXIComponent::~MXIComponent(re::ecs2::MXIComponent *this)
{
  *this = &unk_1F5CD1E10;
  v2 = *re::mxiLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEBUG, "MXIComponent dealloc", v3, 2u);
  }

  objc_destroyWeak(this + 98);
  *(this + 98) = 0;
  re::DynamicArray<re::AssetHandle>::deinit(this + 728);
  re::AssetHandle::~AssetHandle((this + 704));
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 82);
  re::AssetHandle::~AssetHandle((this + 632));
  re::AssetHandle::~AssetHandle((this + 608));
  re::AssetHandle::~AssetHandle((this + 56));
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::MXIComponent::~MXIComponent(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::MXIComponent::setShaderGraphMaterialTextureParameter(uint64_t a1, const re::DynamicString *a2, const re::AssetHandle *a3)
{
  if (*(a3 + 1))
  {
    return re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1 + 656, a2, a3);
  }

  else
  {
    return re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 656, a2);
  }
}

BOOL re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  return re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(a1, v6);
}

uint64_t re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, const re::AssetHandle *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::AssetHandle const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::AssetHandle::operator=(*(a1 + 16) + 72 * v7 + 40, a3);
}

re::DynamicString *re::ecs2::MXIComponent::copyShaderGraphMaterialTextureParameterNames@<X0>(re::DynamicString *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = *(this + 172);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 84);
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
        LODWORD(v5) = *(this + 172);
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
    this = re::DynamicArray<re::DynamicString>::add(a2, (*(v2 + 84) + 72 * v5 + 8));
    v8 = *(v2 + 172);
    if (v8 <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    while (v8 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v2 + 84) + 72 * v5) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v5) = v8;
LABEL_14:
    ;
  }

  return this;
}

uint64_t re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 72 * v7 + 40;
  }
}

id *re::ArcWeakPtr<re::ecs2::UISortingComponent>::operator=(id *location, id *a2)
{
  if (a2 != location)
  {
    objc_destroyWeak(location);
    *location = 0;
    objc_copyWeak(location, a2);
  }

  return location;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs212MXIComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

double re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
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

void re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 10);
    re::DynamicString::deinit((a1 + 2));

    re::AssetHandle::~AssetHandle(v2);
  }
}

BOOL re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
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

    re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((v6 + 72 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 72 * v9) = *(*(a1 + 16) + 72 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = re::DynamicString::operator==(v10 + 72 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 72 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 72 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 72 * v12) & 0x7FFFFFFF;
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

uint64_t re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::AssetHandle const&>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, const re::AssetHandle *a4)
{
  v7 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  re::AssetHandle::AssetHandle((v7 + 40), a4);
  ++*(a1 + 40);
  return v7 + 40;
}

uint64_t re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 32) % *(v4 + 24));
        v8 = (*(a2 + 16) + v6);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *v8;
        v9 = *(v8 - 2);
        *(result + 8) = *(v8 - 3);
        *(v8 - 3) = 0;
        v10 = *(v8 - 1);
        *v8 = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        *(v8 - 2) = v12;
        *(v8 - 1) = v11;
        v13 = (*(a2 + 16) + v6);
        *(result + 40) = 0;
        *(result + 48) = 0;
        *(result + 56) = 0;
        *(result + 48) = v13[2];
        v13[2] = 0;
        v14 = *(result + 40);
        *(result + 40) = 0;
        *(result + 40) = v13[1];
        v13[1] = v14;
        v15 = *(result + 56);
        *(result + 56) = v13[3];
        v13[3] = v15;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 72;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::ecs2::CARESortingManager::optionalSortingPlaneFrom(float32x4_t *a1, uint64_t a2, re::ecs2::SortingTransformCache *a3)
{
  result = re::ecs2::SortingTransformCache::getOrRecomputeWorldMatrixAndInverse(a3, a2);
  v6 = *(result + 32);
  v7 = vmulq_f32(v6, v6);
  if (fabsf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))) >= 1.0e-10 && (*&v8 = *&v7.i32[2] + vaddv_f32(*v7.i8), v9 = vrsqrte_f32(v8), v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9))), v11 = vmulq_n_f32(v6, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]), v12 = v11.i32[2], v19 = v11.i64[0], v20 = *(result + 32), v16 = *result, v17 = *(result + 16), v18 = *(result + 48), (result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0))
  {
    v13 = vcgtq_f32(*(result + 48), *(result + 64));
    v13.i32[3] = v13.i32[2];
    if ((vmaxvq_u32(v13) & 0x80000000) != 0)
    {
      v14 = *(result + 40) * 0.5;
    }

    else
    {
      LODWORD(v14) = *(result + 72);
    }

    v15 = vaddq_f32(v18, vmlaq_n_f32(vmlaq_f32(vmulq_f32(v16, 0), 0, v17), v20, v14));
    a1->i8[0] = 1;
    a1[1].i64[0] = v19;
    a1[1].i32[2] = v12;
    a1[2] = vdivq_f32(v15, vdupq_laneq_s32(v15, 3));
  }

  else
  {
    a1->i8[0] = 0;
  }

  return result;
}

uint64_t re::ecs2::SortingTransformCache::getOrRecomputeWorldMatrixAndInverse(re::ecs2::SortingTransformCache *this, const re::ecs2::Entity *a2)
{
  v16 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(this + 8, &v16, v3 ^ (v3 >> 31), &v11);
  v4 = v11.u32[3];
  if (v11.i32[3] != 0x7FFFFFFF)
  {
    return *(this + 3) + 160 * v4 + 16;
  }

  memset(&v15, 0, sizeof(v15));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  re::TransformService::worldMatrixForRendering(*this, v16, 0, &v11);
  v20.columns[2] = v13;
  v20.columns[3] = v14;
  v20.columns[0] = v11;
  v20.columns[1] = v12;
  v15 = __invert_f4(v20);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(this + 8, &v16, (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27))) >> 31), &v17);
  v4 = HIDWORD(v18);
  if (HIDWORD(v18) != 0x7FFFFFFF)
  {
    return *(this + 3) + 160 * v4 + 16;
  }

  v5 = re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(this + 8, v18, v17);
  *(v5 + 8) = v16;
  result = v5 + 16;
  v7 = v15.columns[1];
  *(v5 + 80) = v15.columns[0];
  *(v5 + 96) = v7;
  v8 = v15.columns[3];
  *(v5 + 112) = v15.columns[2];
  *(v5 + 128) = v8;
  v9 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v9;
  v10 = v14;
  *(v5 + 48) = v13;
  *(v5 + 64) = v10;
  ++*(this + 12);
  return result;
}

uint64_t re::ecs2::CARESortingManager::CARESortingManager(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CD1E98;
  *(a1 + 8) = 0u;
  v31 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = 0u;
  v5 = a1 + 104;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 152) = 0u;
  v6 = a1 + 152;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0u;
  v7 = a1 + 248;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  v8 = a1 + 296;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0x7FFFFFFFLL;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  v9 = a1 + 344;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0x7FFFFFFFLL;
  *(a1 + 424) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 428) = 0x7FFFFFFFLL;
  v10 = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  *(v7 + 192) = v10;
  *(v7 + 216) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 232) = 0x7FFFFFFF00000000;
  *(v7 + 240) = 0;
  *(v7 + 248) = a2;
  *(v7 + 296) = 0;
  *(v7 + 304) = 0;
  *(v7 + 288) = 0;
  *(v7 + 256) = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v11 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(v7 + 248));
  *(v7 + 264) = v11;
  if (!v11)
  {
    v12 = *re::sortingLogObjects(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "No RenderManager found, CARE sorting will not happen.", buf, 2u);
    }
  }

  v13 = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(*(a1 + 496));
  *(a1 + 520) = v13;
  if (!v13)
  {
    v14 = *re::sortingLogObjects(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "No portal service found, CARE sorting will consider all entities to be in the same world.", buf, 2u);
    }
  }

  v15 = re::ServiceLocator::serviceOrNull<re::TransformService>(*(a1 + 496));
  *(a1 + 528) = v15;
  if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
  {
    dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
  }

  dword_1EE19E35C = re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
  if (re::CARESortingDefaults::distanceThreshold(void)::onceToken != -1)
  {
    dispatch_once(&re::CARESortingDefaults::distanceThreshold(void)::onceToken, &__block_literal_global_4);
  }

  dword_1EE19E360 = re::CARESortingDefaults::distanceThreshold(void)::sortingDistanceThreshold;
  if (re::CARESortingDefaults::displacementOrderingThreshold(void)::onceToken != -1)
  {
    dispatch_once(&re::CARESortingDefaults::displacementOrderingThreshold(void)::onceToken, &__block_literal_global_8_0);
  }

  dword_1EE19E364 = re::CARESortingDefaults::displacementOrderingThreshold(void)::sortingDisplacementOrderingThreshold;
  v16 = *&dword_1EE19E35C;
  v17 = *re::sortingLogObjects(v15);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v18)
  {
    v19 = acosf(1.0 - v16);
    *buf = 134218496;
    v33 = *&dword_1EE19E35C;
    v34 = 2048;
    v35 = v19;
    v36 = 2048;
    v37 = (v19 * 180.0) / 3.14159265;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_INFO, "Sorting NormalThreshold: %f %frad (%fdeg)", buf, 0x20u);
  }

  v20 = *re::sortingLogObjects(v18);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v21)
  {
    *buf = 134217984;
    v33 = *&dword_1EE19E360;
    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_INFO, "Sorting DistanceThreshold: %fm", buf, 0xCu);
  }

  v22 = *re::sortingLogObjects(v21);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
  if (v23)
  {
    *buf = 134217984;
    v33 = *&dword_1EE19E364;
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_INFO, "Sorting DisplacementOrderingThreshold: %fm", buf, 0xCu);
  }

  re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::ecs2::CARESortingManager &,re::ServiceLocator &>(v4, &re::kDefaultWorldRootId, a1);
  re::ecs2::CARESortingDebugging::m_dirtyTransformEntityCount = 0;
  re::ecs2::CARESortingDebugging::m_hierarchicalDirtiedTransformEntityCount = 0;
  re::ecs2::CARESortingDebugging::m_dirtyAnchorEntityCount = 0;
  re::ecs2::CARESortingDebugging::m_dirtyInactiveEntities = 0;
  re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups = 0;
  re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups = 0;
  re::ecs2::CARESortingDebugging::m_sortGroupsResorted = 0;
  re::ecs2::CARESortingDebugging::s_codirGroupsWithDirtyEntities = 0;
  re::ecs2::CARESortingDebugging::m_sortGroupsRecalculatedOverrides = 0;
  re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverrides = 0;
  re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied = 0;
  re::ecs2::CARESortingDebugging::m_highestPriorityInGroup = 0;
  re::ecs2::CARESortingDebugging::m_highestPriorityGroupId = 0;
  re::ecs2::CARESortingDebugging::m_entitiesActivated = 0;
  re::ecs2::CARESortingDebugging::m_entitiesDeactivated = 0;
  re::ecs2::CARESortingDebugging::m_uiSortingComponentActivated = 0;
  re::ecs2::CARESortingDebugging::m_uiSortingComponentDeactivated = 0;
  return a1;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::PortalService>(BOOL)::info = re::ecs2::introspect_PortalService(0);
  }

  v2 = re::introspect<re::ecs2::PortalService>(BOOL)::info;
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

void re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_129, 4 * v10);
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

void re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 184 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_129, 4 * v10);
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

void re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::ecs2::CARESortingManager &,re::ServiceLocator &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v14);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v15, v14);
    v8 = *a2;
    *(v7 + 16) = 0u;
    v9 = v7 + 16;
    *(v7 + 8) = v8;
    *(v7 + 48) = 0;
    *(v7 + 32) = 0u;
    *(v7 + 52) = 0x7FFFFFFFLL;
    *(v7 + 96) = 0;
    *(v7 + 80) = 0u;
    *(v7 + 64) = 0u;
    v10 = v7 + 64;
    *(v7 + 100) = 0x7FFFFFFFLL;
    *(v7 + 144) = 0;
    *(v7 + 128) = 0u;
    *(v7 + 112) = 0u;
    v11 = v7 + 112;
    *(v7 + 148) = 0x7FFFFFFFLL;
    *(v7 + 160) = a3;
    *(v7 + 168) = a3 + 440;
    ++*(a1 + 40);
  }
}

void re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 80 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_129, 4 * v10);
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

void re::ecs2::WorldSortingState::recomputeCodirectionalGroupAverages(re::ecs2::WorldSortingState *this, float32x4_t a2, double a3, double a4, double a5, float32x4_t a6)
{
  v7 = *(this + 8);
  if (v7)
  {
    v8 = 0;
    v9 = (*(this + 2) + 8);
    while (1)
    {
      v10 = *v9;
      v9 += 6;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  while (v8 != v7)
  {
    a2 = re::ecs2::CAMeshCodirectionalGroup::recomputeAverages(*(*(this + 2) + 24 * v8 + 16), a2, a3, a4, a5, a6);
    v11 = *(this + 8);
    if (v11 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    while (v11 - 1 != v8)
    {
      LODWORD(v8) = v8 + 1;
      if ((*(*(this + 2) + 24 * v8 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v8) = v11;
LABEL_14:
    ;
  }
}

float32x4_t re::ecs2::CAMeshCodirectionalGroup::recomputeAverages(re::ecs2::CAMeshCodirectionalGroup *this, float32x4_t result, double a3, double a4, double a5, float32x4_t a6)
{
  if (*(this + 144) == 1)
  {
    v64 = v6;
    v65 = v7;
    v9.i32[3] = 0;
    *(this + 7) = 0u;
    *(this + 144) = 0;
    *(this + 8) = 0u;
    if (*(this + 13))
    {
      v11 = *(this + 5);
      v10 = *(this + 6);
      v12 = vmulq_f32(v11, xmmword_1E3047680);
      v12.f32[0] = fabsf(v12.f32[2] + vaddv_f32(*v12.f32));
      a6.i32[0] = 0.5;
      v13 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v12, a6), 0), xmmword_1E3047670, xmmword_1E3047680);
      v14 = vsubq_f32(v10, vaddq_f32(v11, v10));
      v15 = vmulq_f32(v14, v14);
      v16 = vaddv_f32(*v15.f32);
      *v15.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v16));
      *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v16), vmul_f32(*v15.f32, *v15.f32)));
      v17 = vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v16), vmul_f32(*v15.f32, *v15.f32))).f32[0]);
      v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
      v19 = vmlaq_f32(vmulq_f32(v18, vnegq_f32(v13)), v17, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
      v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
      v21 = vmulq_f32(v19, v19);
      *&v22 = v21.f32[1] + (v21.f32[2] + v21.f32[0]);
      *v21.f32 = vrsqrte_f32(v22);
      *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
      v30 = vmulq_n_f32(v20, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
      v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), vnegq_f32(v17)), v30, v18);
      v24 = vmulq_f32(v10, v30);
      v25 = vmulq_f32(v10, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
      v26 = vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8));
      v27 = vextq_s8(v25, v25, 8uLL);
      *v27.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *v27.f32), v26);
      v28 = vmulq_f32(v10, v17);
      v29 = __PAIR64__(v23.u32[0], v30.u32[1]);
      v9.i64[0] = __PAIR64__(v23.u32[1], v30.u32[2]);
      v30.i32[1] = v23.i32[2];
      v30.i32[2] = v17.i32[0];
      v31 = vnegq_f32(v27);
      v31.f32[2] = -(v28.f32[2] + vaddv_f32(*v28.f32));
      v32 = *(this + 14);
      if (v32)
      {
        v33 = 0;
        v34 = (*(this + 5) + 8);
        while (1)
        {
          v35 = *v34;
          v34 += 6;
          if (v35 < 0)
          {
            break;
          }

          if (v32 == ++v33)
          {
            LODWORD(v33) = *(this + 14);
            break;
          }
        }
      }

      else
      {
        LODWORD(v33) = 0;
      }

      v30.i32[3] = 0;
      v58 = v30;
      v36 = v29;
      v36.i32[2] = v17.i32[1];
      v59 = v36;
      v9.i32[2] = v17.i32[2];
      v37 = v31;
      v37.i32[3] = 1.0;
      v57 = v37;
      v38.i64[0] = 0x7F0000007FLL;
      v38.i64[1] = 0x7F0000007FLL;
      v39.i64[0] = 0x7F0000007FLL;
      v39.i64[1] = 0x7F0000007FLL;
      if (v33 == v32)
      {
        v61 = v39;
        v60 = vnegq_f32(v38);
        v40 = *(this + 7);
      }

      else
      {
        v61 = v39;
        v60 = vnegq_f32(v38);
        v56 = v9;
        do
        {
          re::ecs2::CARESortingManager::optionalSortingPlaneFrom(v62, *(*(this + 5) + 24 * v33 + 16), *(this + 54));
          v9 = v56;
          v41 = vaddq_f32(v57, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, v63.f32[0]), v59, *v63.f32, 1), v56, v63, 2));
          v42 = vdivq_f32(v41, vdupq_laneq_s32(v41, 3));
          v43 = v60;
          v43.i32[3] = 0;
          v42.i32[3] = 0;
          v44 = vminnmq_f32(v43, v42);
          v45 = v61;
          v45.i32[3] = 0;
          v60 = v44;
          v61 = vmaxnmq_f32(v45, v42);
          v40 = vaddq_f32(v62[1], *(this + 7));
          *(this + 7) = v40;
          v46 = *(this + 14);
          if (v46 <= v33 + 1)
          {
            v46 = v33 + 1;
          }

          while (v46 - 1 != v33)
          {
            LODWORD(v33) = v33 + 1;
            if ((*(*(this + 5) + 24 * v33 + 8) & 0x80000000) != 0)
            {
              goto LABEL_18;
            }
          }

          LODWORD(v33) = v46;
LABEL_18:
          ;
        }

        while (v33 != v32);
      }

      v47 = vmulq_f32(v40, v40);
      *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      *(this + 7) = vmulq_n_f32(v40, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
      v66.columns[0] = v58;
      v66.columns[1] = v59;
      v66.columns[2] = v9;
      v66.columns[3] = v57;
      v67 = __invert_f4(v66);
      v49 = vcgtq_f32(v60, v61);
      v49.i32[3] = v49.i32[2];
      v50.i64[0] = 0x3F0000003F000000;
      v50.i64[1] = 0x3F0000003F000000;
      v51 = vmulq_f32(vaddq_f32(v60, v61), v50);
      v52 = v51.i64[1];
      if ((vmaxvq_u32(v49) & 0x80000000) == 0)
      {
        v53 = *v51.f32;
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      *v54.f32 = v53;
      v54.i64[1] = v52;
      v55 = vaddq_f32(v67.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67.columns[0], v53.f32[0]), v67.columns[1], v53, 1), v67.columns[2], v54, 2));
      result = vdivq_f32(v55, vdupq_laneq_s32(v55, 3));
      *(this + 8) = result;
      *(this + 145) = 1;
    }
  }

  return result;
}

void re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_129, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          v8 = *(v6 + 16);
          if (v8)
          {

            *(v6 + 16) = 0;
            v3 = *(a1 + 32);
          }
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::addAsCopy(result, v8, v6, a2);
  ++*(v3 + 40);
  return result;
}

uint64_t re::Optional<re::SortingPlane>::operator!=(float *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = v2 | *a2;
  if (v2 == 1 && (*a2 & 1) != 0)
  {
    v4 = a1[4];
    v5 = *(a2 + 16);
    if ((v4 == v5 || vabds_f32(v4, v5) < (((fabsf(v4) + fabsf(v5)) + 1.0) * 0.00001)) && ((v6 = a1[5], v7 = *(a2 + 20), v6 == v7) || vabds_f32(v6, v7) < (((fabsf(v6) + fabsf(v7)) + 1.0) * 0.00001)) && ((v8 = a1[6], v9 = *(a2 + 24), v8 == v9) || vabds_f32(v8, v9) < (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001)) && ((v10 = a1[8], v11 = *(a2 + 32), v10 == v11) || vabds_f32(v10, v11) < (((fabsf(v10) + fabsf(v11)) + 1.0) * 0.00001)) && ((v12 = a1[9], v13 = *(a2 + 36), v12 == v13) || vabds_f32(v12, v13) < (((fabsf(v12) + fabsf(v13)) + 1.0) * 0.00001)))
    {
      v14 = a1[10];
      v15 = *(a2 + 40);
      v3 = v14 != v15 && vabds_f32(v14, v15) >= (((fabsf(v14) + fabsf(v15)) + 1.0) * 0.00001);
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,5ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<unsigned long long,5ul>::ensureCapacity(a1);
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

uint64_t re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(uint64_t a1, uint64_t *a2)
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
    v12 = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(a1, v8, v6, a2, a2);
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

void re::ecs2::CARESortingManager::PerWorldDirtyEntities::addDirtyEntityIfSortable(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v7 || v7[95] == 1 && ((v8 = *(a2 + 192)) == 0 || (v9 = *(v8 + 40)) == 0 || (v10 = atomic_load((v9 + 896)), v10 != 2)) || v7[92] == 1 && v7[93] != 1 || (re::ecs2::CARESortingManager::optionalSortingPlaneFrom(&v35, a2, v6), v35.u8[0] != 1))
  {
    v15 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);

    return;
  }

  (*(**a3 + 8))(&v35);
  if (v35.i8[0])
  {
    v11 = v35.u64[1];
  }

  else
  {
    v11 = 0;
  }

  v35 = 0uLL;
  v36 = 0;
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v35, (a1 + 3), v11, v12 ^ (v12 >> 31));
  if (v35.i32[3] == 0x7FFFFFFF)
  {
    v13 = re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry((a1 + 3), v35.u32[2], v35.u64[0]);
    *(v13 + 16) = 0u;
    v14 = v13 + 16;
    *(v13 + 8) = v11;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 52) = 0x7FFFFFFF;
    ++*(a1 + 16);
LABEL_18:
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v14, a1[3], 64);
    goto LABEL_19;
  }

  v17 = a1[5] + 72 * v35.u32[3];
  v18 = *(v17 + 16);
  v14 = v17 + 16;
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_19:
  v19 = *(v14 + 40);
  v35.i64[0] = a2;
  v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v21 = v20 ^ (v20 >> 31);
  v22 = *(v14 + 24);
  if (v22)
  {
    v23 = v21 % v22;
    v24 = *(*(v14 + 8) + 4 * (v21 % v22));
    if (v24 != 0x7FFFFFFF)
    {
      v25 = *(v14 + 16);
      if (*(v25 + 24 * v24 + 16) == a2)
      {
        return;
      }

      while (1)
      {
        LODWORD(v24) = *(v25 + 24 * v24 + 8) & 0x7FFFFFFF;
        if (v24 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v25 + 24 * v24 + 16) == a2)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(v14, v23, v21, &v35, &v35);
  v26 = *(v14 + 40) + 1;
  *(v14 + 40) = v26;
  if (v26 != v19)
  {
    v28 = *a1;
    v27 = a1[1];
    v35.i64[0] = a2;
    v29 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v27, &v35);
    if (v29)
    {
      if (*v29 != v11)
      {
        v30 = re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v28 + 56, v29);
        if (v30)
        {
          re::ecs2::WorldSortingState::removeEntityFromTracking(v30, a2);
        }
      }
    }

    v31 = a1[1];
    v34 = a2;
    v35 = 0uLL;
    v36 = 0;
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v31, &v34, v21, &v35);
    v32 = v35.u32[3];
    if (v35.i32[3] == 0x7FFFFFFF)
    {
      v33 = re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v31, v35.u32[2], v35.u64[0]);
      *(v33 + 8) = v34;
      *(v33 + 16) = v11;
      ++*(v31 + 40);
    }

    else
    {
      ++*(v31 + 40);
      *(*(v31 + 16) + 32 * v32 + 16) = v11;
    }
  }
}

uint64_t re::ecs2::CARESortingManager::dirtyEntityTransformHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v24 = a1;
  result = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a3, &v24);
  if (result & 1) == 0 && (*(v24 + 304))
  {
    (*(**a5 + 8))(&v19);
    if (v19)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

    v21 = 1;
    v22 = 0;
    v23 = 0;
    v19 = a2;
    v20 = 0;
    re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::setCapacity(&v19, 0);
    v21 += 2;
    re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::add(&v19, &v24);
    v11 = v20;
    while (v11)
    {
      v12 = v23;
      if (v21)
      {
        v12 = &v22;
      }

      v18 = v12[--v11];
      v20 = v11;
      v21 += 2;
      re::ecs2::CARESortingManager::PerWorldDirtyEntities::addDirtyEntityIfSortable(a4, v18, a5);
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a3, &v18);
      v13 = *(v18 + 344);
      if (v13)
      {
        v14 = *(v18 + 360);
        v15 = 8 * v13;
        do
        {
          v17 = *v14;
          if ((*(v17 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a3, &v17))
          {
            (*(**a5 + 8))(v25);
            v16 = LOBYTE(v25[0]) ? v25[1] : 0;
            if (v16 == v10)
            {
              re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::add(&v19, &v17);
            }
          }

          ++v14;
          v15 -= 8;
        }

        while (v15);
        v11 = v20;
      }
    }

    result = v19;
    if (v19)
    {
      if ((v21 & 1) == 0)
      {
        return (*(*v19 + 40))();
      }
    }
  }

  return result;
}

void re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_129, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

void re::ecs2::CARESortingManager::update(uint64_t a1)
{
  v606 = *MEMORY[0x1E69E9840];
  if (*(a1 + 512))
  {
    v1 = (a1 + 476);
    v2 = (*(**(a1 + 520) + 24))(*(a1 + 520));
    v3 = a1;
    v4 = v2;
    v580 = v2;
    if (*(a1 + 476))
    {
      v5 = *(a1 + 472);
      if (v5)
      {
        memset_pattern16(*(a1 + 456), &memset_pattern_129, 4 * v5);
        v3 = a1;
      }

      v6 = *(v3 + 480);
      if (v6)
      {
        v7 = *(v3 + 464);
        do
        {
          if ((*v7 & 0x80000000) != 0)
          {
            *v7 &= ~0x80000000;
          }

          v7 += 40;
          --v6;
        }

        while (v6);
      }

      *(v3 + 484) = 0x7FFFFFFF;
      *v1 = 0;
      ++*(v3 + 488);
    }

    *&v550 = v1;
    v8 = re::RenderManager::perFrameAllocator(*(v3 + 512));
    v9 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    re::ecs2::CARESortingDebugging::m_dirtyTransformEntityCount = 0;
    re::ecs2::CARESortingDebugging::m_hierarchicalDirtiedTransformEntityCount = 0;
    v10 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    re::ecs2::CARESortingDebugging::m_dirtyAnchorEntityCount = 0;
    re::ecs2::CARESortingDebugging::m_dirtyInactiveEntities = 0;
    re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups = 0;
    re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups = 0;
    re::ecs2::CARESortingDebugging::m_sortGroupsResorted = 0;
    re::ecs2::CARESortingDebugging::s_codirGroupsWithDirtyEntities = 0;
    re::ecs2::CARESortingDebugging::m_sortGroupsRecalculatedOverrides = 0;
    re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverrides = 0;
    re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied = 0;
    re::ecs2::CARESortingDebugging::m_highestPriorityInGroup = 0;
    re::ecs2::CARESortingDebugging::m_highestPriorityGroupId = 0;
    v11 = *(a1 + 520);
    v555 = v8;
    if (!v11)
    {
      v572 = a1;
      v573 = a1 + 104;
      v547 = (a1 + 440);
      v574 = a1 + 440;
      v19 = 1;
      v20 = a1;
      goto LABEL_96;
    }

    v12 = (*(*v11 + 24))(v11);
    v13 = (*(*v12 + 16))(v12);
    out[1].i32[0] = 1;
    out[2].i64[0] = 0;
    out[1].i64[1] = 0;
    out[0] = v8;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(out, 0);
    v14 = a1;
    out[1].i32[0] += 2;
    v15 = *(a1 + 88);
    if (v15)
    {
      v16 = 0;
      v17 = *(a1 + 72);
      while (1)
      {
        v18 = *v17;
        v17 += 46;
        if (v18 < 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          LODWORD(v16) = *(a1 + 88);
          break;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    v21 = v13 + 32;
    if (v16 == v15)
    {
LABEL_20:
      LODWORD(v582) = 1;
      v583.i64[0] = 0;
      *(&v582 + 1) = 0;
      v581 = v555;
      re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(&v581, 0);
      LODWORD(v582) = v582 + 2;
      v22 = *(v13 + 124);
      if (v22)
      {
        v21 = v13 + 96;
        v15 = *(v13 + 128);
        v23 = a1;
        if (v15)
        {
          v10 = 0;
          v24 = *(v13 + 112);
          while (1)
          {
            v25 = *v24;
            v24 += 4;
            if (v25 < 0)
            {
              break;
            }

            if (v15 == ++v10)
            {
              LODWORD(v10) = *(v13 + 128);
              break;
            }
          }
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v36 = v13 + 96;
      }

      else
      {
        v36 = v21 + 8 * *(v13 + 16);
        v23 = a1;
      }

      v37 = v21 != v36;
      if (v22)
      {
        v37 = v15 != v10;
      }

      if (v37)
      {
        do
        {
          v38 = v21;
          if (v22)
          {
            v38 = (*(v21 + 16) + 16 * v10 + 8);
          }

          v39 = *v38;
          v572 = v39;
          if (!*(v23 + 56) || (v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) >> 27)), v41 = *(*(v23 + 64) + 4 * ((v40 ^ (v40 >> 31)) % *(v23 + 80))), v41 == 0x7FFFFFFF))
          {
LABEL_58:
            re::DynamicOverflowArray<unsigned long long,5ul>::add(&v581, &v572);
            v23 = a1;
          }

          else
          {
            v42 = *(v23 + 72);
            while (*(v42 + 184 * v41 + 8) != v39)
            {
              v41 = *(v42 + 184 * v41) & 0x7FFFFFFF;
              if (v41 == 0x7FFFFFFF)
              {
                goto LABEL_58;
              }
            }
          }

          if (v22)
          {
            v43 = v10 + 1;
            v44 = 16 * (v10 + 1);
            do
            {
              LODWORD(v10) = v43;
              if (v43 >= *(v21 + 32))
              {
                break;
              }

              v45 = *(*(v21 + 16) + v44);
              ++v43;
              v44 += 16;
            }

            while ((v45 & 0x80000000) == 0);
          }

          else
          {
            v21 += 8;
          }

          v46 = v21 != v36;
          if (v22)
          {
            v46 = v15 != v10;
          }
        }

        while (v46);
      }

      v47 = &v582 + 1;
      if (out[1].i8[0])
      {
        v48 = &out[1].i64[1];
      }

      else
      {
        v48 = out[2].i64[0];
      }

      v9 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      if (out[0].i64[1])
      {
        v49 = 8 * out[0].i64[1];
        do
        {
          v592.i64[0] = *v48;
          v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v592.i64[0] ^ (v592.i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v592.i64[0] ^ (v592.i64[0] >> 30))) >> 27));
          re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v23 + 56, &v592, v50 ^ (v50 >> 31), &v572);
          v23 = a1;
          v51 = HIDWORD(v573);
          if (HIDWORD(v573) != 0x7FFFFFFF)
          {
            v52 = *(a1 + 72);
            v53 = *(v52 + 184 * HIDWORD(v573)) & 0x7FFFFFFF;
            if (v574 == 0x7FFFFFFF)
            {
              *(*(a1 + 64) + 4 * v573) = v53;
              v51 = HIDWORD(v573);
            }

            else
            {
              *(v52 + 184 * v574) = *(v52 + 184 * v574) & 0x80000000 | v53;
            }

            re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v52, v51);
            v54 = HIDWORD(v573);
            *(*(a1 + 72) + 184 * HIDWORD(v573)) = *(*(a1 + 72) + 184 * HIDWORD(v573)) & 0x80000000 | *(a1 + 92);
            --*(a1 + 84);
            v55 = *(a1 + 96) + 1;
            *(a1 + 92) = v54;
            *(a1 + 96) = v55;
            v23 = a1;
          }

          ++v48;
          v49 -= 8;
        }

        while (v49);
      }

      if ((v582 & 1) == 0)
      {
        v47 = v583.i64[0];
      }

      if (*(&v581 + 1))
      {
        v56 = 8 * *(&v581 + 1);
        do
        {
          v57 = *v47++;
          v572 = v57;
          re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::ecs2::CARESortingManager &,re::ServiceLocator &>(v23 + 56, &v572, v23);
          v23 = a1;
          v56 -= 8;
        }

        while (v56);
      }

      if (v581 && (v582 & 1) == 0)
      {
        (*(*v581 + 40))();
        v23 = a1;
      }

      if (out[0].i64[0] && (out[1].i8[0] & 1) == 0)
      {
        (*(*out[0].i64[0] + 40))();
        v23 = a1;
      }

      v58 = *(v23 + 520);
      v572 = v23;
      v573 = v23 + 104;
      v547 = (v23 + 440);
      v574 = v23 + 440;
      if (v58)
      {
        v59 = (*(*v58 + 24))(v58);
        v60 = (*(*v59 + 16))(v59);
        v61 = *(v60 + 124);
        if (!v61)
        {
          v61 = *(v60 + 16);
        }

        v19 = v61 + 1;
      }

      else
      {
        v19 = 1;
      }

      v20 = a1;
LABEL_96:
      memset(out, 0, 36);
      *(out[2].i64 + 4) = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(out, v555, v19);
      v575 = out[0].i64[0];
      v62 = *(out + 8);
      memset(out, 0, 24);
      v576 = v62;
      v577 = out[1].i64[1];
      v578 = out[2].i64[0];
      *(&out[1] + 8) = xmmword_1E3058120;
      v579 = 1;
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(out);
      v63 = *(v20 + 184);
      v64 = v20;
      if (v63)
      {
        v65 = 0;
        v66 = (*(v64 + 168) + 8);
        while (1)
        {
          v67 = *v66;
          v66 += 6;
          if (v67 < 0)
          {
            break;
          }

          if (v63 == ++v65)
          {
            LODWORD(v65) = v63;
            break;
          }
        }
      }

      else
      {
        LODWORD(v65) = 0;
      }

      while (v65 != v63)
      {
        out[0].i64[0] = *(*(v64 + 168) + 24 * v65 + 16);
        v68 = v64;
        v69 = re::ecs2::EntityComponentCollection::get((out[0].i64[0] + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v69 && *(v69 + 95) == 1)
        {
          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v68 + 392, out);
        }

        v70 = *(v68 + 184);
        if (v70 <= v65 + 1)
        {
          v70 = v65 + 1;
        }

        v64 = v68;
        while (v70 - 1 != v65)
        {
          LODWORD(v65) = v65 + 1;
          if ((*(*(v68 + 168) + 24 * v65 + 8) & 0x80000000) != 0)
          {
            goto LABEL_113;
          }
        }

        LODWORD(v65) = v70;
LABEL_113:
        ;
      }

      v71 = *(v64 + 420);
      v583.i64[0] = 0;
      *&v582 = 0;
      DWORD2(v582) = 0;
      v581 = v555;
      re::DynamicArray<float *>::setCapacity(&v581, v71);
      v72 = a1;
      ++DWORD2(v582);
      v73 = *(a1 + 424);
      if (v73)
      {
        v74 = 0;
        v75 = (*(a1 + 408) + 8);
        while (1)
        {
          v76 = *v75;
          v75 += 6;
          if (v76 < 0)
          {
            break;
          }

          if (v73 == ++v74)
          {
            LODWORD(v74) = *(a1 + 424);
            break;
          }
        }
      }

      else
      {
        LODWORD(v74) = 0;
      }

      while (v74 != v73)
      {
        *&v588 = *(*(v72 + 408) + 24 * v74 + 16);
        v77 = re::ecs2::EntityComponentCollection::get((v588 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v77)
        {
          v78 = *(v588 + 192);
          if (!v78)
          {
            goto LABEL_126;
          }

          v79 = v77;
          v80 = re::AssetHandle::loadedAsset<re::MeshAsset>((v78 + 32));
          if (!v80)
          {
            goto LABEL_126;
          }

          out[0] = xmmword_1E3047670;
          out[1] = xmmword_1E3047680;
          out[2] = xmmword_1E30476A0;
          v596 = xmmword_1E30474D0;
          re::MeshAsset::aabbFromMesh(v80, out, &v592);
          v81 = v593;
          *(v79 + 48) = v592;
          *(v79 + 64) = v81;
          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 152, &v588);
        }

        re::DynamicArray<re::TransitionCondition *>::add(&v581, &v588);
LABEL_126:
        v72 = a1;
        v82 = *(a1 + 424);
        if (v82 <= v74 + 1)
        {
          v82 = v74 + 1;
        }

        while (v82 - 1 != v74)
        {
          LODWORD(v74) = v74 + 1;
          if ((*(*(a1 + 408) + 24 * v74 + 8) & 0x80000000) != 0)
          {
            goto LABEL_132;
          }
        }

        LODWORD(v74) = v82;
LABEL_132:
        ;
      }

      if (v582)
      {
        v83 = v583.i64[0];
        v84 = 8 * v582;
        do
        {
          v85 = *v83++;
          out[0].i64[0] = v85;
          re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v72 + 392, out);
          v72 = a1;
          v84 -= 8;
        }

        while (v84);
      }

      v86 = v581;
      if (v581 && v583.i64[0])
      {
        v86 = (*(*v581 + 40))();
        v72 = a1;
      }

      v87 = *(v72 + 184);
      if (v87)
      {
        v88 = 0;
        v89 = (*(v72 + 168) + 8);
        while (1)
        {
          v90 = *v89;
          v89 += 6;
          if (v90 < 0)
          {
            break;
          }

          if (v87 == ++v88)
          {
            LODWORD(v88) = *(v72 + 184);
            break;
          }
        }
      }

      else
      {
        LODWORD(v88) = 0;
      }

      while (v88 != v87)
      {
        re::ecs2::CARESortingManager::PerWorldDirtyEntities::addDirtyEntityIfSortable(&v572, *(*(v72 + 168) + 24 * v88 + 16), &v580);
        v72 = a1;
        v91 = *(a1 + 184);
        if (v91 <= v88 + 1)
        {
          v91 = v88 + 1;
        }

        while (v91 - 1 != v88)
        {
          LODWORD(v88) = v88 + 1;
          if ((*(*(a1 + 168) + 24 * v88 + 8) & 0x80000000) != 0)
          {
            goto LABEL_152;
          }
        }

        LODWORD(v88) = v91;
LABEL_152:
        ;
      }

      if (*(v72 + 276) || *(v72 + 324))
      {
        memset(out, 0, 36);
        *(out[2].i64 + 4) = 0x7FFFFFFFLL;
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(out, v555, 128);
        v92 = a1;
        v93 = *(a1 + 328);
        if (v93)
        {
          v94 = 0;
          v95 = (*(a1 + 312) + 8);
          while (1)
          {
            v96 = *v95;
            v95 += 6;
            if (v96 < 0)
            {
              break;
            }

            if (v93 == ++v94)
            {
              LODWORD(v94) = *(a1 + 328);
              break;
            }
          }
        }

        else
        {
          LODWORD(v94) = 0;
        }

        while (v94 != v93)
        {
          re::ecs2::CARESortingManager::dirtyEntityTransformHierarchy(*(*(v92 + 312) + 24 * v94 + 16), v555, out, &v572, &v580);
          v92 = a1;
          v97 = *(a1 + 328);
          if (v97 <= v94 + 1)
          {
            v97 = v94 + 1;
          }

          while (v97 - 1 != v94)
          {
            LODWORD(v94) = v94 + 1;
            if ((*(*(a1 + 312) + 24 * v94 + 8) & 0x80000000) != 0)
            {
              goto LABEL_168;
            }
          }

          LODWORD(v94) = v97;
LABEL_168:
          ;
        }

        re::ecs2::CARESortingDebugging::m_hierarchicalDirtiedTransformEntityCount = out[1].i32[3];
        re::ecs2::CARESortingDebugging::m_dirtyAnchorEntityCount = *(v92 + 324);
        v98 = *(v92 + 280);
        if (v98)
        {
          v99 = 0;
          v100 = (*(v92 + 264) + 8);
          while (1)
          {
            v101 = *v100;
            v100 += 6;
            if (v101 < 0)
            {
              break;
            }

            if (v98 == ++v99)
            {
              LODWORD(v99) = *(v92 + 280);
              break;
            }
          }
        }

        else
        {
          LODWORD(v99) = 0;
        }

        while (v99 != v98)
        {
          re::ecs2::CARESortingManager::dirtyEntityTransformHierarchy(*(*(v92 + 264) + 24 * v99 + 16), v555, out, &v572, &v580);
          v92 = a1;
          v102 = *(a1 + 280);
          if (v102 <= v99 + 1)
          {
            v102 = v99 + 1;
          }

          while (v102 - 1 != v99)
          {
            LODWORD(v99) = v99 + 1;
            if ((*(*(a1 + 264) + 24 * v99 + 8) & 0x80000000) != 0)
            {
              goto LABEL_182;
            }
          }

          LODWORD(v99) = v102;
LABEL_182:
          ;
        }

        re::ecs2::CARESortingDebugging::m_dirtyTransformEntityCount = *(v92 + 276);
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v92 + 248);
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(a1 + 296);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(out);
        v72 = a1;
      }

      v103 = &v581;
      if (*(v72 + 372))
      {
        v583.i32[0] = 0;
        v582 = 0u;
        v581 = 0u;
        *(v583.i64 + 4) = 0x7FFFFFFFLL;
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(&v581, v555, 128);
        v104 = a1;
        v105 = *(a1 + 376);
        if (v105)
        {
          v106 = 0;
          v107 = (*(a1 + 360) + 8);
          while (1)
          {
            v108 = *v107;
            v107 += 6;
            if (v108 < 0)
            {
              break;
            }

            if (v105 == ++v106)
            {
              LODWORD(v106) = *(a1 + 376);
              break;
            }
          }
        }

        else
        {
          LODWORD(v106) = 0;
        }

        while (v106 != v105)
        {
          *&v588 = *(*(v104 + 360) + 24 * v106 + 16);
          if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(&v581, &v588) && (*(v588 + 304) & 1) != 0)
          {
            (*(*v4 + 8))(out, v4);
            if (out[0].i8[0])
            {
              v9 = out[0].u64[1];
            }

            else
            {
              v9 = 0;
            }

            out[1].i32[0] = 1;
            out[1].i64[1] = 0;
            out[2].i64[0] = 0;
            out[0] = v555;
            re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::setCapacity(out, 0);
            out[1].i32[0] += 2;
            re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::add(out, &v588);
            v109 = out[0].i64[1];
            while (v109)
            {
              v110 = out[2].i64[0];
              if (out[1].i8[0])
              {
                v110 = &out[1].i64[1];
              }

              *&v568.var0 = v110[--v109];
              out[0].i64[1] = v109;
              out[1].i32[0] += 2;
              re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(&v581, &v568);
              v111 = re::ecs2::EntityComponentCollection::get((*&v568.var0 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (!v111 || *(v111 + 80) != 3)
              {
                re::ecs2::CARESortingManager::PerWorldDirtyEntities::addDirtyEntityIfSortable(&v572, *&v568.var0, &v580);
              }

              v112 = *(*&v568.var0 + 344);
              if (v112)
              {
                v113 = *(*&v568.var0 + 360);
                v114 = 8 * v112;
                do
                {
                  *v599 = *v113;
                  if ((*(*v599 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(&v581, v599))
                  {
                    (*(*v4 + 8))(&v592, v4, *v599);
                    v115 = v592.i8[0] ? v592.i64[1] : 0;
                    if (v115 == v9)
                    {
                      v116 = re::ecs2::EntityComponentCollection::get((*v599 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                      if (!v116 || *(v116 + 80) != 3)
                      {
                        re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::add(out, v599);
                      }
                    }
                  }

                  ++v113;
                  v114 -= 8;
                }

                while (v114);
                v109 = out[0].i64[1];
              }
            }

            if (out[0].i64[0] && (out[1].i8[0] & 1) == 0)
            {
              (*(*out[0].i64[0] + 40))();
            }
          }

          v104 = a1;
          v117 = *(a1 + 376);
          if (v117 <= v106 + 1)
          {
            v117 = v106 + 1;
          }

          while (v117 - 1 != v106)
          {
            LODWORD(v106) = v106 + 1;
            if ((*(*(a1 + 360) + 24 * v106 + 8) & 0x80000000) != 0)
            {
              goto LABEL_226;
            }
          }

          LODWORD(v106) = v117;
LABEL_226:
          ;
        }

        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v104 + 344);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v581);
        v72 = a1;
        v103 = &v581;
      }

      v118 = *(v72 + 88);
      if (v118)
      {
        v119 = 0;
        v120 = *(v72 + 72);
        while (1)
        {
          v121 = *v120;
          v120 += 46;
          if (v121 < 0)
          {
            break;
          }

          if (v118 == ++v119)
          {
            LODWORD(v119) = *(v72 + 88);
            break;
          }
        }
      }

      else
      {
        LODWORD(v119) = 0;
      }

      if (v119 == v118)
      {
LABEL_235:
        if (*(v72 + 504))
        {
          v9 = *(*(v72 + 512) + 80);
          if (!v9)
          {
LABEL_696:
            re::ecs2::CARESortingDebugging::m_entitiesActivated = 0;
            re::ecs2::CARESortingDebugging::m_entitiesDeactivated = 0;
            re::ecs2::CARESortingDebugging::m_uiSortingComponentActivated = 0;
            re::ecs2::CARESortingDebugging::m_uiSortingComponentDeactivated = 0;
            v371 = v72;
            re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v72 + 152);
            re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v371 + 200);
            re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v575);
            return;
          }

          v122 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
          if (re::CARESortingDefaults::enableDrawLayerSortingGroups(void)::onceToken != -1)
          {
            goto LABEL_861;
          }

          while (1)
          {
            if (re::gEnableDrawLayerSortingGroups != 1)
            {
              goto LABEL_696;
            }

            v123 = *(v72 + 544);
            if (!v123)
            {
              goto LABEL_693;
            }

            v124 = atomic_load((v123 + 896));
            if (v124 != 2)
            {
              break;
            }

            re::makeFontID((v550 + 60), &v568);
            v126 = &v581;
            if (*(v122 + 139) != -1)
            {
              dispatch_once(&re::CARESortingDefaults::enableDrawLayerSortingGroups(void)::onceToken, &__block_literal_global_12);
            }

            v72 = a1;
            if (re::gEnableDrawLayerSortingGroups != 1)
            {
              goto LABEL_701;
            }

            v127 = *(a1 + 88);
            if (v127)
            {
              v128 = 0;
              v129 = *(a1 + 72);
              while (1)
              {
                v130 = *v129;
                v129 += 46;
                if (v130 < 0)
                {
                  break;
                }

                if (v127 == ++v128)
                {
                  LODWORD(v128) = *(a1 + 88);
                  break;
                }
              }
            }

            else
            {
LABEL_699:
              LODWORD(v128) = 0;
            }

            v536 = v127;
            if (v128 == v127)
            {
LABEL_701:
              if ((*&v568.var0 & 1) == 0)
              {
                goto LABEL_696;
              }

              v72 = a1;
              if ((*&v568.var0 & 1) == 0)
              {
                goto LABEL_696;
              }

              goto LABEL_695;
            }

            v372 = xmmword_1E3047670;
            v373 = xmmword_1E3047680;
            v374 = xmmword_1E30476A0;
            v103 = 24;
            v375.i64[1] = 0x3F80000000000000;
            v375.i64[0] = COERCE_UNSIGNED_INT(1.0);
            v538 = v375;
            v375.i32[0] = 0;
            v375.i32[1] = 1.0;
            v537 = v375;
            v548 = v9;
            while (1)
            {
              v376 = *(v72 + 72) + 184 * v128;
              v560 = *(v376 + 48);
              if (v560)
              {
                v377 = 0;
                v378 = (*(v376 + 32) + 8);
                while (1)
                {
                  v379 = *v378;
                  v378 += 6;
                  if (v379 < 0)
                  {
                    break;
                  }

                  if (v560 == ++v377)
                  {
                    LODWORD(v377) = *(v376 + 48);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v377) = 0;
              }

              v380 = *(v376 + 48);
              v540 = v128;
              v543 = *(v72 + 72) + 184 * v128;
              while (v377 != v560)
              {
                v381 = *(v376 + 32) + 24 * v377;
                v383 = *(v381 + 16);
                v382 = (v381 + 16);
                *v373.f64 = ((((v383[32] + v383[33]) + v383[34]) + v383[28]) + v383[29]) + v383[30];
                *v373.f64 = fminf(*v373.f64 - floorf(*v373.f64), 1.0);
                *v375.i32 = *v373.f64 - truncf(*v373.f64);
                v387.i64[0] = 0x8000000080000000;
                v387.i64[1] = 0x8000000080000000;
                v386 = vbslq_s8(v387, v375, v373);
                *&v386 = *&v386 / 0.16667;
                v384 = *&v386;
                v385 = *&v386 - *&v386;
                *&v386 = 1.0 - v385;
                *v387.i32 = 1.0 - (1.0 - v385);
                if (v384 <= 1)
                {
                  if (v384)
                  {
                    if (v384 != 1)
                    {
                      goto LABEL_725;
                    }

                    DWORD1(v386) = 1.0;
                    DWORD2(v386) = 0;
                    v592 = v386;
                    v389 = 0.5;
                    *&v386 = ((v385 * -0.5) + 1.0) * 0.5;
                  }

                  else
                  {
                    v375.i64[0] = __PAIR64__(v387.u32[0], 1.0);
                    v375.i32[2] = 0;
                    v592 = v375;
                    v392 = (*&v386 * -0.5) + 1.0;
                    LODWORD(v386) = 0.5;
                    v389 = v392 * 0.5;
                  }

                  v388 = 0.25;
                }

                else
                {
                  if (v384 == 2)
                  {
                    v390 = v537;
                    v390.i32[2] = v387.i32[0];
                    v592 = v390;
                    v389 = 0.5;
                    v388 = ((*&v386 * -0.5) + 1.0) * 0.5;
                  }

                  else
                  {
                    if (v384 != 3)
                    {
                      if (v384 == 4)
                      {
                        v387.i32[1] = 0;
                        v387.i32[2] = 1.0;
                        v592 = v387;
                        v388 = 0.5;
                        *&v386 = ((*&v386 * -0.5) + 1.0) * 0.5;
                      }

                      else
                      {
LABEL_725:
                        v393 = v538;
                        v393.f32[2] = 1.0 - v385;
                        v592 = v393;
                        LODWORD(v386) = 0.5;
                        v388 = ((v385 * -0.5) + 1.0) * 0.5;
                      }

                      v389 = 0.25;
                      goto LABEL_727;
                    }

                    v387.i32[0] = 0;
                    *&v387.i32[1] = 1.0 - v385;
                    v387.i32[2] = 1.0;
                    v592 = v387;
                    v391 = (v385 * -0.5) + 1.0;
                    v388 = 0.5;
                    v389 = v391 * 0.5;
                  }

                  LODWORD(v386) = 0.25;
                }

LABEL_727:
                *(&v386 + 1) = v389;
                *(&v386 + 2) = v388;
                v588 = v386;
                v565 = v382;
                v394 = *v382;
                v395 = (*v382)[3].u32[2];
                if (v395)
                {
                  v396 = 0;
                  v397 = (v394[2].i64[1] + 8);
                  while (1)
                  {
                    v398 = *v397;
                    v397 += 6;
                    if (v398 < 0)
                    {
                      break;
                    }

                    if (v395 == ++v396)
                    {
                      LODWORD(v396) = (*v382)[3].i32[2];
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v396) = 0;
                }

                if (v396 == v395)
                {
                  v399 = v382;
                }

                else
                {
                  do
                  {
                    v400 = *(v394[2].i64[1] + 24 * v396 + 16);
                    v401 = re::ecs2::EntityComponentCollection::get((v400 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                    if (v401)
                    {
                      v402 = v401;
                      re::TransformService::worldTransform(*(a1 + 528), v400, 0, &v581);
                      out[0] = v583;
                      out[1] = v402[20];
                      out[2] = v588;
                      LODWORD(v596) = 1065353216;
                      re::DynamicArray<re::RigTransform>::add((v9 + 16), out);
                      v403 = re::ecs2::EntityComponentCollection::get((v400 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                      if (v403)
                      {
                        v404 = vcgtq_f32(*(v403 + 48), *(v403 + 64));
                        v404.i32[3] = v404.i32[2];
                        if ((vmaxvq_u32(v404) & 0x80000000) != 0)
                        {
                          v406 = *(v403 + 32);
                          v407.i64[0] = 0xBF000000BF000000;
                          v407.i64[1] = 0xBF000000BF000000;
                          v408.i64[0] = 0x3F0000003F000000;
                          v408.i64[1] = 0x3F0000003F000000;
                          out[1] = vmulq_f32(v406, v407);
                          out[2] = vmulq_f32(v406, v408);
                        }

                        else
                        {
                          v405 = *(v403 + 64);
                          out[1] = *(v403 + 48);
                          out[2] = v405;
                        }

                        out[0].i8[0] = 1;
                        v409 = re::ecs2::SortingTransformCache::getOrRecomputeWorldMatrixAndInverse(v547, v400);
                        re::DebugRenderer::drawBox(v9, v409, out[1].f32, &v588, 1);
                      }
                    }

                    v410 = v394[3].u32[2];
                    if (v410 <= v396 + 1)
                    {
                      v410 = v396 + 1;
                    }

                    while (v410 - 1 != v396)
                    {
                      LODWORD(v396) = v396 + 1;
                      if ((*(v394[2].i64[1] + 24 * v396 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_747;
                      }
                    }

                    LODWORD(v396) = v410;
LABEL_747:
                    ;
                  }

                  while (v396 != v395);
                  v399 = v565;
                  v394 = *v565;
                }

                v411 = v394[8];
                v412 = vsubq_f32(v411, v394[7]);
                v413 = vmulq_f32(v412, v412);
                *&v414 = v413.f32[2] + vaddv_f32(*v413.f32);
                *v413.f32 = vrsqrte_f32(v414);
                *v413.f32 = vmul_f32(*v413.f32, vrsqrts_f32(v414, vmul_f32(*v413.f32, *v413.f32)));
                v415 = vmulq_n_f32(v412, vmul_f32(*v413.f32, vrsqrts_f32(v414, vmul_f32(*v413.f32, *v413.f32))).f32[0]);
                v416 = vextq_s8(vuzp1q_s32(v415, v415), v415, 0xCuLL);
                v417 = vmlaq_f32(vmulq_f32(v416, xmmword_1E30661D0), xmmword_1E30476A0, v415);
                v418 = vextq_s8(vuzp1q_s32(v417, v417), v417, 0xCuLL);
                v419 = vmulq_f32(v417, v417);
                *&v420 = v419.f32[1] + (v419.f32[2] + v419.f32[0]);
                *v419.f32 = vrsqrte_f32(v420);
                *v419.f32 = vmul_f32(*v419.f32, vrsqrts_f32(v420, vmul_f32(*v419.f32, *v419.f32)));
                v421 = vmulq_n_f32(v418, vmul_f32(*v419.f32, vrsqrts_f32(v420, vmul_f32(*v419.f32, *v419.f32))).f32[0]);
                v422 = v421.f32[1];
                v423 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v421, v421), v421, 0xCuLL), vnegq_f32(v415)), v421, v416);
                v424 = v415.f32[2] + vaddq_f32(v421, v423).f32[0];
                LODWORD(v128) = v540;
                if (v424 >= 0.0)
                {
                  v425 = 1.0;
                  v423.f32[0] = sqrtf(v424 + 1.0);
                  v421.f32[0] = v423.f32[0] + v423.f32[0];
                  v429 = vrecpe_f32(COERCE_UNSIGNED_INT(v423.f32[0] + v423.f32[0]));
                  v430 = vmul_f32(v429, vrecps_f32(COERCE_UNSIGNED_INT(v423.f32[0] + v423.f32[0]), v429));
                  v431 = vmul_f32(v430, vrecps_f32(COERCE_UNSIGNED_INT(v423.f32[0] + v423.f32[0]), v430)).f32[0];
                  v423.f32[0] = (v423.f32[1] - v415.f32[1]) * v431;
                  v426 = (v415.f32[0] - v421.f32[2]) * v431;
                  v427 = (v421.f32[1] - v423.f32[2]) * v431;
                  v428 = v421.f32[0] * 0.25;
                }

                else if (v421.f32[0] < v415.f32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v421, v423))).u8[0] & 1) != 0)
                {
                  v425 = 1.0;
                  v421.f32[0] = 1.0 - v421.f32[0];
                  v432 = v423.f32[0] < v415.f32[2];
                  v433 = v423.f32[0] < v415.f32[2];
                  v434 = sqrtf(v415.f32[2] + (v421.f32[0] - v423.f32[0]));
                  *&v435 = v434 + v434;
                  v436 = vrecpe_f32(v435);
                  v437 = vmul_f32(v436, vrecps_f32(v435, v436));
                  v438 = vmul_f32(v437, vrecps_f32(v435, v437)).f32[0];
                  v439 = (v415.f32[0] + v421.f32[2]) * v438;
                  v440 = (v415.f32[1] + v423.f32[1]) * v438;
                  v441 = *&v435 * 0.25;
                  v442 = (v421.f32[1] - v423.f32[2]) * v438;
                  v423.f32[0] = sqrtf((v421.f32[0] - v415.f32[2]) + v423.f32[0]);
                  v423.f32[0] = v423.f32[0] + v423.f32[0];
                  *v421.f32 = vrecpe_f32(v423.u32[0]);
                  *v421.f32 = vmul_f32(*v421.f32, vrecps_f32(v423.u32[0], *v421.f32));
                  v443 = vmul_f32(*v421.f32, vrecps_f32(v423.u32[0], *v421.f32)).f32[0];
                  v444 = (v422 + v423.f32[2]) * v443;
                  v445 = v423.f32[0] * 0.25;
                  v446 = (v415.f32[1] + v423.f32[1]) * v443;
                  v428 = (v415.f32[0] - v421.f32[2]) * v443;
                  if (v432)
                  {
                    v423.f32[0] = v439;
                  }

                  else
                  {
                    v423.f32[0] = v444;
                  }

                  if (v433)
                  {
                    v426 = v440;
                  }

                  else
                  {
                    v426 = v445;
                  }

                  if (v433)
                  {
                    v427 = v441;
                  }

                  else
                  {
                    v427 = v446;
                  }

                  if (v433)
                  {
                    v428 = v442;
                  }
                }

                else
                {
                  v425 = 1.0;
                  v423.f32[0] = sqrtf(v421.f32[0] + ((1.0 - v423.f32[0]) - v415.f32[2]));
                  v423.f32[0] = v423.f32[0] + v423.f32[0];
                  *v421.f32 = vrecpe_f32(v423.u32[0]);
                  *v421.f32 = vmul_f32(*v421.f32, vrecps_f32(v423.u32[0], *v421.f32));
                  v421.f32[0] = vmul_f32(*v421.f32, vrecps_f32(v423.u32[0], *v421.f32)).f32[0];
                  v423.f32[0] = v423.f32[0] * 0.25;
                  v426 = (v422 + v423.f32[2]) * v421.f32[0];
                  v427 = (v415.f32[0] + v421.f32[2]) * v421.f32[0];
                  v428 = (v423.f32[1] - v415.f32[1]) * v421.f32[0];
                }

                v447 = v423.f32[0] + v423.f32[0];
                v448 = v426 + v426;
                v449 = v427 + v427;
                v450 = v423.f32[0] * (v423.f32[0] + v423.f32[0]);
                v451 = v426 * (v426 + v426);
                v452 = v427 * (v427 + v427);
                v453 = v447 * v426;
                v454 = v447 * v427;
                v455 = v448 * v427;
                v456 = v448 * v428;
                v457 = v449 * v428;
                v458.i32[3] = 0;
                v458.f32[0] = v425 - (v451 + v452);
                v458.f32[1] = v453 + v457;
                v458.f32[2] = v454 - v456;
                v459 = v447 * v428;
                v460.i32[3] = 0;
                v460.i64[0] = __PAIR64__(v425 - (v450 + v452), v453 - v457);
                v460.f32[2] = v455 + v459;
                v461.i32[3] = 0;
                v461.f32[0] = v454 + v456;
                v461.f32[1] = v455 - v459;
                v461.f32[2] = v425 - (v450 + v451);
                out[0] = v458;
                out[1] = v460;
                v411.f32[3] = v425;
                out[2] = v461;
                v596 = v411;
                re::DebugRenderer::drawSphere(v9, out, 32, &v592, 1, 0.03);
                v462 = *v399 + 8;
                v126 = &v581;
                out[0] = vaddq_f32(*v462, vmulq_f32((*v399)[7], vdupq_n_s32(0x3E4CCCCDu)));
                v125 = re::DebugRenderer::drawArrow(v9, v462, out, &v592, 1, 0.015);
                v376 = v543;
                v380 = *(v543 + 48);
                if (v380 <= v377 + 1)
                {
                  v463 = v377 + 1;
                }

                else
                {
                  v463 = *(v543 + 48);
                }

                v72 = a1;
                v372 = xmmword_1E3047670;
                v374 = xmmword_1E30476A0;
                while (v463 - 1 != v377)
                {
                  LODWORD(v377) = v377 + 1;
                  if ((*(*(v543 + 32) + 24 * v377 + 8) & 0x80000000) != 0)
                  {
                    goto LABEL_773;
                  }
                }

                LODWORD(v377) = v463;
LABEL_773:
                ;
              }

              if (v380)
              {
                v464 = 0;
                v465 = (*(v376 + 32) + 8);
                while (1)
                {
                  v466 = *v465;
                  v465 += 6;
                  if (v466 < 0)
                  {
                    break;
                  }

                  if (v380 == ++v464)
                  {
                    LODWORD(v464) = v380;
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v464) = 0;
              }

              if (v464 != v380)
              {
                break;
              }

LABEL_781:
              v467 = *(v72 + 88);
              if (v467 <= v128 + 1)
              {
                v467 = v128 + 1;
              }

              while (v467 - 1 != v128)
              {
                LODWORD(v128) = v128 + 1;
                if ((*(*(v72 + 72) + 184 * v128) & 0x80000000) != 0)
                {
                  goto LABEL_858;
                }
              }

              LODWORD(v128) = v467;
LABEL_858:
              if (v128 == v536)
              {
                goto LABEL_701;
              }
            }

            v468 = v380;
            v469 = 1;
            v539 = v380;
            while (1)
            {
              v470 = *(*(v376 + 32) + 24 * v464 + 16);
              v545 = *(v470 + 232);
              if (v545)
              {
                v471 = 0;
                v472 = (*(v470 + 216) + 8);
                while (1)
                {
                  v473 = *v472;
                  v472 += 6;
                  if (v473 < 0)
                  {
                    break;
                  }

                  if (v545 == ++v471)
                  {
                    LODWORD(v471) = *(v470 + 232);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v471) = 0;
              }

              v541 = *(*(v376 + 32) + 24 * v464 + 16);
              v542 = v464;
              if (v471 != v545)
              {
                break;
              }

LABEL_847:
              if (v468 <= v464 + 1)
              {
                v535 = v464 + 1;
              }

              else
              {
                v535 = v468;
              }

              LODWORD(v128) = v540;
              while (v535 - 1 != v464)
              {
                LODWORD(v464) = v464 + 1;
                if ((*(*(v376 + 32) + 24 * v464 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_855;
                }
              }

              LODWORD(v464) = v535;
LABEL_855:
              if (v464 == v539)
              {
                goto LABEL_781;
              }
            }

            while (1)
            {
              v474 = *(v470 + 216) + 24 * v471;
              v373 = vcvtq_f64_u64(vandq_s8(vdupq_n_s64(v469), xmmword_1E3049630));
              *&v373.f64[0] = vcvt_f32_f64(v373);
              v546 = v469;
              *&v373.f64[1] = (v469 & 4);
              *(v126 + 1248) = v373;
              v122 = *(v474 + 16);
              v544 = (v474 + 16);
              v9 = *(v122 + 76);
              if (v9)
              {
                v475 = 0;
                v476 = (*(v122 + 36) + 8);
                while (1)
                {
                  v477 = *v476;
                  v476 += 6;
                  if (v477 < 0)
                  {
                    break;
                  }

                  if (v9 == ++v475)
                  {
                    LODWORD(v475) = *(v122 + 76);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v475) = 0;
              }

              if (v475 != v9)
              {
                break;
              }

LABEL_835:
              v528 = *(v122 + 7);
              v9 = v548;
              v375 = xmmword_1E3047680;
              v529 = 1.0;
              if (v528)
              {
                v530 = *(v122 + 8);
                v531 = 16 * v528;
                do
                {
                  v532 = *v530++;
                  v533 = v532;
                  out[0] = v372;
                  out[1] = v375;
                  *(&v533 + 3) = v529;
                  out[2] = v374;
                  v596 = v533;
                  re::DebugRenderer::drawSphere(v548, out, 4, v599, 1, 0.01);
                  v529 = 1.0;
                  v375 = xmmword_1E3047680;
                  v374 = xmmword_1E30476A0;
                  v372 = xmmword_1E3047670;
                  v531 -= 16;
                }

                while (v531);
              }

              v126 = &v581;
              v469 = v546 + 1;
              v470 = v541;
              LODWORD(v464) = v542;
              v534 = *(v541 + 232);
              if (v534 <= v471 + 1)
              {
                v534 = v471 + 1;
              }

              v72 = a1;
              v376 = v543;
              while (v534 - 1 != v471)
              {
                LODWORD(v471) = v471 + 1;
                if ((*(*(v541 + 216) + 24 * v471 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_845;
                }
              }

              LODWORD(v471) = v534;
LABEL_845:
              if (v471 == v545)
              {
                v468 = *(v543 + 48);
                goto LABEL_847;
              }
            }

            while (1)
            {
              v478 = *(*(v122 + 36) + 24 * v475 + 16);
              v479 = re::ecs2::EntityComponentCollection::get((v478 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (!v479)
              {
                break;
              }

              v481 = *(v479 + 160);
              re::DynamicString::format("%d\n", &v588, v481);
              re::TransformService::worldTransform(*(a1 + 528), v478, 0, &v592);
              v482 = *(v126 + 160);
              v483 = vmulq_f32(v482, v482);
              v484 = v483.f32[2] + vaddv_f32(*v483.f32);
              v485 = 0uLL;
              if (fabsf(v484) >= 1.0e-10)
              {
                v486 = v484;
                v487 = vrsqrte_f32(LODWORD(v484));
                v488 = vmul_f32(v487, vrsqrts_f32(LODWORD(v486), vmul_f32(v487, v487)));
                v485 = vmulq_n_f32(v482, vmul_f32(v488, vrsqrts_f32(LODWORD(v486), vmul_f32(v488, v488))).f32[0]);
              }

              v566 = *(v126 + 176);
              v489 = v592.f32[2];
              v482.i32[0] = HIDWORD(*(v126 + 160));
              v490 = fabsf(v482.f32[3]);
              v491 = 1.0;
              if (v490 <= 1.0 || (v491 = 1.0, fabsf(v490 + -1.0) < (((v490 + 1.0) + 1.0) * 0.00001)))
              {
                if (v482.f32[3] > v491)
                {
                  v482.f32[0] = v491;
                }

                if (v482.f32[0] < -1.0)
                {
                  v482.f32[0] = -1.0;
                }

                v561 = v485;
                v493 = acosf(v482.f32[0]);
                v485 = v561;
                v492 = v493 + v493;
              }

              else
              {
                v492 = NAN;
              }

              v494 = vmulq_f32(v485, v485);
              v495 = v494.f32[2] + vaddv_f32(*v494.f32);
              if (fabsf(v495) >= 1.0e-10)
              {
                v496 = v495;
                v497 = vrsqrte_f32(LODWORD(v495));
                v498 = vmul_f32(v497, vrsqrts_f32(LODWORD(v496), vmul_f32(v497, v497)));
                v485 = vmulq_n_f32(v485, vmul_f32(v498, vrsqrts_f32(LODWORD(v496), vmul_f32(v498, v498))).f32[0]);
              }

              v499 = v566;
              v552 = v489 * 0.025;
              *&v500 = 0;
              *(&v500 + 1) = __PAIR64__(1.0, COERCE_UNSIGNED_INT(fminf((v481 * 0.005) + 0.005, 0.05)));
              v550 = v500;
              v499.i32[3] = 1.0;
              v562 = v485;
              v567 = v499;
              v549 = vmulq_f32(v485, v485).f32[0];
              v501 = vmuls_lane_f32(v485.f32[1], *v485.f32, 1);
              v502 = vmuls_lane_f32(v485.f32[2], v485, 2);
              v503 = vmuls_lane_f32(v485.f32[0], *v485.f32, 1);
              v504 = vmuls_lane_f32(v485.f32[0], v485, 2);
              v505 = vmuls_lane_f32(v485.f32[1], v485, 2);
              v506 = __sincosf_stret(v492);
              v507 = 0;
              v508 = vmuls_lane_f32(v506.__sinval, *v562.f32, 1);
              v509 = vmuls_lane_f32(v506.__sinval, v562, 2);
              HIDWORD(v510) = 0;
              *&v510 = v549 + (v506.__cosval * (1.0 - v549));
              *(&v510 + 1) = v509 + (v503 * (1.0 - v506.__cosval));
              *(&v510 + 2) = -(v508 - (v504 * (1.0 - v506.__cosval)));
              HIDWORD(v511) = 0;
              *&v511 = -(v509 - (v503 * (1.0 - v506.__cosval)));
              *(&v511 + 1) = v501 + (v506.__cosval * (1.0 - v501));
              *(&v511 + 2) = (v506.__sinval * v562.f32[0]) + (v505 * (1.0 - v506.__cosval));
              v512.f32[0] = v508 + (v504 * (1.0 - v506.__cosval));
              v512.f32[1] = -((v506.__sinval * v562.f32[0]) - (v505 * (1.0 - v506.__cosval)));
              v512.i64[1] = COERCE_UNSIGNED_INT(v502 + (v506.__cosval * (1.0 - v502)));
              v581 = v510;
              v582 = v511;
              v583 = v512;
              v584 = xmmword_1E30474D0;
              do
              {
                out[v507 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*(&v581 + v507))), xmmword_1E3047680, *(&v581 + v507), 1), xmmword_1E30476A0, *(&v581 + v507), 2), v567, *(&v581 + v507), 3);
                v507 += 16;
              }

              while (v507 != 64);
              v513 = 0;
              v514 = out[0];
              v515 = out[1];
              v516 = out[2];
              v517 = v596;
              v581 = xmmword_1E3047670;
              v582 = xmmword_1E3047680;
              v583 = xmmword_1E30476A0;
              v584 = v550;
              do
              {
                out[v513 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, COERCE_FLOAT(*(&v581 + v513))), v515, *(&v581 + v513), 1), v516, *(&v581 + v513), 2), v517, *(&v581 + v513), 3);
                v513 += 16;
              }

              while (v513 != 64);
              v518 = 0;
              v519 = out[0];
              v520 = out[1];
              v521 = out[2];
              v522 = v596;
              LODWORD(v523) = 0;
              *(&v523 + 1) = v552;
              v524.i64[0] = 0;
              v524.i64[1] = LODWORD(v552);
              v581 = LODWORD(v552);
              v582 = v523;
              v583 = v524;
              v584 = xmmword_1E30474D0;
              do
              {
                out[v518 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, COERCE_FLOAT(*(&v581 + v518))), v520, *(&v581 + v518), 1), v521, *(&v581 + v518), 2), v522, *(&v581 + v518), 3);
                v518 += 16;
              }

              while (v518 != 64);
              if (BYTE8(v588))
              {
                v525 = v589.i64[0];
              }

              else
              {
                v525 = &v588 + 9;
              }

              v126 = &v581;
              *&v526 = *v599;
              *(&v526 + 1) = __PAIR64__(1.0, *&v599[8]);
              v581 = v526;
              re::DebugRenderer::drawText(v548, out, v525, &v568, &v581, 0);
              v125 = v588;
              if (v588 && (BYTE8(v588) & 1) != 0)
              {
                v125 = (*(*v588 + 40))();
              }

              v527 = *(v122 + 76);
              if (v527 <= v475 + 1)
              {
                v527 = v475 + 1;
              }

              v372 = xmmword_1E3047670;
              v374 = xmmword_1E30476A0;
              while (v527 - 1 != v475)
              {
                LODWORD(v475) = v475 + 1;
                if ((*(*(v122 + 36) + 24 * v475 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_833;
                }
              }

              LODWORD(v475) = v527;
LABEL_833:
              if (v475 == v9)
              {
                v122 = *v544;
                goto LABEL_835;
              }
            }

            re::internal::assertLog(4, v480, "assertion failure: '%s' (%s:line %i) MeshSortingComponent must exist for entities in sort groups", "meshSortingComponent", "drawDebug", 1668);
            _os_crash();
            __break(1u);
LABEL_861:
            dispatch_once(&re::CARESortingDefaults::enableDrawLayerSortingGroups(void)::onceToken, &__block_literal_global_12);
            v72 = a1;
          }

          if (!*(v72 + 544))
          {
LABEL_693:
            (*(**(v72 + 504) + 8))(out);
            v369 = *(v550 + 60);
            *(a1 + 536) = *(v103 + 192);
            *(v103 + 192) = v369;
            v370 = *(a1 + 552);
            *(a1 + 552) = out[1].i64[0];
            out[1].i64[0] = v370;
            re::AssetHandle::~AssetHandle(out);
          }

          re::AssetHandle::loadAsync((v550 + 60));
        }

        else
        {
LABEL_689:
          if (atomic_exchange(_MergedGlobals_139, 1u))
          {
            goto LABEL_696;
          }

          v367 = *re::sortingLogObjects(v86);
          v368 = os_log_type_enabled(v367, OS_LOG_TYPE_DEFAULT);
          v72 = a1;
          if (!v368)
          {
            goto LABEL_696;
          }

          out[0].i16[0] = 0;
          _os_log_impl(&dword_1E1C61000, v367, OS_LOG_TYPE_DEFAULT, "No AssetService found, CARE sorting debug drawing will not be performed.", out, 2u);
        }

LABEL_695:
        v72 = a1;
        goto LABEL_696;
      }

      v551 = *(v72 + 88);
      while (1)
      {
        v131 = *(v72 + 72) + 184 * v119;
        v553 = v119;
        if (!v575)
        {
          goto LABEL_261;
        }

        v132 = *(v131 + 8);
        v133 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v132 ^ (v132 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v132 ^ (v132 >> 30))) >> 27));
        v134 = *(v576 + 4 * ((v133 ^ (v133 >> 31)) % v577));
        if (v134 == 0x7FFFFFFF)
        {
          goto LABEL_261;
        }

        while (*(*(&v576 + 1) + 72 * v134 + 8) != v132)
        {
          LODWORD(v134) = *(*(&v576 + 1) + 72 * v134) & 0x7FFFFFFF;
          if (v134 == 0x7FFFFFFF)
          {
            goto LABEL_261;
          }
        }

        v135 = *(&v576 + 1) + 72 * v134;
        v136 = *(v135 + 44);
        if (v136)
        {
          v568.var1 = 0;
          v569 = 0;
          v570 = 0;
          v571 = 0;
          *&v568.var0 = v575;
          re::DynamicArray<float *>::setCapacity(&v568, v136);
          ++v570;
          v137 = *(v135 + 48);
          if (v137)
          {
            v138 = 0;
            v139 = (*(v135 + 32) + 8);
            while (1)
            {
              v140 = *v139;
              v139 += 6;
              if (v140 < 0)
              {
                break;
              }

              if (v137 == ++v138)
              {
                LODWORD(v138) = *(v135 + 48);
                break;
              }
            }
          }

          else
          {
            LODWORD(v138) = 0;
          }

LABEL_686:
          while (v138 != v137)
          {
            out[0].i64[0] = *(*(v135 + 32) + 24 * v138 + 16);
            re::DynamicArray<re::TransitionCondition *>::add(&v568, out);
            v366 = *(v135 + 48);
            if (v366 <= v138 + 1)
            {
              v366 = v138 + 1;
            }

            while (v366 - 1 != v138)
            {
              LODWORD(v138) = v138 + 1;
              if ((*(*(v135 + 32) + 24 * v138 + 8) & 0x80000000) != 0)
              {
                goto LABEL_686;
              }
            }

            LODWORD(v138) = v366;
          }
        }

        else
        {
LABEL_261:
          v571 = 0;
          v568.var1 = 0;
          v569 = 0;
          *&v568.var0 = 0;
          v570 = 0;
        }

        v141 = v571;
        v142 = v569;
        if (v569)
        {
          v143 = &v571[v569];
          v144 = v571;
          do
          {
            v9 = *v144;
            v145 = re::ecs2::EntityComponentCollection::get((*v144 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v145)
            {
              v146 = v145;
              v147 = re::ecs2::EntityComponentCollection::get((v9 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (!v147 || *(v147 + 80) != 3)
              {
                while (1)
                {
                  v9 = *(v9 + 32);
                  if (!v9 || (*(v9 + 304) & 0x80) != 0)
                  {
                    break;
                  }

                  v148 = re::ecs2::EntityComponentCollection::get((v9 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                  if (v148 && *(v148 + 80) == 3)
                  {
                    re::ecs2::UISortingComponent::setCaSortOrder(v146, *(v148 + 88));
                    break;
                  }
                }
              }
            }

            ++v144;
          }

          while (v144 != v143);
        }

        v149 = v131 + 16;
        v150 = *(v131 + 44);
        if (v142 <= 1)
        {
          v151 = 1;
        }

        else
        {
          v151 = v142;
        }

        v583.i32[0] = 0;
        if (v150 <= 1)
        {
          v152 = 1;
        }

        else
        {
          v152 = v150;
        }

        v582 = 0u;
        v581 = 0u;
        *(v583.i64 + 4) = 0x7FFFFFFFLL;
        re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(&v581, v555, v151);
        LODWORD(v594) = 0;
        v592 = 0u;
        v593 = 0u;
        *(&v594 + 4) = 0x7FFFFFFFLL;
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(&v592, v555, v152);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(&v592);
        v153 = *(v131 + 48);
        if (v153)
        {
          v154 = 0;
          v155 = (*(v149 + 16) + 8);
          while (1)
          {
            v156 = *v155;
            v155 += 6;
            if (v156 < 0)
            {
              break;
            }

            if (v153 == ++v154)
            {
              LODWORD(v154) = *(v149 + 32);
              break;
            }
          }
        }

        else
        {
          LODWORD(v154) = 0;
        }

LABEL_293:
        while (v154 != v153)
        {
          v157 = *(*(v149 + 16) + 24 * v154 + 16);
          out[0].i64[0] = v157;
          v158 = (v157 + 8);
          if (!*(v157 + 52))
          {
            re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(&v592, out);
          }

          v159 = *(v149 + 32);
          if (v159 <= v154 + 1)
          {
            v159 = v154 + 1;
          }

          while (v159 - 1 != v154)
          {
            LODWORD(v154) = v154 + 1;
            if ((*(*(v149 + 16) + 24 * v154 + 8) & 0x80000000) != 0)
            {
              goto LABEL_293;
            }
          }

          LODWORD(v154) = v159;
        }

        v160 = v594;
        if (v594)
        {
          v161 = 0;
          v162 = (v593 + 8);
          while (1)
          {
            v163 = *v162;
            v162 += 6;
            if (v163 < 0)
            {
              break;
            }

            if (v594 == ++v161)
            {
              LODWORD(v161) = v594;
              break;
            }
          }
        }

        else
        {
          LODWORD(v161) = 0;
        }

        if (v161 != v594)
        {
          v9 = v593;
          do
          {
            v164 = *(v9 + 24 * v161 + 16);
            if (v164)
            {
              v165 = (v164 + 8);
              re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(v149, v164);
              re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(v149 + 48, v164);
            }

            else
            {
              re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(v149, 0);
              re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(v149 + 48, 0);
            }

            if (v160 <= v161 + 1)
            {
              v166 = v161 + 1;
            }

            else
            {
              v166 = v160;
            }

            while (v166 - 1 != v161)
            {
              LODWORD(v161) = v161 + 1;
              if ((*(v9 + 24 * v161 + 8) & 0x80000000) != 0)
              {
                goto LABEL_312;
              }
            }

            LODWORD(v161) = v166;
LABEL_312:
            ;
          }

          while (v161 != v160);
        }

        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(&v592);
        re::ecs2::WorldSortingState::recomputeCodirectionalGroupAverages(v149, v167, v168, v169, v170, v171);
        if (v142)
        {
          v172 = 8 * v142;
          v173 = v172;
          v174 = v141;
          do
          {
            v175 = *v174++;
            *v599 = v175;
            re::ecs2::CARESortingManager::optionalSortingPlaneFrom(out, v175, *(v149 + 152));
            v588 = out[1];
            v589 = out[2];
            re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(&v581, v599, &v588);
            v173 -= 8;
          }

          while (v173);
          re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(&v592);
          do
          {
            *&v588 = *v141;
            v176 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v149 + 96, &v588);
            if (v176)
            {
              *v599 = *v176;
              v177 = *v599;
              if (*v599)
              {
                v178 = (*v599 + 8);
              }

              v9 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(&v581, &v588);
              re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(v149 + 48, v599);
              v177[9].i8[0] = 1;
              if (v9 && (v179 = vmulq_f32(v177[7], *v9), (1.0 - (v179.f32[2] + vaddv_f32(*v179.f32))) <= *&dword_1EE19E35C))
              {
                out[0].i64[0] = v588;
                re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(&v177[21].i64[1], out);
              }

              else
              {
                re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v149 + 96, &v588);
                re::ecs2::CAMeshCodirectionalGroup::remove(v177, v588);
                re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(&v592, v599);
              }
            }

            ++v141;
            v172 -= 8;
          }

          while (v172);
        }

        else
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(&v592);
        }

        v180 = v594;
        if (v594)
        {
          v181 = 0;
          v182 = (v593 + 8);
          while (1)
          {
            v183 = *v182;
            v182 += 6;
            if (v183 < 0)
            {
              break;
            }

            if (v594 == ++v181)
            {
              LODWORD(v181) = v594;
              break;
            }
          }
        }

        else
        {
          LODWORD(v181) = 0;
        }

        if (v181 != v594)
        {
          v184 = v593;
          do
          {
            v185 = *(v184 + 24 * v181 + 16);
            if (v185)
            {
              v186 = (v185 + 8);
            }

            v9 = *(v185 + 56);
            if (v9)
            {
              v187 = 0;
              v188 = (*(v185 + 40) + 8);
              while (1)
              {
                v189 = *v188;
                v188 += 6;
                if (v189 < 0)
                {
                  break;
                }

                if (v9 == ++v187)
                {
                  LODWORD(v187) = *(v185 + 56);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v187) = 0;
            }

            while (v187 != v9)
            {
              v190 = *(*(v185 + 40) + 24 * v187 + 16);
              *v599 = v190;
              if (!v581 || (v191 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v190 ^ (v190 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v190 ^ (v190 >> 30))) >> 27)), v192 = *(*(&v581 + 1) + 4 * ((v191 ^ (v191 >> 31)) % DWORD2(v582))), v192 == 0x7FFFFFFF))
              {
LABEL_349:
                re::ecs2::CARESortingManager::optionalSortingPlaneFrom(out, v190, *(v149 + 152));
                v588 = out[1];
                v589 = out[2];
                re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(&v581, v599, &v588);
              }

              else
              {
                while (*(v582 + (v192 << 6) + 8) != v190)
                {
                  v192 = *(v582 + (v192 << 6)) & 0x7FFFFFFF;
                  if (v192 == 0x7FFFFFFF)
                  {
                    goto LABEL_349;
                  }
                }
              }

              re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v149 + 96, v599);
              v193 = *(v185 + 56);
              if (v193 <= v187 + 1)
              {
                v193 = v187 + 1;
              }

              while (v193 - 1 != v187)
              {
                LODWORD(v187) = v187 + 1;
                if ((*(*(v185 + 40) + 24 * v187 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_356;
                }
              }

              LODWORD(v187) = v193;
LABEL_356:
              ;
            }

            re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v185 + 24);
            re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v185 + 344);
            *(v185 + 144) = 1;
            v194 = (v185 + 8);
            re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(v149, v185);
            re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(v149 + 48, v185);

            if (v180 <= v181 + 1)
            {
              v195 = v181 + 1;
            }

            else
            {
              v195 = v180;
            }

            while (v195 - 1 != v181)
            {
              LODWORD(v181) = v181 + 1;
              if ((*(v184 + 24 * v181 + 8) & 0x80000000) != 0)
              {
                goto LABEL_364;
              }
            }

            LODWORD(v181) = v195;
LABEL_364:
            ;
          }

          while (v181 != v180);
        }

        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(&v592);
        if (HIDWORD(v582))
        {
          v202 = v583.i32[0];
          if (v583.i32[0])
          {
            v203 = 0;
            v204 = v582;
            while (1)
            {
              v205 = *v204;
              v204 += 16;
              if (v205 < 0)
              {
                break;
              }

              if (v583.u32[0] == ++v203)
              {
                LODWORD(v203) = v583.i32[0];
                break;
              }
            }
          }

          else
          {
            LODWORD(v203) = 0;
          }

          if (v203 != v583.i32[0])
          {
            v206 = v582;
            do
            {
              v207 = (v206 + (v203 << 6));
              v208 = v207->i64[1];
              *&v588 = v208;
              if (!*(v149 + 96) || (v209 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v208 ^ (v208 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v208 ^ (v208 >> 30))) >> 27)), v210 = *(*(v149 + 104) + 4 * ((v209 ^ (v209 >> 31)) % *(v149 + 120))), v210 == 0x7FFFFFFF))
              {
LABEL_380:
                v212 = *(v149 + 32);
                if (v212)
                {
                  v213 = 0;
                  v214 = (*(v149 + 16) + 8);
                  while (1)
                  {
                    v215 = *v214;
                    v214 += 6;
                    if (v215 < 0)
                    {
                      break;
                    }

                    if (v212 == ++v213)
                    {
                      LODWORD(v213) = *(v149 + 32);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v213) = 0;
                }

                if (v213 == v212)
                {
LABEL_397:
                  v223 = re::globalAllocators(v196);
                  v224 = (*(*v223[2] + 32))(v223[2], 448, 16);
                  ArcSharedObject::ArcSharedObject(v224, 0);
                  *v225 = &unk_1F5CD1EE0;
                  uuid_generate_random(out);
                  *(v224 + 16) = (out[0].i64[1] + (out[0].i64[0] << 6) + (out[0].i64[0] >> 2) - 0x61C8864680B583E9) ^ out[0].i64[0];
                  *(v224 + 24) = 0u;
                  *(v224 + 40) = 0u;
                  *(v224 + 56) = 0;
                  *(v224 + 60) = 0x7FFFFFFFLL;
                  *(v224 + 168) = 0u;
                  *(v224 + 184) = 0;
                  *(v224 + 152) = 0u;
                  v9 = v224 + 152;
                  *(v224 + 80) = 0u;
                  *(v224 + 96) = 0u;
                  *(v224 + 112) = 0u;
                  *(v224 + 128) = 0u;
                  *(v224 + 144) = 0;
                  *(v224 + 188) = 0x7FFFFFFFLL;
                  *(v224 + 200) = 0u;
                  *(v224 + 216) = 0u;
                  *(v224 + 232) = 0;
                  *(v224 + 236) = 0x7FFFFFFFLL;
                  *(v224 + 280) = 0;
                  *(v224 + 248) = 0u;
                  *(v224 + 264) = 0u;
                  *(v224 + 284) = 0x7FFFFFFFLL;
                  *(v224 + 296) = 0u;
                  *(v224 + 312) = 0u;
                  *(v224 + 328) = 0;
                  *(v224 + 332) = 0x7FFFFFFFLL;
                  *(v224 + 344) = 0u;
                  *(v224 + 360) = 0u;
                  *(v224 + 376) = 0;
                  *(v224 + 380) = 0x7FFFFFFFLL;
                  *(v224 + 424) = 0;
                  *(v224 + 400) = 0;
                  *(v224 + 408) = 0;
                  *(v224 + 416) = 0;
                  *(v224 + 392) = 0;
                  *(v224 + 432) = *(v149 + 144) + 440;
                  out[0].i64[0] = v224;
                  re::ecs2::CAMeshCodirectionalGroup::add(v224, v588);
                  re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addOrReplace(v149 + 96, &v588, out);
                  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(v149, out);
                  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(v149 + 48, out);
                }

                else
                {
                  v216 = *(v149 + 16);
                  v217 = v207[1];
                  while (1)
                  {
                    v218 = v216 + 24 * v213;
                    v220 = *(v218 + 16);
                    v219 = (v218 + 16);
                    v196 = v220;
                    v221 = vmulq_f32(v217, v220[7]);
                    if ((1.0 - (v221.f32[2] + vaddv_f32(*v221.f32))) <= *&dword_1EE19E35C)
                    {
                      break;
                    }

                    if (v212 <= v213 + 1)
                    {
                      v222 = v213 + 1;
                    }

                    else
                    {
                      v222 = *(v149 + 32);
                    }

                    while (v222 - 1 != v213)
                    {
                      LODWORD(v213) = v213 + 1;
                      if ((*(v216 + 24 * v213 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_396;
                      }
                    }

                    LODWORD(v213) = v222;
LABEL_396:
                    if (v213 == v212)
                    {
                      goto LABEL_397;
                    }
                  }

                  re::ecs2::CAMeshCodirectionalGroup::add(v196, v208);
                  re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addOrReplace(v149 + 96, &v588, v219);
                  v196 = re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(v149 + 48, v219);
                }
              }

              else
              {
                v211 = *(v149 + 112);
                while (*(v211 + 32 * v210 + 8) != v208)
                {
                  v210 = *(v211 + 32 * v210) & 0x7FFFFFFF;
                  if (v210 == 0x7FFFFFFF)
                  {
                    goto LABEL_380;
                  }
                }
              }

              if (v583.i32[0] <= (v203 + 1))
              {
                v228 = v203 + 1;
              }

              else
              {
                v228 = v583.i32[0];
              }

              v206 = v582;
              while (v228 - 1 != v203)
              {
                LODWORD(v203) = v203 + 1;
                if ((*(v582 + (v203 << 6)) & 0x80000000) != 0)
                {
                  goto LABEL_407;
                }
              }

              LODWORD(v203) = v228;
LABEL_407:
              ;
            }

            while (v203 != v202);
          }

          re::ecs2::WorldSortingState::recomputeCodirectionalGroupAverages(v149, v197, v198, v199, v200, v201);
          v229 = *(v149 + 28);
          if (v229 > 1)
          {
            v589.i64[0] = 0;
            v589.i32[2] = 0;
            v590 = 0;
            v588 = v555;
            v230 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v588, v229);
            v126 = ++v589.i32[2];
            v231 = *(v149 + 32);
            if (v231)
            {
              v232 = 0;
              v233 = (*(v149 + 16) + 8);
              while (1)
              {
                v234 = *v233;
                v233 += 6;
                if (v234 < 0)
                {
                  break;
                }

                if (v231 == ++v232)
                {
                  LODWORD(v232) = *(v149 + 32);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v232) = 0;
            }

            if (v232 == v231)
            {
              v235 = v589.i64[0];
              v557 = v590;
            }

            else
            {
              v235 = v589.i64[0];
              do
              {
                v236 = *(v149 + 16);
                if (v235 >= *(&v588 + 1))
                {
                  if (*(&v588 + 1) < v235 + 1)
                  {
                    if (v588)
                    {
                      v237 = 8;
                      if (*(&v588 + 1))
                      {
                        v237 = 2 * *(&v588 + 1);
                      }

                      if (v237 <= v235 + 1)
                      {
                        v238 = v235 + 1;
                      }

                      else
                      {
                        v238 = v237;
                      }

                      v230 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v588, v238);
                    }

                    else
                    {
                      v230 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v588, v235 + 1);
                      ++v589.i32[2];
                    }
                  }

                  v235 = v589.i64[0];
                }

                v239 = *(v236 + 24 * v232 + 16);
                v557 = v590;
                *(v590 + 8 * v235) = v239;
                if (v239)
                {
                  v230 = (v239 + 8);
                }

                v589.i64[0] = ++v235;
                v126 = ++v589.i32[2];
                v240 = *(v149 + 32);
                if (v240 <= v232 + 1)
                {
                  v240 = v232 + 1;
                }

                while (v240 - 1 != v232)
                {
                  LODWORD(v232) = v232 + 1;
                  if ((*(*(v149 + 16) + 24 * v232 + 8) & 0x80000000) != 0)
                  {
                    goto LABEL_437;
                  }
                }

                LODWORD(v232) = v240;
LABEL_437:
                ;
              }

              while (v232 != v231);
            }

            if (v235 >= 2)
            {
              v241 = 0;
              v242 = v557;
              v563 = v557 - 8;
              v558 = 1;
LABEL_440:
              if (v235 <= v241)
              {
                v591 = 0;
                v596 = 0u;
                v597 = 0u;
                memset(out, 0, sizeof(out));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v599 = 136315906;
                *&v599[4] = "operator[]";
                v600 = 1024;
                v601 = 789;
                v602 = 2048;
                v603 = v241;
                v604 = 2048;
                v605 = v235;
                _os_log_send_and_compose_impl();
                v125 = _os_crash_msg();
                __break(1u);
                goto LABEL_699;
              }

              v554 = v241;
              v9 = *(v242 + 8 * v241);
              v587 = v9;
              if (v9)
              {
                v243 = (v9 + 8);
              }

              v244 = v235;
              v241 = v558;
              while (1)
              {
                if (v235 <= --v244)
                {
                  v591 = 0;
                  v596 = 0u;
                  v597 = 0u;
                  memset(out, 0, sizeof(out));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v599 = 136315906;
                  *&v599[4] = "operator[]";
                  v600 = 1024;
                  v601 = 789;
                  v602 = 2048;
                  v603 = v244;
                  v604 = 2048;
                  v605 = v235;
                  _os_log_send_and_compose_impl();
                  v86 = _os_crash_msg();
                  __break(1u);
                  goto LABEL_689;
                }

                v245 = *(v242 + 8 * v244);
                if (v245)
                {
                  v246 = &v245->u32[2];
                }

                v247 = vmulq_f32(*(v9 + 112), v245[7]);
                if ((1.0 - (v247.f32[2] + vaddv_f32(*v247.f32))) <= *&dword_1EE19E35C)
                {
                  break;
                }

LABEL_484:

                if (v241 >= v244)
                {
                  if (*(v9 + 144) == 1)
                  {
                    re::ecs2::CAMeshCodirectionalGroup::recomputeAverages(v9, v263, v264, v265, v266, v267);
                    v241 = v554;
                  }

                  v558 = v241 + 1;
                  if (v241 + 1 >= v235)
                  {
                    v268 = v590;
                    goto LABEL_490;
                  }

                  goto LABEL_440;
                }
              }

              v248 = v126;
              v249 = v245[3].u32[2];
              if (v249)
              {
                v250 = 0;
                v251 = (v245[2].i64[1] + 8);
                while (1)
                {
                  v252 = *v251;
                  v251 += 6;
                  if (v252 < 0)
                  {
                    break;
                  }

                  if (v249 == ++v250)
                  {
                    LODWORD(v250) = v245[3].i32[2];
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v250) = 0;
              }

              v253 = v245[3].u32[2];
LABEL_455:
              while (v250 != v249)
              {
                out[0].i64[0] = *(v245[2].i64[1] + 24 * v250 + 16);
                re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addOrReplace(v149 + 96, out, &v587);
                v253 = v245[3].u32[2];
                if (v253 <= v250 + 1)
                {
                  v254 = v250 + 1;
                }

                else
                {
                  v254 = v245[3].i32[2];
                }

                while (v254 - 1 != v250)
                {
                  LODWORD(v250) = v250 + 1;
                  if ((*(v245[2].i64[1] + 24 * v250 + 8) & 0x80000000) != 0)
                  {
                    goto LABEL_455;
                  }
                }

                LODWORD(v250) = v254;
              }

              if (v253)
              {
                v255 = 0;
                v256 = (v245[2].i64[1] + 8);
                v257 = v248;
                v241 = v558;
                while (1)
                {
                  v258 = *v256;
                  v256 += 6;
                  if (v258 < 0)
                  {
                    break;
                  }

                  if (v253 == ++v255)
                  {
                    LODWORD(v255) = v253;
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v255) = 0;
                v257 = v248;
                v241 = v558;
              }

              if (v255 != v253)
              {
                v259 = v245[2].i64[1];
                do
                {
                  re::ecs2::CAMeshCodirectionalGroup::add(v9, *(v259 + 24 * v255 + 16));
                  v260 = v245[3].u32[2];
                  v259 = v245[2].i64[1];
                  if (v260 <= v255 + 1)
                  {
                    v260 = v255 + 1;
                  }

                  while (v260 - 1 != v255)
                  {
                    LODWORD(v255) = v255 + 1;
                    if ((*(v259 + 24 * v255 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_477;
                    }
                  }

                  LODWORD(v255) = v260;
LABEL_477:
                  ;
                }

                while (v255 != v253);
              }

              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(&v245[1].i64[1]);
              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(&v245[21].i64[1]);
              v245[9].i8[0] = 1;
              if (v235 - 1 <= v244)
              {
                v261 = *(v563 + 8 * v235);
                v242 = v557;
                if (!v261)
                {
LABEL_483:
                  v126 = (v257 + 1);
                  v262 = &v245->u32[2];
                  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(v149, v245);
                  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(v149 + 48, v245);

                  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(v149 + 48, &v587);
                  --v235;
                  goto LABEL_484;
                }
              }

              else
              {
                v242 = v557;
                v261 = *(v557 + 8 * v244);
                *(v557 + 8 * v244) = *(v563 + 8 * v235);
                *(v563 + 8 * v235) = v261;
                if (!v261)
                {
                  goto LABEL_483;
                }
              }

              *(v563 + 8 * v235) = 0;
              goto LABEL_483;
            }

            v268 = v557;
LABEL_490:
            v589.i64[0] = 0;
            if (v235)
            {
              v269 = 8 * v235;
              v270 = v268;
              do
              {
                if (*v270)
                {

                  *v270 = 0;
                }

                v270 += 8;
                v269 -= 8;
              }

              while (v269);
            }

            v589.i32[2] = v126 + 1;
            if (v588)
            {
              v271 = v268 == 0;
            }

            else
            {
              v271 = 1;
            }

            if (!v271)
            {
              *v197.i64 = (*(*v588 + 40))();
            }
          }
        }

        re::ecs2::WorldSortingState::recomputeCodirectionalGroupAverages(v149, v197, v198, v199, v200, v201);
        v273 = *(v149 + 80);
        if (v273)
        {
          v274 = 0;
          v275 = (*(v149 + 64) + 8);
          while (1)
          {
            v276 = *v275;
            v275 += 6;
            if (v276 < 0)
            {
              break;
            }

            if (v273 == ++v274)
            {
              LODWORD(v274) = *(v149 + 80);
              break;
            }
          }
        }

        else
        {
          LODWORD(v274) = 0;
        }

LABEL_515:
        while (v274 != v273)
        {
          v277 = *(*(v149 + 64) + 24 * v274 + 16);
          if (v277)
          {
            v278 = (v277 + 8);
            re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(v277, v279);
          }

          else
          {
            v272.n128_f64[0] = re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(0, v272);
          }

          v280 = *(v149 + 80);
          if (v280 <= v274 + 1)
          {
            v280 = v274 + 1;
          }

          while (v280 - 1 != v274)
          {
            LODWORD(v274) = v274 + 1;
            if ((*(*(v149 + 64) + 24 * v274 + 8) & 0x80000000) != 0)
            {
              goto LABEL_515;
            }
          }

          LODWORD(v274) = v280;
        }

        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v592);
        re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v581);
        if (*(v149 + 76))
        {
          v287 = (8 * *(v149 + 28)) | 1u;
          memset(&out[0].u32[2], 0, 20);
          out[2].i64[0] = 0;
          out[0].i64[0] = v555;
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(out, v287);
          ++out[1].i32[2];
          *&v593 = 0;
          DWORD2(v593) = 0;
          *&v594 = 0;
          v592 = v555;
          re::DynamicArray<float *>::setCapacity(&v592, 0x40uLL);
          ++DWORD2(v593);
          v288 = *(v149 + 80);
          if (v288)
          {
            v289 = 0;
            v290 = (*(v149 + 64) + 8);
            while (1)
            {
              v291 = *v290;
              v290 += 6;
              if (v291 < 0)
              {
                break;
              }

              if (v288 == ++v289)
              {
                LODWORD(v289) = *(v149 + 80);
                break;
              }
            }
          }

          else
          {
            LODWORD(v289) = 0;
          }

LABEL_533:
          while (v289 != v288)
          {
            v293 = *(*(v149 + 64) + 24 * v289 + 16);
            if (v293)
            {
              v294 = (v293 + 8);
              re::ecs2::CAMeshCodirectionalGroup::updateSortGroups(v293, v555, out, &v592);
            }

            else
            {
              re::ecs2::CAMeshCodirectionalGroup::updateSortGroups(0, v555, out, &v592);
            }

            v295 = *(v149 + 80);
            if (v295 <= v289 + 1)
            {
              v295 = v289 + 1;
            }

            while (v295 - 1 != v289)
            {
              LODWORD(v289) = v289 + 1;
              if ((*(*(v149 + 64) + 24 * v289 + 8) & 0x80000000) != 0)
              {
                goto LABEL_533;
              }
            }

            LODWORD(v289) = v295;
          }

          v583.i64[0] = 0;
          *&v582 = 0;
          v581 = 0uLL;
          DWORD2(v582) = 0;
          if (out[0].i64[0])
          {
            v296 = out[1].u64[0];
            *&v581 = out[0].i64[0];
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v581, out[1].u64[0]);
            ++DWORD2(v582);
            v297 = v582;
            if (v296 >= v582)
            {
              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v581, v296);
              v304 = out[2].i64[0];
              v305 = v582;
              v306 = v583.i64[0];
              if (v582)
              {
                v307 = 8 * v582;
                v9 = v583.i64[0];
                v308 = out[2].i64[0];
                do
                {
                  v309 = *v308++;
                  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v309);
                  v9 += 8;
                  v307 -= 8;
                }

                while (v307);
              }

              if (v305 != v296)
              {
                v310 = (v304 + 8 * v305);
                v311 = (v306 + 8 * v305);
                v312 = 8 * v296 - 8 * v305;
                do
                {
                  v313 = *v310;
                  *v311 = *v310;
                  if (v313)
                  {
                    v314 = (v313 + 8);
                  }

                  ++v310;
                  ++v311;
                  v312 -= 8;
                }

                while (v312);
              }
            }

            else
            {
              v298 = v583.i64[0];
              if (v296)
              {
                v299 = out[2].i64[0];
                v300 = 8 * v296;
                v9 = v583.i64[0];
                do
                {
                  v301 = *v299++;
                  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v301);
                  v9 += 8;
                  v300 -= 8;
                }

                while (v300);
              }

              v302 = v298 + 8 * v296;
              v303 = 8 * v297 - 8 * v296;
              do
              {
                if (*v302)
                {

                  *v302 = 0;
                }

                v302 += 8;
                v303 -= 8;
              }

              while (v303);
            }

            *&v582 = v296;
          }

          re::DynamicArray<char const*>::DynamicArray(&v583.i64[1], &v592);
          if (v592.i64[0] && v594)
          {
            (*(*v592.i64[0] + 40))();
          }

          re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(out);
          if (*(&v584 + 1))
          {
            v315 = v586;
            v316 = 8 * *(&v584 + 1);
            while (1)
            {
              v317 = *v315;
              v318 = re::ecs2::EntityComponentCollection::get((*v315 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v318)
              {
                break;
              }

LABEL_575:
              ++v315;
              v316 -= 8;
              if (!v316)
              {
                goto LABEL_576;
              }
            }

            v319 = v318;
            v9 = v318 + 176;
            v320 = *(v318 + 176);
            v321 = *(v318 + 160);
            v592.i8[0] = *(v318 + 432);
            if (v592.u8[0] == 1)
            {
              v322 = *(v318 + 464);
              v593 = *(v318 + 448);
              v594 = v322;
            }

            *(v318 + 304) = 1;
            out[1].i8[0] = 0;
            LOBYTE(v596) = 0;
            v598 = 0;
            out[0].i64[0] = 0;
            out[0].i16[4] = 0;
            re::ecs2::MeshSortGroupToken::operator=(v318 + 176, out);
            *(v319 + 160) = 0;
            v323 = *(v149 + 152);
            v324 = re::ecs2::EntityComponentCollection::get((v317 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v324 && *(v324 + 96) == 1)
            {
              re::ecs2::CARESortingManager::optionalSortingPlaneFrom(out, v317, v323);
              if (*(v9 + 256))
              {
                if (out[0].i8[0])
                {
                  goto LABEL_570;
                }

                goto LABEL_567;
              }

              if (out[0].i8[0])
              {
                *(v319 + 432) = 1;
LABEL_570:
                v325 = out[2];
                *(v319 + 448) = out[1];
                *(v319 + 464) = v325;
              }
            }

            else if (*(v9 + 256))
            {
LABEL_567:
              *(v9 + 256) = 0;
            }

            if (v320 != *v9 || v321 != *(v319 + 160) || re::Optional<re::SortingPlane>::operator!=(v592.f32, v9 + 256))
            {
              re::ecs2::Component::markDirty(v319);
            }

            goto LABEL_575;
          }
        }

        else
        {
          v581 = 0uLL;
          DWORD2(v582) = 0;
          *&v582 = 0;
          v586 = 0;
          v292 = 0uLL;
          v583 = 0u;
          v584 = 0u;
          v585 = 0;
        }

LABEL_576:
        if (v582)
        {
          v326 = v583.i64[0];
          v327 = 8 * v582;
          do
          {
            v328 = *v326;
            if (*v326)
            {
              v329 = &v328->n128_i8[8];
              re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(v328, v330, v331);
            }

            else
            {
              re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(0, v281, v282);
            }

            ++v326;
            v327 -= 8;
          }

          while (v327);
        }

        v332 = *(v149 + 80);
        if (v332)
        {
          v333 = 0;
          v334 = (*(v149 + 64) + 8);
          v103 = &v581;
          while (1)
          {
            v335 = *v334;
            v334 += 6;
            if (v335 < 0)
            {
              break;
            }

            if (v332 == ++v333)
            {
              LODWORD(v333) = *(v149 + 80);
              break;
            }
          }
        }

        else
        {
          LODWORD(v333) = 0;
          v103 = &v581;
        }

        v559 = *(v149 + 80);
        if (v333 != v332)
        {
          break;
        }

LABEL_664:
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(v149 + 48);
        if (v583.i64[1])
        {
          if (v586)
          {
            (*(*v583.i64[1] + 40))();
          }

          v586 = 0;
          v584 = 0uLL;
          v583.i64[1] = 0;
          ++v585;
        }

        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v581);
        v86 = *&v568.var0;
        if (*&v568.var0 && v571)
        {
          v86 = (*(**&v568.var0 + 40))();
        }

        v72 = a1;
        v365 = *(a1 + 88);
        LODWORD(v119) = v553;
        if (v365 <= v553 + 1)
        {
          v365 = v553 + 1;
        }

        while (v365 - 1 != v119)
        {
          LODWORD(v119) = v119 + 1;
          if ((*(*(a1 + 72) + 184 * v119) & 0x80000000) != 0)
          {
            goto LABEL_677;
          }
        }

        LODWORD(v119) = v365;
LABEL_677:
        if (v119 == v551)
        {
          goto LABEL_235;
        }
      }

      while (1)
      {
        v336 = *(*(v149 + 64) + 24 * v333 + 16);
        if (v336)
        {
          v337 = (v336 + 8);
        }

        if (*(v336 + 144) == 1)
        {
          v292 = re::ecs2::CAMeshCodirectionalGroup::recomputeAverages(v336, v292, v283, v284, v285, v286);
        }

        if (*(v336 + 145) == 1)
        {
          v338 = *(v336 + 232);
          if (v338)
          {
            v339 = 0;
            v340 = (*(v336 + 216) + 8);
            do
            {
              v341 = *v340;
              v340 += 6;
              if (v341 < 0)
              {
                goto LABEL_606;
              }

              ++v339;
            }

            while (v338 != v339);
            LODWORD(v339) = *(v336 + 232);
          }

          else
          {
            LODWORD(v339) = 0;
          }

LABEL_606:
          while (v339 != v338)
          {
            re::ecs2::CAMeshSortGroup::updateGroupToken(*(*(v336 + 216) + 24 * v339 + 16));
            v342 = *(v336 + 232);
            if (v342 <= v339 + 1)
            {
              v342 = v339 + 1;
            }

            while (v342 - 1 != v339)
            {
              LODWORD(v339) = v339 + 1;
              if ((*(*(v336 + 216) + 24 * v339 + 8) & 0x80000000) != 0)
              {
                goto LABEL_606;
              }
            }

            LODWORD(v339) = v342;
          }

          v343 = *(v336 + 56);
          if (v343)
          {
            v344 = 0;
            v345 = (*(v336 + 40) + 8);
            do
            {
              v346 = *v345;
              v345 += 6;
              if (v346 < 0)
              {
                goto LABEL_637;
              }

              ++v344;
            }

            while (v343 != v344);
            LODWORD(v344) = *(v336 + 56);
          }

          else
          {
            LODWORD(v344) = 0;
          }

LABEL_637:
          while (2)
          {
            if (v344 == v343)
            {
              *(v336 + 145) = 0;
              LODWORD(v332) = v559;
              break;
            }

            v347 = *(*(v336 + 40) + 24 * v344 + 16);
            LOBYTE(v588) = 0;
            v564 = *(v9 + 320);
            re::ecs2::CARESortingManager::optionalSortingPlaneFrom(out, v347, *(v336 + 432));
            v348 = out[2];
            if (*(v336 + 52) != 1)
            {
              v350 = *(v336 + 112);
              v349 = *(v336 + 128);
              v351 = vmulq_f32(v350, vsubq_f32(out[2], v349));
              v348 = vaddq_f32(v349, vmulq_n_f32(v350, v351.f32[2] + vaddv_f32(*v351.f32)));
            }

            *(v9 + 320) = v348;
            ++re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverrides;
            out[0].i8[0] = *(v9 + 432);
            if (out[0].u8[0] == 1)
            {
              v352 = *(v9 + 464);
              out[1] = *(v9 + 448);
              out[2] = v352;
            }

            v353 = *(v336 + 432);
            v354 = re::ecs2::EntityComponentCollection::get((v347 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v354 && *(v354 + 96) == 1)
            {
              re::ecs2::CARESortingManager::optionalSortingPlaneFrom(&v592, v347, v353);
              if (*(v9 + 432))
              {
                v355 = v564;
                if (v592.i8[0])
                {
LABEL_626:
                  v356 = v594;
                  *(v9 + 448) = v593;
                  *(v9 + 464) = v356;
                  goto LABEL_627;
                }

LABEL_623:
                *(v9 + 432) = 0;
              }

              else
              {
                v355 = v564;
                if (v592.i8[0])
                {
                  *(v9 + 432) = 1;
                  goto LABEL_626;
                }
              }
            }

            else
            {
              v355 = v564;
              if (*(v9 + 432))
              {
                goto LABEL_623;
              }
            }

LABEL_627:
            v357 = vmvnq_s8(vceqq_f32(v355, *(v9 + 320)));
            v357.i32[3] = v357.i32[2];
            if ((vmaxvq_u32(v357) & 0x80000000) != 0 || (v588 & 1) != 0 || re::Optional<re::SortingPlane>::operator!=(out[0].f32, v9 + 432))
            {
              re::ecs2::Component::markDirty(v9);
              ++re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied;
            }

            v358 = *(v336 + 56);
            if (v358 <= v344 + 1)
            {
              v358 = v344 + 1;
            }

            while (v358 - 1 != v344)
            {
              LODWORD(v344) = v344 + 1;
              if ((*(*(v336 + 40) + 24 * v344 + 8) & 0x80000000) != 0)
              {
                goto LABEL_637;
              }
            }

            LODWORD(v344) = v358;
            continue;
          }
        }

        v359 = *(v336 + 232);
        if (v359)
        {
          v360 = 0;
          v361 = (*(v336 + 216) + 8);
          while (1)
          {
            v362 = *v361;
            v361 += 6;
            if (v362 < 0)
            {
              break;
            }

            if (v359 == ++v360)
            {
              LODWORD(v360) = *(v336 + 232);
              break;
            }
          }
        }

        else
        {
          LODWORD(v360) = 0;
        }

        if (v360 != v359)
        {
          break;
        }

        if (v336)
        {
          goto LABEL_655;
        }

LABEL_656:
        v364 = *(v149 + 80);
        if (v364 <= v333 + 1)
        {
          v364 = v333 + 1;
        }

        v103 = &v581;
        while (v364 - 1 != v333)
        {
          LODWORD(v333) = v333 + 1;
          if ((*(*(v149 + 64) + 24 * v333 + 8) & 0x80000000) != 0)
          {
            goto LABEL_663;
          }
        }

        LODWORD(v333) = v364;
LABEL_663:
        if (v333 == v332)
        {
          goto LABEL_664;
        }
      }

      do
      {
        re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(*(*(v336 + 216) + 24 * v360 + 16), v281, v282);
        v363 = *(v336 + 232);
        if (v363 <= v360 + 1)
        {
          v363 = v360 + 1;
        }

        while (v363 - 1 != v360)
        {
          LODWORD(v360) = v360 + 1;
          if ((*(*(v336 + 216) + 24 * v360 + 8) & 0x80000000) != 0)
          {
            goto LABEL_654;
          }
        }

        LODWORD(v360) = v363;
LABEL_654:
        ;
      }

      while (v360 != v359);
LABEL_655:

      goto LABEL_656;
    }

    while (1)
    {
      v26 = *(v14 + 72) + 184 * v16;
      v29 = *(v26 + 8);
      v28 = (v26 + 8);
      v27 = v29;
      if (v29)
      {
        if (!*(v13 + 124))
        {
          v32 = *(v13 + 16);
          v33 = (v21 + 8 * v32);
          if (v32)
          {
            v34 = 8 * v32;
            v35 = (v13 + 32);
            while (*v35 != v27)
            {
              ++v35;
              v34 -= 8;
              if (!v34)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
LABEL_42:
            v35 = v33;
          }

          if (v35 != v33)
          {
            goto LABEL_30;
          }

LABEL_29:
          re::DynamicOverflowArray<unsigned long long,5ul>::add(out, v28);
          v14 = a1;
          goto LABEL_30;
        }

        v30 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(v13 + 96, v28);
        v14 = a1;
        if (!v30)
        {
          goto LABEL_29;
        }
      }

LABEL_30:
      v31 = *(v14 + 88);
      if (v31 <= v16 + 1)
      {
        v31 = v16 + 1;
      }

      while (v31 - 1 != v16)
      {
        LODWORD(v16) = v16 + 1;
        if ((*(*(v14 + 72) + 184 * v16) & 0x80000000) != 0)
        {
          goto LABEL_36;
        }
      }

      LODWORD(v16) = v31;
LABEL_36:
      if (v16 == v15)
      {
        goto LABEL_20;
      }
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 184 * v6 + 16;
  }
}

void re::ecs2::WorldSortingState::removeEntityFromTracking(re::ecs2::WorldSortingState *this, re::ecs2::Entity *a2)
{
  v9 = a2;
  v3 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 96, &v9);
  if (v3)
  {
    v4 = *v3;
    v8 = v4;
    if (v4)
    {
      v5 = (v4 + 8);
      re::ecs2::CAMeshCodirectionalGroup::remove(v4, v9);
      re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 96, &v9);
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(this + 48, &v8);
    }

    else
    {
      re::ecs2::CAMeshCodirectionalGroup::remove(0, v9);
      re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 96, &v9);
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(this + 48, &v8);
    }
  }

  v6 = re::ecs2::EntityComponentCollection::get((v9 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
}

void anonymous namespace::cleanSortingComponentIfCAREManaged(_anonymous_namespace_ *this, re::ecs2::MeshSortingComponent *a2)
{
  if (this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      *(this + 304) = 0;
      if (*(this + 25) == 5)
      {
        re::ecs2::EntityComponentCollection::remove((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }
    }
  }
}

unint64_t re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 6) + 16;
  }
}

void re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v12);
  v4 = v14;
  if (v14 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 32 * v14) & 0x7FFFFFFF;
    if (v15 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v13) = v6;
      v4 = v14;
    }

    else
    {
      *(v5 + 32 * v15) = *(v5 + 32 * v15) & 0x80000000 | v6;
    }

    v7 = v4;
    v8 = (v5 + 32 * v4);
    v9 = *v8;
    if (*v8 < 0)
    {
      v9 &= ~0x80000000;
      *v8 = v9;
      v10 = *(v8 + 2);
      if (v10)
      {

        *(v8 + 2) = 0;
        v7 = v14;
        v5 = *(a1 + 16);
        v9 = *(v5 + 32 * v14);
      }
    }

    v11 = *(a1 + 40);
    *(v5 + 32 * v7) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v11 + 1;
  }
}

uint64_t re::ecs2::CAMeshCodirectionalGroup::remove(re::ecs2::CAMeshCodirectionalGroup *this, re::ecs2::Entity *a2)
{
  v9 = a2;
  v3 = *(this + 16);
  result = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 24, &v9);
  if (*(this + 16) != v3)
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 344, &v9);
    *(this + 144) = 1;
    v5 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 152, v9);
    if (v5)
    {
      v6 = *v5;
      v8 = v6;
      if (v6)
      {
        v7 = (v6 + 8);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(this + 296, &v8);
        re::ecs2::CAMeshSortGroup::remove(v6, v9);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 152, v9);
      }

      else
      {
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(this + 296, &v8);
        re::ecs2::CAMeshSortGroup::remove(0, v9);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 152, v9);
      }
    }

    return re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 248, &v9);
  }

  return result;
}

unint64_t re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(uint64_t a1, void *a2, _OWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v11) << 6) + 16;
  }

  v7 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = a3[1];
  *(v7 + 16) = *a3;
  *(v7 + 32) = v9;
  ++*(a1 + 40);
  return result;
}

uint64_t re::ecs2::CAMeshCodirectionalGroup::add(re::ecs2::CAMeshCodirectionalGroup *this, re::ecs2::Entity *a2)
{
  v7 = a2;
  v3 = *(this + 16);
  result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 24, &v7);
  if (*(this + 16) != v3)
  {
    v8.i64[0] = v7;
    result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 344, &v8);
    if (*(this + 13) == 1)
    {
      result = re::ecs2::CARESortingManager::optionalSortingPlaneFrom(&v8, v7, *(this + 54));
      v6 = v9;
      v5 = v10;
      *(this + 5) = v9;
      *(this + 6) = v5;
      *(this + 7) = v6;
      *(this + 8) = v5;
      *(this + 145) = 1;
    }

    else
    {
      *(this + 144) = 1;
    }
  }

  return result;
}

void re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v17);
  v7 = HIDWORD(v18);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v18, v17);
    *(v8 + 8) = *a2;
    v9 = *a3;
    *(v8 + 16) = *a3;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 32 * v7;
    v14 = *(v11 + 16);
    v13 = (v11 + 16);
    v12 = v14;
    v15 = *a3;
    if (v14 != v15)
    {
      if (v15)
      {
        v16 = (v15 + 8);
        v12 = *v13;
      }

      if (v12)
      {
      }

      *v13 = v15;
    }
  }
}

double re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(re::ecs2::CAMeshCodirectionalGroup *this, __n128 a2)
{
  v3 = *(this + 13);
  v4 = *(this + 104);
  *(this + 51) = 0;
  if (!v3)
  {
    ++v4;
  }

  *(this + 104) = v4 + 1;
  if (*(this + 50) < v3)
  {
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v3);
  }

  v5 = *(this + 14);
  if (v5)
  {
    v6 = 0;
    v7 = (*(this + 5) + 8);
    while (1)
    {
      v8 = *v7;
      v7 += 6;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(this + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    v9 = *(this + 51);
  }

  else
  {
    do
    {
      v10 = *(*(this + 5) + 24 * v6 + 16);
      v11 = re::ecs2::CARESortingManager::optionalSortingPlaneFrom(v29, v10, *(this + 54));
      v12 = v30;
      v14 = *(this + 7);
      v13 = *(this + 8);
      v16 = *(this + 50);
      v15 = *(this + 51);
      if (v15 >= v16)
      {
        v17 = v15 + 1;
        if (v16 < v15 + 1)
        {
          v26 = *(this + 7);
          v27 = *(this + 8);
          v28 = v30;
          if (*(this + 49))
          {
            v18 = 2 * v16;
            if (!v16)
            {
              v18 = 8;
            }

            if (v18 <= v17)
            {
              v19 = v17;
            }

            else
            {
              v19 = v18;
            }

            re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v19);
          }

          else
          {
            re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v17);
            ++*(this + 104);
          }

          v13 = v27;
          v12 = v28;
          v14 = v26;
        }

        v15 = *(this + 51);
      }

      a2 = vmulq_f32(vsubq_f32(v12, v13), v14);
      a2.n128_f32[0] = a2.n128_f32[2] + vaddv_f32(a2.n128_u64[0]);
      v20 = *(this + 53) + 16 * v15;
      *v20 = v10;
      *(v20 + 8) = a2.n128_f32[0];
      v9 = v15 + 1;
      *(this + 51) = v9;
      ++*(this + 104);
      v21 = *(this + 14);
      if (v21 <= v6 + 1)
      {
        v21 = v6 + 1;
      }

      while (v21 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(this + 5) + 24 * v6 + 8) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v6) = v21;
LABEL_31:
      ;
    }

    while (v6 != v5);
  }

  v22 = *(this + 53);
  v23 = 126 - 2 * __clz(v9);
  if (v9)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *,false>(v22, &v22[v9], v24, 1, a2).n128_u64[0];
  return result;
}

void re::ecs2::CAMeshCodirectionalGroup::updateSortGroups(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = a2;
  v223 = *MEMORY[0x1E69E9840];
  if (*(a1 + 372))
  {
    ++re::ecs2::CARESortingDebugging::s_codirGroupsWithDirtyEntities;
  }

  else if (!*(a1 + 324))
  {
    return;
  }

  if (*(a1 + 228) <= 1u)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 228);
  }

  v198 = 0u;
  v199 = 0u;
  v200 = 0;
  v201 = 0x7FFFFFFFLL;
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(&v198, a2, v8);
  v9 = *(a1 + 372);
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v197 = 0;
  v194[1] = 0;
  v195 = 0;
  v196 = 0;
  v194[0] = v6;
  re::DynamicArray<float *>::setCapacity(v194, v10);
  ++v196;
  v11 = *(a1 + 376);
  v174 = a4;
  if (v11)
  {
    v12 = 0;
    v13 = (*(a1 + 360) + 8);
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
        LODWORD(v12) = *(a1 + 376);
        break;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  while (v12 != v11)
  {
    v218.i64[0] = *(*(a1 + 360) + 24 * v12 + 16);
    re::DynamicArray<re::TransitionCondition *>::add(v194, &v218);
    v15 = *(a1 + 376);
    if (v15 <= v12 + 1)
    {
      v15 = v12 + 1;
    }

    while (v15 - 1 != v12)
    {
      LODWORD(v12) = v12 + 1;
      if ((*(*(a1 + 360) + 24 * v12 + 8) & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    LODWORD(v12) = v15;
LABEL_23:
    ;
  }

  v193 = 0;
  v190[1] = 0;
  v191 = 0;
  v192 = 0;
  v190[0] = v6;
  re::DynamicArray<float *>::setCapacity(v190, v195);
  ++v192;
  v16 = *(a1 + 376);
  if (v16)
  {
    v17 = 0;
    v18 = (*(a1 + 360) + 8);
    while (1)
    {
      v19 = *v18;
      v18 += 6;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(a1 + 376);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  while (v17 != v16)
  {
    v218.i64[0] = *(*(a1 + 360) + 24 * v17 + 16);
    v20 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 152, v218.u64[0]);
    if (v20)
    {
      v21 = *v20;
      *&v202[0] = v21;
      if (v21)
      {
        v22 = (v21 + 8);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(a1 + 296, v202);
        re::ecs2::CAMeshSortGroup::remove(v21, v218.i64[0]);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 152, v218.u64[0]);
        ++re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups;
      }

      else
      {
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(a1 + 296, v202);
        re::ecs2::CAMeshSortGroup::remove(0, v218.i64[0]);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 152, v218.u64[0]);
        ++re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups;
      }
    }

    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, &v218);
    v23 = *(a1 + 376);
    if (v23 <= v17 + 1)
    {
      v23 = v17 + 1;
    }

    while (v23 - 1 != v17)
    {
      LODWORD(v17) = v17 + 1;
      if ((*(*(a1 + 360) + 24 * v17 + 8) & 0x80000000) != 0)
      {
        goto LABEL_41;
      }
    }

    LODWORD(v17) = v23;
LABEL_41:
    ;
  }

  v24 = *(a1 + 276);
  if (v24 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v24;
  }

  *&v210[2] = 0;
  memset(&v208[8], 0, 20);
  *v208 = v6;
  re::DynamicArray<float *>::setCapacity(v208, v25);
  ++*&v208[24];
  memset(v188, 0, sizeof(v188));
  *v189 = 0;
  *&v189[4] = 0x7FFFFFFFLL;
  v26 = *(a1 + 200);
  if (v26)
  {
    v27 = *(a1 + 228) <= 3u ? 3 : *(a1 + 228);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v188, v26, v27);
    re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::copy(v188, a1 + 200);
    v28 = HIDWORD(v188[1]);
    if (HIDWORD(v188[1]))
    {
      v29 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      while (1)
      {
        if (!v195)
        {
          goto LABEL_88;
        }

        v203[0] = 0;
        memset(v202, 0, sizeof(v202));
        *&v203[1] = 0x7FFFFFFFLL;
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v202, v6, v28);
        if (v195)
        {
          break;
        }

LABEL_58:
        v33 = HIDWORD(v202[1]);
        if (HIDWORD(v202[1]))
        {
          v34 = *(a1 + 280);
          if (v34)
          {
            v35 = 0;
            v36 = (*(a1 + 264) + 8);
            while (1)
            {
              v37 = *v36;
              v36 += 6;
              if (v37 < 0)
              {
                break;
              }

              if (v34 == ++v35)
              {
                LODWORD(v35) = *(a1 + 280);
                break;
              }
            }
          }

          else
          {
            LODWORD(v35) = 0;
          }

LABEL_73:
          while (v35 != v34)
          {
            v218.i64[0] = *(*(a1 + 264) + 24 * v35 + 16);
            re::ecs2::CAMeshCodirectionalGroup::checkEntityAgainstSortGroups(v205, a1, v218.i64[0], v202, &v198, v6);
            if (*v205)
            {

              re::DynamicArray<re::TransitionCondition *>::add(v208, &v218);
              ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
            }

            v38 = *(a1 + 280);
            if (v38 <= v35 + 1)
            {
              v38 = v35 + 1;
            }

            while (v38 - 1 != v35)
            {
              LODWORD(v35) = v35 + 1;
              if ((*(*(a1 + 264) + 24 * v35 + 8) & 0x80000000) != 0)
              {
                goto LABEL_73;
              }
            }

            LODWORD(v35) = v38;
          }

          if (*&v208[16])
          {
            v39 = *&v210[2];
            v40 = 8 * *&v208[16];
            do
            {
              v41 = *v39++;
              v218.i64[0] = v41;
              re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, &v218);
              v40 -= 8;
            }

            while (v40);
          }

          *&v208[16] = 0;
          ++*&v208[24];
        }

        v42 = *&v202[0];
        if (*&v188[0])
        {
          v43 = *&v188[0] == *&v202[0];
        }

        else
        {
          v43 = 1;
        }

        if (v43)
        {
          *&v202[0] = *&v188[0];
          v44 = *(v188 + 8);
          *&v188[0] = v42;
          *(&v188[0] + 1) = *(&v202[0] + 1);
          *&v188[1] = *&v202[1];
          *(v202 + 8) = v44;
          v45 = DWORD2(v188[1]);
          *(&v188[1] + 1) = __PAIR64__(v33, DWORD2(v202[1]));
          *(&v202[1] + 1) = __PAIR64__(v28, v45);
          v46 = *v189;
          *v189 = *v203;
          *v203 = v46;
        }

        else if (*&v202[0])
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::copy(v188, v202);
          ++*&v189[8];
        }

        else
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(v188);
        }

        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v202);
        v28 = HIDWORD(v188[1]);
        if (!HIDWORD(v188[1]))
        {
          goto LABEL_88;
        }
      }

      v30 = v195 - 1;
      while (1)
      {
        v31 = v195;
        if (v195 <= v30)
        {
          break;
        }

        re::ecs2::CAMeshCodirectionalGroup::checkEntityAgainstSortGroups(&v218, a1, *(v197 + 8 * v30), v188, &v198, v6);
        v32 = v218.i64[0];
        if (v218.i64[0])
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(v202, &v218);
          ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
          re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(v194, v30);
        }

        if (--v30 == -1)
        {
          goto LABEL_58;
        }
      }

      *v211 = 0;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = v30;
      v206 = 2048;
      *v207 = v31;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_311;
    }
  }

LABEL_88:
  if (*v208 && *&v210[2])
  {
    (*(**v208 + 40))();
  }

  v47 = *(a1 + 276);
  if (v47 <= 8)
  {
    v48 = 8;
  }

  else
  {
    v48 = v47;
  }

  v220.i64[0] = 0;
  v219.i64[0] = 0;
  v219.i32[2] = 0;
  v218 = v6;
  re::DynamicArray<float *>::setCapacity(&v218, v48);
  ++v219.i32[2];
  v49 = v195;
  if (v195)
  {
    v50 = 0;
    do
    {
      *&v202[0] = *(v197 + 8 * v50++);
      v51 = v50;
      if (v50 < v49)
      {
        do
        {
          re::ecs2::CAMeshCodirectionalGroup::checkEntitiesForSorting(a1, *&v202[0], *(v197 + 8 * v51++), &v218, &v198, v6);
        }

        while (v51 < v195);
      }

      v52 = *(a1 + 280);
      if (v52)
      {
        v53 = 0;
        v54 = (*(a1 + 264) + 8);
        while (1)
        {
          v55 = *v54;
          v54 += 6;
          if (v55 < 0)
          {
            break;
          }

          if (v52 == ++v53)
          {
            LODWORD(v53) = *(a1 + 280);
            break;
          }
        }
      }

      else
      {
        LODWORD(v53) = 0;
      }

LABEL_110:
      while (v53 != v52)
      {
        re::ecs2::CAMeshCodirectionalGroup::checkEntitiesForSorting(a1, *&v202[0], *(*(a1 + 264) + 24 * v53 + 16), &v218, &v198, v6);
        v56 = *(a1 + 280);
        if (v56 <= v53 + 1)
        {
          v56 = v53 + 1;
        }

        while (v56 - 1 != v53)
        {
          LODWORD(v53) = v53 + 1;
          if ((*(*(a1 + 264) + 24 * v53 + 8) & 0x80000000) != 0)
          {
            goto LABEL_110;
          }
        }

        LODWORD(v53) = v56;
      }

      if (!*(a1 + 152) || (v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*&v202[0] ^ (*&v202[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*&v202[0] ^ (*&v202[0] >> 30))) >> 27)), v58 = *(*(a1 + 160) + 4 * ((v57 ^ (v57 >> 31)) % *(a1 + 176))), v58 == 0x7FFFFFFF))
      {
LABEL_116:
        re::DynamicArray<re::TransitionCondition *>::add(v190, v202);
      }

      else
      {
        v59 = *(a1 + 168);
        while (*(v59 + 32 * v58 + 8) != *&v202[0])
        {
          v58 = *(v59 + 32 * v58) & 0x7FFFFFFF;
          if (v58 == 0x7FFFFFFF)
          {
            goto LABEL_116;
          }
        }
      }

      v49 = v195;
    }

    while (v50 < v195);
  }

  if (v219.i64[0])
  {
    v60 = v220.i64[0];
    v61 = 8 * v219.i64[0];
    do
    {
      v62 = *v60++;
      *&v202[0] = v62;
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, v202);
      v61 -= 8;
    }

    while (v61);
  }

  if (v218.i64[0] && v220.i64[0])
  {
    (*(*v218.i64[0] + 40))(v218.i64[0]);
  }

  v63 = *(a1 + 328);
  if (v63)
  {
    v64 = 0;
    v65 = (*(a1 + 312) + 8);
    while (1)
    {
      v66 = *v65;
      v65 += 6;
      if (v66 < 0)
      {
        break;
      }

      if (v63 == ++v64)
      {
        LODWORD(v64) = *(a1 + 328);
        break;
      }
    }
  }

  else
  {
    LODWORD(v64) = 0;
  }

  if (v64 == v63)
  {
LABEL_131:
    re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(a1 + 296);
    v67 = v200;
    if (!v200)
    {
      goto LABEL_257;
    }

    v68 = 0;
    v69 = (v199 + 8);
    while (1)
    {
      v70 = *v69;
      v69 += 6;
      if (v70 < 0)
      {
        goto LABEL_258;
      }

      if (v200 == ++v68)
      {
        LODWORD(v68) = v200;
        goto LABEL_258;
      }
    }
  }

  v28 = 24;
  v187 = v6;
  v175 = *(a1 + 328);
  v176 = a3;
  while (1)
  {
    v71 = *(a1 + 312) + 24 * v64;
    v74 = *(v71 + 16);
    v72 = (v71 + 16);
    v73 = v74;
    if (*(v74 + 300) <= 1u)
    {
      goto LABEL_242;
    }

    if (*(v73 + 208) == 1)
    {
      re::ecs2::CAMeshSortGroup::recomputeTransform(v73, v6);
    }

    re::ecs2::CAMeshSortGroup::updateGroupToken(v73);
    if (!*(v73 + 300))
    {
      *(v73 + 240) = 0;
      ++*(v73 + 248);
      ++re::ecs2::CARESortingDebugging::m_sortGroupsResorted;
LABEL_242:
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(&v198, v72);
      goto LABEL_243;
    }

    v180 = v72;
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::HashSetBase(v202, v73 + 272);
    v75 = *(v73 + 240);
    if (v75)
    {
      v31 = v75 - 1;
      v76 = 16 * v75 - 16;
      while (1)
      {
        v29 = *(v73 + 240);
        if (v29 <= v31)
        {
          break;
        }

        v77 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v73 + 272, (*(v73 + 256) + v76));
        v28 = *(v73 + 240);
        if (v77)
        {
          if (v28 <= v31)
          {
            goto LABEL_316;
          }

          re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v202, (*(v73 + 256) + v76));
        }

        else
        {
          if (v28 <= v31)
          {
            goto LABEL_317;
          }

          v78 = v28 - 1;
          if (v28 - 1 > v31)
          {
            *(*(v73 + 256) + v76) = *(*(v73 + 256) + 16 * v28 - 16);
            v78 = *(v73 + 240) - 1;
          }

          *(v73 + 240) = v78;
          ++*(v73 + 248);
        }

        --v31;
        v76 -= 16;
        v28 = 24;
        if (v31 == -1)
        {
          goto LABEL_152;
        }
      }

LABEL_311:
      *v205 = 0;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 789;
      *&v208[18] = 2048;
      *&v208[20] = v31;
      v209 = 2048;
      *v210 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_312:
      *v211 = 0;
      v221 = v110;
      v222 = v110;
      v219 = v110;
      v220 = v110;
      v218 = v110;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = v28;
      v206 = 2048;
      *v207 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_313;
    }

LABEL_152:
    v79 = v203[0];
    if (v203[0])
    {
      v80 = 0;
      v81 = (*&v202[1] + 8);
      while (1)
      {
        v82 = *v81;
        v81 += 6;
        if (v82 < 0)
        {
          break;
        }

        if (v203[0] == ++v80)
        {
          LODWORD(v80) = v203[0];
          break;
        }
      }
    }

    else
    {
      LODWORD(v80) = 0;
    }

    v83 = *(v73 + 240);
    if (v80 != v203[0])
    {
      v84 = *&v202[1];
      do
      {
        v85 = *(v84 + 24 * v80 + 16);
        if (v83 >= *(v73 + 232))
        {
          re::DynamicArray<re::RigNodeConstraint>::growCapacity((v73 + 224), v83 + 1);
          v83 = *(v73 + 240);
        }

        v86 = *(v73 + 256) + 16 * v83;
        *v86 = v85;
        *(v86 + 8) = 0;
        *(v73 + 240) = ++v83;
        ++*(v73 + 248);
        v84 = *&v202[1];
        if (v203[0] <= v80 + 1)
        {
          v87 = v80 + 1;
        }

        else
        {
          v87 = v203[0];
        }

        while (v87 - 1 != v80)
        {
          LODWORD(v80) = v80 + 1;
          if ((*(*&v202[1] + 24 * v80 + 8) & 0x80000000) != 0)
          {
            goto LABEL_170;
          }
        }

        LODWORD(v80) = v87;
LABEL_170:
        ;
      }

      while (v80 != v79);
    }

    v179 = v64;
    v88 = *(v73 + 256);
    v218.i64[0] = v73;
    v89 = 126 - 2 * __clz(v83);
    if (v83)
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,false>(v88, &v88[2 * v83], &v218, v90, 1);
    v91 = *(v73 + 240);
    memset(&v208[8], 0, 20);
    *&v210[2] = 0;
    *v208 = v6;
    appended = re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v208, v91);
    v31 = ++*&v208[24];
    a3 = *(v73 + 240);
    if (a3)
    {
      v101 = 0;
      v28 = 0;
      v185 = 0;
      do
      {
        if (v28)
        {
          v29 = v28 - 1;
          if (a3 <= v28 - 1)
          {
            goto LABEL_314;
          }

          re::ecs2::CARESortingManager::optionalSortingPlaneFrom(&v218, *(*(v73 + 256) + v101 - 16), *(*(v73 + 264) + 432));
          v29 = *(v73 + 240);
          if (v29 <= v28)
          {
            goto LABEL_315;
          }

          v181 = v220;
          v183 = v219;
          appended = re::ecs2::CARESortingManager::optionalSortingPlaneFrom(&v218, *(*(v73 + 256) + v101), *(*(v73 + 264) + 432));
          v102 = vmulq_f32(v183, vsubq_f32(v220, v181));
          v103 = v185;
          if ((v102.f32[2] + vaddv_f32(*v102.f32)) > *&dword_1EE19E364)
          {
            v103 = v185 + 1;
          }

          v185 = v103;
        }

        v104 = *&v208[16];
        if (*&v208[16] >= *&v208[8])
        {
          v105 = *&v208[16] + 1;
          if (*&v208[8] < (*&v208[16] + 1))
          {
            if (*v208)
            {
              v106 = 2 * *&v208[8];
              if (!*&v208[8])
              {
                v106 = 8;
              }

              if (v106 <= v105)
              {
                v107 = *&v208[16] + 1;
              }

              else
              {
                v107 = v106;
              }

              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v208, v107);
              LODWORD(v31) = *&v208[24];
            }

            else
            {
              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v208, v105);
              LODWORD(v31) = *&v208[24] + 1;
            }
          }

          v104 = *&v208[16];
        }

        v108 = *&v210[2];
        v109 = *&v210[2] + (v104 << 6);
        v110 = 0uLL;
        *v109 = 0u;
        *(v109 + 16) = 0u;
        *(v109 + 32) = 0;
        v111 = v104 + 1;
        *&v208[16] = v104 + 1;
        v31 = (v31 + 1);
        *&v208[24] = v31;
        v29 = *(v73 + 240);
        if (v29 <= v28)
        {
          goto LABEL_312;
        }

        v112 = v108 + (v111 << 6);
        v113 = re::ecs2::EntityComponentCollection::get((*(*(v73 + 256) + v101) + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v218.i8[0] = 0;
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v112 - 64, v185, &v218);
        v114 = v113[20];
        if (v114 == 3)
        {
          v115 = 3;
        }

        else
        {
          v115 = (v114 + 3);
        }

        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v112 - 64, v115, &v218);
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v112 - 64, v113[22], &v218);
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(v112 - 64, v113[20] != 3, &v218);
        appended = re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(v112 - 64, v113[21], &v218);
        *(v112 - 32) = v28++;
        a3 = *(v73 + 240);
        v101 += 16;
      }

      while (a3 > v28);
      v28 = v108;
    }

    else
    {
      v28 = *&v210[2];
      v111 = *&v208[16];
    }

    v116 = 126 - 2 * __clz(v111);
    if (v111)
    {
      v117 = v116;
    }

    else
    {
      v117 = 0;
    }

    v118 = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,false>(v28, v28 + (v111 << 6), v117, 1, v93, v94, v95, v96, v169, v170, v171, v172, v97, v98, v99, v100, v173, v174, v175, v176);
    v119 = (*(*v73 + 24))(v73, v118);
    v120 = *(v73 + 240);
    memset(&v205[8], 0, 20);
    *&v207[2] = 0;
    *v205 = v119;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(v205, v120);
    v122 = ++*&v205[24];
    if (v111)
    {
      v123 = (v28 + 32);
      while (1)
      {
        v124 = *v123;
        v123 += 16;
        v29 = v124;
        v31 = *(v73 + 240);
        if (v31 <= v124)
        {
          break;
        }

        v125 = *(v73 + 256);
        v126 = *&v205[16];
        if (*&v205[16] >= *&v205[8])
        {
          re::DynamicArray<re::RigNodeConstraint>::growCapacity(v205, *&v205[16] + 1);
          v126 = *&v205[16];
          v122 = *&v205[24];
        }

        *(*&v207[2] + 16 * v126) = *(v125 + 16 * v29);
        *&v205[16] = v126 + 1;
        *&v205[24] = ++v122;
        if (!--v111)
        {
          goto LABEL_209;
        }
      }

LABEL_313:
      v204 = 0;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v211 = 136315906;
      *&v211[4] = "operator[]";
      v212 = 1024;
      v213 = 789;
      v214 = 2048;
      v215 = v29;
      v216 = 2048;
      v217 = v31;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_314:
      *v211 = 0;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = v29;
      v206 = 2048;
      *v207 = a3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_315:
      *v211 = 0;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v205 = 136315906;
      *&v205[4] = "operator[]";
      *&v205[12] = 1024;
      *&v205[14] = 789;
      *&v205[18] = 2048;
      *&v205[20] = v28;
      v206 = 2048;
      *v207 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_316:
      *v205 = 0;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 789;
      *&v208[18] = 2048;
      *&v208[20] = v31;
      v209 = 2048;
      *v210 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_317:
      *v205 = 0;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "removeAt";
      *&v208[12] = 1024;
      *&v208[14] = 931;
      *&v208[18] = 2048;
      *&v208[20] = v31;
      v209 = 2048;
      *v210 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_318:
      v204 = 0;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v211 = 136315906;
      *&v211[4] = "operator[]";
      v212 = 1024;
      v213 = 789;
      v214 = 2048;
      v215 = 0;
      v216 = 2048;
      v217 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_319:
      re::internal::assertLog(4, v121, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
    }

LABEL_209:
    v127 = *(v73 + 224);
    if (v127 && *v205 && v127 != *v205)
    {
      goto LABEL_319;
    }

    v129 = *&v205[8];
    v128 = *&v205[16];
    *(v73 + 224) = *v205;
    *(v73 + 232) = v129;
    *(v73 + 240) = v128;
    v130 = *(v73 + 256);
    v131 = *&v207[2];
    *(v73 + 256) = *&v207[2];
    ++*(v73 + 248);
    if (!v128)
    {
      goto LABEL_318;
    }

    v177 = v130;
    v178 = v127;
    v182 = v28;
    v132 = 0;
    *(v131 + 8) = 0;
    if (v128 != 1)
    {
      break;
    }

LABEL_226:
    if (v178 && v177)
    {
      (*(*v178 + 40))();
    }

    LODWORD(v63) = v175;
    a3 = v176;
    v6 = v187;
    LODWORD(v64) = v179;
    v72 = v180;
    v28 = 24;
    if (v182 && *v208)
    {
      (*(**v208 + 40))(*v208, v182);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v202);
    ++re::ecs2::CARESortingDebugging::m_sortGroupsResorted;
    if ((v132 & 1) == 0)
    {
      goto LABEL_242;
    }

    v144 = *(v176 + 8);
    v143 = *(v176 + 16);
    if (v143 >= v144)
    {
      v145 = v143 + 1;
      if (v144 < v143 + 1)
      {
        if (*v176)
        {
          v146 = 2 * v144;
          if (!v144)
          {
            v146 = 8;
          }

          if (v146 <= v145)
          {
            v147 = v145;
          }

          else
          {
            v147 = v146;
          }

          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v176, v147);
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v176, v145);
          ++*(v176 + 24);
        }
      }

      v143 = *(v176 + 16);
    }

    v149 = *v180;
    *(*(v176 + 32) + 8 * v143) = *v180;
    if (v149)
    {
      v150 = (v149 + 8);
      v143 = *(v176 + 16);
    }

    *(v176 + 16) = v143 + 1;
    ++*(v176 + 24);
LABEL_243:
    v148 = *(a1 + 328);
    if (v148 <= v64 + 1)
    {
      v148 = v64 + 1;
    }

    while (v148 - 1 != v64)
    {
      LODWORD(v64) = v64 + 1;
      if ((*(*(a1 + 312) + 24 * v64 + 8) & 0x80000000) != 0)
      {
        goto LABEL_249;
      }
    }

    LODWORD(v64) = v148;
LABEL_249:
    if (v64 == v63)
    {
      goto LABEL_131;
    }
  }

  v132 = 0;
  v133 = 0x100000000;
  v134 = 2;
  v135 = 1;
LABEL_215:
  v136 = *(v73 + 256) + 16 * v135;
  v137 = *v136;
  *(v136 + 8) = 0;
  v186 = v133;
  v184 = v134;
  while (1)
  {
    v138 = *(v73 + 240);
    if (v138 <= v133)
    {
      break;
    }

    v139 = *(v73 + 256) + 16 * v133;
    {
      v140 = *(v139 + 8);
      if (*(v136 + 8) <= (v140 + 1))
      {
        v141 = v140 + 1;
      }

      else
      {
        v141 = *(v136 + 8);
      }

      *(v136 + 8) = v141;
      if (re::ecs2::CARESortingDebugging::m_highestPriorityInGroup < v141)
      {
        re::ecs2::CARESortingDebugging::m_highestPriorityInGroup = v141;
        re::ecs2::CARESortingDebugging::m_highestPriorityGroupId = *(v73 + 80);
      }

      v132 = 1;
    }

    --v134;
    LODWORD(v133) = v133 - 1;
    if (v134 <= 1)
    {
      ++v135;
      v134 = v184 + 1;
      v133 = v186 + 1;
      if (*(v73 + 240) <= v135)
      {
        goto LABEL_226;
      }

      goto LABEL_215;
    }
  }

  v204 = 0;
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v218 = 0u;
  v67 = MEMORY[0x1E69E9C10];
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v211 = 136315906;
  *&v211[4] = "operator[]";
  v212 = 1024;
  v213 = 789;
  v214 = 2048;
  v215 = v133;
  v216 = 2048;
  v217 = v138;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_257:
  LODWORD(v68) = 0;
LABEL_258:
  if (v68 != v67)
  {
    v155 = v199;
    do
    {
      v156 = *(v155 + 24 * v68 + 16);
      v157 = (v156 + 8);
      v158 = *(v156 + 304);
      if (*(v156 + 300))
      {
        if (v158)
        {
          v159 = 0;
          v160 = (*(v156 + 288) + 8);
          while (1)
          {
            v161 = *v160;
            v160 += 6;
            if (v161 < 0)
            {
              break;
            }

            if (v158 == ++v159)
            {
              LODWORD(v159) = *(v156 + 304);
              break;
            }
          }
        }

        else
        {
          LODWORD(v159) = 0;
        }

        v162 = *(v156 + 304);
LABEL_302:
        while (v159 != v158)
        {
          v218.i64[0] = *(*(v156 + 288) + 24 * v159 + 16);
          re::DynamicArray<re::TransitionCondition *>::add(v190, &v218);
          v162 = *(v156 + 304);
          if (v162 <= v159 + 1)
          {
            v168 = v159 + 1;
          }

          else
          {
            v168 = *(v156 + 304);
          }

          while (v168 - 1 != v159)
          {
            LODWORD(v159) = v159 + 1;
            if ((*(*(v156 + 288) + 24 * v159 + 8) & 0x80000000) != 0)
            {
              goto LABEL_302;
            }
          }

          LODWORD(v159) = v168;
        }
      }

      else
      {
        v162 = *(v156 + 304);
      }

      if (v162)
      {
        v163 = 0;
        v164 = (*(v156 + 288) + 8);
        while (1)
        {
          v165 = *v164;
          v164 += 6;
          if (v165 < 0)
          {
            break;
          }

          if (v162 == ++v163)
          {
            LODWORD(v163) = v162;
            break;
          }
        }
      }

      else
      {
        LODWORD(v163) = 0;
      }

LABEL_290:
      while (v163 != v162)
      {
        v218.i64[0] = *(*(v156 + 288) + 24 * v163 + 16);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 152, v218.u64[0]);
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v218);
        ++re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups;
        v166 = *(v156 + 304);
        if (v166 <= v163 + 1)
        {
          v166 = v163 + 1;
        }

        while (v166 - 1 != v163)
        {
          LODWORD(v163) = v163 + 1;
          if ((*(*(v156 + 288) + 24 * v163 + 8) & 0x80000000) != 0)
          {
            goto LABEL_290;
          }
        }

        LODWORD(v163) = v166;
      }

      *(v156 + 208) = *(v156 + 300) != 0;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v156 + 272);
      *(v156 + 336) = 0;
      ++*(v156 + 344);
      *(v156 + 209) = 1;
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 200, v156);

      if (v67 <= v68 + 1)
      {
        v167 = v68 + 1;
      }

      else
      {
        v167 = v67;
      }

      while (v167 - 1 != v68)
      {
        LODWORD(v68) = v68 + 1;
        if ((*(v155 + 24 * v68 + 8) & 0x80000000) != 0)
        {
          goto LABEL_298;
        }
      }

      LODWORD(v68) = v167;
LABEL_298:
      ;
    }

    while (v68 != v67);
  }

  if (v191)
  {
    v151 = v193;
    v152 = 8 * v191;
    do
    {
      v153 = *v151++;
      v218.i64[0] = v153;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v218);
      re::DynamicArray<re::TransitionCondition *>::add(v174, &v218);
      v152 -= 8;
    }

    while (v152);
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(a1 + 344);
  v154.n128_f64[0] = re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v188);
  if (v190[0] && v193)
  {
    (*(*v190[0] + 40))(v154.n128_f64[0]);
  }

  if (v194[0])
  {
    if (v197)
    {
      (*(*v194[0] + 40))(v154);
    }
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v198);
}