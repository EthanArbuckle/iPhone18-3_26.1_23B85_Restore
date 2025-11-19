void *re::FloatAnimationBlendTreeAssetData::clone(re::FloatAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<float>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0A60;
  return result;
}

void *re::AnimationBlendTreeAssetData<float>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 33);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 33);
  }

  if (v4)
  {
    v7 = *(v3 + 35);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<float>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<float>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<float>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0AD0;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

uint64_t re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::AnimationBlendTreeNodeDescription>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *>(&v15, *(a2 + 32), *(a2 + 32) + 88 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 88 * v9;
      v13 = 88 * v4;
      do
      {
        re::StringID::StringID((v11 + v12), (v10 + v12));
        re::StringID::StringID((v11 + v12 + 16), (v10 + v12 + 16));
        re::StringID::StringID((v11 + v12 + 32), (v10 + v12 + 32));
        re::StringID::StringID((v11 + v12 + 48), (v10 + v12 + 48));
        re::StringID::StringID((v11 + v12 + 64), (v10 + v12 + 64));
        *(v11 + v12 + 80) = *(v10 + v12 + 80);
        v10 += 88;
        v13 -= 88;
        v11 += 88;
      }

      while (v12 != v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *>(&v14, *(a2 + 32), *(a2 + 32) + 88 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4];
      v7 = 88 * v4;
      v8 = 88 * v5;
      do
      {
        re::StringID::destroyString((v6 + v7 + 64));
        re::StringID::destroyString((v6 + v7 + 48));
        re::StringID::destroyString((v6 + v7 + 32));
        re::StringID::destroyString((v6 + v7 + 16));
        re::StringID::destroyString((v6 + v7));
        v6 += 88;
        v8 -= 88;
      }

      while (v7 != v8);
    }
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *,re::AnimationBlendTreeNodeDescription *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::StringID::operator=((a4 + v7 + 16), (a2 + v7 + 16));
    re::StringID::operator=((a4 + v7 + 32), (a2 + v7 + 32));
    re::StringID::operator=((a4 + v7 + 48), (a2 + v7 + 48));
    re::StringID::operator=((a4 + v7 + 64), (a2 + v7 + 64));
    *(a4 + v7 + 80) = *(a2 + v7 + 80);
    v7 += 88;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::RigGraphConnection>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigGraphConnection>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::RigGraphConnection>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphConnection *,re::RigGraphConnection *,re::RigGraphConnection *>(&v11, *(a2 + 32), *(a2 + 32) + 160 * a1[2], a1[4]);
    v5 = a1[2];
    if (v5 != v4)
    {
      v6 = *(a2 + 32);
      v7 = a1[4];
      v8 = 160 * v5;
      v9 = 160 * v4;
      do
      {
        re::StringID::StringID((v7 + v8), (v6 + v8));
        re::StringID::StringID((v7 + v8 + 16), (v6 + v8 + 16));
        re::StringID::StringID((v7 + v8 + 32), (v6 + v8 + 32));
        re::StringID::StringID((v7 + v8 + 48), (v6 + v8 + 48));
        re::StringID::StringID((v7 + v8 + 64), (v6 + v8 + 64));
        re::StringID::StringID((v7 + v8 + 80), (v6 + v8 + 80));
        re::StringID::StringID((v7 + v8 + 96), (v6 + v8 + 96));
        re::StringID::StringID((v7 + v8 + 112), (v6 + v8 + 112));
        re::StringID::StringID((v7 + v8 + 128), (v6 + v8 + 128));
        re::StringID::StringID((v7 + v8 + 144), (v6 + v8 + 144));
        v6 += 160;
        v9 -= 160;
        v7 += 160;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphConnection *,re::RigGraphConnection *,re::RigGraphConnection *>(&v10, *(a2 + 32), *(a2 + 32) + 160 * v4, a1[4]);
    re::ObjectHelper::destroy<re::RigGraphConnection>(a1[4] + 160 * v4, a1[4] + 160 * a1[2]);
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RigGraphConnection *,re::RigGraphConnection *,re::RigGraphConnection *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::StringID::operator=((a4 + v7 + 16), (a2 + v7 + 16));
    re::StringID::operator=((a4 + v7 + 32), (a2 + v7 + 32));
    re::StringID::operator=((a4 + v7 + 48), (a2 + v7 + 48));
    re::StringID::operator=((a4 + v7 + 64), (a2 + v7 + 64));
    re::StringID::operator=((a4 + v7 + 80), (a2 + v7 + 80));
    re::StringID::operator=((a4 + v7 + 96), (a2 + v7 + 96));
    re::StringID::operator=((a4 + v7 + 112), (a2 + v7 + 112));
    re::StringID::operator=((a4 + v7 + 128), (a2 + v7 + 128));
    re::StringID::operator=((a4 + v7 + 144), (a2 + v7 + 144));
    v7 += 160;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::BlendSpaceAxisDefinition>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::BlendSpaceAxisDefinition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *>(&v14, *(a2 + 32), *(a2 + 32) + 48 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 48 * v8;
      v12 = 48 * v4;
      do
      {
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::StringID::StringID((v10 + v11 + 16), (v9 + v11 + 16));
        *(v10 + v11 + 32) = *(v9 + v11 + 32);
        v9 += 48;
        v12 -= 48;
        v10 += 48;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *>(&v13, *(a2 + 32), *(a2 + 32) + 48 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 48 * v4;
      v7 = 48 * v5 - 48 * v4;
      do
      {
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 48;
        v7 -= 48;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *,re::BlendSpaceAxisDefinition *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  v5 = a4 + 16;
  v6 = a2 + 16;
  do
  {
    re::StringID::operator=((v5 - 16), (v6 - 16));
    re::StringID::operator=(v5, v6);
    *(v5 + 16) = *(v6 + 16);
    v5 += 48;
    v7 = v6 + 32;
    v6 += 48;
  }

  while (v7 != v4);
  return v4;
}

uint64_t re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::BlendSpaceSampleDefinition>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::BlendSpaceSampleDefinition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *>(&v15, *(a2 + 32), (*(a2 + 32) + (a1[2] << 6)), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = v8 << 6;
      v12 = v4 << 6;
      do
      {
        v13 = re::StringID::StringID((v10 + v11), (v9 + v11));
        *(v13 + 4) = *(v9 + v11 + 16);
        re::DynamicArray<float>::DynamicArray(v13 + 24, (v9 + v11 + 24));
        v9 += 64;
        v12 -= 64;
        v10 += 64;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *>(&v14, *(a2 + 32), (*(a2 + 32) + (v4 << 6)), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + (v4 << 6));
      v7 = (v5 << 6) - (v4 << 6);
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 24);
        re::StringID::destroyString(v6);
        v6 = (v6 + 64);
        v7 -= 64;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *,re::BlendSpaceSampleDefinition *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  v5 = a4 + 24;
  v6 = a2 + 3;
  do
  {
    re::StringID::operator=((v5 - 24), v6 - 3);
    *(v5 - 8) = *(v6 - 2);
    re::DynamicArray<float>::operator=(v5, v6);
    v5 += 64;
    v7 = v6 + 5;
    v6 += 8;
  }

  while (v7 != v4);
  return v4;
}

void re::DoubleAnimationBlendTreeAssetData::~DoubleAnimationBlendTreeAssetData(re::DoubleAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0B80;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0B80;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::DoubleAnimationBlendTreeAssetData::clone(re::DoubleAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<double>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0B10;
  return result;
}

void *re::AnimationBlendTreeAssetData<double>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 33);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 33);
  }

  if (v4)
  {
    v7 = *(v3 + 35);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<double>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<double>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<double>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0B80;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::Vector2FAnimationBlendTreeAssetData::~Vector2FAnimationBlendTreeAssetData(re::Vector2FAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0C30;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0C30;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FAnimationBlendTreeAssetData::clone(re::Vector2FAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::Vector2<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0BC0;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector2<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 33);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 33);
  }

  if (v4)
  {
    v7 = *(v3 + 35);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector2<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::Vector2<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0C30;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::Vector3FAnimationBlendTreeAssetData::~Vector3FAnimationBlendTreeAssetData(re::Vector3FAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0CE0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0CE0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FAnimationBlendTreeAssetData::clone(re::Vector3FAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::Vector3<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0C70;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector3<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 33);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 33);
  }

  if (v4)
  {
    v7 = *(v3 + 35);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector3<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::Vector3<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0CE0;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::Vector4FAnimationBlendTreeAssetData::~Vector4FAnimationBlendTreeAssetData(re::Vector4FAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0D90;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0D90;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FAnimationBlendTreeAssetData::clone(re::Vector4FAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::Vector4<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0D20;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector4<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 33);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 33);
  }

  if (v4)
  {
    v7 = *(v3 + 35);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::Vector4<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::Vector4<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0D90;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::QuaternionFAnimationBlendTreeAssetData::~QuaternionFAnimationBlendTreeAssetData(re::QuaternionFAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0E40;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0E40;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFAnimationBlendTreeAssetData::clone(re::QuaternionFAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::Quaternion<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0DD0;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::Quaternion<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 33);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 33);
  }

  if (v4)
  {
    v7 = *(v3 + 35);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::Quaternion<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::Quaternion<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0E40;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::SRTAnimationBlendTreeAssetData::~SRTAnimationBlendTreeAssetData(re::SRTAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0EF0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0EF0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SRTAnimationBlendTreeAssetData::clone(re::SRTAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::GenericSRT<float>>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0E80;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::GenericSRT<float>>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 33);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 33);
  }

  if (v4)
  {
    v7 = *(v3 + 35);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::GenericSRT<float>>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::GenericSRT<float>>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC0EF0;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray((v4 + 10), (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void re::SkeletalPoseAnimationBlendTreeAssetData::~SkeletalPoseAnimationBlendTreeAssetData(re::SkeletalPoseAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0FB8;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0FB8;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SkeletalPoseAnimationBlendTreeAssetData::clone(re::SkeletalPoseAnimationBlendTreeAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 288, 8);
  result = re::AnimationBlendTreeAssetData<re::SkeletalPose>::AnimationBlendTreeAssetData(v4, this);
  *result = &unk_1F5CC0F30;
  return result;
}

void *re::AnimationBlendTreeAssetData<re::SkeletalPose>::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 33);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 33);
  }

  if (v4)
  {
    v7 = *(v3 + 35);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::AnimationBlendTreeAssetData<re::SkeletalPose>::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[33];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[33];
  }

  if (v4)
  {
    v7 = v3[35];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t re::AnimationBlendTreeAssetData<re::SkeletalPose>::AnimationBlendTreeAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *(a1 + 72) = *(a2 + 72);
  *a1 = &unk_1F5CC0FB8;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::DynamicArray(a1 + 80, (a2 + 80));
  re::DynamicArray<re::RigGraphConnection>::DynamicArray(a1 + 120, (a2 + 120));
  *(a1 + 160) = *(a2 + 160);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::DynamicArray(a1 + 168, (a2 + 168));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::DynamicArray(a1 + 208, (a2 + 208));
  re::DynamicArray<re::AssetHandle>::DynamicArray(a1 + 248, (a2 + 248));
  return a1;
}

void *re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v11 = 0uLL;
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 10;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
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
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 40 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 40 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

__n128 re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    *(v8 + 24) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 40 * v7 + 24) = *a3;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 40 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 10;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 40 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 40 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<unsigned char>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<unsigned char>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<unsigned char>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<unsigned char>::init(uint64_t a1, void *a2, re *a3, int a4, uint64_t a5)
{
  re::FixedArray<BOOL>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    do
    {
      if (a2[1] <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10++));
    }

    while (a5 != v10);
  }
}

unint64_t re::IntrospectionFixedArray<unsigned char>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + a3;
}

void *re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, uint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<BOOL>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v12);
    re::TypeInfo::TypeInfo(v11, &v13);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      do
      {
        re::TypeInfo::destruct(v11, v10, a3, 0);
        re::TypeInfo::construct(v11, v10++, a3, 0);
        --v9;
      }

      while (v9);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned char>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::FixedArray<unsigned char>>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 24 * v8);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 24 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::FixedArray<unsigned char>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::FixedArray<unsigned long>>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 24 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::EventTimelineAssetData::EventTimelineAssetData(re::EventTimelineAssetData *this)
{
  v1 = re::TimelineAssetData::TimelineAssetData(this, 48);
  *(v1 + 72) = 0;
  *v1 = &unk_1F5CC11C8;
  *(v1 + 80) = 0;
  *(v1 + 88) = &str_67;
  *(v1 + 96) = 0;
  *(v1 + 120) = 0;
  *(v1 + 104) = 0u;
  result = 0.0;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 236) = 0u;
  *(v1 + 252) = 0x7FFFFFFFLL;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0;
  *(v1 + 544) = 0;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 332) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 380) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 428) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 476) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 524) = 0u;
  *(v1 + 552) = -1;
  *(v1 + 560) = 0u;
  *(v1 + 576) = 0u;
  *(v1 + 592) = 1;
  *(v1 + 632) = 0;
  *(v1 + 616) = 0;
  *(v1 + 624) = 0;
  *(v1 + 600) = 0u;
  return result;
}

