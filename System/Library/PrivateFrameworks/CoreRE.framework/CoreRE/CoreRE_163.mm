uint64_t re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::TechniqueFunctionConstant>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::TechniqueFunctionConstant>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a1, *(a2 + 16));
    v15 = *(a2 + 32);
    v16 = a1[2];
    v17 = a1[4];
    if (v16)
    {
      v18 = 104 * v16;
      do
      {
        v19 = re::DynamicString::operator=(v17, v15);
        *(v19 + 2) = *(v15 + 32);
        v20 = *(v15 + 48);
        v21 = *(v15 + 64);
        v22 = *(v15 + 80);
        *(v19 + 24) = *(v15 + 96);
        *(v19 + 4) = v21;
        *(v19 + 5) = v22;
        *(v19 + 3) = v20;
        v15 += 104;
        v17 = (v19 + 104);
        v18 -= 104;
      }

      while (v18);
      v17 = a1[4];
      v16 = a1[2];
      v15 = *(a2 + 32);
    }

    if (v16 != v4)
    {
      v23 = 104 * v16;
      v24 = v15 + v23;
      v25 = (v17 + v23);
      v26 = 104 * v4 - v23;
      do
      {
        v27 = re::DynamicString::DynamicString(v25, v24);
        *(v27 + 2) = *(v24 + 32);
        v28 = *(v24 + 48);
        v29 = *(v24 + 64);
        v30 = *(v24 + 80);
        *(v27 + 24) = *(v24 + 96);
        *(v27 + 4) = v29;
        *(v27 + 5) = v30;
        *(v27 + 3) = v28;
        v24 += 104;
        v25 = (v27 + 104);
        v26 -= 104;
      }

      while (v26);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 104 * v4;
      do
      {
        v9 = re::DynamicString::operator=(v6, v7);
        *(v9 + 2) = *(v7 + 32);
        v10 = *(v7 + 48);
        v11 = *(v7 + 64);
        v12 = *(v7 + 80);
        *(v9 + 24) = *(v7 + 96);
        *(v9 + 4) = v11;
        *(v9 + 5) = v12;
        *(v9 + 3) = v10;
        v7 += 104;
        v6 = (v9 + 104);
        v8 -= 104;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v13 = (v6 + 104 * v4);
      v14 = 104 * v5 - 104 * v4;
      do
      {
        re::DynamicString::deinit(v13);
        v13 = (v13 + 104);
        v14 -= 104;
      }

      while (v14);
    }
  }

  a1[2] = v4;
}

__n128 std::__function::__func<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0,std::allocator<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03300;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0,std::allocator<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E6974060] alloc)];
  v20 = v2;
  v3 = *(a1 + 8);
  v4 = v3[1];
  if (v4)
  {
    v5 = 104 * v4;
    v6 = *v3 + 36;
    do
    {
      [v2 setConstantValue:v6 type:*(v6 - 4) atIndex:{*(v6 - 2), v20}];
      v6 += 104;
      v5 -= 104;
    }

    while (v5);
  }

  v7 = **(a1 + 16);
  v8 = **(a1 + 24);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  v10 = **(a1 + 32);
  v11 = *(a1 + 40);
  v12 = re::globalAllocators(v10)[2];
  v25 = v12;
  if (v12)
  {
    v13 = (*(*v12 + 32))(v12, 40, 0);
  }

  else
  {
    v13 = 0;
  }

  *v13 = &unk_1F5D03370;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v10;
  v13[4] = v11;
  v26 = v13;
  dispatch_group_enter(**(a1 + 32));
  v14 = *(*(a1 + 40) + 48);
  v15 = *(a1 + 64);
  v16 = **(a1 + 56);
  if (*(v15 + 8))
  {
    v17 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 9);
  }

  v18 = **(a1 + 72);
  v19 = **(a1 + 80);
  v22 = v12;
  v23 = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(v21, v24);
  **(a1 + 48) = re::ShaderManager::tryRequestFunctionReflection(v14, v16, v17, &v20, v18, v19, v21);
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(v21);
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(v24);
  if (v2)
  {
  }
}

uint64_t std::__function::__func<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0,std::allocator<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D03370;

  v2 = *(a1 + 16);
  if (v2)
  {

    *(a1 + 16) = 0;
  }

  return a1;
}

void re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D03370;

  v2 = *(a1 + 16);
  if (v2)
  {

    *(a1 + 16) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator()(uint64_t a1, void **a2)
{
  if (*a2)
  {
    v29 = 0;
    v30 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    NS::SharedPtr<MTL::Buffer>::operator=(&v26, a2);
    v30 = 1;
    v3 = *(a1 + 16);
    v31 = *(a1 + 8);
    os_unfair_lock_lock((v3 + 112));
    if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 120), &v31) == -1)
    {
      v4 = re::globalAllocators(0xFFFFFFFFFFFFFFFFLL);
      v5 = (*(*v4[2] + 32))(v4[2], 56, 8);
      *(v5 + 32) = 0;
      *(v5 + 16) = 0u;
      *(v5 + 8) = 0;
      v6 = v27;
      *v5 = v26;
      *(v5 + 16) = v6;
      v7 = *(&v27 + 1);
      *(v5 + 8) = *(&v26 + 1);
      *(v5 + 40) = 0;
      *(v5 + 24) = v7;
      v26 = 0u;
      v27 = 0u;
      *(v5 + 40) = v29;
      v29 = 0;
      ++v28;
      ++*(v5 + 32);
      *(v5 + 48) = v30;
      if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 120), &v31) == -1)
      {
        if (!*(v3 + 176))
        {
        }

        v9 = *(v3 + 152);
        if (!v9 || (v10 = *(v3 + 136), v10 > 8 * v9))
        {
          re::HashBrown<unsigned long,re::FunctionReflectionResult *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(v3 + 120);
          v10 = *(v3 + 136);
        }

        v11 = 0xBF58476D1CE4E5B9;
        v12 = 0x94D049BB133111EBLL;
        v13 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27))) >> 31);
        v14 = v10 >> 4;
        v15 = *(v3 + 120);
        v16 = v13 % v14;
        while (1)
        {
          v17 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v15 + 16 * v16)), xmmword_1E304FAD0)))), 0x3830282018100800)));
          if (v17 < 0x40)
          {
            break;
          }

          if (v16 + 1 == v14)
          {
            v16 = 0;
          }

          else
          {
            ++v16;
          }

          if (v16 == v13 % v14)
          {
            re::internal::assertLog(4, v8, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
            _os_crash();
            __break(1u);
            break;
          }
        }

        v18 = v15 + 16 * v16;
        v19 = *(v18 + v17);
        *(v18 + v17) = v13 & 0x7F;
        v20 = 16 * (v17 + 16 * v16);
        v21 = (*(v3 + 128) + v20);
        *v21 = v31;
        v21[1] = v5;
        if (v19 == 255)
        {
          v22 = -1;
        }

        else
        {
          v22 = 0;
        }

        v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v23.i64[1] = v22;
        *(v3 + 144) = vaddq_s64(*(v3 + 144), v23);
        v24 = *(*(v3 + 128) + v20) ^ (*(*(v3 + 128) + v20) >> 30);
        v25 = ((v24 * v11) ^ ((v24 * v11) >> 27)) * v12;
        *(v3 + 160) ^= (v25 >> 31) ^ v25;
      }
    }

    os_unfair_lock_unlock((v3 + 112));
    re::FunctionReflectionResult::~FunctionReflectionResult(&v26);
  }

  dispatch_group_leave(*(a1 + 24));
}

void *re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::cloneInto(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5D03370;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  a2[3] = v7;
  a2[4] = v8;
  return a2;
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleFunctionBuildTask(re::RenderManager &,re::Slice<re::TechniqueFunctionConstant>,unsigned long,re::DynamicString const&,unsigned long,re::dispatch::Group,BOOL,unsigned long long)::$_0::operator() const(void)::{lambda(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)#1},void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_1F5D03370;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a2 + 24) = v4;
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a1);
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
    re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a1);
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
        re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a2);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(uint64_t a1))(void)
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

re::mtl *re::mtl::convertToNSString(re::mtl *this, const char *a2)
{
  if (this)
  {
    this = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
    v2 = vars8;
  }

  return this;
}

void re::mtl::makeDefaultDevice(void *a1@<X8>)
{
  v3 = MTLCreateSystemDefaultDevice();
  if (v3)
  {
    v5 = v3;
    *a1 = v5;
  }

  else
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Unable to create default system Metal device.", "(mtlDevice != nullptr)", "makeDefaultDevice", 241);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::mtl::getTextureTypeName()
{
  v0 = MTLTextureTypeString();
  v1 = [v0 UTF8String];

  return v1;
}

uint64_t re::mtl::getTextureCompressionType(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  {
    v18 = a1;
    v11 = a4;
    a4 = v11;
    v14 = v12;
    a1 = v18;
    if (v14)
    {
      re::Defaults::BOOLValue("disableLossy", v13, &v20);
      if (v20)
      {
        v15 = BYTE1(v20);
      }

      else
      {
        v15 = 0;
      }

      re::mtl::getTextureCompressionType(re::mtl::Device const&,MTL::StorageMode const&,MTL::PixelFormat const&,unsigned long const&,MTL::TextureType const&)::disableLossyDefault = v15;
      a1 = v18;
      a4 = v11;
    }
  }

  {
    v16 = a1;
    v19 = a4;
    a4 = v19;
    if (v17)
    {
      re::mtl::getTextureCompressionType(re::mtl::Device const&,MTL::StorageMode const&,MTL::PixelFormat const&,unsigned long const&,MTL::TextureType const&)::lossyIsNotSupported = [*v16 supportsFamily:{1008, v19}] ^ 1;
      a4 = v19;
    }
  }

  if ((*a4 & 0x4002) == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*a4 >> 4) & 1;
  }

  if (*a3 == 32 || (v23 = 0, v21 = 0u, v22 = 0u, v20 = 0u, MTLPixelFormatGetInfoForDevice(), (WORD4(v20) & 0x400) != 0))
  {
    v9 = 1;
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v9 = (DWORD2(v20) & 0x4000000) == 0;
  }

  if (re::mtl::getTextureCompressionType(re::mtl::Device const&,MTL::StorageMode const&,MTL::PixelFormat const&,unsigned long const&,MTL::TextureType const&)::disableLossyDefault)
  {
    return 0;
  }

  else
  {
    return ~((*a5 < 0xAuLL) & (0x203u >> *a5) | v8 | re::mtl::getTextureCompressionType(re::mtl::Device const&,MTL::StorageMode const&,MTL::PixelFormat const&,unsigned long const&,MTL::TextureType const&)::lossyIsNotSupported | v9 | (*a2 != 2)) & 1;
  }
}

uint64_t re::mtl::Device::isPhysicalHardware(re::mtl::Device *this)
{
  if (qword_1EE1B7B28 != -1)
  {
    dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
  }

  return re::mtl::Device::isPhysicalHardware(void)const::result;
}

uint64_t ___ZNK2re3mtl6Device18isPhysicalHardwareEv_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    re::mtl::Device::isPhysicalHardware(void)const::result = v2 == 0;
  }

  return result;
}

uint64_t re::mtl::Device::isFrameCaptureEnabled(re::mtl::Device *this)
{
  v1 = [MEMORY[0x1E6974000] sharedCaptureManager];
  v2 = [v1 supportsDestination:2];

  return v2;
}

uint64_t re::mtl::Device::needsArgumentBufferTextureEmulation(id *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B30))
  {
    re::Defaults::BOOLValue("needsArgumentBufferTextureEmulation", v4, &byte_1EE1B7B22);
    __cxa_guard_release(&qword_1EE1B7B30);
  }

  if (byte_1EE1B7B22 == 1)
  {
    v2 = byte_1EE1B7B23;
  }

  else
  {
    if (qword_1EE1B7B28 != -1)
    {
      dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
    }

    if (re::mtl::Device::isPhysicalHardware(void)const::result == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1B7B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B40))
      {
        qword_1EE1B7B38 = [*this argumentBuffersSupport];
        __cxa_guard_release(&qword_1EE1B7B40);
      }

      v2 = qword_1EE1B7B38 == 0;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t re::mtl::Device::supportsArgumentBuffers(void **this, const char *a2)
{
  if (qword_1EE1B7B28 != -1)
  {
    dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
  }

  if (re::mtl::Device::isPhysicalHardware(void)const::result)
  {
    return 1;
  }

  re::Defaults::BOOLValue("enableArgumentBuffersInVMs", a2, v5);
  result = 0;
  if (v5[0] == 1 && (v5[1] & 1) != 0)
  {
    v4 = *this;

    return [v4 supportsArgumentBuffers];
  }

  return result;
}

uint64_t re::mtl::Device::supportsPrimitiveIdentifier(id *this)
{
  if ([*this supportsFamily:5001] & 1) != 0 || (objc_msgSend(*this, "supportsFamily:", 1007))
  {
    return 1;
  }

  v3 = *this;

  return [v3 supportsFamily:2002];
}

uint64_t re::mtl::Device::supportsDynamicAttributeStride(void **this)
{
  if (qword_1EE1B7B28 != -1)
  {
    dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
  }

  if (re::mtl::Device::isPhysicalHardware(void)const::result != 1)
  {
    return 0;
  }

  v2 = *this;

  return [v2 supportsDynamicAttributeStride];
}

void re::mtl::Device::makeCommandQueue(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this newCommandQueue];
  *a2 = v3;
}

uint64_t re::mtl::Device::makeCommandQueue@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 newCommandQueueWithDescriptor_];
  *a3 = v4;

  return [v4 setBackgroundGPUPriority:2];
}

void re::mtl::Device::newLibraryWithURL(void **this@<X0>, re::mtl *a2@<X1>, void *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  v7 = MEMORY[0x1E695DFF8];
  v9 = re::mtl::convertToNSString(a2, v8);
  v10 = [v7 fileURLWithPath:v9 isDirectory:0];

  v11 = *this;
  v28 = 0;
  v12 = [v11 newLibraryWithURL:v10 error:&v28];
  v13 = v28;
  v14 = v13;
  if (v12)
  {
    *a3 = v12;
  }

  else
  {
    v15 = *re::graphicsLogObjects(v13);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        v17 = v15;
        v18 = [(re *)v14 localizedDescription];
        v19 = [v18 UTF8String];
        *buf = 136315138;
        v30 = v19;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "newLibraryWithURL failed [%s].", buf, 0xCu);
      }
    }

    else if (v16)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "newLibraryWithURL failed.", buf, 2u);
    }

    *a3 = 0;
    v20 = *re::graphicsLogObjects(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "newLibraryWithURL failed.", buf, 2u);
    }
  }

  v21 = mach_absolute_time();
  v22 = v21;
  v23 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v21 = mach_timebase_info(buf);
    if (v21)
    {
      v26 = NAN;
      goto LABEL_15;
    }

    LODWORD(v24) = *buf;
    LODWORD(v25) = v30;
    v23 = v24 / v25;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v23;
  }

  v26 = v23 * (v22 - v6);
LABEL_15:
  v27 = *re::graphicsLogObjects(v21);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = a2;
    v31 = 1024;
    v32 = (v26 / 1000000.0);
    _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "MTLLibrary %s newLibraryWithURL %dms", buf, 0x12u);
  }
}

void re::mtl::Device::newLibraryWithData(void **this@<X0>, re::mtl *a2@<X1>, re **a3@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  v9 = re::mtl::convertToNSString(a2, v8);
  v39 = 0;
  v10 = [v7 initWithContentsOfFile:v9 options:1 error:&v39];
  v11 = v39;

  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZNK2re3mtl6Device18newLibraryWithDataEPKc_block_invoke;
    aBlock[3] = &unk_1E871AA90;
    v13 = v10;
    v38 = v13;
    v14 = _Block_copy(aBlock);
    v15 = dispatch_data_create([v13 bytes], objc_msgSend(v13, "length"), 0, v14);
    v16 = *this;
    v36 = 0;
    v17 = [v16 newLibraryWithData:v15 error:&v36];
    v18 = v36;
    v19 = v18;
    if (v17)
    {

      v20 = v17;
      *a3 = v20;
      goto LABEL_16;
    }

    v22 = *re::graphicsLogObjects(v18);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v23)
      {
        log = v22;
        v35 = [(re *)v19 localizedDescription];
        v24 = [v35 UTF8String];
        *buf = 136315138;
        v41 = v24;
        _os_log_error_impl(&dword_1E1C61000, log, OS_LOG_TYPE_ERROR, "newLibraryWithData failed [%s].", buf, 0xCu);
      }
    }

    else if (v23)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "newLibraryWithData failed.", buf, 2u);
    }
  }

  else
  {
    v21 = *re::graphicsLogObjects(v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v41 = a2;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "newLibraryWithData failed to open the file [%s].", buf, 0xCu);
    }
  }

  v25 = 0;
  *a3 = v25;
  v26 = *re::graphicsLogObjects(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "newLibraryWithData failed.", buf, 2u);
  }

  v20 = 0;
LABEL_16:
  v27 = mach_absolute_time();
  v28 = v27;
  v29 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v27 = mach_timebase_info(buf);
    if (v27)
    {
      v32 = NAN;
      goto LABEL_21;
    }

    LODWORD(v30) = *buf;
    LODWORD(v31) = v41;
    v29 = v30 / v31;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v29;
  }

  v32 = v29 * (v28 - v6);
LABEL_21:
  v33 = *re::graphicsLogObjects(v27);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = a2;
    v42 = 1024;
    v43 = (v32 / 1000000.0);
    _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "MTLLibrary %s newLibraryWithData %dms", buf, 0x12u);
  }
}

uint64_t re::mtl::Device::setMPSBinaryArchives(id *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a2 + 16)];
  if (*(a2 + 16))
  {
    v6 = 0;
    do
    {
      [v5 addObject:*(*(a2 + 32) + 8 * v6++)];
    }

    while (*(a2 + 16) > v6);
  }

  re::Defaults::BOOLValue("mpsFailOnMiss", v4, &v9);
  v7 = MPSSetBinaryArchives();

  return v7;
}

void re::mtl::Device::makeComputePipelineState(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [*a1 newComputePipelineStateWithDescriptor:*a2 options:0 reflection:0 error:&v11];
  *a3 = v4;
  if (!v4)
  {
    v5 = v11;
    v6 = *re::graphicsLogObjects(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        v8 = v11;
        v9 = v6;
        v10 = [objc_msgSend(v8 localizedDescription)];
        *buf = 136315138;
        v13 = v10;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "makeComputePipelineState failed [%s].", buf, 0xCu);
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "makeComputePipelineState failed.", buf, 2u);
    }
  }
}

void re::mtl::Device::makeRenderPipelineState(id *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = 0;
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (a3)
  {
    if (qword_1EE1B7B28 != -1)
    {
      dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
    }

    if (re::mtl::Device::isPhysicalHardware(void)const::result)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = [*a1 newRenderPipelineStateWithDescriptor:a2 options:v7 reflection:0 error:&v15];
  *a4 = v8;
  if (!v8)
  {
    v9 = v15;
    v10 = *re::graphicsLogObjects(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v11)
      {
        v12 = v15;
        v13 = v10;
        v14 = [objc_msgSend(v12 localizedDescription)];
        *buf = 136315138;
        v17 = v14;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "makeRenderPipelineState failed [%s].", buf, 0xCu);
      }
    }

    else if (v11)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "makeRenderPipelineState failed.", buf, 2u);
    }
  }
}

void re::mtl::Device::makeBinaryArchive(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [*a1 newBinaryArchiveWithDescriptor:*a2 error:&v11];
  if (!v4)
  {
    v5 = v11;
    v6 = *re::graphicsLogObjects(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        v8 = v11;
        v9 = v6;
        v10 = [objc_msgSend(v8 localizedDescription)];
        *buf = 136315138;
        v13 = v10;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "makeBinaryArchive failed [%s].", buf, 0xCu);
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "makeBinaryArchive failed.", buf, 2u);
    }
  }

  *a3 = v4;
}

