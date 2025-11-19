uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 64))(v8, v7, v9, v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
    return (*(*v9 + 72))(v9, v8, v10, v11);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 80))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 88))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  if (a2)
  {
    v6 = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  }

  else
  {
    v6 = 0;
  }

  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v5 + 96))(v5, v6, v8, v9);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 104))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    result = re::internal::SceneEntityRelationship::resolveRelationship((result + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
    if (result)
    {
      v8 = result;
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v9 + 112))(v9, v8, v10, v11, a5);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 120))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::SceneEntityRelationship::resolveRelationship((result + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 128))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 136))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::SceneEntityRelationship::resolveRelationship((result + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 144))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::SceneEntityRelationship::resolveRelationship(re::internal::SceneEntityRelationship *this, void *a2, uint64_t *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  v5 = 8 * a2;
  v6 = 8 * a2;
  v7 = a3;
  while (1)
  {
    v8 = *v7;
    if (re::StringID::operator==((*v7 + 288), this))
    {
      break;
    }

    ++v7;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
LABEL_7:
    while (1)
    {
      if ((*(*v3 + 305) & 4) != 0)
      {
        v9 = re::internal::SceneEntityRelationship::resolveRelationship_internal(this, *v3);
        if (v9)
        {
          break;
        }
      }

      ++v3;
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }

    return v9;
  }

  return v8;
}

uint64_t re::internal::SceneEntityRelationship::resolveRelationship_internal(void *a1, uint64_t a2)
{
  v2 = *(a2 + 344);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a2 + 360);
  v5 = 8 * v2;
  while (1)
  {
    v6 = *v4;
    if ((*(*v4 + 305) & 4) != 0)
    {
      if (re::StringID::operator==((v6 + 288), a1))
      {
        return v6;
      }

      v7 = re::internal::SceneEntityRelationship::resolveRelationship_internal(a1, v6);
      if (v7)
      {
        break;
      }
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return v7;
}

void anonymous namespace::ECSServiceBindNodeImpl::~ECSServiceBindNodeImpl(_anonymous_namespace_::ECSServiceBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::ECSServiceBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFAC38;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<anonymous namespace::ECSServiceBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

uint64_t anonymous namespace::ECSServiceBindNodeImpl::nodeForURI@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  result = strncmp(*a2, "service", v5);
  if (result || aService[v5])
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v8 = *(a1 + 8);
    *v7 = &unk_1F5CFAC38;
    v7[1] = v8;
    result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v7 + 2), (a1 + 16));
    *(a3 + 16) = v7;
  }

  return result;
}

uint64_t anonymous namespace::ECSServiceBindNodeImpl::relativeNodeForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 8);
  v18 = *(a1 + 8);
  v6 = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v19, (a1 + 16));
  v16 = 0;
  v17 = &str_67;
  memset(v24, 0, sizeof(v24));
  re::DynamicArray<re::BindPoint::BindPointData>::add(&v19, v24);
  re::BindPoint::BindPointData::deinit(v24);
  v8 = v23 + 32 * v21;
  *(v8 - 32) = &unk_1F5CFACD0;
  v9 = v16;
  *(v8 - 24) = *(v8 - 24) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
  *(v8 - 24) = v16 & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v8 - 16) = v17;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v12 = v18;
  v13 = v20;
  *v11 = &unk_1F5CFA9F0;
  *(v11 + 8) = v12;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 24) = v13;
  v14 = v21;
  *(v11 + 16) = v19;
  *(v11 + 32) = v14;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  *(v11 + 48) = v23;
  v23 = 0;
  ++v22;
  *(v11 + 40) = 1;
  *(a3 + 16) = v11;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19);
}

double anonymous namespace::ECSServiceBindNodeImpl::bindPointForKey@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

double anonymous namespace::ECSServiceBindNodeImpl::bindPointWithOverrideForKey@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::~ECSRelationshipBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>>::moveInto(uint64_t result, void *a2)
{
  *a2 = &unk_1F5CFACD0;
  v2 = *(result + 8);
  a2[1] = a2[1] & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[1] = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[2] = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  return result;
}

BOOL re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != &re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>>::implTypeInfo(void)const::typeInfo)
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::hash(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ (v5 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ (v5 >> 1))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4)
  {
    v10 = re::internal::ServiceSceneRelationship::resolveRelationship(v4, a2);
    if (v10)
    {
      v11 = v10;
      v12 = *a3;
      v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
      v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v12 + 48))(v12, v11, v13, v14) - 0x61C8864680B583E9;
    }
  }

  return v7;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::isAlive(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 64))(v8, v7, v9, v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::makeAlive(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 72))(v8, v7, v9, v10);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::targetIdentifier(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 80))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::baseValueUntyped(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 88))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::supportsOverrideValue(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  if (a2)
  {
    v6 = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  }

  else
  {
    v6 = 0;
  }

  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v5 + 96))(v5, v6, v8, v9);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::isOverridden(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 104))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::setIsOverridden(uint64_t result, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    result = re::internal::ServiceSceneRelationship::resolveRelationship((result + 8), a2);
    if (result)
    {
      v8 = result;
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v9 + 112))(v9, v8, v10, v11, a5);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::overrideValueUntyped(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 120))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::markAsWritten(uint64_t result, void *a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::ServiceSceneRelationship::resolveRelationship((result + 8), a2);
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 128))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::boundOwner(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 136))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::willSet(uint64_t result, void *a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::ServiceSceneRelationship::resolveRelationship((result + 8), a2);
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 144))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::ServiceSceneRelationship::resolveRelationship(re::internal::ServiceSceneRelationship *this, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = (*(*a2 + 288))(a2) + 120;
  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v28, v3, 0);
  v4 = *&v28[0];
  v17 = *&v28[0];
  v18 = DWORD2(v28[0]);
  v5 = WORD4(v28[0]);
  v6 = HIWORD(DWORD2(v28[0]));
  if (v3 == *&v28[0] && WORD4(v28[0]) == 0xFFFF && v6 == 0xFFFF)
  {
    return 0;
  }

  while (1)
  {
    v9 = v6;
    v10 = *(v4 + 16);
    if (v10 <= v6)
    {
      v19 = 0;
      memset(v28, 0, sizeof(v28));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v20 = 136315906;
      v21 = "operator[]";
      v22 = 1024;
      v23 = 797;
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v11 = *(*(v4 + 32) + 16 * v6) + 240 * v5;
    v12 = *(v11 + 200);
    if (v12)
    {
      v13 = *(v11 + 216);
      v14 = 8 * v12;
      while (1)
      {
        v15 = *v13;
        if (re::StringID::operator==((*v13 + 32), this))
        {
          break;
        }

        ++v13;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      if (v15)
      {
        return v15;
      }
    }

LABEL_15:
    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v17);
    v4 = v17;
    v5 = v18;
    v6 = HIWORD(v18);
    if (v17 == v3 && v18 == 0xFFFF && HIWORD(v18) == 0xFFFF)
    {
      return 0;
    }
  }
}

void anonymous namespace::EntityBindNodeImpl::~EntityBindNodeImpl(_anonymous_namespace_::EntityBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::EntityBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFADA8;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<anonymous namespace::EntityBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

uint64_t anonymous namespace::EntityBindNodeImpl::nodeForURI@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = strncmp(*a2, "entity", v5);
  if (v7 || aEntity[v5])
  {
    if (!strncmp(v6, "scene", v5) && !aScene_1[v5])
    {
      {
        re::introspect<re::ecs2::Scene>(BOOL)::info = re::ecs2::introspect_Scene(0);
      }

      v22 = 0;
      v17 = re::introspect<re::ecs2::Scene>(BOOL)::info;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      re::BindPoint::addToBindPointStack(&v17, (a1 + 8));
      v23 = 0u;
      v24 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v18, &v23);
      re::BindPoint::BindPointData::deinit(&v23);
      *(v22 + 32 * v20 - 32) = &unk_1F5CFAE40;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v13 = &unk_1F5CFA9F0;
    }

    else
    {
      result = strncmp(v6, "service", v5);
      if (result || aService[v5])
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return result;
      }

      {
        {
          re::introspect<re::ecs2::ECSService>(BOOL)::info = re::ecs2::introspect_ECSService(0);
        }
      }

      v22 = 0;
      v17 = re::introspect<re::ecs2::ECSService>(BOOL)::info;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      re::BindPoint::addToBindPointStack(&v17, (a1 + 8));
      v23 = 0u;
      v24 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v18, &v23);
      re::BindPoint::BindPointData::deinit(&v23);
      *(v22 + 32 * v20 - 32) = &unk_1F5CFAE40;
      v23 = 0u;
      v24 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v18, &v23);
      re::BindPoint::BindPointData::deinit(&v23);
      *(v22 + 32 * v20 - 32) = &unk_1F5CFAA88;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v13 = &unk_1F5CFAC38;
    }

    *v12 = v13;
    *(v12 + 8) = v17;
    *(v12 + 40) = 0;
    *(v12 + 16) = v18;
    *(v12 + 24) = 0;
    *(v12 + 24) = v19;
    *(v12 + 32) = 0;
    *(v12 + 32) = v20;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    *(v12 + 48) = v22;
    v22 = 0;
    ++v21;
    *(v12 + 40) = 1;
    *(a3 + 16) = v12;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v18);
    return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v18);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *v9 = &unk_1F5CFADA8;
    v9[1] = *(a1 + 8);
    result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v9 + 2), (a1 + 16));
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t anonymous namespace::EntityBindNodeImpl::relativeNodeForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v38 = *(a1 + 8);
  v5 = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v39, (a1 + 16));
  v35 = 0;
  v36 = 0;
  v37 = 0;
  re::DynamicString::setCapacity(&v34, 0);
  if (*(a2 + 16) == 1 && *(a2 + 8) == 8 && **a2 == 0x65766974616C6572 && *(a2 + 32) == 6)
  {
    v8 = *(a2 + 24);
    v9 = *v8;
    v10 = *(v8 + 2);
    if (v9 == 1701994864 && v10 == 29806)
    {
      v44 = 0u;
      v45 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v39, &v44);
      re::BindPoint::BindPointData::deinit(&v44);
      *(v43 + 32 * v41 - 32) = &unk_1F5CFAF18;
      goto LABEL_29;
    }
  }

  if (v28[0] != 1)
  {
    goto LABEL_21;
  }

  v13 = re::ecs2::ComponentTypeRegistry::instance(v12);
  v14 = v29;
  v15 = v30;
  *&v44 = 0;
  *(&v44 + 1) = &str_67;
  v12 = re::ecs2::ComponentTypeRegistry::componentTypeWithName(v13, &v44);
  v16 = v12;
  if (v44)
  {
    if (v44)
    {
    }
  }

  if (v16)
  {
    v44 = 0u;
    v45 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add(&v39, &v44);
    re::BindPoint::BindPointData::deinit(&v44);
    v17 = v43 + 32 * v41;
    *(v17 - 32) = &unk_1F5CFAFF0;
    *(v17 - 24) = v16;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
LABEL_21:
    if (v31[0] != 1)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      goto LABEL_29;
    }

    v21 = v32;
    v22 = v33;
    *&v44 = 0;
    *(&v44 + 1) = &str_67;
    re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>,re::internal::EntityChildRelationship>(&v38, &v44);
    if (v44)
    {
      if (v44)
      {
      }
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *v20 = &unk_1F5CFADA8;
    *(v20 + 8) = v38;
    *(v20 + 40) = 0;
    *(v20 + 16) = v39;
    *(v20 + 24) = 0;
    *(v20 + 24) = v40;
    *(v20 + 32) = 0;
    *(v20 + 32) = v41;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    *(v20 + 48) = v43;
    v43 = 0;
    ++v42;
    *(v20 + 40) = 1;
  }

  *(a3 + 16) = v20;
LABEL_29:
  if (v34 && (v35 & 1) != 0)
  {
    (*(*v34 + 40))();
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v39);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v39);
}

BOOL anonymous namespace::EntityBindNodeImpl::readBindingKey(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  if (*(a4 + 16) == 1)
  {
    *(a4 + 16) = 0;
  }

  __n[0] = 0;
  __n[1] = 0;
  result = re::internal::parseNextBindingKey(a2, __n, a3);
  if (result)
  {
    v8 = __n[1];
    if (__n[1] == 8)
    {
      v9 = __n[0];
      if (*__n[0] == 0x7365697469746E65)
      {
        goto LABEL_10;
      }

      v10 = "relative";
    }

    else
    {
      if (__n[1] != 10)
      {
        v9 = __n[0];
LABEL_15:
        *a4 = v9;
        *(a4 + 8) = v8;
        if (*(a4 + 16) == 1)
        {
          *(a4 + 16) = 0;
        }

        return 1;
      }

      v9 = __n[0];
      v10 = "components";
    }

    if (!memcmp(v9, v10, __n[1]))
    {
LABEL_10:
      v12 = 0uLL;
      result = re::internal::parseNextBindingKey(a2, &v12, a3);
      if (result)
      {
        v11 = v12;
        *a4 = *__n;
        if ((*(a4 + 16) & 1) == 0)
        {
          *(a4 + 16) = 1;
        }

        *(a4 + 24) = v11;
      }

      return result;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t anonymous namespace::EntityBindNodeImpl::bindPointForKey@<X0>(uint64_t a1@<X0>, const re::IntrospectionBase *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v30 = a2;
  v31 = 0uLL;
  v32 = 0;
  re::BindPoint::addToBindPointStack(&v30, (a1 + 8));
  if (!a2)
  {
    goto LABEL_6;
  }

  v8 = re::ecs2::ComponentTypeRegistry::instance(v7);
  v9 = re::ecs2::ComponentTypeRegistry::componentTypeWithIntrospectionInfo(v8, a2);
  if (v9)
  {
    v10 = v9;
LABEL_11:
    v34 = 0u;
    v35 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((&v30 + 8), &v34);
    re::BindPoint::BindPointData::deinit(&v34);
    v14 = *(&v31 + 1);
    v15 = v33 + 32 * *(&v31 + 1);
    *(v15 - 32) = &unk_1F5CFAFF0;
    *(v15 - 24) = v10;
    *a4 = v30;
    *(a4 + 16) = v31;
    *(a4 + 24) = v14;
    *(&v30 + 1) = 0;
    v31 = 0uLL;
    *(a4 + 40) = v33;
    v33 = 0;
    ++v32;
    *(a4 + 32) = 1;
    goto LABEL_15;
  }

  {
    if (v9)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
    }
  }

  if (re::introspect<re::ecs2::Component>(BOOL)::info == a2)
  {
LABEL_6:
    if (v27[0] == 1)
    {
      v11 = re::ecs2::ComponentTypeRegistry::instance(v9);
      v12 = v28;
      v13 = v29;
      *&v34 = 0;
      *(&v34 + 1) = &str_67;
      v9 = re::ecs2::ComponentTypeRegistry::componentTypeWithName(v11, &v34);
      v10 = v9;
      if (v34)
      {
        if (v34)
        {
        }
      }

      if (v10)
      {
        goto LABEL_11;
      }
    }
  }

  {
    if (v9)
    {
      re::introspect<re::ecs2::Entity>(BOOL)::info = re::ecs2::introspect_Entity(0);
    }
  }

  if (re::introspect<re::ecs2::Entity>(BOOL)::info != a2)
  {
LABEL_14:
    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    goto LABEL_15;
  }

  *(&v34 + 1) = 0;
  v35 = 0uLL;
  re::DynamicString::setCapacity(&v34, 0);
  if (v27[0] != 1)
  {
    if (v34 && (BYTE8(v34) & 1) != 0)
    {
      (*(*v34 + 40))(v18);
    }

    goto LABEL_14;
  }

  v19 = v28;
  v20 = v29;
  v25 = 0;
  v26 = &str_67;
  re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>,re::internal::EntityChildRelationship>(&v30, &v25);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v23 = v31;
  *a4 = v30;
  *(a4 + 16) = v23;
  *(&v30 + 1) = 0;
  v31 = 0uLL;
  v24 = v34;
  *(a4 + 40) = v33;
  v33 = 0;
  ++v32;
  *(a4 + 32) = 1;
  if (v24 && (BYTE8(v34) & 1) != 0)
  {
    (*(*v24 + 40))(v24, v35);
  }

LABEL_15:
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v30 + 8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v30 + 8);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 48))(v6, v5, v7, v8) - 0x61C8864680B583E9;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    (*(*v7 + 72))(v7, v5, v8, v9);
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (v5 && a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (v5 && a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  if (a2)
  {
    do
    {
      v5 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 96))(v4, v6, v8, v9);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 104))(v6, v5, v7, v8);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    do
    {
      v6 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    do
    {
      v4 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    do
    {
      v4 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }
}

uint64_t anonymous namespace::EntityAndComponentBindingKeyHelper::componentNameFromBindingKey(uint64_t result, __int128 *a2)
{
  if (a2[1])
  {
    if (*(a2 + 1) != 10 || (**a2 == 0x6E656E6F706D6F63 ? (v2 = *(*a2 + 8) == 29556) : (v2 = 0), !v2))
    {
      *result = 0;
      return result;
    }

    *result = 1;
    v3 = *(a2 + 24);
  }

  else
  {
    *result = 1;
    v3 = *a2;
  }

  *(result + 8) = v3;
  return result;
}

void re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>,re::internal::EntityChildRelationship>(void *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v6);
  re::BindPoint::BindPointData::deinit(v6);
  v4 = a1[5] + 32 * a1[3];
  *(v4 - 32) = &unk_1F5CFB310;
  v5 = *a2;
  *(v4 - 24) = *(v4 - 24) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v4 - 24) = *a2 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(v4 - 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 48))(v5, v4, v6, v7) - 0x61C8864680B583E9;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 64))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a2 + 32);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a2 + 32);
    }

    if (v5)
    {
      v6 = a4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v7 + 72))(v7, v5, v8, v9);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 32);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) != 0)
    {
      return 0;
    }

    else if (a4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v5 + 80))(v5, v4, v6, v7);
    }
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 32);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) != 0)
    {
      return 0;
    }

    else if (a4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v5 + 88))(v5, v4, v6, v7);
    }
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  if (a2 && (v5 = *(a2 + 32)) != 0)
  {
    if ((*(v5 + 304) & 0x80) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a2 + 32);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 96))(v4, v6, v7, v8);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 104))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v5 = *(a2 + 32);
    if (v5)
    {
      if ((*(v5 + 304) & 0x80) == 0)
      {
        v7 = *a3;
        v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
        (*(*v7 + 112))(v7, v5, v8, v9, a5);
      }
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 120))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if ((*(v4 + 304) & 0x80) == 0)
      {
        v5 = *a3;
        v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
        (*(*v5 + 128))(v5, v4, v6, v7);
      }
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 136))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if ((*(v4 + 304) & 0x80) == 0)
      {
        v5 = *a3;
        v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
        (*(*v5 + 144))(v5, v4, v6, v7);
      }
    }
  }
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFAFF0;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFAFF0;
  a2[1] = v2;
  return result;
}

unint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a1 + 8);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  if (a4)
  {
    v9 = re::ecs2::EntityComponentCollection::get((a2 + 48), v4);
    if (v9)
    {
      v10 = v9;
      v11 = *a3;
      v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      v6 ^= (v6 << 6) + (v6 >> 2) + (*(*v11 + 48))(v11, v10, v12, v13) - 0x61C8864680B583E9;
    }
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 64))(v8, v7, v9, v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 48), *(a1 + 8));
  if (result)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
    return (*(*v9 + 72))(v9, v8, v10, v11);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 80))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 88))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  if (a2)
  {
    v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  }

  else
  {
    v6 = 0;
  }

  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v5 + 96))(v5, v6, v8, v9);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 104))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(result + 8));
    if (result)
    {
      v8 = result;
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v9 + 112))(v9, v8, v10, v11, a5);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 120))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(result + 8));
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 128))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 136))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(result + 8));
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 144))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::ComponentMemberNodeImpl::ComponentMemberNodeImpl(uint64_t a1, void *a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CFB0C8;
  *(a1 + 88) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  v6 = *(a3 + 32);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v8 = re::DynamicString::setCapacity((a1 + 128), 0);
  *(a1 + 8) = a2[3] - 1;
  (**a3)(v11, a3, a2, v9);
  if ((a1 + 16) != v11)
  {
    re::BindNode::move((a1 + 16), v11);
  }

  re::BindNode::deinit(v11);
  return a1;
}

double re::BindPoint::addToBindPointStack<re::internal::ComponentMemberBindPointImpl>(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v8);
  v4 = re::BindPoint::BindPointData::deinit(v8);
  v5 = a1[5] + 32 * a1[3];
  *(v5 - 32) = 0;
  *(v5 - 24) = a2;
  v6 = (*(*a2 + 32))(a2, 96, 8, v4);
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *v6 = &unk_1F5CFB160;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = &str_67;
  *(v6 + 32) = 0;
  *(v6 + 40) = &str_67;
  result = 0.0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v5 - 16) = v6;
  return result;
}

void anonymous namespace::ComponentMemberNodeImpl::~ComponentMemberNodeImpl(_anonymous_namespace_::ComponentMemberNodeImpl *this)
{
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::BindNode::deinit((this + 16));
}

{

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::internal::BindNodeImpl<anonymous namespace::ComponentMemberNodeImpl>::copyInto(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5CFB0C8;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0u;
  *(a2 + 16) = 0u;
  re::BindNode::copy((a2 + 16), (a1 + 2));
  *(a2 + 48) = a1[6];
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(a2 + 56, a1 + 7);
  re::DynamicString::DynamicString((a2 + 96), (a1 + 12));

  return re::DynamicString::DynamicString((a2 + 128), (a1 + 16));
}

double re::internal::BindNodeImpl<anonymous namespace::ComponentMemberNodeImpl>::moveInto(void *a1, uint64_t a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5CFB0C8;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0u;
  *(a2 + 16) = 0u;
  re::BindNode::move((a2 + 16), (a1 + 2));
  re::BindPoint::BindPoint(a2 + 48, a1 + 6);
  result = 0.0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 120) = a1[15];
  v6 = a1[13];
  *(a2 + 96) = a1[12];
  a1[12] = 0;
  v7 = a1[14];
  a1[15] = 0;
  v9 = *(a2 + 104);
  v8 = *(a2 + 112);
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  a1[13] = v9;
  a1[14] = v8;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 152) = a1[19];
  v10 = a1[17];
  *(a2 + 128) = a1[16];
  a1[16] = 0;
  v11 = a1[18];
  a1[19] = 0;
  v13 = *(a2 + 136);
  v12 = *(a2 + 144);
  *(a2 + 136) = v10;
  *(a2 + 144) = v11;
  a1[17] = v13;
  a1[18] = v12;
  return result;
}

BOOL re::internal::BindNodeImpl<anonymous namespace::ComponentMemberNodeImpl>::equals(void *a1, uint64_t *a2)
{
  {
    return 0;
  }

  return re::DynamicString::operator==((a1 + 16), (a2 + 16));
}

double anonymous namespace::ComponentMemberNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double anonymous namespace::ComponentMemberNodeImpl::relativeNodeForKey@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v9 = 0u;
    v10 = 0u;
    re::BindNode::copy(&v9, (a1 + 16));
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v6 = **(a1 + 32);
    }

    v7 = (*(v6 + 56))(&v9);
    if (!(v9 | v10))
    {
      *a3 = 0u;
      a3[1] = 0u;
      return re::BindNode::deinit(&v9);
    }
  }

  return re::BindNode::deinit(&v9);
}

uint64_t anonymous namespace::ComponentMemberNodeImpl::readBindingKey(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v1 = **(a1 + 32);
  }

  return (*(v1 + 64))();
}

void anonymous namespace::ComponentMemberNodeImpl::bindPointForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a1[17];
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  if (v7)
  {
    if (v6)
    {
      v8 = a1[18];
    }

    else
    {
      v8 = a1 + 137;
    }

    *&v15 = v8;
    *(&v15 + 1) = v7;
    v9 = v16;
    v10.n128_f64[0] = re::BindNode::relativeNode((a1 + 2), &v15, v16);
    v11 = v16[0];
    if (!v16[0])
    {
      v9 = v17;
      v11 = *v17;
    }

    (*(v11 + 72))(v9, a2, a3, v10);
    re::BindNode::deinit(v16);
  }

  else
  {
    v12 = a1 + 2;
    v13 = a1[2];
    if (!v13)
    {
      v12 = a1[4];
      v13 = *v12;
    }

    v14 = *(v13 + 72);

    v14(v12);
  }
}

