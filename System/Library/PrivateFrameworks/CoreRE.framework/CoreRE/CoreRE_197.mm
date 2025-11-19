uint64_t re::fillStreamUN8(re *this, const re::GeomAttribute *a2, char *a3, uint64_t a4, float a5)
{
  v6 = a3;
  v7 = a2 + a4;
  v8 = *(this + 17);
  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      v49 = re::GeomAttribute::accessValues<int>(this);
      if (v50)
      {
        v12 = 0;
        v51 = 1;
        v52 = v50;
        do
        {
          v53 = *v49;
          if (*v49 > 1.0)
          {
            v53 = 1.0;
          }

          if (v53 < 0.0)
          {
            v53 = 0.0;
          }

          v54 = llroundf(v53 * 255.0);
          *v7 = v54;
          v55 = v54 / 255.0;
          v56 = vabds_f32(*v49, v55);
          if (*v49 != v55 && v56 > a5)
          {
            break;
          }

          v7 += v6;
          v12 = v51++ >= v50;
          ++v49;
          --v52;
        }

        while (v52);
        return v12;
      }

      return 1;
    }

    if (v8 == 5)
    {
      v19 = re::GeomAttribute::accessValues<int>(this);
      if (v20)
      {
        v12 = 0;
        v21 = 1;
        v22 = v20;
        do
        {
          v23 = *v19;
          if (*v19 > 1.0)
          {
            v23 = 1.0;
          }

          if (v23 < 0.0)
          {
            v23 = 0.0;
          }

          v24 = llround(v23 * 255.0);
          *v7 = v24;
          v25 = *v19;
          v26 = v24 / 255.0;
          v27 = vabds_f32(v25, v26);
          if (v25 != v26 && v27 > a5)
          {
            break;
          }

          v7 += v6;
          v12 = v21++ >= v20;
          ++v19;
          --v22;
        }

        while (v22);
        return v12;
      }

      return 1;
    }
  }

  else
  {
    switch(v8)
    {
      case 6u:
        v29 = re::GeomAttribute::accessValues<int>(this);
        if (v30)
        {
          v31 = 0;
          v12 = 0;
          do
          {
            v32 = 0;
            v59.i64[0] = 0;
            v33 = &v59;
            v34 = 1;
            v35 = (v29 + 8 * v31);
            do
            {
              v36 = v35->f32[v32];
              if (v36 > 1.0)
              {
                v36 = 1.0;
              }

              if (v36 < 0.0)
              {
                v36 = 0.0;
              }

              v37 = llroundf(v36 * 255.0);
              v7[v32] = v37;
              v38 = v37;
              LOBYTE(v37) = v34;
              v33->f32[0] = v38 / 255.0;
              v33 = &v59.i32[1];
              v32 = 1;
              v34 = 0;
            }

            while ((v37 & 1) != 0);
            v39 = vsub_f32(*v35, *v59.f32);
            if (vaddv_f32(vmul_f32(v39, v39)) > (a5 * a5))
            {
              break;
            }

            ++v31;
            v7 += v6;
            v12 = v31 >= v30;
          }

          while (v31 != v30);
          return v12;
        }

        return 1;
      case 7u:
        v40 = re::GeomAttribute::accessValues<int>(this);
        if (v41)
        {
          v42 = 0;
          v12 = 0;
          v43 = v40;
          do
          {
            v44 = 0;
            v59 = 0uLL;
            do
            {
              v45 = *(v43 + 4 * v44);
              if (v45 > 1.0)
              {
                v45 = 1.0;
              }

              if (v45 < 0.0)
              {
                v45 = 0.0;
              }

              v46 = llroundf(v45 * 255.0);
              v7[v44] = v46;
              v59.f32[v44++] = v46 / 255.0;
            }

            while (v44 != 3);
            v47 = vsubq_f32(*(v40 + 16 * v42), v59);
            v48 = vmulq_f32(v47, v47);
            if ((v48.f32[2] + vaddv_f32(*v48.f32)) > (a5 * a5))
            {
              break;
            }

            ++v42;
            v7 += v6;
            v43 += 16;
            v12 = v42 >= v41;
          }

          while (v42 != v41);
          return v12;
        }

        return 1;
      case 8u:
        v9 = re::GeomAttribute::accessValues<int>(this);
        if (v10)
        {
          v11 = 0;
          v12 = 0;
          v13 = v9;
          do
          {
            v14 = 0;
            v59 = 0uLL;
            do
            {
              v15 = *(v13 + 4 * v14);
              if (v15 > 1.0)
              {
                v15 = 1.0;
              }

              if (v15 < 0.0)
              {
                v15 = 0.0;
              }

              v16 = llroundf(v15 * 255.0);
              v7[v14] = v16;
              v59.f32[v14++] = v16 / 255.0;
            }

            while (v14 != 4);
            v17 = vsubq_f32(*(v9 + 16 * v11), v59);
            v18 = vmulq_f32(v17, v17);
            if (vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL))) > (a5 * a5))
            {
              break;
            }

            ++v11;
            v7 += v6;
            v13 += 16;
            v12 = v11 >= v10;
          }

          while (v11 != v10);
          return v12;
        }

        return 1;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempt to convert a non-numeric type into a uint8 stream.", "!Unreachable code", "fillStreamUN8", 247);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::fillStreamSN8(re *this, const re::GeomAttribute *a2, char *a3, uint64_t a4, float a5)
{
  v6 = a3;
  v7 = a2 + a4;
  v8 = *(this + 17);
  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      v54 = re::GeomAttribute::accessValues<int>(this);
      if (v55)
      {
        v12 = 0;
        v56 = 1;
        v57 = v55;
        do
        {
          v58 = *v54;
          if (*v54 > 1.0)
          {
            v58 = 1.0;
          }

          if (v58 < -1.0)
          {
            v58 = -1.0;
          }

          v59 = llroundf(v58 * 127.0);
          *v7 = v59;
          v60 = *v54;
          v61 = v59 / 127.0;
          if (v61 < -1.0)
          {
            v61 = -1.0;
          }

          v62 = vabds_f32(v60, v61);
          if (v60 != v61 && v62 > a5)
          {
            break;
          }

          v7 += v6;
          v12 = v56++ >= v55;
          ++v54;
          --v57;
        }

        while (v57);
        return v12;
      }

      return 1;
    }

    if (v8 == 5)
    {
      v20 = re::GeomAttribute::accessValues<int>(this);
      if (v21)
      {
        v12 = 0;
        v22 = 1;
        v23 = v21;
        do
        {
          v24 = *v20;
          if (*v20 > 1.0)
          {
            v24 = 1.0;
          }

          if (v24 < -1.0)
          {
            v24 = -1.0;
          }

          v25 = llround(v24 * 127.0);
          *v7 = v25;
          v26 = *v20;
          v27 = v25 / 127.0;
          if (v27 < -1.0)
          {
            v27 = -1.0;
          }

          v28 = v27;
          v29 = vabds_f32(v26, v28);
          if (v26 != v28 && v29 > a5)
          {
            break;
          }

          v7 += v6;
          v12 = v22++ >= v21;
          ++v20;
          --v23;
        }

        while (v23);
        return v12;
      }

      return 1;
    }
  }

  else
  {
    switch(v8)
    {
      case 6u:
        v31 = re::GeomAttribute::accessValues<int>(this);
        v33 = v32;
        if (v32)
        {
          v34 = 0;
          v12 = 0;
          do
          {
            v35 = 0;
            v65.i64[0] = 0;
            v36 = &v65;
            v37 = 1;
            v38 = (v31 + 8 * v34);
            do
            {
              v39 = v38->f32[v35];
              if (v39 > 1.0)
              {
                v39 = 1.0;
              }

              if (v39 < -1.0)
              {
                v39 = -1.0;
              }

              v40 = llroundf(v39 * 127.0);
              v41 = v37;
              v7[v35] = v40;
              v42 = v40 / 127.0;
              if (v42 < -1.0)
              {
                v42 = -1.0;
              }

              v36->f32[0] = v42;
              v36 = &v65.i32[1];
              v35 = 1;
              v37 = 0;
            }

            while ((v41 & 1) != 0);
            v43 = vsub_f32(*v38, *v65.f32);
            if (vaddv_f32(vmul_f32(v43, v43)) > (a5 * a5))
            {
              break;
            }

            ++v34;
            v7 += v6;
            v12 = v34 >= v33;
          }

          while (v34 != v33);
          return v12;
        }

        return 1;
      case 7u:
        v44 = re::GeomAttribute::accessValues<int>(this);
        if (v45)
        {
          v46 = 0;
          v12 = 0;
          v47 = v44;
          do
          {
            v48 = 0;
            v65 = 0uLL;
            do
            {
              v49 = *(v47 + 4 * v48);
              if (v49 > 1.0)
              {
                v49 = 1.0;
              }

              if (v49 < -1.0)
              {
                v49 = -1.0;
              }

              v50 = llroundf(v49 * 127.0);
              v7[v48] = v50;
              v51 = v50 / 127.0;
              if (v51 < -1.0)
              {
                v51 = -1.0;
              }

              v65.f32[v48++] = v51;
            }

            while (v48 != 3);
            v52 = vsubq_f32(*(v44 + 16 * v46), v65);
            v53 = vmulq_f32(v52, v52);
            if ((v53.f32[2] + vaddv_f32(*v53.f32)) > (a5 * a5))
            {
              break;
            }

            ++v46;
            v7 += v6;
            v47 += 16;
            v12 = v46 >= v45;
          }

          while (v46 != v45);
          return v12;
        }

        return 1;
      case 8u:
        v9 = re::GeomAttribute::accessValues<int>(this);
        if (v10)
        {
          v11 = 0;
          v12 = 0;
          v13 = v9;
          do
          {
            v14 = 0;
            v65 = 0uLL;
            do
            {
              v15 = *(v13 + 4 * v14);
              if (v15 > 1.0)
              {
                v15 = 1.0;
              }

              if (v15 < -1.0)
              {
                v15 = -1.0;
              }

              v16 = llroundf(v15 * 127.0);
              v7[v14] = v16;
              v17 = v16 / 127.0;
              if (v17 < -1.0)
              {
                v17 = -1.0;
              }

              v65.f32[v14++] = v17;
            }

            while (v14 != 4);
            v18 = vsubq_f32(*(v9 + 16 * v11), v65);
            v19 = vmulq_f32(v18, v18);
            if (vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL))) > (a5 * a5))
            {
              break;
            }

            ++v11;
            v7 += v6;
            v13 += 16;
            v12 = v11 >= v10;
          }

          while (v11 != v10);
          return v12;
        }

        return 1;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempt to convert a non-numeric type into an int8 stream.", "!Unreachable code", "fillStreamSN8", 279);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::ImportGraphicsResources::init(id *this, const re::ColorManager *a2, id *a3, int a4)
{
  *(this + 19) = a4;
  this[3] = a2;
  if (a3 && a3[26])
  {
    v5 = this;
    v6 = re::ObjCObject::operator=(this, a3 + 26);
    this = re::ObjCObject::operator=(v6 + 1, a3[6] + 45);
    v7 = *(a3 + 168);
    *(v5 + 18) = *(a3 + 338);
    *(v5 + 8) = v7;
    if ((*(v5 + 19) & 1) == 0)
    {
      return;
    }
  }

  else if (!a4)
  {
    return;
  }

  v8 = *re::pipelineLogObjects(this);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ImportGraphicsResources: initializing with allowOutOfProcessImageDecode: can cause slower image loading and robustness issues. This setting should only be set by specific processes.", v9, 2u);
  }
}

void **re::ImportGraphicsResources::deinit(re::ImportGraphicsResources *this)
{
  re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(this + 136);
  *(this + 3) = 0;
  re::ObjCObject::operator=(this, 0);

  return re::ObjCObject::operator=(this + 1, 0);
}

void re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_24, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;

          v3 = *(a1 + 32);
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

void re::ImportGraphicsResources::~ImportGraphicsResources(re::ImportGraphicsResources *this)
{
  re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 17);
}

void re::ImportGraphicsResources::getOrCreateCommandQueue(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  os_unfair_lock_lock((a1 + 128));
  v11 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(a1 + 136, &v11);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    re::ImportGraphicsResources::createCommandQueue(a1, *(a2 + 8), a3, &v11);
    v10 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
    re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(a1 + 136, &v10, &v11);
    v9 = v11;
    v11 = 0;
  }

  *a4 = v9;
  os_unfair_lock_unlock((a1 + 128));
}

void re::ImportGraphicsResources::createCommandQueue(id *this@<X0>, const re::mtl::Device *a2@<X1>, const char *a3@<X2>, id *a4@<X8>)
{
  if (*this)
  {
    v5 = a3;
    v8 = [objc_msgSend(MEMORY[0x1E6974018] alloc)];
    v9 = v8;
    if (v5)
    {
      [v8 setCommitSynchronously_];
    }

    re::mtl::Device::makeCommandQueue(this, v9, a4);
    if (a2)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
      [*a4 setLabel:v10];
    }

    if (v9)
    {
    }
  }

  else
  {
    *a4 = 0;
  }
}

void *re::allocInfo_ImportGraphicsResources(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_484, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_484))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC108, "ImportGraphicsResources");
    __cxa_guard_release(&_MergedGlobals_484);
  }

  return &unk_1EE1BC108;
}

void re::initInfo_ImportGraphicsResources(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x136231223051452ALL;
  v6[1] = "ImportGraphicsResources";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x18000000008;
  *(this + 6) = 128;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_ImportGraphicsResources(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ImportGraphicsResources>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ImportGraphicsResources>;
  *(this + 13) = re::internal::defaultConstructV2<re::ImportGraphicsResources>;
  *(this + 14) = re::internal::defaultDestructV2<re::ImportGraphicsResources>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ImportGraphicsResources>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 257;
  *(a3 + 18) = 1;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 172) = 0x7FFFFFFFLL;
  *(a3 + 256) = 0;
  return result;
}

void re::internal::defaultDestruct<re::ImportGraphicsResources>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((a3 + 136));

  v4 = *a3;
}

double re::internal::defaultConstructV2<re::ImportGraphicsResources>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 257;
  *(a1 + 18) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 172) = 0x7FFFFFFFLL;
  *(a1 + 256) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::ImportGraphicsResources>(uint64_t a1)
{
  re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((a1 + 136));

  v2 = *a1;
}

uint64_t re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(uint64_t a1, void *a2, id *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  v8 = v7 + 16;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v28, v9, v8);
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
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*(v18 - 1) ^ (*(v18 - 1) >> 30));
                v20 = re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                *(v20 + 8) = *(v18 - 1);
                v21 = *v18;
                *v18 = 0;
                *(v20 + 16) = v21;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v28);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 24 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 24 * v4;
}

void re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_24, 4 * v10);
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

double re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;

          v3 = *(a1 + 8);
        }

        v4 += 24;
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