void re::mtl::Device::makeRenderPipelineState(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [*a1 newRenderPipelineStateWithTileDescriptor:a2 options:0 reflection:0 error:&v11];
  *a3 = v4;
  if (!v4)
  {
    v5 = v11;
    v6 = *re::graphicsLogObjects(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        v8 = v11;
        v9 = v6;
        v10 = [objc_msgSend(v8 localizedDescription)];
        *buf = 136315138;
        v13 = v10;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "makeRenderPipelineState failed [%s].", buf, 0xCu);
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "makeRenderPipelineState failed.", buf, 2u);
    }
  }
}

id re::mtl::Device::makeTexture@<X0>(id a1@<X1>, id *a2@<X0>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EE1B7B28 != -1)
  {
    dispatch_once(&qword_1EE1B7B28, &__block_literal_global_36);
  }

  if ((re::mtl::Device::isPhysicalHardware(void)const::result & 1) == 0)
  {
    [a1 pixelFormat];
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    MTLPixelFormatGetInfoForDevice();
  }

  v6 = [a1 width];
  if (v6 <= 0x4000 && (v6 = [a1 height], v6 <= 0x4000))
  {
    result = [*a2 newTextureWithDescriptor_];
  }

  else
  {
    v7 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = [a1 width];
      v11 = [a1 height];
      LODWORD(v12[0]) = 134218240;
      *(v12 + 4) = v10;
      WORD6(v12[0]) = 2048;
      *(v12 + 14) = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Texture too large with dimensions %zu x %zu", v12, 0x16u);
    }

    result = 0;
  }

  *a3 = result;
  return result;
}

id re::mtl::Device::makeTextureWithIOSurface@<X0>(id a1@<X1>, id *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = [a1 width];
  if (v10 <= 0x4000 && (v10 = [a1 height], v10 <= 0x4000))
  {
    result = [*a2 newTextureWithDescriptor:a1 iosurface:a3 plane:a4];
  }

  else
  {
    v11 = *re::graphicsLogObjects(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      v14 = 134218240;
      v15 = [a1 width];
      v16 = 2048;
      v17 = [a1 height];
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Texture too large with dimensions %zu x %zu", &v14, 0x16u);
    }

    result = 0;
  }

  *a5 = result;
  return result;
}

id re::mtl::Device::makeSharedTexture@<X0>(id a1@<X1>, id *a2@<X0>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a1 width];
  if (v6 <= 0x4000 && (v6 = [a1 height], v6 <= 0x4000))
  {
    result = [*a2 newSharedTextureWithDescriptor_];
  }

  else
  {
    v7 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = 134218240;
      v11 = [a1 width];
      v12 = 2048;
      v13 = [a1 height];
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Texture too large with dimensions %zu x %zu", &v10, 0x16u);
    }

    result = 0;
  }

  *a3 = result;
  return result;
}

void re::mtl::Device::makeArgumentEncoder(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
  *a3 = [*a1 newArgumentEncoderWithArguments_];
  if (v5)
  {
  }
}

id re::mtl::Device::areProgrammableSamplePositionsSupported(id *this)
{
  v1 = *this;
  if (([*this respondsToSelector_] & 1) != 0 || (result = objc_msgSend(v1, sel_methodSignatureForSelector_, sel_areProgrammableSamplePositionsSupported)) != 0)
  {

    return [v1 areProgrammableSamplePositionsSupported];
  }

  return result;
}

void re::mtl::Device::newCounterSampleBufferWithDescriptor(void **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  v6 = v5;
  v7 = [v4 newCounterSampleBufferWithDescriptor:v6 error:&v15];
  v8 = v15;

  if (v8)
  {
    v10 = *re::graphicsLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = [v8 localizedDescription];
      v14 = [v13 UTF8String];
      *buf = 136315138;
      v17 = v14;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "newCounterSampleBufferWithDescriptor failed: %s", buf, 0xCu);
    }

    *a3 = 0;
  }

  else
  {
    *a3 = v7;
    v11 = v7;
  }
}

void re::mtl::Device::getCounterSet(id *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 1:
      v5 = MEMORY[0x1E6973F88];
      goto LABEL_7;
    case 4:
      v5 = MEMORY[0x1E6973F80];
      goto LABEL_7;
    case 2:
      v5 = MEMORY[0x1E6973F78];
LABEL_7:
      v6 = *v5;
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [*a1 counterSets];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 name];

        if (v13 == v6)
        {
          *a3 = v12;
          v14 = v12;

          goto LABEL_19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  *a3 = 0;
LABEL_19:
}

void re::mtl::CommandQueue::makeCommandBuffer(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this commandBuffer];
  *a2 = v3;
}

void re::mtl::CommandQueue::makeCommandBufferWithUnretainedReferences(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this commandBufferWithUnretainedReferences];
  *a2 = v3;
}

void re::mtl::CommandQueue::makeCommandBufferWithDescriptor(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 commandBufferWithDescriptor:a2];
  *a3 = v4;
}

void re::mtl::CommandQueue::device(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this device];
  *a2 = v3;
}

uint64_t re::mtl::CommandBuffer::getLabel(id *this)
{
  v2 = *this;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*this label];
    v4 = [v3 UTF8String];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t (***re::mtl::CommandBuffer::addCompletionHandler(void **a1, uint64_t a2))(void)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZNK2re3mtl13CommandBuffer20addCompletionHandlerENS_8FunctionIFvRKS1_EEE_block_invoke;
  v4[3] = &__block_descriptor_72_a8_32c48_ZTSN2re8FunctionIFvRKNS_3mtl13CommandBufferEEEE_e28_v16__0___MTLCommandBuffer__8l;
  v5[3] = *(a2 + 24);
  v5[4] = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v5, a2);
  [v2 addCompletedHandler:v4];
  return re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v5);
}

void ___ZNK2re3mtl13CommandBuffer20addCompletionHandlerENS_8FunctionIFvRKS1_EEE_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 64);
  v4 = *(*v3 + 16);

  v4(v3, &v5);
}

uint64_t __copy_helper_block_a8_32c48_ZTSN2re8FunctionIFvRKNS_3mtl13CommandBufferEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  return re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a1 + 32, a2 + 32);
}

void ___ZNK2re3mtl13CommandBuffer38addCompletionHandlerPrintLabelForDebugEv_block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v7 = v2;
  v3 = [v2 status];
  if (v3 == 5)
  {
    v4 = *re::graphicsLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      Label = re::mtl::CommandBuffer::getLabel(&v7);
      *buf = 136315138;
      v9 = Label;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed CB %s!\n", buf, 0xCu);
    }
  }
}

uint64_t (***re::mtl::CommandBuffer::addScheduledHandler(void **a1, uint64_t a2))(void)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZNK2re3mtl13CommandBuffer19addScheduledHandlerENS_8FunctionIFvRKS1_EEE_block_invoke;
  v4[3] = &__block_descriptor_72_a8_32c48_ZTSN2re8FunctionIFvRKNS_3mtl13CommandBufferEEEE_e28_v16__0___MTLCommandBuffer__8l;
  v5[3] = *(a2 + 24);
  v5[4] = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v5, a2);
  [v2 addScheduledHandler:v4];
  return re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v5);
}

void ___ZNK2re3mtl13CommandBuffer19addScheduledHandlerENS_8FunctionIFvRKS1_EEE_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 64);
  v4 = *(*v3 + 16);

  v4(v3, &v5);
}

void re::mtl::CommandBuffer::makeRenderCommandEncoder(id *a1@<X0>, uint64_t a2@<X1>, re **a3@<X8>)
{
  v4 = [*a1 renderCommandEncoderWithDescriptor:a2];
  re::mtl::RenderCommandEncoder::RenderCommandEncoder(a3, v4);
}

void re::mtl::CommandBuffer::makeParallelRenderCommandEncoder(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 parallelRenderCommandEncoderWithDescriptor:a2];
  *a3 = v4;
}

void re::mtl::CommandBuffer::makeBlitCommandEncoder(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this blitCommandEncoder];
  *a2 = v3;
}

void re::mtl::CommandBuffer::makeComputeCommandEncoder(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this computeCommandEncoder];
  *a2 = v3;
}

void re::mtl::CommandBuffer::makeComputeCommandEncoder(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 computeCommandEncoderWithDescriptor:a2];
  *a3 = v4;
}

void re::mtl::CommandBuffer::commandQueue(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this commandQueue];
  *a2 = v3;
}

void re::mtl::CommandBuffer::error(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this error];
  *a2 = v3;
}

re **re::mtl::RenderCommandEncoder::RenderCommandEncoder(re **a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  v4 = re::globalAllocators(v3);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  v6 = v5;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 16) = 0u;
  if (v3)
  {
    re::mtl::RenderEncoderImpCache::build(v5, v3);
  }

  a1[1] = v6;

  return a1;
}

re::mtl::RenderCommandEncoder *re::mtl::RenderCommandEncoder::RenderCommandEncoder(re::mtl::RenderCommandEncoder *this, id *a2)
{
  v4 = *a2;
  *this = v4;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 272, 8);
  v7 = a2[1];
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[13] = 0u;
  v6[14] = 0u;
  v6[15] = 0u;
  v6[16] = 0u;
  memcpy(v6, v7, 0x110uLL);
  *(this + 1) = v6;
  return this;
}

void re::mtl::RenderCommandEncoder::~RenderCommandEncoder(re::mtl::RenderCommandEncoder *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v2);
  }
}

id *re::mtl::RenderCommandEncoder::operator=(id *location, id *a2)
{
  if (location != a2)
  {
    re::ObjCObject::operator=(location, a2);
    re::mtl::RenderEncoderImpCache::build(location[1], *location);
  }

  return location;
}

int *re::mtl::RenderCommandEncoder::setLabel(uint64_t **this, void **a2)
{
  result = re::AppleBuild::get(this);
  if (*result == 1)
  {
    v5 = this[1];
    v6 = *a2;
    v7 = v6;
    v8 = *v5;
    v9 = v5[32];

    return v9(v8, sel_setLabel_, v6);
  }

  return result;
}

void re::mtl::RenderCommandEncoder::insertDebugSignpost(void **this, re::mtl *a2)
{
  v2 = *this;
  v3 = re::mtl::convertToNSString(a2, a2);
  [v2 insertDebugSignpost:v3];
}

uint64_t re::mtl::RenderCommandEncoder::setViewports(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    v5 = &v12[-2 * v4 + 4];
    v6 = v2 + 2;
    v7 = 1;
    do
    {
      v8 = vcvtq_f64_f32(v6[-1]);
      v5[-2] = vcvtq_f64_f32(v6[-2]);
      v5[-1] = v8;
      v9 = *v6;
      v6 += 3;
      v10 = v7;
      *v5 = vcvtq_f64_f32(v9);
      v5 += 3;
      ++v7;
    }

    while (v10 < v3);
  }

  return [*v1 setViewports:? count:?];
}

int *re::mtl::ParallelRenderCommandEncoder::setLabel(re::mtl::ParallelRenderCommandEncoder *this, const re::ns::String *a2)
{
  result = re::AppleBuild::get(this);
  if (*result == 1)
  {
    v5 = *this;
    v6 = *a2;

    return [v5 setLabel:v6];
  }

  return result;
}

void re::mtl::ParallelRenderCommandEncoder::makeRenderCommandEncoder(id *this@<X0>, re **a2@<X8>)
{
  v3 = [*this renderCommandEncoder];
  re::mtl::RenderCommandEncoder::RenderCommandEncoder(a2, v3);
}

void re::mtl::BlitCommandEncoder::generateMipmaps(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = mach_absolute_time();
  [*a1 generateMipmapsForTexture:a2];
  v5 = mach_absolute_time();
  v6 = v5;
  v7 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v5 = mach_timebase_info(&v21);
    if (v5)
    {
      v10 = NAN;
      goto LABEL_6;
    }

    LODWORD(v8) = v21;
    LODWORD(v9) = v22;
    v7 = v8 / v9;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v7;
  }

  v10 = v7 * (v6 - v4);
LABEL_6:
  v11 = (v10 / 1000000.0);
  if (v11 >= 11)
  {
    v12 = *re::graphicsLogObjects(v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [a2 pixelFormat];
      v15 = [a2 sampleCount];
      v16 = [a2 width];
      v17 = [a2 height];
      v18 = [a2 depth];
      v19 = [a2 arrayLength];
      v20 = [a2 textureType];
      v21 = 134219776;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      v31 = 2048;
      v32 = v19;
      v33 = 2048;
      v34 = v20;
      v35 = 1024;
      v36 = v11;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader generateMipmaps p=%zu sc=%zu w=%zu h=%zu d=%zu ar=%zu t=%zu in %d", &v21, 0x4Eu);
    }
  }
}

void re::mtl::BlitCommandEncoder::bufferCopy(id *this, Buffer *a2, uint64_t a3, Buffer *a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = mach_absolute_time();
  [*this copyFromBuffer:a2 sourceOffset:a3 toBuffer:a4 destinationOffset:a5 size:a6];
  v13 = mach_absolute_time();
  v14 = v13;
  v15 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v13 = mach_timebase_info(&v21);
    if (v13)
    {
      v18 = NAN;
      goto LABEL_6;
    }

    LODWORD(v16) = v21;
    LODWORD(v17) = v22;
    v15 = v16 / v17;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v15;
  }

  v18 = v15 * (v14 - v12);
LABEL_6:
  v19 = (v18 / 1000000.0);
  if (v19 >= 11)
  {
    v20 = *re::graphicsLogObjects(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 134218496;
      v22 = a3;
      v23 = 2048;
      v24 = a5;
      v25 = 1024;
      v26 = v19;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader bufferCopy s=%zu d=%zu in %d", &v21, 0x1Cu);
    }
  }
}

void re::mtl::BlitCommandEncoder::textureCopy(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  [*a1 copyFromTexture:a2 toTexture:a3];
  v7 = mach_absolute_time();
  v8 = v7;
  v9 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v7 = mach_timebase_info(&v20);
    if (v7)
    {
      v12 = NAN;
      goto LABEL_6;
    }

    LODWORD(v10) = v20;
    LODWORD(v11) = v21;
    v9 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v9;
  }

  v12 = v9 * (v8 - v6);
LABEL_6:
  v13 = (v12 / 1000000.0);
  if (v13 >= 11)
  {
    v14 = *re::graphicsLogObjects(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [a2 pixelFormat];
      v17 = [a2 sampleCount];
      v18 = [a3 pixelFormat];
      v19 = [a3 sampleCount];
      v20 = 134219008;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      v24 = 2048;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      v28 = 1024;
      v29 = v13;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader textureCopy sp=%zu ssc=%zu dp=%zu dsc=%zu in %d", &v20, 0x30u);
    }
  }
}

void re::mtl::BlitCommandEncoder::textureCopy(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v74 = *MEMORY[0x1E69E9840];
  v36 = mach_absolute_time();
  v21 = *a1;
  v34 = a5;
  v35 = a6;
  *info = a5;
  *&info[8] = a6;
  *&info[16] = a7;
  v41[3] = a8;
  v41[4] = a9;
  v41[5] = a10;
  v41[0] = a14;
  v41[1] = a15;
  v41[2] = a16;
  [v21 copyFromTexture:a12 sourceSlice:a13 sourceLevel:v41 sourceOrigin:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  v22 = mach_absolute_time();
  v23 = v22;
  v24 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v22 = mach_timebase_info(info);
    if (v22)
    {
      v27 = NAN;
      goto LABEL_6;
    }

    LODWORD(v25) = *info;
    LODWORD(v26) = *&info[4];
    v24 = v25 / v26;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v24;
  }

  v27 = v24 * (v23 - v36);
LABEL_6:
  v28 = (v27 / 1000000.0);
  if (v28 >= 11)
  {
    v29 = *re::graphicsLogObjects(v22);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v37 = v29;
      v33 = [a2 pixelFormat];
      v30 = [a2 sampleCount];
      v31 = [a11 pixelFormat];
      v32 = [a11 sampleCount];
      *info = 134222336;
      *&info[4] = v33;
      *&info[12] = 2048;
      *&info[14] = v30;
      *&info[22] = 2048;
      v43 = a3;
      v44 = 2048;
      v45 = a4;
      v46 = 2048;
      v47 = v34;
      v48 = 2048;
      v49 = v35;
      v50 = 2048;
      v51 = a7;
      v52 = 2048;
      v53 = a8;
      v54 = 2048;
      v55 = a9;
      v56 = 2048;
      v57 = a10;
      v58 = 2048;
      v59 = v31;
      v60 = 2048;
      v61 = v32;
      v62 = 2048;
      v63 = a12;
      v64 = 2048;
      v65 = a13;
      v66 = 2048;
      v67 = a14;
      v68 = 2048;
      v69 = a15;
      v70 = 2048;
      v71 = a16;
      v72 = 1024;
      v73 = v28;
      _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader textureCopy sp=%zu ssc=%zu ss=%zu sl=%zu so=(%zu %zu %zu) ss=(%zu %zu %zu) dp=%zu dsc=%zu do=(%zu %zu %zu) ds=%zu dl=%zu in %d", info, 0xB2u);
    }
  }
}

void re::mtl::BlitCommandEncoder::copyFromBufferToTexture(void **a1, void **a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v77 = *MEMORY[0x1E69E9840];
  v16 = mach_absolute_time();
  v17 = *a1;
  v18 = *a2;
  v19 = *a3;
  v20 = a3[1];
  v45 = a3;
  v47 = a4;
  v21 = a3[2];
  v22 = a4[2];
  *info = *a4;
  *&info[16] = v22;
  v23 = v18;
  v24 = a8[2];
  v49 = a8;
  v50 = a7;
  v51 = *a8;
  v52 = v24;
  v43 = a7;
  v25 = a6;
  [v17 copyFromBuffer:v23 sourceOffset:v19 sourceBytesPerRow:v20 sourceBytesPerImage:v21 sourceSize:info toTexture:a5 destinationSlice:a6 destinationLevel:v43 destinationOrigin:&v51];

  v26 = mach_absolute_time();
  v27 = v26;
  v28 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v26 = mach_timebase_info(info);
    if (v26)
    {
      v31 = NAN;
      goto LABEL_6;
    }

    LODWORD(v29) = *info;
    LODWORD(v30) = *&info[4];
    v28 = v29 / v30;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v28;
  }

  v31 = v28 * (v27 - v16);
LABEL_6:
  v32 = (v31 / 1000000.0);
  if (v32 >= 11)
  {
    v33 = *re::graphicsLogObjects(v26);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v35 = *v45;
      v34 = v45[1];
      v36 = v45[2];
      v44 = *v47;
      v46 = v47[1];
      v48 = v47[2];
      v37 = v33;
      v38 = [a5 pixelFormat];
      v39 = [a5 sampleCount];
      v40 = *v49;
      v41 = v49[1];
      v42 = v49[2];
      *info = 134221312;
      *&info[4] = v35;
      *&info[12] = 2048;
      *&info[14] = v34;
      *&info[22] = 2048;
      v54 = v36;
      v55 = 2048;
      v56 = v44;
      v57 = 2048;
      v58 = v46;
      v59 = 2048;
      v60 = v48;
      v61 = 2048;
      v62 = v38;
      v63 = 2048;
      v64 = v39;
      v65 = 2048;
      v66 = v25;
      v67 = 2048;
      v68 = v50;
      v69 = 2048;
      v70 = v40;
      v71 = 2048;
      v72 = v41;
      v73 = 2048;
      v74 = v42;
      v75 = 1024;
      v76 = v32;
      _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader copyFromBufferToTexture so=%llu sbpr=%llu sbpi=%llu ss=(%zu, %zu, %zu) p=%zu sc=%zu ds=%zu dl=%zu do=(%zu, %zu, %zu) in %d", info, 0x8Au);
    }
  }
}