void re::EventTimelineAssetData::~EventTimelineAssetData(re::EventTimelineAssetData *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 600);

  re::FixedArray<CoreIKTransform>::deinit(this + 70);
  re::DynamicArray<re::ObjCObject>::deinit(this + 512);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 464);
  re::DynamicArray<unsigned long>::deinit(this + 416);
  re::DynamicArray<re::StringID>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 27);
  re::DynamicArray<unsigned long>::deinit(this + 176);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::StringID::destroyString((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::EventTimelineAssetData::~EventTimelineAssetData(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::EventTimelineAssetData::clone(re::EventTimelineAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 640, 8);
  v5 = re::AnimationAssetData<float>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC11C8;
  re::TimelineEventData::TimelineEventData((v5 + 10), (this + 80));
  return v4;
}

_anonymous_namespace_ *re::DynamicArray<re::StringID>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::StringID>::copy(this, *a2, v4);
      re::DynamicArray<re::StringID>::resize(this, *(a2 + 8));
    }

    else
    {
      re::DynamicArray<re::StringID>::clear(this);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::StringID>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::StringID>::copy(this, *a2, *(a2 + 8));
  }

  return this;
}

unint64_t *re::DynamicArray<re::StringID>::copy(unint64_t *this, uint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = this;
    v4 = this[2];
    if (v4 == -1)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      this = this[4];
      v12 = 16 * a3;
      do
      {
        v13 = re::StringID::operator=(this, a2);
        a2 += 2;
        this = v13 + 2;
        v12 -= 16;
      }

      while (v12);
    }

    else
    {
      re::DynamicArray<re::StringID>::growCapacity(this, a3);
      v7 = v3[2];
      this = v3[4];
      if (v7)
      {
        v8 = 16 * v7;
        v9 = a2;
        do
        {
          v10 = re::StringID::operator=(this, v9);
          v9 += 2;
          this = v10 + 2;
          v8 -= 16;
        }

        while (v8);
        this = v3[4];
        v11 = v3[2];
      }

      else
      {
        v11 = 0;
      }

      if (v7 != a3)
      {
        v14 = &a2[2 * v7];
        this += 2 * v11;
        v15 = 16 * a3 - 16 * v7;
        do
        {
          v16 = re::StringID::StringID(this, v14++);
          this = (v16 + 16);
          v15 -= 16;
        }

        while (v15);
      }

      v3[2] = a3;
    }

    ++*(v3 + 6);
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<float>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<float>::copy(this, 0, *a2, v4);
      re::DynamicArray<float>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<int>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<float>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<double>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<double>::copy(this, 0, *a2, v4);
      re::DynamicArray<double>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<float *>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<double>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

void *re::DynamicArray<double>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<float *>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[8 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 8 * v5), __src, 8 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 8 * v5), v12, 8 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector2<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Vector2<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<unsigned long>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Vector2<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

void *re::DynamicArray<re::Vector2<float>>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<unsigned long>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[8 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 8 * v5), __src, 8 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 8 * v5), v12, 8 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector3<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Vector3<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::Vector3<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Vector3<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

void *re::DynamicArray<re::Vector3<float>>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 16 * a2), __src, 16 * a4);
  }

  else
  {
    re::DynamicArray<re::Vector3<float>>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[16 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 16 * v5), __src, 16 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 16 * v5), v12, 16 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector4<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Vector4<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::Vector4<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Vector4<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Vector4<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

void *re::DynamicArray<re::Vector4<float>>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 16 * a2), __src, 16 * a4);
  }

  else
  {
    re::DynamicArray<re::Vector4<float>>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[16 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 16 * v5), __src, 16 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 16 * v5), v12, 16 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Quaternion<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Vector3<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::Quaternion<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Vector3<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::GenericSRT<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::GenericSRT<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::GenericSRT<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::GenericSRT<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

void *re::DynamicArray<re::GenericSRT<float>>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "copy";
    WORD6(v16) = 1024;
    HIWORD(v16) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v15, v16);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 48 * a2), __src, 48 * a4);
  }

  else
  {
    re::DynamicArray<re::Matrix3x3<float>>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v12 = v10 - v5;
    v11 = v10 == v5;
    v13 = 3 * (v10 - v5);
    v14 = &__src[16 * v13];
    if (!v11)
    {
      memmove((v6[4] + 48 * v5), __src, 16 * v13);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 48 * v5), v14, 48 * (v4 - v12));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

uint64_t re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AnimationBlendTreeNodeDescription>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 88 * v6;
          do
          {
            re::StringID::destroyString((v7 + 64));
            re::StringID::destroyString((v7 + 48));
            re::StringID::destroyString((v7 + 32));
            re::StringID::destroyString((v7 + 16));
            re::StringID::destroyString(v7);
            v7 += 88;
            v8 -= 88;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::RigGraphConnection>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigGraphConnection>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        re::ObjectHelper::destroy<re::RigGraphConnection>(*(a1 + 32), *(a1 + 32) + 160 * v6);
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigGraphConnection>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::BlendSpaceSampleDefinition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::BlendSpaceSampleDefinition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::BlendSpaceSampleDefinition>::copy(a1, a2);
    }
  }

  return a1;
}