uint64_t re::DynamicArray<re::GeomDeformer>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomDeformer>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::GeomDeformer::GeomDeformer(*(this + 4) + 448 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::GeomDeformer>::deinit(uint64_t a1)
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
        v5 = 448 * v4;
        do
        {
          re::ObjectHelper::destroy<re::GeomDeformer>(v3);
          v3 += 448;
          v5 -= 448;
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

void re::ObjectHelper::destroy<re::GeomDeformer>(uint64_t a1)
{
  re::BucketArray<re::Matrix4x4<float>,8ul>::deinit(a1 + 392);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 392);
  re::BucketArray<re::StringID,8ul>::deinit(a1 + 336);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 336);
  re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::deinit(a1 + 280);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 280);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(a1 + 224);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 224);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(a1 + 168);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 168);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(a1 + 112);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 112);
  re::DynamicArray<re::GeomDeformer::Affector>::deinit(a1 + 72);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(a1 + 32);
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::DynamicArray<re::GeomDeformer>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::GeomDeformer>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::GeomDeformer>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void generateInfluenceData(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _anonymous_namespace_ *a6, void *a7, _anonymous_namespace_ *a8)
{
  v99 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  if (*(a6 + 2))
  {
    re::DynamicString::format("Size of Weights = %ld", &v94, *(a6 + 2));
    v17 = v94;
    v19 = *(&v95 + 1);
    v18 = v95;
    *a1 = 0;
    v20 = 1015;
LABEL_7:
    *(a1 + 8) = v20;
    *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a1 + 24) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    goto LABEL_8;
  }

  if (a7[2])
  {
    re::DynamicString::format("Size of JointIndices = %ld", &v94, a7[2]);
    v17 = v94;
    v19 = *(&v95 + 1);
    v18 = v95;
    *a1 = 0;
    v20 = 1016;
    goto LABEL_7;
  }

  if (*(a8 + 2))
  {
    re::DynamicString::format("Size of InfluenceEndIndices = %ld", &v94, *(a8 + 2));
    v17 = v94;
    v19 = *(&v95 + 1);
    v18 = v95;
    *a1 = 0;
    v20 = 1017;
    goto LABEL_7;
  }

  v74 = a5;
  v21 = [v15 dataStart];
  if (!v21)
  {
    re::DynamicString::format("Weight Attribute stride = %ld, format = %ld", &v94, [v15 stride], objc_msgSend(v15, "format"));
    v17 = v94;
    v19 = *(&v95 + 1);
    v18 = v95;
    *a1 = 0;
    v20 = 1021;
    goto LABEL_7;
  }

  v22 = v21;
  if (![v16 dataStart])
  {
    re::DynamicString::format("Joint Indexes Attribute stride = %ld, format = %ld", &v94, [v16 stride], objc_msgSend(v16, "format"));
    v17 = v94;
    v19 = *(&v95 + 1);
    v18 = v95;
    *a1 = 0;
    v20 = 1009;
    goto LABEL_7;
  }

  v73 = a8;
  v23 = [v15 format];
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v24 = v16;
  v25 = [v24 format];
  v26 = v25 * a2;
  v75 = v23;
  if ((~[v24 format] & 0xA0000) != 0)
  {
    if ((~[v24 format] & 0x90000) != 0)
    {
      if ((~[v24 format] & 0x60000) != 0)
      {
        if ((~[v24 format] & 0x50000) != 0)
        {
          if (([v24 format] & 0x20000) != 0)
          {
            v41 = [v24 dataStart];
            if (v26)
            {
              v42 = 0;
              v30 = v83;
              v43 = v84;
              while (v30 != v42)
              {
                *(v43 + 4 * v42) = *(v41 + v42);
                if (v26 == ++v42)
                {
                  goto LABEL_49;
                }
              }

              goto LABEL_92;
            }
          }

          else
          {
            if (([v24 format] & 0x10000) == 0)
            {
              re::DynamicString::format("Format = %ld", &v94, [v24 format]);
              v76 = v94;
              v40 = v95;

              *a1 = 0;
              *(a1 + 8) = 1011;
              *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
              *(a1 + 24) = v76;
              *(a1 + 40) = v40;
              goto LABEL_82;
            }

            v44 = [v24 dataStart];
            if (v26)
            {
              v45 = 0;
              v30 = v83;
              v46 = v84;
              while (v30 != v45)
              {
                *(v46 + 4 * v45) = *(v44 + v45);
                if (v26 == ++v45)
                {
                  goto LABEL_49;
                }
              }

LABEL_93:
              v79 = 0;
              v97 = 0u;
              v98 = 0u;
              v96 = 0u;
              v94 = 0u;
              v95 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v86 = 136315906;
              v87 = "operator[]";
              v88 = 1024;
              v89 = 468;
              v90 = 2048;
              v91 = v30;
              v92 = 2048;
              v93 = v30;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }
          }
        }

        else
        {
          v37 = [v24 dataStart];
          if (v26)
          {
            v38 = 0;
            v30 = v83;
            v39 = v84;
            while (v30 != v38)
            {
              *(v39 + 4 * v38) = *(v37 + 2 * v38);
              if (v26 == ++v38)
              {
                goto LABEL_49;
              }
            }

            goto LABEL_91;
          }
        }
      }

      else
      {
        v34 = [v24 dataStart];
        if (v26)
        {
          v35 = 0;
          v30 = v83;
          v36 = v84;
          while (v30 != v35)
          {
            *(v36 + 4 * v35) = *(v34 + 2 * v35);
            if (v26 == ++v35)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_90;
        }
      }
    }

    else
    {
      v31 = [v24 dataStart];
      if (v26)
      {
        v32 = 0;
        v30 = v83;
        v33 = v84;
        while (v30 != v32)
        {
          *(v33 + 4 * v32) = *(v31 + 4 * v32);
          if (v26 == ++v32)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_88;
      }
    }
  }

  else
  {
    v27 = [v24 dataStart];
    if (v26)
    {
      v28 = 0;
      v30 = v83;
      v29 = v84;
      while (v30 != v28)
      {
        *(v29 + 4 * v28) = *(v27 + 4 * v28);
        if (v26 == ++v28)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_87;
    }
  }

LABEL_49:
  v68 = v16;
  v69 = v15;
  v47 = v75;
  v67 = a2;

  v79 = 0;
  v80 = 0;
  v81 = 0;
  v72 = v75 * a2;
  if (!v72)
  {
LABEL_71:
    if (*(v73 + 2) != v67)
    {
      re::DynamicString::format("InfluenceEndIndices size = %ld, vertexCount = %ld", &v94, *(v73 + 2), v67);
      v63 = v94;
      v65 = *(&v95 + 1);
      v64 = v95;
      *a1 = 0;
      v66 = 1020;
      goto LABEL_78;
    }

    *a1 = 1;
    goto LABEL_79;
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v70 = v75 - 1;
  v71 = 4 * v75;
LABEL_51:
  if (!v47)
  {
    v51 = 0;
    goto LABEL_75;
  }

  v52 = 0;
  v53 = 0.0;
  v30 = v80;
  v54 = v81;
  do
  {
    if (v30 == v52)
    {
      v85 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v94 = 0u;
      v95 = 0u;
      v58 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v86 = 136315906;
      v87 = "operator[]";
      v88 = 1024;
      v89 = 468;
      v90 = 2048;
      v91 = v30;
      v92 = 2048;
      v93 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_86:
      v85 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v94 = 0u;
      v95 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v86 = 136315906;
      v87 = "operator[]";
      v88 = 1024;
      v89 = 468;
      v90 = 2048;
      v91 = v58;
      v92 = 2048;
      v93 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_87:
      v79 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v94 = 0u;
      v95 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v86 = 136315906;
      v87 = "operator[]";
      v88 = 1024;
      v89 = 468;
      v90 = 2048;
      v91 = v30;
      v92 = 2048;
      v93 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_88:
      v79 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v94 = 0u;
      v95 = 0u;
      v59 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v86 = 136315906;
      v87 = "operator[]";
      v88 = 1024;
      v89 = 468;
      v90 = 2048;
      v91 = v30;
      v92 = 2048;
      v93 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_89:
      v85 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v94 = 0u;
      v95 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v86 = 136315906;
      v87 = "operator[]";
      v88 = 1024;
      v89 = 468;
      v90 = 2048;
      v91 = v59;
      v92 = 2048;
      v93 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_90:
      v79 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v94 = 0u;
      v95 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v86 = 136315906;
      v87 = "operator[]";
      v88 = 1024;
      v89 = 468;
      v90 = 2048;
      v91 = v30;
      v92 = 2048;
      v93 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_91:
      v79 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v94 = 0u;
      v95 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v86 = 136315906;
      v87 = "operator[]";
      v88 = 1024;
      v89 = 468;
      v90 = 2048;
      v91 = v30;
      v92 = 2048;
      v93 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_92:
      v79 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v94 = 0u;
      v95 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v86 = 136315906;
      v87 = "operator[]";
      v88 = 1024;
      v89 = 468;
      v90 = 2048;
      v91 = v30;
      v92 = 2048;
      v93 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_93;
    }

    v55 = *(v22 + 4 * v52);
    *(v54 + 4 * v52) = v55;
    v53 = v53 + v55;
    ++v52;
  }

  while (v47 != v52);
  if (fabsf(v53) < 0.00001)
  {
LABEL_75:
    re::DynamicString::format("Vertex Index = %ld", &v94, v51);
    v63 = v94;
    v65 = *(&v95 + 1);
    v64 = v95;
    *a1 = 0;
    v66 = 1010;
    goto LABEL_78;
  }

  v77 = v51;
  v56 = 0;
  v57 = 1;
LABEL_57:
  v30 = v80;
  if (v56 <= v80)
  {
    v58 = v80;
  }

  else
  {
    v58 = v56;
  }

  do
  {
    if (v58 == v56)
    {
      goto LABEL_86;
    }

    v78 = *(v81 + 4 * v56) / v53;
    if (v78 > 0.0)
    {
      re::DynamicArray<float>::add(a6, &v78);
      v59 = v50 + v56;
      v30 = v83;
      if (v83 <= v50 + v56)
      {
        goto LABEL_89;
      }

      v60 = *(v84 + v49 + 4 * v56);
      v61 = *(v74 + 16);
      if (v61 <= v60)
      {
        re::DynamicString::format("Invalid Joint Index (%d), number of joints: %zu", &v94, *(v84 + v49 + 4 * v56), v61);
        v63 = v94;
        v65 = *(&v95 + 1);
        v64 = v95;
        *a1 = 0;
        v66 = 1018;
        goto LABEL_78;
      }

      LODWORD(v94) = *(*(v74 + 32) + 8 * v60);
      re::DynamicArray<int>::add(a7, &v94);
      v57 = 0;
      if (v70 == v56++)
      {
LABEL_70:
        LODWORD(v94) = *(a6 + 2);
        re::DynamicArray<int>::add(v73, &v94);
        v50 += v47;
        v51 = v77 + 1;
        v22 += v71;
        v49 += v71;
        if (v50 >= v72)
        {
          goto LABEL_71;
        }

        goto LABEL_51;
      }

      goto LABEL_57;
    }

    ++v56;
  }

  while (v47 != v56);
  if ((v57 & 1) == 0)
  {
    goto LABEL_70;
  }

  re::DynamicString::format("Vertex Index = %ld", &v94, v77);
  v63 = v94;
  v65 = *(&v95 + 1);
  v64 = v95;
  *a1 = 0;
  v66 = 1019;
LABEL_78:
  *(a1 + 8) = v66;
  *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a1 + 24) = v63;
  *(a1 + 40) = v64;
  *(a1 + 48) = v65;
LABEL_79:
  v16 = v68;
  v15 = v69;
  if (v79 && v80)
  {
    (*(*v79 + 40))();
  }

LABEL_82:
  if (v82 && v83)
  {
    (*(*v82 + 40))();
  }

LABEL_8:
}

void processForMeshData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v263 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v212 = [v8 vertexCount];
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v9 = [v8 components];
  v10 = [v9 countByEnumeratingWithState:&v236 objects:v255 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v237;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v237 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v236 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v236 objects:v255 count:16];
        if (!v11)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }
    }

    v211 = a4;
    v15 = v14;

    if (v15)
    {
      v16 = [v15 skeleton];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 jointPaths];
        v19 = [v18 count];

        if (v19)
        {
          v235 = -1;
          v20 = a5[40];
          v21 = a3;
          v209 = a1;
          v203 = a5;
          if (v20)
          {
            v22 = 0;
            v23 = 1;
            while (*(a5[42] + 8 * v22) != v17)
            {
              v22 = v23;
              v24 = v20 > v23++;
              if (!v24)
              {
                goto LABEL_17;
              }
            }

            v42 = v23 - 1;
            v235 = v23 - 1;
            v234 = 0;
            v231 = 0;
            v232 = 0;
            v230 = 0;
            v233 = 0;
            if (v23)
            {
              goto LABEL_36;
            }
          }

          else
          {
LABEL_17:
            v234 = 0;
            v231 = 0;
            v232 = 0;
            v230 = 0;
            v233 = 0;
          }

          *buf = v17;
          v25 = re::DynamicArray<unsigned long>::add(a5 + 38, buf);
          v26 = 0uLL;
          *buf = 0;
          memset(v243, 0, sizeof(v243));
          *&buf[8] = &str_67;
          v244 = 0u;
          memset(v245, 0, sizeof(v245));
          v246 = 0u;
          v247 = 0x7FFFFFFF00000000uLL;
          v28 = *(a3 + 8);
          v27 = *(a3 + 16);
          if (v27 >= v28)
          {
            v35 = v27 + 1;
            if (v28 < v27 + 1)
            {
              if (*a3)
              {
                v36 = 2 * v28;
                if (!v28)
                {
                  v36 = 8;
                }

                if (v36 <= v35)
                {
                  v37 = v35;
                }

                else
                {
                  v37 = v36;
                }

                re::DynamicArray<re::ModelIOSkeleton>::setCapacity(a3, v37);
              }

              else
              {
                re::DynamicArray<re::ModelIOSkeleton>::setCapacity(a3, v35);
                ++*(a3 + 24);
              }

              v26 = 0uLL;
            }

            v27 = *(a3 + 16);
            v29 = buf[0] & 1;
          }

          else
          {
            v29 = 0;
          }

          v58 = *(a3 + 32) + 168 * v27;
          *v58 = *v58 & 0xFFFFFFFFFFFFFFFELL | v29;
          *v58 = *buf & 0xFFFFFFFFFFFFFFFELL | v29;
          *(v58 + 8) = *&buf[8];
          *&buf[8] = &str_67;
          *buf = 0;
          *(v58 + 16) = *v243;
          *(v58 + 32) = 0;
          *(v58 + 40) = 0;
          *(v58 + 24) = 0;
          *(v58 + 24) = *&v243[8];
          *&v243[8] = 0;
          *(v58 + 32) = *&v243[16];
          *&v243[16] = 0;
          v59 = *(v58 + 40);
          *(v58 + 40) = *&v243[24];
          *&v243[24] = v59;
          *(v58 + 56) = 0;
          *(v58 + 64) = 0;
          *(v58 + 48) = 0;
          *(v58 + 48) = *&v243[32];
          *&v243[32] = 0;
          *(v58 + 56) = *&v243[40];
          *&v243[40] = 0;
          v60 = *(v58 + 64);
          *(v58 + 64) = *&v243[48];
          *&v243[48] = v60;
          *(v58 + 72) = 0;
          *(v58 + 80) = 0;
          *(v58 + 88) = 0;
          *(v58 + 72) = *&v243[56];
          *&v243[56] = 0;
          *(v58 + 80) = *&v243[64];
          *&v243[64] = 0;
          v61 = *(v58 + 88);
          *(v58 + 88) = v244;
          *&v244 = v61;
          *(v58 + 96) = 0;
          *(v58 + 104) = 0;
          *(v58 + 112) = 0;
          *(v58 + 96) = *(&v244 + 1);
          *(&v244 + 1) = 0;
          *(v58 + 104) = v245[0];
          v245[0] = 0;
          v62 = *(v58 + 112);
          *(v58 + 112) = v245[1];
          v245[1] = v62;
          *(v58 + 152) = 0;
          *(v58 + 136) = v26;
          *(v58 + 120) = v26;
          *(v58 + 156) = 0x7FFFFFFFLL;
          *(v58 + 120) = v245[2];
          v245[2] = 0;
          v63 = *(v58 + 128);
          *(v58 + 128) = v245[3];
          v245[3] = v63;
          v64 = *(v58 + 136);
          *(v58 + 136) = v246;
          *&v246 = v64;
          *(v58 + 144) = DWORD2(v246);
          DWORD2(v246) = 0;
          LODWORD(v64) = *(v58 + 148);
          *(v58 + 148) = HIDWORD(v246);
          HIDWORD(v246) = v64;
          LODWORD(v64) = *(v58 + 152);
          *(v58 + 152) = v247;
          LODWORD(v247) = v64;
          LODWORD(v64) = *(v58 + 156);
          *(v58 + 156) = DWORD1(v247);
          DWORD1(v247) = v64;
          ++*(v58 + 160);
          ++*(a3 + 16);
          ++*(a3 + 24);
          v65 = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v245[2]);
          if (*(&v244 + 1))
          {
            if (v245[0])
            {
              (*(**(&v244 + 1) + 40))(v65);
              v245[0] = 0;
              v245[1] = 0;
            }

            *(&v244 + 1) = 0;
          }

          re::FixedArray<re::StringID>::deinit(&v243[56]);
          if (*&v243[32])
          {
            if (*&v243[40])
            {
              (*(**&v243[32] + 40))();
              *&v243[40] = 0;
              *&v243[48] = 0;
            }

            *&v243[32] = 0;
          }

          v66 = *&v243[8];
          if (*&v243[8])
          {
            if (*&v243[16])
            {
              v66 = (*(**&v243[8] + 40))();
              *&v243[16] = 0uLL;
            }

            *&v243[8] = 0;
          }

          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v67 = *(a3 + 32) + 168 * *(a3 + 16);
          v68 = [v17 name];
          v69 = v68;
          if (v68)
          {
            v68 = [v68 UTF8String];
            v70 = v68;
          }

          else
          {
            v70 = "(unnamed)";
          }

          *buf = 0;
          *&buf[8] = &str_67;
          v71 = re::StringID::operator=((v67 - 168), buf);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          *&buf[8] = &str_67;
          *buf = 0;

          v72 = [v17 jointPaths];
          if (!v72)
          {
            v115 = [v8 name];
            v116 = v115;
            if (v115)
            {
              v117 = [v115 UTF8String];
            }

            else
            {
              v117 = "(unnamed)";
            }

            re::DynamicString::format("Processing mesh %s", buf, v117);
            v123 = *buf;
            v124 = *v243;
            *a1 = 0;
            *(a1 + 8) = 1003;
            *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(a1 + 24) = v123;
            *(a1 + 40) = v124;

LABEL_233:
            if (v230)
            {
              if (v234)
              {
                (*(*v230 + 40))();
              }

              v234 = 0;
            }

            goto LABEL_237;
          }

          v206 = v17;
          v208 = v15;
          v204 = v8;
          v216 = v72;
          v73 = [v72 count];
          if (v73)
          {
            v75 = 0;
            v76 = 0;
            v77 = v67 - 48;
            v210 = 136315138;
            while (1)
            {
              v78 = [v216 objectAtIndexedSubscript:v76];
              v17 = [v78 UTF8String];
              *v217 = 0;
              *&v217[8] = &str_67;

              v79 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v217 >> 31) ^ (*v217 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v217 >> 31) ^ (*v217 >> 1))) >> 27));
              v80 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v67 - 48, v217, v79 ^ (v79 >> 31), buf);
              if (*&buf[12] == 0x7FFFFFFF)
              {
                *buf = v76;
                re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v67 - 48, v217, buf);
              }

              else
              {
                v81 = *re::pipelineLogObjects(v80);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  v82 = v81;
                  *buf = 136315138;
                  *&buf[4] = *&v217[8];
                  _os_log_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_DEFAULT, "Duplicate joint name found in skeleton: '%s'\n", buf, 0xCu);
                }
              }

              v43 = *(v67 - 88);
              if (v43 <= v76)
              {
                break;
              }

              v74 = re::StringID::operator=((*(v67 - 80) + v75), v217);
              if (v217[0])
              {
                if (v217[0])
                {
                }
              }

              v76 = (v76 + 1);
              v75 += 16;
              if (v73 == v76)
              {
                goto LABEL_88;
              }
            }

            *v252 = 0;
            memset(v243, 0, 64);
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v241.columns[0].f64[0]) = 136315906;
            *(v241.columns[0].f64 + 4) = "operator[]";
            WORD2(v241.columns[0].f64[1]) = 1024;
            *(&v241.columns[0].f64[1] + 6) = 468;
            WORD1(v241.columns[0].f64[2]) = 2048;
            *(&v241.columns[0].f64[2] + 4) = v76;
            WORD2(v241.columns[0].f64[3]) = 2048;
            *(&v241.columns[0].f64[3] + 6) = v43;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_240;
          }

LABEL_88:
          v43 = *(v67 - 88);
          if (v43)
          {
            v17 = 0;
            v84 = 8;
            v77 = 0xFFFFFFFFLL;
            while (v43 > v17)
            {
              v85 = *(*(v67 - 80) + v84);
              re::DynamicString::rfind(v217, 47, &v225);
              if (v225 == 1 && v226)
              {
                v86 = re::DynamicString::substr(v217, 0, v226, v252);
                if (v252[8])
                {
                  v87 = *&v252[16];
                }

                else
                {
                  v87 = &v252[9];
                }

                v220 = 0;
                v221 = &str_67;
                v88 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v220 >> 31) ^ (v220 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v220 >> 31) ^ (v220 >> 1))) >> 27));
                v89 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v67 - 48, &v220, v88 ^ (v88 >> 31), buf);
                v43 = *(v67 - 64);
                if (*&buf[12] == 0x7FFFFFFF)
                {
                  if (v43 <= v17)
                  {
                    goto LABEL_242;
                  }

                  v90 = -1;
                }

                else
                {
                  if (v43 <= v17)
                  {
                    goto LABEL_243;
                  }

                  v90 = *(*(v67 - 32) + 32 * *&buf[12] + 24);
                }

                *(*(v67 - 56) + 4 * v17) = v90;
                if (v220)
                {
                  if (v220)
                  {
                  }
                }

                if (*v252 && (v252[8] & 1) != 0)
                {
                  (*(**v252 + 40))();
                }
              }

              else
              {
                v43 = *(v67 - 64);
                if (v43 <= v17)
                {
                  goto LABEL_241;
                }

                *(*(v67 - 56) + 4 * v17) = -1;
              }

              v83 = *v217;
              if (*v217 && (v217[8] & 1) != 0)
              {
                v83 = (*(**v217 + 40))();
              }

              ++v17;
              v43 = *(v67 - 88);
              v84 += 16;
              if (v17 >= v43)
              {
                goto LABEL_114;
              }
            }

LABEL_240:
            *v217 = 0;
            memset(v243, 0, 64);
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v241.columns[0].f64[0]) = 136315906;
            *(v241.columns[0].f64 + 4) = "operator[]";
            WORD2(v241.columns[0].f64[1]) = 1024;
            *(&v241.columns[0].f64[1] + 6) = 468;
            WORD1(v241.columns[0].f64[2]) = 2048;
            *(&v241.columns[0].f64[2] + 4) = v17;
            WORD2(v241.columns[0].f64[3]) = 2048;
            *(&v241.columns[0].f64[3] + 6) = v43;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_241:
            *v252 = 0;
            memset(v243, 0, 64);
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v241.columns[0].f64[0]) = 136315906;
            *(v241.columns[0].f64 + 4) = "operator[]";
            WORD2(v241.columns[0].f64[1]) = 1024;
            *(&v241.columns[0].f64[1] + 6) = 468;
            WORD1(v241.columns[0].f64[2]) = 2048;
            *(&v241.columns[0].f64[2] + 4) = v17;
            WORD2(v241.columns[0].f64[3]) = 2048;
            *(&v241.columns[0].f64[3] + 6) = v43;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_242:
            *v256 = 0;
            memset(v243, 0, 64);
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v241.columns[0].f64[0]) = 136315906;
            *(v241.columns[0].f64 + 4) = "operator[]";
            WORD2(v241.columns[0].f64[1]) = 1024;
            *(&v241.columns[0].f64[1] + 6) = 468;
            WORD1(v241.columns[0].f64[2]) = 2048;
            *(&v241.columns[0].f64[2] + 4) = v17;
            WORD2(v241.columns[0].f64[3]) = 2048;
            *(&v241.columns[0].f64[3] + 6) = v43;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_243:
            *v256 = 0;
            memset(v243, 0, 64);
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v241.columns[0].f64[0]) = 136315906;
            *(v241.columns[0].f64 + 4) = "operator[]";
            WORD2(v241.columns[0].f64[1]) = 1024;
            *(&v241.columns[0].f64[1] + 6) = 468;
            WORD1(v241.columns[0].f64[2]) = 2048;
            *(&v241.columns[0].f64[2] + 4) = v17;
            WORD2(v241.columns[0].f64[3]) = 2048;
            *(&v241.columns[0].f64[3] + 6) = v43;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_244;
          }