void re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int128 *a6, id *a7, void *a8)
{
  v86 = *MEMORY[0x1E69E9840];
  v16 = mach_absolute_time();
  v17 = *a1;
  v18 = a5[2];
  *info = *a5;
  *&info[16] = v18;
  v19 = *(a6 + 2);
  v48 = *a6;
  v49 = v19;
  [v17 copyFromTexture:a2 sourceSlice:a3 sourceLevel:a4 sourceOrigin:info sourceSize:&v48 toBuffer:*a7 destinationOffset:*a8 destinationBytesPerRow:a8[1] destinationBytesPerImage:a8[2]];
  v20 = mach_absolute_time();
  v21 = v20;
  v22 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v20 = mach_timebase_info(info);
    if (v20)
    {
      v25 = NAN;
      goto LABEL_6;
    }

    LODWORD(v23) = *info;
    LODWORD(v24) = *&info[4];
    v22 = v23 / v24;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v22;
  }

  v25 = v22 * (v21 - v16);
LABEL_6:
  v26 = (v25 / 1000000.0);
  if (v26 >= 11)
  {
    v27 = *re::graphicsLogObjects(v20);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      v46 = [a2 pixelFormat];
      v45 = [a2 sampleCount];
      v44 = [a2 textureType];
      v43 = [a2 arrayLength];
      v42 = [a2 width];
      v28 = [a2 height];
      v29 = [a2 usage];
      v31 = *a5;
      v30 = a5[1];
      v32 = a5[2];
      v33 = *(a6 + 1);
      v37 = v30;
      v38 = *a6;
      v34 = *(a6 + 2);
      v39 = v33;
      v40 = *a8;
      v41 = a8[1];
      v35 = a8[2];
      v36 = [*a7 length];
      *info = 134222848;
      *&info[4] = v46;
      *&info[12] = 2048;
      *&info[14] = v45;
      *&info[22] = 2048;
      v51 = v44;
      v52 = 2048;
      v53 = v43;
      v54 = 2048;
      v55 = v42;
      v56 = 2048;
      v57 = v28;
      v58 = 2048;
      v59 = v29;
      v60 = 2048;
      v61 = a3;
      v62 = 2048;
      v63 = a4;
      v64 = 2048;
      v65 = v31;
      v66 = 2048;
      v67 = v37;
      v68 = 2048;
      v69 = v32;
      v70 = 2048;
      v71 = v38;
      v72 = 2048;
      v73 = v39;
      v74 = 2048;
      v75 = v34;
      v76 = 2048;
      v77 = v40;
      v78 = 2048;
      v79 = v41;
      v80 = 2048;
      v81 = v35;
      v82 = 2048;
      v83 = v36;
      v84 = 1024;
      v85 = v26;
      _os_log_error_impl(&dword_1E1C61000, log, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader copyFromTextureToBuffer p=%zu sc=%zu t=%zu al=%zu w=%zu h=%zu u=%zu ss=%zu sl=%zu so=(%zu, %zu, %zu) ss=(%zu, %zu, %zu) do=%llu dbpr=%llu dbpi=%llu l=%zu in %d", info, 0xC6u);
    }
  }
}

void re::mtl::BlitCommandEncoder::fillBuffer(id *this, Buffer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = mach_absolute_time();
  [*this fillBuffer:a2 range:a3 value:{a4, a5}];
  v11 = mach_absolute_time();
  v12 = v11;
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v11 = mach_timebase_info(&v19);
    if (v11)
    {
      v16 = NAN;
      goto LABEL_6;
    }

    LODWORD(v14) = v19;
    LODWORD(v15) = v20;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v16 = v13 * (v12 - v10);
LABEL_6:
  v17 = (v16 / 1000000.0);
  if (v17 >= 11)
  {
    v18 = *re::graphicsLogObjects(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218752;
      v20 = a3;
      v21 = 2048;
      v22 = a4;
      v23 = 1024;
      v24 = a5;
      v25 = 1024;
      v26 = v17;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "PSO compilation completed for driver shader fillBuffer o=%zu s=%zu v=%hhu in %d", &v19, 0x22u);
    }
  }
}

void re::mtl::ComputeCommandEncoder::pushDebugGroup(void **this, re::mtl *a2)
{
  v2 = *this;
  v3 = re::mtl::convertToNSString(a2, a2);
  [v2 pushDebugGroup:v3];
}

void re::mtl::Drawable::texture(id *this@<X0>, void *a2@<X8>)
{
  v4 = [*this texture];
  *a2 = v4;
  v3 = v4;
}

uint64_t (***re::mtl::Drawable::addPresentedHandler(void **a1, uint64_t a2))(void)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZNK2re3mtl8Drawable19addPresentedHandlerENS_8FunctionIFvRKS1_EEE_block_invoke;
  v4[3] = &__block_descriptor_72_a8_32c42_ZTSN2re8FunctionIFvRKNS_3mtl8DrawableEEEE_e23_v16__0___MTLDrawable__8l;
  v5[3] = *(a2 + 24);
  v5[4] = 0;
  re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::operator=<24ul>(v5, a2);
  [v2 addPresentedHandler:v4];
  return re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(v5);
}

void ___ZNK2re3mtl8Drawable19addPresentedHandlerENS_8FunctionIFvRKS1_EEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  (*(**(a1 + 64) + 16))(*(a1 + 64), &v1);
}

uint64_t __copy_helper_block_a8_32c42_ZTSN2re8FunctionIFvRKNS_3mtl8DrawableEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  return re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::operator=<24ul>(a1 + 32, a2 + 32);
}

void re::mtl::Layer::nextDrawable(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this nextDrawable];
  *a2 = v3;
}

void re::mtl::Library::makeFunction(void **this@<X0>, re::mtl *a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = re::mtl::convertToNSString(a2, a2);
  v7 = [v5 newFunctionWithName:v6];
  *a3 = v7;
  v8 = v7;

  if (!v7)
  {
    v10 = *re::graphicsLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = a2;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "makeFunction failed for function name: %s.", &v11, 0xCu);
    }
  }
}

void re::mtl::Library::makeFunctionWithDescriptor(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v6 = [*a1 newFunctionWithDescriptor:a2 error:&v40];
  if (v6)
  {
    if ([a2 constantValues])
    {
      v7 = [a2 name];
      v8 = [*a1 newFunctionWithName_];
      v9 = [a2 constantValues];
      if ((atomic_load_explicit(&qword_1EE1B7B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B48))
      {
        re::Defaults::BOOLValue("enableFunctionConstantLabels", v34, buf);
        if (buf[0])
        {
          v35 = buf[1];
        }

        else
        {
          v35 = 0;
        }

        _MergedGlobals_427 = v35;
        __cxa_guard_release(&qword_1EE1B7B48);
      }

      if (_MergedGlobals_427)
      {
        v37 = v6;
        v38 = a3;
        v10 = [v8 functionConstantsDictionary];
        v36 = v8;
        std::string::basic_string[abi:nn200100]<0>(&v39, [objc_msgSend(v8 name)]);
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v42 objects:buf count:16];
        if (!v12)
        {
          goto LABEL_33;
        }

        v13 = v12;
        v14 = *v43;
        while (1)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v42 + 1) + 8 * i);
            v17 = [v11 objectForKeyedSubscript:v16];
            if (!v9 || (v18 = [v9 constantValueWithFunctionConstant:v17]) == 0)
            {
              if ([v17 type] != 53)
              {
                goto LABEL_31;
              }

              v21 = &off_1E871E7E8;
              v22 = 176;
              while (1)
              {
                v23 = *(v21 - 2);
                if ([v17 index] == v23)
                {
                  break;
                }

                v21 += 2;
                v22 -= 16;
                if (!v22)
                {
                  goto LABEL_31;
                }
              }

              v26 = *v21;
              std::string::append(&v39, "-");
              v20 = v26;
              goto LABEL_30;
            }

            v19 = v18;
            if ([v17 type] == 53)
            {
              if ([v17 type] == 53 && *v19 == 1)
              {
                std::string::append(&v39, "-");
                v20 = [v16 UTF8String];
LABEL_30:
                std::string::append(&v39, v20);
              }
            }

            else
            {
              std::string::append(&v39, "-");
              std::string::append(&v39, [v16 UTF8String]);
              std::string::append(&v39, ":");
              std::to_string(&v41, *v19);
              if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v24 = &v41;
              }

              else
              {
                v24 = v41.__r_.__value_.__r.__words[0];
              }

              if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v41.__r_.__value_.__l.__size_;
              }

              std::string::append(&v39, v24, size);
              if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v41.__r_.__value_.__l.__data_);
              }
            }

LABEL_31:
          }

          v13 = [v11 countByEnumeratingWithState:&v42 objects:buf count:16];
          if (!v13)
          {
LABEL_33:

            v6 = v37;
            a3 = v38;
            v8 = v36;
            goto LABEL_38;
          }
        }
      }

      std::string::basic_string[abi:nn200100]<0>(&v39, "");
LABEL_38:
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v39;
      }

      else
      {
        v32 = v39.__r_.__value_.__r.__words[0];
      }

      v33 = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:4];
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      [v6 setLabel_];
      if (v33)
      {
      }

      if (v8)
      {
      }

      if (v7)
      {
      }
    }
  }

  else
  {
    v27 = [v40 code];
    if (v27 != 5)
    {
      v28 = *re::graphicsLogObjects(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = v40;
        v30 = v28;
        v31 = [objc_msgSend(v29 localizedDescription)];
        *buf = 136315138;
        v47 = v31;
        _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "makeFunctionWithDescriptor error [%s].", buf, 0xCu);
      }
    }
  }

  *a3 = v6;
}

void re::mtl::Library::functionNames(id *this@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*this functionNames];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) UTF8String];
        v9 = re::DynamicArray<re::DynamicString>::add(a2, &v10);
        if (v10 && (v11 & 1) != 0)
        {
          (*(*v10 + 40))(v9);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:{16, v9}];
    }

    while (v5);
  }
}

void re::mtl::reflectionArguments(re::mtl *this@<X0>, uint64_t a2@<X8>)
{
  v4 = [-[re::mtl reflectionWithOptions:](this reflectionWithOptions_];
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v5 = [v4 count];
  if (v5)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a2, v5);
  }

  v6 = [v4 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v4 objectAtIndex_];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(a2, &v9);
      if (v9)
      {
      }
    }
  }
}

uint64_t re::mtl::commandQueueSupportsDisableAsyncCompletionDispatch(re::mtl *this)
{
  if (qword_1EE1B7B50 != -1)
  {
    dispatch_once(&qword_1EE1B7B50, &__block_literal_global_54_1);
  }

  return byte_1EE1B7B21;
}

void ___ZN2re3mtl50commandQueueSupportsDisableAsyncCompletionDispatchEv_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E6974018] alloc)];
  byte_1EE1B7B21 = [v0 respondsToSelector_];
  if (v0)
  {
  }
}

__n128 re::mtl::getTextureLevelInfo@<Q0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  MTLGetTextureLevelInfoForDeviceWithOptions();
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;

  result = v11;
  *(a2 + 88) = v11;
  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::MeshVisitor::visitVFXScene(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1010))
  {
    return 0;
  }

  else
  {
    return (*(a2 + 472) != 0.0) & (*(a2 + 716) ^ 1u);
  }
}

uint64_t re::MeshVisitor::visitMeshInstance(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(a1 + 292) == 1 && *(a2 + 128) != 1)
  {
    return 0;
  }

  v5 = *(a2 + 56);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = (*v5 ^ 0x180197E) & ~*(*(a2 + 56) + 4) | *v5 & *(*(a2 + 56) + 4);
  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if ((v6 & 8) != 0)
  {
LABEL_6:
    v7 = *(a1 + 192);
    if (!*v7 || re::boundingBoxIntersectFrustums(*(a2 + 32), *(a2 + 24), v7))
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v8 = &v49;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 184);
    v12 = *(a2 + 24);
    v13 = *v11;
    v14 = v11[1];
    v15 = v11[2];
    v16 = v11[3];
    v17 = v12[1];
    v18 = v12[2];
    v19 = v12[3];
    *v40 = *v12;
    *&v40[16] = v17;
    *&v40[32] = v18;
    v41 = v19;
    do
    {
      *(&v49 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&v40[v10])), v14, *&v40[v10], 1), v15, *&v40[v10], 2), v16, *&v40[v10], 3);
      v10 += 16;
    }

    while (v10 != 64);
    *v40 = v49;
    *&v40[16] = v50;
    *&v40[32] = v51;
    v41 = v52;
    v20 = *(v9 + 40);
    if (!v20)
    {
      *(a1 + 288) = 1;
      *(a1 + 280) = -65280;
      goto LABEL_36;
    }

    v21 = *(v9 + 48);
    v22 = 48 * v20 - 48;
    v23 = v21;
    do
    {
      v24 = *v23;
      v23 += 12;
      v25 = vabds_f32(v24, *v21);
      v26 = v25 > 0.00001 || v22 == 0;
      v22 -= 48;
    }

    while (!v26);
    v28 = v21[1];
    v27 = v21 + 1;
    v29 = v28;
    v30 = 48 * v20;
    while (vabds_f32(*v27, v29) <= 0.00001)
    {
      v27 += 12;
      v30 -= 48;
      if (!v30)
      {
        goto LABEL_33;
      }
    }

    if (v25 > 0.00001)
    {
LABEL_33:
      v34 = re::selectMeshLodByScreenArea(v9, v40, v11[4].f32, a1 + 280, 2);
      goto LABEL_35;
    }

    v34 = re::selectMeshLodByViewDepth(v9, v40, a1 + 280, 2);
LABEL_35:
    *(a1 + 288) = v34;
    if (v34)
    {
LABEL_36:
      v35 = 0;
      v36 = a1 + 200;
      while (1)
      {
        if (v35 == 2)
        {
          goto LABEL_49;
        }

        v8 = *(v9 + 40);
        if (v8)
        {
          v2 = *(a1 + 280 + 4 * v35);
          if (v8 <= v2)
          {
            goto LABEL_50;
          }

          re::DynamicArray<unsigned long long>::operator=(v36 + 40 * v35, (*(v9 + 48) + 48 * *(a1 + 280 + 4 * v35) + 8));
        }

        else
        {
          v8 = (v36 + 40 * v35);
          re::DynamicArray<double>::resize(v8, *(a2 + 8));
          v37 = *(a2 + 8);
          if (v37)
          {
            v38 = 0;
            v2 = *(v8 + 2);
            while (v2 != v38)
            {
              *(*(v8 + 4) + 8 * v38) = v38;
              if (v37 == ++v38)
              {
                goto LABEL_45;
              }
            }

            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            v43 = 1024;
            v44 = 789;
            v45 = 2048;
            v46 = v2;
            v47 = 2048;
            v48 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, 2, 2);
            _os_crash();
            __break(1u);
LABEL_50:
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            v43 = 1024;
            v44 = 476;
            v45 = 2048;
            v46 = v2;
            v47 = 2048;
            v48 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            *v42 = 0;
            v8[3] = 0u;
            v8[4] = 0u;
            v8[1] = 0u;
            v8[2] = 0u;
            v49 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v40 = 136315906;
            *&v40[4] = "operator[]";
            *&v40[12] = 1024;
            *&v40[14] = 789;
            *&v40[18] = 2048;
            *&v40[20] = v9;
            *&v40[28] = 2048;
            *&v40[30] = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }
        }

LABEL_45:
        if (++v35 >= *(a1 + 288))
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v31 = 1;
  *(a1 + 288) = 1;
  *(a1 + 280) = -65280;
  if (*(a2 + 8))
  {
    v32 = *(a2 + 8);
  }

  else
  {
    v32 = *(a2 + 120);
  }

  re::DynamicArray<double>::resize(a1 + 200, v32);
  if (v32)
  {
    v33 = 0;
    v9 = *(a1 + 216);
    do
    {
      if (v9 == v33)
      {
        goto LABEL_51;
      }

      *(*(a1 + 232) + 8 * v33) = v33;
      ++v33;
    }

    while (v32 != v33);
    return 1;
  }

  return v31;
}

uint64_t re::MeshVisitor::findLevelIndex(re::MeshVisitor *this, uint64_t a2)
{
  v2 = *(this + 72);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = this + 200;
  while (1)
  {
    if (result == 2)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, 2, 2);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v6 = &v5[40 * result];
    v7 = *(v6 + 2);
    if (v7)
    {
      break;
    }

LABEL_8:
    if (++result == v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8 = *(v6 + 4);
  v9 = 8 * v7;
  while (*v8 != a2)
  {
    ++v8;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (***re::PatchHandler::setHandler(void *a1, void *a2))(void)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(**a1 + 32);
  v5 = a2;
  v6 = v4(v3, 8, 8);
  *v6 = 0;
  v7 = _Block_copy(v5);
  v8 = *v6;
  *v6 = v7;

  a1[1] = v6;
  v9 = *a1;
  v11 = re::globalAllocators(v10)[2];
  v14[0] = &unk_1F5D03518;
  v14[3] = v11;
  v14[4] = v14;
  v12 = *(*v9 + 16);

  v12(v9, v6, v14);
  return re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v14);
}

void *_ZNK2re8internal8CallableIZNS_12PatchHandler10setHandlerEU13block_pointerFvPK13simd_float4x4iDv3_fEE3__0FvPvEJEE9cloneIntoESA_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03518;
  return result;
}

void *_ZN2re8internal8CallableIZNS_12PatchHandler10setHandlerEU13block_pointerFvPK13simd_float4x4iDv3_fEE3__0FvPvEJEE8moveIntoESA_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03518;
  return result;
}

void *re::allocInfo_StencilInfoData(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_428))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7D20, "StencilInfoData");
    __cxa_guard_release(&_MergedGlobals_428);
  }

  return &unk_1EE1B7D20;
}

void re::initInfo_StencilInfoData(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xAD42BCD4890DDE68;
  v10[1] = "StencilInfoData";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B7B68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7B68);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7B60 = v8;
      __cxa_guard_release(&qword_1EE1B7B68);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000020;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B7B60;
  *(this + 9) = re::internal::defaultConstruct<re::StencilInfoData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StencilInfoData>;
  *(this + 13) = re::internal::defaultConstructV2<re::StencilInfoData>;
  *(this + 14) = re::internal::defaultDestructV2<re::StencilInfoData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

double re::internal::defaultConstruct<re::StencilInfoData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5D03570;
  *&result = 134217472;
  a3[1] = 134217472;
  a3[2] = 134217472;
  return result;
}

double re::internal::defaultConstructV2<re::StencilInfoData>(void *a1)
{
  *a1 = &unk_1F5D03570;
  *&result = 134217472;
  a1[1] = 134217472;
  a1[2] = 134217472;
  return result;
}

void *re::allocInfo_ViewportData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7B70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7DB0, "ViewportData");
    __cxa_guard_release(&qword_1EE1B7B70);
  }

  return &unk_1EE1B7DB0;
}

void re::initInfo_ViewportData(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x3F1D7E5A3F4DDB20;
  v13[1] = "ViewportData";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1B7B78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7B78);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7BF0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::mtl::introspect_Viewport(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "viewport";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x800000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B7BF8 = v11;
      __cxa_guard_release(&qword_1EE1B7B78);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B7BF0;
  *(this + 9) = re::internal::defaultConstruct<re::ViewportData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ViewportData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ViewportData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ViewportData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::internal::defaultConstruct<re::ViewportData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5D035B0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0x3F80000000000000;
}

void *re::internal::defaultConstructV2<re::ViewportData>(void *result)
{
  *result = &unk_1F5D035B0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  return result;
}

void *re::allocInfo_VRRData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7E40, "VRRData");
    __cxa_guard_release(&qword_1EE1B7B80);
  }

  return &unk_1EE1B7E40;
}

void re::initInfo_VRRData(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x24ABD26BC0;
  v14[1] = "VRRData";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1B7B88, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7B88);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7C00 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "vrrEnabled";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0xC00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B7C08 = v12;
      __cxa_guard_release(&qword_1EE1B7B88);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B7C00;
  *(this + 9) = re::internal::defaultConstruct<re::VRRData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VRRData>;
  *(this + 13) = re::internal::defaultConstructV2<re::VRRData>;
  *(this + 14) = re::internal::defaultDestructV2<re::VRRData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::VRRData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D035F0;
  *(a3 + 8) = -1;
  *(a3 + 12) = 0;
}