void re::FloatAnimationClip::~FloatAnimationClip(re::FloatAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::DoubleAnimationClip::~DoubleAnimationClip(re::DoubleAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector2FAnimationClip::~Vector2FAnimationClip(re::Vector2FAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector3FAnimationClip::~Vector3FAnimationClip(re::Vector3FAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector4FAnimationClip::~Vector4FAnimationClip(re::Vector4FAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::QuaternionFAnimationClip::~QuaternionFAnimationClip(re::QuaternionFAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::SRTAnimationClip::~SRTAnimationClip(re::SRTAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::SkeletalPoseAnimationClip::~SkeletalPoseAnimationClip(re::SkeletalPoseAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::DoubleAnimation::~DoubleAnimation(re::DoubleAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector2FAnimation::~Vector2FAnimation(re::Vector2FAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector3FAnimation::~Vector3FAnimation(re::Vector3FAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::Vector4FAnimation::~Vector4FAnimation(re::Vector4FAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::QuaternionFAnimation::~QuaternionFAnimation(re::QuaternionFAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::SRTAnimation::~SRTAnimation(re::SRTAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::SkeletalPoseAnimation::~SkeletalPoseAnimation(re::SkeletalPoseAnimation *this)
{
  *this = &unk_1F5CB1840;
  if (*(this + 280) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 288));
  }

  if (*(this + 184) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 192));
  }

  if (*(this + 88) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 96));
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB1840;
  if (*(this + 280) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 288));
  }

  if (*(this + 184) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 192));
  }

  if (*(this + 88) == 1)
  {
    re::SkeletalPose::~SkeletalPose((this + 96));
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(_anonymous_namespace_ *result, void *a2)
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

        result = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(result, v8);
      }

      else
      {
        result = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(v3, v6);
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

void *re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(v5, a2);
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
              goto LABEL_15;
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
LABEL_15:
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
          *v11++ = *v12;
          *v12++ = 0;
          v10 -= 8;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t *re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 280, 8);
  v6 = *(a2 + 16);
  v8[0] = *(a2 + 32);
  v8[1] = v6;
  *a1 = v5;
  return result;
}

void re::FloatKeyframeAnimation::~FloatKeyframeAnimation(re::FloatKeyframeAnimation *this)
{
  *this = &unk_1F5CB0B00;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0B00;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::DoubleKeyframeAnimation::~DoubleKeyframeAnimation(re::DoubleKeyframeAnimation *this)
{
  *this = &unk_1F5CB0B98;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0B98;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::FixedArray<double>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::SkinningInfluence>::copy(a1, a2);
  }

  return a1;
}

void re::FixedArray<double>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
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
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void re::Vector2FKeyframeAnimation::~Vector2FKeyframeAnimation(re::Vector2FKeyframeAnimation *this)
{
  *this = &unk_1F5CB0C30;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0C30;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector3FKeyframeAnimation::~Vector3FKeyframeAnimation(re::Vector3FKeyframeAnimation *this)
{
  *this = &unk_1F5CB0CC8;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0CC8;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector4FKeyframeAnimation::~Vector4FKeyframeAnimation(re::Vector4FKeyframeAnimation *this)
{
  *this = &unk_1F5CB0D60;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0D60;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::FixedArray<re::Vector4<float>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Vector4<float>>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<re::Vector4<float>>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 16 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::FixedArray<re::Vector4<float>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 16);
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
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

void re::QuaternionFKeyframeAnimation::~QuaternionFKeyframeAnimation(re::QuaternionFKeyframeAnimation *this)
{
  *this = &unk_1F5CB0DF8;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0DF8;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::SRTKeyframeAnimation::~SRTKeyframeAnimation(re::SRTKeyframeAnimation *this)
{
  *this = &unk_1F5CB0E90;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0E90;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::SkeletalPoseKeyframeAnimation::~SkeletalPoseKeyframeAnimation(re::SkeletalPoseKeyframeAnimation *this)
{
  *this = &unk_1F5CB0F28;
  v2 = (this + 40);
  re::FixedArray<re::SkeletalPose>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0F28;
  v2 = (this + 40);
  re::FixedArray<re::SkeletalPose>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::FixedArray<re::SkeletalPose>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2E8BA2E8BA2E8BBLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 88 * a3, 8);
  *(v4 + 16) = result;
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
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 8) = &str_67;
      *(result + 64) = 0;
      *(result + 80) = 0;
      result += 88;
      --v6;
    }

    while (v6);
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 8) = &str_67;
  *(result + 64) = 0;
  *(result + 80) = 0;
  return result;
}

void re::FloatSampledAnimation::~FloatSampledAnimation(re::FloatSampledAnimation *this)
{
  *this = &unk_1F5CAEB80;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEB80;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::DoubleSampledAnimation::~DoubleSampledAnimation(re::DoubleSampledAnimation *this)
{
  *this = &unk_1F5CAEC18;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEC18;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector2FSampledAnimation::~Vector2FSampledAnimation(re::Vector2FSampledAnimation *this)
{
  *this = &unk_1F5CAECB0;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAECB0;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector3FSampledAnimation::~Vector3FSampledAnimation(re::Vector3FSampledAnimation *this)
{
  *this = &unk_1F5CAED48;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAED48;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::Vector4FSampledAnimation::~Vector4FSampledAnimation(re::Vector4FSampledAnimation *this)
{
  *this = &unk_1F5CAEDE0;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEDE0;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::QuaternionFSampledAnimation::~QuaternionFSampledAnimation(re::QuaternionFSampledAnimation *this)
{
  *this = &unk_1F5CAEE78;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEE78;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::SRTSampledAnimation::~SRTSampledAnimation(re::SRTSampledAnimation *this)
{
  *this = &unk_1F5CAEF10;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEF10;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::AnimationBlendTreeBuilder<float>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  *(a1 + 8) = a3;
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity((a1 + 8), 0x40uLL);
  ++*(a1 + 32);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 48, a3, 64);
  *(a1 + 392) = 0;
  *(a1 + 400) = a2;
}

void *re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(v5, a2);
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
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v11[2] = 0;
          v11[3] = 0;
          v13 = (v8 + 1);
          v14 = v8[2];
          v11[1] = v8[1];
          v8[1] = 0;
          v11[2] = v14;
          v8[2] = 0;
          v15 = v11[3];
          v11[3] = v8[3];
          v8[3] = v15;
          v16 = v11[5];
          v11[5] = v8[5];
          v8[5] = v16;
          ++*(v8 + 8);
          ++*(v11 + 8);
          v17 = (v8 + 6);
          LOBYTE(v16) = v8[6];
          v11[6] = v11[6] & 0xFFFFFFFFFFFFFFFELL | v8[6] & 1;
          v11[6] = v8[6] & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v11[7] = v8[7];
          v8[7] = &str_67;
          v8[6] = 0;
          v19 = v8[8];
          v18 = (v8 + 8);
          v11[8] = v11[8] & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
          v11[8] = *v18 & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
          v11[9] = *(v18 + 1);
          *v18 = 0;
          *(v18 + 1) = &str_67;
          re::StringID::destroyString(v18);
          re::StringID::destroyString(v17);
          re::DynamicArray<unsigned long>::deinit(v13);
          v11 += 10;
          v8 = (v18 + 16);
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

BOOL re::AnimationBlendTreeNodeDescription::isBlend(re::AnimationBlendTreeNodeDescription *this)
{
  if (re::StringID::operator==(this + 2, re::AnimationBlendTreeNodeDescription::kBlend))
  {
    return 1;
  }

  return re::StringID::operator==(this + 2, re::AnimationBlendTreeNodeDescription::kBlendAdditive);
}

uint64_t re::AnimationBlendTreeBuilder<float>::buildRig(uint64_t a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v85 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_123;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_124:
    v67 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v74 = 1024;
    *(v6 + 14) = 797;
    v76 = 2048;
    *(v6 + 20) = v5;
    v78 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "AddFloat";
    }

    else
    {
      v14 = "LerpFloat";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v64);
    if ((v64[0] & 1) == 0)
    {
      v15 = v65;
      if (v65)
      {
        v16 = &v65;
        if ((v66 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v64;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v61);
    if ((v61[0] & 1) == 0)
    {
      v15 = v62;
      if (v62)
      {
        v16 = &v62;
        if ((v63 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v61;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v48 = a5;
    v47 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<float>::buildRig(v58, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v58[0] & 1) == 0 && v59)
      {
        if (BYTE8(v59))
        {
          (*(*v59 + 40))();
        }

        v60 = 0u;
        v59 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_114;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_115;
      }

      if (v6 <= v5)
      {
        goto LABEL_116;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_122;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v68)
            {
              v27 = v70;
            }

            else
            {
              v27 = v69;
            }

            re::DynamicString::operator+(&v67, "input3", &v80);
            if (v80.var1)
            {
              v28 = v81;
            }

            else
            {
              v28 = &v80.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v55);
            if ((v55[0] & 1) == 0 && v56)
            {
              if (BYTE8(v56))
              {
                (*(*v56 + 40))();
              }

              v57 = 0u;
              v56 = 0u;
            }

            if (*&v80.var0 && (v80.var1 & 1) != 0)
            {
              (*(**&v80.var0 + 40))();
            }

            v5 = v47;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v80, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v80, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v80);
            if (*&v80.var0)
            {
              if (*&v80.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v68)
        {
          v31 = v70;
        }

        else
        {
          v31 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v32 = v81;
        }

        else
        {
          v32 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v52);
        a5 = v48;
        if ((v52[0] & 1) == 0 && v53)
        {
          if (BYTE8(v53))
          {
            (*(*v53 + 40))();
          }

          v54 = 0u;
          v53 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        *&v80.var0 = 0;
        v80.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add(a3 + 52, &v80);
        if (*&v80.var0)
        {
          if (*&v80.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v80);
        v7 = *v48;
        v6 = a3[45];
        if (v6 <= *v48)
        {
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          v5 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 468;
          v76 = 2048;
          v77 = v7;
          v78 = 2048;
          v79 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_122:
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 797;
          v76 = 2048;
          v77 = v5;
          v78 = 2048;
          v79 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_123:
          v67 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v74 = 1024;
          *(v6 + 14) = 789;
          v76 = 2048;
          *(v6 + 20) = v5;
          v78 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_124;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v80.var1) + 24];
        ++*v48;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v68)
        {
          v35 = v70;
        }

        else
        {
          v35 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v36 = v81;
        }

        else
        {
          v36 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v49);
        a5 = v48;
        if ((v49[0] & 1) == 0 && v50)
        {
          if (BYTE8(v50))
          {
            (*(*v50 + 40))();
          }

          v51 = 0u;
          v50 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v68)
        {
          v38 = v70;
        }

        else
        {
          v38 = v69;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v80);
        if ((*&v80.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_117;
        }

        a5 = v48;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v19;
    v78 = 2048;
    v79 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 789;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v41 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v5;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    if (v82)
    {
      v45 = *(&v82 + 1);
    }

    else
    {
      v45 = &v82 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v45;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v82 + 1);
    v44 = v83;
    *a1 = 0;
    *(a1 + 8) = *(v41 + 56);
    *(a1 + 24) = v42;
    *(a1 + 40) = v43;
    *(a1 + 48) = v44;
  }

  else
  {
LABEL_106:
    *a1 = 1;
  }

  result = v67;
  if (v67)
  {
    if (v68)
    {
      return (*(*v67 + 40))(v67, v70);
    }
  }

  return result;
}

void re::FixedArray<re::AnimationBlendTreeNode>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 4);
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
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t re::AnimationBlendTreeBuilder<float>::addChildren(void *a1, void *a2, unint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v8 = &v56;
  v61 = *MEMORY[0x1E69E9840];
  v9 = a1[3];
  if (v9 <= a3)
  {
    goto LABEL_41;
  }

  v11 = a2;
  v12 = a1;
  v40 = a3;
  v13 = 0;
  v43 = *(a1[5] + 80 * a3 + 24) + a4;
  v14 = 16 * a4;
  v15 = 8 * a4;
  v41 = a4;
  while (1)
  {
    v16 = v12[5];
    v17 = v16 + 80 * a3;
    if (*(v17 + 24) <= v13)
    {
      return v43;
    }

    v18 = v12[50];
    v19 = *(*(v17 + 40) + 8 * v13);
    v20 = *(v18 + 16);
    if (v20 <= v19)
    {
      v47[0] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 797;
      v52 = 2048;
      v53 = v19;
      v54 = 2048;
      v55 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v47[0] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 789;
      v52 = 2048;
      v53 = v19;
      v54 = 2048;
      v55 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_34:
      v47[0] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 468;
      v52 = 2048;
      v53 = v6;
      v54 = 2048;
      v55 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v47[0] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v36 = a3;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 797;
      v52 = 2048;
      v53 = v36;
      v54 = 2048;
      v55 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v47[2] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 789;
      v52 = 2048;
      v53 = v41 + v13;
      v54 = 2048;
      v55 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v47[0] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v37 = a3;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 789;
      v52 = 2048;
      v53 = v37;
      v54 = 2048;
      v55 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v47[0] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 789;
      v52 = 2048;
      v53 = v40;
      v54 = 2048;
      v55 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_39:
      v47[0] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 468;
      v52 = 2048;
      v53 = v7;
      v54 = 2048;
      v55 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_40:
      v47[0] = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 789;
      v52 = 2048;
      v53 = v11;
      v54 = 2048;
      v55 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v47[0] = 0;
      v8[4] = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v38 = a3;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      v51 = 789;
      v52 = 2048;
      v53 = v38;
      v54 = 2048;
      v55 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_42:
      re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Unknown blend tree leaf type", "!Unreachable code", "addChildren", 561);
      _os_crash();
      __break(1u);
    }

    if (v9 <= v19)
    {
      goto LABEL_33;
    }

    v6 = a4 + v13;
    v7 = *(v11 + 288);
    if (v7 <= a4 + v13)
    {
      goto LABEL_34;
    }

    v44 = a4 + v13;
    v45 = v14;
    v21 = v12;
    v22 = a6;
    v23 = *(v18 + 32);
    v24 = *(v11 + 296);
    v7 = v24 + v15;
    v25 = *(v16 + 80 * v19 + 24);
    *(v24 + v15 + 6) = v25;
    if (v20 <= a3)
    {
      goto LABEL_35;
    }

    v46 = v15;
    v26 = v23 + 88 * v19;
    v11 = a3;
    v27 = re::StringID::operator==((v23 + 88 * a3 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
    if (v13)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    *(v7 + 7) = v28;
    *v7 = *(v26 + 80);
    if (v25)
    {
      *(v24 + v46 + 4) = v43;
      if (v9 <= v11)
      {
        goto LABEL_38;
      }

      a6 = v22;
      v12 = v21;
      v11 = a2;
      v43 = re::AnimationBlendTreeBuilder<float>::addChildren(v21, a2, v19);
    }

    else
    {
      a6 = v22;
      if (re::StringID::operator==((v26 + 16), re::AnimationBlendTreeNodeDescription::kClip))
      {
        v29 = 0xBF58476D1CE4E5B9 * ((*(v26 + 32) >> 31) ^ (*(v26 + 32) >> 1));
        v12 = v21;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((v21 + 51), (v26 + 32), (0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) ^ ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) >> 31), &v56);
        v7 = *a5;
        v11 = a2[45];
        if (v11 <= *a5)
        {
          goto LABEL_39;
        }

        *(a2[46] + 8 * v7) = *(v21[53] + 32 * HIDWORD(v56) + 24);
        v30 = (*a5)++;
        *(v24 + v46 + 4) = v30;
        v11 = a2;
      }

      else
      {
        if (!re::StringID::operator==((v26 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_42;
        }

        v11 = *v22;
        v19 = a2[54];
        if (v19 <= *v22)
        {
          goto LABEL_40;
        }

        re::StringID::operator=((a2[56] + 16 * v11), (v26 + 32));
        v32 = (*v22)++;
        *(v24 + v46 + 4) = v32;
        *(v7 + 7) |= 2u;
        v11 = a2;
        v12 = v21;
      }
    }

    v6 = v44;
    if (*(v26 + 64) <= 1uLL && (v33 = *(v26 + 72)) != 0 && !*v33)
    {
      re::AnimationBlendTreeBuilder<float>::weightPathFromName(v47, *(v26 + 8));
    }

    else
    {
      re::StringID::StringID(v47, (v26 + 64));
    }

    v7 = *(v11 + 392);
    if (v7 <= v44)
    {
      goto LABEL_36;
    }

    v34 = re::StringID::operator=((*(v11 + 408) + v45), v47);
    if (v47[0])
    {
      if (v47[0])
      {
      }
    }

    ++v13;
    v9 = v12[3];
    v14 = v45 + 16;
    v15 = v46 + 8;
    a3 = v40;
    a4 = v41;
    if (v9 <= v40)
    {
      goto LABEL_37;
    }
  }
}

uint64_t *re::AnimationBlendTree<float>::addClip(uint64_t a1, unint64_t a2, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (!*(a1 + 336))
    {
      goto LABEL_14;
    }

    **(a1 + 344) = 1;
  }

  if (*(a1 + 336) <= a2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(*(a1 + 344) + 8 * a2);
  if (*(a1 + 336) <= a2 + 1)
  {
LABEL_12:
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v9)
  {
    v8 = SDWORD1(v9);
  }

  else
  {
    v8 = 0;
  }

  *(*(a1 + 344) + 8 * (a2 + 1)) = v8 + v6;
  if (*(a1 + 312) <= a2)
  {
    goto LABEL_13;
  }

  *(*(a1 + 320) + 8 * a2) = this;
  return result;
}

void re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_1637, 4 * v2);
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 32;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::FloatAnimationBlendTree::~FloatAnimationBlendTree(re::FloatAnimationBlendTree *this)
{
  re::AnimationBlendTree<float>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<float>::child(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 312) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<float>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<float>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash();
  __break(1u);
}

void re::AnimationBlendTree<float>::~AnimationBlendTree(uint64_t *a1)
{
  re::AnimationBlendTree<float>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<float>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2788;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<float>::weightPathFromName(re::StringID *a1, uint64_t a2)
{
  re::DynamicString::format("KeyValue.keyValueStore[%s]", &v4, a2);
  re::StringID::StringID(a1, &v4);
  result = v4;
  if (v4)
  {
    if (v5)
    {
      return (*(*v4 + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(uint64_t a1)
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
        v6 = (v3 + 64);
        do
        {
          re::StringID::destroyString(v6);
          re::StringID::destroyString((v6 - 16));
          re::DynamicArray<unsigned long>::deinit(v6 - 56);
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

uint64_t re::AnimationBlendTreeBuilder<double>::buildRig(_anonymous_namespace_ *a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v80 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_115;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_116:
    v62 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v69 = 1024;
    *(v6 + 14) = 797;
    v71 = 2048;
    *(v6 + 20) = v5;
    v73 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Unknown blend node type", "!Unreachable code", "blendNodeType", 349);
    _os_crash();
    __break(1u);
  }

  v6 = a2[5];
  v13 = *(v9 + 4) + 88 * a4;
  v14 = *(v13 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v13))
  {
    goto LABEL_117;
  }

  v44 = a1;
  if (!re::StringID::operator==((v13 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v13 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v13 + 24), *(v13 + 8), v59);
    if ((v59[0] & 1) == 0)
    {
      if (v60)
      {
        if (BYTE8(v60))
        {
          (*(*v60 + 40))();
        }

        v61 = 0u;
        v60 = 0u;
      }
    }
  }

  v16 = &v6[80 * v5];
  if (*(v16 + 3))
  {
    v17 = 0;
    v46 = a5;
    v45 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<double>::buildRig(v56, a2, a3, *(*(v16 + 5) + 8 * v17), a5);
      if ((v56[0] & 1) == 0 && v57)
      {
        if (BYTE8(v57))
        {
          (*(*v57 + 40))();
        }

        v58 = 0u;
        v57 = 0u;
      }

      v18 = *(v16 + 3);
      if (v18 <= v17)
      {
        break;
      }

      v18 = *(*(v16 + 5) + 8 * v17);
      v6 = a2[3];
      if (v6 <= v18)
      {
        goto LABEL_106;
      }

      v19 = a2[50];
      v6 = *(v19 + 2);
      if (v6 <= v18)
      {
        goto LABEL_107;
      }

      if (v6 <= v5)
      {
        goto LABEL_108;
      }

      v20 = &a2[5][80 * v18];
      v21 = *(v19 + 4);
      v6 = (v21 + 88 * v18);
      v22 = *(v20 + 9);
      v23 = *(v20 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v21 + 88 * v5)))
      {
        if (v17)
        {
          v24 = a2[50];
          v7 = *(v24 + 2);
          if (v7 <= v5)
          {
            goto LABEL_114;
          }

          v23 = "input2";
          if (!re::StringID::operator==((*(v24 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v63)
            {
              v25 = v65;
            }

            else
            {
              v25 = v64;
            }

            re::DynamicString::operator+(&v62, "input3", &v75);
            if (v75.var1)
            {
              v26 = v76;
            }

            else
            {
              v26 = &v75.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v25, "input3", v26, __str, 1, v53);
            if ((v53[0] & 1) == 0 && v54)
            {
              if (BYTE8(v54))
              {
                (*(*v54 + 40))();
              }

              v55 = 0u;
              v54 = 0u;
            }

            if (*&v75.var0 && (v75.var1 & 1) != 0)
            {
              (*(**&v75.var0 + 40))();
            }

            v5 = v45;
            if (*(v6 + 8) <= 1uLL && (v27 = *(v6 + 9)) != 0 && !*v27)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v75, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v75, v6 + 4);
            }

            v28 = re::DynamicArray<re::StringID>::add((a3 + 52), &v75);
            if (*&v75.var0)
            {
              if (*&v75.var0)
              {
              }
            }

            v23 = "input2";
          }
        }

        else
        {
          v23 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v63)
        {
          v29 = v65;
        }

        else
        {
          v29 = v64;
        }

        re::DynamicString::operator+(&v62, v23, &v75);
        if (v75.var1)
        {
          v30 = v76;
        }

        else
        {
          v30 = &v75.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v29, v23, v30, "", 1, v50);
        a5 = v46;
        if ((v50[0] & 1) == 0 && v51)
        {
          if (BYTE8(v51))
          {
            (*(*v51 + 40))();
          }

          v52 = 0u;
          v51 = 0u;
        }

        if (*&v75.var0 && (v75.var1 & 1) != 0)
        {
          (*(**&v75.var0 + 40))();
        }

        *&v75.var0 = 0;
        v75.var1 = "";
        v31 = re::DynamicArray<re::StringID>::add(a3 + 52, &v75);
        if (*&v75.var0)
        {
          if (*&v75.var0)
          {
          }
        }

        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v32 ^ (v32 >> 31), &v75);
        v7 = *v46;
        v6 = a3[45];
        if (v6 <= *v46)
        {
          v66 = 0;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v75 = 0;
          v5 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v68 = "operator[]";
          v69 = 1024;
          v70 = 468;
          v71 = 2048;
          v72 = v7;
          v73 = 2048;
          v74 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_114:
          v66 = 0;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v75 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v68 = "operator[]";
          v69 = 1024;
          v70 = 797;
          v71 = 2048;
          v72 = v5;
          v73 = 2048;
          v74 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_115:
          v62 = 0;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v75 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v69 = 1024;
          *(v6 + 14) = 789;
          v71 = 2048;
          *(v6 + 20) = v5;
          v73 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_116;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v75.var1) + 24];
        ++*v46;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v63)
        {
          v33 = v65;
        }

        else
        {
          v33 = v64;
        }

        re::DynamicString::operator+(&v62, v23, &v75);
        if (v75.var1)
        {
          v34 = v76;
        }

        else
        {
          v34 = &v75.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v33, v23, v34, *(v6 + 7), 1, v47);
        a5 = v46;
        if ((v47[0] & 1) == 0 && v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))();
          }

          v49 = 0u;
          v48 = 0u;
        }

        if (*&v75.var0 && (v75.var1 & 1) != 0)
        {
          (*(**&v75.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v20 + 8) <= 1uLL)
        {
          v35 = *(v20 + 9);
          if (v35)
          {
            if (!*v35)
            {
              v22 = "output";
            }
          }
        }

        if (v63)
        {
          v36 = v65;
        }

        else
        {
          v36 = v64;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v22, v36, v23, 0, 0, &v75);
        if ((*&v75.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v37);
          v39 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_104;
          }

          goto LABEL_109;
        }

        a5 = v46;
      }

      if (*(v16 + 3) <= ++v17)
      {
        goto LABEL_98;
      }
    }

    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    v70 = 797;
    v71 = 2048;
    v72 = v17;
    v73 = 2048;
    v74 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_106:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    v70 = 789;
    v71 = 2048;
    v72 = v18;
    v73 = 2048;
    v74 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_107:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    v70 = 797;
    v71 = 2048;
    v72 = v18;
    v73 = 2048;
    v74 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_108:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0;
    v39 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    v70 = 797;
    v71 = 2048;
    v72 = v5;
    v73 = 2048;
    v74 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_109:
    if (v77)
    {
      v43 = *(&v77 + 1);
    }

    else
    {
      v43 = &v77 + 1;
    }

    *__str = 136315138;
    *(v39 + 4) = v43;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_104:
    v40 = *(v39 + 72);
    v41 = *(&v77 + 1);
    v42 = v78;
    *v44 = 0;
    *(v44 + 8) = *(v39 + 56);
    *(v44 + 24) = v40;
    *(v44 + 5) = v41;
    *(v44 + 6) = v42;
  }

  else
  {
LABEL_98:
    *v44 = 1;
  }

  result = v62;
  if (v62)
  {
    if (v63)
    {
      return (*(*v62 + 40))(v62, v65);
    }
  }

  return result;
}

void re::DoubleAnimationBlendTree::~DoubleAnimationBlendTree(re::DoubleAnimationBlendTree *this)
{
  re::AnimationBlendTree<double>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<double>::child(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 312) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<double>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<double>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash();
  __break(1u);
}

void re::AnimationBlendTree<double>::~AnimationBlendTree(uint64_t *a1)
{
  re::AnimationBlendTree<double>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<double>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC28E8;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::Vector2<float>>::buildRig(uint64_t a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v85 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_123;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_124:
    v67 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v74 = 1024;
    *(v6 + 14) = 797;
    v76 = 2048;
    *(v6 + 20) = v5;
    v78 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "AddVector2";
    }

    else
    {
      v14 = "LerpVector2";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v64);
    if ((v64[0] & 1) == 0)
    {
      v15 = v65;
      if (v65)
      {
        v16 = &v65;
        if ((v66 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v64;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v61);
    if ((v61[0] & 1) == 0)
    {
      v15 = v62;
      if (v62)
      {
        v16 = &v62;
        if ((v63 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v61;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v48 = a5;
    v47 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::Vector2<float>>::buildRig(v58, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v58[0] & 1) == 0 && v59)
      {
        if (BYTE8(v59))
        {
          (*(*v59 + 40))();
        }

        v60 = 0u;
        v59 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_114;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_115;
      }

      if (v6 <= v5)
      {
        goto LABEL_116;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_122;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v68)
            {
              v27 = v70;
            }

            else
            {
              v27 = v69;
            }

            re::DynamicString::operator+(&v67, "input3", &v80);
            if (v80.var1)
            {
              v28 = v81;
            }

            else
            {
              v28 = &v80.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v55);
            if ((v55[0] & 1) == 0 && v56)
            {
              if (BYTE8(v56))
              {
                (*(*v56 + 40))();
              }

              v57 = 0u;
              v56 = 0u;
            }

            if (*&v80.var0 && (v80.var1 & 1) != 0)
            {
              (*(**&v80.var0 + 40))();
            }

            v5 = v47;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v80, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v80, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v80);
            if (*&v80.var0)
            {
              if (*&v80.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v68)
        {
          v31 = v70;
        }

        else
        {
          v31 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v32 = v81;
        }

        else
        {
          v32 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v52);
        a5 = v48;
        if ((v52[0] & 1) == 0 && v53)
        {
          if (BYTE8(v53))
          {
            (*(*v53 + 40))();
          }

          v54 = 0u;
          v53 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        *&v80.var0 = 0;
        v80.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add(a3 + 52, &v80);
        if (*&v80.var0)
        {
          if (*&v80.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v80);
        v7 = *v48;
        v6 = a3[45];
        if (v6 <= *v48)
        {
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          v5 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 468;
          v76 = 2048;
          v77 = v7;
          v78 = 2048;
          v79 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_122:
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 797;
          v76 = 2048;
          v77 = v5;
          v78 = 2048;
          v79 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_123:
          v67 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v74 = 1024;
          *(v6 + 14) = 789;
          v76 = 2048;
          *(v6 + 20) = v5;
          v78 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_124;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v80.var1) + 24];
        ++*v48;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v68)
        {
          v35 = v70;
        }

        else
        {
          v35 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v36 = v81;
        }

        else
        {
          v36 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v49);
        a5 = v48;
        if ((v49[0] & 1) == 0 && v50)
        {
          if (BYTE8(v50))
          {
            (*(*v50 + 40))();
          }

          v51 = 0u;
          v50 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v68)
        {
          v38 = v70;
        }

        else
        {
          v38 = v69;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v80);
        if ((*&v80.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_117;
        }

        a5 = v48;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v19;
    v78 = 2048;
    v79 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 789;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v41 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v5;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    if (v82)
    {
      v45 = *(&v82 + 1);
    }

    else
    {
      v45 = &v82 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v45;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v82 + 1);
    v44 = v83;
    *a1 = 0;
    *(a1 + 8) = *(v41 + 56);
    *(a1 + 24) = v42;
    *(a1 + 40) = v43;
    *(a1 + 48) = v44;
  }

  else
  {
LABEL_106:
    *a1 = 1;
  }

  result = v67;
  if (v67)
  {
    if (v68)
    {
      return (*(*v67 + 40))(v67, v70);
    }
  }

  return result;
}

void re::Vector2FAnimationBlendTree::~Vector2FAnimationBlendTree(re::Vector2FAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::Vector2<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::Vector2<float>>::child(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 312) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::Vector2<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::Vector2<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash();
  __break(1u);
}

void re::AnimationBlendTree<re::Vector2<float>>::~AnimationBlendTree(uint64_t *a1)
{
  re::AnimationBlendTree<re::Vector2<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::Vector2<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2A48;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::Vector3<float>>::buildRig(uint64_t a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v85 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_123;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_124:
    v67 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v74 = 1024;
    *(v6 + 14) = 797;
    v76 = 2048;
    *(v6 + 20) = v5;
    v78 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "AddVector3";
    }

    else
    {
      v14 = "LerpVector3";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v64);
    if ((v64[0] & 1) == 0)
    {
      v15 = v65;
      if (v65)
      {
        v16 = &v65;
        if ((v66 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v64;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v61);
    if ((v61[0] & 1) == 0)
    {
      v15 = v62;
      if (v62)
      {
        v16 = &v62;
        if ((v63 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v61;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v48 = a5;
    v47 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::Vector3<float>>::buildRig(v58, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v58[0] & 1) == 0 && v59)
      {
        if (BYTE8(v59))
        {
          (*(*v59 + 40))();
        }

        v60 = 0u;
        v59 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_114;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_115;
      }

      if (v6 <= v5)
      {
        goto LABEL_116;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_122;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v68)
            {
              v27 = v70;
            }

            else
            {
              v27 = v69;
            }

            re::DynamicString::operator+(&v67, "input3", &v80);
            if (v80.var1)
            {
              v28 = v81;
            }

            else
            {
              v28 = &v80.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v55);
            if ((v55[0] & 1) == 0 && v56)
            {
              if (BYTE8(v56))
              {
                (*(*v56 + 40))();
              }

              v57 = 0u;
              v56 = 0u;
            }

            if (*&v80.var0 && (v80.var1 & 1) != 0)
            {
              (*(**&v80.var0 + 40))();
            }

            v5 = v47;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v80, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v80, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v80);
            if (*&v80.var0)
            {
              if (*&v80.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v68)
        {
          v31 = v70;
        }

        else
        {
          v31 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v32 = v81;
        }

        else
        {
          v32 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v52);
        a5 = v48;
        if ((v52[0] & 1) == 0 && v53)
        {
          if (BYTE8(v53))
          {
            (*(*v53 + 40))();
          }

          v54 = 0u;
          v53 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        *&v80.var0 = 0;
        v80.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add(a3 + 52, &v80);
        if (*&v80.var0)
        {
          if (*&v80.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v80);
        v7 = *v48;
        v6 = a3[45];
        if (v6 <= *v48)
        {
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          v5 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 468;
          v76 = 2048;
          v77 = v7;
          v78 = 2048;
          v79 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_122:
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 797;
          v76 = 2048;
          v77 = v5;
          v78 = 2048;
          v79 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_123:
          v67 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v74 = 1024;
          *(v6 + 14) = 789;
          v76 = 2048;
          *(v6 + 20) = v5;
          v78 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_124;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v80.var1) + 24];
        ++*v48;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v68)
        {
          v35 = v70;
        }

        else
        {
          v35 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v36 = v81;
        }

        else
        {
          v36 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v49);
        a5 = v48;
        if ((v49[0] & 1) == 0 && v50)
        {
          if (BYTE8(v50))
          {
            (*(*v50 + 40))();
          }

          v51 = 0u;
          v50 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v68)
        {
          v38 = v70;
        }

        else
        {
          v38 = v69;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v80);
        if ((*&v80.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_117;
        }

        a5 = v48;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v19;
    v78 = 2048;
    v79 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 789;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v41 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v5;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    if (v82)
    {
      v45 = *(&v82 + 1);
    }

    else
    {
      v45 = &v82 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v45;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v82 + 1);
    v44 = v83;
    *a1 = 0;
    *(a1 + 8) = *(v41 + 56);
    *(a1 + 24) = v42;
    *(a1 + 40) = v43;
    *(a1 + 48) = v44;
  }

  else
  {
LABEL_106:
    *a1 = 1;
  }

  result = v67;
  if (v67)
  {
    if (v68)
    {
      return (*(*v67 + 40))(v67, v70);
    }
  }

  return result;
}

void re::Vector3FAnimationBlendTree::~Vector3FAnimationBlendTree(re::Vector3FAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::Vector3<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::Vector3<float>>::child(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 312) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::Vector3<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash();
  __break(1u);
}

void re::AnimationBlendTree<re::Vector3<float>>::~AnimationBlendTree(uint64_t *a1)
{
  re::AnimationBlendTree<re::Vector3<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::Vector3<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2BA8;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::Vector4FAnimationBlendTree::~Vector4FAnimationBlendTree(re::Vector4FAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::Vector4<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::Vector4<float>>::child(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 312) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::Vector4<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::Vector4<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash();
  __break(1u);
}

void re::AnimationBlendTree<re::Vector4<float>>::~AnimationBlendTree(uint64_t *a1)
{
  re::AnimationBlendTree<re::Vector4<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::Vector4<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2D08;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::Quaternion<float>>::buildRig(uint64_t a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v85 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_123;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_124:
    v67 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v74 = 1024;
    *(v6 + 14) = 797;
    v76 = 2048;
    *(v6 + 20) = v5;
    v78 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "MultiplyQuaternion";
    }

    else
    {
      v14 = "Slerp";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v64);
    if ((v64[0] & 1) == 0)
    {
      v15 = v65;
      if (v65)
      {
        v16 = &v65;
        if ((v66 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v64;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v61);
    if ((v61[0] & 1) == 0)
    {
      v15 = v62;
      if (v62)
      {
        v16 = &v62;
        if ((v63 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v61;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v48 = a5;
    v47 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::Quaternion<float>>::buildRig(v58, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v58[0] & 1) == 0 && v59)
      {
        if (BYTE8(v59))
        {
          (*(*v59 + 40))();
        }

        v60 = 0u;
        v59 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_114;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_115;
      }

      if (v6 <= v5)
      {
        goto LABEL_116;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_122;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v68)
            {
              v27 = v70;
            }

            else
            {
              v27 = v69;
            }

            re::DynamicString::operator+(&v67, "input3", &v80);
            if (v80.var1)
            {
              v28 = v81;
            }

            else
            {
              v28 = &v80.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v55);
            if ((v55[0] & 1) == 0 && v56)
            {
              if (BYTE8(v56))
              {
                (*(*v56 + 40))();
              }

              v57 = 0u;
              v56 = 0u;
            }

            if (*&v80.var0 && (v80.var1 & 1) != 0)
            {
              (*(**&v80.var0 + 40))();
            }

            v5 = v47;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v80, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v80, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v80);
            if (*&v80.var0)
            {
              if (*&v80.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v68)
        {
          v31 = v70;
        }

        else
        {
          v31 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v32 = v81;
        }

        else
        {
          v32 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v52);
        a5 = v48;
        if ((v52[0] & 1) == 0 && v53)
        {
          if (BYTE8(v53))
          {
            (*(*v53 + 40))();
          }

          v54 = 0u;
          v53 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        *&v80.var0 = 0;
        v80.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add(a3 + 52, &v80);
        if (*&v80.var0)
        {
          if (*&v80.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v80);
        v7 = *v48;
        v6 = a3[45];
        if (v6 <= *v48)
        {
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          v5 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 468;
          v76 = 2048;
          v77 = v7;
          v78 = 2048;
          v79 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_122:
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 797;
          v76 = 2048;
          v77 = v5;
          v78 = 2048;
          v79 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_123:
          v67 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v74 = 1024;
          *(v6 + 14) = 789;
          v76 = 2048;
          *(v6 + 20) = v5;
          v78 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_124;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v80.var1) + 24];
        ++*v48;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v68)
        {
          v35 = v70;
        }

        else
        {
          v35 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v36 = v81;
        }

        else
        {
          v36 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v49);
        a5 = v48;
        if ((v49[0] & 1) == 0 && v50)
        {
          if (BYTE8(v50))
          {
            (*(*v50 + 40))();
          }

          v51 = 0u;
          v50 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v68)
        {
          v38 = v70;
        }

        else
        {
          v38 = v69;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v80);
        if ((*&v80.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_117;
        }

        a5 = v48;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v19;
    v78 = 2048;
    v79 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 789;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v41 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v5;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    if (v82)
    {
      v45 = *(&v82 + 1);
    }

    else
    {
      v45 = &v82 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v45;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v82 + 1);
    v44 = v83;
    *a1 = 0;
    *(a1 + 8) = *(v41 + 56);
    *(a1 + 24) = v42;
    *(a1 + 40) = v43;
    *(a1 + 48) = v44;
  }

  else
  {
LABEL_106:
    *a1 = 1;
  }

  result = v67;
  if (v67)
  {
    if (v68)
    {
      return (*(*v67 + 40))(v67, v70);
    }
  }

  return result;
}

void re::QuaternionFAnimationBlendTree::~QuaternionFAnimationBlendTree(re::QuaternionFAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::Quaternion<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::Quaternion<float>>::child(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 312) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::Quaternion<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash();
  __break(1u);
}

void re::AnimationBlendTree<re::Quaternion<float>>::~AnimationBlendTree(uint64_t *a1)
{
  re::AnimationBlendTree<re::Quaternion<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::Quaternion<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2E68;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::GenericSRT<float>>::buildRig(uint64_t a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v85 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_123;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_124:
    v67 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v74 = 1024;
    *(v6 + 14) = 797;
    v76 = 2048;
    *(v6 + 20) = v5;
    v78 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "AdditiveBlendSRT";
    }

    else
    {
      v14 = "LerpSRT";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v64);
    if ((v64[0] & 1) == 0)
    {
      v15 = v65;
      if (v65)
      {
        v16 = &v65;
        if ((v66 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v64;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v61);
    if ((v61[0] & 1) == 0)
    {
      v15 = v62;
      if (v62)
      {
        v16 = &v62;
        if ((v63 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v61;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v48 = a5;
    v47 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::GenericSRT<float>>::buildRig(v58, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v58[0] & 1) == 0 && v59)
      {
        if (BYTE8(v59))
        {
          (*(*v59 + 40))();
        }

        v60 = 0u;
        v59 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_114;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_115;
      }

      if (v6 <= v5)
      {
        goto LABEL_116;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_122;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v68)
            {
              v27 = v70;
            }

            else
            {
              v27 = v69;
            }

            re::DynamicString::operator+(&v67, "input3", &v80);
            if (v80.var1)
            {
              v28 = v81;
            }

            else
            {
              v28 = &v80.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v55);
            if ((v55[0] & 1) == 0 && v56)
            {
              if (BYTE8(v56))
              {
                (*(*v56 + 40))();
              }

              v57 = 0u;
              v56 = 0u;
            }

            if (*&v80.var0 && (v80.var1 & 1) != 0)
            {
              (*(**&v80.var0 + 40))();
            }

            v5 = v47;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v80, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v80, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v80);
            if (*&v80.var0)
            {
              if (*&v80.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v68)
        {
          v31 = v70;
        }

        else
        {
          v31 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v32 = v81;
        }

        else
        {
          v32 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v52);
        a5 = v48;
        if ((v52[0] & 1) == 0 && v53)
        {
          if (BYTE8(v53))
          {
            (*(*v53 + 40))();
          }

          v54 = 0u;
          v53 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        *&v80.var0 = 0;
        v80.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add(a3 + 52, &v80);
        if (*&v80.var0)
        {
          if (*&v80.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v80);
        v7 = *v48;
        v6 = a3[45];
        if (v6 <= *v48)
        {
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          v5 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 468;
          v76 = 2048;
          v77 = v7;
          v78 = 2048;
          v79 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_122:
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 797;
          v76 = 2048;
          v77 = v5;
          v78 = 2048;
          v79 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_123:
          v67 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v74 = 1024;
          *(v6 + 14) = 789;
          v76 = 2048;
          *(v6 + 20) = v5;
          v78 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_124;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v80.var1) + 24];
        ++*v48;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v68)
        {
          v35 = v70;
        }

        else
        {
          v35 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v36 = v81;
        }

        else
        {
          v36 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v49);
        a5 = v48;
        if ((v49[0] & 1) == 0 && v50)
        {
          if (BYTE8(v50))
          {
            (*(*v50 + 40))();
          }

          v51 = 0u;
          v50 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v68)
        {
          v38 = v70;
        }

        else
        {
          v38 = v69;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v80);
        if ((*&v80.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_117;
        }

        a5 = v48;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v19;
    v78 = 2048;
    v79 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 789;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v41 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v5;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    if (v82)
    {
      v45 = *(&v82 + 1);
    }

    else
    {
      v45 = &v82 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v45;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v82 + 1);
    v44 = v83;
    *a1 = 0;
    *(a1 + 8) = *(v41 + 56);
    *(a1 + 24) = v42;
    *(a1 + 40) = v43;
    *(a1 + 48) = v44;
  }

  else
  {
LABEL_106:
    *a1 = 1;
  }

  result = v67;
  if (v67)
  {
    if (v68)
    {
      return (*(*v67 + 40))(v67, v70);
    }
  }

  return result;
}

void re::SRTAnimationBlendTree::~SRTAnimationBlendTree(re::SRTAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::GenericSRT<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::GenericSRT<float>>::child(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 312) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::GenericSRT<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash();
  __break(1u);
}

void re::AnimationBlendTree<re::GenericSRT<float>>::~AnimationBlendTree(uint64_t *a1)
{
  re::AnimationBlendTree<re::GenericSRT<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::GenericSRT<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2FC8;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::SkeletalPose>::buildRig(uint64_t a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v85 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_123;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_124:
    v67 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v74 = 1024;
    *(v6 + 14) = 797;
    v76 = 2048;
    *(v6 + 20) = v5;
    v78 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "BlendAdditiveRigHierarchy";
    }

    else
    {
      v14 = "BlendRigHierarchy";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v64);
    if ((v64[0] & 1) == 0)
    {
      v15 = v65;
      if (v65)
      {
        v16 = &v65;
        if ((v66 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v64;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v61);
    if ((v61[0] & 1) == 0)
    {
      v15 = v62;
      if (v62)
      {
        v16 = &v62;
        if ((v63 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v61;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v48 = a5;
    v47 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::SkeletalPose>::buildRig(v58, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v58[0] & 1) == 0 && v59)
      {
        if (BYTE8(v59))
        {
          (*(*v59 + 40))();
        }

        v60 = 0u;
        v59 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_114;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_115;
      }

      if (v6 <= v5)
      {
        goto LABEL_116;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_122;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v68)
            {
              v27 = v70;
            }

            else
            {
              v27 = v69;
            }

            re::DynamicString::operator+(&v67, "input3", &v80);
            if (v80.var1)
            {
              v28 = v81;
            }

            else
            {
              v28 = &v80.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v55);
            if ((v55[0] & 1) == 0 && v56)
            {
              if (BYTE8(v56))
              {
                (*(*v56 + 40))();
              }

              v57 = 0u;
              v56 = 0u;
            }

            if (*&v80.var0 && (v80.var1 & 1) != 0)
            {
              (*(**&v80.var0 + 40))();
            }

            v5 = v47;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v80, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v80, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v80);
            if (*&v80.var0)
            {
              if (*&v80.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v68)
        {
          v31 = v70;
        }

        else
        {
          v31 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v32 = v81;
        }

        else
        {
          v32 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v52);
        a5 = v48;
        if ((v52[0] & 1) == 0 && v53)
        {
          if (BYTE8(v53))
          {
            (*(*v53 + 40))();
          }

          v54 = 0u;
          v53 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        *&v80.var0 = 0;
        v80.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add(a3 + 52, &v80);
        if (*&v80.var0)
        {
          if (*&v80.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v80);
        v7 = *v48;
        v6 = a3[45];
        if (v6 <= *v48)
        {
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          v5 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 468;
          v76 = 2048;
          v77 = v7;
          v78 = 2048;
          v79 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_122:
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 797;
          v76 = 2048;
          v77 = v5;
          v78 = 2048;
          v79 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_123:
          v67 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v74 = 1024;
          *(v6 + 14) = 789;
          v76 = 2048;
          *(v6 + 20) = v5;
          v78 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_124;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v80.var1) + 24];
        ++*v48;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v68)
        {
          v35 = v70;
        }

        else
        {
          v35 = v69;
        }

        re::DynamicString::operator+(&v67, v25, &v80);
        if (v80.var1)
        {
          v36 = v81;
        }

        else
        {
          v36 = &v80.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v49);
        a5 = v48;
        if ((v49[0] & 1) == 0 && v50)
        {
          if (BYTE8(v50))
          {
            (*(*v50 + 40))();
          }

          v51 = 0u;
          v50 = 0u;
        }

        if (*&v80.var0 && (v80.var1 & 1) != 0)
        {
          (*(**&v80.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v68)
        {
          v38 = v70;
        }

        else
        {
          v38 = v69;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v80);
        if ((*&v80.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_117;
        }

        a5 = v48;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v19;
    v78 = 2048;
    v79 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 789;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v20;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v41 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 797;
    v76 = 2048;
    v77 = v5;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    if (v82)
    {
      v45 = *(&v82 + 1);
    }

    else
    {
      v45 = &v82 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v45;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v82 + 1);
    v44 = v83;
    *a1 = 0;
    *(a1 + 8) = *(v41 + 56);
    *(a1 + 24) = v42;
    *(a1 + 40) = v43;
    *(a1 + 48) = v44;
  }

  else
  {
LABEL_106:
    *a1 = 1;
  }

  result = v67;
  if (v67)
  {
    if (v68)
    {
      return (*(*v67 + 40))(v67, v70);
    }
  }

  return result;
}

void re::SkeletalPoseAnimationBlendTree::~SkeletalPoseAnimationBlendTree(re::SkeletalPoseAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::SkeletalPose>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::SkeletalPose>::child(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 312) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::SkeletalPose>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash();
  __break(1u);
}

void re::AnimationBlendTree<re::SkeletalPose>::~AnimationBlendTree(uint64_t *a1)
{
  re::AnimationBlendTree<re::SkeletalPose>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::SkeletalPose>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC3128;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::BlendShapeWeightsAnimation::~BlendShapeWeightsAnimation(re::BlendShapeWeightsAnimation *this)
{
  *this = &unk_1F5CB18D8;
  if (*(this + 168) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 176));
  }

  if (*(this + 128) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 136));
  }

  if (*(this + 88) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 96));
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB18D8;
  if (*(this + 168) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 176));
  }

  if (*(this + 128) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 136));
  }

  if (*(this + 88) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 96));
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::AnimationImpl<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

ArcSharedObject *re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 104, 8);
  v6 = *(a2 + 16);
  v8[0] = *(a2 + 32);
  v8[1] = v6;
  *a1 = v5;
  return result;
}

void re::BlendShapeWeightsSampledAnimation::~BlendShapeWeightsSampledAnimation(re::BlendShapeWeightsSampledAnimation *this)
{
  *this = &unk_1F5CAF040;
  v2 = (this + 40);
  re::FixedArray<re::BlendShapeWeights>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAF040;
  v2 = (this + 40);
  re::FixedArray<re::BlendShapeWeights>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::FixedArray<re::BlendShapeWeights>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
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

void re::BlendShapeWeightsAnimationClip::~BlendShapeWeightsAnimationClip(re::BlendShapeWeightsAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

double re::AnimationClip<re::BlendShapeWeights>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::BlendShapeWeights>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::BlendShapeWeights>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CC33E8;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t *re::AnimationClip<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v47[0] = a2;
  v47[1] = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    a1 = _os_crash();
    __break(1u);
LABEL_10:
    v13 = a1;
    memset(v46, 0, sizeof(v46));
    memset(v45, 0, sizeof(v45));
    re::BlendShapeWeights::init(v46, v7 + 3);
    re::BlendShapeWeights::init(v45, v7 + 3);
    if (v33[0] == 1 && v34 == 1)
    {
      v16 = *(v13 + 80);
      v15.n128_u64[0] = 0;
      v17 = 0;
      if (v16)
      {
        if (*(v13 + 88) == 1)
        {
          v17 = *(v13 + 96);
        }

        (*(*v16 + 40))(v16, v15);
        if (*(v13 + 104) == 1)
        {
          v15.n128_u64[0] = *(v13 + 112);
        }
      }

      v35 = 0;
      v38 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v44 = 2;
      v33[0] = 3;
      v36 = 1;
      v37 = v17;
      v43 = 0;
      v39 = 1065353216;
      v23 = 0;
      v26 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v32 = 2;
      v22[0] = 3;
      v24 = 1;
      v25 = v15.n128_u64[0];
      v31 = 0;
      v27 = 1065353216;
      if (*(v13 + 128))
      {
        v18 = v45;
      }

      else
      {
        v18 = v46;
      }

      if (*(v13 + 128))
      {
        v19 = v46;
      }

      else
      {
        v19 = v45;
      }

      (*(*v8 + 112))(v8, v33, 1, v7, v6, v18);
      (*(*v8 + 112))(v8, v22, 1, v7, v6, v19);
      re::AnimationValueTraits<re::BlendShapeWeights>::invert(v46, v46);
      *&v20 = re::AnimationValueTraits<re::BlendShapeWeights>::combine(v46, v45, v46);
      re::internal::assertLog(4, v21, v20, "assertion failure: '%s' (%s:line %i) Not yet implemented.", "!Unreachable code", "repeat", 160);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = a4;
  v8 = *(a1 + 80);
  if (v8)
  {
    v6 = a5;
    if (*(a1 + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v10 = re::Slice<re::AnimationClock>::range(v47, 1uLL, a3);
      return (*(*v8 + 112))(v8, v10, v11, v7, v6, a6);
    }

    goto LABEL_10;
  }

  return re::AnimationValueTraits<re::BlendShapeWeights>::copy(a4, a6);
}

void *re::AnimationClip<re::BlendShapeWeights>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::BlendShapeWeights>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::BlendShapeWeightsKeyframeAnimation::~BlendShapeWeightsKeyframeAnimation(re::BlendShapeWeightsKeyframeAnimation *this)
{
  *this = &unk_1F5CB0FC0;
  v2 = (this + 40);
  re::FixedArray<re::BlendShapeWeights>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0FC0;
  v2 = (this + 40);
  re::FixedArray<re::BlendShapeWeights>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::MaterialAsset::assetType(re::MaterialAsset *this)
{
  {
    re::MaterialAsset::assetType(void)::type = "Material";
    qword_1EE1C7178 = 0;
    re::AssetType::generateCompiledExtension(&re::MaterialAsset::assetType(void)::type);
  }

  return &re::MaterialAsset::assetType(void)::type;
}

uint64_t re::AssetHandle::loadedAsset<re::MaterialAsset>(re::MaterialAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::MaterialAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::MaterialAsset::assetType(void)::type, 1);
}

void re::MaterialAsset::setInstance(uint64_t a1, _anonymous_namespace_ *a2, uint64_t *a3)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(a1 + 1776);
    if (v5)
    {
      v7 = re::globalAllocators((v5 + 8))[2];
      v8[0] = &unk_1F5CC37C0;
      v8[1] = v5;
      v8[3] = v7;
      v8[4] = v8;
      re::RenderManager::addDelayedDestructorToRenderThread(a2, v8);
      re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v8);
    }
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 1776), *a3);
}

uint64_t re::MaterialAsset::getOriginalConstantParameterType(re::MaterialAsset *this, const char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v2 &= ~0x8000000000000000;
    }
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v2;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 1792, &v7);
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t *re::MaterialAsset::tryGetOriginalColorGamut3FParameterValue@<X0>(re::MaterialAsset *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v4;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 1792, &v12);
  if (result && *(result + 20) == 20)
  {
    v9 = *result;
    v10 = *(result + 2);
    v11 = *(result + 16);
    *a3 = 1;
    *(a3 + 4) = v9;
    *(a3 + 16) = v11;
    *(a3 + 12) = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::MaterialAsset::tryGetOriginalColorGamut4FParameterValue@<X0>(re::MaterialAsset *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 1792, &v9);
  if (result && *(result + 20) == 21)
  {
    *a3 = 1;
    *(a3 + 4) = *result;
    *(a3 + 20) = *(result + 16);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

BOOL re::MaterialAsset::isColorTextureParameter(re::MaterialAsset *this, const re::StringID *a2)
{
  if (re::StringID::operator==(this, re::MaterialAsset::isColorTextureParameter(re::StringID const&)::textureBaseColor) || re::StringID::operator==(this, re::MaterialAsset::isColorTextureParameter(re::StringID const&)::textureBaseColorDetail) || re::StringID::operator==(this, re::MaterialAsset::isColorTextureParameter(re::StringID const&)::textureSheenColor))
  {
    return 1;
  }

  return re::StringID::operator==(this, re::MaterialAsset::isColorTextureParameter(re::StringID const&)::textureEmissive);
}

void re::MaterialAsset::makeMaterialMemoryAsset(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, const char *a4, uint64_t a5)
{
  v12[0] = 0;
  v12[2] = 0;
  v12[4] = 0;
  v12[6] = 0;
  v12[8] = 0;
  v12[10] = 0;
  v12[12] = 0;
  v12[14] = 0;
  v12[16] = 0;
  v12[18] = 0;
  re::AssetHandle::AssetHandle(v11, a3);
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v10) = 0x7FFFFFFF;
  re::MaterialAsset::makeMaterialMemoryAssetWithFunctionConstants(a1, a2, v11, v9, v12, a4, a5);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
  re::AssetHandle::~AssetHandle(v11);
}