LABEL_114:
          *(v67 - 152) = v73;
          v17 = v206;
          v91 = [v206 jointBindTransforms];
          v77 = v91;
          if (v91)
          {
            v92 = [v91 elementCount];
            v8 = v204;
            if (v92)
            {
              v93 = v92;
              v94 = [v206 jointRestTransforms];
              if (v94)
              {
                v95 = v94;
                v225 = 0;
                v226 = 0;
                v227 = 0;
                v96 = v227;
                v97 = [v77 getDouble4x4Array:v227 maxCount:v93];
                if (v97 == v93)
                {
                  v220 = 0;
                  v221 = 0;
                  v222 = 0;
                  v200 = v222;
                  v98 = [_anonymous_namespace_ getDouble4x4Array:v95 maxCount:"getDouble4x4Array:maxCount:"];
                  v201 = v96;
                  v202 = v98;
                  if (v98 == v93)
                  {
                    v198 = v95;
                    v199 = v77;
                    if (*(v67 - 64))
                    {
                      v100 = 0;
                      v101 = 0;
                      v17 = 0;
                      v210 = v221;
                      v102 = v226;
                      v43 = v201;
                      v103 = v200 + 4;
                      while (v210 != v17)
                      {
                        v105 = v103[-4];
                        v104 = v103[-3];
                        v107 = v103[-2];
                        v106 = v103[-1];
                        v109 = *v103;
                        v108 = v103[1];
                        v111 = v103[2];
                        v110 = v103[3];
                        *&v217[8] = 1065353216;
                        *&v217[16] = 0;
                        *v217 = 0x3F8000003F800000;
                        *&v217[24] = 0x3F80000000000000;
                        v218 = 0uLL;
                        *buf = vcvt_hight_f32_f64(vcvt_f32_f64(v105), v104);
                        *v243 = vcvt_hight_f32_f64(vcvt_f32_f64(v107), v106);
                        *&v243[16] = vcvt_hight_f32_f64(vcvt_f32_f64(v109), v108);
                        *&v243[32] = vcvt_hight_f32_f64(vcvt_f32_f64(v111), v110);
                        re::decomposeScaleRotationTranslation<float>(buf, v217, &v217[16], &v218);
                        v77 = *(v67 - 112);
                        if (v77 <= v17)
                        {
                          goto LABEL_245;
                        }

                        v112 = (*(v67 - 104) + v100);
                        v113 = *v217;
                        v114 = v218;
                        v112[1] = *&v217[16];
                        v112[2] = v114;
                        *v112 = v113;
                        if (v102 == v17)
                        {
                          goto LABEL_246;
                        }

                        v264.columns[2] = *v241.columns[1].f64;
                        v264.columns[3] = *&v241.columns[1].f64[2];
                        v264.columns[0] = *v241.columns[0].f64;
                        v264.columns[1] = *&v241.columns[0].f64[2];
                        v265 = __invert_f4(v264);
                        v77 = *(v67 - 136);
                        if (v77 <= v17)
                        {
                          goto LABEL_247;
                        }

                        *(*(v67 - 128) + v101) = v265;
                        ++v17;
                        v101 += 64;
                        ++v43;
                        v100 += 48;
                        v103 += 8;
                        if (v17 >= *(v67 - 64))
                        {
                          goto LABEL_126;
                        }
                      }

LABEL_244:
                      *v217 = 0;
                      memset(v243, 0, 64);
                      *buf = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(v241.columns[0].f64[0]) = 136315906;
                      *(v241.columns[0].f64 + 4) = "operator[]";
                      WORD2(v241.columns[0].f64[1]) = 1024;
                      *(&v241.columns[0].f64[1] + 6) = 468;
                      WORD1(v241.columns[0].f64[2]) = 2048;
                      v102 = v210;
                      *(&v241.columns[0].f64[2] + 4) = v210;
                      WORD2(v241.columns[0].f64[3]) = 2048;
                      *(&v241.columns[0].f64[3] + 6) = v210;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_245:
                      *v252 = 0;
                      memset(v243, 0, 64);
                      *buf = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(v241.columns[0].f64[0]) = 136315906;
                      *(v241.columns[0].f64 + 4) = "operator[]";
                      WORD2(v241.columns[0].f64[1]) = 1024;
                      *(&v241.columns[0].f64[1] + 6) = 468;
                      WORD1(v241.columns[0].f64[2]) = 2048;
                      *(&v241.columns[0].f64[2] + 4) = v17;
                      WORD2(v241.columns[0].f64[3]) = 2048;
                      *(&v241.columns[0].f64[3] + 6) = v77;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_246:
                      *v252 = 0;
                      memset(v243, 0, 64);
                      *buf = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(v241.columns[0].f64[0]) = 136315906;
                      *(v241.columns[0].f64 + 4) = "operator[]";
                      WORD2(v241.columns[0].f64[1]) = 1024;
                      *(&v241.columns[0].f64[1] + 6) = 468;
                      WORD1(v241.columns[0].f64[2]) = 2048;
                      *(&v241.columns[0].f64[2] + 4) = v102;
                      WORD2(v241.columns[0].f64[3]) = 2048;
                      *(&v241.columns[0].f64[3] + 6) = v102;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_247:
                      *v256 = 0;
                      memset(v243, 0, 64);
                      *buf = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v252 = 136315906;
                      *&v252[4] = "operator[]";
                      *&v252[12] = 1024;
                      *&v252[14] = 468;
                      *&v252[18] = 2048;
                      *&v252[20] = v17;
                      v253 = 2048;
                      *v254 = v77;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_248;
                    }

LABEL_126:
                    v21 = a3;
                    v42 = *(a3 + 16) - 1;
                    v235 = v42;
                    v8 = v204;
                    v17 = v206;
                    v95 = v198;
                    v77 = v199;
                  }

                  else
                  {
                    v168 = [v204 name];
                    v169 = v168;
                    if (v168)
                    {
                      v170 = [v168 UTF8String];
                    }

                    else
                    {
                      v170 = "(unnamed)";
                    }

                    v21 = a3;
                    re::DynamicString::format("Incorrect number of rest transforms for %s.", buf, v170);
                    v183 = *buf;
                    v184 = *v243;
                    *a1 = 0;
                    *(a1 + 8) = 1029;
                    *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
                    *(a1 + 24) = v183;
                    *(a1 + 40) = v184;

                    v42 = -1;
                  }

                  if (v220 && v221)
                  {
                    (*(*v220 + 40))();
                  }

                  if (v225 && v226)
                  {
                    (*(*v225 + 40))();
                  }

                  v185 = v202 == v93;
                  v15 = v208;
                  if (!v185)
                  {
                    goto LABEL_233;
                  }

LABEL_36:
                  v205 = v17;
                  v43 = v42;
                  v17 = *(v21 + 16);
                  v214 = v42;
                  if (v17 <= v42)
                  {
                    goto LABEL_251;
                  }

                  v44 = *(v21 + 32) + 168 * v42;
                  v207 = v15;
                  v215 = v15;
                  v45 = [v215 jointPaths];
                  v46 = [v45 count];

                  v47 = v46;
                  if (v46)
                  {
                    v48 = 0;
                    while (1)
                    {
                      v49 = [v215 jointPaths];
                      v50 = [v49 objectAtIndexedSubscript:v48];
                      v51 = [v50 UTF8String];
                      v241.columns[0].f64[0] = 0.0;
                      *&v241.columns[0].f64[1] = &str_67;

                      v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v241.columns[0].f64[0] >> 31) ^ (*&v241.columns[0].f64[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v241.columns[0].f64[0] >> 31) ^ (*&v241.columns[0].f64[0] >> 1))) >> 27));
                      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v44 + 120, &v241, v52 ^ (v52 >> 31), buf);
                      if (*&buf[12] == 0x7FFFFFFF)
                      {
                        break;
                      }

                      *buf = *(*(v44 + 136) + 32 * *&buf[12] + 24);
                      v53 = re::DynamicArray<unsigned long>::add(&v230, buf);
                      if (LOBYTE(v241.columns[0].f64[0]))
                      {
                        if (LOBYTE(v241.columns[0].f64[0]))
                        {
                        }
                      }

                      if (v47 == ++v48)
                      {
                        goto LABEL_51;
                      }
                    }

                    v125 = re::DynamicString::format("Joint %s missing from skeleton while remapping joints.", buf, *&v241.columns[0].f64[1]);
                    v126 = *buf;
                    v127 = *v243;
                    v56 = v209;
                    *v209 = 0;
                    *(v209 + 8) = 1000;
                    *(v209 + 16) = &re::AnimationErrorCategory(void)::instance;
                    *(v209 + 24) = v126;
                    *(v209 + 40) = v127;
                    v17 = v205;
                    v57 = v203;
                    if (LOBYTE(v241.columns[0].f64[0]))
                    {
                      if (LOBYTE(v241.columns[0].f64[0]))
                      {
                      }
                    }
                  }

                  else
                  {
                    if (*(v44 + 80))
                    {
                      v54 = 0;
                      v55 = 1;
                      do
                      {
                        *buf = v54;
                        re::DynamicArray<unsigned long>::add(&v230, buf);
                        v54 = v55;
                        v24 = *(v44 + 80) > v55++;
                      }

                      while (v24);
                    }

LABEL_51:
                    v56 = v209;
                    *v209 = 1;
                    v17 = v205;
                    v57 = v203;
                  }

                  if (*v56 != 1)
                  {
                    goto LABEL_233;
                  }

                  v128 = [v8 vertexAttributeDataForAttributeNamed:*MEMORY[0x1E6974B08]];
                  v129 = v128;
                  if (v128)
                  {
                    if (([v128 format] & 0xC0000) != 0)
                    {
                      v130 = [v8 vertexAttributeDataForAttributeNamed:*MEMORY[0x1E6974B00]];
                      if (!v130)
                      {
                        v175 = [v8 name];
                        v176 = v175;
                        if (v175)
                        {
                          v177 = [v175 UTF8String];
                        }

                        else
                        {
                          v177 = "(unnamed)";
                        }

                        re::DynamicString::format("Processing mesh %s", buf, v177);
                        v186 = *buf;
                        v187 = *v243;
                        *v209 = 0;
                        *(v209 + 8) = 1008;
                        *(v209 + 16) = &re::AnimationErrorCategory(void)::instance;
                        *(v209 + 24) = v186;
                        *(v209 + 40) = v187;

LABEL_231:
                        v15 = v207;
                        goto LABEL_232;
                      }

                      *&v254[2] = 0;
                      memset(v252, 0, sizeof(v252));
                      v229 = 0;
                      v226 = 0;
                      v227 = 0;
                      v224 = 0;
                      v225 = 0;
                      v228 = 0;
                      v221 = 0;
                      v222 = 0;
                      v220 = 0;
                      v223 = 0;
                      generateInfluenceData(v217, v212, v129, v130, &v230, v252, &v225, &v220);
                      if (v217[0] == 1)
                      {
                        *buf = 0u;
                        memset(v243, 0, 48);
                        v131 = re::DynamicString::DynamicString(&v243[56]);
                        v251 = 0;
                        v250 = 0u;
                        v249 = 0u;
                        v248 = 0u;
                        v247 = 0u;
                        v246 = 0u;
                        memset(v245, 0, sizeof(v245));
                        v132 = v222;
                        v134 = v222;
                        if (v222)
                        {
                          v135 = 0;
                          v136 = v224;
                          v43 = *(&v247 + 1);
                          v137 = v248;
                          while (v43 != v135)
                          {
                            *(v137 + 4 * v135) = *(v136 + 4 * v135);
                            v135 = (v135 + 1);
                            if (v134 == v135)
                            {
                              goto LABEL_147;
                            }
                          }

LABEL_248:
                          v240 = 0;
                          memset(&v241, 0, 80);
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v256 = 136315906;
                          *&v256[4] = "operator[]";
                          v257 = 1024;
                          v258 = 468;
                          v259 = 2048;
                          v260 = v43;
                          v261 = 2048;
                          v262 = v43;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_249:
                          v240 = 0;
                          memset(&v241, 0, 80);
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v256 = 136315906;
                          *&v256[4] = "operator[]";
                          v257 = 1024;
                          v258 = 468;
                          v259 = 2048;
                          v260 = v43;
                          v261 = 2048;
                          v262 = v43;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_250:
                          v240 = 0;
                          memset(&v241, 0, 80);
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v256 = 136315906;
                          *&v256[4] = "operator[]";
                          v257 = 1024;
                          v258 = 468;
                          v259 = 2048;
                          v260 = v17;
                          v261 = 2048;
                          v262 = v17;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_251:
                          *v217 = 0;
                          memset(v243, 0, 64);
                          *buf = 0u;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          LODWORD(v241.columns[0].f64[0]) = 136315906;
                          *(v241.columns[0].f64 + 4) = "operator[]";
                          WORD2(v241.columns[0].f64[1]) = 1024;
                          *(&v241.columns[0].f64[1] + 6) = 789;
                          WORD1(v241.columns[0].f64[2]) = 2048;
                          *(&v241.columns[0].f64[2] + 4) = v43;
                          WORD2(v241.columns[0].f64[3]) = 2048;
                          *(&v241.columns[0].f64[3] + 6) = v17;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
                        }

LABEL_147:
                        v138 = *&v252[16];
                        v140 = *&v252[16];
                        if (*&v252[16])
                        {
                          v141 = 0;
                          v142 = *&v254[2];
                          v143 = v245[2];
                          v43 = v245[1];
                          while (v43 != v141)
                          {
                            *(v143 + 4 * v141) = *(v142 + 4 * v141);
                            v141 = (v141 + 1);
                            if (v140 == v141)
                            {
                              goto LABEL_151;
                            }
                          }

                          goto LABEL_249;
                        }

LABEL_151:
                        v144 = v227;
                        v146 = v227;
                        if (v227)
                        {
                          v147 = 0;
                          v148 = v229;
                          v149 = *(&v246 + 1);
                          v17 = v246;
                          while (v17 != v147)
                          {
                            *(v149 + 4 * v147) = *(v148 + 4 * v147);
                            if (v146 == ++v147)
                            {
                              goto LABEL_155;
                            }
                          }

                          goto LABEL_250;
                        }

LABEL_155:
                        *(&v250 + 1) = 0;
                        [v215 geometryBindTransform];
                        *&v243[48] = v214;
                        v151 = [v8 name];
                        v152 = v151;
                        if (v151)
                        {
                          v153 = [v151 UTF8String];
                        }

                        else
                        {
                          v153 = "(unnamed)";
                        }

                        v17 = v205;
                        re::DynamicString::operator=(&v243[56], v153);

                        v188 = [v8 name];
                        v189 = v188;
                        if (v188)
                        {
                          v188 = [v188 UTF8String];
                          v190 = v188;
                        }

                        else
                        {
                          v190 = "(unnamed)";
                        }

                        v191 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((v57 + 20), &v241, &v235);
                        if (*&v241.columns[0].f64[0])
                        {
                          if (LOBYTE(v241.columns[0].f64[1]))
                          {
                            (*(**&v241.columns[0].f64[0] + 40))(v191);
                          }

                          memset(&v241, 0, 32);
                        }

                        v192 = [v205 name];
                        v193 = v192;
                        if (v192)
                        {
                          v192 = [v192 UTF8String];
                          v194 = v192;
                        }

                        else
                        {
                          v194 = "(unnamed)";
                        }

                        v195 = re::DynamicArray<re::DynamicString>::add((v57 + 10), &v241);
                        if (*&v241.columns[0].f64[0])
                        {
                          if (LOBYTE(v241.columns[0].f64[1]))
                          {
                            (*(**&v241.columns[0].f64[0] + 40))(v195);
                          }

                          memset(&v241, 0, 32);
                        }

                        v196 = [v215 jointAnimation];
                        v197 = v196;
                        if (v196)
                        {
                          *&v241.columns[0].f64[0] = v196;
                          re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add((v57 + 26), &v241, &v235);
                        }

                        *v209 = 1;

                        re::ModelIOSkinningData::~ModelIOSkinningData(buf);
                        if (v217[0])
                        {
                          goto LABEL_222;
                        }
                      }

                      else
                      {
                        *v209 = v217[0];
                        *(v209 + 8) = *&v217[8];
                        *(v209 + 24) = *&v217[24];
                        *(v209 + 48) = v219;
                        *(v209 + 32) = v218;
                        v219 = 0;
                        *&v217[24] = 0;
                        v218 = 0uLL;
                      }

                      if (*&v217[24] && (v218 & 1) != 0)
                      {
                        (*(**&v217[24] + 40))();
                      }

LABEL_222:
                      if (v220 && v224)
                      {
                        (*(*v220 + 40))();
                      }

                      if (v225 && v229)
                      {
                        (*(*v225 + 40))();
                      }

                      if (*v252 && *&v254[2])
                      {
                        (*(**v252 + 40))();
                      }

                      goto LABEL_231;
                    }

                    v171 = [v8 name];
                    v166 = v171;
                    if (v171)
                    {
                      v172 = [v171 UTF8String];
                    }

                    else
                    {
                      v172 = "(unnamed)";
                    }

                    re::DynamicString::format("Processing mesh %s", buf, v172);
                    v178 = *buf;
                    v180 = *&v243[8];
                    v179 = *v243;
                    v181 = v209;
                    *v209 = 0;
                    v182 = 1007;
                  }

                  else
                  {
                    v165 = [v8 name];
                    v166 = v165;
                    if (v165)
                    {
                      v167 = [v165 UTF8String];
                    }

                    else
                    {
                      v167 = "(unnamed)";
                    }

                    re::DynamicString::format("Processing mesh %s", buf, v167);
                    v178 = *buf;
                    v180 = *&v243[8];
                    v179 = *v243;
                    v181 = v209;
                    *v209 = 0;
                    v182 = 1006;
                  }

                  *(v181 + 8) = v182;
                  *(v181 + 16) = &re::AnimationErrorCategory(void)::instance;
                  *(v181 + 24) = v178;
                  *(v181 + 40) = v179;
                  *(v181 + 48) = v180;

LABEL_232:
                  goto LABEL_233;
                }

                v158 = [v204 name];
                v159 = v158;
                v15 = v208;
                if (v158)
                {
                  v160 = [v158 UTF8String];
                }

                else
                {
                  v160 = "(unnamed)";
                }

                re::DynamicString::format("Incorrect number of bind transforms for %s.", buf, v160);
                v173 = *buf;
                v174 = *v243;
                *a1 = 0;
                *(a1 + 8) = 1005;
                *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
                *(a1 + 24) = v173;
                *(a1 + 40) = v174;

                if (v225 && v226)
                {
                  (*(*v225 + 40))();
                }

LABEL_173:
                goto LABEL_233;
              }

              v154 = [v204 name];
              v119 = v154;
              if (v154)
              {
                v155 = [v154 UTF8String];
              }

              else
              {
                v155 = "(unnamed)";
              }

              v15 = v208;
              re::DynamicString::format("Processing mesh %s", buf, v155);
              v161 = *buf;
              v163 = *&v243[8];
              v162 = *v243;
              *a1 = 0;
              v164 = 1028;
            }

            else
            {
              v121 = [v204 name];
              v119 = v121;
              v15 = v208;
              if (v121)
              {
                v122 = [v121 UTF8String];
              }

              else
              {
                v122 = "(unnamed)";
              }

              re::DynamicString::format("Processing mesh %s", buf, v122);
              v161 = *buf;
              v163 = *&v243[8];
              v162 = *v243;
              *a1 = 0;
              v164 = 1004;
            }

            *(a1 + 8) = v164;
            *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(a1 + 24) = v161;
            *(a1 + 40) = v162;
            *(a1 + 48) = v163;
          }

          else
          {
            v8 = v204;
            v118 = [v204 name];
            v119 = v118;
            if (v118)
            {
              v120 = [v118 UTF8String];
            }

            else
            {
              v120 = "(unnamed)";
            }

            v15 = v208;
            re::DynamicString::format("Processing mesh %s", buf, v120);
            v156 = *buf;
            v157 = *v243;
            *a1 = 0;
            *(a1 + 8) = 1004;
            *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(a1 + 24) = v156;
            *(a1 + 40) = v157;
          }

          goto LABEL_173;
        }

        v33 = [v8 name];
        v31 = v33;
        if (v33)
        {
          v34 = [v33 UTF8String];
        }

        else
        {
          v34 = "(unnamed)";
        }

        re::DynamicString::format("Processing mesh %s", buf, v34);
        v38 = *buf;
        v40 = *&v243[8];
        v39 = *v243;
        *a1 = 0;
        v41 = 1003;
      }

      else
      {
        v30 = [v8 name];
        v31 = v30;
        if (v30)
        {
          v32 = [v30 UTF8String];
        }

        else
        {
          v32 = "(unnamed)";
        }

        re::DynamicString::format("Processing mesh %s", buf, v32);
        v38 = *buf;
        v40 = *&v243[8];
        v39 = *v243;
        *a1 = 0;
        v41 = 1002;
      }

      *(a1 + 8) = v41;
      *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a1 + 24) = v38;
      *(a1 + 40) = v39;
      *(a1 + 48) = v40;

LABEL_237:
      goto LABEL_238;
    }
  }

  else
  {
LABEL_9:
  }

  *a1 = 1;
LABEL_238:
}

float64x2_t anonymous namespace::convertToRE(float32x4_t *this, const simd_double4x4 *a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[1].f64), *&a2->columns[1].f64[2]);
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[2].f64), *&a2->columns[2].f64[2]);
  result = *&a2->columns[3].f64[2];
  v5 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[3].f64), result);
  *this = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[0].f64), *&a2->columns[0].f64[2]);
  this[1] = v2;
  this[2] = v3;
  this[3] = v5;
  return result;
}

double re::DynamicArray<re::ModelIOSkinningData>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::ModelIOSkinningData>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ModelIOSkinningData>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 224 * v5;
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  *(v11 + 64) = *(a2 + 64);
  *(v11 + 32) = v13;
  *(v11 + 48) = v14;
  *(v11 + 16) = v12;
  *v11 = *a2;
  result = 0.0;
  *(v11 + 88) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 96) = *(a2 + 96);
  v16 = *(a2 + 80);
  *(v11 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v17 = *(a2 + 88);
  *(a2 + 96) = 0;
  v19 = *(v11 + 80);
  v18 = *(v11 + 88);
  *(v11 + 80) = v16;
  *(v11 + 88) = v17;
  *(a2 + 80) = v19;
  *(a2 + 88) = v18;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 120) = 0;
  v20 = *(a2 + 112);
  *(v11 + 104) = *(a2 + 104);
  *(v11 + 112) = v20;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v21 = *(v11 + 120);
  *(v11 + 120) = *(a2 + 120);
  *(a2 + 120) = v21;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;
  v22 = *(a2 + 136);
  *(v11 + 128) = *(a2 + 128);
  *(v11 + 136) = v22;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v23 = *(v11 + 144);
  *(v11 + 144) = *(a2 + 144);
  *(a2 + 144) = v23;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0;
  *(v11 + 168) = 0;
  v24 = *(a2 + 160);
  *(v11 + 152) = *(a2 + 152);
  *(v11 + 160) = v24;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v25 = *(v11 + 168);
  *(v11 + 168) = *(a2 + 168);
  *(a2 + 168) = v25;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 192) = 0;
  v26 = *(a2 + 184);
  *(v11 + 176) = *(a2 + 176);
  *(v11 + 184) = v26;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v27 = *(v11 + 192);
  *(v11 + 192) = *(a2 + 192);
  *(a2 + 192) = v27;
  *(v11 + 200) = 0;
  *(v11 + 208) = 0;
  *(v11 + 216) = 0;
  v28 = *(a2 + 208);
  *(v11 + 200) = *(a2 + 200);
  *(v11 + 208) = v28;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v29 = *(v11 + 216);
  *(v11 + 216) = *(a2 + 216);
  *(a2 + 216) = v29;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

double re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, void *a2, _DWORD *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v16, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v13);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v14, v13);
    result = 0.0;
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 32) = a2[3];
    v9 = a2[1];
    *(v8 + 8) = *a2;
    *a2 = 0;
    v10 = a2[2];
    a2[3] = 0;
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    *(v8 + 16) = v9;
    *(v8 + 24) = v10;
    a2[1] = v12;
    a2[2] = v11;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void re::importSkeleton(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = *MEMORY[0x1E69E9840];
  v4 = a1;
  *v90 = 0;
  *&v90[8] = &str_67;
  memset(&v90[16], 0, 132);
  *&v90[148] = 0x7FFFFFFFLL;
  v5 = [v4 property:@"joints"];
  v6 = v5;
  if (v5 && ([(_anonymous_namespace_ *)v5 data], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(_anonymous_namespace_ *)v6 stringArray];
    v83 = v8;
    if (v8)
    {
      v80 = a2;
      v81 = v6;
      v9 = [v8 count];
      v82 = v4;
      v10 = [v4 path];
      v11 = [v10 stringValue];
      v12 = [v11 UTF8String];
      *&buf = 0;
      *(&buf + 1) = &str_67;
      *v90 = buf;
      *&buf = 0;
      *(&buf + 1) = &str_67;

      v13 = v9;
      v16 = v90;
      LODWORD(v84) = 0;
      if (v9)
      {
        v18 = 0;
        p_buf = "Duplicate joint name found in skeleton: '%s'\n";
        v20 = v83;
        while (1)
        {
          v21 = [v83 objectAtIndexedSubscript:v18];
          v22 = [v21 UTF8String];
          v101 = 0;
          v102 = &str_67;
          v23 = v84;
          v2 = *&v90[24];
          if (*&v90[24] <= v84)
          {
            break;
          }

          v24 = re::StringID::operator=((*&v90[32] + 16 * v84), &v101);
          if (v101)
          {
            if (v101)
            {
            }
          }

          v101 = 0;
          v102 = &str_67;

          v23 = v84;
          v2 = *&v90[24];
          if (*&v90[24] <= v84)
          {
            goto LABEL_95;
          }

          v25 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v90[112], (*&v90[32] + 16 * v84), &v84);
          v26 = *v25;
          if (*v25 != v84)
          {
            v27 = *re::pipelineLogObjects(v25);
            v25 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v25)
            {
              v28 = v84;
              v29 = v27;
              v30 = [v83 objectAtIndexedSubscript:v28];
              v31 = [v30 UTF8String];
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v31;
              _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Duplicate joint name found in skeleton: '%s'\n", &buf, 0xCu);
            }

            v26 = v84;
          }

          v18 = v26 + 1;
          LODWORD(v84) = v18;
          if (v18 >= v9)
          {
            v20 = 0;
            v2 = 0xBF58476D1CE4E5B9;
            while (1)
            {
              v23 = *&v90[48];
              if (*&v90[48] <= v20)
              {
                goto LABEL_96;
              }

              *(*&v90[56] + 4 * v20) = -1;
              v23 = *&v90[24];
              if (*&v90[24] <= v20)
              {
                goto LABEL_97;
              }

              v32 = *(*&v90[32] + 16 * v20 + 8);
              v33 = strrchr(v32, 47);
              if (v33)
              {
                v34 = v33;
                p_buf = v32;
                while (1)
                {
                  v101 = 0;
                  v102 = &str_67;
                  v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v101 >> 31) ^ (v101 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v101 >> 31) ^ (v101 >> 1))) >> 27));
                  v36 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v90[112], &v101, v35 ^ (v35 >> 31), &buf);
                  if (HIDWORD(buf) != 0x7FFFFFFF)
                  {
                    break;
                  }

                  p_buf = v102;
                  v34 = strrchr(v102, 47);
                  v37 = *re::pipelineLogObjects(v34);
                  v33 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
                  if (v33)
                  {
                    v38 = v37;
                    LODWORD(buf) = 136315138;
                    *(&buf + 4) = v102;
                    _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "Expected joint parent do not exist: %s, looking for its ancester", &buf, 0xCu);
                  }

                  if (v101)
                  {
                    if (v101)
                    {
                    }
                  }

                  if (!v34)
                  {
                    goto LABEL_33;
                  }
                }

                v23 = *&v90[48];
                if (*&v90[48] <= v20)
                {
                  goto LABEL_98;
                }

                *(*&v90[56] + 4 * v20) = *(*&v90[128] + 32 * HIDWORD(buf) + 24);
                if (v101)
                {
                  if (v101)
                  {
                  }
                }
              }