uint64_t anonymous namespace::ComponentMemberNodeImpl::bindPointWithOverrideForKey@<X0>(uint64_t a1@<X0>, re::KeyValueStore *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49[4] = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v8 = re::DynamicString::DynamicString(&v42, (a1 + 128));
    if (v43)
    {
      v9 = v43 >> 1;
    }

    else
    {
      v9 = v43 >> 1;
    }

    if (v9)
    {
      v8 = re::DynamicString::append(&v42, ".", 1uLL);
    }

    v39 = 0uLL;
    v10 = *(a3 + 8);
    if (v10)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }

    *(&v38 + 1) = 0;
    re::DynamicString::setCapacity(&v38, v11);
    re::DynamicString::operator=(&v38, a3);
    if (BYTE8(v38))
    {
      v12 = v39;
    }

    else
    {
      v12 = &v38 + 9;
    }

    if (BYTE8(v38))
    {
      v13 = *(&v38 + 1) >> 1;
    }

    else
    {
      v13 = BYTE8(v38) >> 1;
    }

    re::DynamicString::append(&v42, v12, v13);
    v14 = v38;
    if (v38 && (BYTE8(v38) & 1) != 0)
    {
      v14 = (*(*v38 + 40))();
    }

    v41 = 0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
    v45 = 0u;
    v46 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((&v38 + 8), &v45);
    re::BindPoint::BindPointData::deinit(&v45);
    v15 = v41 + 32 * *(&v39 + 1);
    *(v15 - 32) = &unk_1F5CFB238;
    *(v15 - 24) = 0;
    re::makeRelativeBindNode(*(a1 + 48), &v38, v49);
    v16 = v44;
    if ((v43 & 1) == 0)
    {
      v16 = (&v43 + 1);
    }

    v17 = v43 >> 1;
    if (v43)
    {
      v17 = v43 >> 1;
    }

    v36 = v16;
    v37 = v17;
    re::BindNode::bindPoint(v49, a2, &v36, &v45);
    if (*(&v46 + 1))
    {
      *(a4 + 40) = 0;
      *a4 = a2;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      re::BindPoint::addToBindPointStack(a4, (a1 + 48));
      v18 = re::BindPoint::stackItemImpl(a4, *(a1 + 8));
      v19 = *(a1 + 48);
      v20 = *(a1 + 104);
      v21 = *(a1 + 112);
      if ((v20 & 1) == 0)
      {
        v21 = a1 + 105;
      }

      v22 = v20 >> 1;
      v23 = v20 >> 1;
      if (*(a1 + 104))
      {
        v23 = v22;
      }

      v36 = v21;
      v37 = v23;
      re::internal::ComponentMemberBindPointImpl::init(v18, v19, &v36, &v45);
    }

    else
    {
      *(a4 + 40) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v45 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v45 + 8);
    re::BindNode::deinit(v49);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v38 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v38 + 8);
    result = v42;
    if (v42)
    {
      if (v43)
      {
        return (*(*v42 + 40))();
      }
    }
  }

  else
  {
    v24 = *(a1 + 16);
    if (!v24)
    {
      v24 = **(a1 + 32);
    }

    (*(v24 + 72))(&v38);
    if (*(&v39 + 1))
    {
      if ((re::BindPoint::supportsOverrideValue(&v38) & 1) == 0 && re::KeyValueStore::isSupportedValueType(a2, v25))
      {
        v26 = re::BindPoint::stackItemImpl(&v38, *(a1 + 8));
        re::DynamicString::DynamicString(&v42, (a1 + 96));
        v27 = re::DynamicString::append(&v42, ".", 1uLL);
        v46 = 0uLL;
        v28 = *(a3 + 8);
        if (v28)
        {
          v29 = v28 + 1;
        }

        else
        {
          v29 = 0;
        }

        *(&v45 + 1) = 0;
        re::DynamicString::setCapacity(&v45, v29);
        re::DynamicString::operator=(&v45, a3);
        if (BYTE8(v45))
        {
          v30 = v46;
        }

        else
        {
          v30 = &v45 + 9;
        }

        if (BYTE8(v45))
        {
          v31 = *(&v45 + 1) >> 1;
        }

        else
        {
          v31 = BYTE8(v45) >> 1;
        }

        re::DynamicString::append(&v42, v30, v31);
        if (v45 && (BYTE8(v45) & 1) != 0)
        {
          (*(*v45 + 40))();
        }

        v32 = v44;
        if ((v43 & 1) == 0)
        {
          v32 = (&v43 + 1);
        }

        v33 = (v43 >> 1);
        if (v43)
        {
          v33 = (v43 >> 1);
        }

        v49[0] = v32;
        v49[1] = v33;
        v48 = 0;
        v45 = 0u;
        v46 = 0u;
        v47 = 0;
        re::internal::ComponentMemberBindPointImpl::init(v26, a2, v49, &v45);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v45 + 8);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v45 + 8);
        if (v42 && (v43 & 1) != 0)
        {
          (*(*v42 + 40))();
        }
      }

      v34 = v39;
      *a4 = v38;
      *(a4 + 16) = v34;
      *(&v38 + 1) = 0;
      v39 = 0uLL;
      *(a4 + 40) = v41;
      v41 = 0;
      ++v40;
      *(a4 + 32) = 1;
    }

    else
    {
      *(a4 + 40) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v38 + 8);
    return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v38 + 8);
  }

  return result;
}

void re::internal::ComponentMemberBindPointImpl::~ComponentMemberBindPointImpl(re::internal::ComponentMemberBindPointImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::ComponentMemberBindPointImpl>::copyInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5CFB160;
  a2[1] = v4;
  re::StringID::StringID((a2 + 2), (a1 + 16));
  re::StringID::StringID((a2 + 4), (a1 + 32));
  a2[6] = *(a1 + 48);

  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 7), (a1 + 56));
}

uint64_t re::internal::BindPointImpl<re::internal::ComponentMemberBindPointImpl>::moveInto(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = &unk_1F5CFB160;
  a2[1] = v2;
  v3 = a1[2];
  a2[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  a2[2] = a1[2] & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  a2[3] = a1[3];
  a1[2] = 0;
  a1[3] = &str_67;
  v4 = a1[4];
  a2[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  a2[4] = a1[4] & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  a2[5] = a1[5];
  a1[4] = 0;
  a1[5] = &str_67;
  return re::BindPoint::BindPoint((a2 + 6), a1 + 6);
}

BOOL re::internal::BindPointImpl<re::internal::ComponentMemberBindPointImpl>::equals(void *a1, void *a2)
{
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 6), (a2 + 6));
}

uint64_t re::internal::ComponentMemberBindPointImpl::hash(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = 0x9E3779B97F4A7C17;
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    v5 = (*(*v6 + 48))(v6, a2, v7, v8) - 0x61C8864680B583E9;
  }

  return ((a2 >> 2) + (a2 << 6) + v5) ^ a2;
}

uint64_t re::internal::ComponentMemberBindPointImpl::isWeak(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 56))(v5, a2, v6, v7);
}

uint64_t re::internal::ComponentMemberBindPointImpl::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 64))(v5, a2, v6, v7);
}

uint64_t re::internal::ComponentMemberBindPointImpl::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = result;
  v15[0] = a3;
  v15[1] = a4;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    result = (*(*v6 + 72))(v6, a2, v7, v8);
  }

  v9 = *(v5 + 8);
  if (v9)
  {
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(v10 + 184);
      if (!v11)
      {
        v11 = re::ecs2::EntityComponentCollection::add((v10 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v9 = *(v5 + 8);
      }

      if (!re::KeyValueStore::getValue((v11 + 32), v9, (v5 + 16)))
      {
        re::KeyValueStore::addOrReplaceValue((v11 + 32), *(v5 + 8), (v5 + 16), 0);
      }

      v13 = *(v5 + 32);
      v12 = (v5 + 32);
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ (v13 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ (v13 >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11 + 88, v12, v14 ^ (v14 >> 31), v16);
      if (v17 == 0x7FFFFFFF)
      {
        v16[0] = 0;
        return re::KeyValueStore::addOrReplaceValue<BOOL>((v11 + 32), v12, v16);
      }
    }
  }

  return result;
}

uint64_t re::internal::ComponentMemberBindPointImpl::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 80))(v5, a2, v6, v7);
  }

  return a2;
}

uint64_t re::internal::ComponentMemberBindPointImpl::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v18 = a3;
  v19 = a4;
  if (!a4)
  {
    return v4;
  }

  if (!*(a1 + 8))
  {
    v14 = *a3;
    v15 = re::Slice<re::internal::BindPointImplBase const*>::range(&v18, 1uLL, a4);
    return (*(*v14 + 88))(v14, v4, v15, v16);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 184);
    if (v7)
    {
      v8 = 0xBF58476D1CE4E5B9 * ((*(a1 + 32) >> 31) ^ (*(a1 + 32) >> 1));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 88, (a1 + 32), (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), v20);
      if (v21 != 0x7FFFFFFF && *(*(v7 + 104) + 32 * v21 + 24) == 1)
      {
        Value = re::KeyValueStore::getValue((v7 + 32), *(a1 + 8), (a1 + 16));
        if (Value)
        {
          v4 = Value;
LABEL_11:
          if (*(a1 + 72))
          {
            re::BindPoint::stackItemImpl((a1 + 48), 0)[1] = v4;
            return re::BindPoint::baseValueUntyped((a1 + 48));
          }

          return v4;
        }
      }
    }
  }

  if (v19)
  {
    v10 = *v18;
    v11 = re::Slice<re::internal::BindPointImplBase const*>::range(&v18, 1uLL, v19);
    v4 = (*(*v10 + 88))(v10, v4, v11, v12);
    if (!v4)
    {
      return v4;
    }

    goto LABEL_11;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::ComponentMemberBindPointImpl::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (*(a1 + 8))
  {
    return 1;
  }

  if (!a4)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v6 + 96))(v6, a2, v7, v8);
}

uint64_t re::internal::ComponentMemberBindPointImpl::isOverridden(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(v2 + 184);
      if (v3 && (v4 = 0xBF58476D1CE4E5B9 * ((*(a1 + 32) >> 31) ^ (*(a1 + 32) >> 1)), re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 88, (a1 + 32), (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), v6), v7 != 0x7FFFFFFF))
      {
        LOBYTE(v2) = *(*(v3 + 104) + 32 * v7 + 24);
      }

      else
      {
        LOBYTE(v2) = 0;
      }
    }
  }

  return v2 & 1;
}

void re::internal::ComponentMemberBindPointImpl::setIsOverridden(re *a1, uint64_t a2, uint64_t *a3, unint64_t a4, unsigned __int8 a5)
{
  v18 = a3;
  v19 = a4;
  v17 = a5;
  if (!*(a1 + 1) || (v6 = *(a2 + 16)) == 0)
  {
LABEL_15:
    v16 = *re::ecsComponentsLogObjects(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to set override status for bind point component member.", buf, 2u);
    }

    return;
  }

  v7 = a1;
  v8 = *(v6 + 184);
  if (!v8)
  {
    v8 = re::ecs2::EntityComponentCollection::add((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v9 = 0xBF58476D1CE4E5B9 * ((*(v7 + 4) >> 31) ^ (*(v7 + 4) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v8 + 88, v7 + 4, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), buf);
  if (v21 == 0x7FFFFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(*(v8 + 104) + 32 * v21 + 24);
  }

  if (re::KeyValueStore::getValue((v8 + 32), *(v7 + 1), (v7 + 16)))
  {
    v11 = v10 == v17;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    re::KeyValueStore::addOrReplaceValue<BOOL>((v8 + 32), v7 + 2, &v17);
    if (!v19)
    {
      re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
      return;
    }

    v13 = *v18;
    v14 = re::Slice<re::internal::BindPointImplBase const*>::range(&v18, 1uLL, v19);
    a1 = (*(*v13 + 88))(v13, a2, v14, v15);
    if (a1)
    {
      re::KeyValueStore::addAndSwapValue((v8 + 32), *(v7 + 1), (v7 + 16), a1);
      return;
    }

    goto LABEL_15;
  }
}

uint64_t re::internal::ComponentMemberBindPointImpl::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v20 = a3;
  v21 = a4;
  if (!*(a1 + 8))
  {
    if (a4)
    {
      v14 = *a3;
      v15 = re::Slice<re::internal::BindPointImplBase const*>::range(&v20, 1uLL, a4);
      return (*(*v14 + 120))(v14, a2, v15, v16);
    }

    return 0;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v5 + 184);
  if (!v7)
  {
    v7 = re::ecs2::EntityComponentCollection::add((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v8 = 0xBF58476D1CE4E5B9 * ((*(a1 + 32) >> 31) ^ (*(a1 + 32) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 88, (a1 + 32), (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), v22);
  if (v23 == 0x7FFFFFFF || *(*(v7 + 104) + 32 * v23 + 24) != 1)
  {
    Value = re::KeyValueStore::getValue((v7 + 32), *(a1 + 8), (a1 + 16));
    if (Value)
    {
LABEL_15:
      if (*(a1 + 72))
      {
        re::BindPoint::stackItemImpl((a1 + 48), 0)[1] = Value;
        return re::BindPoint::baseValueUntyped((a1 + 48));
      }

      return Value;
    }

    re::KeyValueStore::addOrReplaceValue((v7 + 32), *(a1 + 8), (a1 + 16), 0);
LABEL_14:
    Value = v13;
    if (!v13)
    {
      return Value;
    }

    goto LABEL_15;
  }

  if (v21)
  {
    v10 = *v20;
    v11 = re::Slice<re::internal::BindPointImplBase const*>::range(&v20, 1uLL, v21);
    v13 = (*(*v10 + 88))(v10, a2, v11, v12);
    goto LABEL_14;
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

void **re::internal::ComponentMemberBindPointImpl::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  re::ecs2::Component::markDirty(a2);
  result = re::ecs2::Component::didSet(a2);
  v8 = *(a2 + 16);
  if (v8)
  {
    if (re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v9 = *(v8 + 216);
      if (v9)
      {
        re::ecs2::NetworkComponent::markDirty(v9, a2);
      }
    }

    result = *(v8 + 184);
    if (result)
    {
      result = re::ecs2::Component::markDirty(result);
    }
  }

  if (a4)
  {
    v10 = *a3;
    v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v10 + 128))(v10, a2, v11, v12);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBindPointImpl::boundOwner()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[54];
}

void *re::BindPoint::stackItemImpl(re::BindPoint *this, unint64_t a2)
{
  if (*(this + 3) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = (*(this + 5) + 32 * a2);
  if (!*result)
  {
    return result[2];
  }

  return result;
}

uint64_t re::BindNode::create<anonymous namespace::ComponentMemberNodeImpl,anonymous namespace::ComponentMemberNodeImpl const&,re::BindNode,re::StringSlice const&>(uint64_t a1, uint64_t a2, uint64_t *a3, re::BindNode *a4, uint64_t a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = a2;
  v9 = (*(*a2 + 32))(a2, 160, 8);
  *v9 = &unk_1F5CFB0C8;
  *(v9 + 8) = a3[1];
  *(v9 + 16) = 0u;
  v10 = (v9 + 16);
  *(v9 + 32) = 0u;
  re::BindNode::move((v9 + 16), a4);
  *(v9 + 48) = a3[6];
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v9 + 56, a3 + 7);
  re::DynamicString::DynamicString((v9 + 96), (a3 + 12));
  v11 = re::DynamicString::DynamicString((v9 + 128), (a3 + 16));
  if (*(v9 + 72))
  {
    v12 = *(v9 + 136);
    if (v12)
    {
      v13 = v12 >> 1;
    }

    else
    {
      v13 = v12 >> 1;
    }

    if (v13)
    {
      v11 = re::DynamicString::append((v9 + 128), ".", 1uLL);
    }

    v32 = 0;
    v33 = 0;
    v14 = *(a5 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    v31 = 0;
    re::DynamicString::setCapacity(&v30, v15);
    re::DynamicString::operator=(&v30, a5);
    if (v31)
    {
      v16 = v32;
    }

    else
    {
      v16 = &v31 + 1;
    }

    if (v31)
    {
      v17 = v31 >> 1;
    }

    else
    {
      v17 = v31 >> 1;
    }

    re::DynamicString::append((v9 + 128), v16, v17);
    result = v30;
    if (v30 && (v31 & 1) != 0)
    {
      result = (*(*v30 + 40))();
    }
  }

  else
  {
    LOBYTE(v28) = 0;
    v26 = 0;
    v27 = 0;
    v19 = *v10;
    if (!*v10)
    {
      v10 = *(v9 + 32);
      v19 = *v10;
    }

    (*(v19 + 72))(&v30, v10, 0, &v26);
    if ((re::BindPoint::supportsOverrideValue(&v30) & 1) == 0)
    {
      if (re::KeyValueStore::isSupportedValueType(v30, v20))
      {
        *(v9 + 48) = v30;
        re::DynamicArray<re::RigDataValue>::operator=(v9 + 56, &v31);
      }

      v21 = re::DynamicString::append((v9 + 96), ".", 1uLL);
      v28 = 0;
      v29 = 0;
      v22 = *(a5 + 8);
      if (v22)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      v27 = 0;
      re::DynamicString::setCapacity(&v26, v23);
      re::DynamicString::operator=(&v26, a5);
      if (v27)
      {
        v24 = v28;
      }

      else
      {
        v24 = &v27 + 1;
      }

      if (v27)
      {
        v25 = v27 >> 1;
      }

      else
      {
        v25 = v27 >> 1;
      }

      re::DynamicString::append((v9 + 96), v24, v25);
      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v31);
    result = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v31);
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t re::internal::ComponentMemberBindPointImpl::init(void *a1, uint64_t a2, void *a3, void *a4)
{
  a1[1] = a2;
  a1[6] = *a4;
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 7), (a4 + 1));
  re::DynamicString::format("animated::%.*s", &v12, a3[1], *a3);
  if (v13[0])
  {
    v6 = v13[1];
  }

  else
  {
    v6 = v13 + 1;
  }

  if (v13[0])
  {
    v7 = v13[0] >> 1;
  }

  else
  {
    v7 = LOBYTE(v13[0]) >> 1;
  }

  for (; v7; --v7)
  {
    *v6 = __tolower(*v6);
    ++v6;
  }

  re::StringID::StringID(&v11, &v12);
  v8 = re::StringID::operator=((a1 + 2), &v11);
  if (v11)
  {
    if (v11)
    {
    }
  }

  re::DynamicString::insert(&v12, 0, "status:", 7uLL);
  re::StringID::StringID(&v11, &v12);
  v9 = re::StringID::operator=((a1 + 4), &v11);
  if (v11)
  {
    if (v11)
    {
    }
  }

  result = v12;
  if (v12)
  {
    if (v13[0])
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::BindPointImpl<re::internal::ComponentMemberBaseBindPointImpl>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFB238;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<re::internal::ComponentMemberBaseBindPointImpl>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFB238;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 48))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::isWeak(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 56))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 64))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 72))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 80))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 88))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 96))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 104))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v6 = *a3;
    v7 = *(a1 + 8);
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v6 + 112))(v6, v7, v8, v9, a5);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 120))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 128))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 136))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 144))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v9[0], 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::~ECSRelationshipBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>>::moveInto(uint64_t result, void *a2)
{
  *a2 = &unk_1F5CFB310;
  v2 = *(result + 8);
  a2[1] = a2[1] & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[1] = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[2] = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  return result;
}

BOOL re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != &re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>>::implTypeInfo(void)const::typeInfo)
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v17[0] = a3;
  v17[1] = a4;
  v4 = (a1 + 8);
  v5 = 0xBF58476D1CE4E5B9 * ((*(a1 + 8) >> 31) ^ (*(a1 + 8) >> 1));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  if (a4)
  {
    v7 = *(a2 + 344);
    if (v7)
    {
      v10 = *(a2 + 360);
      v11 = 8 * v7;
      while (1)
      {
        v12 = *v10;
        if (re::StringID::operator==((*v10 + 288), v4))
        {
          break;
        }

        ++v10;
        v11 -= 8;
        if (!v11)
        {
          return v6;
        }
      }

      if (v12)
      {
        v13 = *a3;
        v14 = re::Slice<re::internal::BindPointImplBase const*>::range(v17, 1uLL, a4);
        v6 ^= (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (*(*v13 + 48))(v13, v12, v14, v15);
      }
    }
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v11 = *a3;
  v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v11 + 64))(v11, v10, v12, v13);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a2 + 344);
  if (v4)
  {
    v7 = result;
    v8 = *(a2 + 360);
    v9 = 8 * v4;
    while (1)
    {
      v10 = *v8;
      result = re::StringID::operator==((*v8 + 288), (v7 + 8));
      if (result)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        return result;
      }
    }

    if (v10)
    {
      v11 = a4 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *a3;
      v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      return (*(*v12 + 72))(v12, v10, v13, v14);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (v10 && a4)
  {
    v12 = *a3;
    v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    return (*(*v12 + 80))(v12, v10, v13, v14);
  }

  return v10;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (v10 && a4)
  {
    v12 = *a3;
    v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    return (*(*v12 + 88))(v12, v10, v13, v14);
  }

  return v10;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  if (a2 && (v6 = *(a2 + 344)) != 0)
  {
    v8 = *(a2 + 360);
    v9 = 8 * v6;
    while (1)
    {
      v10 = *v8;
      if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
  return (*(*v5 + 96))(v5, v10, v11, v12);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *a3;
  v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v11 + 104))(v11, v10, v12, v13);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v16[0] = a3;
  v16[1] = a4;
  if (a4)
  {
    v5 = *(a2 + 344);
    if (v5)
    {
      v9 = result;
      v10 = *(a2 + 360);
      v11 = 8 * v5;
      while (1)
      {
        v12 = *v10;
        result = re::StringID::operator==((*v10 + 288), (v9 + 8));
        if (result)
        {
          break;
        }

        ++v10;
        v11 -= 8;
        if (!v11)
        {
          return result;
        }
      }

      if (v12)
      {
        v13 = *a3;
        v14 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
        return (*(*v13 + 112))(v13, v12, v14, v15, a5);
      }
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *a3;
  v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v11 + 120))(v11, v10, v12, v13);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 344);
    if (v4)
    {
      v7 = result;
      v8 = *(a2 + 360);
      v9 = 8 * v4;
      while (1)
      {
        v10 = *v8;
        result = re::StringID::operator==((*v8 + 288), (v7 + 8));
        if (result)
        {
          break;
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return result;
        }
      }

      if (v10)
      {
        v11 = *a3;
        v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
        return (*(*v11 + 128))(v11, v10, v12, v13);
      }
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *a3;
  v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v11 + 136))(v11, v10, v12, v13);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 344);
    if (v4)
    {
      v7 = result;
      v8 = *(a2 + 360);
      v9 = 8 * v4;
      while (1)
      {
        v10 = *v8;
        result = re::StringID::operator==((*v8 + 288), (v7 + 8));
        if (result)
        {
          break;
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return result;
        }
      }

      if (v10)
      {
        v11 = *a3;
        v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
        return (*(*v11 + 144))(v11, v10, v12, v13);
      }
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::WeakBindPointImpl<re::ecs2::ECSService>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::ECSService>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB3E8;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::ECSService>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB3E8;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = 0x9E3779B97F4A7C17;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    v6 = (*(*v7 + 48))(v7, v5, v8, v9) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v6) ^ v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4 - 8;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v7 + 72))(v7, v6, v8, v9);
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 104))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v5 = *(result + 8);
    if (v5)
    {
      v7 = v5 - 8;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::WeakBindPointImpl<re::ecs2::Scene>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Scene>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB4C0;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Scene>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB4C0;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = 0x9E3779B97F4A7C17;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    v6 = (*(*v7 + 48))(v7, v5, v8, v9) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v6) ^ v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4 - 8;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v7 + 72))(v7, v6, v8, v9);
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 104))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v5 = *(result + 8);
    if (v5)
    {
      v7 = v5 - 8;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::WeakBindPointImpl<re::ecs2::Entity>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Entity>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB598;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Entity>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB598;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = 0x9E3779B97F4A7C17;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    v6 = (*(*v7 + 48))(v7, v5, v8, v9) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v6) ^ v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4 - 8;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v7 + 72))(v7, v6, v8, v9);
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 104))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v5 = *(result + 8);
    if (v5)
    {
      v7 = v5 - 8;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::WeakBindPointImpl<re::ecs2::Component>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Component>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB670;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Component>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB670;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = 0x9E3779B97F4A7C17;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    v6 = (*(*v7 + 48))(v7, v5, v8, v9) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v6) ^ v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4 - 8;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v7 + 72))(v7, v6, v8, v9);
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 104))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v5 = *(result + 8);
    if (v5)
    {
      v7 = v5 - 8;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 48))(v5, v4, v6, v7) - 0x61C8864680B583E9;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 64))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    (*(*v6 + 72))(v6, v4, v7, v8);
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 16);
  if (v4 && a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 80))(v5, v4, v6, v7);
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 16);
  if (v4 && a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 88))(v5, v4, v6, v7);
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v4 + 96))(v4, v5, v7, v8);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 104))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v7 + 112))(v7, v5, v8, v9, a5);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 120))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
      (*(*v5 + 128))(v5, v4, v6, v7);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 136))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
      (*(*v5 + 144))(v5, v4, v6, v7);
    }
  }
}

_anonymous_namespace_ *re::ecs2::AudioUpdateSystem::willAddSystemToECSService(re::ecs2::AudioUpdateSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  *(this + 28) = result;
  return result;
}

uint64_t re::ecs2::AudioUpdateSystem::willAddSceneToECSService(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t re::ecs2::AudioUpdateSystem::willRemoveSceneFromECSService(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t re::ecs2::AudioUpdateSystem::update(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void *re::ecs2::allocInfo_AudioUpdateSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_367, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_367))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1958, "AudioUpdateSystem");
    __cxa_guard_release(&_MergedGlobals_367);
  }

  return &unk_1EE1B1958;
}

void re::ecs2::initInfo_AudioUpdateSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x776AC1371AA0765CLL;
  v6[1] = "AudioUpdateSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioUpdateSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioUpdateSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioUpdateSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioUpdateSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioUpdateSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioUpdateSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioUpdateSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::AudioUpdateSystem::~AudioUpdateSystem(re::ecs2::AudioUpdateSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::AudioUpdateSystem *re::ecs2::AudioUpdateSystem::AudioUpdateSystem(re::ecs2::AudioUpdateSystem *this)
{
  v2 = re::ecs2::System::System(this, 0);
  *v2 = &unk_1F5CFB820;
  v2[28] = 0;
  LOWORD(v4) = 257;
  HIDWORD(v4) = 1023969417;
  v5 = 0;
  re::ecs2::System::setDefaultTaskOptions(v2, &v4);
  return this;
}

uint64_t *re::ecsComponentsLogObjects(re *this)
{
  {
    re::ecsComponentsLogObjects(void)::logObjects = os_log_create("com.apple.re", "ECS.Components");
  }

  return &re::ecsComponentsLogObjects(void)::logObjects;
}

void *re::ecs2::allocInfo_MeshShadowSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_368))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B19F0, "MeshShadowSystem");
    __cxa_guard_release(&_MergedGlobals_368);
  }

  return &unk_1EE1B19F0;
}