uint64_t re::internal::defaultConstructV2<re::VRRData>(uint64_t result)
{
  *result = &unk_1F5D035F0;
  *(result + 8) = -1;
  *(result + 12) = 0;
  return result;
}

void *re::allocInfo_ThreadGroupMemoryData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7B90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7ED0, "ThreadGroupMemoryData");
    __cxa_guard_release(&qword_1EE1B7B90);
  }

  return &unk_1EE1B7ED0;
}

void re::initInfo_ThreadGroupMemoryData(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xED88CD191AFD3940;
  v18[1] = "ThreadGroupMemoryData";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1B7B98, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7B98);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7C20 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "totalBytes";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B7C28 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "threadgroupMemoryEnabled";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B7C30 = v16;
      __cxa_guard_release(&qword_1EE1B7B98);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B7C20;
  *(this + 9) = re::internal::defaultConstruct<re::ThreadGroupMemoryData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ThreadGroupMemoryData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ThreadGroupMemoryData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ThreadGroupMemoryData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::ThreadGroupMemoryData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D03630;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ThreadGroupMemoryData>(uint64_t result)
{
  *result = &unk_1F5D03630;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::allocInfo_TriangleFillModeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7F60, "TriangleFillModeData");
    __cxa_guard_release(&qword_1EE1B7BA0);
  }

  return &unk_1EE1B7F60;
}

void re::initInfo_TriangleFillModeData(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x5E010951CB0401B0;
  v14[1] = "TriangleFillModeData";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1B7BA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7BA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7C10 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::mtl::introspect_TriangleFillMode(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "triangleFillMode";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B7C18 = v12;
      __cxa_guard_release(&qword_1EE1B7BA8);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B7C10;
  *(this + 9) = re::internal::defaultConstruct<re::TriangleFillModeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TriangleFillModeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::TriangleFillModeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::TriangleFillModeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::introspect_ViewMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Mono";
      re::introspect_ViewMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "SinglePass";
      qword_1EE1C6B58 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "DualPass";
      qword_1EE1C6B60 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_ViewMode(BOOL)::info, "ViewMode", 1, 1, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::introspect_ViewMode(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_ViewMode(BOOL)::isInitialized)
    {
      return &re::introspect_ViewMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::introspect_ViewMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::introspect_ViewMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_ViewMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_ViewMode(BOOL)::info;
    }
  }

  re::introspect_ViewMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_ViewMode(BOOL)::info, a2);
  v17[0] = 0x47A963CE410;
  v17[1] = "ViewMode";
  xmmword_1EE1C6B28 = v18;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_ViewMode(BOOL)::info;
}

void *re::allocInfo_FilterMapAtlasData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7FF0, "FilterMapAtlasData");
    __cxa_guard_release(&qword_1EE1B7BB0);
  }

  return &unk_1EE1B7FF0;
}

void re::initInfo_FilterMapAtlasData(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0x4F2768EAB2372922;
  v26[1] = "FilterMapAtlasData";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1B7BB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7BB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7C58 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "atlasWidth";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B7C60 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "atlasHeight";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xC00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B7C68 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::mtl::introspect_PixelFormat(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "format";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B7C70 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_uint64_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "protectionOptions";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1800000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1B7C78 = v24;
      __cxa_guard_release(&qword_1EE1B7BB8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B7C58;
  *(this + 9) = re::internal::defaultConstruct<re::FilterMapAtlasData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FilterMapAtlasData>;
  *(this + 13) = re::internal::defaultConstructV2<re::FilterMapAtlasData>;
  *(this + 14) = re::internal::defaultDestructV2<re::FilterMapAtlasData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

void re::internal::defaultConstruct<re::FilterMapAtlasData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D036D0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 115;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::FilterMapAtlasData>(uint64_t result)
{
  *result = &unk_1F5D036D0;
  *(result + 8) = 0;
  *(result + 16) = 115;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_ShadowMapAtlasData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B8080, "ShadowMapAtlasData");
    __cxa_guard_release(&qword_1EE1B7BC0);
  }

  return &unk_1EE1B8080;
}

void re::initInfo_ShadowMapAtlasData(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0xD3AD1B4260300C72;
  v22[1] = "ShadowMapAtlasData";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1B7BC8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7BC8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7C38 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "atlasWidth";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B7C40 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "atlasHeight";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xC00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B7C48 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::mtl::introspect_PixelFormat(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "format";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B7C50 = v20;
      __cxa_guard_release(&qword_1EE1B7BC8);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B7C38;
  *(this + 9) = re::internal::defaultConstruct<re::ShadowMapAtlasData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ShadowMapAtlasData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ShadowMapAtlasData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ShadowMapAtlasData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::internal::defaultConstruct<re::ShadowMapAtlasData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D03710;
  *(a3 + 8) = 0;
  *(a3 + 16) = 252;
}

uint64_t re::internal::defaultConstructV2<re::ShadowMapAtlasData>(uint64_t result)
{
  *result = &unk_1F5D03710;
  *(result + 8) = 0;
  *(result + 16) = 252;
  return result;
}

void *re::allocInfo_CameraData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BD0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B8110, "CameraData");
    __cxa_guard_release(&qword_1EE1B7BD0);
  }

  return &unk_1EE1B8110;
}

void re::initInfo_CameraData(re *this, re::IntrospectionBase *a2)
{
  v65[0] = 0xD325DFDB7D11ELL;
  v65[1] = "CameraData";
  if (v65[0])
  {
    if (v65[0])
    {
    }
  }

  *(this + 2) = v66;
  if ((atomic_load_explicit(&qword_1EE1B7BD8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7BD8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7CA8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector4F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "clearColor";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x33000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B7CB0 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "clearDepth";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x34000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1B7CB8 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_BOOL(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "loadDepth";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x35800000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1B7CC0 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_BOOL(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "saveDepth";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x35900000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B7CC8 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_BOOL(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "loadStencil";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x35A00000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B7CD0 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_BOOL(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "saveStencil";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x35B00000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1B7CD8 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_BOOL(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "drawDebug";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x35C00000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1B7CE0 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::introspect_BOOL(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "enableUnwarp";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x35D0000000ALL;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1B7CE8 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::introspect_uint32_t(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "msaaSamples";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x3740000000BLL;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1B7CF0 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::mtl::introspect_MultisampleDepthResolveFilter(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "depthResolveFilter";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x37C0000000CLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1B7CF8 = v47;
      v48 = re::introspectionAllocator(v47);
      v50 = re::mtl::introspect_MultisampleStencilResolveFilter(1, v49);
      v51 = (*(*v48 + 32))(v48, 72, 8);
      *v51 = 1;
      *(v51 + 8) = "stencilResolveFilter";
      *(v51 + 16) = v50;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x3800000000DLL;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      qword_1EE1B7D00 = v51;
      v52 = re::introspectionAllocator(v51);
      Action = re::mtl::introspect_LoadAction(1, v53);
      v55 = (*(*v52 + 32))(v52, 72, 8);
      *v55 = 1;
      *(v55 + 8) = "colorLoadAction";
      *(v55 + 16) = Action;
      *(v55 + 24) = 0;
      *(v55 + 32) = 0x3840000000ELL;
      *(v55 + 40) = 0;
      *(v55 + 48) = 0;
      *(v55 + 56) = 0;
      *(v55 + 64) = 0;
      qword_1EE1B7D08 = v55;
      v56 = re::introspectionAllocator(v55);
      v58 = re::introspect_uint32_t(1, v57);
      v59 = (*(*v56 + 32))(v56, 72, 8);
      *v59 = 1;
      *(v59 + 8) = "clearStencil";
      *(v59 + 16) = v58;
      *(v59 + 24) = 0;
      *(v59 + 32) = 0x38C0000000FLL;
      *(v59 + 40) = 0;
      *(v59 + 48) = 0;
      *(v59 + 56) = 0;
      *(v59 + 64) = 0;
      qword_1EE1B7D10 = v59;
      v60 = re::introspectionAllocator(v59);
      v62 = re::introspect_BOOL(1, v61);
      v63 = (*(*v60 + 32))(v60, 72, 8);
      *v63 = 1;
      *(v63 + 8) = "skipManagedForceClear";
      *(v63 + 16) = v62;
      *(v63 + 24) = 0;
      *(v63 + 32) = 0x35E00000010;
      *(v63 + 40) = 0;
      *(v63 + 48) = 0;
      *(v63 + 56) = 0;
      *(v63 + 64) = 0;
      qword_1EE1B7D18 = v63;
      __cxa_guard_release(&qword_1EE1B7BD8);
    }
  }

  *(this + 2) = 0x3C000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE1B7CA8;
  *(this + 9) = re::internal::defaultConstruct<re::CameraData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CameraData>;
  *(this + 13) = re::internal::defaultConstructV2<re::CameraData>;
  *(this + 14) = re::internal::defaultDestructV2<re::CameraData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v64 = v66;
}

double re::internal::defaultDestruct<re::CameraData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(a3 + 920);
  *(a3 + 768) = 0;
  ++*(a3 + 776);
  *(a3 + 624) = 0;
  ++*(a3 + 632);
  *(a3 + 128) = 0;
  ++*(a3 + 136);
  *(a3 + 48) = 0;
  ++*(a3 + 56);

  return re::DynamicString::deinit((a3 + 8));
}

double re::internal::defaultDestructV2<re::CameraData>(uint64_t a1)
{
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(a1 + 920);
  *(a1 + 768) = 0;
  ++*(a1 + 776);
  *(a1 + 624) = 0;
  ++*(a1 + 632);
  *(a1 + 128) = 0;
  ++*(a1 + 136);
  *(a1 + 48) = 0;
  ++*(a1 + 56);

  return re::DynamicString::deinit((a1 + 8));
}

void *re::allocInfo_CameraMatrices(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B7BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7BE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B81A0, "CameraMatrices");
    __cxa_guard_release(&qword_1EE1B7BE0);
  }

  return &unk_1EE1B81A0;
}

void re::initInfo_CameraMatrices(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xF750B3A91D24CF7ELL;
  v23[1] = "CameraMatrices";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1B7BE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B7BE8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B7C80 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "worldToView";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x800000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B7C88 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "viewToProjRender";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x3000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1B7C90 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_uint8_t(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "viewportCount";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0xA000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1B7C98 = v18;
      v19 = re::introspectionAllocator(v18);
      v20 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1);
      v21 = (*(*v19 + 32))(v19, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "viewToProjCulling";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x5800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B7CA0 = v21;
      __cxa_guard_release(&qword_1EE1B7BE8);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B7C80;
  *(this + 9) = re::internal::defaultConstruct<re::CameraMatrices>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CameraMatrices>;
  *(this + 13) = re::internal::defaultConstructV2<re::CameraMatrices>;
  *(this + 14) = re::internal::defaultDestructV2<re::CameraMatrices>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::CameraMatrices>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D03790;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  *(a3 + 160) = 1;
  return result;
}

uint64_t re::internal::defaultDestruct<re::CameraMatrices>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 88);
  re::DynamicArray<unsigned long>::deinit(a3 + 48);

  return re::DynamicArray<unsigned long>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::CameraMatrices>(uint64_t a1)
{
  *a1 = &unk_1F5D03790;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 160) = 1;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::CameraMatrices>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 88);
  re::DynamicArray<unsigned long>::deinit(a1 + 48);

  return re::DynamicArray<unsigned long>::deinit(a1 + 8);
}

unint64_t re::ThreadGroupMemoryData::hash(re::ThreadGroupMemoryData *this)
{
  v1 = *(this + 2) * *(this + 8);
  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v1 ^ (v1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v1 ^ (v1 >> 30))) >> 27));
  return v2 ^ (v2 >> 31);
}

re::CameraData *re::CameraData::CameraData(re::CameraData *this)
{
  *this = &unk_1F5D03750;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = (this + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
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
  *(this + 118) = re::globalAllocators(v3)[2];
  *(this + 119) = 0;
  return this;
}

void re::CameraData::~CameraData(re::CameraData *this)
{
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(this + 920);
  *(this + 96) = 0;
  ++*(this + 194);
  *(this + 78) = 0;
  ++*(this + 158);
  *(this + 16) = 0;
  ++*(this + 34);
  *(this + 6) = 0;
  ++*(this + 14);
  re::DynamicString::deinit((this + 8));
}

{
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(this + 920);
  *(this + 96) = 0;
  ++*(this + 194);
  *(this + 78) = 0;
  ++*(this + 158);
  *(this + 16) = 0;
  ++*(this + 34);
  *(this + 6) = 0;
  ++*(this + 14);
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::CameraMatrices::~CameraMatrices(re::CameraMatrices *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

unint64_t re::MetalFunctionConfiguration::generateKey(re::MetalFunctionConfiguration *this)
{
  if (*this == 1)
  {
    v2 = re::Hash<re::DynamicString>::operator()(&v6, this + 8);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 40) == 1)
  {
    v3 = re::Hash<re::DynamicString>::operator()(&v7, this + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = re::TechniqueDefinitionBuilder::hashFunctionConstants(*(this + 14), *(this + 12), 1);
  return ((((((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
}

void *re::MetalFunctionConfiguration::permutationString@<X0>(re::MetalFunctionConfiguration *this@<X0>, re::DynamicString *a2@<X8>)
{
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  result = re::DynamicString::setCapacity(a2, 0x80uLL);
  v5 = *(this + 12);
  if (v5)
  {
    v6 = (*(this + 14) + 36);
    v7 = 104 * v5;
    do
    {
      if (*(v6 - 28))
      {
        v8 = *(v6 - 20);
      }

      else
      {
        v8 = v6 - 27;
      }

      v9 = *v6;
      v6 += 13;
      result = re::DynamicString::appendf(a2, "%s=%llu ", v8, v9);
      v7 -= 104;
    }

    while (v7);
  }

  return result;
}

uint64_t re::getOrCreateMetalFunction(re *this, const re::RenderManager *a2, const re::DynamicString *a3, const re::MetalFunctionConfiguration *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  Key = re::MetalFunctionConfiguration::generateKey(a3);
  v58 = ((Key << 6) + (Key >> 2) + re::Hash<re::DynamicString>::operator()(v67, a2) - 0x61C8864680B583E9) ^ Key;
  v8 = *(this + 6);
  v9 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v8 + 56, &v58);
  if (!v9)
  {
    if ((*(a3 + 128) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_1EE1B8238, memory_order_acquire) & 1) == 0)
      {
        v52 = __cxa_guard_acquire(&qword_1EE1B8238);
        if (v52)
        {
          _MergedGlobals_429 = *re::AppleBuild::get(v52) == 1;
          __cxa_guard_release(&qword_1EE1B8238);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1B8240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8240))
      {
        re::Defaults::BOOLValue("shouldCrashOnRuntimeCompilation", v53, v67);
        if (LOBYTE(v67[0]))
        {
          v54 = v67 + 1;
        }

        else
        {
          v54 = &_MergedGlobals_429;
        }

        byte_1EE1B8231 = *v54;
        __cxa_guard_release(&qword_1EE1B8240);
      }
    }

    v10 = mach_absolute_time();
    if (*(a3 + 15))
    {
      v11 = *(this + 6);
      v67[0] = *(a3 + 15);
      v12 = v11 + 376;
    }

    else
    {
      v13 = *(this + 6);
      if (*a3 != 1)
      {
        v16 = (v13 + 360);
        goto LABEL_15;
      }

      if (*(a3 + 2))
      {
        v14 = *(a3 + 3);
      }

      else
      {
        v14 = a3 + 17;
      }

      v67[0] = re::ShaderManager::getLibraryHash(*(this + 6), v14);
      v12 = v13 + 376;
    }

    result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v12, v67);
    if (!result)
    {
      return result;
    }

    v16 = (result + 8);
LABEL_15:
    v57 = [objc_msgSend(MEMORY[0x1E6974060] alloc)];
    v17 = *(a3 + 12);
    if (v17)
    {
      v18 = 104 * v17;
      v19 = *(a3 + 14) + 36;
      do
      {
        [v57 setConstantValue:v19 type:*(v19 - 4) atIndex:*(v19 - 2)];
        v19 += 104;
        v18 -= 104;
      }

      while (v18);
    }

    v20 = *(this + 6);
    if (*a3)
    {
      if (*(a3 + 2))
      {
        v21 = *(a3 + 3);
      }

      else
      {
        v21 = a3 + 17;
      }

      LibraryHash = re::ShaderManager::getLibraryHash(v20, v21);
      v20 = *(this + 6);
    }

    else
    {
      LibraryHash = *(v20 + 46);
    }

    if (*(a3 + 15))
    {
      v23 = *(a3 + 15);
    }

    else
    {
      v23 = LibraryHash;
    }

    if (*(a2 + 1))
    {
      v24 = *(a2 + 2);
    }

    else
    {
      v24 = a2 + 9;
    }

    re::ShaderManager::makeFunctionDescriptor(v20, v24, &v57, v16, v23, &v56);
    if (*(a3 + 40) == 1)
    {
      if (*(a3 + 7))
      {
        v25 = *(a3 + 8);
      }

      else
      {
        v25 = a3 + 57;
      }

      [v56 setSpecializedName_];
    }

    v55 = 0;
    re::mtl::Library::makeFunctionWithDescriptor(v16, v56, v67);
    NS::SharedPtr<MTL::Texture>::operator=(&v55, v67);
    if (v67[0])
    {
    }

    v26 = mach_absolute_time();
    v27 = v26;
    v28 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v26 = mach_timebase_info(v67);
      if (v26)
      {
        v31 = NAN;
LABEL_42:
        v32 = (v31 / 1000000.0);
        v33 = *re::graphicsLogObjects(v26);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 1))
          {
            v34 = *(a2 + 2);
          }

          else
          {
            v34 = a2 + 9;
          }

          LODWORD(v67[0]) = 136446466;
          *(v67 + 4) = v34;
          WORD2(v67[1]) = 1024;
          *(&v67[1] + 6) = v32;
          _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "Function specialization completed for function %{public}s in %d", v67, 0x12u);
        }

        v35 = *(v8 + 40);
        v36 = *(v8 + 8);
        if (v35 + 1 > v36 << 6)
        {
          re::BucketArray<re::CachedMetalFunction,64ul>::setBucketsCapacity(v8, (v35 + 64) >> 6);
          v36 = *(v8 + 8);
        }

        if (v36 <= v35 >> 6)
        {
          *buf = 0;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          memset(v67, 0, sizeof(v67));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v62 = 136315906;
          *&v62[4] = "operator[]";
          v63 = 1024;
          *v64 = 858;
          *&v64[4] = 2048;
          *&v64[6] = v35 >> 6;
          v65 = 2048;
          v66 = v36;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (*(v8 + 16))
        {
          v37 = v8 + 24;
        }

        else
        {
          v37 = *(v8 + 32);
        }

        v38 = *(v37 + 8 * (v35 >> 6));
        v39 = *(v8 + 40);
        *(v8 + 40) = v39 + 1;
        ++*(v8 + 48);
        *(v38 + 8 * (v35 & 0x3F)) = v55;
        v55 = 0;
        memset(v67, 0, 24);
        v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v58 ^ (v58 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v58 ^ (v58 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v8 + 56, &v58, v40 ^ (v40 >> 31), v67);
        if (HIDWORD(v67[1]) == 0x7FFFFFFF)
        {
          v41 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v8 + 56, v67[1], v67[0]);
          v42 = v58;
          *(v41 + 16) = v39;
          v9 = (v41 + 16);
          *(v41 + 8) = v42;
          ++*(v8 + 96);
        }

        else
        {
          v9 = (*(v8 + 72) + 32 * HIDWORD(v67[1]) + 16);
        }

        if ((atomic_load_explicit(&qword_1EE1B8248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8248))
        {
          re::Defaults::BOOLValue("enableShaderDebugLogs", v50, v67);
          if (LOBYTE(v67[0]))
          {
            v51 = BYTE1(v67[0]);
          }

          else
          {
            v51 = 0;
          }

          byte_1EE1B8232 = v51;
          __cxa_guard_release(&qword_1EE1B8248);
        }

        if (v32 > 10 || byte_1EE1B8232 == 1)
        {
          re::MetalFunctionConfiguration::permutationString(a3, v67);
          if (*(a2 + 1))
          {
            v43 = *(a2 + 2);
          }

          else
          {
            v43 = a2 + 9;
          }

          if (v67[1])
          {
            v44 = v67[2];
          }

          else
          {
            v44 = &v67[1] + 1;
          }

          re::DynamicString::format("name=%s fc=%s", v62, v43, v44);
          isFrameCaptureEnabled = re::mtl::Device::isFrameCaptureEnabled((this + 208));
          v46 = isFrameCaptureEnabled;
          v47 = *re::graphicsLogObjects(isFrameCaptureEnabled);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *&v64[2];
            v49 = "";
            if ((v62[8] & 1) == 0)
            {
              v48 = &v62[9];
            }

            if (v46)
            {
              v49 = "(frame capture enabled)";
            }

            *buf = 136446466;
            *&buf[4] = v48;
            v60 = 2080;
            v61 = v49;
            _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, "Compiling PSO RT %{public}s %s", buf, 0x16u);
          }

          if (*v62 && (v62[8] & 1) != 0)
          {
            (*(**v62 + 40))();
          }

          if (v67[0] && (v67[1] & 1) != 0)
          {
            (*(*v67[0] + 40))();
          }
        }

        if (v55)
        {
        }

        if (v56)
        {
        }

        if (v57)
        {
        }

        return re::BucketArray<re::CachedMetalFunction,64ul>::operator[](v8, *v9);
      }

      LODWORD(v30) = HIDWORD(v67[0]);
      LODWORD(v29) = v67[0];
      v28 = v29 / v30;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v28;
    }

    v31 = v28 * (v27 - v10);
    goto LABEL_42;
  }

  return re::BucketArray<re::CachedMetalFunction,64ul>::operator[](v8, *v9);
}

uint64_t re::BucketArray<re::CachedMetalFunction,64ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 6)) + 8 * (a2 & 0x3F);
}