LABEL_33:
              ++v20;
              v13 = v9;
              if (v20 == v9)
              {
                goto LABEL_38;
              }
            }
          }
        }

        v87 = 0;
        memset(v95, 0, sizeof(v95));
        v94 = 0u;
        v93 = 0u;
        buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v100.columns[0].i32[0] = 136315906;
        *(v100.columns[0].i64 + 4) = "operator[]";
        v100.columns[0].i16[6] = 1024;
        *(&v100.columns[0].i32[3] + 2) = 468;
        v100.columns[1].i16[1] = 2048;
        *(v100.columns[1].i64 + 4) = v23;
        v100.columns[1].i16[6] = 2048;
        *(&v100.columns[1].i64[1] + 6) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_95:
        v101 = 0;
        memset(v95, 0, sizeof(v95));
        v94 = 0u;
        v93 = 0u;
        buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v100.columns[0].i32[0] = 136315906;
        *(v100.columns[0].i64 + 4) = "operator[]";
        v100.columns[0].i16[6] = 1024;
        *(&v100.columns[0].i32[3] + 2) = 468;
        v100.columns[1].i16[1] = 2048;
        *(v100.columns[1].i64 + 4) = v23;
        v100.columns[1].i16[6] = 2048;
        *(&v100.columns[1].i64[1] + 6) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_96:
        v101 = 0;
        memset(v95, 0, sizeof(v95));
        v94 = 0u;
        v93 = 0u;
        buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v100.columns[0].i32[0] = 136315906;
        *(v100.columns[0].i64 + 4) = "operator[]";
        v100.columns[0].i16[6] = 1024;
        *(&v100.columns[0].i32[3] + 2) = 468;
        v100.columns[1].i16[1] = 2048;
        *(v100.columns[1].i64 + 4) = v20;
        v100.columns[1].i16[6] = 2048;
        *(&v100.columns[1].i64[1] + 6) = v23;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_97:
        v101 = 0;
        memset(v95, 0, sizeof(v95));
        v94 = 0u;
        v93 = 0u;
        buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v100.columns[0].i32[0] = 136315906;
        *(v100.columns[0].i64 + 4) = "operator[]";
        v100.columns[0].i16[6] = 1024;
        *(&v100.columns[0].i32[3] + 2) = 468;
        v100.columns[1].i16[1] = 2048;
        *(v100.columns[1].i64 + 4) = v20;
        v100.columns[1].i16[6] = 2048;
        *(&v100.columns[1].i64[1] + 6) = v23;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_98:
        v87 = 0;
        memset(v95, 0, sizeof(v95));
        v94 = 0u;
        v93 = 0u;
        buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v100.columns[0].i32[0] = 136315906;
        *(v100.columns[0].i64 + 4) = "operator[]";
        v100.columns[0].i16[6] = 1024;
        *(&v100.columns[0].i32[3] + 2) = 468;
        v100.columns[1].i16[1] = 2048;
        *(v100.columns[1].i64 + 4) = v20;
        v100.columns[1].i16[6] = 2048;
        *(&v100.columns[1].i64[1] + 6) = v23;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_99;
      }

LABEL_38:
      v4 = v82;
      v43 = [v82 property:@"restTransforms"];
      v87 = 0;
      v88 = 0;
      v89 = 0;
      if (v43 && ([(_anonymous_namespace_ *)v43 data], (v44 = objc_claimAutoreleasedReturnValue()) != 0) && (v45 = v44, v46 = v89, v47 = [(_anonymous_namespace_ *)v43 double4x4Array:v89 maxCount:v13], v45, v47 == v13))
      {
        p_buf = &buf;
        if (v13)
        {
          v23 = 0;
          v16 = v88;
          v49 = 32;
          while (v16 != v23)
          {
            v2 = *&v90[72];
            if (*&v90[72] <= v23)
            {
              goto LABEL_100;
            }

            re::decomposeScaleRotationTranslation<float>(&v100, (*&v90[80] + v49 - 32), (*&v90[80] + v49 - 16), (*&v90[80] + v49));
            ++v23;
            v49 += 48;
            ++v46;
            if (v13 == v23)
            {
              goto LABEL_46;
            }
          }

LABEL_99:
          v101 = 0;
          memset(v95, 0, sizeof(v95));
          v94 = 0u;
          v93 = 0u;
          buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v100.columns[0].i32[0] = 136315906;
          *(p_buf + 164) = "operator[]";
          v100.columns[0].i16[6] = 1024;
          *(p_buf + 174) = 468;
          v100.columns[1].i16[1] = 2048;
          *(p_buf + 180) = v16;
          v100.columns[1].i16[6] = 2048;
          *(p_buf + 190) = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_100:
          v84 = 0;
          memset(v95, 0, sizeof(v95));
          v94 = 0u;
          v93 = 0u;
          buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v101) = 136315906;
          *(p_buf + 228) = "operator[]";
          WORD2(v102) = 1024;
          *(p_buf + 238) = 468;
          v103 = 2048;
          *(p_buf + 244) = v23;
          v104 = 2048;
          *(p_buf + 254) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_101:
          v101 = 0;
          *(p_buf + 3) = 0u;
          *(p_buf + 4) = 0u;
          *(p_buf + 1) = 0u;
          *(p_buf + 2) = 0u;
          *p_buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v100.columns[0].i32[0] = 136315906;
          *(p_buf + 164) = "operator[]";
          v100.columns[0].i16[6] = 1024;
          *(p_buf + 174) = 468;
          v100.columns[1].i16[1] = 2048;
          *(p_buf + 180) = v16;
          v100.columns[1].i16[6] = 2048;
          *(p_buf + 190) = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_102:
          v91 = 0;
          *(p_buf + 3) = 0u;
          *(p_buf + 4) = 0u;
          *(p_buf + 1) = 0u;
          *(p_buf + 2) = 0u;
          *p_buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v101) = 136315906;
          *(p_buf + 228) = "operator[]";
          WORD2(v102) = 1024;
          *(p_buf + 238) = 468;
          v103 = 2048;
          *(p_buf + 244) = v23;
          v104 = 2048;
          *(p_buf + 254) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v50 = [v82 property:@"bindTransforms"];
        v84 = 0;
        v85 = 0;
        v86 = 0;
        if (v50 && ([(_anonymous_namespace_ *)v50 data], (v51 = objc_claimAutoreleasedReturnValue()) != 0) && (v52 = v51, v53 = v86, v54 = [(_anonymous_namespace_ *)v50 double4x4Array:v86 maxCount:v13], v52, v54 == v13))
        {
          if (v13)
          {
            v23 = 0;
            v16 = v85;
            v56 = 32;
            while (v16 != v23)
            {
              v106 = __invert_f4(v100);
              v2 = *&v90[96];
              if (*&v90[96] <= v23)
              {
                goto LABEL_102;
              }

              *(*&v90[104] + v56 - 32) = v106;
              ++v23;
              v56 += 64;
              ++v53;
              if (v13 == v23)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_101;
          }

LABEL_54:
          v57 = *v90;
          v58 = *&v90[24];
          v59 = *&v90[48];
          *&v90[48] = 0;
          v60 = *&v90[72];
          *&v90[72] = 0;
          v61 = *&v90[96];
          *&v90[96] = 0;
          v99 = 1;
          *v80 = 1;
          *(v80 + 8) = v57;
          *&buf = 0;
          *(&buf + 1) = &str_67;
          v62 = *&v90[8];
          *v90 = 0;
          *&v90[8] = &str_67;
          *(v80 + 16) = v62;
          *(v80 + 32) = v58;
          v93 = 0uLL;
          v63 = *&v90[32];
          memset(&v90[16], 0, 32);
          *(v80 + 40) = v63;
          v94 = 0u;
          *(v80 + 56) = v59;
          v64 = *&v90[56];
          *&v90[56] = 0u;
          *(v80 + 64) = v64;
          *&v95[1] = 0u;
          *(v80 + 80) = v60;
          v95[0] = 0;
          v95[3] = 0;
          v65 = *&v90[80];
          *&v90[80] = 0u;
          *(v80 + 88) = v65;
          v96 = 0u;
          *(v80 + 104) = v61;
          v97 = 0;
          v66 = *&v90[104];
          memset(&v90[104], 0, 32);
          v98[0] = 0u;
          v67 = *&v90[120];
          *(v80 + 112) = v66;
          *(v80 + 128) = v67;
          v98[1] = 0u;
          v68 = *&v90[136];
          *&v90[136] = xmmword_1E3058120;
          *(v80 + 144) = v68;
          v98[2] = xmmword_1E3058120;
          *(v80 + 160) = 1;
          v69.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v98 + 1);
          v6 = v81;
          if (*(&v96 + 1))
          {
            if (v97)
            {
              (*(**(&v96 + 1) + 40))(v69.n128_f64[0]);
              v97 = 0;
              *&v98[0] = 0;
            }

            *(&v96 + 1) = 0;
          }

          if (v95[2])
          {
            if (v95[3])
            {
              (*(*v95[2] + 40))(v69);
              v95[3] = 0;
              *&v96 = 0;
            }

            v95[2] = 0;
          }

          if (*(&v94 + 1))
          {
            if (v95[0])
            {
              (*(**(&v94 + 1) + 40))(v69);
              v95[0] = 0;
              v95[1] = 0;
            }

            *(&v94 + 1) = 0;
          }

          re::FixedArray<re::StringID>::deinit(&v93);
          re::StringID::destroyString(&buf);
        }

        else
        {
          v76 = [v82 path];
          v77 = [v76 stringValue];
          re::DynamicString::format("Skeleton %s does not have bind transforms.", &buf, [v77 UTF8String]);
          v78 = buf;
          v79 = v93;
          *v80 = 0;
          *(v80 + 8) = 1004;
          *(v80 + 16) = &re::AnimationErrorCategory(void)::instance;
          *(v80 + 24) = v78;
          *(v80 + 40) = v79;

          v6 = v81;
        }

        if (v84 && v85)
        {
          (*(*v84 + 40))();
        }
      }

      else
      {
        v70 = [v82 path];
        v71 = [v70 stringValue];
        re::DynamicString::format("Skeleton %s does not have rest transforms.", &buf, [v71 UTF8String]);
        v72 = buf;
        v73 = v93;
        *v80 = 0;
        *(v80 + 8) = 1028;
        *(v80 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(v80 + 24) = v72;
        *(v80 + 40) = v73;

        v6 = v81;
      }

      if (v87 && v88)
      {
        (*(*v87 + 40))();
      }
    }

    else
    {
      v41 = buf;
      v42 = v93;
      *a2 = 0;
      *(a2 + 8) = 1003;
      *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a2 + 24) = v41;
      *(a2 + 40) = v42;
    }
  }

  else
  {
    v39 = buf;
    v40 = v93;
    *a2 = 0;
    *(a2 + 8) = 1003;
    *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a2 + 24) = v39;
    *(a2 + 40) = v40;
  }

  v74.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v90[112]);
  if (*&v90[88])
  {
    if (*&v90[96])
    {
      (*(**&v90[88] + 40))(v74.n128_f64[0]);
      *&v90[96] = 0uLL;
    }

    *&v90[88] = 0;
  }

  if (*&v90[64])
  {
    if (*&v90[72])
    {
      (*(**&v90[64] + 40))(v74);
      *&v90[72] = 0;
      *&v90[80] = 0;
    }

    *&v90[64] = 0;
  }

  if (*&v90[40])
  {
    if (*&v90[48])
    {
      (*(**&v90[40] + 40))(v74);
      *&v90[48] = 0uLL;
    }

    *&v90[40] = 0;
  }

  v75 = re::FixedArray<re::StringID>::deinit(&v90[16]);
  if (v90[0])
  {
    if (v90[0])
    {
    }
  }
}

void re::importSkeletalAnimation(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v149 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = [v6 type];
  v8 = *MEMORY[0x1E69DEE78];

  if (v7 != v8)
  {
    v9 = [v6 path];
    v10 = [v9 stringValue];
    v11 = [v10 UTF8String];
    v12 = [v6 type];
    re::DynamicString::format("Node %s has unknown animation type: %s.", &v119, v11, [v12 UTF8String]);
    v13 = v119;
    v14 = v120;
    v15 = v121;
    *a3 = 0;
    *(a3 + 8) = 1018;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v13;
    *(a3 + 40) = v14;
    *(a3 + 48) = v15;

    goto LABEL_47;
  }

  re::TimelineAssetData::TimelineAssetData(&v119, 34);
  v124 = 256;
  v129 = 0;
  v126 = 0u;
  v127 = 0u;
  v125 = 1023969417;
  v128 = 0;
  *&v119 = &unk_1F5CC0838;
  v132 = 0;
  memset(v130, 0, sizeof(v130));
  v131 = 0;
  v133 = 257;
  v134 = 1;
  v16 = [v6 property:@"rotations"];
  v17 = [v6 property:@"translations"];
  v18 = [v6 property:@"scales"];
  v19 = v18;
  if (v16 && v17 && v18)
  {
    if ([v16 isAnimated])
    {
      v106 = [v16 timeSamples];
      v20 = [v106 arraySize];
    }

    else
    {
      v20 = 0;
      v106 = 0;
    }

    if ([v17 isAnimated])
    {
      v105 = [v17 timeSamples];
      v25 = [v105 arraySize];
    }

    else
    {
      v25 = 0;
      v105 = 0;
    }

    if ([v19 isAnimated])
    {
      v104 = [v19 timeSamples];
      v102 = [v104 arraySize];
    }

    else
    {
      v102 = 0;
      v104 = 0;
    }

    v107 = [v6 property:@"joints"];
    if (!v107 || ([v107 data], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
    {
      v34 = [v6 path];
      v35 = [v34 stringValue];
      re::DynamicString::format("Animation node %s do not specify valid joint names.", &v136, [v35 UTF8String]);
      v36 = v136;
      v37 = v137;
      *a3 = 0;
      *(a3 + 8) = 1018;
      *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a3 + 24) = v36;
      *(a3 + 40) = v37;

LABEL_39:
      goto LABEL_40;
    }

    v108 = [v107 stringArray];
    v27 = [v108 count];
    v28 = v27;
    if (v20)
    {
      if (v27 != [v16 arraySizeAtTime:1.79769313e308])
      {
        goto LABEL_37;
      }

      [v106 dataNoCopy];
      v99 = v19;
      v30 = v29 = v17;
      v31 = [v30 bytes];
      v32 = fmin(*v31, 1.79769313e308);
      v33 = fmax(v31[v20 - 1], -1.79769313e308);

      v17 = v29;
      v19 = v99;
    }

    else
    {
      v32 = 1.79769313e308;
      v33 = -1.79769313e308;
    }

    if (v25)
    {
      if (v28 != [v17 arraySizeAtTime:v32])
      {
        goto LABEL_37;
      }

      [v105 dataNoCopy];
      v100 = v19;
      v39 = v38 = v17;
      v40 = [v39 bytes];
      if (v32 > *v40)
      {
        v32 = *v40;
      }

      v41 = &v40[v25];
      if (v33 < *(v41 - 1))
      {
        v33 = *(v41 - 1);
      }

      v17 = v38;
      v19 = v100;
    }

    if (!v102)
    {
      v46 = 0.0;
      if (v25 | v20)
      {
        v46 = v32;
      }

      else
      {
        v33 = 0.0;
      }

LABEL_51:
      v101 = v19;
      v103 = v17;
      v98 = v46;
      if (v46 < v33)
      {
        v46 = v33;
      }

      v96 = v46;
      v52 = a4;
      v125 = LODWORD(v52);
      if (v52 <= 0.0016667 || fabsf(v52 + -0.0016667) < (((fabsf(v52) + 0.0016667) + 1.0) * 0.00001) || (a2 & 1) == 0)
      {
        HIBYTE(v124) = 0;
      }

      v54 = re::DynamicArray<re::StringID>::setCapacity(&v130[1] + 1, v28);
      ++v131;
      if (v28)
      {
        for (i = 0; i != v28; ++i)
        {
          v56 = [v108 objectAtIndexedSubscript:i];
          v57 = [v56 UTF8String];
          *&v136 = 0;
          *(&v136 + 1) = &str_67;
          v58 = re::DynamicArray<re::StringID>::add(&v130[1] + 1, &v136);
          if (v136)
          {
            if (v136)
            {
            }
          }

          *&v136 = 0;
          *(&v136 + 1) = &str_67;
        }
      }

      v59.f64[0] = v98;
      v59.f64[1] = v96;
      *&v126 = vcvt_f32_f64(vmulq_n_f64(v59, a4));
      LODWORD(v53) = vcvtpd_u64_f64(v96 - v98 + 1.0);
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      re::DynamicArray<re::SkeletalPoseAssetData>::resize(&v126 + 1, v53);
      v62 = v98;
      v17 = v103;
      if (*(&v127 + 1))
      {
        v63 = 0;
        while (1)
        {
          v64 = v62 + v63;
          v65 = [v19 arraySizeAtTime:v64];
          v66 = [v16 arraySizeAtTime:v64];
          v67 = [v17 arraySizeAtTime:v64];
          v68 = v65 > v28 || v66 > v28;
          if (v68 || v67 > v28)
          {
            break;
          }

          v70 = [v19 float3Array:v115 maxCount:v28 atTime:v64];
          v71 = [v16 quatfArray:v118 maxCount:v28 atTime:v64];
          v72 = [v17 float3Array:v112 maxCount:v28 atTime:v64];
          v73 = v72;
          if (v70 <= v71)
          {
            v74 = v71;
          }

          else
          {
            v74 = v70;
          }

          if (v74 <= v72)
          {
            v75 = v72;
          }

          else
          {
            v75 = v74;
          }

          if (v70)
          {
            v76 = v70 == v75;
          }

          else
          {
            v76 = 1;
          }

          if (!v76 || (v71 ? (v77 = v71 == v75) : (v77 = 1), !v77 || (v72 ? (v78 = v72 >= v74) : (v78 = 1), !v78)))
          {
            v90 = [v6 path];
            v91 = [v90 stringValue];
            re::DynamicString::format("Sample %ld in node %s has: Total Scales = %ld, Total Rotations = %ld, Total Translations = %ld", &v136, v63, [v91 UTF8String], v70, v71, v73);
            v92 = v136;
            v93 = v137;
            *a3 = 0;
            *(a3 + 8) = 1027;
            *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(a3 + 24) = v92;
            *(a3 + 40) = v93;

            v17 = v103;
            goto LABEL_106;
          }

          LOBYTE(v133) = v70 != 0;
          HIBYTE(v133) = v71 != 0;
          v134 = v72 != 0;
          v79 = *(&v127 + 1);
          if (*(&v127 + 1) <= v63)
          {
            goto LABEL_120;
          }

          v80 = (v129 + 24 * v63);
          v17 = v103;
          v62 = v98;
          if (v28)
          {
            v81 = 0;
            v82 = 0;
            while (1)
            {
              v79 = v114;
              if (v114 <= v82)
              {
                break;
              }

              v79 = v117;
              if (v117 <= v82)
              {
                goto LABEL_116;
              }

              v79 = v111;
              if (v111 <= v82)
              {
                goto LABEL_117;
              }

              v79 = *(&v127 + 1);
              if (*(&v127 + 1) <= v63)
              {
                goto LABEL_118;
              }

              v83 = v129 + 24 * v63;
              v79 = *(v83 + 8);
              if (v79 <= v82)
              {
                goto LABEL_119;
              }

              v84 = *(v115 + 16 * v82 + 8);
              v85 = *(v118 + 16 * v82);
              v86 = *(v118 + 16 * v82 + 8);
              v87 = *(v112 + 16 * v82);
              v88 = *(v112 + 16 * v82 + 8);
              v89 = (*(v83 + 16) + v81);
              *v89 = *(v115 + 16 * v82);
              v89[1] = v84;
              v89[2] = v85;
              v89[3] = v86;
              v89[4] = v87;
              v89[5] = v88;
              ++v82;
              v81 += 48;
              if (v28 == v82)
              {
                goto LABEL_102;
              }
            }

            v135 = 0;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v136 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v141 = 136315906;
            v142 = "operator[]";
            v143 = 1024;
            v144 = 468;
            v145 = 2048;
            v146 = v82;
            v147 = 2048;
            v148 = v79;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_116:
            v135 = 0;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v136 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v141 = 136315906;
            v142 = "operator[]";
            v143 = 1024;
            v144 = 468;
            v145 = 2048;
            v146 = v82;
            v147 = 2048;
            v148 = v79;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_117:
            v135 = 0;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v136 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v141 = 136315906;
            v142 = "operator[]";
            v143 = 1024;
            v144 = 468;
            v145 = 2048;
            v146 = v82;
            v147 = 2048;
            v148 = v79;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_118:
            v135 = 0;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v136 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v141 = 136315906;
            v142 = "operator[]";
            v143 = 1024;
            v144 = 789;
            v145 = 2048;
            v146 = v63;
            v147 = 2048;
            v148 = v79;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_119:
            v135 = 0;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v136 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v141 = 136315906;
            v142 = "operator[]";
            v143 = 1024;
            v144 = 468;
            v145 = 2048;
            v146 = v82;
            v147 = 2048;
            v148 = v79;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_120:
            v135 = 0;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v136 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v141 = 136315906;
            v142 = "operator[]";
            v143 = 1024;
            v144 = 789;
            v145 = 2048;
            v146 = v63;
            v147 = 2048;
            v148 = v79;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_102:
          if (++v63 >= *(&v127 + 1))
          {
            goto LABEL_103;
          }
        }

        v94 = v136;
        v95 = v137;
        *a3 = 0;
        *(a3 + 8) = 1027;
        *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a3 + 24) = v94;
        *(a3 + 40) = v95;
      }

      else
      {
LABEL_103:
        re::SkeletalPoseSampledAnimationAssetData::SkeletalPoseSampledAnimationAssetData(&v136, &v119);
        *a3 = 1;
        re::SkeletalPoseSampledAnimationAssetData::SkeletalPoseSampledAnimationAssetData(a3 + 8, &v136);
        re::types::Ok<re::SkeletalPoseSampledAnimationAssetData>::~Ok(&v136);
      }

LABEL_106:
      v19 = v101;
      if (v110 && v111)
      {
        (*(*v110 + 40))();
      }

      if (v113 && v114)
      {
        (*(*v113 + 40))();
      }

      if (v116 && v117)
      {
        (*(*v116 + 40))();
      }

      goto LABEL_38;
    }

    if (v28 == [v19 arraySizeAtTime:v32])
    {
      v42 = [v104 dataNoCopy];
      v43 = [v42 bytes];
      v44 = *v43;
      if (v32 <= *v43)
      {
        v44 = v32;
      }

      v97 = v44;
      v45 = &v43[v102];
      if (v33 < *(v45 - 1))
      {
        v33 = *(v45 - 1);
      }

      v46 = v97;
      goto LABEL_51;
    }

LABEL_37:
    v47 = [v6 path];
    v48 = [v47 stringValue];
    re::DynamicString::format("Processing animation %s", &v136, [v48 UTF8String]);
    v49 = v136;
    v50 = v137;
    *a3 = 0;
    *(a3 + 8) = 1018;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v49;
    *(a3 + 40) = v50;

LABEL_38:
    goto LABEL_39;
  }

  v21 = [v6 path];
  v22 = [v21 stringValue];
  re::DynamicString::format("Processing animation %s", &v136, [v22 UTF8String]);
  v23 = v136;
  v24 = v137;
  *a3 = 0;
  *(a3 + 8) = 1018;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v23;
  *(a3 + 40) = v24;

LABEL_40:
  re::DynamicArray<re::StringID>::deinit(&v130[1] + 8);
  re::AssetHandle::~AssetHandle(v130);
  *&v119 = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v126 + 8);
  *&v119 = &unk_1F5CC3608;
  v51 = v122;
  if (v122)
  {
    if (BYTE8(v122))
    {
      v51 = (*(*v122 + 40))();
    }

    v123 = 0u;
    v122 = 0u;
  }

  if (v121)
  {
    if (v121)
    {
    }
  }

LABEL_47:
}