void re::ecs2::initInfo_MeshShadowSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xD0609FA8A90D6438;
  v6[1] = "MeshShadowSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x96000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshShadowSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshShadowSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshShadowSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshShadowSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshShadowSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshShadowSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshShadowSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::ecs2::MeshShadowSystemStateImpl *re::ecs2::MeshShadowSystemStateImpl::MeshShadowSystemStateImpl(re::ecs2::MeshShadowSystemStateImpl *this, re::ecs2::MeshShadowSystem *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CFB8B0;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 25) = 0;
  *(this + 26) = a2;
  v24 = re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v25 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v20, &v24, 2uLL);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 48, v20);
  if (v20[0] && v21)
  {
    (*(*v20[0] + 40))();
  }

  v20[0] = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v20[1] = re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v20[2] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v20[3] = re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v21 = re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v22 = re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v23 = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(&v24, v20, 7uLL);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 88, &v24);
  if (v24 && v28)
  {
    (*(*v24 + 40))();
  }

  v24 = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v25 = re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v26 = re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v20, &v24, 3uLL);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 128, v20);
  if (v20[0] && v21)
  {
    (*(*v20[0] + 40))();
  }

  v24 = re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v25 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v26 = re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v27 = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v20, &v24, 4uLL);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 168, v20);
  if (v20[0] && v21)
  {
    (*(*v20[0] + 40))();
  }

  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 10);
    v6 = 8 * v4;
    do
    {
      re::DynamicArray<re::TransitionCondition *>::add(v3, v5++);
      v6 -= 8;
    }

    while (v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    v8 = *(this + 15);
    v9 = 8 * v7;
    do
    {
      re::DynamicArray<re::TransitionCondition *>::add(v3, v8++);
      v9 -= 8;
    }

    while (v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    v11 = *(this + 20);
    v12 = 8 * v10;
    do
    {
      re::DynamicArray<re::TransitionCondition *>::add(v3, v11++);
      v12 -= 8;
    }

    while (v12);
  }

  v13 = *(this + 23);
  if (v13)
  {
    v14 = *(this + 25);
    v15 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
    v16 = 8 * v13;
    do
    {
      if (*v14 != v15)
      {
        re::DynamicArray<re::TransitionCondition *>::add(v3, v14);
        v15 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
      }

      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  v17 = re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v18 = *(this + 3);
  if (v18 >= *(this + 2))
  {
    re::DynamicArray<float *>::growCapacity(v3, v18 + 1);
    v18 = *(this + 3);
  }

  *(*(this + 5) + 8 * v18) = v17;
  *(this + 3) = v18 + 1;
  ++*(this + 8);
  return this;
}

void re::ecs2::MeshShadowSystemStateImpl::willDeactivateComponent(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&v21, v6);
  if (re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType == a3)
  {
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(*(a1 + 208) + 1496, &v21);
    if (!a2[24])
    {
      goto LABEL_31;
    }

    (*(**(*(a1 + 208) + 248) + 56))(v28);
    isEntityAMeshReceiver = re::internal::shadows::isEntityAMeshReceiver(a2, v28, v18);
    re::AssetHandle::~AssetHandle(v28);
    if (!isEntityAMeshReceiver)
    {
      goto LABEL_31;
    }

LABEL_30:
    re::ecs2::MeshShadowSystem::processReceiverRemoval(*(a1 + 208), a2);
    goto LABEL_31;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a3)
  {
    re::ecs2::MeshShadowSystem::processCasterRemoval(*(a1 + 208), a2);
    goto LABEL_31;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a3)
  {
    v20 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v20 || *(v20 + 112) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a3)
  {
    re::StackScratchAllocator::StackScratchAllocator(v28);
    v22[0] = 0;
    v22[1] = 0;
    v23 = 1;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v27 = 0;
    re::BucketArray<re::ecs2::Entity *,32ul>::init(v22, v28, 1uLL);
    *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v22) = a2;
    for (i = v26; v26; i = v26)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
      ++v27;
      v9 = v8[43];
      if (v9)
      {
        v10 = v8[45];
        v11 = 8 * v9;
        do
        {
          v12 = *v10++;
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v22) = v12;
          v11 -= 8;
        }

        while (v11);
      }

      v29 = v8;
      v13 = *(a1 + 208);
      if (*(v13 + 1112))
      {
        v14 = v8[39];
        v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
        v16 = *(*(v13 + 1120) + 4 * ((v15 ^ (v15 >> 31)) % *(v13 + 1136)));
        if (v16 != 0x7FFFFFFF)
        {
          v17 = *(v13 + 1128);
          while (*(v17 + 40 * v16 + 8) != v14)
          {
            v16 = *(v17 + 40 * v16) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_19;
            }
          }

          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v13 + 1208, &v29);
        }
      }

LABEL_19:
      ;
    }

    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
    if (v22[0] && (v23 & 1) == 0)
    {
      (*(*v22[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v28);
  }

LABEL_31:
  objc_destroyWeak(&v21);
}

void re::ecs2::MeshShadowSystem::processReceiverRemoval(re::ecs2::MeshShadowSystem *this, re::ecs2::Entity *a2)
{
  v19 = a2;
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 4);
  }

  while (v3);
  v5 = *(a2 + 39);
  v6 = v5 ^ (v5 >> 30);
  if (*(this + 139))
  {
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
    v8 = v7 ^ (v7 >> 31);
    v9 = *(*(this + 140) + 4 * (v8 % *(this + 284)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(*(*(v4 + 3) + 104) + 288) >> 1;
      v11 = *(this + 141);
      while (*(v11 + 40 * v9 + 8) != v5)
      {
        v9 = *(v11 + 40 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_13;
        }
      }

      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(location, this + 1112, v5, v8);
      *location = *(v11 + 40 * HIDWORD(location[1]) + 16);
      re::HashTable<unsigned long long,re::SceneWorldRootId,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 1112, v5);
      re::internal::shadows::removeParamsFromMaterialParameterBlock(v5, *(*(this + 29) + 24), 0);
      v12 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(this + 1016, location);
      if (v12)
      {
        --*v12;
      }

      v18 = v10;
      v13 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1064, &v18);
      if (v13)
      {
        --*v13;
      }
    }
  }

LABEL_13:
  if (*(this + 145))
  {
    v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
    v15 = *(*(this + 146) + 4 * ((v14 ^ (v14 >> 31)) % *(this + 296)));
    if (v15 != 0x7FFFFFFF)
    {
      v16 = *(this + 147);
      while (*(v16 + (v15 << 6) + 8) != v5)
      {
        v15 = *(v16 + (v15 << 6)) & 0x7FFFFFFF;
        if (v15 == 0x7FFFFFFF)
        {
          goto LABEL_20;
        }
      }

      re::HashTable<unsigned long long,re::MeshShadowPlaneData::ShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 1160, v5);
    }
  }

LABEL_20:
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 1208, &v19);
  if (v19)
  {
    v17 = v19 + 8;
  }

  else
  {
    v17 = 0;
  }

  objc_initWeak(location, v17);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 1256, location);
  objc_destroyWeak(location);
}

void re::ecs2::MeshShadowSystem::processCasterRemoval(re::ecs2::MeshShadowSystem *this, re::ecs2::Entity *a2)
{
  v20 = a2;
  if (a2)
  {
    v4 = a2 + 8;
  }

  else
  {
    v4 = 0;
  }

  objc_initWeak(&location, v4);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 1544, &location);
  objc_destroyWeak(&location);
  objc_initWeak(&location, v4);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 1496, &location);
  objc_destroyWeak(&location);
  objc_initWeak(&location, v4);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 1448, &location);
  objc_destroyWeak(&location);
  if (*(this + 121))
  {
    v5 = *(a2 + 39);
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
    v7 = v6 ^ (v6 >> 31);
    v8 = *(this + 122);
    v9 = *(v8 + 4 * (v7 % *(this + 248)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(this + 123);
      while (*(v10 + 40 * v9 + 8) != v5)
      {
        v9 = *(v10 + 40 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          return;
        }
      }

      v11 = a2;
      do
      {
        v12 = v11;
        v11 = *(v11 + 4);
      }

      while (v11);
      v13 = *(*(*(v12 + 3) + 104) + 288);
      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&location, this + 968, *(a2 + 39), v7);
      v19 = *(v10 + 40 * HIDWORD(v22) + 16);
      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&location, this + 968, v5, v7);
      v14 = HIDWORD(v22);
      if (HIDWORD(v22) != 0x7FFFFFFF)
      {
        v15 = (v10 + 40 * HIDWORD(v22));
        v16 = *v15 & 0x7FFFFFFF;
        if (v23 == 0x7FFFFFFF)
        {
          *(v8 + 4 * v22) = v16;
        }

        else
        {
          *(v10 + 40 * v23) = *(v10 + 40 * v23) & 0x80000000 | v16;
        }

        *v15 = *(this + 251);
        *(this + 251) = v14;
        --*(this + 249);
        ++*(this + 252);
      }

      if (*re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) == a2)
      {
        *re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) = 0;
      }

      v17 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19);
      re::DynamicArray<unsigned long long>::remove(v17 + 8, &v20);
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(this + 1304, &v19);
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(this + 1352, &v19);
      if (!*(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) + 24))
      {
        if (!*(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) + 56))
        {
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(this + 1400, &v19);
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(this + 1304, &v19);
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(this + 1352, &v19);
        }

        location = *(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) + 56);
        v22 = v13 >> 1;
        v18 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(this + 1016, &location);
        if (v18)
        {
          --*v18;
        }

        re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(this + 872, &v19);
      }
    }
  }
}

void re::ecs2::MeshShadowSystemStateImpl::willDeactivateEntity(re::ecs2::MeshShadowSystem **this, re::ecs2::Entity *a2)
{
  re::ecs2::MeshShadowSystem::processCasterRemoval(this[26], a2);
  re::ecs2::MeshShadowSystem::processReceiverRemoval(this[26], a2);
  if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::StackScratchAllocator::StackScratchAllocator(v21);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    re::BucketArray<re::ecs2::Entity *,32ul>::init(v15, v21, 1uLL);
    *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v15) = a2;
    for (i = v19; v19; i = v19)
    {
      v5 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, --v19);
      ++v20;
      v6 = v5[43];
      if (v6)
      {
        v7 = v5[45];
        v8 = 8 * v6;
        do
        {
          v9 = *v7++;
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v15) = v9;
          v8 -= 8;
        }

        while (v8);
      }

      v22 = v5;
      v10 = this[26];
      if (*(v10 + 139))
      {
        v11 = v5[39];
        v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
        v13 = *(*(v10 + 140) + 4 * ((v12 ^ (v12 >> 31)) % *(v10 + 284)));
        if (v13 != 0x7FFFFFFF)
        {
          v14 = *(v10 + 141);
          while (*(v14 + 40 * v13 + 8) != v11)
          {
            v13 = *(v14 + 40 * v13) & 0x7FFFFFFF;
            if (v13 == 0x7FFFFFFF)
            {
              goto LABEL_13;
            }
          }

          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v10 + 1208, &v22);
        }
      }

LABEL_13:
      ;
    }

    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v15);
    if (v15[0])
    {
      if ((v16 & 1) == 0)
      {
        (*(*v15[0] + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void re::ecs2::MeshShadowSystemStateImpl::didDependentComponentChange(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v63 = a3;
  if (*(a3 + 304))
  {
    if (!a4)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) didDependentComponentChange() gets NULL componentType", "componentType", "didDependentComponentChange", 541);
      _os_crash();
      __break(1u);
      return;
    }

    v6 = *(a3 + 98);
    if (*(a3 + 98))
    {
      v8 = (a4 + 16);
      v9 = *(a3 + 104);
      v10 = vld1q_dup_s16(v8);
      for (i = 1; ; i -= 8)
      {
        v12 = vandq_s8(vceqq_s16(v10, *v9), xmmword_1E306AC00);
        v12.i16[0] = vmaxvq_u16(v12);
        if (v12.i32[0])
        {
          break;
        }

        ++v9;
        if (!--v6)
        {
          return;
        }
      }

      if (v12.u16[0] - i < *(a3 + 96))
      {
        v13 = a1[8];
        if (v13)
        {
          v14 = 8 * v13;
          v15 = a1[10];
          while (*v15 != a4)
          {
            ++v15;
            v14 -= 8;
            if (!v14)
            {
              v16 = 0;
              goto LABEL_16;
            }
          }
        }

        else
        {
          v15 = a1[10];
        }

        v16 = v15 != (a1[10] + 8 * v13);
LABEL_16:
        v17 = a1[13];
        if (v17)
        {
          v18 = 8 * v17;
          v19 = a1[15];
          while (*v19 != a4)
          {
            ++v19;
            v18 -= 8;
            if (!v18)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v19 = a1[15];
        }

        if (v19 != (a1[15] + 8 * v17))
        {
          v16 |= 2u;
        }

LABEL_24:
        v20 = a1[18];
        if (v20)
        {
          v21 = 8 * v20;
          v22 = a1[20];
          while (*v22 != a4)
          {
            ++v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v22 = a1[20];
        }

        if (v22 != (a1[20] + 8 * v20))
        {
          v16 |= 4u;
        }

LABEL_32:
        v23 = a1[23];
        if (v23)
        {
          v24 = 8 * v23;
          v25 = a1[25];
          while (*v25 != a4)
          {
            ++v25;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          v25 = a1[25];
        }

        if (v25 != (a1[25] + 8 * v23))
        {
          v16 |= 8u;
        }

LABEL_40:
        v26 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
        {
          v27 = v16 | 0x10;
        }

        else
        {
          v27 = v16;
        }

        if (v27)
        {
          v28 = a1[26];
          objc_initWeak(location, (a3 + 8));
          re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v28 + 1448, location);
          objc_destroyWeak(location);
          if ((v27 & 2) == 0)
          {
LABEL_45:
            if ((v27 & 4) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_50;
          }
        }

        else if ((v27 & 2) == 0)
        {
          goto LABEL_45;
        }

        v29 = a1[26];
        objc_initWeak(location, (a3 + 8));
        re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v29 + 1496, location);
        objc_destroyWeak(location);
        if ((v27 & 4) == 0)
        {
LABEL_46:
          if ((v27 & 8) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_51;
        }

LABEL_50:
        v30 = a1[26];
        objc_initWeak(location, (a3 + 8));
        re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v30 + 1544, location);
        objc_destroyWeak(location);
        if ((v27 & 8) == 0)
        {
          goto LABEL_75;
        }

LABEL_51:
        if (re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
        {
          re::StackScratchAllocator::StackScratchAllocator(location);
          v64[0] = 0;
          v64[1] = 0;
          v65 = 1;
          v67 = 0;
          v68 = 0;
          v66 = 0;
          v69 = 0;
          re::BucketArray<re::ecs2::Entity *,32ul>::init(v64, location, 1uLL);
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v64) = a3;
          for (j = v68; v68; j = v68)
          {
            v33 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v64, j - 1);
            re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v64, --v68);
            ++v69;
            v34 = v33[43];
            if (v34)
            {
              v35 = v33[45];
              v36 = 8 * v34;
              do
              {
                v37 = *v35++;
                *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v64) = v37;
                v36 -= 8;
              }

              while (v36);
            }

            v71 = v33;
            v38 = a1[26];
            if (*(v38 + 1112))
            {
              v39 = v33[39];
              v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) >> 27));
              v41 = *(*(v38 + 1120) + 4 * ((v40 ^ (v40 >> 31)) % *(v38 + 1136)));
              if (v41 != 0x7FFFFFFF)
              {
                v42 = *(v38 + 1128);
                while (*(v42 + 40 * v41 + 8) != v39)
                {
                  v41 = *(v42 + 40 * v41) & 0x7FFFFFFF;
                  if (v41 == 0x7FFFFFFF)
                  {
                    goto LABEL_67;
                  }
                }

                re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v38 + 1208, &v71);
              }
            }

LABEL_67:
            ;
          }

          re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v64);
          if (v64[0] && (v65 & 1) == 0)
          {
            (*(*v64[0] + 40))();
          }

          re::StackScratchAllocator::~StackScratchAllocator(location);
          v26 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
          goto LABEL_75;
        }

        if (re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
        {
          if (re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType != a4)
          {
            if (re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
            {
              v31 = a1[26];
              objc_initWeak(location, (a3 + 8));
              re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v31 + 1256, location);
              objc_destroyWeak(location);
            }

LABEL_75:
            if (v27 >= 0x10)
            {
              v45 = re::ecs2::EntityComponentCollection::get((v63 + 48), v26[16]);
              if (v45)
              {
                v46 = v45;
                v47 = v63;
                do
                {
                  v48 = v47;
                  v47 = *(v47 + 32);
                }

                while (v47);
                v49 = *(v48 + 24);
                if (v49)
                {
                  v50 = (*(**(v49 + 56) + 32))(*(v49 + 56));
                  v51 = re::ServiceLocator::serviceOrNull<re::ecs2::ShadowScopeService>(v50);
                  if (v51)
                  {
                    v52 = (*(*v51 + 48))(v51, v46);
                    if (v52)
                    {
                      v53 = v52;
                      v54 = *(v52 + 32);
                      if (v54)
                      {
                        v55 = 0;
                        v56 = (*(v52 + 16) + 8);
                        while (1)
                        {
                          v57 = *v56;
                          v56 += 6;
                          if (v57 < 0)
                          {
                            break;
                          }

                          if (v54 == ++v55)
                          {
                            LODWORD(v55) = *(v52 + 32);
                            break;
                          }
                        }
                      }

                      else
                      {
                        LODWORD(v55) = 0;
                      }

                      while (v55 != v54)
                      {
                        v58 = *(*(v53 + 16) + 24 * v55 + 16);
                        v59 = re::ecs2::EntityComponentCollection::get((v58 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                        if (v59 && *(v59 + 40))
                        {
                          v60 = a1[26];
                          if (v58)
                          {
                            v61 = (v58 + 8);
                          }

                          else
                          {
                            v61 = 0;
                          }

                          objc_initWeak(location, v61);
                          re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v60 + 1448, location);
                          objc_destroyWeak(location);
                        }

                        v62 = *(v53 + 32);
                        if (v62 <= v55 + 1)
                        {
                          v62 = v55 + 1;
                        }

                        while (v62 - 1 != v55)
                        {
                          LODWORD(v55) = v55 + 1;
                          if ((*(*(v53 + 16) + 24 * v55 + 8) & 0x80000000) != 0)
                          {
                            goto LABEL_101;
                          }
                        }

                        LODWORD(v55) = v62;
LABEL_101:
                        ;
                      }
                    }
                  }
                }
              }
            }

            return;
          }

          if (!*(a3 + 192))
          {
            return;
          }

          (*(**(a1[26] + 248) + 56))(location);
          isEntityAMeshReceiver = re::internal::shadows::isEntityAMeshReceiver(a3, location, v43);
          re::AssetHandle::~AssetHandle(location);
          if (!isEntityAMeshReceiver)
          {
            goto LABEL_75;
          }
        }

        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1[26] + 1208, &v63);
        goto LABEL_75;
      }
    }
  }
}

unint64_t re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(uint64_t a1, void *a2)
{
  result = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_15;
  }

  v6 = result % v5;
  v7 = *(*(a1 + 8) + 4 * (result % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_15:
    result = re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::addAsMove(a1, v6, result, a2);
    ++*(a1 + 40);
    return result;
  }

  v8 = *(a1 + 16);
  v9 = a2[1];
  v10 = v8 + 32 * v7;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 != *a2 || v11 != v9)
  {
    while (1)
    {
      v7 = *(v8 + 32 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        break;
      }

      v14 = v8 + 32 * v7;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 == *a2 && v15 == v9)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v6, a2);
  re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v6, a1, *a2, a2[1], v4);
  return *(a1 + 16) + 104 * v7 + 24;
}

unint64_t re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(uint64_t a1, void *a2)
{
  result = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_15;
  }

  v6 = result % v5;
  v7 = *(*(a1 + 8) + 4 * (result % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_15:
    result = re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::addAsCopy(a1, v6, result, a2, a2);
    ++*(a1 + 40);
    return result;
  }

  v8 = *(a1 + 16);
  v9 = a2[1];
  v10 = v8 + 32 * v7;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 != *a2 || v11 != v9)
  {
    while (1)
    {
      v7 = *(v8 + 32 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        break;
      }

      v14 = v8 + 32 * v7;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 == *a2 && v15 == v9)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

unint64_t re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(uint64_t a1, void *a2)
{
  result = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v22, a2);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = result % v5;
    v7 = *(a1 + 8);
    v8 = *(v7 + 4 * (result % v5));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 16);
      v10 = a2[1];
      v11 = v9 + 32 * v8;
      if (*(v11 + 16) == *a2 && *(v11 + 24) == v10)
      {
        *(v7 + 4 * v6) = *(v11 + 8) & 0x7FFFFFFF;
LABEL_15:
        v16 = *(a1 + 16);
        v17 = v16 + 32 * v8;
        v20 = *(v17 + 8);
        v19 = (v17 + 8);
        v18 = v20;
        if (v20 < 0)
        {
          *v19 = v18 & 0x7FFFFFFF;
          v16 = *(a1 + 16);
          v18 = *(v16 + 32 * v8 + 8);
        }

        v21 = *(a1 + 40);
        *(v16 + 32 * v8 + 8) = *(a1 + 36) | v18 & 0x80000000;
        --*(a1 + 28);
        *(a1 + 36) = v8;
        *(a1 + 40) = v21 + 1;
      }

      else
      {
        while (1)
        {
          v13 = v8;
          v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
          if (v8 == 0x7FFFFFFF)
          {
            break;
          }

          v14 = v9 + 32 * v8;
          if (*(v14 + 16) == *a2 && *(v14 + 24) == v10)
          {
            *(v9 + 32 * v13 + 8) = *(v9 + 32 * v13 + 8) & 0x80000000 | *(v14 + 8) & 0x7FFFFFFF;
            goto LABEL_15;
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v6, a2);
  re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(v6, a1, *a2, a2[1], v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v7 + 24;
  }
}

int *re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v11, a2);
  result = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v11, a1, *a2, a2[1], v4);
  v6 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 16);
    result = (v7 + 104 * v13);
    v8 = *result & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v8;
    }

    else
    {
      *(v7 + 104 * v14) = *(v7 + 104 * v14) & 0x80000000 | v8;
    }

    v9 = *result;
    if (*result < 0)
    {
      *result = v9 & 0x7FFFFFFF;
      result = re::DynamicArray<unsigned long>::deinit((result + 8));
      v7 = *(a1 + 16);
      v9 = *(v7 + 104 * v6);
    }

    *(v7 + 104 * v6) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    v10 = *(a1 + 40) + 1;
    *(a1 + 36) = v6;
    *(a1 + 40) = v10;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::SceneWorldRootId,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 40 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 40 * v13) = *(v6 + 40 * v13) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MeshShadowPlaneData::ShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + (v12 << 6));
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + (v13 << 6)) = *(v6 + (v13 << 6)) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

uint64_t re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(uint64_t result, uint64_t *a2)
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

  result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

void *re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_1::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 312);
  (*(*a1 + 8))(&v31);
  do
  {
    v6 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  if (v31.n128_u8[0])
  {
    v7 = v31.n128_u64[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(*(v6 + 24) + 104) + 288);
  v9 = v8 >> 1;
  v10 = v5 ^ (v5 >> 30);
  if (*(a2 + 1112))
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27));
    v12 = v11 ^ (v11 >> 31);
    v13 = *(*(a2 + 1120) + 4 * (v12 % *(a2 + 1136)));
    if (v13 != 0x7FFFFFFF)
    {
      v14 = *(a2 + 1128);
      while (*(v14 + 40 * v13 + 8) != v5)
      {
        v13 = *(v14 + 40 * v13) & 0x7FFFFFFF;
        if (v13 == 0x7FFFFFFF)
        {
          goto LABEL_16;
        }
      }

      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v31, a2 + 1112, v5, v12);
      v31 = *(v14 + 40 * v31.n128_u32[3] + 16);
      v15 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(a2 + 1016, &v31);
      if (v15)
      {
        v16 = v15;
        re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(a2 + 1640, &v31);
        --*v16;
      }

      v17 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 1064, &v31.n128_u64[1]);
      if (v17)
      {
        --*v17;
      }
    }
  }

LABEL_16:
  v31.n128_u64[0] = v7;
  v31.n128_u64[1] = v8 >> 1;
  v18 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(a2 + 1016, &v31);
  if (v18)
  {
    v19 = v18;
    v31.n128_u64[0] = v7;
    v31.n128_u64[1] = v8 >> 1;
    re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(a2 + 1640, &v31);
    ++*v19;
  }

  else
  {
    v31 = 0uLL;
    v32 = 0;
    v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
    v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v8 >> 31))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v8 >> 31))) >> 27));
    re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(&v31, a2 + 1016, v7, v8 >> 1, (((v20 ^ (v20 >> 31)) << 6) + ((v20 ^ (v20 >> 31)) >> 2) - 0x61C8864680B583E9 + (v21 ^ (v21 >> 31))) ^ v20 ^ (v20 >> 31));
    if (v31.n128_u32[3] == 0x7FFFFFFF)
    {
      v22 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(a2 + 1016, v31.n128_u32[2], v31.n128_u64[0]);
      v22[1] = v7;
      v22[2] = v9;
      v22[3] = 1;
      ++*(a2 + 1056);
    }

    v31.n128_u64[0] = v7;
    v31.n128_u64[1] = v8 >> 1;
    re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(a2 + 1592, &v31);
    v31.n128_u64[0] = v7;
    v31.n128_u64[1] = v8 >> 1;
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(a2 + 1688, &v31);
  }

  v31.n128_u64[0] = v8 >> 1;
  v23 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 1064, &v31);
  if (v23)
  {
    ++*v23;
  }

  else
  {
    v30 = v8 >> 1;
    v31 = 0uLL;
    v32 = 0;
    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v8 >> 31))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v8 >> 31))) >> 27));
    re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a2 + 1064, &v30, v24 ^ (v24 >> 31), &v31);
    if (v31.n128_u32[3] == 0x7FFFFFFF)
    {
      v25 = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a2 + 1064, v31.n128_u32[2], v31.n128_u64[0]);
      *(v25 + 8) = v30;
      *(v25 + 16) = 1;
      ++*(a2 + 1104);
    }
  }

  v31 = 0uLL;
  v32 = 0;
  v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27));
  result = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v31, a2 + 1112, v5, v26 ^ (v26 >> 31));
  v28 = v31.n128_u32[3];
  if (v31.n128_u32[3] == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a2 + 1112, v31.n128_u32[2], v31.n128_u64[0]);
    result[1] = v5;
    result[2] = v7;
    result[3] = v9;
    ++*(a2 + 1152);
  }

  else
  {
    ++*(a2 + 1152);
    v29 = *(a2 + 1128) + 40 * v28;
    *(v29 + 16) = v7;
    *(v29 + 24) = v9;
  }

  return result;
}

uint64_t re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_3::operator()(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 ^ (a2 >> 30);
  if (*(result + 1112))
  {
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
    v6 = v5 ^ (v5 >> 31);
    v7 = *(*(result + 1120) + 4 * (v6 % *(result + 1136)));
    if (v7 != 0x7FFFFFFF)
    {
      v8 = *(result + 1128);
      while (*(v8 + 40 * v7 + 8) != a2)
      {
        v7 = *(v8 + 40 * v7) & 0x7FFFFFFF;
        if (v7 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v13, result + 1112, a2, v6);
      v13[0] = *(v8 + 40 * HIDWORD(v13[0]) + 16);
      re::HashTable<unsigned long long,re::SceneWorldRootId,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3 + 1112, a2);
      v9 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(v3 + 1016, v13);
      if (v9)
      {
        --*v9;
      }

      result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v3 + 1064, v13 + 1);
      if (result)
      {
        --*result;
      }
    }
  }

LABEL_11:
  if (*(v3 + 1160))
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
    v11 = *(*(v3 + 1168) + 4 * ((v10 ^ (v10 >> 31)) % *(v3 + 1184)));
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(v3 + 1176);
      while (*(v12 + (v11 << 6) + 8) != a2)
      {
        v11 = *(v12 + (v11 << 6)) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          return result;
        }
      }

      return re::HashTable<unsigned long long,re::MeshShadowPlaneData::ShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3 + 1160, a2);
    }
  }

  return result;
}

BOOL re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2);
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
  v9 = a2[1];
  v10 = v8 + 32 * v6;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 == *a2 && v11 == v9)
  {
    return 1;
  }

  do
  {
    v6 = *(v8 + 32 * v6 + 8) & 0x7FFFFFFF;
    result = v6 != 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      break;
    }

    v14 = v8 + 32 * v6;
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
  }

  while (v16 != *a2 || v15 != v9);
  return result;
}