void *re::BucketArray<re::CachedMetalFunction,64ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 512, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::CachedMetalFunction,64ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t *re::shadowLogObjects(re *this)
{
  {
    re::shadowLogObjects(void)::logObjects = os_log_create("com.apple.re", "Shadow");
  }

  return &re::shadowLogObjects(void)::logObjects;
}

uint64_t re::DataArray<re::TextureAtlasTile>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::TextureAtlasTile>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

unint64_t re::TextureAtlas::requestTile(re::TextureAtlas *this, int a2, int a3, float a4)
{
  v7 = a3;
  v8 = a2;
  v6 = a4;
  if (!*(this + 13))
  {
    *(this + 1) = *(this + 11);
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 1, 0);
    ++*(this + 8);
    *(this + 13) = 32;
    re::DataArray<re::TextureAtlasTile>::allocBlock(this + 2);
    re::DataArray<re::TextureAtlasTile>::clear(this + 1);
  }

  return re::DataArray<re::TextureAtlasTile>::create<unsigned int &,unsigned int &,float &>(this + 8, &v8, &v7, &v6);
}

double re::DataArray<re::TextureAtlasTile>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::TextureAtlasTile>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

unint64_t re::DataArray<re::TextureAtlasTile>::create<unsigned int &,unsigned int &,float &>(uint64_t a1, _DWORD *a2, int *a3, int *a4)
{
  v8 = *(a1 + 56);
  if ((v8 + 1) >> 24)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 + 1;
  }

  *(a1 + 56) = v9;
  v10 = *(a1 + 52);
  v11 = *(a1 + 54);
  if (v10 == 0xFFFF && v11 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::TextureAtlasTile>::allocBlock(a1);
    }

    v16 = *(a1 + 16);
    v11 = (v16 - 1);
    if (v16)
    {
      v10 = *(a1 + 48);
      if (v10 < 0x10000)
      {
        v17 = (*(a1 + 32) + 16 * v11);
        *(a1 + 48) = v10 + 1;
        v15 = *(a1 + 56);
        *(v17[1] + 4 * v10) = v15;
        v14 = *v17 + 24 * v10;
        goto LABEL_15;
      }

LABEL_18:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v10, v21, v22);
      _os_crash();
      __break(1u);
    }

LABEL_17:
    v21 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v22) = 136315906;
    *(&v22 + 4) = "operator[]";
    WORD6(v22) = 1024;
    HIWORD(v22) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  if (*(a1 + 16) <= v11)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v13 = (*(a1 + 32) + 16 * v11);
  *(v13[1] + 4 * v10) = v9;
  v14 = *v13 + 24 * v10;
  *(a1 + 52) = *v14;
  v15 = *(a1 + 56);
LABEL_15:
  ++*(a1 + 40);
  v18 = *a3;
  v19 = *a4;
  *v14 = *a2;
  *(v14 + 4) = v18;
  *(v14 + 8) = v19;
  *(v14 + 12) = 0;
  *(v14 + 16) = 0;
  *(v14 + 20) = -1;
  return ((v11 << 16) | ((v15 & 0xFFFFFF) << 32)) + v10;
}

uint64_t re::DataArray<re::TextureAtlasTile>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 24 * a2;
}

_DWORD *re::DataArray<re::TextureAtlasTile>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::TextureAtlasTile>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *result = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::TextureAtlas::allocateTiles(uint64_t this, unsigned int a2)
{
  v107 = *MEMORY[0x1E69E9840];
  if (!*(this + 48))
  {
    return this;
  }

  v2 = this;
  v3 = this + 8;
  v4 = *(this + 88);
  v85 = 0;
  v83 = 0uLL;
  v84 = 0;
  v82 = v4;
  re::DynamicArray<float *>::setCapacity(&v82, 0);
  v5 = ++v84;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v91, v3, 0);
  if (v3 == v91 && v92 == 0xFFFFFFFFLL)
  {
    v6 = v85;
    v7 = *(&v83 + 1);
  }

  else
  {
    v7 = *(&v83 + 1);
    do
    {
      v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v91);
      if (v7 >= v83)
      {
        re::DynamicArray<float *>::growCapacity(&v82, v7 + 1);
        v7 = *(&v83 + 1);
        v5 = v84;
      }

      v6 = v85;
      v85[v7++] = v8;
      *(&v83 + 1) = v7;
      v84 = ++v5;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v91);
    }

    while (v91 != v3 || v92 != 0xFFFF || WORD1(v92) != 0xFFFF);
  }

  v91 = v2;
  v11 = 126 - 2 * __clz(v7);
  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,false>(v6, (v6 + 8 * v7), &v91, v12, 1);
  v72 = 0;
  v70 = v2;
  do
  {
    v13 = *(v2 + 72);
    v76 = *(v2 + 76);
    v14 = *(v2 + 88);
    v79 = 0uLL;
    v80 = 0;
    v81 = 0;
    v78 = v14;
    re::DynamicArray<float *>::setCapacity(&v78, 0);
    v77 = ++v80;
    v15 = *(v2 + 88);
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v86 = v15;
    v18 = ++v89;
    if (v88 >= v87)
    {
      v19 = v88 + 1;
      if (v87 < v88 + 1)
      {
        if (v86)
        {
          v20 = 2 * v87;
          if (!v87)
          {
            v20 = 8;
          }

          if (v20 <= v19)
          {
            v21 = v88 + 1;
          }

          else
          {
            v21 = v20;
          }

          v18 = v89;
        }

        else
        {
          v18 = v89 + 1;
        }
      }
    }

    v22 = v90;
    v23 = v88;
    v24 = v90 + 28 * v88;
    *v24 = xmmword_1E3062D70;
    v25 = v76;
    *(v24 + 16) = v13;
    *(v24 + 20) = v76;
    *(v24 + 24) = 0;
    v26 = v23 + 1;
    v88 = v23 + 1;
    v89 = v18 + 1;
    if (!*(&v83 + 1))
    {
      goto LABEL_74;
    }

    v27 = v85;
    v28 = &v85[*(&v83 + 1)];
    v74 = v13;
    v73 = v28;
    do
    {
      v29 = re::DataArray<re::TextureAtlasTile>::get(v3, *v27);
      if (*v29 > v13 || v29[1] > v25)
      {
        goto LABEL_73;
      }

      if (!v26)
      {
        goto LABEL_101;
      }

      v31 = v29;
      v32 = 0;
      v33 = 0;
      v75 = *(v22 + 16);
      v34 = v26;
      while (1)
      {
        v35 = (v22 + 28 * v32);
        v36 = *v35;
        if (*v35 == -1)
        {
          break;
        }

        v37 = v33;
        if (v33 >= 0x40)
        {
          goto LABEL_91;
        }

        v33 = (v33 + 1);
        *(&v91 + v37) = v32;
        v32 = v36;
LABEL_41:
        if (v34 <= v32)
        {
          v93 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v94 = 136315906;
          v95 = "operator[]";
          v96 = 1024;
          v97 = 789;
          v98 = 2048;
          v99 = v32;
          v100 = 2048;
          v101 = v34;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_91:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v37, 64);
          _os_crash();
          __break(1u);
LABEL_92:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v33, 64);
          _os_crash();
          __break(1u);
LABEL_93:
          v93 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v94 = 136315906;
          v95 = "operator[]";
          v96 = 1024;
          v97 = 789;
          v98 = 2048;
          v99 = v32;
          v100 = 2048;
          v101 = v34;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_94:
          v93 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v94 = 136315906;
          v95 = "operator[]";
          v96 = 1024;
          v97 = 789;
          v98 = 2048;
          v99 = v32;
          v100 = 2048;
          v101 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_95:
          v93 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v94 = 136315906;
          v95 = "operator[]";
          v96 = 1024;
          v97 = 789;
          v98 = 2048;
          v99 = v34;
          v100 = 2048;
          v101 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_96:
          v93 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v94 = 136315906;
          v95 = "operator[]";
          v96 = 1024;
          v97 = 789;
          v98 = 2048;
          v99 = v34;
          v100 = 2048;
          v101 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_97:
          v93 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v94 = 136315906;
          v95 = "operator[]";
          v96 = 1024;
          v97 = 789;
          v98 = 2048;
          v99 = v34;
          v100 = 2048;
          v101 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_98:
          v93 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v94 = 136315906;
          v95 = "operator[]";
          v96 = 1024;
          v97 = 789;
          v98 = 2048;
          v99 = v34;
          v100 = 2048;
          v101 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_99:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v55, 64);
          _os_crash();
          __break(1u);
LABEL_100:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v55, 64);
          _os_crash();
          __break(1u);
LABEL_101:
          v93 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v94 = 136315906;
          v95 = "operator[]";
          v96 = 1024;
          v97 = 789;
          v98 = 2048;
          v99 = 0;
          v100 = 2048;
          v101 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_102:
          re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash();
          __break(1u);
        }
      }

      if ((v35[6] & 1) == 0)
      {
        v38 = v35[4];
        if (v38 == *v31 && v35[5] == v31[1])
        {
          *(v35 + 24) = 1;
          *(v31 + 10) = v72;
          v13 = v74;
          v31[3] = v35[2] + v75 * v72;
          v31[4] = v35[3];
          v25 = v76;
          v28 = v73;
          goto LABEL_73;
        }

        if (v38 >= *v31 && v35[5] >= v31[1])
        {
          v26 = v34 + 2;
          if (v34 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            if (v87 < v26)
            {
              v34 = v88;
            }

            v39 = v26 - v34;
            if (v26 > v34)
            {
              v40 = 28 * v39;
              if ((28 * v39) >= 1)
              {
                v41 = v90 + 28 * v34;
                v42 = v40 / 0x1C + 1;
                do
                {
                  *v41 = 0;
                  *(v41 + 8) = 0;
                  *(v41 + 24) = 0;
                  *(v41 + 16) = 0;
                  v41 += 28;
                  --v42;
                }

                while (v42 > 1);
              }
            }
          }

          v88 = v26;
          ++v89;
          if (v26 <= v32)
          {
            goto LABEL_94;
          }

          v22 = v90;
          v43 = (v90 + 28 * v32);
          v44 = vadd_s32(vdup_n_s32(v26), -2);
          *v43 = v44;
          v45 = *v31;
          v46 = v31[1];
          v48 = v43[2].u32[0];
          v47 = v43[2].u32[1];
          v34 = v44.i32[0];
          if ((v47 - v46) * *v31 >= (v48 - *v31) * v46)
          {
            if (v26 <= v44.i32[0])
            {
              goto LABEL_96;
            }

            v56 = v22 + 28 * v44.i32[0];
            v57 = v43[1].u32[0];
            v58 = v43[1].u32[1];
            *v56 = -1;
            v34 = v43->i32[1];
            *(v56 + 8) = v57;
            *(v56 + 12) = v58;
            *(v56 + 16) = v48;
            *(v56 + 20) = v46;
            *(v56 + 24) = 0;
            if (v26 <= v34)
            {
              goto LABEL_98;
            }

            v59 = v43[2].u32[0];
            v60 = v22 + 28 * v34;
            v61 = v58 + v46;
            v62 = v43[2].i32[1] - v46;
            *v60 = -1;
            *(v60 + 8) = v57;
            *(v60 + 12) = v61;
            *(v60 + 16) = v59;
            *(v60 + 20) = v62;
            *(v60 + 24) = 0;
            v55 = v33;
            if (v33 >= 0x40)
            {
              goto LABEL_100;
            }
          }

          else
          {
            if (v26 <= v44.i32[0])
            {
              goto LABEL_95;
            }

            v49 = v22 + 28 * v44.i32[0];
            v51 = v43[1].u32[0];
            v50 = v43[1].u32[1];
            *v49 = -1;
            v34 = v43->i32[1];
            *(v49 + 8) = v51;
            *(v49 + 12) = v50;
            *(v49 + 16) = v45;
            *(v49 + 20) = v47;
            *(v49 + 24) = 0;
            if (v26 <= v34)
            {
              goto LABEL_97;
            }

            v52 = v43[2].u32[0];
            v53 = v43[2].u32[1];
            v54 = v22 + 28 * v34;
            *v54 = -1;
            *(v54 + 8) = v51 + v45;
            *(v54 + 12) = v50;
            *(v54 + 16) = v52 - v45;
            *(v54 + 20) = v53;
            *(v54 + 24) = 0;
            v55 = v33;
            if (v33 >= 0x40)
            {
              goto LABEL_99;
            }
          }

          *(&v91 + v55) = v32;
          v33 = (v33 + 1);
          v32 = v43->u32[0];
          v34 = v26;
          goto LABEL_41;
        }
      }

      if (v33)
      {
        v33 = (v33 - 1);
        if (v33 >= 0x40)
        {
          goto LABEL_92;
        }

        v32 = *(&v91 + v33);
        if (v34 <= v32)
        {
          goto LABEL_93;
        }

        v32 = *(v22 + 28 * v32 + 4);
        goto LABEL_41;
      }

      *(v31 + 10) = -1;
      v31[3] = 0;
      v31[4] = 0;
      v63 = *(&v79 + 1);
      v64 = v77;
      v28 = v73;
      if (*(&v79 + 1) >= v79)
      {
        re::DynamicArray<float *>::growCapacity(&v78, *(&v79 + 1) + 1);
        v63 = *(&v79 + 1);
        v64 = v80;
      }

      v81[v63] = *v27;
      *(&v79 + 1) = v63 + 1;
      v77 = v64 + 1;
      v80 = v64 + 1;
      v13 = v74;
      v25 = v76;
LABEL_73:
      ++v27;
    }

    while (v27 != v28);
LABEL_74:
    if (v86 && v22)
    {
      (*(*v86 + 40))();
    }

    this = v82;
    v65 = v78;
    v2 = v70;
    if (v82 && v78 && v82 != v78)
    {
      goto LABEL_102;
    }

    v78 = v82;
    v66 = *(&v79 + 1);
    v67 = v83;
    v82 = v65;
    v83 = v79;
    v79 = v67;
    v68 = v85;
    v69 = v81;
    v85 = v81;
    ++v84;
    if (this && v68)
    {
      this = (*(*this + 40))(this);
    }

    ++v72;
  }

  while (v72 < a2 && v66);
  *(v70 + 80) = v72;
  if (v72)
  {
    *(v70 + 72) *= v72;
  }

  if (v65)
  {
    if (v69)
    {
      return (*(*v65 + 40))(v65, v69);
    }
  }

  return this;
}