void re::importSkinningAndSkeletalAnimations(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, unsigned __int8 *a6@<X8>)
{
  v232 = *MEMORY[0x1E69E9840];
  v187 = a1;
  v10 = *(a2 + 16);
  *(a2 + 16) = 0;
  if (v10)
  {
    v11 = 0;
    v12 = *(a2 + 32);
    v13 = 168 * v10;
    do
    {
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v12 + v11 + 120));
      re::FixedArray<CoreIKTransform>::deinit((v12 + v11 + 96));
      re::FixedArray<re::StringID>::deinit((v12 + v11 + 72));
      re::FixedArray<CoreIKTransform>::deinit((v12 + v11 + 48));
      re::FixedArray<CoreIKTransform>::deinit((v12 + v11 + 24));
      re::StringID::destroyString((v12 + v11));
      v11 += 168;
    }

    while (v13 != v11);
  }

  ++*(a2 + 24);
  v14 = *(a3 + 16);
  *(a3 + 16) = 0;
  if (v14)
  {
    v15 = 0;
    v16 = *(a3 + 32);
    v17 = 224 * v14;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 200));
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 176));
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 152));
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 128));
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 104));
      re::DynamicString::deinit((v16 + v15 + 72));
      v15 += 224;
    }

    while (v17 != v15);
  }

  ++*(a3 + 24);
  v18 = *(a4 + 16);
  *(a4 + 16) = 0;
  if (v18)
  {
    v19 = *(a4 + 32);
    v20 = &v19[15 * v18];
    v21 = v19;
    do
    {
      *v21 = &unk_1F5CAEFA8;
      re::FixedArray<re::SkeletalPose>::deinit(v21 + 11);
      *v21 = &unk_1F5CAD3A8;
      re::DynamicString::deinit((v21 + 5));
      re::StringID::destroyString((v21 + 3));
      v19 += 15;
      v21 += 15;
    }

    while (v21 != v20);
  }

  v182 = a4;
  ++*(a4 + 24);
  re::DynamicArray<unsigned long>::deinit((a5 + 5));
  re::DynamicArray<re::DynamicString>::deinit(a5);
  re::DynamicArray<re::DynamicString>::deinit((a5 + 10));
  re::DynamicArray<re::DynamicString>::deinit((a5 + 15));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a5 + 20);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a5 + 26);
  re::DynamicArray<unsigned long>::deinit((a5 + 38));
  [v187 frameInterval];
  a5[43] = v22;
  v23 = [v187 count];
  v24 = v187;
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v26 = [v187 objectAtIndexedSubscript:i];
      skinnedMeshTraverseNode(a6, v26, a2, a3, a5);
      v27 = *a6;

      v24 = v187;
      if (v27 != 1)
      {
        goto LABEL_121;
      }
    }
  }

  [v24 frameInterval];
  if (v28 <= 0.0 || ([v187 animations], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count"), v29, !v30))
  {
LABEL_119:
    *a6 = 1;
    goto LABEL_120;
  }

  v31 = 0;
  v177 = a6;
  while (1)
  {
    v32 = [v187 animations];
    v33 = [v32 objects];
    v34 = [v33 objectAtIndexedSubscript:v31];
    if (!v34)
    {
      v163 = v212;
      v164 = v213;
      *a6 = 0;
      *(a6 + 1) = 1012;
      *(a6 + 2) = &re::AnimationErrorCategory(void)::instance;
      *(a6 + 24) = v163;
      *(a6 + 40) = v164;
      goto LABEL_139;
    }

    v183 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_117;
    }

    v180 = v33;
    v181 = v32;
    v179 = v34;
    v35 = v34;
    v36 = [v35 rotations];
    v37 = [v36 keyTimes];
    v38 = [v37 count];

    v39 = [v35 translations];
    v40 = [v39 keyTimes];
    v41 = [v40 count];

    v42 = [v35 scales];
    v43 = [v42 keyTimes];
    v44 = [v43 count];

    if (v38 != v41 || v41 != v44)
    {
      goto LABEL_132;
    }

    v201[0] = v35;
    v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>((a5 + 26), v201, v45 ^ (v45 >> 31), &v212);
    if (HIDWORD(v212) == 0x7FFFFFFF || *(a5[28] + 32 * HIDWORD(v212) + 16) == -1)
    {
      v165 = [v35 name];
      v166 = v165;
      if (v165)
      {
        v167 = [v165 UTF8String];
      }

      else
      {
        v167 = "(unnamed)";
      }

      v170 = v177;
      v33 = v180;
      v32 = v181;
      v34 = v179;
      re::DynamicString::format("Skeleton not found for node %s", &v212, v167);
      v171 = v212;
      v173 = *(&v213 + 1);
      v172 = v213;
      *v177 = 0;
      v174 = 1026;
      goto LABEL_138;
    }

    v178 = *(a5[28] + 32 * HIDWORD(v212) + 16);
    v46 = [v35 jointPaths];
    v47 = [v46 count];

    v48 = [v35 rotations];
    [v48 minimumTime];
    v50 = v49;

    v51 = [v35 rotations];
    [v51 maximumTime];
    v53 = v52;

    v54 = [v35 translations];
    [v54 minimumTime];
    v56 = v55;
    if (v50 > v56)
    {
      v50 = v56;
    }

    v57 = [v35 scales];
    [v57 minimumTime];
    v59 = v58;
    if (v50 > v59)
    {
      v50 = v59;
    }

    v60 = [v35 translations];
    [v60 maximumTime];
    v62 = v61;
    if (v53 < v62)
    {
      v53 = v62;
    }

    v63 = [v35 scales];
    [v63 maximumTime];
    v65 = v64;
    if (v53 < v65)
    {
      v53 = v65;
    }

    v66 = re::Timeline::Timeline(v201, 34);
    v205 = 256;
    v207 = 0u;
    v208 = 0u;
    v201[0] = &unk_1F5CAF198;
    v209 = 257;
    v210 = 1;
    v67 = *(a5 + 43);
    v206 = v67;
    v198 = 0;
    v199 = 0;
    v200 = 0;
    if (v47)
    {
      v68 = 0;
      v69 = 0;
      while (1)
      {
        v70 = [v35 jointPaths];
        v71 = [v70 objectAtIndexedSubscript:v69];
        v72 = [v71 UTF8String];
        v194 = 0;
        v195 = &str_67;
        j = v199;
        if (v199 <= v69)
        {
          break;
        }

        v74 = re::StringID::operator=((v200 + v68), &v194);
        if (v194)
        {
          if (v194)
          {
          }
        }

        v194 = 0;
        v195 = &str_67;

        ++v69;
        v68 += 16;
        if (v47 == v69)
        {
          goto LABEL_38;
        }
      }

      v191 = 0;
      v132 = &v212;
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v212 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v224 = 136315906;
      v225 = "operator[]";
      v226 = 1024;
      v227 = 468;
      v228 = 2048;
      v229 = v69;
      v230 = 2048;
      v231 = j;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_141:
      v211 = 0;
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v212 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v224 = 136315906;
      v225 = "operator[]";
      v226 = 1024;
      v227 = 468;
      v228 = 2048;
      v229 = j;
      v230 = 2048;
      v231 = v132;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_142:
      v211 = 0;
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v212 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v224 = 136315906;
      v225 = "operator[]";
      v226 = 1024;
      v227 = 468;
      v228 = 2048;
      v229 = j;
      v230 = 2048;
      v231 = v132;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_143:
      v211 = 0;
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v212 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v224 = 136315906;
      v225 = "operator[]";
      v226 = 1024;
      v227 = 468;
      v228 = 2048;
      v229 = j;
      v230 = 2048;
      v231 = v132;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_144:
      re::internal::assertLog(4, v130, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 454);
      _os_crash();
      __break(1u);
LABEL_145:
      v211 = 0;
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v212 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v224 = 136315906;
      v225 = "operator[]";
      v226 = 1024;
      v227 = 468;
      v228 = 2048;
      v229 = j;
      v230 = 2048;
      v231 = v132;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_38:
    v223 = 0;
    *&v212 = 0;
    *(&v212 + 1) = &str_67;
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    memset(v221, 0, sizeof(v221));
    v222 = 0x7FFFFFFF;
    re::make::shared::object<re::SkeletalPoseJointDefinition,re::FixedArray<re::StringID>,re::Skeleton>(&v198, &v212, &v197);
    re::Skeleton::~Skeleton(&v212);
    v75 = fmaxf(0.0 - v50, 0.0);
    *&v207 = v50 + v75;
    *(&v207 + 1) = v75 + v53;
    v76 = *(a5 + 43);
    v77 = ((v75 + v53) - (v50 + v75)) / v76;
    v78 = vcvtmd_u64_f64(v77);
    v79 = v77 - floor(v77);
    v80 = re::FixedArray<re::SkeletalPose>::deinit(&v207 + 1);
    v185 = v78;
    if (v79 <= v76 * 0.01)
    {
      v81 = v78 + 1;
    }

    else
    {
      v81 = v78 + 2;
    }

    if (v208)
    {
      v83 = *(&v208 + 1);
      v84 = 88 * v208;
      do
      {
        re::SkeletalPose::init(v83, &v197);
        v83 += 11;
        v84 -= 88;
      }

      while (v84);
    }

    v85 = [v35 rotations];
    v86 = [v85 elementCount];
    v195 = 0;
    v196 = 0;
    v194 = 0;

    v88 = [v35 scales];
    v89 = [v88 elementCount];
    v192 = 0;
    v193 = 0;
    v191 = 0;

    v91 = [v35 translations];
    v92 = [v91 elementCount];
    v189 = 0;
    v190 = 0;
    v188 = 0;

    v184 = v78 + 1;
    if (v78 != -1)
    {
      break;
    }

LABEL_64:
    if (v79 > v76 * 0.01)
    {
      v121 = [v35 scales];
      v122 = v193;
      v123 = [v35 scales];
      [v121 getFloat3Array:v122 maxCount:objc_msgSend(v123 atTime:{"elementCount"), v53}];

      v124 = [v35 rotations];
      v125 = v196;
      v126 = [v35 rotations];
      [v124 getFloatQuaternionArray:v125 maxCount:objc_msgSend(v126 atTime:{"elementCount"), v53}];

      v127 = [v35 translations];
      v128 = v190;
      v129 = [v35 translations];
      [v127 getFloat3Array:v128 maxCount:objc_msgSend(v129 atTime:{"elementCount"), v53}];

      if (v47)
      {
        v131 = 0;
        for (j = 0; j != v47; ++j)
        {
          v132 = v192;
          if (v192 <= j)
          {
            goto LABEL_141;
          }

          v132 = v195;
          if (v195 <= j)
          {
            goto LABEL_142;
          }

          v132 = v189;
          if (v189 <= j)
          {
            goto LABEL_143;
          }

          if (!v208)
          {
            goto LABEL_144;
          }

          v133 = *(&v208 + 1) + 88 * v208;
          v132 = *(v133 - 64);
          if (v132 <= j)
          {
            goto LABEL_145;
          }

          v134 = *(v193 + 16 * j + 8);
          v135 = *(v196 + 16 * j);
          v136 = *(v196 + 16 * j + 8);
          v137 = *(v190 + 16 * j);
          v138 = *(v190 + 16 * j + 8);
          v139 = (*(v133 - 56) + v131);
          *v139 = *(v193 + 16 * j);
          v139[1] = v134;
          v139[2] = v135;
          v139[3] = v136;
          v139[4] = v137;
          v139[5] = v138;
          v131 += 48;
        }
      }
    }

    v32 = v181;
    v140 = v182;
    v141 = *(v182 + 8);
    v142 = *(v182 + 16);
    if (v142 >= v141)
    {
      v143 = v142 + 1;
      if (v141 < v142 + 1)
      {
        if (*v182)
        {
          v144 = 2 * v141;
          v109 = v141 == 0;
          v145 = 8;
          if (!v109)
          {
            v145 = v144;
          }

          if (v145 <= v143)
          {
            v146 = v143;
          }

          else
          {
            v146 = v145;
          }

          re::DynamicArray<re::SkeletalPoseSampledAnimation>::setCapacity(v182, v146);
        }

        else
        {
          re::DynamicArray<re::SkeletalPoseSampledAnimation>::setCapacity(v182, v143);
          ++*(v182 + 24);
        }
      }

      v140 = v182;
      v142 = *(v182 + 16);
    }

    v152 = re::SampledAnimation<re::SkeletalPose>::SampledAnimation(*(v140 + 32) + 120 * v142, v201);
    *v153 = &unk_1F5CAF198;
    v154 = v209;
    *(v153 + 114) = v210;
    *(v153 + 112) = v154;
    ++*(v140 + 16);
    ++*(v140 + 24);
    v155 = [v35 name];
    v156 = v155;
    if (v155)
    {
      v155 = [v155 UTF8String];
      v157 = v155;
    }

    else
    {
      v157 = "(unnamed)";
    }

    v158 = re::DynamicArray<re::DynamicString>::add((a5 + 15), &v212);
    v34 = v179;
    if (v212)
    {
      if (BYTE8(v212))
      {
        (*(*v212 + 40))(v158);
      }

      v212 = 0u;
      v213 = 0u;
    }

    *&v212 = v178;
    re::DynamicArray<unsigned long>::add(a5 + 5, &v212);
    v96 = 0;
LABEL_96:
    v33 = v180;
    if (v188 && v189)
    {
      (*(*v188 + 40))();
    }

    a6 = v177;
    if (v191 && v192)
    {
      (*(*v191 + 40))();
    }

    if (v194 && v195)
    {
      (*(*v194 + 40))();
    }

    if (v197)
    {
    }

    re::FixedArray<re::StringID>::deinit(&v198);
    v201[0] = &unk_1F5CAEFA8;
    re::FixedArray<re::SkeletalPose>::deinit(&v207 + 1);
    v201[0] = &unk_1F5CAD3A8;
    v159 = v203;
    if (v203)
    {
      if (BYTE8(v203))
      {
        v159 = (*(*v203 + 40))();
      }

      v204 = 0u;
      v203 = 0u;
    }

    if (v202)
    {
      if (v202)
      {
      }
    }

    if (v96)
    {
      v160 = *v177;

      v24 = v187;
      if ((v160 & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_118;
    }

LABEL_117:
    *a6 = 1;

    v24 = v187;
LABEL_118:
    v31 = v183 + 1;
    v161 = [v24 animations];
    v162 = [v161 count];

    if (v183 + 1 >= v162)
    {
      goto LABEL_119;
    }
  }

  v94 = 0;
  v95 = v50;
  v96 = 1;
  while (1)
  {
    v97 = [v35 scales];
    v98 = v193;
    v99 = [v35 scales];
    v100 = [v97 getFloat3Array:v98 maxCount:objc_msgSend(v99 atTime:{"elementCount"), v95 + v94 * v76}];

    v101 = [v35 rotations];
    v102 = v196;
    v103 = [v35 rotations];
    v104 = [v101 getFloatQuaternionArray:v102 maxCount:objc_msgSend(v103 atTime:{"elementCount"), v95 + v94 * v76}];

    v105 = [v35 translations];
    v106 = v190;
    v107 = [v35 translations];
    v108 = [v105 getFloat3Array:v106 maxCount:objc_msgSend(v107 atTime:{"elementCount"), v95 + v94 * v76}];

    if (v100)
    {
      v109 = v100 == v104;
    }

    else
    {
      v109 = 0;
    }

    if (!v109 || v104 != v108)
    {
      v147 = [v35 name];
      v148 = v147;
      v32 = v181;
      if (v147)
      {
        v149 = [v147 UTF8String];
      }

      else
      {
        v149 = "(unnamed)";
      }

      re::DynamicString::format("Sample %ld in node %s has: Total Scales = %ld, Total Rotations = %ld, Total Translations = %ld", &v212, v94, v149, v100, v104, v108);
      v150 = v212;
      v151 = v213;
      *v177 = 0;
      *(v177 + 1) = 1027;
      *(v177 + 2) = &re::AnimationErrorCategory(void)::instance;
      *(v177 + 24) = v150;
      *(v177 + 40) = v151;

      v34 = v179;
      goto LABEL_96;
    }

    if (v47)
    {
      break;
    }

LABEL_62:
    v96 = v94 + 1 < v184;
    v109 = v94++ == v185;
    if (v109)
    {
      goto LABEL_64;
    }
  }

  v111 = 0;
  v112 = 0;
  while (1)
  {
    v113 = v192;
    if (v192 <= v112)
    {
      break;
    }

    v113 = v195;
    if (v195 <= v112)
    {
      goto LABEL_128;
    }

    v113 = v189;
    if (v189 <= v112)
    {
      goto LABEL_129;
    }

    v113 = v208;
    if (v208 <= v94)
    {
      goto LABEL_130;
    }

    v114 = *(&v208 + 1) + 88 * v94;
    v113 = *(v114 + 24);
    if (v113 <= v112)
    {
      goto LABEL_131;
    }

    v115 = *(v193 + 16 * v112 + 8);
    v116 = *(v196 + 16 * v112);
    v117 = *(v196 + 16 * v112 + 8);
    v118 = *(v190 + 16 * v112);
    v119 = *(v190 + 16 * v112 + 8);
    v120 = (*(v114 + 32) + v111);
    *v120 = *(v193 + 16 * v112);
    v120[1] = v115;
    v120[2] = v116;
    v120[3] = v117;
    v120[4] = v118;
    v120[5] = v119;
    ++v112;
    v111 += 48;
    if (v47 == v112)
    {
      goto LABEL_62;
    }
  }

  v211 = 0;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v212 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v224 = 136315906;
  v225 = "operator[]";
  v226 = 1024;
  v227 = 468;
  v228 = 2048;
  v229 = v112;
  v230 = 2048;
  v231 = v113;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_128:
  v211 = 0;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v212 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v224 = 136315906;
  v225 = "operator[]";
  v226 = 1024;
  v227 = 468;
  v228 = 2048;
  v229 = v112;
  v230 = 2048;
  v231 = v113;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_129:
  v211 = 0;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v212 = 0u;
  v94 = MEMORY[0x1E69E9C10];
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v224 = 136315906;
  v225 = "operator[]";
  v226 = 1024;
  v227 = 468;
  v228 = 2048;
  v229 = v112;
  v230 = 2048;
  v231 = v113;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_130:
  v211 = 0;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v212 = 0u;
  v112 = MEMORY[0x1E69E9C10];
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v224 = 136315906;
  v225 = "operator[]";
  v226 = 1024;
  v227 = 468;
  v228 = 2048;
  v229 = v94;
  v230 = 2048;
  v231 = v113;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_131:
  v211 = 0;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v212 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v224 = 136315906;
  v225 = "operator[]";
  v226 = 1024;
  v227 = 468;
  v228 = 2048;
  v229 = v112;
  v230 = 2048;
  v231 = v113;
  LODWORD(v176) = 38;
  v175 = &v224;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_132:
  v168 = [v35 name];
  v166 = v168;
  if (v168)
  {
    v169 = [v168 UTF8String];
  }

  else
  {
    v169 = "(unnamed)";
  }

  v170 = v177;
  v33 = v180;
  v32 = v181;
  v34 = v179;
  re::DynamicString::format("Processing node %s", &v212, v169);
  v171 = v212;
  v173 = *(&v213 + 1);
  v172 = v213;
  *v177 = 0;
  v174 = 1025;
LABEL_138:
  *(v170 + 1) = v174;
  *(v170 + 2) = &re::AnimationErrorCategory(void)::instance;
  *(v170 + 24) = v171;
  *(v170 + 5) = v172;
  *(v170 + 6) = v173;

LABEL_139:
LABEL_120:
  v24 = v187;
LABEL_121:
}

void skinnedMeshTraverseNode(char *a1, void *a2, uint64_t a3, uint64_t a4, _anonymous_namespace_ *a5)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      processForMeshData(v21, v9, a3, a4, a5);
      if (v21[0] == 1)
      {
        v10 = [v9 name];
        v11 = v10;
        if (v10)
        {
          v10 = [v10 UTF8String];
          v12 = v10;
        }

        else
        {
          v12 = "(unnamed)";
        }

        v13 = re::DynamicArray<re::DynamicString>::add(a5, &v24);
        if (v24)
        {
          if (BYTE8(v24))
          {
            (*(*v24 + 40))(v13);
          }

          v24 = 0u;
          v25 = 0u;
        }
      }
    }

    else
    {
      v21[0] = 1;
    }
  }

  else
  {
    v21[0] = 0;
    *&v22 = 1024;
    *(&v22 + 1) = &re::AnimationErrorCategory(void)::instance;
    v23[0] = v24;
    v23[1] = v25;
  }

  if (v21[0] != 1)
  {
    *a1 = v21[0];
    *(a1 + 8) = v22;
    *(a1 + 3) = *&v23[0];
    *(a1 + 6) = *(&v23[1] + 1);
    *(a1 + 2) = *(v23 + 8);
    memset(v23, 0, sizeof(v23));
LABEL_24:
    if (*&v23[0] && (BYTE8(v23[0]) & 1) != 0)
    {
      (*(**&v23[0] + 40))();
    }

    goto LABEL_27;
  }

  v14 = [v9 children];
  v15 = [v14 count];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    while (1)
    {
      v18 = [v14 objects];
      v19 = [v18 objectAtIndexedSubscript:v17];

      skinnedMeshTraverseNode(a1, v19, a3, a4, a5);
      LODWORD(v18) = *a1;

      if (v18 != 1)
      {
        break;
      }

      if (v16 == ++v17)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v20 = v21[0];
    *a1 = v21[0];
    if ((v20 & 1) == 0)
    {
      *(a1 + 8) = v22;
      *(a1 + 3) = *&v23[0];
      *(a1 + 6) = *(&v23[1] + 1);
      *(a1 + 2) = *(v23 + 8);
      memset(v23, 0, sizeof(v23));
    }
  }

  if ((v21[0] & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
}

uint64_t re::isSkinnedMesh(re *this, const MDLMesh *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v4 = [(re *)v2 components:0];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void re::ModelIOSkinningData::~ModelIOSkinningData(re::ModelIOSkinningData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 25);
  re::FixedArray<CoreIKTransform>::deinit(this + 22);
  re::FixedArray<CoreIKTransform>::deinit(this + 19);
  re::FixedArray<CoreIKTransform>::deinit(this + 16);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::DynamicString::deinit((this + 72));
}

void *re::types::Ok<re::SkeletalPoseSampledAnimationAssetData>::~Ok(void *a1)
{
  re::DynamicArray<re::StringID>::deinit((a1 + 19));
  re::AssetHandle::~AssetHandle((a1 + 16));
  *a1 = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void *re::DynamicArray<re::ModelIOSkeleton>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ModelIOSkeleton>::setCapacity(v5, a2);
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
        v10 = &v8[21 * v9];
        v22 = v7;
        do
        {
          v11 = *v8;
          *v7 = *v7 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v7 = *v8 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LODWORD(v11) = *(v8 + 4);
          v7[4] = 0;
          v7[5] = 0;
          v7[3] = 0;
          v7[3] = v8[3];
          v8[3] = 0;
          v12 = v7[5];
          v13 = v8[5];
          v7[4] = v8[4];
          v7[5] = v13;
          v8[4] = 0;
          v8[5] = v12;
          v7[7] = 0;
          v7[8] = 0;
          v7[6] = 0;
          v7[6] = v8[6];
          v8[6] = 0;
          v14 = v7[8];
          v15 = v8[8];
          v7[7] = v8[7];
          v7[8] = v15;
          v8[7] = 0;
          v8[8] = v14;
          v7[9] = 0;
          v7[10] = 0;
          v7[11] = 0;
          v16 = v8[9];
          *(v7 + 4) = v11;
          v7[9] = v16;
          v8[9] = 0;
          v17 = v7[11];
          v18 = v8[11];
          v7[10] = v8[10];
          v7[11] = v18;
          v8[10] = 0;
          v8[11] = v17;
          v7[12] = 0;
          v7[13] = 0;
          v7[14] = 0;
          v7[12] = v8[12];
          v8[12] = 0;
          v19 = v7[14];
          v20 = v8[14];
          v7[13] = v8[13];
          v7[14] = v20;
          v8[13] = 0;
          v8[14] = v19;
          *(v7 + 15) = 0u;
          v21 = v7 + 15;
          *(v21 + 8) = 0;
          *(v21 + 1) = 0u;
          *(v21 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v21, v8 + 15);
          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v8 + 15);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 12);
          re::FixedArray<re::StringID>::deinit(v8 + 9);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 6);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 3);
          re::StringID::destroyString(v8);
          v8 += 21;
          v7 = v21 + 6;
        }

        while (v8 != v10);
        v8 = v5[4];
        v7 = v22;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::FixedArray<simd_double4x4>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 57)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 128, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = a3 << 7;
  v6 = (*(*a2 + 32))(a2, a3 << 7, 16);
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
    bzero(v6, v5 - 128);
    v8 = (v8 + v5 - 128);
  }

  v8[6] = 0u;
  v8[7] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
}