__n128 re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(uint64_t a1, __n128 *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v24, a2);
  v6 = v4;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = v4 % v7;
    v9 = *(*(a1 + 8) + 4 * (v4 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      v11 = a2->n128_u64[1];
      v12 = v10 + 32 * v9;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 == a2->n128_u64[0] && v13 == v11)
      {
        return result;
      }

      while (1)
      {
        v9 = *(v10 + 32 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        v16 = v10 + 32 * v9;
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 == a2->n128_u64[0] && v17 == v11)
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

  v20 = *(a1 + 36);
  if (v20 == 0x7FFFFFFF)
  {
    v20 = *(a1 + 32);
    v21 = v20;
    if (v20 == v7)
    {
      re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      LODWORD(v8) = v6 % *(a1 + 24);
      v21 = *(a1 + 32);
    }

    *(a1 + 32) = v21 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v20 + 8);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v20 + 8);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  *(v22 + 32 * v20 + 8) = v23 | 0x80000000;
  *(*(a1 + 16) + 32 * v20 + 8) = *(*(a1 + 16) + 32 * v20 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v8);
  *(*(a1 + 16) + 32 * v20) = v6;
  result = *a2;
  *(*(a1 + 16) + 32 * v20 + 16) = *a2;
  *(*(a1 + 8) + 4 * v8) = v20;
  ++*(a1 + 28);
  ++*(a1 + 40);
  return result;
}

void re::HashSet<re::SceneShadowClusterID,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::unionSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(a3);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a1 + 16) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 8;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(a1 + 16);
    do
    {
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(a3, (v10 + 32 * v7 + 16));
      v11 = *(a1 + 32);
      v10 = *(a1 + 16);
      if (v11 <= v7 + 1)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = *(a1 + 32);
      }

      while (v12 - 1 != v7)
      {
        v7 = (v7 + 1);
        if ((*(v10 + 32 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v7) = v12;
LABEL_17:
      ;
    }

    while (v7 != v11);
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = 0;
    v15 = (*(a2 + 16) + 8);
    while (1)
    {
      v16 = *v15;
      v15 += 8;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 != v13)
  {
    v17 = *(a2 + 16);
    do
    {
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(a3, (v17 + 32 * v14 + 16));
      v18 = *(a2 + 32);
      v17 = *(a2 + 16);
      if (v18 <= v14 + 1)
      {
        v19 = v14 + 1;
      }

      else
      {
        v19 = *(a2 + 32);
      }

      while (v19 - 1 != v14)
      {
        v14 = (v14 + 1);
        if ((*(v17 + 32 * v14 + 8) & 0x80000000) != 0)
        {
          goto LABEL_34;
        }
      }

      LODWORD(v14) = v19;
LABEL_34:
      ;
    }

    while (v14 != v18);
  }
}

uint64_t re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  if (!*a1)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v6 % *(a1 + 24);
  v8 = *(*(a1 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v11 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v7, v6);
    v12 = *a2;
    *(v11 + 16) = 0u;
    v10 = v11 + 16;
    *(v11 + 8) = v12;
    *(v11 + 352) = 0u;
    *(v11 + 368) = 0u;
    *(v11 + 320) = 0u;
    *(v11 + 336) = 0u;
    *(v11 + 288) = 0u;
    *(v11 + 304) = 0u;
    *(v11 + 256) = 0u;
    *(v11 + 272) = 0u;
    *(v11 + 224) = 0u;
    *(v11 + 240) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 208) = 0u;
    *(v11 + 160) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 172) = 0x7FFFFFFF;
    *(v11 + 184) = 0u;
    *(v11 + 200) = 0u;
    *(v11 + 216) = 0x7FFFFFFF00000000;
    *(v11 + 232) = 0u;
    *(v11 + 248) = 0u;
    v13 = (v11 + 280);
    *(v11 + 264) = 0x7FFFFFFF00000000;
    *v13 = 0u;
    v13[1] = 0u;
    *(v10 + 296) = 0x7FFFFFFF00000000;
    *(v10 + 304) = 0;
    *(v10 + 344) = 0x7FFFFFFF00000000;
    *(v10 + 312) = 0u;
    *(v10 + 328) = 0u;
    *(v10 + 352) = 0;
    *(v10 + 360) = 0;
    ++*(a1 + 40);
    return v10;
  }

  v9 = *(a1 + 16);
  if (*(v9 + 392 * v8 + 8) != v4)
  {
    while (1)
    {
      LODWORD(v8) = *(v9 + 392 * v8) & 0x7FFFFFFF;
      if (v8 == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v9 + 392 * v8 + 8) == v4)
      {
        return v9 + 392 * v8 + 16;
      }
    }

    goto LABEL_8;
  }

  return v9 + 392 * v8 + 16;
}

void re::ecs2::MeshShadowSystem::willAddSystemToECSService(re::ecs2::MeshShadowSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = *(this + 30);
  if (v2 && *(this + 29))
  {
    v3 = *(this + 31);
    if (v3)
    {
      v4 = (*(**(this + 5) + 32))(*(this + 5));
      (*(*v3 + 120))(v3, v4);
      v2 = *(this + 30);
    }

    (*(*v2 + 8))(&v8);
    v5 = *(this + 344);
    *(this + 344) = v8;
    v8 = v5;
    v6 = *(this + 45);
    *(this + 45) = v9;
    v9 = v6;
    re::AssetHandle::~AssetHandle(&v8);
    re::ecs2::MeshShadowSystem::asyncLoadFontAssetIfNeeded(this, v7);
  }
}

void re::ecs2::MeshShadowSystem::asyncLoadFontAssetIfNeeded(re::ecs2::MeshShadowSystem *this, const re::RenderManager *a2)
{
  v3 = *(this + 44);
  if (!v3 || (v4 = atomic_load((v3 + 896)), v4 != 2))
  {
    if (re::ProjectiveMeshShadowBuilder::requiresDebugFont(*(this + 29), a2))
    {

      re::AssetHandle::loadAsync((this + 344));
    }
  }
}

double re::ecs2::MeshShadowSystem::willRemoveSystemFromECSService(re::ecs2::MeshShadowSystem *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

uint64_t re::ecs2::MeshShadowSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v879 = *MEMORY[0x1E69E9840];
  v808 = a2;
  v809 = a3;
  v4 = *(result + 224);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v807);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v806, 3146, v3);
    v796 = (*(**(v3 + 256) + 24))(*(v3 + 256));
    v5 = atomic_load((*(*(v3 + 232) + 192) + 608));
    if (v5 >= *(v3 + 2336))
    {
      *(v3 + 2336) = v5 + 1;
      if (*(v3 + 2048) == 1)
      {
        *(v3 + 2048) = 0;
      }

      if (*(v3 + 2112) == 1)
      {
        re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v3 + 2064));
        *(v3 + 2112) = 0;
      }

      *(v3 + 2344) = 0;
    }

    re::StackScratchAllocator::StackScratchAllocator(buf);
    v823[1].i32[0] = 1;
    v823[2].i64[0] = 0;
    v823[1].i64[1] = 0;
    v823[0].i64[1] = 0;
    v823[0].i64[0] = buf;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v823, 0);
    v823[1].i32[0] += 2;
    v6 = *(v3 + 792);
    if ((v6 & 0x3F) != 0)
    {
      v7 = (v6 >> 6) + 1;
    }

    else
    {
      v7 = v6 >> 6;
    }

    v823[2].i64[1] = *(v3 + 792);
    *to = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v823, v7, to);
    v8 = *(v809 + 200);
    if (v8)
    {
      v9 = *(v809 + 216);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        *to = v11;
        v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 640), to);
        re::DynamicBitset<unsigned long long,64ul>::setBit(v823, *(*(v3 + 648) + 16 * v12 + 8));
        v10 -= 8;
      }

      while (v10);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(v823, v3 + 752);
    *&to[16] = 1;
    *&to[32] = 0;
    *&to[24] = 0;
    *&to[8] = 0;
    *to = buf;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(to, 0);
    *&to[16] += 2;
    v13 = *(v3 + 792);
    if ((v13 & 0x3F) != 0)
    {
      v14 = (v13 >> 6) + 1;
    }

    else
    {
      v14 = v13 >> 6;
    }

    *&to[40] = *(v3 + 792);
    *&v875[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(to, v14, v875);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v3 + 752, v823);
    v15 = v823[2].i64[0];
    if (v823[1].i8[0])
    {
      v15 = &v823[1].i64[1];
    }

    v16 = v823[0].i64[1];
    if ((v823[0].i64[1] & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v17 = 0;
      while (1)
      {
        v19 = *v15++;
        v18 = v19;
        if (v19)
        {
          break;
        }

        v17 -= 64;
        if (!--v16)
        {
          goto LABEL_38;
        }
      }

      v20 = __clz(__rbit64(v18));
      if (v20 + 1 != v17)
      {
        FirstBitSet = v20 - v17;
        do
        {
          v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 584, FirstBitSet);
          v23 = *(*v22 + 224);
          v24 = v22[3];
          v25 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v24);
          if (*(v25 + 40))
          {
            v26 = (*(*v23 + 24))(v23, &v808, v22, v24, v25, 0);
          }

          else
          {
            v26 = 0;
          }

          v27 = v22[5];
          v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v27);
          if (*(v28 + 40))
          {
            v26 |= (*(*v23 + 32))(v23, &v808, v22, v27, v28, 0);
          }

          v29 = v22[6];
          v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v29);
          if (*(v30 + 40))
          {
            if (((v26 | (*(*v23 + 40))(v23, &v808, v22, v29, v30, 0)) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else if (!v26)
          {
LABEL_36:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(to, FirstBitSet);
            goto LABEL_37;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(to, FirstBitSet);
LABEL_37:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v823, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_38:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(v3 + 752, to);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v3 + 584);
    if (*to && (to[16] & 1) == 0)
    {
      (*(**to + 40))();
    }

    if (v823[0].i64[0] && (v823[1].i8[0] & 1) == 0)
    {
      (*(*v823[0].i64[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(buf);
    (*(**(v3 + 248) + 16))(buf);
    v31 = v864;
    *(v3 + 2272) = v865;
    v32 = v867;
    *(v3 + 2288) = v866;
    *(v3 + 2304) = v32;
    *(v3 + 2320) = v868;
    v33 = v860;
    *(v3 + 2208) = v861;
    v34 = v863;
    *(v3 + 2224) = v862;
    *(v3 + 2240) = v34;
    *(v3 + 2256) = v31;
    v35 = *buf;
    *(v3 + 2144) = *&buf[16];
    v36 = v859;
    *(v3 + 2160) = *&buf[32];
    *(v3 + 2176) = v36;
    *(v3 + 2192) = v33;
    *(v3 + 2128) = v35;
    memset(to, 0, 36);
    *&to[36] = 0x7FFFFFFFLL;
    v792 = *(v3 + 1576);
    if (v792)
    {
      v37 = 0;
      v38 = (*(v3 + 1560) + 8);
      while (1)
      {
        v39 = *v38;
        v38 += 6;
        if (v39 < 0)
        {
          break;
        }

        if (v792 == ++v37)
        {
          LODWORD(v37) = *(v3 + 1576);
          break;
        }
      }
    }

    else
    {
      LODWORD(v37) = 0;
    }

    if (v37 != v792)
    {
      do
      {
        WeakRetained = objc_loadWeakRetained((*(v3 + 1560) + 24 * v37 + 16));
        if (WeakRetained)
        {
          v41 = WeakRetained;
          v42 = WeakRetained - 8;
          re::StackScratchAllocator::StackScratchAllocator(buf);
          v823[0] = 0uLL;
          v823[1].i32[0] = 1;
          memset(&v823[1].u32[2], 0, 24);
          v824.i32[0] = 0;
          re::BucketArray<re::ecs2::Entity *,32ul>::init(v823, buf, 1uLL);
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v823) = v42;
LABEL_53:
          while (v823[2].i64[1])
          {
            v43 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v823, v823[2].i64[1] - 1);
            re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v823, --v823[2].i64[1]);
            ++v824.i32[0];
            v44 = *(v43 + 344);
            if (v44)
            {
              v45 = *(v43 + 360);
              v46 = 8 * v44;
              do
              {
                v47 = *v45++;
                *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v823) = v47;
                v46 -= 8;
              }

              while (v46);
            }

            *&v875[0] = v43;
            v48 = *(v43 + 98);
            if (*(v43 + 98))
            {
              v49 = (re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
              v50 = *(v43 + 104);
              v51 = vld1q_dup_s16(v49);
              v52 = 1;
              while (1)
              {
                v53 = vandq_s8(vceqq_s16(v51, *v50), xmmword_1E306AC00);
                v53.i16[0] = vmaxvq_u16(v53);
                if (v53.i32[0])
                {
                  break;
                }

                v52 -= 8;
                ++v50;
                if (!--v48)
                {
                  goto LABEL_53;
                }
              }

              if (v53.u16[0] - v52 < *(v43 + 96))
              {
                *location = (*(**(v3 + 272) + 16))(*(v3 + 272));
                if (*re::ecs2::RenderOptions::forEntity(location, v43) == 1)
                {
                  objc_initWeak(location, (v43 + 8));
                  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v3 + 1448, location);
                  objc_destroyWeak(location);
                }

                else
                {
                  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(to, v875);
                }
              }
            }
          }

          re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v823);
          if (v823[0].i64[0] && (v823[1].i8[0] & 1) == 0)
          {
            (*(*v823[0].i64[0] + 40))();
          }

          re::StackScratchAllocator::~StackScratchAllocator(buf);
        }

        else
        {
          v55 = *re::shadowLogObjects(0);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "processRerenderUpdate";
            *&buf[12] = 1024;
            *&buf[14] = 625;
            _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", buf, 0x12u);
          }
        }

        v54 = *(v3 + 1576);
        if (v54 <= v37 + 1)
        {
          v54 = v37 + 1;
        }

        while (v54 - 1 != v37)
        {
          LODWORD(v37) = v37 + 1;
          if ((*(*(v3 + 1560) + 24 * v37 + 8) & 0x80000000) != 0)
          {
            goto LABEL_76;
          }
        }

        LODWORD(v37) = v54;
LABEL_76:
        ;
      }

      while (v37 != v792);
      v56 = *&to[32];
      if (*&to[32])
      {
        v57 = 0;
        v58 = *&to[16];
        v59 = 8;
        while ((*(*&to[16] + v59) & 0x80000000) == 0)
        {
          ++v57;
          v59 += 24;
          if (*&to[32] == v57)
          {
            LODWORD(v57) = *&to[32];
            break;
          }
        }

        if (*&to[32] != v57)
        {
          do
          {
            re::ecs2::MeshShadowSystem::processCasterRemoval(v3, *(v58 + 24 * v57 + 16));
            v58 = *&to[16];
            if (*&to[32] <= (v57 + 1))
            {
              v60 = v57 + 1;
            }

            else
            {
              v60 = *&to[32];
            }

            while (v60 - 1 != v57)
            {
              LODWORD(v57) = v57 + 1;
              if ((*(*&to[16] + 24 * v57 + 8) & 0x80000000) != 0)
              {
                goto LABEL_93;
              }
            }

            LODWORD(v57) = v60;
LABEL_93:
            ;
          }

          while (v57 != v56);
        }
      }
    }

    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v3 + 1544);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(to);
    if (*(v3 + 1476))
    {
      memset(buf, 0, 36);
      *&buf[36] = 0x7FFFFFFFLL;
      v61 = *(v3 + 1480);
      if (v61)
      {
        v62 = 0;
        v63 = (*(v3 + 1464) + 8);
        while (1)
        {
          v64 = *v63;
          v63 += 6;
          if (v64 < 0)
          {
            break;
          }

          if (v61 == ++v62)
          {
            LODWORD(v62) = *(v3 + 1480);
            break;
          }
        }
      }

      else
      {
        LODWORD(v62) = 0;
      }

      if (v62 != v61)
      {
        do
        {
          v65 = objc_loadWeakRetained((*(v3 + 1464) + 24 * v62 + 16));
          if (v65)
          {
            v66 = v65;
            v67 = (v65 - 1);
            (*(*v796 + 8))(v823);
            _ZF = v823[0].u8[0] != 1 || v823[0].i64[1] == 0;
            if (!_ZF)
            {
              v823[0].i64[0] = v67;
              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(buf, v823);
            }

            v69 = v66[29];
            if (v69 && !*(v69 + 64))
            {
              v823[0].i64[0] = v67;
              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(buf, v823);
            }
          }

          else
          {
            v71 = *re::shadowLogObjects(0);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              v823[0].i32[0] = 136315394;
              *(v823[0].i64 + 4) = "processClusterInfoUpdate";
              v823[0].i16[6] = 1024;
              *(&v823[0].i32[3] + 2) = 731;
              _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", v823, 0x12u);
            }
          }

          v70 = *(v3 + 1480);
          if (v70 <= v62 + 1)
          {
            v70 = v62 + 1;
          }

          while (v70 - 1 != v62)
          {
            LODWORD(v62) = v62 + 1;
            if ((*(*(v3 + 1464) + 24 * v62 + 8) & 0x80000000) != 0)
            {
              goto LABEL_118;
            }
          }

          LODWORD(v62) = v70;
LABEL_118:
          ;
        }

        while (v62 != v61);
        v72 = *&buf[32];
        if (*&buf[32])
        {
          v73 = 0;
          v74 = *&buf[16];
          v75 = 8;
          while ((*(*&buf[16] + v75) & 0x80000000) == 0)
          {
            ++v73;
            v75 += 24;
            if (*&buf[32] == v73)
            {
              LODWORD(v73) = *&buf[32];
              break;
            }
          }

          if (*&buf[32] != v73)
          {
            do
            {
              re::ecs2::MeshShadowSystem::processCasterRemoval(v3, *(v74 + 24 * v73 + 16));
              v74 = *&buf[16];
              if (*&buf[32] <= (v73 + 1))
              {
                v76 = v73 + 1;
              }

              else
              {
                v76 = *&buf[32];
              }

              while (v76 - 1 != v73)
              {
                LODWORD(v73) = v73 + 1;
                if ((*(*&buf[16] + 24 * v73 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }
              }

              LODWORD(v73) = v76;
LABEL_135:
              ;
            }

            while (v73 != v72);
          }
        }
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
    }

    v77 = *(v3 + 1480);
    if (v77)
    {
      v78 = 0;
      v79 = (*(v3 + 1464) + 8);
      while (1)
      {
        v80 = *v79;
        v79 += 6;
        if (v80 < 0)
        {
          break;
        }

        if (v77 == ++v78)
        {
          LODWORD(v78) = *(v3 + 1480);
          break;
        }
      }
    }

    else
    {
      LODWORD(v78) = 0;
    }

    if (v78 == v77)
    {
LABEL_144:
      v81 = *(v3 + 1336);
      if (v81)
      {
        v82 = 0;
        v83 = (*(v3 + 1320) + 8);
        while (1)
        {
          v84 = *v83;
          v83 += 8;
          if (v84 < 0)
          {
            break;
          }

          if (v81 == ++v82)
          {
            LODWORD(v82) = *(v3 + 1336);
            break;
          }
        }
      }

      else
      {
        LODWORD(v82) = 0;
      }

      if (v82 != v81)
      {
        v127 = &unk_1EE187000;
        while (1)
        {
          v823[0] = *(*(v3 + 1320) + 32 * v82 + 16);
          v128 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v823);
          v129 = v128;
          v130 = *(v128 + 24);
          if (v130)
          {
            v131 = *(v128 + 40);
            v132 = v131 + 8 * v130;
            do
            {
              v133 = *(*v131 + 192);
              if (v133)
              {
                v134 = *(v133 + 72);
                if (v134)
                {
                  v135 = *(v133 + 88);
                  for (i = 24 * v134; i; i -= 24)
                  {
                    v137 = *(v135 + 1);
                    if (v137)
                    {
                      v138 = atomic_load((v137 + 896));
                      if (v138 == 2)
                      {
                        v139 = *(v135 + 1);
                        if (v139)
                        {
                          v140 = *(v139 + 280);
                          v128 = re::MaterialAsset::assetType(v128);
                          if (v140 == v128)
                          {
                            v128 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v135);
                            if ((*(v128 + 1842) & 0xFE) == 6)
                            {
                              LOBYTE(v130) = 1;
                              goto LABEL_233;
                            }
                          }
                        }

                        else
                        {
                          v128 = re::MaterialAsset::assetType(v128);
                        }
                      }
                    }

                    v135 = (v135 + 24);
                  }
                }
              }

              v131 += 8;
            }

            while (v131 != v132);
            LOBYTE(v130) = 0;
LABEL_233:
            v127 = &unk_1EE187000;
          }

          *(v129 + 64) = v130;
          memset(buf, 0, 36);
          *&buf[36] = 0x7FFFFFFFLL;
          v141 = *(v129 + 24);
          if (v141)
          {
            v142 = *(v129 + 40);
            v143 = &v142[v141];
            do
            {
              v144 = *v142;
              if (*v142)
              {
                do
                {
                  v145 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v144 ^ (v144 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v144 ^ (v144 >> 30))) >> 27));
                  v146 = v145 ^ (v145 >> 31);
                  if (*buf)
                  {
                    v147 = v146 % *&buf[24];
                    v148 = *(*&buf[8] + 4 * v147);
                    if (v148 != 0x7FFFFFFF)
                    {
                      while (*(*&buf[16] + 32 * v148 + 8) != v144)
                      {
                        v148 = *(*&buf[16] + 32 * v148) & 0x7FFFFFFF;
                        if (v148 == 0x7FFFFFFF)
                        {
                          goto LABEL_243;
                        }
                      }

                      v152 = *&buf[16] + 32 * v148;
                      v153 = *(v152 + 16);
                      v150 = (v152 + 16);
                      v151 = v153 + 1;
                      goto LABEL_245;
                    }
                  }

                  else
                  {
                    LODWORD(v147) = 0;
                  }

LABEL_243:
                  v149 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(buf, v147, v146);
                  *(v149 + 16) = 0;
                  v150 = (v149 + 16);
                  *(v150 - 1) = v144;
                  ++*&buf[40];
                  v141 = *(v129 + 24);
                  v151 = 1;
LABEL_245:
                  *v150 = v151;
                  if (v141 == v151)
                  {
                    goto LABEL_250;
                  }

                  v144 = *(v144 + 32);
                }

                while (v144 && (*(v144 + 304) & 0x80) == 0);
              }

              ++v142;
            }

            while (v142 != v143);
            v144 = 0;
LABEL_250:
            v127 = &unk_1EE187000;
          }

          else
          {
            v144 = 0;
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(buf);
          v154 = *v129;
          if (!*v129)
          {
            goto LABEL_258;
          }

          if (v144 != v154)
          {
            break;
          }

LABEL_259:
          v155 = *(v3 + 1336);
          if (v155 <= v82 + 1)
          {
            v155 = v82 + 1;
          }

          while (v155 - 1 != v82)
          {
            v82 = (v82 + 1);
            if ((*(*(v3 + 1320) + 32 * v82 + 8) & 0x80000000) != 0)
            {
              goto LABEL_265;
            }
          }

          LODWORD(v82) = v155;
LABEL_265:
          if (v82 == v81)
          {
            goto LABEL_266;
          }
        }

        if (re::ecs2::EntityComponentCollection::get((v154 + 48), v127[451]))
        {
          re::ecs2::EntityComponentCollection::remove((v154 + 48), v127[451]);
        }

        if (!re::ecs2::EntityComponentCollection::get((v144 + 48), v127[451]))
        {
          re::ecs2::EntityComponentCollection::add((v144 + 48), v127[451]);
        }

LABEL_258:
        *v129 = v144;
        goto LABEL_259;
      }

LABEL_266:
      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v3 + 1448);
      v156 = *(v3 + 1528);
      if (v156)
      {
        v157 = 0;
        v158 = (*(v3 + 1512) + 8);
        while (1)
        {
          v159 = *v158;
          v158 += 6;
          if (v159 < 0)
          {
            break;
          }

          if (v156 == ++v157)
          {
            LODWORD(v157) = *(v3 + 1528);
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
        v801 = *(v3 + 1528);
        do
        {
          v164 = objc_loadWeakRetained((*(v3 + 1512) + 24 * v157 + 16));
          v165 = v164 - 8;
          if (v164)
          {
            v166 = v164 - 8;
          }

          else
          {
            v166 = 0;
          }

          if (v164)
          {
            v167 = v164;
            do
            {
              v168 = v165;
              v165 = *(v165 + 4);
            }

            while (v165);
            v169 = *(v168 + 3);
            if (v169)
            {
              v170 = *(*(v169 + 104) + 288) >> 1;
              if (!*(v3 + 968))
              {
                goto LABEL_295;
              }

              v171 = *(v164 + 38);
              v172 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v171 ^ (v171 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v171 ^ (v171 >> 30))) >> 27));
              v173 = *(*(v3 + 976) + 4 * ((v172 ^ (v172 >> 31)) % *(v3 + 992)));
              if (v173 == 0x7FFFFFFF)
              {
                goto LABEL_295;
              }

              v174 = *(v3 + 984);
              while (*(v174 + 40 * v173 + 8) != v171)
              {
                v173 = *(v174 + 40 * v173) & 0x7FFFFFFF;
                if (v173 == 0x7FFFFFFF)
                {
                  goto LABEL_295;
                }
              }

              v175 = *(v166 + 30);
              if (v175)
              {
                *buf = *(v175 + 64);
                *&buf[8] = v170;
                re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, buf);
              }

              else
              {
LABEL_295:
                memset(buf, 0, 36);
                *&buf[36] = 0x7FFFFFFFLL;
                v176 = *(v3 + 904);
                if (v176)
                {
                  v177 = 0;
                  v178 = *(v3 + 888);
                  while (1)
                  {
                    v179 = *v178;
                    v178 += 26;
                    if (v179 < 0)
                    {
                      break;
                    }

                    if (v176 == ++v177)
                    {
                      LODWORD(v177) = *(v3 + 904);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v177) = 0;
                }

                if (v177 != v176)
                {
                  v180 = *(v3 + 888);
                  v181 = *(v3 + 904);
                  do
                  {
                    v182 = v180 + 104 * v177;
                    v183 = *(v182 + 48);
                    if (v183)
                    {
                      v184 = v182 + 24;
                      v185 = *(v182 + 64);
                      v186 = &v185[v183];
                      do
                      {
                        v187 = *v185;
                        while (1)
                        {
                          v187 = *(v187 + 32);
                          if (!v187 || (*(v187 + 304) & 0x80) != 0)
                          {
                            break;
                          }

                          if (v166 == v187)
                          {
                            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(buf, (v184 + 48));
                            v181 = *(v3 + 904);
                            v180 = *(v3 + 888);
                            goto LABEL_311;
                          }
                        }

                        ++v185;
                      }

                      while (v185 != v186);
                    }

LABEL_311:
                    if (v181 <= v177 + 1)
                    {
                      v188 = v177 + 1;
                    }

                    else
                    {
                      v188 = v181;
                    }

                    while (v188 - 1 != v177)
                    {
                      LODWORD(v177) = v177 + 1;
                      if ((*(v180 + 104 * v177) & 0x80000000) != 0)
                      {
                        goto LABEL_318;
                      }
                    }

                    LODWORD(v177) = v188;
LABEL_318:
                    ;
                  }

                  while (v177 != v176);
                  v189 = *&buf[32];
                  if (*&buf[32])
                  {
                    v190 = 0;
                    v191 = *&buf[16];
                    v192 = 8;
                    while ((*(*&buf[16] + v192) & 0x80000000) == 0)
                    {
                      ++v190;
                      v192 += 24;
                      if (*&buf[32] == v190)
                      {
                        LODWORD(v190) = *&buf[32];
                        break;
                      }
                    }

                    if (*&buf[32] != v190)
                    {
                      do
                      {
                        v823[0].i64[0] = *(v191 + 24 * v190 + 16);
                        v823[0].i64[1] = v170;
                        re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, v823);
                        v191 = *&buf[16];
                        if (*&buf[32] <= (v190 + 1))
                        {
                          v193 = v190 + 1;
                        }

                        else
                        {
                          v193 = *&buf[32];
                        }

                        while (v193 - 1 != v190)
                        {
                          LODWORD(v190) = v190 + 1;
                          if ((*(*&buf[16] + 24 * v190 + 8) & 0x80000000) != 0)
                          {
                            goto LABEL_332;
                          }
                        }

                        LODWORD(v190) = v193;
LABEL_332:
                        ;
                      }

                      while (v190 != v189);
                    }
                  }
                }

                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
                LODWORD(v156) = v801;
              }
            }
          }

          else
          {
            v195 = *re::shadowLogObjects(0);
            if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "processClusterAABBUpdate";
              *&buf[12] = 1024;
              *&buf[14] = 861;
              _os_log_impl(&dword_1E1C61000, v195, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", buf, 0x12u);
            }
          }

          v194 = *(v3 + 1528);
          if (v194 <= v157 + 1)
          {
            v194 = v157 + 1;
          }

          while (v194 - 1 != v157)
          {
            LODWORD(v157) = v157 + 1;
            if ((*(*(v3 + 1512) + 24 * v157 + 8) & 0x80000000) != 0)
            {
              goto LABEL_341;
            }
          }

          LODWORD(v157) = v194;