void *re::DynamicArray<anonymous namespace::PackNode>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x1CuLL))
        {
          v2 = 28 * a2;
          result = (*(*result + 32))(result, 28 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 28 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 28, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::DataArray<re::TextureAtlasTile>::allocBlock(unsigned int *a1)
{
  v2 = 24 * a1[11];
  v5.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v5.n128_u64[0])
  {
    v2 = 4 * a1[11];
    v5.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v5.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v5);
      a1[12] = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash();
  __break(1u);
}

uint64_t re::DataArray<re::TextureAtlasTile>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 24 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v9 = a2;
    v131 = a2 - 1;
    v10 = v8;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v10;
          v11 = v9 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v10, v10 + 1, v131, a3);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v10, v10 + 1, v10 + 2, v131, a3);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v10, v10 + 1, v10 + 2, v10 + 3, v131, a3);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            v9 = a2;
            if (v11 == 2)
            {
              v65 = *a3;
              v66 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *(a2 - 1)) + 8);
              result = re::DataArray<re::TextureAtlasTile>::get(v65 + 8, *v10);
              if (v66 < *(result + 8))
              {
                v67 = *v10;
                *v10 = *(a2 - 1);
                *(a2 - 1) = v67;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v68 = v10 + 1;
            v69 = v10 == v9 || v68 == v9;
            v70 = v69;
            if (a5)
            {
              if ((v70 & 1) == 0)
              {
                v71 = 0;
                v72 = v10;
                do
                {
                  v73 = v72;
                  v72 = v68;
                  v74 = *a3;
                  v75 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v73[1]) + 8);
                  result = re::DataArray<re::TextureAtlasTile>::get(v74 + 8, *v73);
                  if (v75 < *(result + 8))
                  {
                    v76 = *v72;
                    v77 = v71;
                    while (1)
                    {
                      *(v10 + v77 + 8) = *(v10 + v77);
                      if (!v77)
                      {
                        break;
                      }

                      v78 = *a3;
                      v79 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v76) + 8);
                      result = re::DataArray<re::TextureAtlasTile>::get(v78 + 8, *(v10 + v77 - 8));
                      v77 -= 8;
                      if (v79 >= *(result + 8))
                      {
                        v80 = (v10 + v77 + 8);
                        goto LABEL_85;
                      }
                    }

                    v80 = v10;
LABEL_85:
                    *v80 = v76;
                  }

                  v68 = v72 + 1;
                  v71 += 8;
                }

                while (v72 + 1 != a2);
              }
            }

            else if ((v70 & 1) == 0)
            {
              do
              {
                v121 = v8;
                v8 = v68;
                v122 = *a3;
                v123 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v121[1]) + 8);
                result = re::DataArray<re::TextureAtlasTile>::get(v122 + 8, *v121);
                if (v123 < *(result + 8))
                {
                  v124 = *v8;
                  v125 = v8;
                  do
                  {
                    v126 = v125;
                    v127 = *--v125;
                    *v126 = v127;
                    v128 = *a3;
                    v129 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v124) + 8);
                    result = re::DataArray<re::TextureAtlasTile>::get(v128 + 8, *(v126 - 2));
                  }

                  while (v129 < *(result + 8));
                  *v125 = v124;
                }

                v68 = v8 + 1;
              }

              while (v8 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != v9)
            {
              v81 = (v11 - 2) >> 1;
              v132 = v81;
              do
              {
                v82 = v81;
                if (v132 >= v81)
                {
                  v83 = (2 * v81) | 1;
                  v84 = &v8[v83];
                  if (2 * v81 + 2 < v11)
                  {
                    v85 = *a3;
                    v86 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v84) + 8);
                    if (v86 < *(re::DataArray<re::TextureAtlasTile>::get(v85 + 8, v84[1]) + 8))
                    {
                      ++v84;
                      v83 = 2 * v82 + 2;
                    }
                  }

                  v87 = &v8[v82];
                  v88 = *a3;
                  v89 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v84) + 8);
                  result = re::DataArray<re::TextureAtlasTile>::get(v88 + 8, *v87);
                  if (v89 >= *(result + 8))
                  {
                    v130 = v82;
                    v90 = *v87;
                    do
                    {
                      v91 = v87;
                      v87 = v84;
                      *v91 = *v84;
                      if (v132 < v83)
                      {
                        break;
                      }

                      v92 = 2 * v83;
                      v83 = (2 * v83) | 1;
                      v84 = &v8[v83];
                      v93 = v92 + 2;
                      if (v92 + 2 < v11)
                      {
                        v94 = *a3;
                        v95 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v84) + 8);
                        if (v95 < *(re::DataArray<re::TextureAtlasTile>::get(v94 + 8, v84[1]) + 8))
                        {
                          ++v84;
                          v83 = v93;
                        }
                      }

                      v96 = *a3;
                      v97 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v84) + 8);
                      result = re::DataArray<re::TextureAtlasTile>::get(v96 + 8, v90);
                    }

                    while (v97 >= *(result + 8));
                    *v87 = v90;
                    v82 = v130;
                  }
                }

                v81 = v82 - 1;
              }

              while (v82);
              do
              {
                v98 = 0;
                v133 = *v8;
                v99 = v8;
                do
                {
                  v100 = v99;
                  v101 = &v99[v98];
                  v99 = v101 + 1;
                  v102 = 2 * v98;
                  v98 = (2 * v98) | 1;
                  v103 = v102 + 2;
                  if (v102 + 2 < v11)
                  {
                    v104 = *a3;
                    v105 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v101[1]);
                    v107 = v101[2];
                    v106 = v101 + 2;
                    v108 = *(v105 + 8);
                    result = re::DataArray<re::TextureAtlasTile>::get(v104 + 8, v107);
                    if (v108 < *(result + 8))
                    {
                      v99 = v106;
                      v98 = v103;
                    }
                  }

                  *v100 = *v99;
                }

                while (v98 <= ((v11 - 2) >> 1));
                v109 = a2 - 1;
                v69 = v99 == --a2;
                if (v69)
                {
                  *v99 = v133;
                }

                else
                {
                  *v99 = *v109;
                  *v109 = v133;
                  v110 = (v99 - v8 + 8) >> 3;
                  v111 = v110 < 2;
                  v112 = v110 - 2;
                  if (!v111)
                  {
                    v113 = v112 >> 1;
                    v114 = &v8[v112 >> 1];
                    v115 = *a3;
                    v116 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v114) + 8);
                    result = re::DataArray<re::TextureAtlasTile>::get(v115 + 8, *v99);
                    if (v116 < *(result + 8))
                    {
                      v117 = *v99;
                      do
                      {
                        v118 = v99;
                        v99 = v114;
                        *v118 = *v114;
                        if (!v113)
                        {
                          break;
                        }

                        v113 = (v113 - 1) >> 1;
                        v114 = &v8[v113];
                        v119 = *a3;
                        v120 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v114) + 8);
                        result = re::DataArray<re::TextureAtlasTile>::get(v119 + 8, v117);
                      }

                      while (v120 < *(result + 8));
                      *v99 = v117;
                    }
                  }
                }

                v111 = v11-- <= 2;
              }

              while (!v111);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = &v10[v11 >> 1];
          if (v11 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(&v8[v11 >> 1], v8, v131, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v8, &v8[v11 >> 1], v131, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v8 + 1, v13 - 1, a2 - 2, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v8 + 2, &v8[v12 + 1], a2 - 3, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v13 - 1, &v8[v11 >> 1], &v8[v12 + 1], a3);
            v14 = *v8;
            *v8 = *v13;
            *v13 = v14;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v15 = *a3;
          v16 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *(v8 - 1)) + 8);
          if (v16 < *(re::DataArray<re::TextureAtlasTile>::get(v15 + 8, *v8) + 8))
          {
            break;
          }

          v40 = *v8;
          v41 = *a3;
          v42 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v8) + 8);
          result = re::DataArray<re::TextureAtlasTile>::get(v41 + 8, *v131);
          if (v42 >= *(result + 8))
          {
            v47 = v8 + 1;
            do
            {
              v10 = v47;
              if (v47 >= v9)
              {
                break;
              }

              v48 = *a3;
              v49 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40) + 8);
              ++v47;
              result = re::DataArray<re::TextureAtlasTile>::get(v48 + 8, *v10);
            }

            while (v49 >= *(result + 8));
          }

          else
          {
            v10 = v8;
            do
            {
              v43 = *a3;
              v44 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40);
              v45 = v10[1];
              ++v10;
              v46 = *(v44 + 8);
              result = re::DataArray<re::TextureAtlasTile>::get(v43 + 8, v45);
            }

            while (v46 >= *(result + 8));
          }

          v50 = v9;
          if (v10 < v9)
          {
            v50 = v9;
            do
            {
              v51 = *a3;
              v52 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40);
              v53 = *--v50;
              v54 = *(v52 + 8);
              result = re::DataArray<re::TextureAtlasTile>::get(v51 + 8, v53);
            }

            while (v54 < *(result + 8));
          }

          while (v10 < v50)
          {
            v55 = *v10;
            *v10 = *v50;
            *v50 = v55;
            do
            {
              v56 = *a3;
              v57 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40);
              v58 = v10[1];
              ++v10;
              v59 = *(v57 + 8);
            }

            while (v59 >= *(re::DataArray<re::TextureAtlasTile>::get(v56 + 8, v58) + 8));
            do
            {
              v60 = *a3;
              v61 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40);
              v62 = *--v50;
              v63 = *(v61 + 8);
              result = re::DataArray<re::TextureAtlasTile>::get(v60 + 8, v62);
            }

            while (v63 < *(result + 8));
          }

          v64 = v10 - 1;
          if (v10 - 1 != v8)
          {
            *v8 = *v64;
          }

          a5 = 0;
          *v64 = v40;
        }

        v17 = 0;
        v18 = *v8;
        do
        {
          v19 = *a3;
          v20 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v8[++v17]) + 8);
        }

        while (v20 < *(re::DataArray<re::TextureAtlasTile>::get(v19 + 8, v18) + 8));
        v21 = &v8[v17];
        v22 = v9;
        if (v17 == 1)
        {
          v22 = v9;
          do
          {
            if (v21 >= v22)
            {
              break;
            }

            v26 = *--v22;
            v27 = *a3;
            v28 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v26) + 8);
          }

          while (v28 >= *(re::DataArray<re::TextureAtlasTile>::get(v27 + 8, v18) + 8));
        }

        else
        {
          do
          {
            v23 = *--v22;
            v24 = *a3;
            v25 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v23) + 8);
          }

          while (v25 >= *(re::DataArray<re::TextureAtlasTile>::get(v24 + 8, v18) + 8));
        }

        if (v21 >= v22)
        {
          v38 = v21 - 1;
        }

        else
        {
          v29 = v21;
          v30 = v22;
          do
          {
            v31 = *v29;
            *v29 = *v30;
            *v30 = v31;
            do
            {
              v32 = v29[1];
              ++v29;
              v33 = *a3;
              v34 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v32) + 8);
            }

            while (v34 < *(re::DataArray<re::TextureAtlasTile>::get(v33 + 8, v18) + 8));
            do
            {
              v35 = *--v30;
              v36 = *a3;
              v37 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v35) + 8);
            }

            while (v37 >= *(re::DataArray<re::TextureAtlasTile>::get(v36 + 8, v18) + 8));
          }

          while (v29 < v30);
          v38 = v29 - 1;
          v9 = a2;
        }

        if (v38 != v8)
        {
          *v8 = *v38;
        }

        *v38 = v18;
        if (v21 >= v22)
        {
          break;
        }

LABEL_38:
        result = std::__introsort<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,false>(v8, v38, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v38 + 1;
      }

      v39 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *>(v8, v38, a3);
      v10 = v38 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *>(v38 + 1, v9, a3);
      if (result)
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_38;
      }
    }

    a2 = v38;
    if (!v39)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *(re::DataArray<re::TextureAtlasTile>::get(*a4 + 8, *a2) + 8);
  v10 = *(re::DataArray<re::TextureAtlasTile>::get(v8 + 8, *a1) + 8);
  v11 = *a4;
  v12 = *(re::DataArray<re::TextureAtlasTile>::get(*a4 + 8, *a3) + 8);
  result = re::DataArray<re::TextureAtlasTile>::get(v11 + 8, *a2);
  v14 = *(result + 8);
  if (v9 >= v10)
  {
    if (v12 < v14)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a4;
      v18 = *(re::DataArray<re::TextureAtlasTile>::get(*a4 + 8, *a2) + 8);
      result = re::DataArray<re::TextureAtlasTile>::get(v17 + 8, *a1);
      if (v18 < *(result + 8))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  else
  {
    v15 = *a1;
    if (v12 >= v14)
    {
      *a1 = *a2;
      *a2 = v15;
      v20 = *a4;
      v21 = *(re::DataArray<re::TextureAtlasTile>::get(*a4 + 8, *a3) + 8);
      result = re::DataArray<re::TextureAtlasTile>::get(v20 + 8, *a2);
      if (v21 >= *(result + 8))
      {
        return result;
      }

      v15 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v15;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = *(re::DataArray<re::TextureAtlasTile>::get(*a5 + 8, *a4) + 8);
  result = re::DataArray<re::TextureAtlasTile>::get(v10 + 8, *a3);
  if (v11 < *(result + 8))
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a5;
    v15 = *(re::DataArray<re::TextureAtlasTile>::get(*a5 + 8, *a3) + 8);
    result = re::DataArray<re::TextureAtlasTile>::get(v14 + 8, *a2);
    if (v15 < *(result + 8))
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a5;
      v18 = *(re::DataArray<re::TextureAtlasTile>::get(v17 + 8, *a2) + 8);
      result = re::DataArray<re::TextureAtlasTile>::get(v17 + 8, *a1);
      if (v18 < *(result + 8))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = *(re::DataArray<re::TextureAtlasTile>::get(*a6 + 8, *a5) + 8);
  result = re::DataArray<re::TextureAtlasTile>::get(v12 + 8, *a4);
  if (v13 < *(result + 8))
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a6;
    v17 = *(re::DataArray<re::TextureAtlasTile>::get(*a6 + 8, *a4) + 8);
    result = re::DataArray<re::TextureAtlasTile>::get(v16 + 8, *a3);
    if (v17 < *(result + 8))
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a6;
      v20 = *(re::DataArray<re::TextureAtlasTile>::get(*a6 + 8, *a3) + 8);
      result = re::DataArray<re::TextureAtlasTile>::get(v19 + 8, *a2);
      if (v20 < *(result + 8))
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a6;
        v23 = *(re::DataArray<re::TextureAtlasTile>::get(v22 + 8, *a2) + 8);
        result = re::DataArray<re::TextureAtlasTile>::get(v22 + 8, *a1);
        if (v23 < *(result + 8))
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *(a2 - 1)) + 8);
        if (v8 < *(re::DataArray<re::TextureAtlasTile>::get(v7 + 8, *a1) + 8))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *a3;
    v15 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v11) + 8);
    if (v15 < *(re::DataArray<re::TextureAtlasTile>::get(v14 + 8, *v10) + 8))
    {
      v16 = *v11;
      v17 = v12;
      while (1)
      {
        *(a1 + v17 + 24) = *(a1 + v17 + 16);
        if (v17 == -16)
        {
          break;
        }

        v18 = *a3;
        v19 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v16) + 8);
        v20 = re::DataArray<re::TextureAtlasTile>::get(v18 + 8, *(a1 + v17 + 8));
        v17 -= 8;
        if (v19 >= *(v20 + 8))
        {
          v21 = (a1 + v17 + 24);
          goto LABEL_19;
        }
      }

      v21 = a1;
LABEL_19:
      *v21 = v16;
      if (++v13 == 8)
      {
        return v11 + 1 == a2;
      }
    }

    v10 = v11;
    v12 += 8;
    if (++v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::getOrCreateTileRenderPipelineState(re::ShaderManager **a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = re::Hash<re::DynamicString>::operator()(info, a2);
  MurmurHash3_x64_128(a2 + 168, 0x2CuLL, 0, info);
  v5 = (*&info[8] + (*info << 6) + (*info >> 2) - 0x61C8864680B583E9) ^ *info;
  v6 = [*(a2 + 224) hash];
  v8 = (((*(a2 + 232) << 6) | 0x9E3779B97F4A7C17) + (((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (((v5 << 6) + (v5 >> 2) + (((v4 << 6) + (v4 >> 2) + re::MetalFunctionConfiguration::generateKey((a2 + 32)) - 0x61C8864680B583E9) ^ v4) - 0x61C8864680B583E9) ^ v5)) ^ v6)) ^ *(a2 + 232);
  v9 = a1[6];
  v10 = (v9 + 208);
  if (!*(v9 + 26) || (v11 = *(*(v9 + 27) + 4 * (v8 % *(v9 + 58))), v11 == 0x7FFFFFFF))
  {
LABEL_6:
    MetalFunction = re::getOrCreateMetalFunction(a1, a2, (a2 + 32), v7);
    if (!MetalFunction)
    {
      return 0;
    }

    v14 = MetalFunction;
    v42 = mach_absolute_time();
    v43 = a1;
    re::ShaderManager::makeTileRenderPipelineDescriptor(a1[6], &v48);
    [v48 setTileFunction_];
    [v48 setRasterSampleCount_];
    [v48 setLinkedFunctions_];
    [v48 setThreadgroupSizeMatchesTileSize_];
    v15 = 0;
    v16 = 32;
    do
    {
      v17 = *(a2 + 172 + 4 * v15);
      if (v17)
      {
        [objc_msgSend(objc_msgSend(v48 colorAttachments)];
      }

      ++v15;
      v16 -= 4;
    }

    while (v16);
    v47 = 0;
    re::mtl::Device::makeRenderPipelineState(v43 + 26, v48, info);
    NS::SharedPtr<MTL::Texture>::operator=(&v47, info);
    if (*info)
    {
    }

    v18 = mach_absolute_time();
    v19 = v18;
    v20 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v18 = mach_timebase_info(info);
      if (v18)
      {
        v23 = NAN;
        goto LABEL_20;
      }

      LODWORD(v21) = *info;
      LODWORD(v22) = *&info[4];
      v20 = v21 / v22;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v20;
    }

    v23 = v20 * (v19 - v42);
LABEL_20:
    v25 = (v23 / 1000000.0);
    v26 = *re::graphicsLogObjects(v18);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 8))
      {
        v27 = *(a2 + 16);
      }

      else
      {
        v27 = a2 + 9;
      }

      *info = 136446466;
      *&info[4] = v27;
      *&info[12] = 1024;
      *&info[14] = v25;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "PSO compilation completed for tile pipeline %{public}s in %d", info, 0x12u);
    }

    if (*v10)
    {
      v28 = v8 % *(v9 + 58);
      v29 = *(*(v9 + 27) + 4 * v28);
      if (v29 != 0x7FFFFFFF)
      {
        v30 = *(v9 + 28);
        if (*(v30 + 24 * v29 + 8) == v8)
        {
LABEL_30:
          v24 = v30 + 24 * v29 + 16;
          goto LABEL_33;
        }

        while (1)
        {
          LODWORD(v29) = *(v30 + 24 * v29) & 0x7FFFFFFF;
          if (v29 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v30 + 24 * v29 + 8) == v8)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      LODWORD(v28) = 0;
    }

    v31 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v10, v28, v8);
    *(v31 + 8) = v8;
    *(v31 + 16) = v47;
    v24 = v31 + 16;
    ++*(v9 + 62);
LABEL_33:
    if ((atomic_load_explicit(&qword_1EE1B8258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8258))
    {
      re::Defaults::BOOLValue("enableShaderDebugLogs", v40, info);
      if (info[0])
      {
        v41 = info[1];
      }

      else
      {
        v41 = 0;
      }

      _MergedGlobals_430 = v41;
      __cxa_guard_release(&qword_1EE1B8258);
    }

    if (v25 > 10 || _MergedGlobals_430 == 1)
    {
      re::MetalFunctionConfiguration::permutationString((a2 + 32), info);
      v32 = *(a2 + 16);
      if ((*(a2 + 8) & 1) == 0)
      {
        v32 = a2 + 9;
      }

      if (info[8])
      {
        v33 = *&info[16];
      }

      else
      {
        v33 = &info[9];
      }

      re::DynamicString::format("name=%s sc=%d tgsmts=%d px=%d %d %d %d %d %d %d %d fc=%s", &v44, v32, *(a2 + 168), *(a2 + 232), *(a2 + 172), *(a2 + 176), *(a2 + 180), *(a2 + 184), *(a2 + 188), *(a2 + 192), *(a2 + 196), *(a2 + 200), v33);
      isFrameCaptureEnabled = re::mtl::Device::isFrameCaptureEnabled((v43 + 26));
      v35 = isFrameCaptureEnabled;
      v36 = *re::graphicsLogObjects(isFrameCaptureEnabled);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *&v46[7];
        v38 = "";
        if ((v45 & 1) == 0)
        {
          v37 = v46;
        }

        if (v35)
        {
          v38 = "(frame capture enabled)";
        }

        *buf = 136446466;
        v50 = v37;
        v51 = 2080;
        v52 = v38;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "Compiling PSO RT %{public}s %s", buf, 0x16u);
      }

      if (v44 && (v45 & 1) != 0)
      {
        (*(*v44 + 40))();
      }

      if (*info && (info[8] & 1) != 0)
      {
        (*(**info + 40))();
      }
    }

    if (v47)
    {
    }

    if (v48)
    {
    }

    return v24;
  }

  v12 = *(v9 + 28);
  while (*(v12 + 24 * v11 + 8) != v8)
  {
    v11 = *(v12 + 24 * v11) & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }
  }

  return v12 + 24 * v11 + 16;
}

uint64_t re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v18 - 1) % *(a1 + 24));
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
                *v18 = 0;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

double re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::TextureHandle::invalidate(re::TextureHandle *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
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
      *(this + 1) = 0;
      goto LABEL_6;
    }

    re::Texture::dispose(v2);
    goto LABEL_5;
  }

LABEL_6:
  *this = 0;
}

re::TextureHandle *re::TextureHandle::TextureHandle(re::TextureHandle *this, const re::TextureHandle *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    *this = v3;
    *(this + 1) = v4;
    if (!atomic_load(v4))
    {
      v9 = atomic_load(v4);
      re::internal::refCountCheckFailHandler(1, v4, v9);
    }

    add_explicit = atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
    if (add_explicit - 0x100000 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(1, v4, (add_explicit + 1));
    }
  }

  return this;
}

uint64_t re::TextureHandle::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *a2 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      if (!atomic_load(v4))
      {
        v12 = atomic_load(v4);
        re::internal::refCountCheckFailHandler(1, *(a2 + 8), v12);
      }

      add_explicit = atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
      if (add_explicit - 0x100000 <= 0xFFEFFFFE)
      {
        re::internal::refCountCheckFailHandler(1, v4, (add_explicit + 1));
      }
    }

    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_14;
    }

    add = atomic_fetch_add(v8, 0xFFFFFFFF);
    v10 = (add - 1);
    if (add - 1048578 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(0, v8, v10);
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else if (add != 1)
    {
LABEL_14:
      *a1 = *a2;
      return a1;
    }

    re::Texture::dispose(v8);
    goto LABEL_14;
  }

  return a1;
}

void re::TextureHandle::metalTexture(os_unfair_lock_s **this@<X0>, void *a2@<X8>)
{
  if (this[1])
  {
    os_unfair_lock_lock(*this + 82);
    v4 = *&this[1][2]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(*this + 82);
  }

  else
  {
    re::TextureHandle::InvalidTexture(this);
    v4 = re::TextureHandle::InvalidTexture(void)::invalidTexture;
  }

  *a2 = v4;
}