void *re::DynamicArray<re::ModelIOSkinningData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ModelIOSkinningData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
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
        v10 = &v8[28 * v9];
        v34 = v7;
        do
        {
          *v7 = *v8;
          v11 = *(v8 + 1);
          v12 = *(v8 + 2);
          v13 = *(v8 + 3);
          *(v7 + 16) = *(v8 + 16);
          *(v7 + 2) = v12;
          *(v7 + 3) = v13;
          *(v7 + 1) = v11;
          *(v7 + 9) = 0u;
          *(v7 + 11) = 0u;
          v14 = (v8 + 9);
          v7[9] = v8[9];
          v8[9] = 0;
          v7[12] = v8[12];
          v8[12] = 0;
          v16 = v7[10];
          v15 = v7[11];
          v17 = v8[11];
          v7[10] = v8[10];
          v7[11] = v17;
          v8[10] = v16;
          v8[11] = v15;
          v7[13] = 0;
          v7[14] = 0;
          v7[15] = 0;
          v18 = v8 + 13;
          v7[13] = v8[13];
          v8[13] = 0;
          v19 = v7[15];
          v20 = v8[15];
          v7[14] = v8[14];
          v7[15] = v20;
          v8[14] = 0;
          v8[15] = v19;
          v7[16] = 0;
          v7[17] = 0;
          v7[18] = 0;
          v21 = v8 + 16;
          v7[16] = v8[16];
          v8[16] = 0;
          v22 = v7[18];
          v23 = v8[18];
          v7[17] = v8[17];
          v7[18] = v23;
          v8[17] = 0;
          v8[18] = v22;
          v7[19] = 0;
          v7[20] = 0;
          v7[21] = 0;
          v24 = v8 + 19;
          v7[19] = v8[19];
          v8[19] = 0;
          v25 = v7[21];
          v26 = v8[21];
          v7[20] = v8[20];
          v7[21] = v26;
          v8[20] = 0;
          v8[21] = v25;
          v7[22] = 0;
          v7[23] = 0;
          v7[24] = 0;
          v27 = v8 + 22;
          v7[22] = v8[22];
          v8[22] = 0;
          v28 = v7[24];
          v29 = v8[24];
          v7[23] = v8[23];
          v7[24] = v29;
          v8[23] = 0;
          v8[24] = v28;
          v7[25] = 0;
          v7[26] = 0;
          v7[27] = 0;
          v31 = v8[25];
          v30 = v8 + 25;
          v7[25] = v31;
          *v30 = 0;
          v32 = v7[27];
          v33 = v30[2];
          v7[26] = v30[1];
          v7[27] = v33;
          v30[1] = 0;
          v30[2] = v32;
          re::FixedArray<CoreIKTransform>::deinit(v30);
          re::FixedArray<CoreIKTransform>::deinit(v27);
          re::FixedArray<CoreIKTransform>::deinit(v24);
          re::FixedArray<CoreIKTransform>::deinit(v21);
          re::FixedArray<CoreIKTransform>::deinit(v18);
          re::DynamicString::deinit(v14);
          v7 += 28;
          v8 = v30 + 3;
        }

        while (v8 != v10);
        v8 = v5[4];
        v7 = v34;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::SkeletalPoseSampledAnimationAssetData::SkeletalPoseSampledAnimationAssetData(uint64_t a1, uint64_t a2)
{
  re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(a1, a2);
  *v3 = &unk_1F5CC0838;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  v4 = *(v3 + 128);
  *(v3 + 128) = 0;
  *(v3 + 128) = *(a2 + 128);
  *(a2 + 128) = v4;
  v5 = *(v3 + 144);
  *(v3 + 144) = *(a2 + 144);
  *(a2 + 144) = v5;
  *(v3 + 184) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 152) = 0;
  *(v3 + 176) = 0;
  v6 = *(a2 + 160);
  *(v3 + 152) = *(a2 + 152);
  *(v3 + 160) = v6;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v7 = *(v3 + 168);
  *(v3 + 168) = *(a2 + 168);
  *(a2 + 168) = v7;
  v8 = *(v3 + 184);
  *(v3 + 184) = *(a2 + 184);
  *(a2 + 184) = v8;
  ++*(a2 + 176);
  ++*(v3 + 176);
  LOWORD(v8) = *(a2 + 192);
  *(v3 + 194) = *(a2 + 194);
  *(v3 + 192) = v8;
}