LABEL_341:
          ;
        }

        while (v157 != v156);
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v3 + 1496);
      if (*(v3 + 1236))
      {
        re::StackScratchAllocator::StackScratchAllocator(buf);
        v823[2].i64[0] = 0;
        memset(&v823[0].u32[2], 0, 20);
        v823[0].i64[0] = buf;
        re::DynamicArray<float *>::setCapacity(v823, 0);
        ++v823[1].i32[2];
        v160 = *(v3 + 1240);
        if (v160)
        {
          v161 = 0;
          v162 = (*(v3 + 1224) + 8);
          while (1)
          {
            v163 = *v162;
            v162 += 6;
            if (v163 < 0)
            {
              break;
            }

            if (v160 == ++v161)
            {
              LODWORD(v161) = *(v3 + 1240);
              break;
            }
          }
        }

        else
        {
          LODWORD(v161) = 0;
        }

        while (v161 != v160)
        {
          *&v875[0] = *(*(v3 + 1224) + 24 * v161 + 16);
          v196 = re::ecs2::EntityComponentCollection::get((*&v875[0] + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v196)
          {
            v197 = *(v196 + 42);
            v198 = *(v196 + 41);
            (*(*v796 + 8))(to, v796, *&v875[0]);
            v199 = to[0] ? *&to[8] : 0;
            v200 = (*(*v796 + 24))(v796, v199);
            if (v198 != 1 || (v197 & 1) == 0)
            {
              v202 = v198 != 1 || (v197 & 2) == 0;
              if (v202 || v200 != 2)
              {
                re::DynamicArray<re::TransitionCondition *>::add(v823, v875);
              }
            }
          }

          v204 = *(v3 + 1240);
          if (v204 <= v161 + 1)
          {
            v204 = v161 + 1;
          }

          while (v204 - 1 != v161)
          {
            LODWORD(v161) = v161 + 1;
            if ((*(*(v3 + 1224) + 24 * v161 + 8) & 0x80000000) != 0)
            {
              goto LABEL_370;
            }
          }

          LODWORD(v161) = v204;
LABEL_370:
          ;
        }

        if (v823[1].i64[0])
        {
          v205 = v823[2].i64[0];
          v206 = 8 * v823[1].i64[0];
          do
          {
            v207 = *v205++;
            re::ecs2::MeshShadowSystem::processReceiverRemoval(v3, v207);
            v206 -= 8;
          }

          while (v206);
        }

        if (v823[0].i64[0] && v823[2].i64[0])
        {
          (*(*v823[0].i64[0] + 40))();
        }

        re::StackScratchAllocator::~StackScratchAllocator(buf);
      }

      v208 = *(v3 + 1240);
      if (v208)
      {
        v209 = 0;
        v210 = (*(v3 + 1224) + 8);
        while (1)
        {
          v211 = *v210;
          v210 += 6;
          if (v211 < 0)
          {
            break;
          }

          if (v208 == ++v209)
          {
            LODWORD(v209) = *(v3 + 1240);
            break;
          }
        }
      }

      else
      {
        LODWORD(v209) = 0;
      }

      while (v209 != v208)
      {
        v212 = *(*(v3 + 1224) + 24 * v209 + 16);
        if ((re::internal::shadows::g_enablePatchShadows & 1) == 0)
        {
          re::internal::shadows::setParamsOnMaterialParameterBlock(*(v212 + 312), v3 + 2176, *(*(v3 + 232) + 24));
        }

        re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_1::operator()(v796, v3, v212);
        v213 = *(v3 + 1240);
        if (v213 <= v209 + 1)
        {
          v213 = v209 + 1;
        }

        while (v213 - 1 != v209)
        {
          LODWORD(v209) = v209 + 1;
          if ((*(*(v3 + 1224) + 24 * v209 + 8) & 0x80000000) != 0)
          {
            goto LABEL_393;
          }
        }

        LODWORD(v209) = v213;
LABEL_393:
        ;
      }

      v214 = *(v3 + 1288);
      if (v214)
      {
        v215 = 0;
        v216 = (*(v3 + 1272) + 8);
        while (1)
        {
          v217 = *v216;
          v216 += 6;
          if (v217 < 0)
          {
            break;
          }

          if (v214 == ++v215)
          {
            v215 = *(v3 + 1288);
            break;
          }
        }
      }

      else
      {
        v215 = 0;
      }

      if (v215 == v214)
      {
LABEL_401:
        re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v3 + 1256);
        v218 = *(v3 + 1048);
        if (v218)
        {
          v219 = 0;
          v220 = *(v3 + 1032);
          while (1)
          {
            v221 = *v220;
            v220 += 10;
            if (v221 < 0)
            {
              break;
            }

            if (v218 == ++v219)
            {
              LODWORD(v219) = *(v3 + 1048);
              break;
            }
          }
        }

        else
        {
          LODWORD(v219) = 0;
        }

        while (v219 != v218)
        {
          v240 = *(v3 + 1032) + 40 * v219;
          if (!*(v240 + 24))
          {
            if (re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v3 + 1640, (v240 + 8)))
            {
              re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1640, (v240 + 8));
            }

            if (re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v3 + 1592, (v240 + 8)))
            {
              re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1592, (v240 + 8));
            }

            else
            {
              re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(v3 + 1688, (v240 + 8));
            }
          }

          v241 = *(v3 + 1048);
          if (v241 <= v219 + 1)
          {
            v241 = v219 + 1;
          }

          while (v241 - 1 != v219)
          {
            LODWORD(v219) = v219 + 1;
            if ((*(*(v3 + 1032) + 40 * v219) & 0x80000000) != 0)
            {
              goto LABEL_443;
            }
          }

          LODWORD(v219) = v241;
LABEL_443:
          ;
        }

        v242 = *(v3 + 1720);
        if (v242)
        {
          v243 = 0;
          v244 = (*(v3 + 1704) + 8);
          while (1)
          {
            v245 = *v244;
            v244 += 8;
            if (v245 < 0)
            {
              break;
            }

            if (v242 == ++v243)
            {
              LODWORD(v243) = *(v3 + 1720);
              break;
            }
          }
        }

        else
        {
          LODWORD(v243) = 0;
        }

        while (v243 != v242)
        {
          v246 = *(v3 + 1704) + 32 * v243;
          v247 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(buf, (v246 + 16));
          re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(buf, v3 + 1016, *(v246 + 16), *(v246 + 24), v247);
          v248 = *&buf[12];
          if (*&buf[12] != 0x7FFFFFFF)
          {
            v249 = *(v3 + 1032);
            v250 = (v249 + 40 * *&buf[12]);
            v251 = *v250 & 0x7FFFFFFF;
            if (*&buf[16] == 0x7FFFFFFF)
            {
              *(*(v3 + 1024) + 4 * *&buf[8]) = v251;
            }

            else
            {
              *(v249 + 40 * *&buf[16]) = *(v249 + 40 * *&buf[16]) & 0x80000000 | v251;
            }

            *v250 = *(v3 + 1052);
            *(v3 + 1052) = v248;
            --*(v3 + 1044);
            ++*(v3 + 1056);
          }

          v252 = *(v3 + 1720);
          if (v252 <= v243 + 1)
          {
            v252 = v243 + 1;
          }

          while (v252 - 1 != v243)
          {
            v243 = (v243 + 1);
            if ((*(*(v3 + 1704) + 32 * v243 + 8) & 0x80000000) != 0)
            {
              goto LABEL_463;
            }
          }

          LODWORD(v243) = v252;
LABEL_463:
          ;
        }

        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v3 + 1208);
        if ((*(v3 + 2048) & 1) == 0)
        {
          *(v3 + 1840) = 1065353216;
          *(v3 + 1844) = xmmword_1E3072DE0;
          *(v3 + 1860) = 3;
          *(v3 + 1864) = xmmword_1E3072DF0;
          *(v3 + 1880) = 0;
          *(v3 + 1882) = 1;
          *(v3 + 1888) = xmmword_1E3072E00;
          *(v3 + 1904) = 1061158912;
          *(v3 + 1908) = 1;
          *(v3 + 1912) = xmmword_1E3072E10;
          *(v3 + 1928) = xmmword_1E3072E20;
          *(v3 + 1944) = 0x3DCCCCCD41F00000;
          *(v3 + 1952) = 1097877340;
          *(v3 + 1956) = 1;
          *(v3 + 1968) = xmmword_1E30476B0;
          *(v3 + 1984) = 1;
          *(v3 + 2000) = 0x3F8000003F2D42C4;
          *(v3 + 2008) = 0x193F800000;
          *(v3 + 2016) = xmmword_1E3072E30;
          *(v3 + 2032) = 1056964608;
          *(v3 + 2040) = 0x40000000;
          *(v3 + 2044) = 256;
          *(v3 + 2048) = 1;
        }

        if ((*(v3 + 2112) & 1) == 0)
        {
          *(v3 + 2064) = 0u;
          *buf = 0u;
          *(v3 + 2080) = 0;
          *&buf[40] = 0;
          *&buf[16] = 0;
          *(v3 + 2088) = xmmword_1E3058120;
          *&buf[24] = xmmword_1E3058120;
          *(v3 + 2104) = 1;
          *(v3 + 2112) = 1;
          re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(buf);
        }

        LOBYTE(v875[0]) = 0;
        if (*(v3 + 1332) || *(v3 + 1380))
        {
          v254 = *(v3 + 1332);
          v255 = *(v3 + 1380);
          memset(v823, 0, 36);
          *(v823[2].i64 + 4) = 0x7FFFFFFFLL;
          buf[0] = 1;
          v859.i32[0] = 0;
          v256 = v823[0];
          *&buf[8] = v823[0].i64[0];
          *&buf[16] = *(v823 + 8);
          memset(v823, 0, 24);
          v257 = v823[1].i32[2];
          v258 = v823[1].i32[3];
          *&buf[32] = *(&v823[1] + 8);
          v259 = v823[2].i32[0];
          v260 = v823[2].i32[1];
          *(&v823[1] + 8) = xmmword_1E3058120;
          if (v875[0])
          {
            if (!*(&v875[0] + 1) || *(&v875[0] + 1) == v256.i64[0])
            {
              *&buf[8] = *(&v875[0] + 1);
              v261 = v875[1];
              v262 = v876;
              *(v875 + 8) = v256;
              *(&v875[1] + 1) = v823[1].i64[0];
              *&v876 = __PAIR64__(v258, v257);
              *(&v876 + 1) = __PAIR64__(v260, v259);
              *&buf[16] = v261;
              *&buf[32] = v262;
            }

            else if (v256.i64[0])
            {
              re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::copy(v875 + 8, &buf[8]);
              LODWORD(v877) = v877 + 1;
            }

            else
            {
              re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v875 + 8);
            }
          }

          else
          {
            LOBYTE(v875[0]) = 1;
            LODWORD(v877) = 0;
            *(v875 + 8) = v256;
            memset(&buf[8], 0, 24);
            *(&v875[1] + 1) = v823[1].i64[0];
            *&v876 = __PAIR64__(v258, v257);
            *(&v876 + 1) = __PAIR64__(v260, v259);
            *&buf[32] = xmmword_1E3058120;
          }

          if (buf[0] == 1)
          {
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(&buf[8]);
          }

          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v823);
          re::HashSet<re::SceneShadowClusterID,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::unionSet(v3 + 1304, v3 + 1352, v875 + 8);
        }

        v766 = *(v3 + 288);
        Current = CFAbsoluteTimeGetCurrent();
        v264 = (*(**(v3 + 40) + 32))(*(v3 + 40));
        v770 = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v264);
        v265 = (*(**(v3 + 40) + 32))(*(v3 + 40));
        v266 = re::ServiceLocator::serviceOrNull<re::ecs2::ShadowScopeService>(v265);
        v267 = (*(**(v3 + 40) + 32))(*(v3 + 40));
        v771 = re::ServiceLocator::serviceOrNull<re::ecs2::OcclusionService>(v267);
        v268 = *(v3 + 2096);
        if (v268)
        {
          v269 = 0;
          v270 = *(v3 + 2080);
          while ((*v270 & 0x80000000) == 0)
          {
            v270 += 98;
            if (v268 == ++v269)
            {
              LODWORD(v269) = *(v3 + 2096);
              break;
            }
          }
        }

        else
        {
          LODWORD(v269) = 0;
        }

        v763 = re::internal::shadows::g_enableWallShadowsBreakthrough;
        if (v269 != v268)
        {
          v271 = *(v3 + 2080);
          v215 = 0x7FFFFFFFLL;
          v272 = *(v3 + 2096);
          do
          {
            v273 = v271 + 392 * v269;
            if (*(v273 + 356))
            {
              v274 = v273 + 328;
              v275 = *(v273 + 352);
              if (v275)
              {
                memset_pattern16(*(v273 + 336), &unk_1E304C660, 4 * v275);
              }

              v276 = *(v274 + 32);
              if (v276)
              {
                v277 = *(v274 + 16);
                do
                {
                  if ((*v277 & 0x80000000) != 0)
                  {
                    *v277 &= ~0x80000000;
                  }

                  v277 += 10;
                  --v276;
                }

                while (v276);
              }

              *(v274 + 28) = 0;
              *(v274 + 32) = 0;
              v278 = *(v274 + 40) + 1;
              *(v274 + 36) = 0x7FFFFFFF;
              *(v274 + 40) = v278;
              v272 = *(v3 + 2096);
            }

            if (v272 <= v269 + 1)
            {
              v279 = v269 + 1;
            }

            else
            {
              v279 = v272;
            }

            while (v279 - 1 != v269)
            {
              LODWORD(v269) = v269 + 1;
              if ((*(v271 + 392 * v269) & 0x80000000) != 0)
              {
                goto LABEL_505;
              }
            }

            LODWORD(v269) = v279;
LABEL_505:
            ;
          }

          while (v269 != v268);
        }

        v779 = *(v3 + 904);
        if (v779)
        {
          v280 = 0;
          v281 = *(v3 + 888);
          while (1)
          {
            v282 = *v281;
            v281 += 26;
            if (v282 < 0)
            {
              break;
            }

            if (v779 == ++v280)
            {
              LODWORD(v280) = *(v3 + 904);
              break;
            }
          }
        }

        else
        {
          LODWORD(v280) = 0;
        }

        v283 = v771;
        v765 = (v3 + 2128);
        if (v280 != v779)
        {
          v284.i64[0] = 0x7F0000007FLL;
          v284.i64[1] = 0x7F0000007FLL;
          v769 = vnegq_f32(v284);
          __asm { FMOV            V13.2S, #1.0 }

          v794 = v266;
          do
          {
            v289 = *(v3 + 888) + 104 * v280;
            v292 = *(v289 + 24);
            v291 = (v289 + 24);
            v290 = v292;
            if (v292)
            {
              v293.n128_f64[0] = re::TransformService::worldMatrixForRendering(v766, v290, 1, to);
            }

            else
            {
              *to = xmmword_1E3047670;
              *&to[16] = xmmword_1E3047680;
              v293 = xmmword_1E30474D0;
              *&to[32] = xmmword_1E30476A0;
              v848 = xmmword_1E30474D0;
            }

            if (v770)
            {
              LODWORD(v294) = (*(*v770 + 24))(v770, *v291, v293);
              if (!v266)
              {
                goto LABEL_531;
              }
            }

            else
            {
              v294 = 1.0;
              if (!v266)
              {
                goto LABEL_531;
              }
            }

            v295 = (*(*v266 + 40))(v266, *v291);
            if (!v295)
            {
              goto LABEL_525;
            }

            v296 = re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v296)
            {
              v297 = *(v296 + 40);
              if (v297)
              {
                v294 = v294 * *(v295 + 28);
                LODWORD(v295) = (v297 >> *(v295 + 32)) & (*(v295 + 32) == 1);
LABEL_525:
                if (!v283)
                {
                  goto LABEL_532;
                }

                goto LABEL_526;
              }
            }

LABEL_531:
            LOBYTE(v295) = 0;
            if (!v283)
            {
LABEL_532:
              v298 = 0;
              v299 = 0.0;
              v300 = 0.0;
              goto LABEL_533;
            }

LABEL_526:
            (*(*v283 + 40))(buf, v283, *v291);
            v298 = buf[0];
            v299 = 0.0;
            v300 = 0.0;
            v301 = v294;
            if (buf[0] != 1)
            {
              goto LABEL_534;
            }

            re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(&buf[4]);
            v300 = v302;
            v299 = *&buf[28];
            if (!*&buf[24])
            {
              if ((v295 & (buf[33] == 2)) != 0)
              {
                v301 = 0.0;
              }

              else
              {
                v301 = v294;
              }

              goto LABEL_534;
            }

LABEL_533:
            v301 = v294;
LABEL_534:
            v303 = *(v3 + 2192);
            v304 = powf(v294, v303);
            v305 = powf(v301, v303);
            v306 = re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v306 && (*(v306 + 44) & 1) != 0 || re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
            {
              if (*(v3 + 2244) == 1)
              {
                v307 = vmulq_f32(*&to[16], vnegq_f32(*(v3 + 2256)));
                v305 = v305 * (1.0 / ((expf(-(*(v3 + 2240) * (v307.f32[2] + vaddv_f32(*v307.f32)))) * 30.03) + 1.0));
              }

              v774 = 1;
            }

            else
            {
              v774 = 0;
            }

            v308 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, v291 - 1);
            memset(buf, 0, 24);
            v309 = 0xBF58476D1CE4E5B9 * (*(v291 - 2) ^ (*(v291 - 2) >> 30));
            v803 = v291 - 2;
            re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v308 + 312, v291 - 2, (0x94D049BB133111EBLL * (v309 ^ (v309 >> 27))) ^ ((0x94D049BB133111EBLL * (v309 ^ (v309 >> 27))) >> 31), buf);
            if (*&buf[12] == 0x7FFFFFFF)
            {
              if (v298)
              {
                v310 = v299;
              }

              else
              {
                v310 = 0.05;
              }

              if (!v298)
              {
                v300 = 0.0;
              }

              v311 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData::ShadowClusterOpacity,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v308 + 312, *&buf[8], *buf);
              *(v311 + 8) = *v803;
              *(v311 + 16) = v305;
              *(v311 + 20) = v300;
              *(v311 + 24) = v310;
              ++*(v308 + 352);
            }

            v312 = re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v312)
            {
              v313 = *(v312 + 45);
            }

            else
            {
              v313 = 0;
            }

            v314 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(buf, v803);
            re::HashTable<re::SceneShadowClusterID,re::ecs2::MeshShadowSystem::LastUpdateData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(buf, v3 + 920, *(v291 - 2), *(v291 - 1), v314);
            v315 = *&buf[12];
            if (*&buf[12] == 0x7FFFFFFF)
            {
              v781 = 0;
              v316 = 1;
            }

            else
            {
              v781 = *(v3 + 936) + 48 * *&buf[12] + 24;
              v316 = *v781 + *(v3 + 2348) < Current;
            }

            if (LOBYTE(v875[0]) == 1)
            {
              v317 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(buf, v803);
              if (v876)
              {
                v318 = *(*&v875[1] + 4 * (v317 % v876));
                if (v318 != 0x7FFFFFFF)
                {
                  while (1)
                  {
                    v319 = *(&v875[1] + 1) + 32 * v318;
                    v321 = *(v319 + 16);
                    v320 = *(v319 + 24);
                    if (v321 == *v803 && v320 == *(v291 - 1))
                    {
                      break;
                    }

                    v318 = *(*(&v875[1] + 1) + 32 * v318 + 8) & 0x7FFFFFFF;
                    if (v318 == 0x7FFFFFFF)
                    {
                      goto LABEL_562;
                    }
                  }

LABEL_563:
                  v323 = 1;
                  goto LABEL_565;
                }
              }
            }

LABEL_562:
            if (*(v3 + 2168))
            {
              goto LABEL_563;
            }

            v323 = *(v291 + 64);
LABEL_565:
            v789 = v323;
            *&buf[32] = 0;
            memset(buf, 0, 28);
            v859 = v769;
            v324.i64[0] = 0x7F0000007FLL;
            v324.i64[1] = 0x7F0000007FLL;
            v860 = v324;
            v861 = v769;
            v862 = v324;
            v863 = 0u;
            v864 = 0u;
            v865 = 0u;
            v866 = 0u;
            *&v869 = _D13;
            v325 = *(v3 + 2256);
            v867 = 0u;
            v868 = v325;
            v326 = 0.0;
            DWORD2(v869) = 0;
            if (v315 != 0x7FFFFFFF)
            {
              v326 = *v781;
            }

            v797 = v291;
            if (((v316 | v323) & 1) == 0)
            {
              LOBYTE(v776) = 0;
              v772 = 0;
              v338 = 0;
              v786 = 0;
              goto LABEL_662;
            }

            if (v266 && (v327 = (*(*v266 + 40))(v266, *v291)) != 0 && (v328 = v327, (v329 = re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0) && (v330 = *(v329 + 40)) != 0 && (v331 = *(v328 + 32), ((v330 >> v331) & 1) != 0))
            {
              v332 = *(v328 + 16 * v331 + 48);
              v333 = vmulq_f32(v332, v332);
              v334 = v333.f32[2] + vaddv_f32(*v333.f32);
              if (fabsf(v334) >= 1.0e-10)
              {
                v335 = v334;
                v336 = vrsqrte_f32(LODWORD(v334));
                v337 = vmul_f32(v336, vrsqrts_f32(LODWORD(v335), vmul_f32(v336, v336)));
                v868 = vmulq_n_f32(v332, vmul_f32(v337, vrsqrts_f32(LODWORD(v335), vmul_f32(v337, v337))).f32[0]);
                LODWORD(v331) = *(v328 + 32);
              }

              v776 = v331 == 1;
              v772 = v776 & v763;
            }

            else
            {
              v776 = 0;
              v772 = 0;
            }

            v783 = v313;
            v339 = *(v3 + 1192);
            if (v339)
            {
              v340 = 0;
              v341 = *(v3 + 1176);
              while (1)
              {
                v342 = *v341;
                v341 += 16;
                if (v342 < 0)
                {
                  break;
                }

                if (v339 == ++v340)
                {
                  LODWORD(v340) = *(v3 + 1192);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v340) = 0;
            }

            v767 = v315;
            v343 = v215;
            if (v340 == v339)
            {
              v344 = 0;
              v345 = 0;
            }

            else
            {
              v345 = 0;
              v344 = 0;
              v346 = *(v3 + 1176);
              do
              {
                v347 = v346 + (v340 << 6);
                v348 = *(v347 + 8);
                v349 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v348 ^ (v348 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v348 ^ (v348 >> 30))) >> 27));
                re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v823, v3 + 1112, v348, v349 ^ (v349 >> 31));
                if (v823[0].i32[3] != 0x7FFFFFFF)
                {
                  v350 = *(v3 + 1128) + 40 * v823[0].u32[3];
                  v352 = *(v350 + 16);
                  v351 = v350 + 16;
                  if (v352 == v797[7] && *(v351 + 8) == v803[1])
                  {
                    if (v344)
                    {
                      v353 = *(v347 + 16);
                      v354 = *(v347 + 32);
                      v812 = v353;
                      v813 = v354;
                      if ((v345 & 1) == 0)
                      {
                        v345 = 1;
                      }

                      v810 = v353;
                      v811 = v354;
                      if (v343)
                      {
                        v343 = v343;
                      }

                      else
                      {
                        v343 = 1;
                      }
                    }

                    else
                    {
                      v355 = *(v347 + 32);
                      v812 = *(v347 + 16);
                      v813 = v355;
                      v810 = v812;
                      v811 = v355;
                      v345 = 1;
                      v343 = 1;
                      v344 = 1;
                    }

                    v868 = vnegq_f32(*(v347 + 16));
                  }
                }

                if (v339 <= v340 + 1)
                {
                  v356 = v340 + 1;
                }

                else
                {
                  v356 = v339;
                }

                while (v356 - 1 != v340)
                {
                  LODWORD(v340) = v340 + 1;
                  if ((*(v346 + (v340 << 6)) & 0x80000000) != 0)
                  {
                    goto LABEL_606;
                  }
                }

                LODWORD(v340) = v356;