uint64_t *re::TextureHandle::InvalidTexture(re::TextureHandle *this)
{
  {
    re::TextureHandle::InvalidTexture(void)::invalidTexture = 0;
  }

  return &re::TextureHandle::InvalidTexture(void)::invalidTexture;
}

void re::TextureHandle::unsynchronizedMetalTexture(os_unfair_lock_s **this@<X0>, void *a2@<X8>)
{
  if (this[1])
  {
    os_unfair_lock_lock(*this + 82);
    v4 = *&this[1][4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(*this + 82);
  }

  else
  {
    re::TextureHandle::InvalidTexture(this);
    v4 = re::TextureHandle::InvalidTexture(void)::invalidTexture;
  }

  *a2 = v4;
}

void re::TextureHandle::setMetalTexture(const re::TextureHandle *a1, void **a2)
{
  v2 = 0;
  re::TextureHandle::setMetalTextureAndHeap(a1, a2, &v2);
  if (v2)
  {
  }
}

double re::TextureHandle::setMetalTextureAndHeap(const re::TextureHandle *a1, void **a2, void **a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1))
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v29 = 0x7FFFFFFFLL;
    os_unfair_lock_lock((*a1 + 328));
    v6 = *(a1 + 1);
    v8 = *(v6 + 16);
    v7 = (v6 + 16);
    if (*a2 == v8 && *a3 == *(*(a1 + 1) + 32))
    {
      os_unfair_lock_unlock((*a1 + 328));
    }

    else
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v7, a2);
      NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 1) + 32), a3);
      v9 = *(a1 + 1);
      v10 = (v9 + 40);
      if (&v26 != (v9 + 40) && *v10)
      {
        v11 = *(v9 + 68);
        if (v11 <= 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = v11;
        }

        re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(&v26, *v10, v12);
        re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::copy(&v26, v10);
      }

      os_unfair_lock_unlock((*a1 + 328));
      objc_initWeak(&location, 0);
      *&v25 = 0;
      v13 = v28;
      if (v28)
      {
        v14 = 0;
        v15 = (v27 + 8);
        while (1)
        {
          v16 = *v15;
          v15 += 10;
          if (v16 < 0)
          {
            break;
          }

          if (v28 == ++v14)
          {
            LODWORD(v14) = v28;
            break;
          }
        }
      }

      else
      {
        LODWORD(v14) = 0;
      }

      if (v14 != v28)
      {
        v17 = v27;
        do
        {
          v18 = v17 + 40 * v14;
          WeakRetained = objc_loadWeakRetained((v18 + 16));
          if (WeakRetained)
          {
            v20 = WeakRetained;
            re::MaterialParameterBlock::enqueueTextureValueChangedDelta((WeakRetained - 8), (v18 + 24), a1);
          }

          else
          {
            if ((v18 + 16) != &location)
            {
              objc_destroyWeak(&location);
              location = 0;
              objc_copyWeak(&location, (v18 + 16));
            }

            v25 = *(v18 + 24);
          }

          v17 = v27;
          if (v28 <= v14 + 1)
          {
            v21 = v14 + 1;
          }

          else
          {
            v21 = v28;
          }

          while (v21 - 1 != v14)
          {
            LODWORD(v14) = v14 + 1;
            if ((*(v27 + 40 * v14 + 8) & 0x80000000) != 0)
            {
              goto LABEL_30;
            }
          }

          LODWORD(v14) = v21;
LABEL_30:
          ;
        }

        while (v14 != v13);
        if (v25)
        {
          v22 = *re::graphicsLogObjects(WeakRetained);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219010;
            v31 = a1;
            v32 = 1024;
            v33 = HIDWORD(v27);
            v34 = 2048;
            v35 = *(&v25 + 1);
            v36 = 2080;
            v37 = "<unknown>";
            v38 = 2048;
            v39 = v25;
            _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "TextureHandle (%p) tried to enqueue texture change into %d blocks. It encountered at least one expired MaterialParameterBlock (%p) which texture '%s' (hash: %llu). This suggests a missing call to 'stopTrackingMaterialParameterBlock()' or 'disconnectFromTextureHandles()'.", buf, 0x30u);
          }
        }
      }

      *&v25 = 0;
      objc_destroyWeak(&location);
    }

    return re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::deinit(&v26);
  }

  return result;
}

void re::TextureHandle::unsafeReleaseMetalTextures(os_unfair_lock_s **this)
{
  if (this[1])
  {
    os_unfair_lock_lock(*this + 82);
    re::TextureHandle::InvalidTexture(v2);
    v3 = NS::SharedPtr<MTL::Buffer>::operator=(&this[1][4], &re::TextureHandle::InvalidTexture(void)::invalidTexture);
    re::TextureHandle::InvalidTexture(v3);
    NS::SharedPtr<MTL::Buffer>::operator=(&this[1][2], &re::TextureHandle::InvalidTexture(void)::invalidTexture);
    v4 = this[1];

    *&v4[8]._os_unfair_lock_opaque = 0;
    v5 = this[1];

    *&v5[6]._os_unfair_lock_opaque = 0;
    v6 = *this + 82;

    os_unfair_lock_unlock(v6);
  }
}

void re::TextureHandle::startTrackingMaterialParameterBlock(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (*(a1 + 8))
  {
    if (a2)
    {
      v6 = (a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    objc_initWeak(&location, v6);
    v16 = *a3;
    v17 = a2;
    os_unfair_lock_lock((*a1 + 328));
    v7 = *(a1 + 8);
    v8 = (v16 + (v17 << 6) + (v17 >> 2) - 0x61C8864680B583E9) ^ v17;
    v9 = *(v7 + 64);
    if (v9)
    {
      v10 = v8 % v9;
      v11 = *(*(v7 + 48) + 4 * (v8 % v9));
      if (v11 != 0x7FFFFFFF)
      {
        v12 = *(v7 + 56);
        if (*(v12 + 40 * v11 + 32) == v17 && *(v12 + 40 * v11 + 24) == v16)
        {
          goto LABEL_20;
        }

        while (1)
        {
          LODWORD(v11) = *(v12 + 40 * v11 + 8) & 0x7FFFFFFF;
          if (v11 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v12 + 40 * v11 + 32) == v17 && *(v12 + 40 * v11 + 24) == v16)
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::addAsMove(v7 + 40, v10, v8, &location, &location);
    ++*(v7 + 80);
LABEL_20:
    os_unfair_lock_unlock((*a1 + 328));
    v16 = 0;
    objc_destroyWeak(&location);
  }
}

void re::TextureHandle::stopTrackingMaterialParameterBlock(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 8))
  {
    objc_initWeak(&location, 0);
    v7 = *a3;
    v8 = a2;
    os_unfair_lock_lock((*a1 + 328));
    re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::remove(*(a1 + 8) + 40, &location);
    os_unfair_lock_unlock((*a1 + 328));
    v7 = 0;
    objc_destroyWeak(&location);
  }
}

uint64_t re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = ((v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4) % v2;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * v6);
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (*(v10 + 40 * v8 + 32) != v4 || *(v10 + 40 * v8 + 24) != v5)
  {
    while (1)
    {
      v12 = v8;
      v13 = *(v10 + 40 * v8 + 8);
      v8 = v13 & 0x7FFFFFFF;
      if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v10 + 40 * v8 + 32) == v4 && *(v10 + 40 * v8 + 24) == v5)
      {
        *(v10 + 40 * v12 + 8) = *(v10 + 40 * v12 + 8) & 0x80000000 | *(v10 + 40 * v8 + 8) & 0x7FFFFFFF;
        goto LABEL_17;
      }
    }
  }

  *(v7 + 4 * v6) = *(v10 + 40 * v8 + 8) & 0x7FFFFFFF;
LABEL_17:
  v15 = *(a1 + 16);
  v16 = v15 + 40 * v8;
  v17 = *(v16 + 8);
  if (v17 < 0)
  {
    *(v16 + 8) = v17 & 0x7FFFFFFF;
    *(v16 + 24) = 0;
    objc_destroyWeak((v16 + 16));
    *(v16 + 16) = 0;
    v15 = *(a1 + 16);
  }

  v18 = *(a1 + 40);
  *(v15 + 40 * v8 + 8) = *(v15 + 40 * v8 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v18 + 1;
  return 1;
}

uint64_t *re::TextureHandle::InvalidHandle(re::TextureHandle *this)
{
  {
    re::TextureHandle::InvalidHandle(void)::textureHandle = 0;
    *algn_1ECF1C688 = 0;
  }

  return &re::TextureHandle::InvalidHandle(void)::textureHandle;
}

void re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      v9 = (v8 + v6);
      if ((*(v8 + v6 + 8) & 0x80000000) != 0)
      {
        v12 = *v9;
        v10 = (v9 + 2);
        v11 = v12;
        v13 = *(a1 + 24);
        v14 = v12 % v13;
        v15 = *(a1 + 36);
        if (v15 == 0x7FFFFFFF)
        {
          v15 = *(a1 + 32);
          v16 = v15;
          if (v15 == v13)
          {
            re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
            v14 = v11 % *(a1 + 24);
            v16 = *(a1 + 32);
          }

          *(a1 + 32) = v16 + 1;
          v17 = *(a1 + 16);
          v18 = *(v17 + 40 * v15 + 8);
        }

        else
        {
          v17 = *(a1 + 16);
          v18 = *(v17 + 40 * v15 + 8);
          *(a1 + 36) = v18 & 0x7FFFFFFF;
        }

        *(v17 + 40 * v15 + 8) = v18 | 0x80000000;
        *(*(a1 + 16) + 40 * v15 + 8) = *(*(a1 + 16) + 40 * v15 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v14);
        *(*(a1 + 16) + 40 * v15) = v11;
        v19 = *(a1 + 16) + 40 * v15;
        *(v19 + 16) = 0;
        v19 += 16;
        objc_copyWeak(v19, v10);
        *(v19 + 8) = *(v8 + v6 + 24);
        *(*(a1 + 8) + 4 * v14) = v15;
        ++*(a1 + 28);
        v5 = *(a2 + 32);
      }

      v6 += 40;
    }
  }
}

void re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::clear(uint64_t a1)
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
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          *(v6 + 24) = 0;
          objc_destroyWeak((v6 + 16));
          *(v6 + 16) = 0;
          v3 = *(a1 + 32);
        }

        v4 += 40;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(v14, v4, a2);
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
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = (v7 + 16);
        do
        {
          if ((*(v12 - 1) & 0x80000000) != 0)
          {
            re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::addAsMove(a1, *(v12 - 2) % *(a1 + 24), *(v12 - 2), v12, v12);
          }

          ++v11;
          v12 += 5;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::deinit(v14);
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

uint64_t re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, int a4, id *from)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
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
  v13 = *(a1 + 16) + 40 * v9;
  *(v13 + 16) = 0;
  v13 += 16;
  objc_moveWeak(v13, from);
  *(v13 + 8) = *(from + 1);
  *(*(a1 + 8) + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

double re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2] + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          *(v6 + 24) = 0;
          objc_destroyWeak((v6 + 16));
          *(v6 + 16) = 0;
          v3 = *(a1 + 8);
        }

        v4 += 40;
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

void re::Texture::dispose(id *this)
{
  this[1] = 0;

  this[2] = 0;
  this[3] = 0;

  this[4] = 0;

  re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::clear((this + 5));
}

uint64_t re::isASTCPixelFormat(int a1)
{
  result = 1;
  if (a1 > 499)
  {
    if ((a1 - 520) <= 0x31 && ((1 << (a1 - 8)) & 0x3FC0FDFF007FFLL) != 0)
    {
      return 0;
    }

    if ((a1 - 500) < 0xB)
    {
      return 0;
    }

    v3 = a1 - 588;
    if (v3 <= 0x29 && ((1 << v3) & 0x30003F80001) != 0)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 40:
      case 41:
      case 42:
      case 43:
      case 53:
      case 54:
      case 55:
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 80:
      case 81:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 103:
      case 104:
      case 105:
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 123:
      case 124:
      case 125:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 140:
      case 141:
      case 142:
      case 143:
      case 150:
      case 151:
      case 152:
      case 153:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 170:
      case 172:
      case 174:
      case 176:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
        return 0;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 21:
      case 26:
      case 27:
      case 28:
      case 29:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 56:
      case 57:
      case 58:
      case 59:
      case 61:
      case 66:
      case 67:
      case 68:
      case 69:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 106:
      case 107:
      case 108:
      case 109:
      case 111:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 126:
      case 127:
      case 128:
      case 129:
      case 136:
      case 137:
      case 138:
      case 139:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 168:
      case 169:
      case 171:
      case 173:
      case 175:
      case 177:
        return result;
      default:
        v4 = a1 - 240;
        if (v4 <= 0x16 && ((1 << v4) & 0x70B403) != 0)
        {
          return 0;
        }

        break;
    }
  }

  return result;
}

uint64_t re::translateSRGBPixelFormatToLinear(uint64_t result)
{
  if (result <= 132)
  {
    if (result <= 70)
    {
      if (result == 11)
      {
        return 10;
      }

      else if (result == 31)
      {
        return 30;
      }
    }

    else
    {
      switch(result)
      {
        case 0x47:
          return 70;
        case 0x51:
          return 80;
        case 0x83:
          return 130;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 153:
        result = 152;
        break;
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 166:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 180:
      case 182:
      case 184:
      case 185:
      case 191:
        return result;
      case 165:
        result = 164;
        break;
      case 167:
        result = 166;
        break;
      case 179:
        result = 178;
        break;
      case 181:
        result = 180;
        break;
      case 183:
        result = 182;
        break;
      case 186:
        result = 204;
        break;
      case 187:
        result = 205;
        break;
      case 188:
        result = 206;
        break;
      case 189:
        result = 207;
        break;
      case 190:
        result = 208;
        break;
      case 192:
        result = 210;
        break;
      case 193:
        result = 211;
        break;
      case 194:
        result = 212;
        break;
      case 195:
        result = 213;
        break;
      case 196:
        result = 214;
        break;
      case 197:
        result = 215;
        break;
      case 198:
        result = 216;
        break;
      case 199:
        result = 217;
        break;
      case 200:
        result = 218;
        break;
      default:
        if (result == 133)
        {
          result = 132;
        }

        else if (result == 135)
        {
          result = 134;
        }

        break;
    }
  }

  return result;
}

uint64_t re::translateLinearPixelFormatToSRGB(uint64_t result)
{
  if (result <= 163)
  {
    if (result > 129)
    {
      if (result > 133)
      {
        if (result == 134)
        {
          return 135;
        }

        else if (result == 152)
        {
          return 153;
        }
      }

      else if (result == 130)
      {
        return 131;
      }

      else if (result == 132)
      {
        return 133;
      }
    }

    else if (result > 69)
    {
      if (result == 70)
      {
        return 71;
      }

      else if (result == 80)
      {
        return 81;
      }
    }

    else if (result == 10)
    {
      return 11;
    }

    else if (result == 30)
    {
      return 31;
    }
  }

  else
  {
    switch(result)
    {
      case 178:
        result = 179;
        break;
      case 179:
      case 181:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 209:
        return result;
      case 180:
        result = 181;
        break;
      case 182:
        result = 183;
        break;
      case 204:
        result = 186;
        break;
      case 205:
        result = 187;
        break;
      case 206:
        result = 188;
        break;
      case 207:
        result = 189;
        break;
      case 208:
        result = 190;
        break;
      case 210:
        result = 192;
        break;
      case 211:
        result = 193;
        break;
      case 212:
        result = 194;
        break;
      case 213:
        result = 195;
        break;
      case 214:
        result = 196;
        break;
      case 215:
        result = 197;
        break;
      case 216:
        result = 198;
        break;
      case 217:
        result = 199;
        break;
      case 218:
        result = 200;
        break;
      default:
        if (result == 164)
        {
          result = 165;
        }

        else if (result == 166)
        {
          result = 167;
        }

        break;
    }
  }

  return result;
}

uint64_t re::isHDR(int a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 53:
    case 54:
    case 60:
    case 62:
    case 63:
    case 64:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 90:
    case 91:
    case 94:
    case 103:
    case 104:
    case 110:
    case 112:
    case 113:
    case 114:
    case 123:
    case 124:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
      goto LABEL_4;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 61:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 92:
    case 93:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 111:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 136:
    case 137:
    case 138:
    case 139:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 168:
    case 169:
    case 171:
    case 173:
    case 175:
    case 177:
    case 184:
    case 185:
    case 191:
    case 201:
    case 202:
    case 203:
    case 209:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 251:
    case 254:
    case 256:
    case 257:
    case 258:
    case 259:
      return result;
    default:
      if ((a1 - 500) <= 0x3E && ((1 << (a1 + 12)) & 0x400DFF007FF007FFLL) != 0 || (v3 = a1 - 588, v3 <= 0x29) && ((1 << v3) & 0x30000000001) != 0)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

void re::TargetDisplayInfoProvider::TargetDisplayInfoProvider(re::TargetDisplayInfoProvider *this)
{
  v2 = re::globalAllocators(this);
  *(this + 3) = v2[2];
  *(this + 4) = 0;
  v3 = re::globalAllocators(v2);
  *(this + 9) = v3[2];
  *(this + 10) = 0;
  v4 = re::globalAllocators(v3);
  *(this + 15) = v4[2];
  *(this + 16) = 0;
  v5 = re::globalAllocators(v4);
  *(this + 21) = v5[2];
  *(this + 22) = 0;
  v6 = re::globalAllocators(v5);
  *(this + 27) = v6[2];
  *(this + 28) = 0;
  v7 = re::globalAllocators(v6);
  *(this + 33) = v7[2];
  *(this + 34) = 0;
  v8 = re::globalAllocators(v7);
  *(this + 39) = v8[2];
  *(this + 40) = 0;
  v9 = re::globalAllocators(v8);
  *(this + 45) = v9[2];
  *(this + 46) = 0;
  v10 = re::globalAllocators(v9);
  *(this + 51) = v10[2];
  *(this + 52) = 0;
  v11 = re::globalAllocators(v10);
  *(this + 57) = v11[2];
  *(this + 58) = 0;
  v12 = re::globalAllocators(v11);
  *(this + 63) = v12[2];
  *(this + 64) = 0;
  v13 = re::globalAllocators(v12);
  *(this + 69) = v13[2];
  *(this + 70) = 0;
  v14 = re::globalAllocators(v13);
  *(this + 75) = v14[2];
  *(this + 76) = 0;
  v15 = re::globalAllocators(v14);
  *(this + 81) = v15[2];
  *(this + 82) = 0;
  v16 = re::globalAllocators(v15);
  *(this + 87) = v16[2];
  *(this + 88) = 0;
  v17 = re::globalAllocators(v16);
  *(this + 93) = v17[2];
  *(this + 94) = 0;
  v18 = re::globalAllocators(v17);
  *(this + 98) = v18[2];
  *(this + 99) = 0;
  v19 = re::globalAllocators(v18);
  *(this + 103) = v19[2];
  *(this + 105) = 0;
  *(this + 106) = 0;
  *(this + 104) = 0;
  v20 = re::globalAllocators(v19);
  *(this + 110) = v20[2];
  *(this + 111) = 0;
  v21 = re::globalAllocators(v20);
  *(this + 115) = v21[2];
  *(this + 116) = 0;
  v22 = re::globalAllocators(v21);
  *(this + 127) = v22[2];
  *(this + 128) = 0;
  v23 = re::globalAllocators(v22);
  *(this + 139) = v23[2];
  *(this + 140) = 0;
  v24 = re::globalAllocators(v23);
  *(this + 145) = v24[2];
  *(this + 146) = 0;
  v25 = re::globalAllocators(v24);
  *(this + 151) = v25[2];
  *(this + 152) = 0;
  *(this + 163) = re::globalAllocators(v25)[2];
  *(this + 164) = 0;
  *(this + 10) = 1092616192;
  *(this + 22) = 100;
  *(this + 34) = 1600;
  *(this + 46) = 976143166;
  *(this + 130) = 1090519040;
  *(this + 142) = 1040187392;
  *(this + 232) = 1;
  *(this + 70) = 1176256512;
  *(this + 82) = 1134367843;
  *(this + 94) = 0;
  *(this + 106) = 1120403456;
  *(this + 118) = 100;
  *(this + 616) = 3;
  *(this + 166) = 1065353216;
  *(this + 178) = 1065353216;
  *(this + 105) = 32;
  operator new[]();
}

void re::TargetDisplayInfoProvider::~TargetDisplayInfoProvider(re::TargetDisplayInfoProvider *this)
{
  v2 = *(this + 106);
  if (v2)
  {
    MEMORY[0x1E69064F0](v2, 0x1000C8052888210);
  }

  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 1280);
  re::FunctionBase<24ul,simd_float3x3 ()(void)>::destroyCallable(this + 1184);
  re::FunctionBase<24ul,re::LuminanceMap ()(void)>::destroyCallable(this + 1136);
  re::FunctionBase<24ul,re::LuminanceMap ()(void)>::destroyCallable(this + 1088);
  re::FunctionBase<24ul,simd_float3x3 ()(void)>::destroyCallable(this + 992);
  re::FunctionBase<24ul,simd_float3x3 ()(void)>::destroyCallable(this + 896);
  re::FunctionBase<24ul,void ()(re::ImageHistogram)>::destroyCallable(this + 856);
  re::FunctionBase<24ul,re::TonemapLUTDomain ()(void)>::destroyCallable(this + 800);
  re::FunctionBase<24ul,void ()(re::TonemapLUT)>::destroyCallable(this + 760);
  re::FunctionBase<24ul,void ()(re::TonemapFloatLUT)>::destroyCallable(this + 720);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 672);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 624);
  re::FunctionBase<24ul,unsigned char ()(void)>::destroyCallable(this + 576);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 528);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 480);
  re::FunctionBase<24ul,unsigned int ()(void)>::destroyCallable(this + 432);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 384);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 336);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 288);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 240);
  re::FunctionBase<24ul,BOOL ()(void)>::destroyCallable(this + 192);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 144);
  re::FunctionBase<24ul,unsigned int ()(void)>::destroyCallable(this + 96);
  re::FunctionBase<24ul,unsigned int ()(void)>::destroyCallable(this + 48);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this);
}