void *re::DynamicArray<re::SkeletalPoseSampledAnimation>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SkeletalPoseSampledAnimation>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x78uLL))
        {
          v2 = 120 * a2;
          result = (*(*result + 32))(result, 120 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 120, a2);
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
        v10 = 0;
        v11 = 120 * v9;
        do
        {
          v12 = (v8 + v10);
          re::SampledAnimation<re::SkeletalPose>::SampledAnimation(&v7[v10 / 8], v8 + v10);
          *v13 = &unk_1F5CAF198;
          v14 = *(v8 + v10 + 112);
          *(v13 + 114) = *(v8 + v10 + 114);
          *(v13 + 112) = v14;
          *v12 = &unk_1F5CAEFA8;
          re::FixedArray<re::SkeletalPose>::deinit((v8 + v10 + 88));
          *v12 = &unk_1F5CAD3A8;
          re::DynamicString::deinit((v8 + v10 + 40));
          re::StringID::destroyString((v8 + v10 + 24));
          v10 += 120;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::internal::DataPayload::DataPayload(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_1F5D0BCD8;
  *(a1 + 32) = a7;
  *(a1 + 33) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  if (a8)
  {
    v17 = a8;
  }

  else
  {
    v17 = a2;
  }

  *(a1 + 56) = a6;
  *(a1 + 64) = v17;
  *(a1 + 96) = 0;
  if (a9)
  {
    *(a1 + 72) = &unk_1F5D0BD20;
    *(a1 + 80) = a9;
    *(a1 + 96) = a1 + 72;
  }

  return a1;
}

void re::internal::DataPayload::~DataPayload(re::internal::DataPayload *this)
{
  v8[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5D0BCD8;
  v2 = *(this + 8);
  v3 = *(this + 12);
  v6[0] = v2;
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v4 = this + 72;
  (*(*v3 + 48))(v3, v6);
  v6[0] = &unk_1F5D0BD20;
  v6[1] = re::internal::DataPayload::defaultFreeFunction;
  v7 = v6;
  if ((this + 72) != v6)
  {
    v5 = *(this + 12);
    if (v5 == v4)
    {
      v7 = 0;
      v8[0] = &unk_1F5D0BD20;
      v8[1] = re::internal::DataPayload::defaultFreeFunction;
      (*(*v5 + 24))(v5, v6);
      (*(**(this + 12) + 32))(*(this + 12));
      *(this + 12) = 0;
      v7 = v6;
      (*(v8[0] + 24))(v8, this + 72);
      (*(v8[0] + 32))(v8);
    }

    else
    {
      *(this + 9) = &unk_1F5D0BD20;
      *(this + 10) = re::internal::DataPayload::defaultFreeFunction;
      v7 = v5;
    }

    *(this + 12) = v4;
  }

  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:nn200100](v6);
  *(this + 3) = 0;
  *(this + 8) = 0;
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:nn200100](this + 72);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::internal::DataPayload::~DataPayload(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::GeomModelDescriptor::makeCFDataPayload(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  CFRetain(*a2);
  v6 = *(a2 + 8);
  if (v6 > 6)
  {
    if (*(a2 + 8) > 9u)
    {
      if (v6 != 10)
      {
        if (v6 == 11)
        {
          goto LABEL_16;
        }

        result = 0;
        if (v6 == 255)
        {
LABEL_20:
          *a1 = result;
          return result;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (v6 == 7 || v6 == 8)
      {
        v7 = 7;
        goto LABEL_19;
      }

      if (v6 != 9)
      {
        goto LABEL_21;
      }
    }

    v7 = 15;
    goto LABEL_19;
  }

  if (*(a2 + 8) <= 3u)
  {
    v7 = v6 >= 2;
LABEL_19:
    BytePtr = CFDataGetBytePtr(v4);
    v10 = (&BytePtr[*(a2 + 24)] & v7 | (*(a2 + 24) + BytePtr + *(a2 + 32)) & v7) == 0;
    v11 = CFDataGetBytePtr(v4);
    v12 = re::globalAllocators(v11);
    v13 = (*(*v12[2] + 32))(v12[2], 104, 8);
    result = re::internal::DataPayload::DataPayload(v13, v11, *(a2 + 8), *(a2 + 16), *(a2 + 32), *(a2 + 24), v10, v4, re::internal::freeCoreFoundationData);
    goto LABEL_20;
  }

  if (v6 == 4 || v6 == 5 || v6 == 6)
  {
LABEL_16:
    v7 = 3;
    goto LABEL_19;
  }

LABEL_21:
  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Unsupported type", "!Unreachable code", "alignOfGeomModelValueType", 110);
  result = _os_crash();
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::GeomModelDescriptor::validateIndexType@<X0>(_anonymous_namespace_ *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 < 6)
  {
    *a3 = 1;
  }

  else
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    *a3 = 0;
    *(a3 + 8) = 100;
    *(a3 + 16) = re::AssetErrorCategory(void)::instance;
    *(a3 + 24) = v4;
    *(a3 + 40) = v5;
    *(a3 + 48) = v6;
  }

  return result;
}

__n128 re::GeomModelDescriptor::validateIfCoreAttribute@<Q0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = (a1 + 9);
  }

  v8 = strcmp(v7, "vertexPosition");
  if (!v8)
  {
    if ((a3 & 0xFFFFFFFD) != 9)
    {
      v15 = "Only float[3] supported for positions.";
      goto LABEL_35;
    }

    if (a2 != 1)
    {
      v15 = "Position must be at the vertex rate.";
      goto LABEL_35;
    }

LABEL_30:
    *a4 = 1;
    return result;
  }

  v10 = strcmp(v7, "vertexUV");
  if (!v10)
  {
    if (a3 != 8)
    {
      v15 = "Only float[2] supported for uvs.";
      goto LABEL_35;
    }

    if ((a2 & 0xFFFFFFFD) != 1)
    {
      v15 = "Uvs must be at either the vertex or face-varying rate.";
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v11 = strcmp(v7, "vertexNormal");
  if (!v11)
  {
    if ((a3 & 0xFFFFFFFD) != 9)
    {
      v15 = "Only float[3] supported for normals.";
      goto LABEL_35;
    }

    if ((a2 - 4) <= 0xFFFFFFFC)
    {
      v15 = "Normals must be at the vertex, face, or face-varying rate.";
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v12 = strcmp(v7, "vertexTangent");
  if (!v12)
  {
    if ((a3 & 0xFFFFFFFD) != 9)
    {
      v15 = "Only float[3] supported for tangents.";
      goto LABEL_35;
    }

    if ((a2 & 0xFFFFFFFD) != 1)
    {
      v15 = "Tangents must be at the vertex or face-varying rate.";
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v13 = strcmp(v7, "vertexBitangent");
  if (!v13)
  {
    if ((a3 & 0xFFFFFFFD) != 9)
    {
      v15 = "Only float[3] supported for bitangents.";
      goto LABEL_35;
    }

    if ((a2 & 0xFFFFFFFD) != 1)
    {
      v15 = "Bitangents must be at the vertex or face-varying rate.";
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v14 = strcmp(v7, "vertexColor");
  if (v14)
  {
    goto LABEL_30;
  }

  if (a3 != 10)
  {
    v15 = "Only float[4] supported for colors.";
    goto LABEL_35;
  }

  if (a2 != 4)
  {
    goto LABEL_30;
  }

  v15 = "Colors cannot be at the user-managed rate.";
LABEL_35:
  result = v18;
  v16 = v19;
  v17 = v20;
  *a4 = 0;
  *(a4 + 8) = 100;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = result;
  *(a4 + 40) = v16;
  *(a4 + 48) = v17;
  return result;
}

void re::GeomModelDescriptor::setSurfaceTopology(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!*a3)
  {
    v15 = *v26;
    v16 = *&v26[16];
    v17 = v27;
    *a5 = 0;
    *(a5 + 8) = 100;
    *(a5 + 16) = re::AssetErrorCategory(void)::instance;
    *(a5 + 24) = v15;
    *(a5 + 40) = v16;
    *(a5 + 48) = v17;
    return;
  }

  v10 = re::GeomModelDescriptor::validateIndexType(a1, *(a3 + 8), v26);
  v11 = v26[0];
  if (v26[0])
  {
    if (!*a4)
    {
      v18 = "Null vertex indices per face buffer.";
LABEL_20:
      v19 = v22;
      v20 = v23;
      v21 = v24;
      *a5 = 0;
      *(a5 + 8) = 100;
      *(a5 + 16) = re::AssetErrorCategory(void)::instance;
      *(a5 + 24) = v19;
      *(a5 + 40) = v20;
      *(a5 + 48) = v21;
      goto LABEL_21;
    }

    re::GeomModelDescriptor::validateIndexType(v10, *(a4 + 8), &v22);
    v12 = re::Result<re::Unit,re::DetailedError>::operator=(v26, &v22);
    if ((v22 & 1) == 0)
    {
      v12 = v24;
      if (v24)
      {
        if (v25)
        {
          v12 = (*(*v24 + 40))();
        }
      }
    }

    v11 = v26[0];
    if (v26[0])
    {
      if (*(a3 + 32) && *(a4 + 32))
      {
        *(a1 + 2) = a2;
        *(a1 + 3) = *(a3 + 16);
        re::GeomModelDescriptor::makeCFDataPayload(&v22, a3);
        v13 = *(a1 + 4);
        *(a1 + 4) = v22;
        if (v13)
        {
        }

        re::GeomModelDescriptor::makeCFDataPayload(&v22, a4);
        v14 = *(a1 + 5);
        *(a1 + 5) = v22;
        if (v14)
        {
        }

        *a5 = 1;
        goto LABEL_21;
      }

      v18 = "Zero stride provided.";
      goto LABEL_20;
    }
  }

  *a5 = v11;
  *(a5 + 8) = *&v26[8];
  *(a5 + 24) = v27;
  *(a5 + 48) = v29;
  *(a5 + 32) = v28;
  v29 = 0;
  v27 = 0;
  v28 = 0uLL;
LABEL_21:
  if (v26[0] & 1) == 0 && v27 && (v28)
  {
    (*(*v27 + 40))();
  }
}

void re::GeomModelDescriptor::makeFromGeomMeshes(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1;
  __src[1] = *MEMORY[0x1E69E9840];
  v244 = 0;
  v7 = &v244;
  v245 = 0;
  v246 = 0u;
  memset(v247, 0, sizeof(v247));
  v248 = 0u;
  v249 = 0u;
  v250 = 0x7FFFFFFFLL;
  memset(v251, 0, sizeof(v251));
  v252 = 0;
  memset(v253, 0, sizeof(v253));
  v254 = 0x7FFFFFFFLL;
  *(&v255 + 1) = 0;
  v256 = 0uLL;
  v8 = re::DynamicString::setCapacity(&v255, 0);
  if (!*(v5 + 16))
  {
    re::Ok<re::GeomModelDescriptor,re::GeomModelDescriptor>(&v262, &v244);
    re::Result<re::GeomModelDescriptor,re::DetailedError>::Result(a2, &v262);
    if (v269)
    {
      if (BYTE8(v269))
      {
        (*(*v269 + 40))();
      }

      v270 = 0u;
      v269 = 0u;
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v268);
    re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v267);
    v214.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v265);
    if (*(&v264 + 1))
    {

      *(&v264 + 1) = 0;
    }

    if (v264)
    {

      *&v264 = 0;
    }

    if (v262.n128_u64[1])
    {
    }

    goto LABEL_458;
  }

  v9 = *(v5 + 32);
  v10 = *(v9 + 40);
  v243 = 0;
  v241[2] = 0;
  v241[1] = 0;
  v242 = 0;
  re::DynamicArray<int>::setCapacity(v241, v10);
  ++v242;
  v240 = 0;
  v12 = *(v9 + 40);
  if (v12)
  {
    v13 = 0;
    do
    {
      re::DynamicArray<int>::add(v241, &v240);
      ++v13;
      v12 = *(v9 + 40);
    }

    while (v13 < v12);
  }

  v14 = *(v5 + 16);
  if (v14 >= 2)
  {
    v12 = 1;
    while (1)
    {
      ++v240;
      if (v14 <= v12)
      {
        break;
      }

      v15 = -1;
      while (1)
      {
        v16 = (*(v5 + 32) + 736 * v12);
        if (++v15 >= *(v16 + 10))
        {
          break;
        }

        re::DynamicArray<int>::add(v241, &v240);
        v14 = *(v5 + 16);
        if (v14 <= v12)
        {
          goto LABEL_427;
        }
      }

      canAppendGeomMeshToGeomMesh = re::internal::canAppendGeomMeshToGeomMesh(v16, v9, v11);
      if ((canAppendGeomMeshToGeomMesh & 1) == 0)
      {
        v214 = v262;
        v215 = v263;
        *a2 = 0;
        *(a2 + 8) = 100;
        *(a2 + 16) = re::AssetErrorCategory(void)::instance;
        *(a2 + 24) = v214;
        *(a2 + 40) = v215;
        goto LABEL_455;
      }

      v2 = *(v5 + 16);
      if (v2 <= v12)
      {
        goto LABEL_470;
      }

      re::internal::appendGeomMeshToGeomMesh((*(v5 + 32) + 736 * v12), v9);
      v12 = (v12 + 1);
      v14 = *(v5 + 16);
      if (v14 <= v12)
      {
        v12 = *(v9 + 40);
        goto LABEL_16;
      }
    }

LABEL_427:
    v271[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(location[0]) = 136315906;
    *(location + 4) = "operator[]";
    WORD2(location[1]) = 1024;
    *(&location[1] + 6) = 789;
    WORD1(location[2]) = 2048;
    *(&location[2] + 4) = v12;
    WORD2(location[3]) = 2048;
    *(&location[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    v211 = _os_crash_msg();
    __break(1u);
    goto LABEL_428;
  }

LABEL_16:
  v239 = 0;
  v236 = 0;
  memset(v237, 0, sizeof(v237));
  v238 = 0;
  v233[1] = 0;
  v234 = 0;
  v233[0] = 0;
  v235 = 0;
  if (v12)
  {
    v18 = 0;
    v5 = 0;
    v2 = v260;
    while (v12 > v5)
    {
      v19 = 0;
      v20 = *(v9 + 56) + v18;
      do
      {
        *&v260[v19] = *(v20 + v19);
        v19 += 4;
      }

      while (v19 != 16);
      if (v261 == -1)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      v262.n128_u8[0] = v21;
      re::DynamicArray<unsigned char>::add(v237, &v262);
      re::DynamicArray<float>::copy(v233, v234, v260, v262.n128_u8[0]);
      ++v5;
      v12 = *(v9 + 40);
      v18 += 16;
      if (v5 >= v12)
      {
        goto LABEL_25;
      }
    }

    v271[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(location[0]) = 136315906;
    *(location + 4) = "operator[]";
    WORD2(location[1]) = 1024;
    *(&location[1] + 6) = 797;
    WORD1(location[2]) = 2048;
    *(&location[2] + 4) = v5;
    WORD2(location[3]) = 2048;
    *(&location[3] + 6) = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_470:
    v271[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(location[0]) = 136315906;
    *(location + 4) = "operator[]";
    WORD2(location[1]) = 1024;
    *(&location[1] + 6) = 789;
    WORD1(location[2]) = 2048;
    *(&location[2] + 4) = v12;
    WORD2(location[3]) = 2048;
    *(&location[3] + 6) = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_471:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_472:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 797;
    *&v274[18] = 2048;
    *&v274[20] = v2;
    *&v274[28] = 2048;
    *&v274[30] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_473:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_474:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_475:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_476:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_477:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_478:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_479:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 797;
    *&v274[18] = 2048;
    *&v274[20] = v2;
    *&v274[28] = 2048;
    *&v274[30] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_480:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_481:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 613;
    *&v274[18] = 2048;
    *&v274[20] = v4;
    *&v274[28] = 2048;
    *&v274[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_482:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_483:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_484:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_485:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_486:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_487:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 613;
    *&v274[18] = 2048;
    *&v274[20] = v4;
    *&v274[28] = 2048;
    *&v274[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_488:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_489:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 613;
    *&v274[18] = 2048;
    *&v274[20] = v3;
    *&v274[28] = 2048;
    *&v274[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_490:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_491:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 613;
    *&v274[18] = 2048;
    *&v274[20] = v3;
    *&v274[28] = 2048;
    *&v274[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_492:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_493:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_494:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_495:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_496:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_497:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_498:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 613;
    *&v274[18] = 2048;
    *&v274[20] = v9;
    *&v274[28] = 2048;
    *&v274[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_499:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_500:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_501:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_502:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_503:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_504:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 613;
    *&v274[18] = 2048;
    *&v274[20] = v9;
    *&v274[28] = 2048;
    *&v274[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_505:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_506:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_507:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_508:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 797;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_509:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_510:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v4;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_511:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_512:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v3;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_513:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_514:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v9;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_515:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "copy";
    v258 = 1024;
    LODWORD(v259[0]) = 643;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = -1;
    HIWORD(v259[1]) = 2048;
    v259[2] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_516:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "copy";
    v258 = 1024;
    LODWORD(v259[0]) = 643;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = -1;
    HIWORD(v259[1]) = 2048;
    v259[2] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_517:
    re::internal::assertLog(7, v62, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v2, v2, v9);
    _os_crash();
    __break(1u);
LABEL_518:
    re::internal::assertLog(7, v79, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v3, v3, v2);
    _os_crash();
    __break(1u);
LABEL_519:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_520:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 613;
    *&v274[18] = 2048;
    *&v274[20] = v2;
    *&v274[28] = 2048;
    *&v274[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_521:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_522:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v274 = 136315906;
    *&v274[4] = "operator[]";
    *&v274[12] = 1024;
    *&v274[14] = 613;
    *&v274[18] = 2048;
    *&v274[20] = v2;
    *&v274[28] = 2048;
    *&v274[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_523:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_524:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_525:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_526:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_527:
    __src[0] = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_528:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_529:
    *v274 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v257 = 136315906;
    *&v257[4] = "operator[]";
    v258 = 1024;
    LODWORD(v259[0]) = 613;
    WORD2(v259[0]) = 2048;
    *(v259 + 6) = v2;
    HIWORD(v259[1]) = 2048;
    v259[2] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_530:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_531:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_532:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_533:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_534:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_535:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_536:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_537:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_538:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_539:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_540:
    *v257 = 0;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v271[0]) = 136315906;
    *(v271 + 4) = "operator[]";
    WORD2(v271[1]) = 1024;
    *(&v271[1] + 6) = 613;
    WORD1(v271[2]) = 2048;
    *(&v271[2] + 4) = 0;
    WORD2(v271[3]) = 2048;
    *(&v271[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_541:
    re::internal::assertLog(4, v188, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_542:
    re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_543:
    re::internal::assertLog(4, v95, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_544:
    re::internal::assertLog(4, v126, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_545:
    re::internal::assertLog(4, v156, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_546:
    re::internal::assertLog(4, v112, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_547:
    re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_548:
    re::internal::assertLog(4, v172, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_549:
    re::internal::assertLog(4, v142, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_550:
    re::internal::assertLog(4, v79, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_551:
    re::internal::assertLog(4, v62, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
  }

LABEL_25:
  re::makeNSDataFromGeomArray<unsigned char>(v232, v237);
  re::makeNSDataFromGeomArray<unsigned int>(v231, v233);
  re::GeomModelDescriptor::setSurfaceTopology(&v244, *(v9 + 16), v232, v231, v228);
  if ((v228[0] & 1) == 0 && v229)
  {
    if (BYTE8(v229))
    {
      (*(*v229 + 40))();
    }

    v230 = 0u;
    v229 = 0u;
  }

  v217 = a2;
  if (*(v9 + 640))
  {
    LODWORD(v5) = 0;
    v218 = v9;
    while (1)
    {
      v23 = re::internal::GeomAttributeManager::attributeByIndex((v9 + 64), v5);
      v24 = v23;
      v225 = 0;
      LOBYTE(v226) = -1;
      v227 = 0uLL;
      *(&v226 + 1) = 0;
      v25 = *(v23 + 17);
      if (*(v23 + 16) != 3)
      {
        break;
      }

      v26 = 0;
      if (*(v23 + 17) <= 4u)
      {
        if (*(v23 + 17) > 1u)
        {
          if (v25 != 2)
          {
            if (v25 != 3)
            {
              v44 = re::GeomAttribute::accessValues<int>(v23);
              v46 = *(v24 + 88);
              location[4] = 0;
              memset(location, 0, 28);
              if (v46)
              {
                v47 = v44;
                LODWORD(v7) = v45;
                v48 = 0;
                while (1)
                {
                  v262.n128_u32[0] = v48;
                  v49 = *(v24 + 204);
                  if (v49 == 2)
                  {
                    break;
                  }

                  if (v49 == 1)
                  {
                    if (*(v24 + 224) <= v48)
                    {
                      goto LABEL_81;
                    }

                    v50 = (*(v24 + 240) + 4 * v48);
                    goto LABEL_80;
                  }

                  if (*(v24 + 204))
                  {
                    goto LABEL_542;
                  }

                  if (v48 < *(v24 + 208))
                  {
                    v2 = v48;
LABEL_82:
                    v9 = *(v24 + 88);
                    if (v9 <= v2)
                    {
                      goto LABEL_471;
                    }

                    v53 = (*(v24 + 104) + 16 * v2);
                    v4 = *v53;
                    if (v4 >= v7)
                    {
                      goto LABEL_485;
                    }

                    v3 = v53[1];
                    v9 = v53[2];
                    v2 = v53[3];
                    *v274 = *(v47 + 4 * v4);
                    if (v3 >= v7)
                    {
                      goto LABEL_490;
                    }

                    *&v274[4] = *(v47 + 4 * v3);
                    if (v9 >= v7)
                    {
                      goto LABEL_506;
                    }

                    *&v274[8] = *(v47 + 4 * v9);
                    if (v2 == -1)
                    {
                      v52 = 3;
                      v9 = v218;
                    }

                    else
                    {
                      v9 = v218;
                      if (v2 >= v7)
                      {
                        goto LABEL_527;
                      }

                      *&v274[12] = *(v47 + 4 * v2);
                      v52 = 4;
                    }

                    goto LABEL_90;
                  }

LABEL_81:
                  v52 = 0;
LABEL_90:
                  re::DynamicArray<float>::copy(location, location[2], v274, v52);
                  if (++v48 == v46)
                  {
                    v54 = location[4];
                    v55 = (4 * location[2]);
                    goto LABEL_377;
                  }
                }

                v51 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
                if (v51 == -1)
                {
                  goto LABEL_81;
                }

                v50 = (*(v24 + 216) + 8 * v51 + 4);
LABEL_80:
                v2 = *v50;
                if (v2 != -1)
                {
                  goto LABEL_82;
                }

                goto LABEL_81;
              }

              v55 = 0;
              v54 = 0;
LABEL_377:
              re::Data::makeDataWithBytes(v54, v55, &v262);
              v271[0] = 0;
              LOBYTE(v271[1]) = -1;
              memset(&v271[2], 0, 24);
              re::ObjCObject::operator=(v271, &v262);
              LOBYTE(v271[1]) = 6;
LABEL_380:
              v271[2] = location[2];
              v205 = xmmword_1E3068150;
              goto LABEL_389;
            }

            v111 = re::GeomAttribute::accessValues<int>(v23);
            v113 = *(v24 + 88);
            location[4] = 0;
            memset(location, 0, 28);
            if (!v113)
            {
LABEL_226:
              re::makeNSDataFromGeomArray<unsigned int>(v271, location);
              goto LABEL_278;
            }

            v114 = v111;
            LODWORD(v7) = v112;
            v115 = 0;
            while (2)
            {
              v262.n128_u32[0] = v115;
              v116 = *(v24 + 204);
              if (v116 == 2)
              {
                v118 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
                if (v118 == -1)
                {
                  goto LABEL_216;
                }

                v117 = (*(v24 + 216) + 8 * v118 + 4);
              }

              else
              {
                if (v116 != 1)
                {
                  if (*(v24 + 204))
                  {
                    goto LABEL_546;
                  }

                  if (v115 < *(v24 + 208))
                  {
                    v2 = v115;
                    goto LABEL_217;
                  }

LABEL_216:
                  v119 = 0;
                  goto LABEL_225;
                }

                if (*(v24 + 224) <= v115)
                {
                  goto LABEL_216;
                }

                v117 = (*(v24 + 240) + 4 * v115);
              }

              v2 = *v117;
              if (v2 == -1)
              {
                goto LABEL_216;
              }

LABEL_217:
              v9 = *(v24 + 88);
              if (v9 <= v2)
              {
                goto LABEL_474;
              }

              v120 = (*(v24 + 104) + 16 * v2);
              v4 = *v120;
              if (v4 >= v7)
              {
                goto LABEL_482;
              }

              v3 = v120[1];
              v9 = v120[2];
              v2 = v120[3];
              *v274 = *(v114 + 4 * v4);
              if (v3 >= v7)
              {
                goto LABEL_495;
              }

              *&v274[4] = *(v114 + 4 * v3);
              if (v9 >= v7)
              {
                goto LABEL_499;
              }

              *&v274[8] = *(v114 + 4 * v9);
              if (v2 == -1)
              {
                v119 = 3;
                v9 = v218;
              }

              else
              {
                v9 = v218;
                if (v2 >= v7)
                {
                  goto LABEL_525;
                }

                *&v274[12] = *(v114 + 4 * v2);
                v119 = 4;
              }

LABEL_225:
              re::DynamicArray<float>::copy(location, location[2], v274, v119);
              if (++v115 == v113)
              {
                goto LABEL_226;
              }

              continue;
            }
          }

          v155 = re::GeomAttribute::accessValues<int>(v23);
          v157 = *(v24 + 88);
          location[4] = 0;
          memset(location, 0, 28);
          if (!v157)
          {
            v166 = 0;
            v165 = 0;
LABEL_379:
            re::Data::makeDataWithBytes(v165, v166, &v262);
            v271[0] = 0;
            LOBYTE(v271[1]) = -1;
            memset(&v271[2], 0, 24);
            re::ObjCObject::operator=(v271, &v262);
            LOBYTE(v271[1]) = 4;
            goto LABEL_380;
          }

          v158 = v155;
          LODWORD(v7) = v156;
          v159 = 0;
          while (2)
          {
            v262.n128_u32[0] = v159;
            v160 = *(v24 + 204);
            if (v160 == 2)
            {
              v162 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
              if (v162 == -1)
              {
                goto LABEL_297;
              }

              v161 = (*(v24 + 216) + 8 * v162 + 4);
            }

            else
            {
              if (v160 != 1)
              {
                if (*(v24 + 204))
                {
                  goto LABEL_545;
                }

                if (v159 < *(v24 + 208))
                {
                  v2 = v159;
                  goto LABEL_298;
                }

LABEL_297:
                v163 = 0;
                goto LABEL_306;
              }

              if (*(v24 + 224) <= v159)
              {
                goto LABEL_297;
              }

              v161 = (*(v24 + 240) + 4 * v159);
            }

            v2 = *v161;
            if (v2 == -1)
            {
              goto LABEL_297;
            }

LABEL_298:
            v9 = *(v24 + 88);
            if (v9 <= v2)
            {
              goto LABEL_476;
            }

            v164 = (*(v24 + 104) + 16 * v2);
            v4 = *v164;
            if (v4 >= v7)
            {
              goto LABEL_480;
            }

            v3 = v164[1];
            v9 = v164[2];
            v2 = v164[3];
            *v274 = *(v158 + 4 * v4);
            if (v3 >= v7)
            {
              goto LABEL_496;
            }

            *&v274[4] = *(v158 + 4 * v3);
            if (v9 >= v7)
            {
              goto LABEL_505;
            }

            *&v274[8] = *(v158 + 4 * v9);
            if (v2 == -1)
            {
              v163 = 3;
              v9 = v218;
            }

            else
            {
              v9 = v218;
              if (v2 >= v7)
              {
                goto LABEL_523;
              }

              *&v274[12] = *(v158 + 4 * v2);
              v163 = 4;
            }

LABEL_306:
            re::DynamicArray<float>::copy(location, location[2], v274, v163);
            if (++v159 == v157)
            {
              v165 = location[4];
              v166 = (4 * location[2]);
              goto LABEL_379;
            }

            continue;
          }
        }

        if (*(v23 + 17))
        {
          v78 = re::GeomAttribute::accessValues<int>(v23);
          v80 = *(v24 + 88);
          location[4] = 0;
          memset(location, 0, 28);
          if (v80)
          {
            v81 = v78;
            LODWORD(v7) = v79;
            v82 = 0;
            while (1)
            {
              v262.n128_u32[0] = v82;
              v83 = *(v24 + 204);
              if (v83 == 2)
              {
                break;
              }

              if (v83 == 1)
              {
                if (*(v24 + 224) <= v82)
                {
                  goto LABEL_173;
                }

                v84 = (*(v24 + 240) + 4 * v82);
                goto LABEL_156;
              }

              if (*(v24 + 204))
              {
                goto LABEL_550;
              }

              if (v82 < *(v24 + 208))
              {
                v2 = v82;
LABEL_157:
                v9 = *(v24 + 88);
                if (v9 <= v2)
                {
                  goto LABEL_507;
                }

                v86 = (*(v24 + 104) + 16 * v2);
                v4 = *v86;
                if (v4 >= v7)
                {
                  goto LABEL_510;
                }

                v3 = v86[1];
                v9 = v86[2];
                v2 = v86[3];
                LOWORD(__src[0]) = *(v81 + 2 * v4);
                if (v3 >= v7)
                {
                  goto LABEL_511;
                }

                WORD1(__src[0]) = *(v81 + 2 * v3);
                if (v9 >= v7)
                {
                  goto LABEL_514;
                }

                WORD2(__src[0]) = *(v81 + 2 * v9);
                if (v2 == -1)
                {
                  v2 = 3;
                }

                else
                {
                  if (v2 >= v7)
                  {
                    goto LABEL_529;
                  }

                  HIWORD(__src[0]) = *(v81 + 2 * v2);
                  v2 = 4;
                }

                v3 = location[2];
                if (location[2] == -1)
                {
                  goto LABEL_515;
                }

                v87 = location[2] + v2;
                if (__CFADD__(location[2], v2))
                {
                  goto LABEL_518;
                }

                if (location[2] >= v87)
                {
                  memcpy(location[4] + 2 * location[2], __src, 2 * v2);
                }

                else
                {
                  re::DynamicArray<unsigned short>::growCapacity(location, location[2] + v2);
                  v4 = location[2] - v3;
                  if (location[2] != v3)
                  {
                    memcpy(location[4] + 2 * v3, __src, 2 * v4);
                    v3 = location[2];
                  }

                  memcpy(location[4] + 2 * v3, __src + 2 * v4, 2 * (v2 - v4));
                  location[2] = v87;
                }

                ++LODWORD(location[3]);
                v9 = v218;
              }

LABEL_173:
              if (++v82 == v80)
              {
                v88 = location[4];
                v89 = (2 * location[2]);
                goto LABEL_372;
              }
            }

            v85 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
            if (v85 == -1)
            {
              goto LABEL_173;
            }

            v84 = (*(v24 + 216) + 8 * v85 + 4);
LABEL_156:
            v2 = *v84;
            if (v2 != -1)
            {
              goto LABEL_157;
            }

            goto LABEL_173;
          }

          v89 = 0;
          v88 = 0;
LABEL_372:
          re::Data::makeDataWithBytes(v88, v89, &v262);
          v271[0] = 0;
          LOBYTE(v271[1]) = -1;
          memset(&v271[2], 0, 24);
          re::ObjCObject::operator=(v271, &v262);
          LOBYTE(v271[1]) = 3;
LABEL_373:
          v271[2] = location[2];
          v205 = xmmword_1E3054780;
          goto LABEL_389;
        }

        v94 = re::GeomAttribute::accessValues<int>(v23);
        v96 = *(v24 + 88);
        location[4] = 0;
        memset(location, 0, 28);
        if (!v96)
        {
          v105 = 0;
          v104 = 0;
LABEL_370:
          re::Data::makeDataWithBytes(v104, v105, &v262);
          v271[0] = 0;
          LOBYTE(v271[1]) = -1;
          memset(&v271[2], 0, 24);
          re::ObjCObject::operator=(v271, &v262);
          LOBYTE(v271[1]) = 2;
          goto LABEL_373;
        }

        v97 = v94;
        LODWORD(v7) = v95;
        v98 = 0;
        while (2)
        {
          v262.n128_u32[0] = v98;
          v99 = *(v24 + 204);
          if (v99 == 2)
          {
            v101 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
            if (v101 == -1)
            {
              goto LABEL_190;
            }

            v100 = (*(v24 + 216) + 8 * v101 + 4);
          }

          else
          {
            if (v99 != 1)
            {
              if (*(v24 + 204))
              {
                goto LABEL_543;
              }

              if (v98 < *(v24 + 208))
              {
                v2 = v98;
                goto LABEL_191;
              }

LABEL_190:
              v102 = 0;
              goto LABEL_199;
            }

            if (*(v24 + 224) <= v98)
            {
              goto LABEL_190;
            }

            v100 = (*(v24 + 240) + 4 * v98);
          }

          v2 = *v100;
          if (v2 == -1)
          {
            goto LABEL_190;
          }

LABEL_191:
          v9 = *(v24 + 88);
          if (v9 <= v2)
          {
            goto LABEL_475;
          }

          v103 = (*(v24 + 104) + 16 * v2);
          v4 = *v103;
          if (v4 >= v7)
          {
            goto LABEL_483;
          }

          v3 = v103[1];
          v9 = v103[2];
          v2 = v103[3];
          LOWORD(__src[0]) = *(v97 + 2 * v4);
          if (v3 >= v7)
          {
            goto LABEL_492;
          }

          WORD1(__src[0]) = *(v97 + 2 * v3);
          if (v9 >= v7)
          {
            goto LABEL_502;
          }

          WORD2(__src[0]) = *(v97 + 2 * v9);
          if (v2 == -1)
          {
            v102 = 3;
            v9 = v218;
          }

          else
          {
            v9 = v218;
            if (v2 >= v7)
            {
              goto LABEL_524;
            }

            HIWORD(__src[0]) = *(v97 + 2 * v2);
            v102 = 4;
          }

LABEL_199:
          re::DynamicArray<short>::copy(location, location[2], __src, v102);
          if (++v98 == v96)
          {
            v104 = location[4];
            v105 = (2 * location[2]);
            goto LABEL_370;
          }

          continue;
        }
      }

      if (*(v23 + 17) > 7u)
      {
        if (v25 != 8)
        {
          if (v25 != 9)
          {
            if (v25 != 10)
            {
              goto LABEL_400;
            }

            v61 = re::GeomAttribute::accessValues<int>(v23);
            v63 = *(v24 + 88);
            location[4] = 0;
            memset(location, 0, 28);
            if (!v63)
            {
              v73 = 0;
              v72 = 0;
LABEL_384:
              re::Data::makeDataWithBytes(v72, v73, &v262);
              v271[0] = 0;
              LOBYTE(v271[1]) = -1;
              memset(&v271[2], 0, 24);
              re::ObjCObject::operator=(v271, &v262);
              LOBYTE(v271[1]) = 0;
              v271[2] = location[2];
              *&v271[3] = xmmword_1E3049620;

              v207 = location[0];
              if (!location[0])
              {
                goto LABEL_392;
              }

LABEL_390:
              if (location[4])
              {
                (*(*v207 + 40))(v207);
              }

              goto LABEL_392;
            }

            v64 = v61;
            LODWORD(v7) = v62;
            v65 = 0;
            while (2)
            {
              v262.n128_u32[0] = v65;
              v66 = *(v24 + 204);
              if (v66 == 2)
              {
                v61 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
                if (v61 == -1)
                {
                  goto LABEL_137;
                }

                v67 = (*(v24 + 216) + 8 * v61 + 4);
              }

              else
              {
                if (v66 != 1)
                {
                  if (*(v24 + 204))
                  {
                    goto LABEL_551;
                  }

                  if (v65 < *(v24 + 208))
                  {
                    v2 = v65;
                    goto LABEL_112;
                  }

                  goto LABEL_137;
                }

                if (*(v24 + 224) <= v65)
                {
                  goto LABEL_137;
                }

                v67 = (*(v24 + 240) + 4 * v65);
              }

              v2 = *v67;
              if (v2 != -1)
              {
LABEL_112:
                v9 = *(v24 + 88);
                if (v9 <= v2)
                {
                  goto LABEL_508;
                }

                v68 = (*(v24 + 104) + 16 * v2);
                v4 = *v68;
                if (v4 >= v7)
                {
                  goto LABEL_509;
                }

                v3 = v68[1];
                v9 = v68[2];
                v2 = v68[3];
                LOBYTE(__src[0]) = *(v64 + v4);
                if (v3 >= v7)
                {
                  goto LABEL_512;
                }

                BYTE1(__src[0]) = *(v64 + v3);
                if (v9 >= v7)
                {
                  goto LABEL_513;
                }

                BYTE2(__src[0]) = *(v64 + v9);
                if (v2 == -1)
                {
                  v9 = 3;
                }

                else
                {
                  if (v2 >= v7)
                  {
                    goto LABEL_528;
                  }

                  BYTE3(__src[0]) = *(v64 + v2);
                  v9 = 4;
                }

                v2 = location[2];
                if (location[2] == -1)
                {
                  goto LABEL_516;
                }

                v3 = location[2] + v9;
                if (__CFADD__(location[2], v9))
                {
                  goto LABEL_517;
                }

                if (location[2] >= v3)
                {
                  v61 = memcpy(location[4] + location[2], __src, v9);
                }

                else
                {
                  if (location[1] < v3)
                  {
                    if (location[0])
                    {
                      v69 = 8;
                      if (location[1])
                      {
                        v69 = 2 * location[1];
                      }

                      if (v69 <= v3)
                      {
                        v70 = location[2] + v9;
                      }

                      else
                      {
                        v70 = v69;
                      }

                      re::DynamicArray<BOOL>::setCapacity(location, v70);
                    }

                    else
                    {
                      re::DynamicArray<BOOL>::setCapacity(location, v2 + v9);
                      ++LODWORD(location[3]);
                    }
                  }

                  v71 = location[4];
                  v4 = location[2] - v2;
                  if (location[2] != v2)
                  {
                    memcpy(location[4] + v2, __src, location[2] - v2);
                    v2 = location[2];
                    v71 = location[4];
                  }

                  v61 = memcpy(&v71[v2], __src + v4, v9 - v4);
                  location[2] = v3;
                }

                ++LODWORD(location[3]);
                v9 = v218;
              }

LABEL_137:
              if (++v65 == v63)
              {
                v72 = location[4];
                v73 = location[2];
                goto LABEL_384;
              }

              continue;
            }
          }

          v141 = re::GeomAttribute::accessValues<int>(v23);
          v143 = *(v24 + 88);
          location[4] = 0;
          memset(location, 0, 28);
          if (v143)
          {
            v144 = v141;
            LODWORD(v7) = v142;
            v145 = 0;
            while (1)
            {
              v262.n128_u32[0] = v145;
              v146 = *(v24 + 204);
              if (v146 == 2)
              {
                break;
              }

              if (v146 == 1)
              {
                if (*(v24 + 224) <= v145)
                {
                  goto LABEL_267;
                }

                v147 = (*(v24 + 240) + 4 * v145);
                goto LABEL_266;
              }

              if (*(v24 + 204))
              {
                goto LABEL_549;
              }

              if (v145 >= *(v24 + 208))
              {
LABEL_267:
                v149 = 0;
                goto LABEL_276;
              }

              v2 = v145;
LABEL_268:
              v9 = *(v24 + 88);
              if (v9 <= v2)
              {
                goto LABEL_478;
              }

              v150 = (*(v24 + 104) + 16 * v2);
              v4 = *v150;
              if (v4 >= v7)
              {
                goto LABEL_488;
              }

              v3 = v150[1];
              v9 = v150[2];
              v2 = v150[3];
              LOBYTE(__src[0]) = *(v144 + v4);
              if (v3 >= v7)
              {
                goto LABEL_497;
              }

              BYTE1(__src[0]) = *(v144 + v3);
              if (v9 >= v7)
              {
                goto LABEL_501;
              }

              BYTE2(__src[0]) = *(v144 + v9);
              if (v2 == -1)
              {
                v149 = 3;
                v9 = v218;
              }

              else
              {
                v9 = v218;
                if (v2 >= v7)
                {
                  goto LABEL_519;
                }

                BYTE3(__src[0]) = *(v144 + v2);
                v149 = 4;
              }

LABEL_276:
              re::DynamicArray<REFrameAnalysisBottleneck>::copy(location, location[2], __src, v149);
              if (++v145 == v143)
              {
                goto LABEL_277;
              }
            }

            v148 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
            if (v148 == -1)
            {
              goto LABEL_267;
            }

            v147 = (*(v24 + 216) + 8 * v148 + 4);
LABEL_266:
            v2 = *v147;
            if (v2 == -1)
            {
              goto LABEL_267;
            }

            goto LABEL_268;
          }

LABEL_277:
          re::makeNSDataFromGeomArray<unsigned char>(v271, location);
LABEL_278:
          if (location[0] && location[4])
          {
            (*(*location[0] + 40))();
          }

          v26 = v271[0];
          v271[0] = 0;
          v225 = v26;
          v226 = *&v271[1];
          v227 = *&v271[3];

          goto LABEL_400;
        }

        v187 = re::GeomAttribute::accessValues<int>(v23);
        v189 = *(v24 + 88);
        v273 = 0u;
        memset(location, 0, sizeof(location));
        v271[4] = 0;
        memset(v271, 0, 28);
        if (!v189)
        {
          v198 = 0;
          v197 = 0;
LABEL_394:
          re::Data::makeDataWithBytes(v197, v198, &v262);
          *v257 = 0;
          v257[8] = -1;
          memset(v259 + 2, 0, 24);
          re::ObjCObject::operator=(v257, &v262);
          v206 = 10;
LABEL_395:
          v257[8] = v206;
          *(v259 + 2) = v271[2];
          *(&v259[1] + 2) = xmmword_1E30B4E30;

          if (v271[0] && v271[4])
          {
            (*(*v271[0] + 40))();
          }

          v26 = *v257;
          *v257 = 0;
          v225 = v26;
          v208 = v257;
          goto LABEL_399;
        }

        v190 = v187;
        LODWORD(v7) = v188;
        v191 = 0;
        while (2)
        {
          v262.n128_u32[0] = v191;
          v192 = *(v24 + 204);
          if (v192 == 2)
          {
            v194 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
            if (v194 == -1)
            {
              goto LABEL_349;
            }

            v193 = (*(v24 + 216) + 8 * v194 + 4);
          }

          else
          {
            if (v192 != 1)
            {
              if (*(v24 + 204))
              {
                goto LABEL_541;
              }

              if (v191 < *(v24 + 208))
              {
                v2 = v191;
                goto LABEL_350;
              }

LABEL_349:
              v195 = 0;
              goto LABEL_358;
            }

            if (*(v24 + 224) <= v191)
            {
              goto LABEL_349;
            }

            v193 = (*(v24 + 240) + 4 * v191);
          }

          v2 = *v193;
          if (v2 == -1)
          {
            goto LABEL_349;
          }

LABEL_350:
          v9 = *(v24 + 88);
          if (v9 <= v2)
          {
            goto LABEL_472;
          }

          v196 = (*(v24 + 104) + 16 * v2);
          v4 = *v196;
          if (v4 >= v7)
          {
            goto LABEL_481;
          }

          v3 = v196[1];
          v9 = v196[2];
          v2 = v196[3];
          *location = *(v190 + 16 * v4);
          if (v3 >= v7)
          {
            goto LABEL_491;
          }

          *&location[2] = *(v190 + 16 * v3);
          if (v9 >= v7)
          {
            goto LABEL_504;
          }

          *&location[4] = *(v190 + 16 * v9);
          if (v2 == -1)
          {
            v195 = 3;
            v9 = v218;
          }

          else
          {
            v9 = v218;
            if (v2 >= v7)
            {
              goto LABEL_520;
            }

            v273 = *(v190 + 16 * v2);
            v195 = 4;
          }

LABEL_358:
          re::DynamicArray<re::Vector4<float>>::copy(v271, v271[2], location, v195);
          if (++v191 == v189)
          {
            v197 = v271[4];
            v198 = (16 * v271[2]);
            goto LABEL_394;
          }

          continue;
        }
      }

      if (v25 != 5)
      {
        if (v25 != 6)
        {
          v27 = re::GeomAttribute::accessValues<int>(v23);
          v29 = *(v24 + 88);
          v273 = 0u;
          memset(location, 0, sizeof(location));
          v271[4] = 0;
          memset(v271, 0, 28);
          if (v29)
          {
            v30 = v27;
            LODWORD(v7) = v28;
            v31 = 0;
            while (1)
            {
              v262.n128_u32[0] = v31;
              v32 = *(v24 + 204);
              if (v32 == 2)
              {
                break;
              }

              if (v32 == 1)
              {
                if (*(v24 + 224) <= v31)
                {
                  goto LABEL_49;
                }

                v33 = (*(v24 + 240) + 4 * v31);
                goto LABEL_48;
              }

              if (*(v24 + 204))
              {
                goto LABEL_547;
              }

              if (v31 < *(v24 + 208))
              {
                v2 = v31;
LABEL_50:
                v9 = *(v24 + 88);
                if (v9 <= v2)
                {
                  goto LABEL_479;
                }

                v36 = (*(v24 + 104) + 16 * v2);
                v4 = *v36;
                if (v4 >= v7)
                {
                  goto LABEL_487;
                }

                v3 = v36[1];
                v9 = v36[2];
                v2 = v36[3];
                *location = *(v30 + 16 * v4);
                if (v3 >= v7)
                {
                  goto LABEL_489;
                }

                *&location[2] = *(v30 + 16 * v3);
                if (v9 >= v7)
                {
                  goto LABEL_498;
                }

                *&location[4] = *(v30 + 16 * v9);
                if (v2 == -1)
                {
                  v35 = 3;
                  v9 = v218;
                }

                else
                {
                  v9 = v218;
                  if (v2 >= v7)
                  {
                    goto LABEL_522;
                  }

                  v273 = *(v30 + 16 * v2);
                  v35 = 4;
                }

                goto LABEL_58;
              }

LABEL_49:
              v35 = 0;
LABEL_58:
              re::DynamicArray<re::Vector3<float>>::copy(v271, v271[2], location, v35);
              if (++v31 == v29)
              {
                v37 = v271[4];
                v38 = (16 * v271[2]);
                goto LABEL_382;
              }
            }

            v34 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
            if (v34 == -1)
            {
              goto LABEL_49;
            }

            v33 = (*(v24 + 216) + 8 * v34 + 4);
LABEL_48:
            v2 = *v33;
            if (v2 != -1)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }

          v38 = 0;
          v37 = 0;
LABEL_382:
          re::Data::makeDataWithBytes(v37, v38, &v262);
          *v257 = 0;
          v257[8] = -1;
          memset(v259 + 2, 0, 24);
          re::ObjCObject::operator=(v257, &v262);
          v206 = 9;
          goto LABEL_395;
        }

        v125 = re::GeomAttribute::accessValues<int>(v23);
        v127 = *(v24 + 88);
        memset(v274, 0, 32);
        location[4] = 0;
        memset(location, 0, 28);
        if (v127)
        {
          v128 = v125;
          LODWORD(v7) = v126;
          v129 = 0;
          while (1)
          {
            v262.n128_u32[0] = v129;
            v130 = *(v24 + 204);
            if (v130 == 2)
            {
              break;
            }

            if (v130 == 1)
            {
              if (*(v24 + 224) <= v129)
              {
                goto LABEL_242;
              }

              v131 = (*(v24 + 240) + 4 * v129);
              goto LABEL_241;
            }

            if (*(v24 + 204))
            {
              goto LABEL_544;
            }

            if (v129 < *(v24 + 208))
            {
              v2 = v129;
LABEL_243:
              v9 = *(v24 + 88);
              if (v9 <= v2)
              {
                goto LABEL_473;
              }

              v134 = (*(v24 + 104) + 16 * v2);
              v4 = *v134;
              if (v4 >= v7)
              {
                goto LABEL_484;
              }

              v3 = v134[1];
              v9 = v134[2];
              v2 = v134[3];
              *v274 = *(v128 + 8 * v4);
              if (v3 >= v7)
              {
                goto LABEL_493;
              }

              *&v274[8] = *(v128 + 8 * v3);
              if (v9 >= v7)
              {
                goto LABEL_500;
              }

              *&v274[16] = *(v128 + 8 * v9);
              if (v2 == -1)
              {
                v133 = 3;
                v9 = v218;
              }

              else
              {
                v9 = v218;
                if (v2 >= v7)
                {
                  goto LABEL_521;
                }

                *&v274[24] = *(v128 + 8 * v2);
                v133 = 4;
              }

              goto LABEL_251;
            }

LABEL_242:
            v133 = 0;
LABEL_251:
            re::DynamicArray<re::Vector2<float>>::copy(location, location[2], v274, v133);
            if (++v129 == v127)
            {
              v135 = location[4];
              v136 = (8 * location[2]);
              goto LABEL_375;
            }
          }

          v132 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
          if (v132 == -1)
          {
            goto LABEL_242;
          }

          v131 = (*(v24 + 216) + 8 * v132 + 4);
LABEL_241:
          v2 = *v131;
          if (v2 != -1)
          {
            goto LABEL_243;
          }

          goto LABEL_242;
        }

        v136 = 0;
        v135 = 0;
LABEL_375:
        re::Data::makeDataWithBytes(v135, v136, &v262);
        v271[0] = 0;
        LOBYTE(v271[1]) = -1;
        memset(&v271[2], 0, 24);
        re::ObjCObject::operator=(v271, &v262);
        LOBYTE(v271[1]) = 8;
        goto LABEL_388;
      }

      v171 = re::GeomAttribute::accessValues<int>(v23);
      v173 = *(v24 + 88);
      location[4] = 0;
      memset(location, 0, 28);
      if (v173)
      {
        v174 = v171;
        LODWORD(v7) = v172;
        v175 = 0;
        while (1)
        {
          v262.n128_u32[0] = v175;
          v176 = *(v24 + 204);
          if (v176 == 2)
          {
            break;
          }

          if (v176 == 1)
          {
            if (*(v24 + 224) <= v175)
            {
              goto LABEL_323;
            }

            v177 = (*(v24 + 240) + 4 * v175);
            goto LABEL_322;
          }

          if (*(v24 + 204))
          {
            goto LABEL_548;
          }

          if (v175 < *(v24 + 208))
          {
            v2 = v175;
LABEL_324:
            v9 = *(v24 + 88);
            if (v9 <= v2)
            {
              goto LABEL_477;
            }

            v180 = (*(v24 + 104) + 16 * v2);
            v4 = *v180;
            if (v4 >= v7)
            {
              goto LABEL_486;
            }

            v3 = v180[1];
            v9 = v180[2];
            v2 = v180[3];
            *v274 = *(v174 + 8 * v4);
            if (v3 >= v7)
            {
              goto LABEL_494;
            }

            *&v274[8] = *(v174 + 8 * v3);
            if (v9 >= v7)
            {
              goto LABEL_503;
            }

            *&v274[16] = *(v174 + 8 * v9);
            if (v2 == -1)
            {
              v179 = 3;
              v9 = v218;
            }

            else
            {
              v9 = v218;
              if (v2 >= v7)
              {
                goto LABEL_526;
              }

              *&v274[24] = *(v174 + 8 * v2);
              v179 = 4;
            }

            goto LABEL_332;
          }

LABEL_323:
          v179 = 0;
LABEL_332:
          re::DynamicArray<double>::copy(location, location[2], v274, v179);
          if (++v175 == v173)
          {
            v181 = location[4];
            v182 = (8 * location[2]);
            goto LABEL_387;
          }
        }

        v178 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v262);
        if (v178 == -1)
        {
          goto LABEL_323;
        }

        v177 = (*(v24 + 216) + 8 * v178 + 4);
LABEL_322:
        v2 = *v177;
        if (v2 != -1)
        {
          goto LABEL_324;
        }

        goto LABEL_323;
      }

      v182 = 0;
      v181 = 0;
LABEL_387:
      re::Data::makeDataWithBytes(v181, v182, &v262);
      v271[0] = 0;
      LOBYTE(v271[1]) = -1;
      memset(&v271[2], 0, 24);
      re::ObjCObject::operator=(v271, &v262);
      LOBYTE(v271[1]) = 7;
LABEL_388:
      v271[2] = location[2];
      v205 = xmmword_1E30B5C10;
LABEL_389:
      *&v271[3] = v205;

      v207 = location[0];
      if (location[0])
      {
        goto LABEL_390;
      }

LABEL_392:
      v26 = v271[0];
      v271[0] = 0;
      v225 = v26;
      v208 = v271;
LABEL_399:
      v226 = *(v208 + 1);
      v227 = *(v208 + 3);

LABEL_400:
      v209 = *(v24 + 8);
      re::GeomModelDescriptor::setAttribute(&v244, &v262, *(v24 + 16), &v225, 0, v222);
      if ((v222[0] & 1) != 0 || !v223)
      {
        goto LABEL_406;
      }

      if (v224)
      {
        (*(*v223 + 40))();
      }

      v204 = v222;
LABEL_405:
      *(v204 + 40) = 0u;
      *(v204 + 24) = 0u;
LABEL_406:
      if (v262.n128_u64[0] && (v262.n128_u8[8] & 1) != 0)
      {
        (*(*v262.n128_u64[0] + 40))();
      }

      LODWORD(v5) = v5 + 1;
      if (v5 >= *(v9 + 640))
      {
        goto LABEL_410;
      }
    }

    v26 = 0;
    if (*(v23 + 17) <= 4u)
    {
      if (*(v23 + 17) <= 1u)
      {
        if (*(v23 + 17))
        {
          v90 = re::GeomAttribute::accessValues<int>(v23);
          if (!v91)
          {
            goto LABEL_536;
          }

          v92 = v90;
          v93 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(v92, (2 * v93), &v262);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v262);
          LOBYTE(location[1]) = 3;
        }

        else
        {
          v106 = re::GeomAttribute::accessValues<int>(v23);
          if (!v107)
          {
            goto LABEL_531;
          }

          v108 = v106;
          v109 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(v108, (2 * v109), &v262);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v262);
          LOBYTE(location[1]) = 2;
        }

        location[2] = (*(*v24 + 16))(v24);
        v110 = xmmword_1E3054780;
      }

      else
      {
        if (v25 == 2)
        {
          v167 = re::GeomAttribute::accessValues<int>(v23);
          if (!v168)
          {
            goto LABEL_540;
          }

          v169 = v167;
          v170 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(v169, (4 * v170), &v262);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v262);
          LOBYTE(location[1]) = 4;
        }

        else
        {
          if (v25 == 3)
          {
            v121 = re::GeomAttribute::accessValues<int>(v23);
            if (!v122)
            {
              goto LABEL_537;
            }

            v123 = v121;
            v124 = (*(*v24 + 16))(v24);
            re::Data::makeDataWithBytes(v123, (4 * v124), &v262);
            location[0] = 0;
            LOBYTE(location[1]) = -1;
            v2 = location;
            memset(&location[2], 0, 24);
            re::ObjCObject::operator=(location, &v262);
            v60 = 5;
          }

          else
          {
            v56 = re::GeomAttribute::accessValues<int>(v23);
            if (!v57)
            {
              goto LABEL_532;
            }

            v58 = v56;
            v59 = (*(*v24 + 16))(v24);
            re::Data::makeDataWithBytes(v58, (4 * v59), &v262);
            location[0] = 0;
            LOBYTE(location[1]) = -1;
            v2 = location;
            memset(&location[2], 0, 24);
            re::ObjCObject::operator=(location, &v262);
            v60 = 6;
          }

          LOBYTE(location[1]) = v60;
        }

        location[2] = (*(*v24 + 16))(v24);
        v110 = xmmword_1E3068150;
      }

      goto LABEL_363;
    }

    if (*(v23 + 17) > 7u)
    {
      switch(v25)
      {
        case 8:
          v199 = re::GeomAttribute::accessValues<int>(v23);
          if (!v200)
          {
            goto LABEL_539;
          }

          v201 = v199;
          v202 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(v201, (16 * v202), &v262);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v262);
          v43 = 10;
          goto LABEL_362;
        case 9:
          v151 = re::GeomAttribute::accessValues<int>(v23);
          if (!v152)
          {
            goto LABEL_535;
          }

          v153 = v151;
          v154 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(v153, v154, &v262);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v262);
          LOBYTE(location[1]) = 1;
          break;
        case 10:
          v74 = re::GeomAttribute::accessValues<int>(v23);
          if (!v75)
          {
            goto LABEL_530;
          }

          v76 = v74;
          v77 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(v76, v77, &v262);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v262);
          LOBYTE(location[1]) = 0;
          break;
        default:
          goto LABEL_364;
      }

      location[2] = (*(*v24 + 16))(v24);
      v110 = xmmword_1E3049620;
    }

    else
    {
      if (v25 == 5)
      {
        v183 = re::GeomAttribute::accessValues<int>(v23);
        if (!v184)
        {
          goto LABEL_534;
        }

        v185 = v183;
        v186 = (*(*v24 + 16))(v24);
        re::Data::makeDataWithBytes(v185, (8 * v186), &v262);
        location[0] = 0;
        LOBYTE(location[1]) = -1;
        v2 = location;
        memset(&location[2], 0, 24);
        re::ObjCObject::operator=(location, &v262);
        LOBYTE(location[1]) = 7;
      }

      else
      {
        if (v25 != 6)
        {
          v39 = re::GeomAttribute::accessValues<int>(v23);
          if (!v40)
          {
            goto LABEL_538;
          }

          v41 = v39;
          v42 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(v41, (16 * v42), &v262);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v262);
          v43 = 9;
LABEL_362:
          LOBYTE(location[1]) = v43;
          location[2] = (*(*v24 + 16))(v24);
          v110 = xmmword_1E30B4E30;
          goto LABEL_363;
        }

        v137 = re::GeomAttribute::accessValues<int>(v23);
        if (!v138)
        {
          goto LABEL_533;
        }

        v139 = v137;
        v140 = (*(*v24 + 16))(v24);
        re::Data::makeDataWithBytes(v139, (8 * v140), &v262);
        location[0] = 0;
        LOBYTE(location[1]) = -1;
        v2 = location;
        memset(&location[2], 0, 24);
        re::ObjCObject::operator=(location, &v262);
        LOBYTE(location[1]) = 8;
      }

      location[2] = (*(*v24 + 16))(v24);
      v110 = xmmword_1E30B5C10;
    }

LABEL_363:
    *&location[3] = v110;

    v26 = location[0];
    location[0] = 0;
    v225 = v26;
    v226 = *&location[1];
    v227 = *&location[3];

LABEL_364:
    v203 = *(v24 + 8);
    re::GeomModelDescriptor::setAttribute(&v244, &v262, *(v24 + 16), &v225, 0, v219);
    if ((v219[0] & 1) != 0 || !v220)
    {
      goto LABEL_406;
    }

    if (v221)
    {
      (*(*v220 + 40))();
    }

    v204 = v219;
    goto LABEL_405;
  }

LABEL_410:
  re::makeNSDataFromGeomArray<unsigned int>(location, v241);
  v211 = re::GeomModelDescriptor::validateIndexType(v210, LOBYTE(location[1]), &v262);
  if (location[0])
  {
    v14 = v217;
    if (!location[4])
    {
LABEL_428:
      v213 = 0;
      v22 = v271[2];
      v2 = v271[0];
      LOBYTE(v5) = v271[1];
      goto LABEL_429;
    }

    re::GeomModelDescriptor::makeCFDataPayload(v271, location);
    v212 = *(&v246 + 4);
    *(&v246 + 4) = v271[0];
    if (v212)
    {
    }

    v213 = 1;
  }

  else
  {
    v213 = 0;
    v22 = v271[2];
    v2 = v271[0];
    LOBYTE(v5) = v271[1];
    v14 = v217;
  }

LABEL_429:
  if (v262.n128_u8[0] & 1) == 0 && *(&v263 + 1) && (v264)
  {
    (*(**(&v263 + 1) + 40))(*(&v263 + 1), *(&v264 + 1));
  }

  if (v2)
  {
    v216 = v213;
  }

  else
  {
    v216 = 1;
  }

  if (v216 & 1) == 0 && (v5)
  {
    (*(*v2 + 40))(v2, v22);
  }

  re::Ok<re::GeomModelDescriptor,re::GeomModelDescriptor>(&v262, &v244);
  re::Result<re::GeomModelDescriptor,re::DetailedError>::Result(v14, &v262);
  if (v269)
  {
    if (BYTE8(v269))
    {
      (*(*v269 + 40))(v269, v270);
    }

    v270 = 0u;
    v269 = 0u;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v268);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v267);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v265);
  if (*(&v264 + 1))
  {

    *(&v264 + 1) = 0;
  }

  if (v264)
  {

    *&v264 = 0;
  }

  if (v262.n128_u64[1])
  {
  }

  if (v233[0] && v236)
  {
    (*(*v233[0] + 40))(v233[0], v236);
  }

  if (v237[0] && v239)
  {
    (*(*v237[0] + 40))(v237[0], v239);
  }

LABEL_455:
  if (v241[0] && v243)
  {
    (*(*v241[0] + 40))(v241[0], v243);
  }

LABEL_458:
  if (v255)
  {
    if (BYTE8(v255))
    {
      (*(*v255 + 40))(v214);
    }

    v256 = 0u;
    v255 = 0u;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v253[8]);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v251);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v247[7]);
  if (*&v247[5])
  {

    *&v247[5] = 0;
  }

  if (*&v247[3])
  {

    *&v247[3] = 0;
  }

  if (*(&v246 + 4))
  {
  }
}