LABEL_606:
                ;
              }

              while (v340 != v339);
              if (v344)
              {
                goto LABEL_628;
              }
            }

            v357 = v868.i64[1];
            v358 = v868.i64[0];
            v359 = (*(**(v3 + 248) + 104))(*(v3 + 248));
            v360 = v797;
            v361 = re::ecs2::EntityComponentCollection::getOrAdd((*v797 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v359)
            {
              v362 = *v797;
              do
              {
                v363 = v362;
                v362 = *(v362 + 32);
              }

              while (v362);
              (*(v359 + 16))(v359, *(v363 + 24), v361, v358, v357, v776);
              v360 = v797;
            }

            v364 = re::ecs2::EntityComponentCollection::get((*v360 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (!v364 || ((v789 | *(v364 + 24)) & 1) == 0)
            {
              v367 = 0;
              v366 = 0;
              goto LABEL_626;
            }

            if (*(v364 + 25) == 1)
            {
              v365 = *(v364 + 32);
              v815 = *(v364 + 48);
              *(v823 + 15) = v365;
              *(&v823[1] + 15) = v815;
              v366 = 1;
            }

            else
            {
              v366 = 0;
            }

            if (*(v364 + 64) == 1)
            {
              v368 = *(v364 + 80);
              v815 = *(v364 + 96);
              *&location[15] = v368;
              *&location[31] = v815;
              v764 = 1;
              if (!v366)
              {
                goto LABEL_623;
              }

LABEL_622:
              *&v820[7] = *(v823 + 15);
              v821 = *(&v823[1] + 15);
              goto LABEL_623;
            }

            v764 = 0;
            if (v366)
            {
              goto LABEL_622;
            }

LABEL_623:
            if (v764)
            {
              *&v817[7] = *&location[15];
              v818 = *&location[31];
            }

            v367 = 1;
LABEL_626:
            if (v367 == v344)
            {
              if ((v344 & 1) == 0)
              {
                v786 = 0;
                v283 = v771;
                v215 = v343;
                v291 = v797;
                v313 = v783;
                v315 = v767;
                goto LABEL_658;
              }

LABEL_628:
              LOBYTE(v366) = v345;
              v283 = v771;
              v215 = v343;
              v291 = v797;
              if (v215)
              {
                goto LABEL_637;
              }

              goto LABEL_635;
            }

            if (v366)
            {
              v812 = *&v820[7];
              v813 = v821;
            }

            v283 = v771;
            v291 = v797;
            if (v764)
            {
              v810 = *&v817[7];
              v811 = v818;
            }

            v215 = v764;
            if (v764)
            {
              goto LABEL_637;
            }

LABEL_635:
            if (v366)
            {
              v810 = v812;
              v811 = v813;
              v215 = 1;
LABEL_637:
              v786 = 1;
              goto LABEL_639;
            }

            v786 = 0;
LABEL_639:
            v369 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, v803 + 1);
            memset(v823, 0, 24);
            v370 = 0xBF58476D1CE4E5B9 * (*v803 ^ (*v803 >> 30));
            re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v823, v369 + 168, *v803, (0x94D049BB133111EBLL * (v370 ^ (v370 >> 27))) ^ ((0x94D049BB133111EBLL * (v370 ^ (v370 >> 27))) >> 31));
            v371 = v823[0].u32[3];
            if (v823[0].i32[3] == 0x7FFFFFFF)
            {
              v372 = re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v369 + 168, v823[0].u32[2], v823[0].u64[0]);
              *(v372 + 8) = *v803;
              *(v372 + 16) = v366;
              if (v366)
              {
                v373 = v813;
                *(v372 + 32) = v812;
                *(v372 + 48) = v373;
              }

              *(v372 + 64) = v215;
              v315 = v767;
              if (v215)
              {
                v374 = v811;
                *(v372 + 80) = v810;
                *(v372 + 96) = v374;
              }

              ++*(v369 + 208);
              v313 = v783;
              goto LABEL_658;
            }

            ++*(v369 + 208);
            v375 = *(v369 + 184) + (v371 << 7);
            v377 = *(v375 + 16);
            v376 = v375 + 16;
            if (v377)
            {
              v315 = v767;
              if ((v366 & 1) == 0)
              {
                *v376 = 0;
                goto LABEL_651;
              }
            }

            else
            {
              v315 = v767;
              if ((v366 & 1) == 0)
              {
                goto LABEL_651;
              }

              *v376 = 1;
            }

            v378 = v813;
            *(v376 + 16) = v812;
            *(v376 + 32) = v378;
LABEL_651:
            if (*(v376 + 48))
            {
              v313 = v783;
              if (v215)
              {
                goto LABEL_656;
              }

              *(v376 + 48) = 0;
            }

            else
            {
              v313 = v783;
              if (v215)
              {
                *(v376 + 48) = 1;
LABEL_656:
                v379 = v811;
                *(v376 + 64) = v810;
                *(v376 + 80) = v379;
              }
            }

LABEL_658:
            v338 = v315 == 0x7FFFFFFF || *(v781 + 9) != v786;
            v326 = Current;
LABEL_662:
            v380 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v3 + 1064, v803 + 1);
            if (v380)
            {
              v784 = *v380 != 0;
            }

            else
            {
              v784 = 0;
            }

            if (v315 == 0x7FFFFFFF)
            {
              v381 = 0;
              v382 = v784;
            }

            else
            {
              v382 = v784;
              v381 = *(v781 + 8) != v784;
            }

            if ((v338 | v789 | v381))
            {
              if (*(v3 + 328))
              {
                v790 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v3 + 320));
              }

              else
              {
                v790 = 0;
              }

              v383 = 1.0 / v304;
              if (v304 < 0.0001)
              {
                v383 = 1.0;
              }

              *&v869 = __PAIR64__(LODWORD(v305), LODWORD(v383));
              BYTE8(v869) = v313 & 1;
              BYTE11(v869) = (v774 | v313) & 1;
              BYTE9(v869) = v772;
              BYTE10(v869) = v776;
              *&v870 = v326;
              v864 = *to;
              v865 = *&to[16];
              v866 = *&to[32];
              v867 = v848;
              v823[2].i64[0] = 0;
              memset(v823, 0, 28);
              v384 = v291[3];
              v768 = v215;
              if (v384 && (re::DynamicArray<re::RigNodeConstraint>::setCapacity(v823, v384), (v385 = v291[3]) != 0))
              {
                v386 = 0;
                v387 = v291[5];
                v388 = 8 * v385;
                do
                {
                  v389 = *v387;
                  v390 = *(*v387 + 240);
                  if (v390)
                  {
                    if (v266)
                    {
                      v391 = (*(*v266 + 40))(v266, *v387);
                      if (v391)
                      {
                        LODWORD(v266) = *(v391 + 32);
                      }

                      else
                      {
                        LOBYTE(v266) = 0;
                      }
                    }

                    v392 = *(v389 + 312);
                    v393 = re::ecs2::EntityComponentCollection::get((v389 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                    v394 = re::ecs2::EntityComponentCollection::get((v389 + 48), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                    if (v393)
                    {
                      if (*(v393 + 27) == 1)
                      {
                        v395 = *(v393 + 40);
                        _ZF = v395 == 0;
                        v396 = v395 & (1 << v266);
                        v398 = _ZF || v396 != 0;
                      }

                      else
                      {
                        v398 = 0;
                      }

                      v266 = v794;
                      v386 = v398 | v386 & 1;
                      v399 = *(v393 + 36) == 1;
                    }

                    else
                    {
                      v399 = 0;
                      if (v394)
                      {
                        v386 = (v394[25] | v386 & 1) != 0;
                      }

                      v266 = v794;
                    }

                    v400 = *(v390 + 76) == 1 && *(v390 + 64) != 0;
                    v401 = v823[1].i64[0];
                    if (v823[1].i64[0] >= v823[0].i64[1])
                    {
                      v402 = v823[1].i64[0] + 1;
                      if (v823[0].i64[1] < (v823[1].i64[0] + 1))
                      {
                        if (v823[0].i64[0])
                        {
                          v403 = 2 * v823[0].i64[1];
                          if (!v823[0].i64[1])
                          {
                            v403 = 8;
                          }

                          if (v403 <= v402)
                          {
                            v404 = v823[1].i64[0] + 1;
                          }

                          else
                          {
                            v404 = v403;
                          }

                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v823, v404);
                        }

                        else
                        {
                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v823, v402);
                          ++v823[1].i32[2];
                        }
                      }

                      v401 = v823[1].i64[0];
                    }

                    v405 = v823[2].i64[0] + 16 * v401;
                    *v405 = v392;
                    *(v405 + 8) = v399;
                    *(v405 + 9) = v400;
                    v823[1].i64[0] = v401 + 1;
                    ++v823[1].i32[2];
                  }

                  ++v387;
                  v388 -= 8;
                }

                while (v388);
              }

              else
              {
                v386 = 0;
              }

              re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(buf, v823);
              if (v823[0].i64[0] && v823[2].i64[0])
              {
                (*(*v823[0].i64[0] + 40))();
              }

              *location = xmmword_1E30476B0;
              re::internal::shadows::generateAABBsForCluster(v797, location, &v864, v790, v823);
              v861 = v823[2];
              v862 = v824;
              v863 = v825;
              v859 = v823[0];
              v860 = v823[1];
              v382 = v784;
              if (re::internal::shadows::g_enableShadowFlattening == 1)
              {
                v406 = re::ecs2::EntityComponentCollection::getOrAdd((*v797 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                re::AABB::transform(&v859, &v864, v823);
                v407 = v823[1];
                *(v406 + 32) = v823[0];
                *(v406 + 48) = v407;
              }

              v408 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, v803 + 1);
              v409 = v408;
              if (((v786 | v784) & v386) != 0)
              {
                memset(v823, 0, 24);
                v410 = 0xBF58476D1CE4E5B9 * (*v803 ^ (*v803 >> 30));
                re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v823, v408 + 120, *v803, (0x94D049BB133111EBLL * (v410 ^ (v410 >> 27))) ^ ((0x94D049BB133111EBLL * (v410 ^ (v410 >> 27))) >> 31));
                v411 = v823[0].u32[3];
                v283 = v771;
                v215 = v768;
                if (v823[0].i32[3] == 0x7FFFFFFF)
                {
                  v412 = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v409 + 120, v823[0].u32[2], v823[0].u64[0]);
                  *(v412 + 8) = *v803;
                  re::DynamicArray<re::MeshShadowCasterInfo>::DynamicArray(v412 + 16, buf);
                  *(v412 + 192) = v867;
                  *(v412 + 208) = v868;
                  *(v412 + 224) = v869;
                  *(v412 + 240) = v870;
                  *(v412 + 128) = v863;
                  *(v412 + 144) = v864;
                  *(v412 + 160) = v865;
                  *(v412 + 176) = v866;
                  *(v412 + 64) = v859;
                  *(v412 + 80) = v860;
                  *(v412 + 96) = v861;
                  *(v412 + 112) = v862;
                  ++*(v409 + 160);
                }

                else
                {
                  ++*(v409 + 160);
                  v413 = *(v409 + 136) + 272 * v411 + 16;
                  if (v413 != buf)
                  {
                    if (*v413)
                    {
                      if (*buf)
                      {
                        re::DynamicArray<re::RigNodeChannel>::copy(v413, buf);
                      }

                      else
                      {
                        *(v413 + 16) = 0;
                      }

                      ++*(v413 + 24);
                    }

                    else if (*buf)
                    {
                      v414 = *&buf[16];
                      *v413 = *buf;
                      re::DynamicArray<re::RigNodeConstraint>::setCapacity(v413, v414);
                      ++*(v413 + 24);
                      re::DynamicArray<re::RigNodeChannel>::copy(v413, buf);
                    }
                  }

                  v415 = v859;
                  v416 = v860;
                  v417 = v862;
                  *(v413 + 80) = v861;
                  *(v413 + 96) = v417;
                  *(v413 + 48) = v415;
                  *(v413 + 64) = v416;
                  v418 = v863;
                  v419 = v864;
                  v420 = v866;
                  *(v413 + 144) = v865;
                  *(v413 + 160) = v420;
                  *(v413 + 112) = v418;
                  *(v413 + 128) = v419;
                  v421 = v867;
                  v422 = v868;
                  v423 = v869;
                  *(v413 + 224) = v870;
                  *(v413 + 192) = v422;
                  *(v413 + 208) = v423;
                  *(v413 + 176) = v421;
                }
              }

              else
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v408 + 216, v803);
                v283 = v771;
                v215 = v768;
              }
            }

            memset(v823, 0, 24);
            v424 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(location, v803);
            re::HashTable<re::SceneShadowClusterID,re::ecs2::MeshShadowSystem::LastUpdateData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v823, v3 + 920, *v803, v803[1], v424);
            if (v823[0].i32[3] == 0x7FFFFFFF)
            {
              v425 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::allocEntry(v3 + 920, v823[0].u32[2], v823[0].u64[0]);
              *(v425 + 8) = *v803;
              *(v425 + 24) = v326;
              *(v425 + 32) = v382;
              *(v425 + 33) = v786;
              v426 = *(v3 + 960);
            }

            else
            {
              v426 = *(v3 + 960);
              v427 = *(v3 + 936) + 48 * v823[0].u32[3];
              *(v427 + 24) = v326;
              *(v427 + 32) = v382;
              *(v427 + 33) = v786;
            }

            *(v3 + 960) = v426 + 1;
            if (*buf && *&buf[32])
            {
              (*(**buf + 40))();
            }

            v428 = *(v3 + 904);
            if (v428 <= v280 + 1)
            {
              v428 = v280 + 1;
            }

            while (v428 - 1 != v280)
            {
              LODWORD(v280) = v280 + 1;
              if ((*(*(v3 + 888) + 104 * v280) & 0x80000000) != 0)
              {
                goto LABEL_743;
              }
            }

            LODWORD(v280) = v428;
LABEL_743:
            ;
          }

          while (v280 != v779);
        }

        v429 = *(v3 + 1624);
        if (v429)
        {
          v430 = 0;
          v431 = (*(v3 + 1608) + 8);
          while (1)
          {
            v432 = *v431;
            v431 += 8;
            if (v432 < 0)
            {
              break;
            }

            if (v429 == ++v430)
            {
              LODWORD(v430) = *(v3 + 1624);
              break;
            }
          }
        }

        else
        {
          LODWORD(v430) = 0;
        }

LABEL_757:
        while (v430 != v429)
        {
          v433 = *(v3 + 1608) + 32 * v430;
          v434 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, (v433 + 24));
          re::DynamicArray<re::TransitionCondition *>::add(v434, (v433 + 16));
          re::DynamicArray<unsigned long long>::remove((v434 + 5), (v433 + 16));
          re::DynamicArray<unsigned long long>::remove((v434 + 10), (v433 + 16));
          v435 = *(v3 + 1624);
          if (v435 <= v430 + 1)
          {
            v435 = v430 + 1;
          }

          while (v435 - 1 != v430)
          {
            v430 = (v430 + 1);
            if ((*(*(v3 + 1608) + 32 * v430 + 8) & 0x80000000) != 0)
            {
              goto LABEL_757;
            }
          }

          LODWORD(v430) = v435;
        }

        v436 = (*(**(v3 + 248) + 40))(*(v3 + 248));
        if (*(v3 + 1428) | *(v436 + 21))
        {
          v437 = v436;
          v438 = *(v3 + 1428);
          v439 = *(v437 + 21);
          memset(buf, 0, 36);
          *&buf[36] = 0x7FFFFFFFLL;
          re::HashSet<re::SceneShadowClusterID,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::unionSet(v3 + 1400, v437 + 56, buf);
          re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v437 + 56);
          v440 = *&buf[32];
          if (*&buf[32])
          {
            v441 = 0;
            v442 = (*&buf[16] + 8);
            while (1)
            {
              v443 = *v442;
              v442 += 8;
              if (v443 < 0)
              {
                break;
              }

              if (*&buf[32] == ++v441)
              {
                LODWORD(v441) = *&buf[32];
                break;
              }
            }
          }

          else
          {
            LODWORD(v441) = 0;
          }

          if (v441 != *&buf[32])
          {
            v444 = *&buf[16];
            do
            {
              v445 = (v444 + 32 * v441 + 16);
              if (LOBYTE(v875[0]) != 1 || !re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v875 + 8, v445))
              {
                v446 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v823, v445);
                re::HashTable<re::SceneShadowClusterID,re::ecs2::MeshShadowSystem::LastUpdateData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v823, v3 + 920, *v445, v445[1], v446);
                v447 = v823[0].i32[3];
                if (v823[0].i32[3] != 0x7FFFFFFF)
                {
                  v448 = *(v3 + 936);
                  v449 = (v448 + 48 * v823[0].u32[3]);
                  v450 = *v449 & 0x7FFFFFFF;
                  if (v823[1].i32[0] == 0x7FFFFFFF)
                  {
                    *(*(v3 + 928) + 4 * v823[0].u32[2]) = v450;
                  }

                  else
                  {
                    *(v448 + 48 * v823[1].u32[0]) = *(v448 + 48 * v823[1].u32[0]) & 0x80000000 | v450;
                  }

                  *v449 = *(v3 + 956);
                  *(v3 + 956) = v447;
                  --*(v3 + 948);
                  ++*(v3 + 960);
                }

                v451 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, v445 + 1);
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v451 + 216, v445);
                v452 = 0xBF58476D1CE4E5B9 * (*v445 ^ (*v445 >> 30));
                re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v823, v451 + 120, *v445, (0x94D049BB133111EBLL * (v452 ^ (v452 >> 27))) ^ ((0x94D049BB133111EBLL * (v452 ^ (v452 >> 27))) >> 31));
                v453 = v823[0].u32[3];
                if (v823[0].i32[3] != 0x7FFFFFFF)
                {
                  v454 = *(v451 + 136);
                  v455 = (v454 + 272 * v823[0].u32[3]);
                  v456 = *v455 & 0x7FFFFFFF;
                  if (v823[1].i32[0] == 0x7FFFFFFF)
                  {
                    *(*(v451 + 128) + 4 * v823[0].u32[2]) = v456;
                  }

                  else
                  {
                    *(v454 + 272 * v823[1].u32[0]) = *(v454 + 272 * v823[1].u32[0]) & 0x80000000 | v456;
                  }

                  v457 = *v455;
                  if (*v455 < 0)
                  {
                    *v455 = v457 & 0x7FFFFFFF;
                    re::DynamicArray<unsigned long>::deinit((v455 + 4));
                    v454 = *(v451 + 136);
                    v457 = *(v454 + 272 * v453);
                  }

                  *(v454 + 272 * v453) = *(v451 + 156) | v457 & 0x80000000;
                  --*(v451 + 148);
                  v458 = *(v451 + 160) + 1;
                  *(v451 + 156) = v453;
                  *(v451 + 160) = v458;
                }

                v459 = 0xBF58476D1CE4E5B9 * (*v445 ^ (*v445 >> 30));
                re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v823, v451 + 168, *v445, (0x94D049BB133111EBLL * (v459 ^ (v459 >> 27))) ^ ((0x94D049BB133111EBLL * (v459 ^ (v459 >> 27))) >> 31));
                v460 = v823[0].i32[3];
                if (v823[0].i32[3] != 0x7FFFFFFF)
                {
                  v461 = *(v451 + 184);
                  v462 = (v461 + (v823[0].u32[3] << 7));
                  v463 = *v462 & 0x7FFFFFFF;
                  if (v823[1].i32[0] == 0x7FFFFFFF)
                  {
                    *(*(v451 + 176) + 4 * v823[0].u32[2]) = v463;
                  }

                  else
                  {
                    *(v461 + (v823[1].u32[0] << 7)) = *(v461 + (v823[1].u32[0] << 7)) & 0x80000000 | v463;
                  }

                  *v462 = *(v451 + 204);
                  --*(v451 + 196);
                  v464 = *(v451 + 208) + 1;
                  *(v451 + 204) = v460;
                  *(v451 + 208) = v464;
                }

                v465 = 0xBF58476D1CE4E5B9 * (*v445 ^ (*v445 >> 30));
                re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v451 + 312, v445, (0x94D049BB133111EBLL * (v465 ^ (v465 >> 27))) ^ ((0x94D049BB133111EBLL * (v465 ^ (v465 >> 27))) >> 31), v823);
                v466 = v823[0].u32[3];
                if (v823[0].i32[3] != 0x7FFFFFFF)
                {
                  v467 = *(v451 + 328);
                  v468 = *(v467 + 40 * v823[0].u32[3]) & 0x7FFFFFFF;
                  if (v823[1].i32[0] == 0x7FFFFFFF)
                  {
                    *(*(v451 + 320) + 4 * v823[0].u32[2]) = v468;
                    v466 = v823[0].u32[3];
                  }

                  else
                  {
                    *(v467 + 40 * v823[1].u32[0]) = *(v467 + 40 * v823[1].u32[0]) & 0x80000000 | v468;
                  }

                  *(v467 + 40 * v466) = *(v451 + 348);
                  *(v451 + 348) = v466;
                  --*(v451 + 340);
                  ++*(v451 + 352);
                }
              }

              v444 = *&buf[16];
              if (*&buf[32] <= (v441 + 1))
              {
                v469 = v441 + 1;
              }

              else
              {
                v469 = *&buf[32];
              }

              while (v469 - 1 != v441)
              {
                v441 = (v441 + 1);
                if ((*(*&buf[16] + 32 * v441 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_799;
                }
              }

              LODWORD(v441) = v469;
LABEL_799:
              ;
            }

            while (v441 != v440);
          }

          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(buf);
        }

        v470 = *(v3 + 1720);
        if (v470)
        {
          v471 = 0;
          v472 = (*(v3 + 1704) + 8);
          while (1)
          {
            v473 = *v472;
            v472 += 8;
            if (v473 < 0)
            {
              break;
            }

            if (v470 == ++v471)
            {
              LODWORD(v471) = *(v3 + 1720);
              break;
            }
          }
        }

        else
        {
          LODWORD(v471) = 0;
        }

LABEL_814:
        while (v471 != v470)
        {
          v474 = *(v3 + 1704) + 32 * v471;
          v475 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, (v474 + 24));
          re::DynamicArray<re::TransitionCondition *>::add((v475 + 80), (v474 + 16));
          re::DynamicArray<unsigned long long>::remove(v475 + 40, (v474 + 16));
          re::DynamicArray<unsigned long long>::remove(v475, (v474 + 16));
          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v475 + 264, (v474 + 16));
          v476 = *(v3 + 1720);
          if (v476 <= v471 + 1)
          {
            v476 = v471 + 1;
          }

          while (v476 - 1 != v471)
          {
            v471 = (v471 + 1);
            if ((*(*(v3 + 1704) + 32 * v471 + 8) & 0x80000000) != 0)
            {
              goto LABEL_814;
            }
          }

          LODWORD(v471) = v476;
        }

        v477 = *(v3 + 1672);
        if (v477)
        {
          v478 = 0;
          v479 = (*(v3 + 1656) + 8);
          while (1)
          {
            v480 = *v479;
            v479 += 8;
            if (v480 < 0)
            {
              break;
            }

            if (v477 == ++v478)
            {
              LODWORD(v478) = *(v3 + 1672);
              break;
            }
          }
        }

        else
        {
          LODWORD(v478) = 0;
        }

LABEL_843:
        while (v478 != v477)
        {
          v481 = *(v3 + 1656) + 32 * v478;
          v482 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, (v481 + 24));
          v483 = v482[2];
          if (v483)
          {
            v484 = 8 * v483;
            v485 = v482[4];
            while (*v485 != *(v481 + 16))
            {
              ++v485;
              v484 -= 8;
              if (!v484)
              {
                goto LABEL_829;
              }
            }
          }

          else
          {
            v485 = v482[4];
          }

          if (v485 == (v482[4] + 8 * v483))
          {
LABEL_829:
            v486 = v482[12];
            if (v486)
            {
              v487 = 8 * v486;
              v488 = v482[14];
              while (*v488 != *(v481 + 16))
              {
                ++v488;
                v487 -= 8;
                if (!v487)
                {
                  goto LABEL_836;
                }
              }
            }

            else
            {
              v488 = v482[14];
            }

            if (v488 == (v482[14] + 8 * v486))
            {
LABEL_836:
              re::DynamicArray<re::TransitionCondition *>::add(v482 + 5, (v481 + 16));
            }
          }

          v489 = *(v3 + 1672);
          if (v489 <= v478 + 1)
          {
            v489 = v478 + 1;
          }

          while (v489 - 1 != v478)
          {
            v478 = (v478 + 1);
            if ((*(*(v3 + 1656) + 32 * v478 + 8) & 0x80000000) != 0)
            {
              goto LABEL_843;
            }
          }

          LODWORD(v478) = v489;
        }

        v490 = *(v3 + 2096);
        if (v490)
        {
          v491 = 0;
          v492 = *(v3 + 2080);
          while ((*v492 & 0x80000000) == 0)
          {
            v492 += 98;
            if (v490 == ++v491)
            {
              LODWORD(v491) = *(v3 + 2096);
              break;
            }
          }
        }

        else
        {
          LODWORD(v491) = 0;
        }

        if (v491 != v490)
        {
          v493 = *(v3 + 2096);
          do
          {
            v494 = *(v3 + 2080) + 392 * v491;
            if (*(v494 + 308))
            {
              v495 = v494 + 280;
              v496 = *(v494 + 304);
              if (v496)
              {
                memset_pattern16(*(v494 + 288), &unk_1E304C660, 4 * v496);
              }

              v497 = *(v495 + 32);
              if (v497)
              {
                v498 = 0;
                for (j = 0; j < v497; ++j)
                {
                  v500 = *(v495 + 16);
                  v501 = *(v500 + v498);
                  if (v501 < 0)
                  {
                    *(v500 + v498) = v501 & 0x7FFFFFFF;
                    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v500 + v498 + 16));
                    v497 = *(v495 + 32);
                  }

                  v498 += 72;
                }
              }

              *(v495 + 28) = 0;
              *(v495 + 32) = 0;
              v502 = *(v495 + 40) + 1;
              *(v495 + 36) = 0x7FFFFFFF;
              *(v495 + 40) = v502;
              v493 = *(v3 + 2096);
            }

            if (v493 <= v491 + 1)
            {
              v503 = v491 + 1;
            }

            else
            {
              v503 = v493;
            }

            while (v503 - 1 != v491)
            {
              LODWORD(v491) = v491 + 1;
              if ((*(*(v3 + 2080) + 392 * v491) & 0x80000000) != 0)
              {
                goto LABEL_868;
              }
            }

            LODWORD(v491) = v503;