uint64_t (***re::FunctionBase<24ul,float ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,simd_float3x3 ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,re::LuminanceMap ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,void ()(re::ImageHistogram)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,re::TonemapLUTDomain ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,void ()(re::TonemapLUT)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,void ()(re::TonemapFloatLUT)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,unsigned char ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,unsigned int ()(void)>::destroyCallable(uint64_t a1))(void)
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

void re::DirectBuffer::getResourceId(re::DirectBuffer *this@<X0>, unsigned __int8 *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v3 = DRBufferAsResource();
    *src = 0;
    v5 = 0;
    DRResourceGetIdentifier();
    uuid_copy(a2, src);
  }

  else
  {

    uuid_copy(a2, UUID_NULL);
  }
}

void re::DirectBuffer::readUsing(id *a1@<X1>, void *a2@<X8>)
{
  v5 = *a1;
  v3 = DRBufferReadUsing();
  *a2 = v3;
  v4 = v3;
}

void re::MaterialDefinition::deinit(re::MaterialDefinition *this)
{
  re::ShaderParameterTable::deinit((this + 272));
  re::TextureParameterTable::deinit((this + 800));
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 160);
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(this + 16);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::MaterialTechniqueDefinition>("deinit", 20, v5);
      v4 -= 8;
    }

    while (v4);
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 2);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  v6 = *(this + 42);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 19);
    while (1)
    {
      v9 = *v8;
      v8 += 12;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 42);
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
    re::FixedArray<CoreIKTransform>::deinit((*(this + 19) + 48 * v7 + 16));
    v10 = *(this + 42);
    if (v10 <= v7 + 1)
    {
      v10 = v7 + 1;
    }

    while (v10 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 19) + 48 * v7) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v7) = v10;
LABEL_17:
    ;
  }

  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 17);
  v12 = *(this + 178);
  if (v12)
  {
    v13 = re::globalAllocators(v11);
    (*(*v13[2] + 40))(v13[2], v12);
  }

  *(this + 178) = 0;
  *(this + 1433) = 0;
}

re *re::internal::destroyPersistent<re::MaterialTechniqueDefinition>(re *result, uint64_t a2, re::MaterialTechniqueDefinition *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::MaterialTechniqueDefinition::~MaterialTechniqueDefinition(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

double re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
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
          re::FixedArray<CoreIKTransform>::deinit((v6 + v4 + 16));
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

re::MaterialInstance *re::MaterialInstance::MaterialInstance(re::MaterialInstance *this, re::MaterialManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v4 = &unk_1F5D037D0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 44) = 0u;
  *(v4 + 60) = 0x7FFFFFFFLL;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0;
  *(v4 + 156) = 0x7FFFFFFFLL;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 236) = 0x7FFFFFFFLL;
  *(v4 + 296) = 0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  re::MaterialParameterTable::MaterialParameterTable((v4 + 304));
  *(this + 179) = 0;
  *(this + 1448) = 0;
  *(this + 91) = 0u;
  *(this + 182) = atomic_fetch_add(&re::MaterialInstance::g_lastInstanceId, 1uLL);
  *(this + 183) = a2;
  return this;
}

void re::MaterialInstance::~MaterialInstance(re::MaterialInstance *this)
{
  *this = &unk_1F5D037D0;
  if (*(this + 183))
  {
    v2 = *(this + 9);
    v3 = *(this + 10);
    v4 = *(this + 13);
    v22 = 0;
    v21 = 0uLL;
    re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::init<>(&v21, v2, v4 + v3);
    v5 = *(this + 10);
    v6 = v22;
    if (v5)
    {
      v7 = *(this + 11);
      v8 = 40 * v5;
      do
      {
        std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100](v6, v7);
        v7 += 5;
        v6 += 5;
        v8 -= 40;
      }

      while (v8);
      v6 = v22;
    }

    v9 = *(this + 13);
    if (v9)
    {
      v10 = *(this + 14);
      v11 = &v6[5 * v5];
      v12 = 40 * v9;
      do
      {
        std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100](v11, v10);
        v10 += 5;
        v11 += 5;
        v12 -= 40;
      }

      while (v12);
    }

    re::MaterialManager::destroyMaterial(*(this + 183), *(this + 182), &v21);
    re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(&v21);
  }

  re::ShaderParameterTable::deinit((this + 328));
  re::TextureParameterTable::deinit((this + 856));
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 167);
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(this + 9);
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(this + 12);
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 3);
  v14 = *(this + 2);
  if (v14)
  {

    *(this + 2) = 0;
  }

  v15 = *(this + 179);
  if (v15)
  {
    v16 = re::globalAllocators(v13);
    (*(*v16[2] + 40))(v16[2], v15);
  }

  *(this + 179) = 0;
  re::MaterialParameterTable::~MaterialParameterTable((this + 304));
  re::FixedArray<re::LinkedFunction>::deinit(this + 34);
  re::FixedArray<re::LinkedFunction>::deinit(this + 31);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 25);
  re::FixedArray<re::sg::ShaderGraphDynamicFunctionConstant>::deinit(this + 21);
  v17 = *(this + 15);
  if (v17)
  {
    v18 = *(this + 38);
    if (v18)
    {
      v19 = *(this + 17);
      do
      {
        if ((*v19 & 0x80000000) != 0)
        {
          *v19 &= ~0x80000000;
          *(v19 + 8) = 0;
        }

        v19 += 24;
        --v18;
      }

      while (v18);
    }

    (*(*v17 + 40))(v17, *(this + 16));
    *(this + 38) = 0;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 156) = 0x7FFFFFFFLL;
  }

  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(this + 12);
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(this + 9);
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 3);
  v20 = *(this + 2);
  if (v20)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::MaterialInstance::~MaterialInstance(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        v4 = std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](v4) + 5;
        v5 -= 40;
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

void re::MaterialTechniqueDefinition::~MaterialTechniqueDefinition(re::MaterialTechniqueDefinition *this)
{
  re::GeomMesh::freeName(this);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 349);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 343);
  objc_destroyWeak(this + 342);
  *(this + 342) = 0;
  re::FixedArray<re::WeakStringID>::deinit(this + 337);
  re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 331);
  if (*(this + 2632) == 1)
  {
    *(this + 330) = 0;
  }

  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 323);
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 315);
  re::DynamicString::deinit((this + 2472));
  re::DynamicString::deinit((this + 2440));
  re::MaterialParameterTable::~MaterialParameterTable((this + 1296));
  re::MaterialParameterTable::~MaterialParameterTable((this + 168));
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(this + 6);
  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(this + 1);
}

void *re::FixedArray<re::WeakStringID>::deinit(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v4 = result + 1;
    v3 = result[1];
    if (v3)
    {
      v5 = result[2];
      bzero(v5, 8 * v3);
      result = (*(*v1 + 40))(v1, v5);
      *v4 = 0;
      v4[1] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::init<>(void *result, uint64_t a2, unint64_t a3)
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
      result[4] = 0;
      result += 5;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[4] = 0;
  return result;
}

uint64_t *std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::MaterialTechnique *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t std::function<void ()(re::MaterialTechnique *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t *std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::MaterialTechnique *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::MaterialTechnique *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<void ()(re::MaterialTechnique *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *re::DeformationFencePool::init(re::DeformationFencePool *this, const re::mtl::Device *a2)
{
  v2 = this;
  *this = a2;
  v3 = this + 16;
  v4 = 512;
  do
  {
    *(v3 - 1) = 0xFFFFFFFFFFFFFFFLL;
    v3 += 64;
    v4 -= 64;
  }

  while (v4);
  *(v2 + 65) = 0;
}

uint64_t *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::DeformationFencePool::deinit(re::DeformationFencePool *this)
{
  *this = 0;
  v2 = this + 16;
  v3 = 512;
  do
  {
    *(v2 - 1) = 0xFFFFFFFFFFFFFFFLL;
    re::BucketArray<unsigned long,8ul>::deinit(v2);
    v2 += 64;
    v3 -= 64;
  }

  while (v3);
  *(this + 65) = 0;
  re::BucketArray<unsigned long,8ul>::deinit(this + 528);

  return re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::deinit(this + 584);
}

uint64_t re::DeformationFencePool::setCurrentFrame(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFFLL)
  {
    v6 = (result + 8);
    for (i = 8; i != 520; v6 = (v4 + i))
    {
      v8 = *v6 & 0xFFFFFFFFFFFFFFFLL;
      if (v8 != 0xFFFFFFFFFFFFFFFLL && v8 <= v5)
      {
        v10 = v6[6];
        if (v10)
        {
          for (j = 0; j != v10; ++j)
          {
            v12 = *re::BucketArray<unsigned long,8ul>::operator[]((v6 + 1), j);
            *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(v4 + 528) = v12;
          }
        }

        *v6 = 0xFFFFFFFFFFFFFFFLL;
        result = re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::clear((v6 + 1));
      }

      i += 64;
    }
  }

  v13 = v4 + ((a3 & 7) << 6);
  v15 = *(v13 + 8);
  v14 = (v13 + 8);
  *(v4 + 520) = v14;
  v16 = v15 & 0xFFFFFFFFFFFFFFFLL;
  if (((v15 ^ a3) & 0xFFFFFFFFFFFFFFFLL) == 0 || v16 == 0xFFFFFFFFFFFFFFFLL)
  {
    *v14 = a3;
  }

  else
  {
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Overlapped frame (%llu) with current frame (%llu) detected! Last completed frame: %llu", "currentFrame == m_currentPerFrameFences->frameCount || !m_currentPerFrameFences->frameCount.isValid()", "setCurrentFrame", 53, v16, a3 & 0xFFFFFFFFFFFFFFFLL, v5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::DeformationFencePool::allocateFence(re::DeformationFencePool *this)
{
  v2 = *(this + 71);
  if (v2)
  {
    v3 = *re::BucketArray<unsigned long,8ul>::operator[](this + 528, v2 - 1);
    re::BucketArray<unsigned long,8ul>::operator[](this + 528, *(this + 71) - 1);
    --*(this + 71);
    ++*(this + 144);
LABEL_5:
    *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(*(this + 65) + 8) = v3;
    return v3;
  }

  v4 = [**this newFence];
  *re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::addUninitialized(this + 584) = v4;
  v6 = *(this + 78);
  if (v6)
  {
    v3 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](this + 584, v6 - 1);
    goto LABEL_5;
  }

  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      result = re::BucketArray<unsigned long,8ul>::operator[](v1, i);
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

uint64_t *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 64, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t *re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 256, 0);
        result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 7);
}

uint64_t re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x1F);
}

uint64_t re::mesh_traversal::traverseMeshScene(re::mesh_traversal *this, float32x4_t *a2, const re::MeshScene *a3)
{
  v71 = a3;
  v118 = *MEMORY[0x1E69E9840];
  if ((**this)(this))
  {
    v5 = a2[2].i64[0];
    v57 = a2[2].u64[1];
    v58 = a2[1].u64[1];
    v6 = a2[37].i64[0];
    if (!v6)
    {
      v6 = a2[32].i64[0];
    }

    v69 = v6;
    v70 = a2[32].i64[0];
    v68 = a2[32].i8[10];
    v88 = a2[28];
    v8 = a2[7].i64[0];
    v7 = a2[7].i64[1];
    v9 = a2[43].i8[0];
    v89 = *v8;
    v10 = a2->i64[1];
    v55 = v5;
    v56 = a2[1].i64[0];
    v79[0] = 0;
    v79[1] = v10;
    v80 = xmmword_1E3047670;
    v81 = xmmword_1E3047680;
    v82 = xmmword_1E30476A0;
    v83 = xmmword_1E30474D0;
    v84 = 0;
    v85 = 0;
    v11 = a2[3].i64[1];
    if (v11)
    {
      v62 = a2[3].i64[0];
LABEL_8:
      v12 = 0;
      v78 = 0;
      v13 = 0;
      v75 = &a2[31].i8[8];
      v61 = v8 + 40;
      v67 = v7 + 40;
      v54 = v8;
      v72 = v7;
      v53 = v9;
      v63 = v11;
      while (1)
      {
        if (v13 >= a2[4].i64[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = *(a2[4].i64[0] + 8 * v13);
        }

        v15 = *(v8 + 24);
        if (v15 <= v13)
        {
          goto LABEL_49;
        }

        v16 = v61;
        if ((*(v8 + 32) & 1) == 0)
        {
          v16 = *(v8 + 48);
        }

        v64 = v12;
        v17 = 0;
        v18 = *(v16 + 4 * v13);
        v19 = *(&v89 & 0xFFFFFFFFFFFFFFF7 | (8 * (v18 & 1)));
        v20 = &v62[12 * v13];
        v21 = v18 >> 1;
        v77 = a2[30].i64[1];
        v76 = a2[31].u64[0];
        v22 = a2[8];
        v23 = a2[9];
        v24 = a2[10];
        v25 = a2[11];
        v26 = *(v20 + 2);
        v27 = *(v20 + 3);
        v28 = *(v20 + 4);
        *v90 = *(v20 + 1);
        *&v90[16] = v26;
        *&v90[32] = v27;
        *&v90[48] = v28;
        do
        {
          *(&v98 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*&v90[v17])), v23, *&v90[v17], 1), v24, *&v90[v17], 2), v25, *&v90[v17], 3);
          v17 += 16;
        }

        while (v17 != 64);
        v29 = v19 + 32 * v21;
        v86[0] = v98;
        v86[1] = v99;
        v86[2] = v100;
        v86[3] = v101;
        *v90 = re::Slice<re::internal::BindPointImplBase const*>::range(a2, *v20, v20[1]);
        *&v90[8] = v30;
        *&v90[16] = v14;
        *&v90[24] = v86;
        *&v90[40] = a2[12];
        *&v90[32] = v29;
        *&v90[56] = v75;
        v91 = v77;
        v92 = v76;
        v93 = a2[27].i8[8];
        v94 = v88;
        v95 = v13;
        v96 = 0;
        v97 = v9;
        v31 = (*(*this + 8))(this, v90);
        v32 = v63;
        if (v31)
        {
          v33 = *v20;
          v34 = v20[1];
          v74 = v58;
          v66 = v56;
          if (v58 >= v34)
          {
            if (v58 < v33)
            {
              goto LABEL_50;
            }

            v66 = v56 + 4 * v33;
            v74 = v34 - v33;
          }

          v73 = v57;
          v65 = v55;
          if (v57 >= v34)
          {
            if (v57 < v33)
            {
              goto LABEL_51;
            }

            v65 = v55 + 8 * v33;
            v73 = v34 - v33;
          }

          v59 = v31;
          v60 = v13;
          v35 = re::Slice<re::internal::BindPointImplBase const*>::range(a2, v33, v34);
          v37 = v72;
          v109 = *v72;
          if (v36)
          {
            v38 = v35;
            v13 = v36;
            v39 = 0;
            v40 = 32 * v78;
            while (1)
            {
              v41 = a2;
              v42 = *(v37 + 3);
              if (v42 <= v78 + v39)
              {
                break;
              }

              v43 = v67;
              if ((v37[2] & 1) == 0)
              {
                v43 = *(v37 + 6);
              }

              v44 = *(v38 + 8 * v39);
              a2 = v41;
              if (v39 >= v20[11])
              {
                v45 = *(v44 + 458);
              }

              else
              {
                v45 = *(v20[10] + 4 * v39);
              }

              v46 = v77 + 20 * v45;
              if (v76 <= v45)
              {
                v46 = 0;
              }

              if (v39 >= v74)
              {
                v47 = 0;
              }

              else
              {
                v47 = *(v66 + 4 * v39);
              }

              if (v39 >= v73)
              {
                v48 = 0;
              }

              else
              {
                v48 = *(v65 + 8 * v39);
              }

              *&v98 = v70;
              *(&v98 + 1) = v69;
              LODWORD(v99) = v71;
              BYTE4(v99) = v68;
              *(&v99 + 1) = v39;
              LODWORD(v100) = v47;
              *(&v100 + 1) = v48;
              *&v101 = v44;
              *(&v101 + 1) = v86;
              *&v102 = *(&v109 & 0xFFFFFFFFFFFFFFF7 | (8 * (*&v43[4 * v78 + 4 * v39] & 1))) + v40;
              DWORD2(v102) = v45;
              v103 = v75;
              v104 = v46;
              v105 = a2[27].i8[8];
              v106 = v88;
              v107 = 0;
              v108 = 0;
              (*(*this + 16))(this, &v98);
              ++v39;
              v40 += 32;
              v37 = v72;
              if (v13 == v39)
              {
                goto LABEL_41;
              }
            }

            v87 = 0;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v98 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v110 = 136315906;
            v111 = "operator[]";
            v112 = 1024;
            v113 = 866;
            v114 = 2048;
            v115 = v78 + v39;
            v116 = 2048;
            v117 = v42;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            *&v86[0] = 0;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v98 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v90 = 136315906;
            *&v90[4] = "operator[]";
            *&v90[12] = 1024;
            *&v90[14] = 866;
            *&v90[18] = 2048;
            *&v90[20] = v13;
            *&v90[28] = 2048;
            *&v90[30] = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v33, v58);
            _os_crash();
            __break(1u);
LABEL_51:
            re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v33, v57);
            _os_crash();
            __break(1u);
          }

LABEL_41:
          v8 = v54;
          v9 = v53;
          v13 = v60;
          v32 = v63;
          v31 = v59;
        }

        v12 = v64 | v31;
        v49 = v20[1];
        v50 = v49 >= *v20;
        v51 = v49 - *v20;
        if (!v50)
        {
          v51 = 0;
        }

        v78 += v51;
        if (++v13 == v32)
        {
          return v12 & 1;
        }
      }
    }

    if (v10)
    {
      v62 = v79;
      v11 = 1;
      goto LABEL_8;
    }
  }

  LOBYTE(v12) = 0;
  return v12 & 1;
}