LABEL_868:
            ;
          }

          while (v491 != v490);
        }

        v504 = *(v3 + 1144);
        if (v504)
        {
          v505 = 0;
          v506 = *(v3 + 1128);
          while (1)
          {
            v507 = *v506;
            v506 += 10;
            if (v507 < 0)
            {
              break;
            }

            if (v504 == ++v505)
            {
              LODWORD(v505) = *(v3 + 1144);
              break;
            }
          }
        }

        else
        {
          LODWORD(v505) = 0;
        }

        while (v505 != v504)
        {
          v508 = *(v3 + 1128);
          v509 = v508 + 40 * v505;
          v511 = *(v509 + 8);
          v510 = (v509 + 8);
          v512 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v511 ^ (v511 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v511 ^ (v511 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v3 + 1160, v511, v512 ^ (v512 >> 31));
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v513 = v508 + 40 * v505;
            v514 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, (v513 + 24));
            memset(buf, 0, sizeof(buf));
            *&buf[36] = 0x7FFFFFFF;
            memset(v823, 0, 24);
            v516 = *(v513 + 16);
            v515 = (v513 + 16);
            v517 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v516 ^ (v516 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v516 ^ (v516 >> 30))) >> 27));
            re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v514 + 264, v515, v517 ^ (v517 >> 31), v823);
            if (v823[0].i32[3] == 0x7FFFFFFF)
            {
              v518 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v514 + 264, v823[0].u32[2], v823[0].u64[0]);
              *(v518 + 8) = *v515;
              *(v518 + 56) = 0;
              *(v518 + 16) = *buf;
              *buf = 0;
              *&buf[8] = 0;
              *(v518 + 32) = *&buf[16];
              *&buf[16] = 0;
              *(v518 + 40) = *&buf[24];
              *&buf[24] = xmmword_1E3058120;
              ++*(v514 + 304);
            }

            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
            v519 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v514 + 264, v515);
            v520 = v519;
            v521 = 0xBF58476D1CE4E5B9 * (*v510 ^ (*v510 >> 30));
            v522 = (0x94D049BB133111EBLL * (v521 ^ (v521 >> 27))) ^ ((0x94D049BB133111EBLL * (v521 ^ (v521 >> 27))) >> 31);
            v523 = *(v519 + 24);
            if (v523)
            {
              v524 = v522 % v523;
              v525 = *(*(v519 + 8) + 4 * (v522 % v523));
              if (v525 != 0x7FFFFFFF)
              {
                v526 = *(v519 + 16);
                while (*(v526 + 24 * v525 + 16) != *v510)
                {
                  LODWORD(v525) = *(v526 + 24 * v525 + 8) & 0x7FFFFFFF;
                  if (v525 == 0x7FFFFFFF)
                  {
                    goto LABEL_886;
                  }
                }

                goto LABEL_887;
              }
            }

            else
            {
              LODWORD(v524) = 0;
            }

LABEL_886:
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(v519, v524, v522, v510, v510);
            ++*(v520 + 40);
          }

LABEL_887:
          v527 = *(v3 + 1144);
          if (v527 <= v505 + 1)
          {
            v527 = v505 + 1;
          }

          while (v527 - 1 != v505)
          {
            LODWORD(v505) = v505 + 1;
            if ((*(*(v3 + 1128) + 40 * v505) & 0x80000000) != 0)
            {
              goto LABEL_893;
            }
          }

          LODWORD(v505) = v527;
LABEL_893:
          ;
        }

        v777 = (v3 + 1840);
        if ((*(v3 + 2352) & 1) != 0 && *(v3 + 2112) == 1)
        {
          v787 = *(v3 + 2096);
          if (v787)
          {
            v528 = 0;
            v529 = *(v3 + 2080);
            while ((*v529 & 0x80000000) == 0)
            {
              v529 += 98;
              if (v787 == ++v528)
              {
                LODWORD(v528) = *(v3 + 2096);
                break;
              }
            }
          }

          else
          {
            LODWORD(v528) = 0;
          }

          while (v528 != v787)
          {
            v530 = *(v3 + 2080) + 392 * v528;
            v795 = *(v530 + 260);
            v804 = *(v530 + 32);
            v791 = *(v530 + 112);
            if (*(v530 + 164) == *(v3 + 1764))
            {
              v531 = *(v530 + 168);
              if (v531)
              {
                v532 = 0;
                v533 = *(v530 + 152);
                while ((*v533 & 0x80000000) == 0)
                {
                  v533 += 68;
                  if (v531 == ++v532)
                  {
                    LODWORD(v532) = *(v530 + 168);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v532) = 0;
              }

              if (v532 == v531)
              {
                v534 = 0;
              }

              else
              {
                do
                {
                  v535 = *(v530 + 8);
                  *buf = *(*(v530 + 152) + 272 * v532 + 8);
                  *&buf[8] = v535;
                  v536 = re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v3 + 1736, buf);
                  if (!v536)
                  {
                    break;
                  }

                  v537 = *(v530 + 168);
                  if (v537 <= v532 + 1)
                  {
                    v537 = v532 + 1;
                  }

                  while (v537 - 1 != v532)
                  {
                    LODWORD(v532) = v532 + 1;
                    if ((*(*(v530 + 152) + 272 * v532) & 0x80000000) != 0)
                    {
                      goto LABEL_920;
                    }
                  }

                  LODWORD(v532) = v537;
LABEL_920:
                  ;
                }

                while (v532 != v531);
                v534 = !v536;
              }
            }

            else
            {
              v534 = 1;
            }

            re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1736);
            v538 = *(v530 + 168);
            if (v538)
            {
              v539 = 0;
              v540 = *(v530 + 152);
              while ((*v540 & 0x80000000) == 0)
              {
                v540 += 68;
                if (v538 == ++v539)
                {
                  LODWORD(v539) = *(v530 + 168);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v539) = 0;
            }

LABEL_934:
            while (v539 != v538)
            {
              v541 = *(v530 + 8);
              *buf = *(*(v530 + 152) + 272 * v539 + 8);
              *&buf[8] = v541;
              re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1736, buf);
              v542 = *(v530 + 168);
              if (v542 <= v539 + 1)
              {
                v542 = v539 + 1;
              }

              while (v542 - 1 != v539)
              {
                LODWORD(v539) = v539 + 1;
                if ((*(*(v530 + 152) + 272 * v539) & 0x80000000) != 0)
                {
                  goto LABEL_934;
                }
              }

              LODWORD(v539) = v542;
            }

            v543 = *(v530 + 72);
            if (v543 == *(v3 + 1812))
            {
              if (!v543)
              {
                v798 = 0;
                goto LABEL_943;
              }

              v544 = *(v530 + 88);
              v545 = 8 * v543 - 8;
              do
              {
                v546 = *v544++;
                v547 = *(v530 + 8);
                *buf = v546;
                *&buf[8] = v547;
                v548 = re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v3 + 1784, buf);
                if (!v548)
                {
                  break;
                }

                v549 = v545;
                v545 -= 8;
              }

              while (v549);
              v550 = !v548;
            }

            else
            {
              v550 = 1;
            }

            v798 = v550;
LABEL_943:
            re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1784);
            v552 = *(v530 + 72);
            if (v552)
            {
              v553 = *(v530 + 88);
              v554 = 8 * v552;
              do
              {
                v555 = *v553++;
                v556 = *(v530 + 8);
                *buf = v555;
                *&buf[8] = v556;
                v551 = re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(v3 + 1784, buf);
                v554 -= 8;
              }

              while (v554);
            }

            if (v795)
            {
              v557 = 1;
            }

            else
            {
              v557 = v534;
            }

            if (v804)
            {
              v557 = 1;
            }

            if (((v557 | v798) & 1) != 0 || v791)
            {
              v558 = *re::shadowLogObjects(v551);
              v559 = os_log_type_enabled(v558, OS_LOG_TYPE_DEFAULT);
              if (v559)
              {
                v560 = *(v3 + 2336);
                v561 = *(v530 + 8);
                *buf = 134218240;
                *&buf[4] = v560;
                *&buf[12] = 2048;
                *&buf[14] = v561;
                _os_log_impl(&dword_1E1C61000, v558, OS_LOG_TYPE_DEFAULT, "MeshShadowSystem: ============= Updating Shadow %llu for scene %llu =============", buf, 0x16u);
              }

              if (v534)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v562 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v562 = (v3 + 2369);
                }

                *v562 = 0;
                v563 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: upserting %u clusters", *(v530 + 164));
                v564 = *(v530 + 168);
                if (v564)
                {
                  v565 = 0;
                  v566 = *(v530 + 152);
                  while ((*v566 & 0x80000000) == 0)
                  {
                    v566 += 68;
                    if (v564 == ++v565)
                    {
                      LODWORD(v565) = *(v530 + 168);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v565) = 0;
                }

LABEL_972:
                while (v565 != v564)
                {
                  v563 = re::DynamicString::appendf((v3 + 2360), " %llu", *(*(v530 + 152) + 272 * v565 + 8));
                  v567 = *(v530 + 168);
                  if (v567 <= v565 + 1)
                  {
                    v567 = v565 + 1;
                  }

                  while (v567 - 1 != v565)
                  {
                    LODWORD(v565) = v565 + 1;
                    if ((*(*(v530 + 152) + 272 * v565) & 0x80000000) != 0)
                    {
                      goto LABEL_972;
                    }
                  }

                  LODWORD(v565) = v567;
                }

                v568 = *re::shadowLogObjects(v563);
                v559 = os_log_type_enabled(v568, OS_LOG_TYPE_DEFAULT);
                if (v559)
                {
                  v569 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v569 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v569;
                  _os_log_impl(&dword_1E1C61000, v568, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              if (v795)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v570 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v570 = (v3 + 2369);
                }

                *v570 = 0;
                v571 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: removing %u clusters", *(v530 + 260));
                v572 = *(v530 + 264);
                if (v572)
                {
                  v573 = 0;
                  v574 = (*(v530 + 248) + 8);
                  while (1)
                  {
                    v575 = *v574;
                    v574 += 6;
                    if (v575 < 0)
                    {
                      break;
                    }

                    if (v572 == ++v573)
                    {
                      LODWORD(v573) = *(v530 + 264);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v573) = 0;
                }

LABEL_993:
                while (v573 != v572)
                {
                  v571 = re::DynamicString::appendf((v3 + 2360), " %llu", *(*(v530 + 248) + 24 * v573 + 16));
                  v576 = *(v530 + 264);
                  if (v576 <= v573 + 1)
                  {
                    v576 = v573 + 1;
                  }

                  while (v576 - 1 != v573)
                  {
                    LODWORD(v573) = v573 + 1;
                    if ((*(*(v530 + 248) + 24 * v573 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_993;
                    }
                  }

                  LODWORD(v573) = v576;
                }

                v577 = *re::shadowLogObjects(v571);
                v559 = os_log_type_enabled(v577, OS_LOG_TYPE_DEFAULT);
                if (v559)
                {
                  v578 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v578 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v578;
                  _os_log_impl(&dword_1E1C61000, v577, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              if (v804)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v579 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v579 = (v3 + 2369);
                }

                *v579 = 0;
                v580 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: adding %zu receivers", *(v530 + 32));
                v581 = *(v530 + 32);
                if (v581)
                {
                  v582 = *(v530 + 48);
                  v583 = 8 * v581;
                  do
                  {
                    v584 = *v582++;
                    v580 = re::DynamicString::appendf((v3 + 2360), " %llu", v584);
                    v583 -= 8;
                  }

                  while (v583);
                }

                v585 = *re::shadowLogObjects(v580);
                v559 = os_log_type_enabled(v585, OS_LOG_TYPE_DEFAULT);
                if (v559)
                {
                  v586 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v586 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v586;
                  _os_log_impl(&dword_1E1C61000, v585, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              if (v798)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v587 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v587 = (v3 + 2369);
                }

                *v587 = 0;
                v588 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: updating %zu receivers", *(v530 + 72));
                v589 = *(v530 + 72);
                if (v589)
                {
                  v590 = *(v530 + 88);
                  v591 = 8 * v589;
                  do
                  {
                    v592 = *v590++;
                    v588 = re::DynamicString::appendf((v3 + 2360), " %llu", v592);
                    v591 -= 8;
                  }

                  while (v591);
                }

                v593 = *re::shadowLogObjects(v588);
                v559 = os_log_type_enabled(v593, OS_LOG_TYPE_DEFAULT);
                if (v559)
                {
                  v594 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v594 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v594;
                  _os_log_impl(&dword_1E1C61000, v593, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              if (v791)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v595 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v595 = (v3 + 2369);
                }

                *v595 = 0;
                v596 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: removing %zu receivers", *(v530 + 112));
                v597 = *(v530 + 112);
                if (v597)
                {
                  v598 = *(v530 + 128);
                  v599 = 8 * v597;
                  do
                  {
                    v600 = *v598++;
                    v596 = re::DynamicString::appendf((v3 + 2360), " %llu", v600);
                    v599 -= 8;
                  }

                  while (v599);
                }

                v601 = *re::shadowLogObjects(v596);
                v559 = os_log_type_enabled(v601, OS_LOG_TYPE_DEFAULT);
                if (v559)
                {
                  v602 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v602 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v602;
                  _os_log_impl(&dword_1E1C61000, v601, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              v603 = *re::shadowLogObjects(v559);
              if (os_log_type_enabled(v603, OS_LOG_TYPE_DEFAULT))
              {
                v604 = *(v3 + 2336);
                v605 = *(v530 + 8);
                *buf = 134218240;
                *&buf[4] = v604;
                *&buf[12] = 2048;
                *&buf[14] = v605;
                _os_log_impl(&dword_1E1C61000, v603, OS_LOG_TYPE_DEFAULT, "MeshShadowSystem: ============== End of Update %llu for scene %llu ==============", buf, 0x16u);
              }
            }

            v606 = *(v3 + 2096);
            if (v606 <= v528 + 1)
            {
              v606 = v528 + 1;
            }

            while (v606 - 1 != v528)
            {
              LODWORD(v528) = v528 + 1;
              if ((*(*(v3 + 2080) + 392 * v528) & 0x80000000) != 0)
              {
                goto LABEL_1039;
              }
            }

            LODWORD(v528) = v606;
LABEL_1039:
            ;
          }
        }

        v607 = *(v3 + 2304);
        *(v3 + 2000) = *(v3 + 2288);
        *(v3 + 2016) = v607;
        *(v3 + 2032) = *(v3 + 2320);
        v608 = *(v3 + 2240);
        *(v3 + 1936) = *(v3 + 2224);
        *(v3 + 1952) = v608;
        v609 = *(v3 + 2272);
        *(v3 + 1968) = *(v3 + 2256);
        *(v3 + 1984) = v609;
        v610 = *(v3 + 2176);
        *(v3 + 1872) = *(v3 + 2160);
        *(v3 + 1888) = v610;
        v611 = *(v3 + 2208);
        *(v3 + 1904) = *(v3 + 2192);
        *(v3 + 1920) = v611;
        v612 = *(v3 + 2144);
        *v777 = *v765;
        *(v3 + 1856) = v612;
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1304);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1352);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1400);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1592);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1640);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1688);
        if (LOBYTE(v875[0]) == 1)
        {
          v613.n128_f64[0] = re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v875 + 1);
        }

        v614 = *(v3 + 2344) | (*(v3 + 900) != 0);
        *(v3 + 2344) = v614;
        if (*(v3 + 2112) == 1)
        {
          v615 = *(v3 + 2096);
          if (v615)
          {
            v616 = 0;
            v617 = *(v3 + 2080);
            while ((*v617 & 0x80000000) == 0)
            {
              v617 += 98;
              if (v615 == ++v616)
              {
                LODWORD(v616) = *(v3 + 2096);
                break;
              }
            }
          }

          else
          {
            LODWORD(v616) = 0;
          }

          if (v616 != v615)
          {
            v618 = *(v3 + 2080);
            do
            {
              v619 = v618 + 392 * v616;
              v621 = *(v619 + 32) || (v620 = v619 + 16, *(v620 + 56)) || *(v620 + 96) || *(v620 + 148) || *(v620 + 196) || *(v620 + 244) || *(v620 + 340) != 0;
              v614 |= v621;
              if (v615 <= v616 + 1)
              {
                v622 = v616 + 1;
              }

              else
              {
                v622 = *(v3 + 2096);
              }

              while (v622 - 1 != v616)
              {
                LODWORD(v616) = v616 + 1;
                if ((*(v618 + 392 * v616) & 0x80000000) != 0)
                {
                  goto LABEL_1065;
                }
              }

              LODWORD(v616) = v622;
LABEL_1065:
              ;
            }

            while (v616 != v615);
            *(v3 + 2344) = v614;
          }
        }

        if ((v614 & 1) == 0)
        {
LABEL_1274:
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v806);
          return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v807);
        }

        (*(**(v3 + 248) + 48))(buf, v613);
        v623 = re::AssetHandle::loadedAsset<re::MaterialAsset>(buf);
        if (v623 && *(v623 + 1768) != 1)
        {
          (*(**(v3 + 248) + 56))(v823);
          v624 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v823);
          if (v624 && (*(v624 + 1768) & 1) == 0)
          {
            (*(**(v3 + 248) + 64))(to);
            v625 = re::AssetHandle::loadedAsset<re::MaterialAsset>(to);
            if (v625 && (*(v625 + 1768) & 1) == 0)
            {
              (*(**(v3 + 248) + 72))(v875);
              v626 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v875);
              if (v626)
              {
                v627 = *(v626 + 1768);
                re::AssetHandle::~AssetHandle(v875);
                re::AssetHandle::~AssetHandle(to);
                re::AssetHandle::~AssetHandle(v823);
                re::AssetHandle::~AssetHandle(buf);
                if ((v627 & 1) == 0)
                {
                  goto LABEL_1086;
                }

                goto LABEL_1082;
              }

              re::AssetHandle::~AssetHandle(v875);
            }

            re::AssetHandle::~AssetHandle(to);
          }

          re::AssetHandle::~AssetHandle(v823);
        }

        re::AssetHandle::~AssetHandle(buf);
LABEL_1082:
        if (*(*(v3 + 232) + 319) == 1)
        {
          (*(**(v3 + 248) + 48))(buf);
          re::AssetHandle::loadNow(*&buf[8], 0);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 56))(buf);
          re::AssetHandle::loadNow(*&buf[8], 0);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 64))(buf);
          re::AssetHandle::loadNow(*&buf[8], 0);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 72))(buf);
          re::AssetHandle::loadNow(*&buf[8], 0);
          re::AssetHandle::~AssetHandle(buf);
        }

        else
        {
          (*(**(v3 + 248) + 48))(buf);
          re::AssetHandle::loadAsync(buf);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 56))(buf);
          re::AssetHandle::loadAsync(buf);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 64))(buf);
          re::AssetHandle::loadAsync(buf);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 72))(buf);
          re::AssetHandle::loadAsync(buf);
          re::AssetHandle::~AssetHandle(buf);
          v630 = *re::shadowLogObjects(v629);
          if (os_log_type_enabled(v630, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v630, OS_LOG_TYPE_DEFAULT, "MeshShadowSystem: Skipping update as material asset hasn't finished loading.", buf, 2u);
          }
        }

LABEL_1086:
        if (*(v3 + 2353))
        {
          goto LABEL_1107;
        }

        v631 = *(v3 + 248);
        if (v631)
        {
          *(v3 + 2353) = 1;
          if (!*(v3 + 296))
          {
            (*(*v631 + 48))(buf);
            if (re::AssetHandle::loadedAsset<re::MaterialAsset>(buf))
            {
              v823[0].i64[0] = *(v3 + 232);
              re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v823, to);
              v632 = *(v3 + 296);
              *(v3 + 296) = *to;
              *to = v632;
              if (v632)
              {
              }
            }

            else
            {
              *(v3 + 2353) = 0;
            }

            re::AssetHandle::~AssetHandle(buf);
          }

          if (!*(v3 + 312))
          {
            (*(**(v3 + 248) + 64))(buf);
            if (re::AssetHandle::loadedAsset<re::MaterialAsset>(buf))
            {
              v823[0].i64[0] = *(v3 + 232);
              re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v823, to);
              v633 = *(v3 + 312);
              *(v3 + 312) = *to;
              *to = v633;
              if (v633)
              {
              }
            }

            else
            {
              *(v3 + 2353) = 0;
            }

            re::AssetHandle::~AssetHandle(buf);
          }

          if (!*(v3 + 304))
          {
            (*(**(v3 + 248) + 56))(buf);
            if (re::AssetHandle::loadedAsset<re::MaterialAsset>(buf))
            {
              v823[0].i64[0] = *(v3 + 232);
              re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v823, to);
              v634 = *(v3 + 304);
              *(v3 + 304) = *to;
              *to = v634;
              if (v634)
              {
              }
            }

            else
            {
              *(v3 + 2353) = 0;
            }

            re::AssetHandle::~AssetHandle(buf);
          }

          if (*(v3 + 2353) == 1)
          {
LABEL_1107:
            v635 = *(v3 + 232);
            if (!v635)
            {
LABEL_1281:
              re::internal::assertLog(4, v628, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "sendMeshShadowPerFrameUpdateData", 1554);
              _os_crash();
              __break(1u);
LABEL_1282:
              re::internal::assertLog(4, v628, "assertion failure: '%s' (%s:line %i) MeshShadowSystem: No pending shadow updates exist", "m_pendingShadowUpdates.has_value()", "sendMeshShadowPerFrameUpdateData", 1559);
              _os_crash();
              __break(1u);
LABEL_1283:
              v814 = 0;
              v824 = 0u;
              v825 = 0u;
              memset(v823, 0, sizeof(v823));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *to = 136315906;
              *&to[4] = "operator[]";
              *&to[12] = 1024;
              *&to[14] = 797;
              *&to[18] = 2048;
              *&to[20] = 0;
              *&to[28] = 2048;
              *&to[30] = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_1284;
            }

            v636 = v809;
            v637 = *(v635 + 112);
            if (v637)
            {
              v805 = re::RenderFrameBox::get((v637 + 328), 0xFFFFFFFFFFFFFFFuLL);
            }

            else
            {
              v805 = 0;
            }

            if ((*(v3 + 2048) & 1) == 0)
            {
              goto LABEL_1282;
            }

            v638 = *(v3 + 1872);
            v848 = *(v3 + 1888);
            *&to[32] = v638;
            v639 = *(v3 + 1936);
            v852 = *(v3 + 1952);
            v851 = v639;
            v640 = *(v3 + 1920);
            v849 = *(v3 + 1904);
            v850 = v640;
            v641 = *(v3 + 2016);
            v857 = *(v3 + 2032);
            v642 = *(v3 + 1984);
            v643 = *(v3 + 2000);
            v856 = v641;
            v855 = v643;
            v853 = *(v3 + 1968);
            v854 = v642;
            v644 = *v777;
            *&to[16] = *(v3 + 1856);
            *to = v644;
            (*(**(v805 + 320) + 336))();
            v649 = *(v636 + 200);
            if (v649)
            {
              v650 = 8 * v649;
              v651 = *(v636 + 216);
              while (1)
              {
                re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(*v651, 0, v805, v875);
                v819 = (*&v875[0] >> 1);
                v652 = re::RenderFrameData::stream((v805 + 264), &v819);
                re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v652, location, buf);
                if (*&buf[12] == 0x7FFFFFFF)
                {
                  v653 = *(*(v652 + 48) + 8);
                  v654 = (*(*v653 + 32))(v653, 56, 8);
                  *v654 = 0;
                  *(v654 + 8) = 0;
                  *(v654 + 16) = 1;
                  *(v654 + 32) = 0;
                  *(v654 + 40) = 0;
                  *(v654 + 24) = 0;
                  *(v654 + 48) = 0;
                  v655 = re::BucketArray<re::MeshShadowReceiverWorld,4ul>::init(v654, v653, 1uLL);
                  *&buf[8] = v654;
                  *buf = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowReceiverWorld,4ul> *>::__handle[abi:nn200100];
                  v859.i64[1] = re::globalAllocators(v655)[2];
                  v860.i64[0] = 0;
                  v656 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v652, location, buf);
                  if (v860.i64[0])
                  {
                    v823[0].i64[0] = buf;
                    (*(*v860.i64[0] + 16))(v860.i64[0], v823);
                  }

                  re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&buf[32]);
                  if (*buf)
                  {
                    (*buf)(0, buf, 0, 0, 0);
                  }
                }

                else
                {
                  v656 = (*(v652 + 16) + 96 * *&buf[12] + 16);
                }

                v659 = *v657;
                v660 = *(*v657 + 40);
                v661 = *(*v657 + 8);
                if (v660 + 1 > 4 * v661)
                {
                  v657 = re::BucketArray<re::MeshShadowReceiverWorld,4ul>::setBucketsCapacity(*v657, (v660 + 4) >> 2);
                  v661 = *(v659 + 8);
                }

                if (v661 <= v660 >> 2)
                {
                  break;
                }

                v662 = *(v659 + 40);
                ++*(v659 + 48);
                *(v659 + 40) = v662 + 1;
                if (v662 == -1)
                {
                  goto LABEL_1277;
                }

                if (v661 <= v662 >> 2)
                {
                  goto LABEL_1278;
                }

                if (v875[0])
                {
                  if (v875[0])
                  {
                  }
                }

                ++v651;
                v650 -= 8;
                if (!v650)
                {
                  goto LABEL_1129;
                }
              }

              *location = 0;
              v860 = 0u;
              v859 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v823[0].i32[0] = 136315906;
              *(v823[0].i64 + 4) = "operator[]";
              v823[0].i16[6] = 1024;
              *(&v823[0].i32[3] + 2) = 858;
              v823[1].i16[1] = 2048;
              *(v823[1].i64 + 4) = v660 >> 2;
              v823[1].i16[6] = 2048;
              *(&v823[1].i64[1] + 6) = v661;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_1277:
              re::internal::assertLog(4, v658, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
              _os_crash();
              __break(1u);
LABEL_1278:
              v762 = v662 >> 2;
              *location = 0;
              v860 = 0u;
              v859 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v823[0].i32[0] = 136315906;
              *(v823[0].i64 + 4) = "operator[]";
              v823[0].i16[6] = 1024;
              *(&v823[0].i32[3] + 2) = 858;
              v823[1].i16[1] = 2048;
              *(v823[1].i64 + 4) = v762;
              v823[1].i16[6] = 2048;
              *(&v823[1].i64[1] + 6) = v661;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_1279;
            }

LABEL_1129:
            if (*(v3 + 2112))
            {
              v799 = *(v3 + 2096);
              if (v799)
              {
                v663 = 0;
                v664 = *(v3 + 2080);
                while ((*v664 & 0x80000000) == 0)
                {
                  v664 += 98;
                  if (v799 == ++v663)
                  {
                    LODWORD(v663) = *(v3 + 2096);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v663) = 0;
              }

              if (v663 != v799)
              {
                while (1)
                {
                  v665 = *(v3 + 2080) + 392 * v663;
                  v666 = v665 + 16;
                  *(v665 + 376) = *(v665 + 8);
                  re::DynamicArray<char const*>::DynamicArray(v823, (v665 + 16));
                  re::DynamicArray<char const*>::DynamicArray(&v823[2].i64[1], (v665 + 56));
                  re::DynamicArray<char const*>::DynamicArray(v826, (v665 + 96));
                  v831 = 0;
                  v830 = 0u;
                  v829 = 0u;
                  v832 = 0x7FFFFFFFLL;
                  v667 = *(v665 + 136);
                  if (v667)
                  {
                    v668 = *(v665 + 164) <= 3u ? 3 : *(v665 + 164);
                    re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v829, v667, v668);
                    v669 = *(v665 + 168);
                    if (v669)
                    {
                      v670 = 0;
                      for (k = 0; k < v669; ++k)
                      {
                        v672 = *(v666 + 136);
                        if ((*(v672 + v670) & 0x80000000) != 0)
                        {
                          v673 = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v829, *(v672 + v670 + 256) % DWORD2(v830), *(v672 + v670 + 256));
                          v674 = *(v666 + 136) + v670;
                          *(v673 + 8) = *(v674 + 8);
                          re::DynamicArray<re::MeshShadowCasterInfo>::DynamicArray(v673 + 16, (v674 + 16));
                          v675 = *(v674 + 64);
                          v676 = *(v674 + 80);
                          v677 = *(v674 + 112);
                          *(v673 + 96) = *(v674 + 96);
                          *(v673 + 112) = v677;
                          *(v673 + 64) = v675;
                          *(v673 + 80) = v676;
                          v678 = *(v674 + 128);
                          v679 = *(v674 + 144);
                          v680 = *(v674 + 176);
                          *(v673 + 160) = *(v674 + 160);
                          *(v673 + 176) = v680;
                          *(v673 + 128) = v678;
                          *(v673 + 144) = v679;
                          v681 = *(v674 + 192);
                          v682 = *(v674 + 208);
                          v683 = *(v674 + 224);
                          *(v673 + 240) = *(v674 + 240);
                          *(v673 + 208) = v682;
                          *(v673 + 224) = v683;
                          *(v673 + 192) = v681;
                          v669 = *(v666 + 152);
                        }

                        v670 += 272;
                      }
                    }
                  }

                  v835 = 0;
                  v834 = 0u;
                  v833 = 0u;
                  v836 = 0x7FFFFFFFLL;
                  v684 = *(v666 + 168);
                  if (v684)
                  {
                    v685 = *(v666 + 196) <= 3u ? 3 : *(v666 + 196);
                    re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v833, v684, v685);
                    if (*(v666 + 200))
                    {
                      v686 = 0;
                      v687 = 0;
                      do
                      {
                        v688 = *(v666 + 184);
                        if ((*(v688 + v686) & 0x80000000) != 0)
                        {
                          v689 = re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v833, *(v688 + v686 + 112) % DWORD2(v834), *(v688 + v686 + 112));
                          v690 = *(v666 + 184);
                          v691 = v690 + v686;
                          *(v689 + 8) = *(v690 + v686 + 8);
                          v692 = *(v690 + v686 + 16);
                          *(v689 + 16) = v692;
                          if (v692 == 1)
                          {
                            v693 = *(v691 + 48);
                            *(v689 + 32) = *(v691 + 32);
                            *(v689 + 48) = v693;
                          }

                          v694 = *(v691 + 64);
                          *(v689 + 64) = v694;
                          if (v694 == 1)
                          {
                            v695 = v690 + v686;
                            v696 = *(v695 + 96);
                            *(v689 + 80) = *(v695 + 80);
                            *(v689 + 96) = v696;
                          }
                        }

                        ++v687;
                        v686 += 128;
                      }

                      while (v687 < *(v666 + 200));
                    }
                  }

                  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v837, v666 + 216);
                  v840 = 0;
                  v838 = 0u;
                  v839 = 0u;
                  v841 = 0x7FFFFFFFLL;
                  v697 = *(v666 + 264);
                  if (v697)
                  {
                    v698 = *(v666 + 292) <= 3u ? 3 : *(v666 + 292);
                    re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(&v838, v697, v698);
                    v699 = *(v666 + 296);
                    if (v699)
                    {
                      v700 = 0;
                      for (m = 0; m < v699; ++m)
                      {
                        v702 = *(v666 + 280);
                        if ((*(v702 + v700) & 0x80000000) != 0)
                        {
                          v703 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v838, *(v702 + v700 + 64) % DWORD2(v839), *(v702 + v700 + 64));
                          v704 = *(v666 + 280) + v700;
                          *(v703 + 8) = *(v704 + 8);
                          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v703 + 16, v704 + 16);
                          v699 = *(v666 + 296);
                        }

                        v700 += 72;
                      }
                    }
                  }

                  v844 = 0;
                  v842 = 0u;
                  v843 = 0u;
                  v845 = 0x7FFFFFFFLL;
                  v705 = *(v666 + 312);
                  if (v705)
                  {
                    v706 = *(v666 + 340) <= 3u ? 3 : *(v666 + 340);
                    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v842, v705, v706);
                    v707 = *(v666 + 344);
                    if (v707)
                    {
                      v708 = 0;
                      for (n = 0; n < v707; ++n)
                      {
                        v710 = *(v666 + 328);
                        if ((*(v710 + v708) & 0x80000000) != 0)
                        {
                          v711 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData::ShadowClusterOpacity,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v842, *(v710 + v708 + 32) % DWORD2(v843), *(v710 + v708 + 32));
                          v712 = *(v666 + 328) + v708;
                          *(v711 + 8) = *(v712 + 8);
                          v713 = *(v712 + 16);
                          *(v711 + 24) = *(v712 + 24);
                          *(v711 + 16) = v713;
                          v707 = *(v666 + 344);
                        }

                        v708 += 40;
                      }
                    }
                  }

                  v846 = *(v666 + 360);
                  *buf = 0xC1ECEDF69A9CD01;
                  v714 = re::RenderFrameData::stream((v805 + 264), buf);
                  re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v714, &v819, buf);
                  if (*&buf[12] == 0x7FFFFFFF)
                  {
                    v715 = *(*(v714 + 48) + 8);
                    v716 = (*(*v715 + 32))(v715, 56, 8);
                    *v716 = 0;
                    *(v716 + 8) = 0;
                    *(v716 + 16) = 1;
                    *(v716 + 32) = 0;
                    *(v716 + 40) = 0;
                    *(v716 + 24) = 0;
                    *(v716 + 48) = 0;
                    v717 = re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::init(v716, v715, 1uLL);
                    v718 = re::globalAllocators(v717)[2];
                    *&v875[0] = &unk_1F5CFBC38;
                    *(&v875[0] + 1) = v715;
                    *(&v875[1] + 1) = v718;
                    *&v876 = v875;
                    *&buf[8] = v716;
                    *buf = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul> *>::__handle[abi:nn200100];
                    v859.i64[1] = v718;
                    v860.i64[0] = 0;
                    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&buf[32], v875);
                    v719 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v714, &v819, buf);
                    if (v860.i64[0])
                    {
                      *location = buf;
                      (*(*v860.i64[0] + 16))(v860.i64[0], location);
                    }

                    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&buf[32]);
                    if (*buf)
                    {
                      (*buf)(0, buf, 0, 0, 0);
                    }

                    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v875);
                  }

                  else
                  {
                    v719 = (*(v714 + 16) + 96 * *&buf[12] + 16);
                  }

                  re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(buf, v823);
                  v721 = *(v720 + 40);
                  v660 = *(v720 + 8);
                  if (v721 + 1 > 4 * v660)
                  {
                    re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::setBucketsCapacity(v720, (v721 + 4) >> 2);
                    v660 = *(v720 + 8);
                  }

                  v659 = v721 >> 2;
                  if (v660 <= v721 >> 2)
                  {
                    break;
                  }

                  if (*(v720 + 16))
                  {
                    v722 = v720 + 24;
                  }

                  else
                  {
                    v722 = *(v720 + 32);
                  }

                  v723 = *(v722 + 8 * v659);
                  ++*(v720 + 40);
                  ++*(v720 + 48);
                  re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(v723 + 368 * (v721 & 3), buf);
                  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v874);
                  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v872 + 1);
                  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v869 + 1);
                  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v866 + 1);
                  v725.n128_f64[0] = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v863 + 1);
                  if (v861.i64[0])
                  {
                    v724 = v863;
                    if (v863)
                    {
                      (*(*v861.i64[0] + 40))(v725.n128_f64[0]);
                    }

                    *&v863 = 0;
                    v862.i64[0] = 0;
                    v861 = 0uLL;
                    ++v862.i32[2];
                  }

                  if (*&buf[40])
                  {
                    v724 = v860.i64[1];
                    if (v860.i64[1])
                    {
                      (*(**&buf[40] + 40))(v725);
                    }

                    v860.i64[1] = 0;
                    v859 = 0uLL;
                    *&buf[40] = 0;
                    ++v860.i32[0];
                  }

                  if (*buf)
                  {
                    v724 = *&buf[32];
                    if (*&buf[32])
                    {
                      (*(**buf + 40))(v725);
                    }
                  }

                  v726 = *(v720 + 40);
                  if (!v726)
                  {
                    goto LABEL_1280;
                  }

                  re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::operator[](v720, v726 - 1);
                  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v842);
                  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v838);
                  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v837);
                  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v833);
                  v645.n128_f64[0] = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v829);
                  if (v826[0])
                  {
                    if (v828)
                    {
                      (*(*v826[0] + 40))(v645.n128_f64[0]);
                    }

                    v828 = 0;
                    memset(v826, 0, sizeof(v826));
                    ++v827;
                  }

                  if (v823[2].i64[1])
                  {
                    if (*(&v825 + 1))
                    {
                      (*(*v823[2].i64[1] + 40))(v645);
                    }

                    *(&v825 + 1) = 0;
                    v824 = 0uLL;
                    v823[2].i64[1] = 0;
                    LODWORD(v825) = v825 + 1;
                  }

                  if (v823[0].i64[0] && v823[2].i64[0])
                  {
                    (*(*v823[0].i64[0] + 40))(v645);
                  }

                  v727 = *(v3 + 2096);
                  if (v727 <= v663 + 1)
                  {
                    v727 = v663 + 1;
                  }

                  while (v727 - 1 != v663)
                  {
                    LODWORD(v663) = v663 + 1;
                    if ((*(*(v3 + 2080) + 392 * v663) & 0x80000000) != 0)
                    {
                      goto LABEL_1218;
                    }
                  }

                  LODWORD(v663) = v727;
LABEL_1218:
                  if (v663 == v799)
                  {
                    goto LABEL_1219;
                  }
                }

LABEL_1279:
                v819 = 0;
                v877 = 0u;
                v878 = 0u;
                v876 = 0u;
                memset(v875, 0, sizeof(v875));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *location = 136315906;
                *&location[4] = "operator[]";
                *&location[12] = 1024;
                *&location[14] = 858;
                *&location[18] = 2048;
                *&location[20] = v659;
                *&location[28] = 2048;
                *&location[30] = v660;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_1280:
                re::internal::assertLog(4, v724, v725.n128_f64[0], "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                _os_crash();
                __break(1u);
                goto LABEL_1281;
              }
            }

LABEL_1219:
            v728 = *(v3 + 328);
            if ((v728 && *(v3 + 2332) != 1 || (re::internal::shadows::regenerateShadowProxy(v3 + 2288, *(v3 + 240), v645, v646, v647, v648), v729 = *(v3 + 320), *(v3 + 320) = *buf, *buf = v729, v730 = *(v3 + 336), *(v3 + 336) = *&buf[16], *&buf[16] = v730, re::AssetHandle::~AssetHandle(buf), (v728 = *(v3 + 328)) != 0)) && (v731 = atomic_load((v728 + 896)), v731 == 2))
            {
              if (*(v3 + 2332) == 1)
              {
                re::AssetHandle::loadNow(*(v3 + 328), 0);
              }

              v732 = *(*(v3 + 232) + 96);
              if (v732)
              {
                v823[0].i8[0] = 0;
                *buf = 0x587ABAC10091B1A0;
                *&buf[8] = "overrides:enablemeshshadows";
                v733 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v732, buf, v823);
                if (buf[0])
                {
                  if (buf[0])
                  {
                  }
                }

                *buf = 0x4859B8AA739E421CLL;
                *&buf[8] = "meshshadow:enableShadowFlattening";
                v734 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v732, buf, v823);
                v735 = v734;
                if (buf[0])
                {
                  if (buf[0])
                  {
                  }
                }

                if (!v735)
                {
                  re::internal::shadows::g_enableShadowFlattening = v823[0].i8[0];
                }

                *buf = 0x2D4485FF0B095780;
                *&buf[8] = "meshshadow:enableMeshDepthFallbackWhenFlattening";
                v736 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v732, buf, v823);
                v737 = v736;
                if (buf[0])
                {
                  if (buf[0])
                  {
                  }
                }

                if (!v737)
                {
                  re::internal::shadows::g_enableMeshDepthFallbackWhenFlattening = v823[0].i8[0];
                }

                *buf = 0xFF1144966FC0E67ELL;
                *&buf[8] = "meshshadow:enableWallShadowsBreakthrough";
                v738 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v732, buf, v823);
                v739 = v738;
                if (buf[0])
                {
                  if (buf[0])
                  {
                  }
                }

                if (!v739)
                {
                  re::internal::shadows::g_enableWallShadowsBreakthrough = v823[0].i8[0];
                }
              }

              (*(**(v3 + 248) + 48))(v875);
              (*(**(v3 + 248) + 56))(location);
              (*(**(v3 + 248) + 64))(&v819);
              v741 = *(v3 + 352);
              if (v741 && (v742 = atomic_load((v741 + 896)), v742 == 2))
              {
                re::makeFontID((v3 + 344), buf);
                v743 = 1;
                v816 = 1;
                *v817 = *buf;
                *&v817[8] = *&buf[8];
              }

              else
              {
                re::ecs2::MeshShadowSystem::asyncLoadFontAssetIfNeeded(v3, v740);
                v743 = 0;
                v816 = 0;
              }

              ++*(*(&v875[0] + 1) + 276);
              *buf = *(re::AssetHandle::loadedAsset<re::MaterialAsset>(v875) + 1776);
              ++*(*&location[8] + 276);
              *&buf[8] = *(re::AssetHandle::loadedAsset<re::MaterialAsset>(location) + 1776);
              ++*(*v820 + 276);
              v744 = re::AssetHandle::loadedAsset<re::MaterialAsset>(&v819);
              v745 = *(v3 + 296);
              *&buf[16] = *(v744 + 1776);
              *&buf[24] = v745;
              if (v745)
              {
                v746 = (v745 + 8);
              }

              v747 = *(v3 + 304);
              *&buf[32] = v747;
              if (v747)
              {
                v748 = (v747 + 8);
              }

              v749 = *(v3 + 312);
              *&buf[40] = v749;
              if (v749)
              {
                v750 = (v749 + 8);
              }

              v751 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v3 + 320));
              if (!*(v751 + 608))
              {
                goto LABEL_1283;
              }

              v859.i64[0] = **(v751 + 624);
              v859.i8[8] = v743;
              if (v743)
              {
                re::StringID::StringID(&v860, v817);
              }

              v861.i32[0] = 0;
              v753 = *(v3 + 2304);
              v872[0] = *(v3 + 2288);
              v872[1] = v753;
              v872[2] = *(v3 + 2320);
              v754 = *(v3 + 2240);
              v868 = *(v3 + 2224);
              v869 = v754;
              v755 = *(v3 + 2256);
              v871 = *(v3 + 2272);
              v870 = v755;
              v756 = *(v3 + 2176);
              v864 = *(v3 + 2160);
              v865 = v756;
              v757 = *(v3 + 2192);
              v867 = *(v3 + 2208);
              v866 = v757;
              v758 = *v765;
              v863 = *(v3 + 2144);
              v862 = v758;
              v873 = *(v3 + 2336);
              v759 = *(v3 + 232);
              if (!v759)
              {
LABEL_1284:
                re::internal::assertLog(4, v752, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "sendShadowBuilderGlobalData", 1499);
                _os_crash();
                __break(1u);
              }

              v760 = **(re::RenderFrameBox::get((*(v759 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 320);
              v761 = (*(v760 + 304))();
              if (v859.u8[8] == 1)
              {
                if (v860.i8[0])
                {
                  if (v860.i8[0])
                  {
                  }
                }

                v860.i64[1] = &str_67;
                v860.i64[0] = 0;
              }

              if (*&buf[40])
              {

                *&buf[40] = 0;
              }

              if (*&buf[32])
              {

                *&buf[32] = 0;
              }

              if (*&buf[24])
              {
              }

              if (v743 && (v817[0] & 1) != 0)
              {
              }

              re::AssetHandle::~AssetHandle(&v819);
              re::AssetHandle::~AssetHandle(location);
              re::AssetHandle::~AssetHandle(v875);
            }

            else
            {
              re::AssetHandle::loadAsync((v3 + 320));
            }
          }
        }

        goto LABEL_1274;
      }

      while (1)
      {
        v222 = *(v3 + 1272) + 24 * v215;
        *to = 0;
        objc_copyWeak(to, (v222 + 16));
        v223 = objc_loadWeakRetained(to);
        if (v223)
        {
          break;
        }

        v239 = *re::shadowLogObjects(0);
        if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "processReceiverUpdate";
          *&buf[12] = 1024;
          *&buf[14] = 1000;
          _os_log_impl(&dword_1E1C61000, v239, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", buf, 0x12u);
        }

LABEL_415:
        objc_destroyWeak(to);
        LODWORD(v237) = *(v3 + 1288);
        if (v237 <= v215 + 1)
        {
          v237 = (v215 + 1);
        }

        else
        {
          v237 = v237;
        }

        while (v237 - 1 != v215)
        {
          v215 = (v215 + 1);
          if ((*(*(v3 + 1272) + 24 * v215 + 8) & 0x80000000) != 0)
          {
            goto LABEL_422;
          }
        }

        v215 = v237;
LABEL_422:
        if (v215 == v214)
        {
          goto LABEL_401;
        }
      }

      v224 = v223;
      v225 = re::ecs2::EntityComponentCollection::get((v223 + 5), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v225 && *(v225 + 112) == 1)
      {
        v226 = re::ecs2::EntityComponentCollection::get((v224 + 5), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v227 = v224[38];
        if (*(v226 + 25) == 1)
        {
          v228 = *(v226 + 32);
          v229 = vmulq_f32(v228, v228);
          *&v230 = v229.f32[2] + vaddv_f32(*v229.f32);
          *v229.f32 = vrsqrte_f32(v230);
          *v229.f32 = vmul_f32(*v229.f32, vrsqrts_f32(v230, vmul_f32(*v229.f32, *v229.f32)));
          *v802 = vmulq_n_f32(v228, vmul_f32(*v229.f32, vrsqrts_f32(v230, vmul_f32(*v229.f32, *v229.f32))).f32[0]);
          v823[0] = *(v226 + 48);
          memset(buf, 0, 24);
          v231 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v227 ^ (v227 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v227 ^ (v227 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v3 + 1160, v227, v231 ^ (v231 >> 31));
          v232 = *&buf[12];
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v233 = re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v3 + 1160, *&buf[8], *buf);
            *(v233 + 8) = v227;
            v234 = v823[0];
            *(v233 + 16) = *v802;
            *(v233 + 32) = v234;
            ++*(v3 + 1200);
          }

          else
          {
            ++*(v3 + 1200);
            v238 = *(v3 + 1176) + (v232 << 6);
            *(v238 + 16) = *v802;
            *(v238 + 32) = v823[0];
          }

          re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_1::operator()(v796, v3, (v224 - 1));
          goto LABEL_414;
        }

        v236 = v3;
        v235 = v224[38];
      }

      else
      {
        v235 = v224[38];
        v236 = v3;
      }

      re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_3::operator()(v236, v235);
LABEL_414:

      goto LABEL_415;
    }

    v85 = (v3 + 968);
    v775 = *(v3 + 1480);
    v780 = v3 + 968;
    while (1)
    {
      v86 = objc_loadWeakRetained((*(v3 + 1464) + 24 * v78 + 16));
      v87 = v86 - 1;
      v88 = v86 ? (v86 - 1) : 0;
      if (v86)
      {
        break;
      }

      v126 = *re::shadowLogObjects(0);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "processClusterInfoUpdate";
        *&buf[12] = 1024;
        *&buf[14] = 753;
        _os_log_impl(&dword_1E1C61000, v126, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", buf, 0x12u);
      }

LABEL_205:
      v125 = *(v3 + 1480);
      if (v125 <= v78 + 1)
      {
        v125 = v78 + 1;
      }

      while (v125 - 1 != v78)
      {
        LODWORD(v78) = v78 + 1;
        if ((*(*(v3 + 1464) + 24 * v78 + 8) & 0x80000000) != 0)
        {
          goto LABEL_211;
        }
      }

      LODWORD(v78) = v125;
LABEL_211:
      if (v78 == v77)
      {
        goto LABEL_144;
      }
    }

    v89 = v86[38];
    do
    {
      v90 = v87;
      v87 = v87[4];
    }

    while (v87);
    v91 = v86[29];
    if (!v91)
    {
LABEL_204:

      goto LABEL_205;
    }

    v800 = v88;
    v92 = *v85;
    v93 = v89 ^ (v89 >> 30);
    v793 = v86;
    if (v92 && (v94 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v93) ^ ((0xBF58476D1CE4E5B9 * v93) >> 27)), v95 = *(*(v3 + 976) + 4 * ((v94 ^ (v94 >> 31)) % *(v3 + 992))), v95 != 0x7FFFFFFF))
    {
      v97 = *(v3 + 984);
      while (*(v97 + 40 * v95 + 8) != v89)
      {
        v95 = *(v97 + 40 * v95) & 0x7FFFFFFF;
        v98 = 0x7FFFFFFFLL;
        if (v95 == 0x7FFFFFFF)
        {
          goto LABEL_166;
        }
      }

      v98 = v95;
LABEL_166:
      v96 = v98 == 0x7FFFFFFF;
    }

    else
    {
      v96 = 1;
    }

    v99 = *(*(v90[3] + 104) + 288);
    v100 = v99 >> 1;
    v101 = *(v91 + 64);
    v102 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v101 ^ (v101 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v101 ^ (v101 >> 30))) >> 27));
    v103 = v102 ^ (v102 >> 31);
    v104 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v99 >> 1) ^ (v99 >> 31))) ^ ((0xBF58476D1CE4E5B9 * ((v99 >> 1) ^ (v99 >> 31))) >> 27));
    v778 = (v104 ^ (v104 >> 31)) - 0x61C8864680B583E9;
    v782 = v778 + (v103 << 6) + (v103 >> 2);
    v785 = v103;
    re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(buf, v3 + 872, v101, v100, v782 ^ v103);
    v788 = *&buf[12];
    if (v96)
    {
      memset(buf, 0, 24);
      v105 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v93) ^ ((0xBF58476D1CE4E5B9 * v93) >> 27));
      v85 = (v3 + 968);
      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v780, v89, v105 ^ (v105 >> 31));
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v106 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v780, *&buf[8], *buf);
        v106[1] = v89;
        v106[2] = v101;
        v106[3] = v100;
        ++*(v3 + 1008);
      }

      if (v788 != 0x7FFFFFFF)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v107 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v93) ^ ((0xBF58476D1CE4E5B9 * v93) >> 27));
      v108 = v107 ^ (v107 >> 31);
      v85 = (v3 + 968);
      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v780, v89, v108);
      v109 = *(v3 + 984);
      v110 = v109 + 40 * *&buf[12];
      v112 = *(v110 + 16);
      v111 = *(v110 + 24);
      v113 = v112 == v101 && v111 == v100;
      v114 = !v113;
      v773 = v114;
      if (!v113)
      {
        re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v780, v89, v108);
        v823[0] = *(v109 + 40 * *&buf[12] + 16);
        re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v780, v89, v108);
        v115 = v109 + 40 * *&buf[12];
        *(v115 + 16) = v101;
        *(v115 + 24) = v100;
        v116 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v823);
        *buf = v800;
        re::DynamicArray<unsigned long long>::remove(v116 + 8, buf);
        if (*(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v823) + 24))
        {
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1304, v823);
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, v823);
          v85 = (v3 + 968);
        }

        else
        {
          if (!*(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v823) + 56))
          {
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1400, v823);
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1304, v823);
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1352, v823);
          }

          *buf = *(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v823) + 56);
          *&buf[8] = v100;
          v117 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(v3 + 1016, buf);
          v85 = (v3 + 968);
          if (v117)
          {
            --*v117;
          }

          re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 872, v823);
        }
      }

      *buf = v101;
      *&buf[8] = v100;
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1304, buf);
      *buf = v101;
      *&buf[8] = v100;
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, buf);
      if (v788 != 0x7FFFFFFF)
      {
        if (!v773)
        {
LABEL_194:
          *buf = v101;
          *&buf[8] = v100;
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1304, buf);
          *buf = v101;
          *&buf[8] = v100;
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, buf);
LABEL_203:
          LODWORD(v77) = v775;
          v86 = v793;
          goto LABEL_204;
        }

LABEL_193:
        *buf = v101;
        *&buf[8] = v100;
        v121 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, buf);
        v823[0].i64[0] = v800;
        re::DynamicArray<re::TransitionCondition *>::add((v121 + 8), v823);
        goto LABEL_194;
      }
    }

    v860.i8[0] = 0;
    memset(buf, 0, 36);
    *&buf[40] = 0;
    v859.i64[0] = v101;
    (*(*v796 + 8))(v823);
    if (v823[0].i8[0])
    {
      v118 = v823[0].i64[1];
    }

    else
    {
      v118 = 0;
    }

    v859.i64[1] = v118;
    v823[0].i64[0] = v800;
    re::DynamicArray<re::TransitionCondition *>::add(&buf[8], v823);
    v119 = v859.u64[1];
    v823[0].i64[0] = v859.i64[1];
    v823[0].i64[1] = v100;
    v120 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(v3 + 1016, v823);
    if (v120)
    {
      ++*v120;
    }

    else
    {
      memset(v823, 0, 24);
      v122 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v119 ^ (v119 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v119 ^ (v119 >> 30))) >> 27));
      re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(v823, v3 + 1016, v119, v100, (v778 + ((v122 ^ (v122 >> 31)) << 6) + ((v122 ^ (v122 >> 31)) >> 2)) ^ v122 ^ (v122 >> 31));
      if (v823[0].i32[3] == 0x7FFFFFFF)
      {
        v123 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(v3 + 1016, v823[0].u32[2], v823[0].u64[0]);
        v123[1] = v119;
        v123[2] = v100;
        v123[3] = 1;
        ++*(v3 + 1056);
      }

      v823[0].i64[0] = v119;
      v823[0].i64[1] = v100;
      re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(v3 + 1592, v823);
      v823[0].i64[0] = v119;
      v823[0].i64[1] = v100;
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1688, v823);
    }

    memset(v823, 0, 24);
    re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v823, v3 + 872, v101, v100, v782 ^ v785);
    if (v823[0].i32[3] == 0x7FFFFFFF)
    {
      v124 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::allocEntry(v3 + 872, v823[0].u32[2], v823[0].u64[0]);
      *(v124 + 8) = v101;
      *(v124 + 16) = v100;
      *(v124 + 24) = *buf;
      *(v124 + 40) = *&buf[16];
      memset(&buf[8], 0, 24);
      *(v124 + 64) = *&buf[40];
      *&buf[40] = 0;
      ++*&buf[32];
      *(v124 + 56) = 1;
      *(v124 + 72) = v859;
      *(v124 + 88) = v860.i8[0];
      ++*(v3 + 912);
    }

    v823[0].i64[0] = v101;
    v823[0].i64[1] = v100;
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1304, v823);
    v823[0].i64[0] = v101;
    v823[0].i64[1] = v100;
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, v823);
    if (*&buf[8] && *&buf[40])
    {
      (*(**&buf[8] + 40))();
    }

    goto LABEL_203;
  }

  return result;
}