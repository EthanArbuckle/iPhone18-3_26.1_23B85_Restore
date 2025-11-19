uint64_t re::ModelSpaceJointTransformCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v14[0] = v8;
    v14[1] = strlen(v8);
    re::RigHierarchy::getModelSpaceJointTransform(v7, v14, v15);
    v10 = v15[0];
    if (v15[0] != 1)
    {
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v16;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::SetLocalSpaceJointScaleCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v18[0] = *(v8 + 232);
  v18[1] = strlen(v18[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v22[0]) = 7;
    memset(&v22[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 243), v22);
    v22[0] = v15[245] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 36, v22);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 76), v14 + 7);
    v16 = (v15[40] + 8 * v15[38] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setLocalSpaceJointScale(v12, v18, *v16, v19);
  if (v19[0] & 1) == 0 && v20 && (v21)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::SetLocalSpaceJointRotationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v18[0] = *(v8 + 232);
  v18[1] = strlen(v18[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v22[0]) = 5;
    memset(&v22[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 233), v22);
    v22[0] = v15[235] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 26, v22);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 66), v14 + 7);
    v16 = (v15[30] + 8 * v15[28] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setLocalSpaceJointRotation(v12, v18, *v16, v19);
  if (v19[0] & 1) == 0 && v20 && (v21)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::SetLocalSpaceJointTranslationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v18[0] = *(v8 + 232);
  v18[1] = strlen(v18[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v22[0]) = 7;
    memset(&v22[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 243), v22);
    v22[0] = v15[245] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 36, v22);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 76), v14 + 7);
    v16 = (v15[40] + 8 * v15[38] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setLocalSpaceJointTranslation(v12, v18, *v16, v19);
  if (v19[0] & 1) == 0 && v20 && (v21)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::SetLocalSpaceJointTransformCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v18[0] = *(v8 + 232);
  v18[1] = strlen(v18[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (*(v14 + 96) == 1)
  {
    v15 = *(v14 + 16);
    LODWORD(v22[0]) = 4;
    memset(&v22[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 228), v22);
    v22[0] = v15[230] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 21, v22);
    re::DynamicArray<re::Matrix4x4<float>>::add((v15 + 61), v14 + 112);
    v16 = (v15[25] + 8 * v15[23] - 8);
  }

  else
  {
    v16 = (v14 + 176);
  }

  re::RigHierarchy::setLocalSpaceJointTransform(v12, v18, *v16, v19);
  if (v19[0] & 1) == 0 && v20 && (v21)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::SetModelSpaceJointScaleCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v18[0] = *(v8 + 232);
  v18[1] = strlen(v18[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v22[0]) = 7;
    memset(&v22[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 243), v22);
    v22[0] = v15[245] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 36, v22);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 76), v14 + 7);
    v16 = (v15[40] + 8 * v15[38] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setModelSpaceJointScale(v12, v18, *v16, v19);
  if (v19[0] & 1) == 0 && v20 && (v21)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::SetModelSpaceJointRotationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if (!a5)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v20[0] = *(v8 + 232);
  v20[1] = strlen(v20[0]);
  if (a3 == 2)
  {
LABEL_15:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v24[0]) = 5;
    memset(&v24[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 233), v24);
    v24[0] = v15[235] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 26, v24);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 66), v14 + 7);
    v16 = (v15[30] + 8 * v15[28] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setModelSpaceJointRotation(v12, v20, *v16, v21);
  if ((v21[0] & 1) == 0 && v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))();
    }

    v23 = 0u;
    v22 = 0u;
  }

  v17 = *(*a4 + 184);
  v18 = *v12;
  *(v17 + 16) = v12[2];
  *v17 = v18;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 24), (v12 + 3));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 72), (v12 + 9));
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v17 + 120, v12 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v17 + 160, v12 + 20);
  re::DynamicArray<re::StringID>::operator=(v17 + 200, v12 + 25);
  re::DynamicArray<unsigned long>::operator=(v17 + 240, v12 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v17 + 280, v12 + 35);
  re::DynamicArray<unsigned long>::operator=(v17 + 320, v12 + 40);
  return 1;
}

uint64_t re::SetModelSpaceJointTranslationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if (!a5)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v20[0] = *(v8 + 232);
  v20[1] = strlen(v20[0]);
  if (a3 == 2)
  {
LABEL_15:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v24[0]) = 7;
    memset(&v24[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 243), v24);
    v24[0] = v15[245] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 36, v24);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 76), v14 + 7);
    v16 = (v15[40] + 8 * v15[38] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setModelSpaceJointTranslation(v12, v20, *v16, v21);
  if ((v21[0] & 1) == 0 && v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))();
    }

    v23 = 0u;
    v22 = 0u;
  }

  v17 = *(*a4 + 184);
  v18 = *v12;
  *(v17 + 16) = v12[2];
  *v17 = v18;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 24), (v12 + 3));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 72), (v12 + 9));
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v17 + 120, v12 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v17 + 160, v12 + 20);
  re::DynamicArray<re::StringID>::operator=(v17 + 200, v12 + 25);
  re::DynamicArray<unsigned long>::operator=(v17 + 240, v12 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v17 + 280, v12 + 35);
  re::DynamicArray<unsigned long>::operator=(v17 + 320, v12 + 40);
  return 1;
}

uint64_t re::SetModelSpaceJointTransformCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v18[0] = *(v8 + 232);
  v18[1] = strlen(v18[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (*(v14 + 96) == 1)
  {
    v15 = *(v14 + 16);
    LODWORD(v22[0]) = 4;
    memset(&v22[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 228), v22);
    v22[0] = v15[230] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 21, v22);
    re::DynamicArray<re::Matrix4x4<float>>::add((v15 + 61), v14 + 112);
    v16 = (v15[25] + 8 * v15[23] - 8);
  }

  else
  {
    v16 = (v14 + 176);
  }

  re::RigHierarchy::setModelSpaceJointTransform(v12, v18, *v16, v19);
  if (v19[0] & 1) == 0 && v20 && (v21)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::JointParentCompile(uint64_t a1, void *a2, unint64_t a3, re::Allocator ***a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v16 = v8;
    v17 = strlen(v8);
    v9 = re::RigHierarchy::jointParent(v7, &v16, 1, v18);
    v11 = v18[0];
    if (v18[0] != 1)
    {
LABEL_8:
      if (v20)
      {
        if (v21)
        {
          (*(*v20 + 40))();
        }
      }

      return v11;
    }

    if (a5)
    {
      v12 = *a4;
      v13 = *(v19 + 8);
      v16 = 0;
      v17 = &str_67;
      re::StringID::copy((v12 + 28), &v16, *v12);
      if (v16)
      {
        if (v16)
        {
        }
      }

      if (v18[0])
      {
        return v11;
      }

      goto LABEL_8;
    }
  }

  re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::SetJointParentCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  if (!a5)
  {
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  if (a3 == 2)
  {
LABEL_11:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v13 = strlen(*(a2[2] + 232));
  v21[0] = *(a2[2] + 232);
  v21[1] = v13;
  v14 = *(*a4 + 184);
  v15 = strlen(*(v8 + 232));
  v17[0] = *(v8 + 232);
  v17[1] = v15;
  re::RigHierarchy::setJointParent(v14, v17, v21, v18);
  if (v18[0] & 1) == 0 && v19 && (v20)
  {
    (*(*v19 + 40))();
  }

  return 1;
}

uint64_t re::AddJointCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a2[1];
  v7 = *(*a2 + 184);
  v8 = *(*a4 + 184);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 24), v7 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 72), v7 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v8 + 120, v7 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v8 + 160, v7 + 20);
  re::DynamicArray<re::StringID>::operator=(v8 + 200, v7 + 25);
  re::DynamicArray<unsigned long>::operator=(v8 + 240, v7 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v8 + 280, v7 + 35);
  re::DynamicArray<unsigned long>::operator=(v8 + 320, v7 + 40);
  v10 = *(*a4 + 184);
  v12[0] = *(v6 + 232);
  v12[1] = strlen(v12[0]);
  re::RigHierarchy::addJoint(v10, v12, v13);
  if (v13[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  return 1;
}

uint64_t re::RemoveJointCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a2[1];
  v7 = *(*a2 + 184);
  v8 = *(*a4 + 184);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 24), v7 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 72), v7 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v8 + 120, v7 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v8 + 160, v7 + 20);
  re::DynamicArray<re::StringID>::operator=(v8 + 200, v7 + 25);
  re::DynamicArray<unsigned long>::operator=(v8 + 240, v7 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v8 + 280, v7 + 35);
  re::DynamicArray<unsigned long>::operator=(v8 + 320, v7 + 40);
  v10 = *(*a4 + 184);
  v12[0] = *(v6 + 232);
  v12[1] = strlen(v12[0]);
  re::RigHierarchy::removeJoint(v10, v12, v13);
  if (v13[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  return 1;
}

uint64_t re::ClearJointParentCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a2[1];
  v7 = *(*a2 + 184);
  v8 = *(*a4 + 184);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 24), v7 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 72), v7 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v8 + 120, v7 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v8 + 160, v7 + 20);
  re::DynamicArray<re::StringID>::operator=(v8 + 200, v7 + 25);
  re::DynamicArray<unsigned long>::operator=(v8 + 240, v7 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v8 + 280, v7 + 35);
  re::DynamicArray<unsigned long>::operator=(v8 + 320, v7 + 40);
  v10 = *(*a4 + 184);
  v12[0] = *(v6 + 232);
  v12[1] = strlen(v12[0]);
  re::RigHierarchy::clearJointParent(v10, v12, v13);
  if (v13[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  return 1;
}

uint64_t re::SinFloatCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 2;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v13);
    v13 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 11, &v13);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 53;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v13);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::CosFloatCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 2;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v13);
    v13 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 11, &v13);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 54;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v13);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::TanFloatCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 2;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v13);
    v13 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 11, &v13);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 55;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v13);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::AsinFloatCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 2;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v13);
    v13 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 11, &v13);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 56;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v13);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::AcosFloatCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 2;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v13);
    v13 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 11, &v13);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 57;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v13);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::AtanFloatCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 2;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v13);
    v13 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 11, &v13);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 58;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v13);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::Atan2FloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 59;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::GreaterCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 61;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1704), &v20);
  v17 = *(v8 + 1720) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::GreaterEqualCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 62;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1704), &v20);
  v17 = *(v8 + 1720) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::LessCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 63;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1704), &v20);
  v17 = *(v8 + 1720) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::LessEqualCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 64;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1704), &v20);
  v17 = *(v8 + 1720) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SelectFloatCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v24) = 1;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 213), &v24);
    v24 = v10[215] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 6, &v24);
    re::DynamicArray<int>::add(v10 + 46, (v9 + 112));
    v11 = (v10[10] + 8 * v10[8] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v24) = 2;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v24);
    v24 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v24);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = *v15;
  v17 = a2[2];
  if (*(v17 + 96) == 1)
  {
    v18 = *(v17 + 16);
    LODWORD(v24) = 2;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 218), &v24);
    v24 = v18[220] - 1;
    re::DynamicArray<unsigned long>::add(v18 + 11, &v24);
    re::DynamicArray<float>::add((v18 + 51), (v17 + 112));
    v19 = (v18[15] + 8 * v18[13] - 8);
  }

  else
  {
    v19 = (v17 + 176);
  }

  v20 = *v19;
  LODWORD(v24) = 60;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v24);
  v21 = *(v8 + 1760) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::BlendRigHierarchyCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
LABEL_64:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_65;
  }

  if (a3 == 1)
  {
LABEL_65:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_66;
  }

  v8 = *(*a2 + 184);
  v9 = *(a2[1] + 184);
  re::RigHierarchy::getBindPoseHierarchy(v8, a2, &v70);
  if (*(v8 + 27))
  {
    v11 = 0;
    while (1)
    {
      v12 = re::RigHierarchy::jointName(v8, v11);
      v13 = strlen(*(v12 + 8));
      v62 = *(v12 + 8);
      v63 = v13;
      re::RigHierarchy::getLocalSpaceJointScale(v8, &v62, v66);
      v14 = strlen(*(v12 + 8));
      v58 = *(v12 + 8);
      v59 = v14;
      re::RigHierarchy::getLocalSpaceJointRotation(v8, &v58, &v62);
      v15 = strlen(*(v12 + 8));
      v53 = *(v12 + 8);
      v54 = v15;
      re::RigHierarchy::getLocalSpaceJointTranslation(v8, &v53, &v58);
      v57[0] = v67;
      v57[1] = v63;
      v57[2] = v59;
      v16 = strlen(*(v12 + 8));
      v49 = *(v12 + 8);
      v50 = v16;
      re::RigHierarchy::getLocalSpaceJointScale(v9, &v49, &v53);
      v17 = strlen(*(v12 + 8));
      v45 = *(v12 + 8);
      v46 = v17;
      re::RigHierarchy::getLocalSpaceJointRotation(v9, &v45, &v49);
      v18 = strlen(*(v12 + 8));
      v86 = *(v12 + 8);
      v87 = v18;
      re::RigHierarchy::getLocalSpaceJointTranslation(v9, &v86, &v45);
      v44[0] = v54;
      v44[1] = v50;
      v44[2] = v46;
      if (a3 <= 2)
      {
        break;
      }

      v20 = *(a1 + 8);
      v21 = a2[2];
      if (*(v21 + 96) == 1)
      {
        v22 = *(v21 + 16);
        LODWORD(v86) = 2;
        v88 = 0;
        v89 = 0;
        v87 = 0;
        re::DynamicArray<re::EvaluationRegister>::add((v22 + 218), &v86);
        v86 = v22[220] - 1;
        re::DynamicArray<unsigned long>::add(v22 + 11, &v86);
        re::DynamicArray<float>::add((v22 + 51), (v21 + 112));
        v23 = (v22[15] + 8 * v22[13] - 8);
      }

      else
      {
        v23 = (v21 + 176);
      }

      re::EvaluationTree::lerp(v20, v57, v44, *v23, &v86);
      v24 = strlen(*(v12 + 8));
      v39 = *(v12 + 8);
      v40 = v24;
      re::RigHierarchy::setLocalSpaceJointScale(&v70, &v39, v86, v41);
      if ((v41[0] & 1) == 0 && v42)
      {
        if (BYTE8(v42))
        {
          (*(*v42 + 40))();
        }

        v43 = 0u;
        v42 = 0u;
      }

      v25 = strlen(*(v12 + 8));
      v39 = *(v12 + 8);
      v40 = v25;
      re::RigHierarchy::setLocalSpaceJointRotation(&v70, &v39, v87, v36);
      if ((v36[0] & 1) == 0 && v37)
      {
        if (BYTE8(v37))
        {
          (*(*v37 + 40))();
        }

        v38 = 0u;
        v37 = 0u;
      }

      v26 = *(v12 + 8);
      v27 = strlen(v26);
      v39 = v26;
      v40 = v27;
      re::RigHierarchy::setLocalSpaceJointTranslation(&v70, &v39, v88, v33);
      if ((v33[0] & 1) == 0 && v34)
      {
        if (BYTE8(v34))
        {
          (*(*v34 + 40))();
        }

        v35 = 0u;
        v34 = 0u;
      }

      if (v45 & 1) == 0 && v47 && (v48)
      {
        (*(*v47 + 40))();
      }

      if (v49 & 1) == 0 && v51 && (v52)
      {
        (*(*v51 + 40))();
      }

      if (v53 & 1) == 0 && v55 && (v56)
      {
        (*(*v55 + 40))();
      }

      if (v58 & 1) == 0 && v60 && (v61)
      {
        (*(*v60 + 40))();
      }

      if (v62 & 1) == 0 && v64 && (v65)
      {
        (*(*v64 + 40))();
      }

      if (v66[0] & 1) == 0 && v68 && (v69)
      {
        (*(*v68 + 40))();
      }

      if (++v11 >= *(v8 + 27))
      {
        goto LABEL_49;
      }
    }

    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_64;
  }

LABEL_49:
  if (!a5)
  {
LABEL_66:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v28 = *(*a4 + 184);
  v29 = v70;
  *(v28 + 16) = v71;
  *v28 = v29;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v28 + 24), v72);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v28 + 72), v73);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v28 + 120, v74);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v28 + 160, v75);
  re::DynamicArray<re::StringID>::operator=(v28 + 200, v76);
  re::DynamicArray<unsigned long>::operator=(v28 + 240, v77);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v28 + 280, v80);
  re::DynamicArray<unsigned long>::operator=(v28 + 320, v83);
  if (v83[0])
  {
    if (v85)
    {
      (*(*v83[0] + 40))();
    }

    v85 = 0;
    memset(v83, 0, sizeof(v83));
    ++v84;
  }

  if (v80[0])
  {
    if (v82)
    {
      (*(*v80[0] + 40))();
    }

    v82 = 0;
    memset(v80, 0, sizeof(v80));
    ++v81;
  }

  if (v77[0])
  {
    if (v79)
    {
      (*(*v77[0] + 40))();
    }

    v79 = 0;
    memset(v77, 0, sizeof(v77));
    ++v78;
  }

  re::DynamicArray<re::StringID>::deinit(v76);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v75);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v74);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v73);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v72);
  return 1;
}

uint64_t re::BlendAdditiveRigHierarchyCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_60;
  }

  if (a3 == 1)
  {
LABEL_60:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_61:
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *(*a2 + 184);
  v8 = *(a2[1] + 184);
  re::RigHierarchy::getBindPoseHierarchy(v7, a2, &v66);
  if (*(v7 + 27))
  {
    v10 = 0;
    do
    {
      v11 = re::RigHierarchy::jointName(v7, v10);
      v12 = strlen(*(v11 + 8));
      v58 = *(v11 + 8);
      v59 = v12;
      re::RigHierarchy::getLocalSpaceJointScale(v7, &v58, v62);
      v13 = strlen(*(v11 + 8));
      v54 = *(v11 + 8);
      v55 = v13;
      re::RigHierarchy::getLocalSpaceJointRotation(v7, &v54, &v58);
      v14 = strlen(*(v11 + 8));
      v49 = *(v11 + 8);
      v50 = v14;
      re::RigHierarchy::getLocalSpaceJointTranslation(v7, &v49, &v54);
      v53[0] = v63;
      v53[1] = v59;
      v53[2] = v55;
      v15 = strlen(*(v11 + 8));
      v45 = *(v11 + 8);
      v46 = v15;
      re::RigHierarchy::getLocalSpaceJointScale(v8, &v45, &v49);
      v16 = strlen(*(v11 + 8));
      v41 = *(v11 + 8);
      v42 = v16;
      re::RigHierarchy::getLocalSpaceJointRotation(v8, &v41, &v45);
      v17 = strlen(*(v11 + 8));
      v38 = *(v11 + 8);
      v39 = v17;
      re::RigHierarchy::getLocalSpaceJointTranslation(v8, &v38, &v41);
      v38 = v50;
      v39 = v46;
      v40 = v42;
      re::EvaluationTree::additiveBlend(*(a1 + 8), v53, &v38, v37);
      v18 = strlen(*(v11 + 8));
      v32 = *(v11 + 8);
      v33 = v18;
      re::RigHierarchy::setLocalSpaceJointScale(&v66, &v32, v37[0], v34);
      if ((v34[0] & 1) == 0 && v35)
      {
        if (BYTE8(v35))
        {
          (*(*v35 + 40))();
        }

        v36 = 0u;
        v35 = 0u;
      }

      v19 = strlen(*(v11 + 8));
      v32 = *(v11 + 8);
      v33 = v19;
      re::RigHierarchy::setLocalSpaceJointRotation(&v66, &v32, v37[1], v29);
      if ((v29[0] & 1) == 0 && v30)
      {
        if (BYTE8(v30))
        {
          (*(*v30 + 40))();
        }

        v31 = 0u;
        v30 = 0u;
      }

      v20 = *(v11 + 8);
      v21 = strlen(v20);
      v32 = v20;
      v33 = v21;
      re::RigHierarchy::setLocalSpaceJointTranslation(&v66, &v32, v37[2], v26);
      if ((v26[0] & 1) == 0 && v27)
      {
        if (BYTE8(v27))
        {
          (*(*v27 + 40))();
        }

        v28 = 0u;
        v27 = 0u;
      }

      if (v41 & 1) == 0 && v43 && (v44)
      {
        (*(*v43 + 40))();
      }

      if (v45 & 1) == 0 && v47 && (v48)
      {
        (*(*v47 + 40))();
      }

      if (v49 & 1) == 0 && v51 && (v52)
      {
        (*(*v51 + 40))();
      }

      if (v54 & 1) == 0 && v56 && (v57)
      {
        (*(*v56 + 40))();
      }

      if (v58 & 1) == 0 && v60 && (v61)
      {
        (*(*v60 + 40))();
      }

      if (v62[0] & 1) == 0 && v64 && (v65)
      {
        (*(*v64 + 40))();
      }

      ++v10;
    }

    while (v10 < *(v7 + 27));
  }

  if (!a5)
  {
    goto LABEL_61;
  }

  v22 = *(*a4 + 184);
  v23 = v66;
  *(v22 + 16) = v67;
  *v22 = v23;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v22 + 24), v68);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v22 + 72), v69);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v22 + 120, v70);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v22 + 160, v71);
  re::DynamicArray<re::StringID>::operator=(v22 + 200, v72);
  re::DynamicArray<unsigned long>::operator=(v22 + 240, v73);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v22 + 280, v76);
  re::DynamicArray<unsigned long>::operator=(v22 + 320, v79);
  if (v79[0])
  {
    if (v81)
    {
      (*(*v79[0] + 40))();
    }

    v81 = 0;
    memset(v79, 0, sizeof(v79));
    ++v80;
  }

  if (v76[0])
  {
    if (v78)
    {
      (*(*v76[0] + 40))();
    }

    v78 = 0;
    memset(v76, 0, sizeof(v76));
    ++v77;
  }

  if (v73[0])
  {
    if (v75)
    {
      (*(*v73[0] + 40))();
    }

    v75 = 0;
    memset(v73, 0, sizeof(v73));
    ++v74;
  }

  re::DynamicArray<re::StringID>::deinit(v72);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v71);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v70);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v69);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v68);
  return 1;
}

void re::RigGraphOperatorDefinition::registerBuiltIns(re::RigGraphOperatorDefinition *this, re::RigEnvironment *a2)
{
  v197 = *MEMORY[0x1E69E9840];
  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185B8;
  v194 = *&off_1E87185C8;
  v3 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ConjugateQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185F8;
  v194 = *&off_1E8718608;
  v5 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::InvertMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v6 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718598;
  v194 = *&off_1E87185A8;
  v7 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::InvertMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v8 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185B8;
  v194 = *&off_1E87185C8;
  v9 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::InvertQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v10 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185D8;
  v194 = *&off_1E87185E8;
  v11 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::NormalizeVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v12 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185F8;
  v194 = *&off_1E8718608;
  v13 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::TransposeMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v14 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718618;
  v194 = *&off_1E8718628;
  v15 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::PassthroughRigHierarchyCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v16 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718618;
  v194 = *&off_1E8718628;
  v17 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::GetBindPoseRigHierarchyCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v18 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718638;
  v194 = *&off_1E8718648;
  v19 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractMinorMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v20 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718658;
  v194 = *&off_1E8718668;
  v21 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractRotationMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v22 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718678;
  v194 = *&off_1E8718688;
  v23 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractRotationMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v24 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718698;
  v194 = *&off_1E87186A8;
  v25 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractScaleMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v26 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718698;
  v194 = *&off_1E87186A8;
  v27 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractTranslationMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v28 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87186B8;
  v194 = *&off_1E87186C8;
  v29 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ConstructMatrix4x4FromSRTCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v30 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87186D8;
  v194 = *&off_1E87186E8;
  v31 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ConstructSRTFromMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v32 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A38;
  v194 = *&off_1E8718A48;
  v195 = xmmword_1E8718A58;
  v33 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AddVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v34 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87186F8;
  v194 = *&off_1E8718708;
  v195 = xmmword_1E8718718;
  v35 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AddVector2Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v36 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v37 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AddFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v38 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A38;
  v194 = *&off_1E8718A48;
  v195 = xmmword_1E8718A58;
  v39 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::SubtractVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v40 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87186F8;
  v194 = *&off_1E8718708;
  v195 = xmmword_1E8718718;
  v41 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::SubtractVector2Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v42 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v43 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::SubtractFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v44 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A08;
  v194 = *&off_1E8718A18;
  v195 = xmmword_1E8718A28;
  v45 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::DivideQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v46 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v47 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::DivideFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v48 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v49 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v50 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718728;
  v194 = *&off_1E8718738;
  v195 = xmmword_1E8718748;
  v51 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::RotateVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v52 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718758;
  v194 = *&off_1E8718768;
  v195 = xmmword_1E8718778;
  v53 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ScaleVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v54 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718788;
  v194 = *&off_1E8718798;
  v195 = xmmword_1E87187A8;
  v55 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConstructMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v56 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87187B8;
  v194 = *&off_1E87187C8;
  v195 = xmmword_1E87187D8;
  v57 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConstructMatrix4x4FromMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v58 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87187E8;
  v194 = *&off_1E87187F8;
  v195 = xmmword_1E8718808;
  v59 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::TransformDirectionByMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v60 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718818;
  v194 = *&off_1E8718828;
  v195 = xmmword_1E8718838;
  v61 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::TransformDirectionByMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v62 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718818;
  v194 = *&off_1E8718828;
  v195 = xmmword_1E8718838;
  v63 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::TransformPositionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v64 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718908;
  v194 = *&off_1E8718918;
  v195 = xmmword_1E8718928;
  v65 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::DotVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v66 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718938;
  v194 = *&off_1E8718948;
  v195 = xmmword_1E8718958;
  v67 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::DotVector2Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v68 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A38;
  v194 = *&off_1E8718A48;
  v195 = xmmword_1E8718A58;
  v69 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::CrossVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v70 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718848;
  v194 = *&off_1E8718858;
  v195 = xmmword_1E8718868;
  v71 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConvertIntrinsicEulerToQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v72 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718878;
  v194 = *&off_1E8718888;
  v195 = xmmword_1E8718898;
  v73 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConvertQuaternionToIntrinsicEulerCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v74 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87188A8;
  v194 = *&off_1E87188B8;
  v195 = xmmword_1E87188C8;
  v75 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ExtractTwistFromQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v76 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87188D8;
  v194 = *&off_1E87188E8;
  v195 = xmmword_1E87188F8;
  v77 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConstructQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v78 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718908;
  v194 = *&off_1E8718918;
  v195 = xmmword_1E8718928;
  v79 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::GetVector3ComponentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v80 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718938;
  v194 = *&off_1E8718948;
  v195 = xmmword_1E8718958;
  v81 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::GetVector2ComponentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v82 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718968;
  v194 = *&off_1E8718978;
  v195 = xmmword_1E8718988;
  v83 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConstructVector2Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v84 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718998;
  v194 = *&off_1E87189A8;
  v195 = xmmword_1E87189B8;
  v196 = *&off_1E87189C8;
  v85 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ConstructVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v86 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87189D8;
  v194 = *&off_1E87189E8;
  v195 = xmmword_1E87189F8;
  v87 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AdditiveBlendSRTCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v88 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A08;
  v194 = *&off_1E8718A18;
  v195 = xmmword_1E8718A28;
  v89 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v90 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A38;
  v194 = *&off_1E8718A48;
  v195 = xmmword_1E8718A58;
  v91 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v92 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A68;
  v194 = *&off_1E8718A78;
  v195 = xmmword_1E8718A88;
  v93 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v94 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A98;
  v194 = *&off_1E8718AA8;
  v195 = xmmword_1E8718AB8;
  v95 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v96 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718AC8;
  v194 = *&off_1E8718AD8;
  v195 = xmmword_1E8718AE8;
  v196 = *&off_1E8718AF8;
  v97 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ConstructMatrix3x3FromVector3sCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v98 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718B08;
  v194 = *&off_1E8718B18;
  v195 = xmmword_1E8718B28;
  v196 = *&off_1E8718B38;
  v99 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ConstructMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v100 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718B48;
  v194 = *&off_1E8718B58;
  v195 = xmmword_1E8718B68;
  v196 = *&off_1E8718B78;
  v101 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ComponentLerpVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v102 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718B88;
  v194 = *&off_1E8718B98;
  v195 = xmmword_1E8718BA8;
  v196 = *&off_1E8718BB8;
  v103 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::LerpVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v104 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718BC8;
  v194 = *&off_1E8718BD8;
  v195 = xmmword_1E8718BE8;
  v196 = *&off_1E8718BF8;
  v105 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::LerpSRTCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v106 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718C08;
  v194 = *&off_1E8718C18;
  v195 = xmmword_1E8718C28;
  v196 = *&off_1E8718C38;
  v107 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SlerpCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v108 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718C48;
  v194 = *&off_1E8718C58;
  v195 = xmmword_1E8718C68;
  v196 = *&off_1E8718C78;
  v109 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ClampCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v110 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718C88;
  v194 = *&off_1E8718C98;
  v195 = xmmword_1E8718CA8;
  v196 = *&off_1E8718CB8;
  v111 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ClampVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v112 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CF8;
  v194 = *&off_1E8718D08;
  v195 = xmmword_1E8718D18;
  v113 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LocalSpaceJointScaleCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v114 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CC8;
  v194 = *&off_1E8718CD8;
  v195 = xmmword_1E8718CE8;
  v115 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LocalSpaceJointRotationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v116 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CF8;
  v194 = *&off_1E8718D08;
  v195 = xmmword_1E8718D18;
  v117 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LocalSpaceJointTranslationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v118 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D28;
  v194 = *&off_1E8718D38;
  v195 = xmmword_1E8718D48;
  v119 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LocalSpaceJointTransformCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v120 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CF8;
  v194 = *&off_1E8718D08;
  v195 = xmmword_1E8718D18;
  v121 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ModelSpaceJointScaleCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v122 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CC8;
  v194 = *&off_1E8718CD8;
  v195 = xmmword_1E8718CE8;
  v123 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ModelSpaceJointRotationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v124 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CF8;
  v194 = *&off_1E8718D08;
  v195 = xmmword_1E8718D18;
  v125 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ModelSpaceJointTranslationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v126 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D28;
  v194 = *&off_1E8718D38;
  v195 = xmmword_1E8718D48;
  v127 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ModelSpaceJointTransformCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v128 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D98;
  v194 = *&off_1E8718DA8;
  v195 = xmmword_1E8718DB8;
  v196 = *&off_1E8718DC8;
  v129 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetLocalSpaceJointScaleCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v130 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D58;
  v194 = *&off_1E8718D68;
  v195 = xmmword_1E8718D78;
  v196 = *&off_1E8718D88;
  v131 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetLocalSpaceJointRotationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v132 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D98;
  v194 = *&off_1E8718DA8;
  v195 = xmmword_1E8718DB8;
  v196 = *&off_1E8718DC8;
  v133 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetLocalSpaceJointTranslationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v134 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718DD8;
  v194 = *&off_1E8718DE8;
  v195 = xmmword_1E8718DF8;
  v196 = *&off_1E8718E08;
  v135 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetLocalSpaceJointTransformCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v136 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D98;
  v194 = *&off_1E8718DA8;
  v195 = xmmword_1E8718DB8;
  v196 = *&off_1E8718DC8;
  v137 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetModelSpaceJointScaleCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v138 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D58;
  v194 = *&off_1E8718D68;
  v195 = xmmword_1E8718D78;
  v196 = *&off_1E8718D88;
  v139 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetModelSpaceJointRotationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v140 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D98;
  v194 = *&off_1E8718DA8;
  v195 = xmmword_1E8718DB8;
  v196 = *&off_1E8718DC8;
  v141 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetModelSpaceJointTranslationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v142 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718DD8;
  v194 = *&off_1E8718DE8;
  v195 = xmmword_1E8718DF8;
  v196 = *&off_1E8718E08;
  v143 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetModelSpaceJointTransformCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v144 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E18;
  v194 = *&off_1E8718E28;
  v195 = xmmword_1E8718E38;
  v145 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::JointParentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v146 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E48;
  v194 = *&off_1E8718E58;
  v195 = xmmword_1E8718E68;
  v196 = *&off_1E8718E78;
  v147 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetJointParentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v148 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E88;
  v194 = *&off_1E8718E98;
  v195 = xmmword_1E8718EA8;
  v149 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ClearJointParentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v150 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E88;
  v194 = *&off_1E8718E98;
  v195 = xmmword_1E8718EA8;
  v151 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AddJointCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v152 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E88;
  v194 = *&off_1E8718E98;
  v195 = xmmword_1E8718EA8;
  v153 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::RemoveJointCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v154 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v155 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::SinFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v156 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v157 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::CosFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v158 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v159 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::TanFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v160 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v161 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::AsinFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v162 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v163 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::AcosFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v164 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v165 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::AtanFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v166 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v167 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::Atan2FloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v168 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F08;
  v194 = *&off_1E8718F18;
  v195 = xmmword_1E8718F28;
  v169 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::GreaterCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v170 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F08;
  v194 = *&off_1E8718F18;
  v195 = xmmword_1E8718F28;
  v171 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::GreaterEqualCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v172 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F08;
  v194 = *&off_1E8718F18;
  v195 = xmmword_1E8718F28;
  v173 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LessCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v174 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F08;
  v194 = *&off_1E8718F18;
  v195 = xmmword_1E8718F28;
  v175 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LessEqualCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v176 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F38;
  v194 = *&off_1E8718F48;
  v195 = xmmword_1E8718F58;
  v196 = *&off_1E8718F68;
  v177 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SelectFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v178 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F78;
  v194 = *&off_1E8718F88;
  v195 = xmmword_1E8718F98;
  v196 = *&off_1E8718FA8;
  v179 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::LerpFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v180 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718FB8;
  v194 = *&off_1E8718FC8;
  v195 = xmmword_1E8718FD8;
  v196 = *&off_1E8718FE8;
  v181 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::BlendRigHierarchyCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v182 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718FF8;
  v194 = *&off_1E8719008;
  v195 = xmmword_1E8719018;
  v183 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::BlendAdditiveRigHierarchyCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v184 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }
}

float *re::ClampCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  Runtime = re::RigDataValue::getRuntimeValue<float>(a3, a2);
  if (a4 == 1)
  {
LABEL_13:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v13 = Runtime;
  v14 = re::RigDataValue::getRuntimeValue<float>(a3 + 288, v12);
  if (a4 <= 2)
  {
LABEL_14:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v16 = v14;
  v17 = re::RigDataValue::getRuntimeValue<float>(a3 + 576, v15);
  v19 = *v13;
  if (*v13 > *v17)
  {
    v19 = *v17;
  }

  if (v19 >= *v16)
  {
    v20 = v19;
  }

  else
  {
    v20 = *v16;
  }

  result = re::RigDataValue::getRuntimeValue<float>(a7, v18);
  *result = v20;
  return result;
}

_OWORD *re::ClampVector3Compile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v12 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3, a2);
  if (a4 == 1)
  {
LABEL_11:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v14 = *v12;
  v15 = *(v12 + 8);
  v16 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3 + 288, v13);
  if (a4 <= 2)
  {
LABEL_12:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  v18 = *(v16 + 8);
  v19 = *v16;
  v20 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3 + 576, v17);
  if (!a8)
  {
LABEL_13:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v23 = vbsl_s8(vcgt_f32(v14, *v20), *v20, v14);
  *&v22 = vbsl_s8(vcgt_f32(v19, v23), v19, v23);
  v24 = v20[1].f32[0];
  if (v15 <= v24)
  {
    v24 = v15;
  }

  if (v24 < v18)
  {
    v24 = v18;
  }

  *(&v22 + 2) = v24;
  v26 = v22;
  result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a7, v21);
  *result = v26;
  return result;
}

void re::SharedCoreIKRig::~SharedCoreIKRig(re::SharedCoreIKRig *this)
{
  *this = &unk_1F5CAEB38;
  if (*(this + 3))
  {
    MEMORY[0x1E69037D0]();
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CAEB38;
  if (*(this + 3))
  {
    MEMORY[0x1E69037D0]();
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

BOOL re::AnimationHelper::makeAdditiveForValues<float>(re *a1, float **a2, float *a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v19 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v23 = 0;
    v20 = "Cannot make additive values, output values expected to match input values size.";
    v21 = &v23;
    goto LABEL_17;
  }

  v4 = a2[1];
  if (!v4)
  {
    v19 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v22 = 0;
    v20 = "Cannot make additive values, base values array size must not be zero.";
    v21 = &v22;
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
    return 0;
  }

  if (a4 < v4)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = *a1;
    v6 = *a2;
    v7 = *a1;
    v8 = a3;
    v9 = v4;
    do
    {
      v10 = *v6++;
      v11 = v10;
      v12 = *v7++;
      *v8++ = v12 - v11;
      --v9;
    }

    while (v9);
    if (a4 > v4)
    {
      v13 = v4;
      v14 = a4 - v4;
      v15 = &a3[v13];
      v16 = &v5[v13];
      do
      {
        v17 = *v16++;
        *v15++ = v17 - v11;
        --v14;
      }

      while (v14);
    }
  }

  return 1;
}

uint64_t re::SampledAnimation<float>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(result + 96);
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    v8 = **(result + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = *(a2 + 24);
    v10 = *(result + 80);
    if (v10 < v9)
    {
      if (*(result + 84) <= v9 || (v11 = (v9 - v10) / *(result + 76), v12 = floorf(v11), v13 = v12 + ceilf(v11 - v12), v14 = (v13 + 0.5), v6 < v14))
      {
        v8 = *(*(result + 104) + 4 * v6 - 4);
        goto LABEL_10;
      }

      if (v6 != v14 && (*(result + 73) & 1) != 0)
      {
        if (v6 > v14 - 1)
        {
          if (v6 > v14)
          {
            v8 = ((v11 - (v13 + -1.0)) * *(*(result + 104) + 4 * v14)) + (*(*(result + 104) + 4 * (v14 - 1)) * (1.0 - (v11 - (v13 + -1.0))));
            goto LABEL_10;
          }

LABEL_23:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_22:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_23;
      }

      if (v6 > v14)
      {
        v7 = (v13 + 0.5);
      }

      if (v6 > v7)
      {
        v8 = *(*(result + 104) + 4 * v7);
        goto LABEL_10;
      }

LABEL_21:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  v8 = *a4;
LABEL_10:
  *a6 = v8;
  return result;
}

BOOL re::AnimationHelper::makeAdditiveForValues<double>(re *a1, uint64_t a2, double *a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v19 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v23 = 0;
    v20 = "Cannot make additive values, output values expected to match input values size.";
    v21 = &v23;
    goto LABEL_17;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    v19 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v22 = 0;
    v20 = "Cannot make additive values, base values array size must not be zero.";
    v21 = &v22;
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
    return 0;
  }

  if (a4 < v4)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = *a1;
    v6 = *a2;
    v7 = *a1;
    v8 = a3;
    v9 = v4;
    do
    {
      v10 = *v6++;
      v11 = v10;
      v12 = *v7++;
      *v8++ = v12 - v11;
      --v9;
    }

    while (v9);
    if (a4 > v4)
    {
      v13 = v4;
      v14 = a4 - v4;
      v15 = &a3[v13];
      v16 = &v5[v13];
      do
      {
        v17 = *v16++;
        *v15++ = v17 - v11;
        --v14;
      }

      while (v14);
    }
  }

  return 1;
}

uint64_t re::SampledAnimation<double>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(result + 96);
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    v8 = **(result + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = *(a2 + 24);
    v10 = *(result + 80);
    if (v10 < v9)
    {
      if (*(result + 84) <= v9 || (v11 = (v9 - v10) / *(result + 76), v12 = floorf(v11), v13 = v12 + ceilf(v11 - v12), v14 = (v13 + 0.5), v6 < v14))
      {
        v8 = *(*(result + 104) + 8 * v6 - 8);
        goto LABEL_10;
      }

      if (v6 != v14 && (*(result + 73) & 1) != 0)
      {
        if (v6 > v14 - 1)
        {
          if (v6 > v14)
          {
            v8 = *(*(result + 104) + 8 * v14) * (v11 - (v13 + -1.0)) + *(*(result + 104) + 8 * (v14 - 1)) * (1.0 - (v11 - (v13 + -1.0)));
            goto LABEL_10;
          }

LABEL_23:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_22:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_23;
      }

      if (v6 > v14)
      {
        v7 = (v13 + 0.5);
      }

      if (v6 > v7)
      {
        v8 = *(*(result + 104) + 8 * v7);
        goto LABEL_10;
      }

LABEL_21:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  v8 = *a4;
LABEL_10:
  *a6 = v8;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::Vector2<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v15 = 0;
    v12 = "Cannot make additive values, output values expected to match input values size.";
    v13 = &v15;
    goto LABEL_25;
  }

  if (!a2[1])
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "Cannot make additive values, base values array size must not be zero.";
    v13 = buf;
LABEL_25:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    if (a4 == v4)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash();
      __break(1u);
      goto LABEL_27;
    }

    v5 = *(*a2 + 8 * v4);
    *(a3 + 8 * v4) = vsub_f32(*(*a1 + 8 * v4), v5);
    ++v4;
    v6 = *(a1 + 1);
  }

  while (v6 > v4 && a2[1] > v4);
  if (v6 <= v4)
  {
    return 1;
  }

  v8 = v4;
  if (a4 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = a4;
  }

  if (a4 <= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = a4;
  }

  while (v4 != v8)
  {
    *(a3 + 8 * v8) = vsub_f32(*(*a1 + 8 * v8), v5);
    if (*(a1 + 1) <= ++v8)
    {
      return 1;
    }
  }

LABEL_27:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, a4);
  result = _os_crash();
  __break(1u);
  return result;
}

float32x2_t re::SampledAnimation<re::Vector2<float>>::evaluateCore(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t *a4, float32x2_t result, uint64_t a6, double *a7)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(a1 + 96);
  v8 = v7 - 1;
  if (v7 == 1)
  {
LABEL_9:
    v9 = **(a1 + 104);
    goto LABEL_10;
  }

  if (v7)
  {
    result = a2[3];
    result.f32[0] = *&result;
    v10 = *(a1 + 80);
    if (v10 < result.f32[0])
    {
      if (*(a1 + 84) <= result.f32[0] || (result.f32[0] = (result.f32[0] - v10) / *(a1 + 76), v11 = floorf(result.f32[0]), v12 = v11 + ceilf(result.f32[0] - v11), v13 = (v12 + 0.5), v7 < v13))
      {
        v9 = *(*(a1 + 104) + 8 * v7 - 8);
        goto LABEL_10;
      }

      if (v7 != v13 && (*(a1 + 73) & 1) != 0)
      {
        if (v7 > v13 - 1)
        {
          if (v7 > v13)
          {
            result = vadd_f32(vmul_n_f32(*(*(a1 + 104) + 8 * (v13 - 1)), 1.0 - (result.f32[0] - (v12 + -1.0))), vmul_n_f32(*(*(a1 + 104) + 8 * v13), result.f32[0] - (v12 + -1.0)));
            *a7 = *&result;
            return result;
          }

LABEL_24:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_23:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_24;
      }

      if (v7 > v13)
      {
        v8 = (v12 + 0.5);
      }

      if (v7 > v8)
      {
        v9 = *(*(a1 + 104) + 8 * v8);
        goto LABEL_10;
      }

LABEL_22:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  v9 = *a4;
LABEL_10:
  *a7 = v9;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::Vector3<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v15 = 0;
    v12 = "Cannot make additive values, output values expected to match input values size.";
    v13 = &v15;
    goto LABEL_25;
  }

  if (!a2[1])
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "Cannot make additive values, base values array size must not be zero.";
    v13 = buf;
LABEL_25:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    if (a4 == v4)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash();
      __break(1u);
      goto LABEL_27;
    }

    v5 = *(*a2 + 16 * v4);
    *(a3 + 16 * v4) = vsubq_f32(*(*a1 + 16 * v4), v5);
    ++v4;
    v6 = *(a1 + 1);
  }

  while (v6 > v4 && a2[1] > v4);
  if (v6 <= v4)
  {
    return 1;
  }

  v8 = v4;
  if (a4 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = a4;
  }

  if (a4 <= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = a4;
  }

  while (v4 != v8)
  {
    *(a3 + 16 * v8) = vsubq_f32(*(*a1 + 16 * v8), v5);
    if (*(a1 + 1) <= ++v8)
    {
      return 1;
    }
  }

LABEL_27:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, a4);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::SampledAnimation<re::Vector3<float>>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(result + 96);
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    v8 = **(result + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = *(a2 + 24);
    v10 = *(result + 80);
    if (v10 < v9)
    {
      if (*(result + 84) <= v9 || (v11 = (v9 - v10) / *(result + 76), v12 = floorf(v11), v13 = v12 + ceilf(v11 - v12), v14 = (v13 + 0.5), v6 < v14))
      {
        v8 = *(*(result + 104) + 16 * v6 - 16);
        goto LABEL_10;
      }

      if (v6 != v14 && (*(result + 73) & 1) != 0)
      {
        if (v6 > v14 - 1)
        {
          if (v6 > v14)
          {
            v8 = vmlaq_n_f32(vmulq_n_f32(*(*(result + 104) + 16 * v14), v11 - (v13 + -1.0)), *(*(result + 104) + 16 * (v14 - 1)), 1.0 - (v11 - (v13 + -1.0)));
            goto LABEL_10;
          }

LABEL_23:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_22:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_23;
      }

      if (v6 > v14)
      {
        v7 = (v13 + 0.5);
      }

      if (v6 > v7)
      {
        v8 = *(*(result + 104) + 16 * v7);
        goto LABEL_10;
      }

LABEL_21:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  v8 = *a4;
LABEL_10:
  *a6 = v8;
  return result;
}

uint64_t re::SampledAnimation<re::Vector4<float>>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(result + 96);
  if (v6 == 1)
  {
LABEL_9:
    v7 = **(result + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = *(a2 + 24);
    v9 = *(result + 80);
    if (v9 < v8)
    {
      if (*(result + 84) <= v8 || (v10 = (v8 - v9) / *(result + 76), v11 = floorf(v10), v12 = v11 + ceilf(v10 - v11), v13 = (v12 + 0.5), v6 < v13))
      {
        v7 = *(*(result + 104) + 16 * v6 - 16);
        goto LABEL_10;
      }

      if (v6 != v13 && (*(result + 73) & 1) != 0)
      {
        if (v6 > v13 - 1)
        {
          if (v6 > v13)
          {
            v7 = vaddq_f32(vmulq_n_f32(*(*(result + 104) + 16 * (v13 - 1)), 1.0 - (v10 - (v12 + -1.0))), vmulq_n_f32(*(*(result + 104) + 16 * v13), v10 - (v12 + -1.0)));
            goto LABEL_10;
          }

LABEL_23:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_22:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_23;
      }

      if (v6 <= v13)
      {
        v13 = v6 - 1;
      }

      if (v6 > v13)
      {
        v7 = *(*(result + 104) + 16 * v13);
        goto LABEL_10;
      }

LABEL_21:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  v7 = *a4;
LABEL_10:
  *a6 = v7;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::Quaternion<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v26 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v30 = 0;
    v27 = "Cannot make additive values, output values expected to match input values size.";
    v28 = &v30;
    goto LABEL_23;
  }

  if (!a2[1])
  {
    v26 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v27 = "Cannot make additive values, base values array size must not be zero.";
    v28 = buf;
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, v27, v28, 2u);
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    if (a4 == v4)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash();
      __break(1u);
      goto LABEL_25;
    }

    _Q0 = *(*a2 + 16 * v4);
    v6 = vnegq_f32(_Q0);
    _Q3 = *(*a1 + 16 * v4);
    v8 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q0), _Q3, v8);
    _S5 = _Q3.i32[3];
    v11 = vmlsq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), _Q3, _Q0, 3), _Q0, _Q3, 3);
    __asm { FMLA            S3, S5, V0.S[3] }

    v11.i32[3] = _Q3.i32[0];
    *(a3 + 16 * v4++) = v11;
    v16 = *(a1 + 1);
  }

  while (v16 > v4 && a2[1] > v4);
  if (v16 <= v4)
  {
    return 1;
  }

  _S4 = _Q0.i32[3];
  v18 = vdupq_laneq_s32(_Q0, 3);
  v19 = v4;
  if (a4 <= v4)
  {
    v20 = v4;
  }

  else
  {
    v20 = a4;
  }

  if (a4 <= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = a4;
  }

  while (v4 != v19)
  {
    _Q6 = *(*a1 + 16 * v19);
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL), _Q0), _Q6, v8);
    v23 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), _Q6, v18), v6, _Q6, 3);
    __asm { FMLA            S16, S4, V6.S[3] }

    v23.i32[3] = _S16;
    *(a3 + 16 * v19++) = v23;
    if (*(a1 + 1) <= v19)
    {
      return 1;
    }
  }

LABEL_25:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v20, a4);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::SampledAnimation<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_30:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

  v7 = *(a1 + 96);
  v8 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    v9 = *a4;
LABEL_10:
    *a6 = v9;
    return;
  }

  v10 = *(a2 + 24);
  v11 = *(a1 + 80);
  if (v11 >= v10)
  {
LABEL_9:
    v9 = **(a1 + 104);
    goto LABEL_10;
  }

  if (*(a1 + 84) <= v10 || (v12 = (v10 - v11) / *(a1 + 76), v13 = floorf(v12), v14 = v13 + ceilf(v12 - v13), v15 = (v14 + 0.5), v7 < v15))
  {
    v9 = *(*(a1 + 104) + 16 * v7 - 16);
    goto LABEL_10;
  }

  if (v7 == v15 || (*(a1 + 73) & 1) == 0)
  {
    if (v7 > v15)
    {
      v8 = (v14 + 0.5);
    }

    if (v7 > v8)
    {
      v9 = *(*(a1 + 104) + 16 * v8);
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if (v7 <= v15 - 1)
  {
LABEL_31:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v7 <= v15)
  {
    goto LABEL_32;
  }

  v16 = v12 - (v14 + -1.0);
  v17 = *(a1 + 104);
  v18 = *(v17 + 16 * (v15 - 1));
  v19 = *(v17 + 16 * v15);
  v20 = vmulq_f32(v18, v19);
  v21 = vextq_s8(v20, v20, 8uLL);
  *v20.f32 = vadd_f32(*v20.f32, *v21.f32);
  v20.f32[0] = vaddv_f32(*v20.f32);
  v21.i64[0] = 0;
  v22 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v20, v21)), 0), vnegq_f32(v19), v19);
  v23 = 1.0;
  v24 = 1.0 - v16;
  v25 = vsubq_f32(v18, v22);
  v26 = vmulq_f32(v25, v25);
  v53 = v22;
  v54 = v18;
  v27 = vaddq_f32(v18, v22);
  v28 = vmulq_f32(v27, v27);
  v29 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)))));
  v30 = v29 + v29;
  v31 = (v29 + v29) == 0.0;
  v32 = 1.0;
  if (!v31)
  {
    v32 = sinf(v30) / v30;
  }

  v33 = v32;
  v34 = vrecpe_f32(LODWORD(v32));
  v35 = vmul_f32(v34, vrecps_f32(LODWORD(v33), v34));
  LODWORD(v36) = vmul_f32(v35, vrecps_f32(LODWORD(v33), v35)).u32[0];
  if ((v24 * v30) != 0.0)
  {
    v51 = v36;
    v35.f32[0] = sinf(v24 * v30);
    v36 = v51;
    v23 = v35.f32[0] / (v24 * v30);
  }

  v35.f32[0] = v24 * (v36 * v23);
  v37 = vdupq_lane_s32(v35, 0);
  v38 = v16 * v30;
  v39 = 1.0;
  if (v38 != 0.0)
  {
    v50 = v37;
    v52 = v36;
    v40 = sinf(v38);
    v37 = v50;
    v36 = v52;
    v39 = v40 / v38;
  }

  v41 = vmlaq_f32(vmulq_n_f32(v53, v16 * (v36 * v39)), v54, v37);
  v42 = vmulq_f32(v41, v41);
  v43 = vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
  if (vaddv_f32(v43) == 0.0)
  {
    v44 = 0;
    v45 = 0x3F80000000000000;
  }

  else
  {
    v46 = vadd_f32(v43, vdup_lane_s32(v43, 1)).u32[0];
    v47 = vrsqrte_f32(v46);
    v48 = vmul_f32(v47, vrsqrts_f32(v46, vmul_f32(v47, v47)));
    v49 = vmulq_n_f32(v41, vmul_f32(v48, vrsqrts_f32(v46, vmul_f32(v48, v48))).f32[0]);
    v45 = v49.i64[1];
    v44 = v49.i64[0];
  }

  *a6 = v44;
  *(a6 + 8) = v45;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::GenericSRT<float>>(re *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v29 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v30 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_23;
  }

  v4 = a2;
  if (!*(a2 + 8))
  {
    v29 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v30 = "Cannot make additive values, base values array size must not be zero.";
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    return 0;
  }

  *buf = 0x3F8000003F800000;
  *&buf[8] = 1065353216;
  v33.i64[0] = 0;
  v33.i64[1] = 0x3F80000000000000;
  v34 = 0uLL;
  if (!a4)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v31 = _Q0;
  do
  {
    v15 = (*v4 + v8);
    v16 = v15[1];
    v17 = v15[2];
    v18 = vnegq_f32(v16);
    v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
    v18.i32[3] = v16.i32[3];
    v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v16), v17, v19);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vaddq_f32(v17, vmulq_laneq_f32(v22, v16, 3));
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v16), v22, v19);
    *buf = vdivq_f32(v31, *v15);
    v33 = v18;
    v34 = vmulq_f32(vaddq_f32(v23, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL)), vnegq_f32(*buf));
    if (a4 == v9)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash();
      __break(1u);
      goto LABEL_25;
    }

    re::AnimationValueTraits<re::GenericSRT<float>>::combine((*a1 + v8), buf, (a3 + v8));
    ++v9;
    v25 = *(a1 + 1);
    if (v25 <= v9)
    {
      break;
    }

    v8 += 48;
  }

  while (*(v4 + 8) > v9);
  if (v25 <= v9)
  {
    return 1;
  }

  v26 = v9;
  if (a4 <= v9)
  {
    v4 = v9;
  }

  else
  {
    v4 = a4;
  }

  v27 = 48 * v9;
  if (a4 <= v9)
  {
    v9 = v9;
  }

  else
  {
    v9 = a4;
  }

  while (v9 != v26)
  {
    re::AnimationValueTraits<re::GenericSRT<float>>::combine((*a1 + v27), buf, (a3 + v27));
    ++v26;
    v27 += 48;
    if (*(a1 + 1) <= v26)
    {
      return 1;
    }
  }

LABEL_25:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, a4);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::SampledAnimation<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(a1 + 96);
  if (v7 == 1)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
LABEL_11:
    a6[1] = v9;
    a6[2] = v10;
    *a6 = v8;
    return *&v8;
  }

  v11 = *(a2 + 24);
  v12 = *(a1 + 80);
  if (v12 >= v11)
  {
LABEL_9:
    v18 = *(a1 + 104);
LABEL_10:
    v8 = *v18;
    v9 = v18[1];
    v10 = v18[2];
    goto LABEL_11;
  }

  if (*(a1 + 84) <= v11 || (v13 = (v11 - v12) / *(a1 + 76), v14 = floorf(v13), v15 = v14 + ceilf(v13 - v14), v16 = (v15 + 0.5), v7 < v16))
  {
    v17 = *(a1 + 104) + 48 * v7;
    v8 = *(v17 - 48);
    v9 = *(v17 - 32);
    v10 = *(v17 - 16);
    goto LABEL_11;
  }

  if (v7 == v16 || (*(a1 + 73) & 1) == 0)
  {
    if (v7 <= v16)
    {
      v16 = v7 - 1;
    }

    if (v7 > v16)
    {
      v18 = (*(a1 + 104) + 48 * v16);
      goto LABEL_10;
    }

LABEL_23:
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  if (v7 <= v16 - 1)
  {
LABEL_24:
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v7 <= v16)
  {
    goto LABEL_25;
  }

  re::lerp<float>((*(a1 + 104) + 48 * (v16 - 1)), (*(a1 + 104) + 48 * v16), &v21, v13 - (v15 + -1.0));
  v19 = v22;
  *a6 = v21;
  a6[1] = v19;
  *&v8 = v23;
  a6[2] = v23;
  return *&v8;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::SkeletalPose>(re *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 1) != a4)
  {
    v16 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v17 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_24;
  }

  v4 = a2;
  if (!a2[1])
  {
    v16 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v17 = "Cannot make additive values, base values array size must not be zero.";
LABEL_24:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    return 0;
  }

  *buf = 0;
  v19 = &str_67;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  re::AnimationValueTraits<re::SkeletalPose>::init(buf, *a2);
  v9 = 0;
  v10 = *(a1 + 1);
  if (v10 && v4[1])
  {
    v11 = 0;
    v9 = 0;
    while (1)
    {
      re::AnimationValueTraits<re::SkeletalPose>::invert((*v4 + v11), buf);
      v13 = *(a1 + 1);
      if (v13 <= v9)
      {
        break;
      }

      if (a4 == v9)
      {
        goto LABEL_27;
      }

      re::AnimationValueTraits<re::SkeletalPose>::combine((*a1 + v11), buf, (a3 + v11));
      v9 = (v9 + 1);
      v10 = *(a1 + 1);
      if (v10 > v9)
      {
        v11 += 88;
        if (v4[1] > v9)
        {
          continue;
        }
      }

      v9 = v9;
      goto LABEL_11;
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v13);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v10 <= v9)
    {
LABEL_18:
      re::SkeletalPose::deinit(buf);
      re::SkeletalPose::~SkeletalPose(buf);
      return 1;
    }

    if (a4 <= v9)
    {
      v4 = v9;
    }

    else
    {
      v4 = a4;
    }

    v14 = 88 * v9;
    while (v4 != v9)
    {
      re::AnimationValueTraits<re::SkeletalPose>::combine((*a1 + v14), buf, (a3 + v14));
      v9 = (v9 + 1);
      v14 += 88;
      if (*(a1 + 1) <= v9)
      {
        goto LABEL_18;
      }
    }
  }

  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, a4);
  _os_crash();
  __break(1u);
LABEL_27:
  re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::SampledAnimation<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_25:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v6 = *(a1 + 96);
  if (v6 == 1)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 24);
  v9 = *(a1 + 80);
  if (v9 >= v8)
  {
LABEL_9:
    a4 = *(a1 + 104);
    goto LABEL_10;
  }

  if (*(a1 + 84) <= v8 || (v10 = (v8 - v9) / *(a1 + 76), v11 = floorf(v10), v12 = v11 + ceilf(v10 - v11), v13 = (v12 + 0.5), v6 < v13))
  {
    a4 = (*(a1 + 104) + 88 * v6 - 88);
LABEL_10:

    re::AnimationValueTraits<re::SkeletalPose>::copy(a4, a6);
    return;
  }

  if (v6 == v13 || (*(a1 + 73) & 1) == 0)
  {
    if (v6 <= v13)
    {
      v13 = v6 - 1;
    }

    if (v6 > v13)
    {
      a4 = (*(a1 + 104) + 88 * v13);
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if (v6 <= v13 - 1)
  {
LABEL_26:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v6 <= v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + 104);
  v15 = v10 - (v12 + -1.0);

  re::AnimationValueTraits<re::SkeletalPose>::interpolate((v14 + 88 * (v13 - 1)), (v14 + 88 * v13), a6, v15);
}

uint64_t *re::SampledAnimation<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_25:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v6 = *(a1 + 96);
  if (v6 == 1)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 24);
  v9 = *(a1 + 80);
  if (v9 >= v8)
  {
LABEL_9:
    a4 = *(a1 + 104);
    goto LABEL_10;
  }

  if (*(a1 + 84) <= v8 || (v10 = (v8 - v9) / *(a1 + 76), v11 = floorf(v10), v12 = v11 + ceilf(v10 - v11), v13 = (v12 + 0.5), v6 < v13))
  {
    a4 = (*(a1 + 104) + 32 * v6 - 32);
LABEL_10:

    return re::AnimationValueTraits<re::BlendShapeWeights>::copy(a4, a6);
  }

  if (v6 == v13 || (*(a1 + 73) & 1) == 0)
  {
    if (v6 <= v13)
    {
      v13 = v6 - 1;
    }

    if (v6 > v13)
    {
      a4 = (*(a1 + 104) + 32 * v13);
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if (v6 <= v13 - 1)
  {
LABEL_26:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v6 <= v13)
  {
    goto LABEL_27;
  }

  v15 = *(a1 + 104);
  v16 = v10 - (v12 + -1.0);

  return re::AnimationValueTraits<re::BlendShapeWeights>::interpolate((v15 + 32 * (v13 - 1)), (v15 + 32 * v13), a6, v16);
}

void re::SkeletalPoseSampledAnimation::evaluateCore(re::SkeletalPoseSampledAnimation *this, uint64_t a2, uint64_t a3, re::SkeletalPose *a4, uint64_t a5, re::SkeletalPose *a6)
{
  v153 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_129:
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v148 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v148 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_131;
  }

  v9 = *(this + 12);
  v10 = a4;
  if (!v9)
  {
LABEL_23:

    re::SkeletalPoseSampledAnimation::copyPose(this, a4, v10, a6);
    return;
  }

  if (v9 == 1 || (v11.i64[0] = *(a2 + 24), v11.f32[0] = *v11.i64, v12 = *(this + 20), v12 >= v11.f32[0]))
  {
    v10 = *(this + 13);
    goto LABEL_23;
  }

  if (*(this + 21) <= v11.f32[0])
  {
    v10 = (*(this + 13) + 88 * v9 - 88);
    goto LABEL_23;
  }

  v13 = (v11.f32[0] - v12) / *(this + 19);
  v14 = floorf(v13);
  v15 = v14 + ceilf(v13 - v14);
  v16 = (v15 + 0.5);
  if (*(this + 73) != 1 || v9 == v16)
  {
    if (v9 <= v16)
    {
      v31 = v9 - 1;
    }

    else
    {
      v31 = (v15 + 0.5);
    }

    if (v9 <= v31)
    {
LABEL_162:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_163;
    }

    v10 = (*(this + 13) + 88 * v31);
    goto LABEL_23;
  }

  if (v9 <= v16 - 1)
  {
LABEL_163:
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v148 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_164:
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v148 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v9 <= v16)
  {
    goto LABEL_164;
  }

  v17 = v13 - (v15 + -1.0);
  v18 = *(this + 13);
  v19 = (v18 + 88 * (v16 - 1));
  v20 = v18 + 88 * v16;
  v21 = *(a4 + 10);
  v22 = *(v21 + 216);
  v147 = v17;
  v146 = v20;
  if (v19[10] == v21)
  {
    if (*(this + 112))
    {
      if (v22)
      {
        v32 = 0;
        v33 = 0;
        v11.f32[0] = 1.0 - v17;
        v11 = vdupq_lane_s32(*v11.f32, 0);
        while (v19[3] > v33)
        {
          if (*(v20 + 24) <= v33)
          {
            goto LABEL_141;
          }

          if (*(a6 + 3) <= v33)
          {
            goto LABEL_142;
          }

          *(*(a6 + 4) + v32) = vmlaq_f32(vmulq_n_f32(*(*(v20 + 32) + v32), v17), v11, *(v19[4] + v32));
          ++v33;
          v32 += 48;
          if (v22 == v33)
          {
            goto LABEL_92;
          }
        }

LABEL_140:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_141:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_142:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_143;
      }
    }

    else if (v22)
    {
      v93 = 0;
      v94 = 0;
      while (*(a4 + 3) > v94)
      {
        if (*(a6 + 3) <= v94)
        {
          goto LABEL_139;
        }

        v11 = *(*(a4 + 4) + v93);
        *(*(a6 + 4) + v93) = v11;
        ++v94;
        v93 += 48;
        if (v22 == v94)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_138;
    }

LABEL_92:
    if (*(this + 113))
    {
      if (v22)
      {
        v95 = 0;
        v96 = 1.0 - v17;
        v97 = 16;
        while (v19[3] > v95)
        {
          if (*(v20 + 24) <= v95)
          {
            goto LABEL_146;
          }

          v98 = *(v19[4] + v97);
          v99 = *(*(v20 + 32) + v97);
          v100 = vmulq_f32(v98, v99);
          v101 = vextq_s8(v100, v100, 8uLL);
          *v100.f32 = vadd_f32(*v100.f32, *v101.f32);
          v100.f32[0] = vaddv_f32(*v100.f32);
          v101.i64[0] = 0;
          v102 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v100, v101)), 0), vnegq_f32(v99), v99);
          v103 = vsubq_f32(v98, v102);
          v104 = vmulq_f32(v103, v103);
          v141 = v102;
          v145 = v98;
          v105 = vaddq_f32(v98, v102);
          v106 = vmulq_f32(v105, v105);
          v107 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v104.i8, *&vextq_s8(v104, v104, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v106.i8, *&vextq_s8(v106, v106, 8uLL)))));
          v108 = v107 + v107;
          v109 = 1.0;
          v110 = 1.0;
          if ((v107 + v107) != 0.0)
          {
            v110 = sinf(v107 + v107) / v108;
          }

          if ((v96 * v108) != 0.0)
          {
            v137 = v110;
            v111 = sinf(v96 * v108);
            v110 = v137;
            v109 = v111 / (v96 * v108);
          }

          v112 = v147;
          v113 = v147 * v108;
          v114 = 1.0;
          if (v113 != 0.0)
          {
            v138 = v110;
            v115 = sinf(v113);
            v112 = v147;
            v110 = v138;
            v114 = v115 / v113;
          }

          v116 = v110;
          v117 = vrecpe_f32(LODWORD(v110));
          v118 = vmul_f32(v117, vrecps_f32(LODWORD(v116), v117));
          v119 = vmul_f32(v118, vrecps_f32(LODWORD(v116), v118)).f32[0];
          v118.f32[0] = v96 * (v119 * v109);
          v11 = vmlaq_f32(vmulq_n_f32(v141, v112 * (v119 * v114)), v145, vdupq_lane_s32(v118, 0));
          v120 = vmulq_f32(v11, v11);
          v121 = vadd_f32(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
          if (vaddv_f32(v121) == 0.0)
          {
            v122 = 0;
            v123 = 0x3F80000000000000;
          }

          else
          {
            v124 = vadd_f32(v121, vdup_lane_s32(v121, 1)).u32[0];
            v125 = vrsqrte_f32(v124);
            v126 = vmul_f32(v125, vrsqrts_f32(v124, vmul_f32(v125, v125)));
            v11 = vmulq_n_f32(v11, vmul_f32(v126, vrsqrts_f32(v124, vmul_f32(v126, v126))).f32[0]);
            v123 = v11.i64[1];
            v122 = v11.i64[0];
          }

          if (*(a6 + 3) <= v95)
          {
            goto LABEL_147;
          }

          v127 = (*(a6 + 4) + v97);
          *v127 = v122;
          v127[1] = v123;
          ++v95;
          v97 += 48;
          if (v22 == v95)
          {
            goto LABEL_114;
          }
        }

LABEL_145:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_146:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_147:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_148;
      }
    }

    else if (v22)
    {
      v128 = 0;
      v129 = 16;
      while (*(a4 + 3) > v128)
      {
        if (*(a6 + 3) <= v128)
        {
          goto LABEL_144;
        }

        v11 = *(*(a4 + 4) + v129);
        *(*(a6 + 4) + v129) = v11;
        ++v128;
        v129 += 48;
        if (v22 == v128)
        {
          goto LABEL_114;
        }
      }

LABEL_143:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_144:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_145;
    }

LABEL_114:
    if (*(this + 114))
    {
      if (v22)
      {
        v130 = 0;
        v11.f32[0] = 1.0 - v147;
        v131 = vdupq_lane_s32(*v11.f32, 0);
        v132 = 32;
        while (v19[3] > v130)
        {
          if (*(v20 + 24) <= v130)
          {
            goto LABEL_151;
          }

          if (*(a6 + 3) <= v130)
          {
            goto LABEL_152;
          }

          *(*(a6 + 4) + v132) = vmlaq_f32(vmulq_n_f32(*(*(v20 + 32) + v132), v147), v131, *(v19[4] + v132));
          ++v130;
          v132 += 48;
          if (v22 == v130)
          {
            return;
          }
        }

LABEL_150:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_151:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_152:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_153:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_154:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_155:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_156:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_157:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_158:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_159:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_160:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_161:
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_162;
      }
    }

    else if (v22)
    {
      v133 = 0;
      v134 = 32;
      while (*(a4 + 3) > v133)
      {
        if (*(a6 + 3) <= v133)
        {
          goto LABEL_149;
        }

        *(*(a6 + 4) + v134) = *(*(a4 + 4) + v134);
        ++v133;
        v134 += 48;
        if (v22 == v133)
        {
          return;
        }
      }

LABEL_148:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_149:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_150;
    }

    return;
  }

  if (*(this + 112))
  {
    if (v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v11.f32[0] = 1.0 - v17;
      v142 = vdupq_lane_s32(*v11.f32, 0);
      while (1)
      {
        v26 = *(a4 + 10);
        if (*(v26 + 216) <= v25)
        {
          break;
        }

        v27 = *(v26 + 224);
        v28 = v19[10];
        v29 = 0xBF58476D1CE4E5B9 * ((*(v27 + v23) >> 31) ^ (*(v27 + v23) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v28 + 232, (v27 + v23), (0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) ^ ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) >> 31), &v148);
        if (HIDWORD(v148) != 0x7FFFFFFF)
        {
          v30 = *(*(v28 + 248) + 32 * HIDWORD(v148) + 24);
          if (v19[3] <= v30)
          {
            goto LABEL_153;
          }

          if (*(v146 + 24) <= v30)
          {
            goto LABEL_154;
          }

          if (*(a6 + 3) <= v25)
          {
            goto LABEL_155;
          }

          v11 = *(v19[4] + 48 * v30);
          *(*(a6 + 4) + v24) = vmlaq_f32(vmulq_n_f32(*(*(v146 + 32) + 48 * v30), v147), v142, v11);
        }

        ++v25;
        v24 += 48;
        v23 += 16;
        if (v22 == v25)
        {
          goto LABEL_45;
        }
      }

LABEL_131:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_132:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_133:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_134;
    }

    goto LABEL_45;
  }

  if (v22)
  {
    v34 = 0;
    v35 = 0;
    while (*(a4 + 3) > v35)
    {
      if (*(a6 + 3) <= v35)
      {
        goto LABEL_130;
      }

      v11 = *(*(a4 + 4) + v34);
      *(*(a6 + 4) + v34) = v11;
      ++v35;
      v34 += 48;
      if (v22 == v35)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_129;
  }

LABEL_45:
  if (*(this + 113))
  {
    if (v22)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0xBF58476D1CE4E5B9;
      v39 = 1.0 - v147;
      v40 = 16;
      v139 = v19;
      while (1)
      {
        v41 = *(a4 + 10);
        if (*(v41 + 216) <= v37)
        {
          break;
        }

        v42 = *(v41 + 224);
        v43 = v19[10];
        v44 = ((*(v42 + v36) >> 31) ^ (*(v42 + v36) >> 1)) * v38;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v43 + 232, (v42 + v36), (0x94D049BB133111EBLL * (v44 ^ (v44 >> 27))) ^ ((0x94D049BB133111EBLL * (v44 ^ (v44 >> 27))) >> 31), &v148);
        if (HIDWORD(v148) != 0x7FFFFFFF)
        {
          v45 = v19;
          v46 = v22;
          v47 = v38;
          v48 = *(*(v43 + 248) + 32 * HIDWORD(v148) + 24);
          if (v45[3] <= v48)
          {
            goto LABEL_156;
          }

          if (*(v146 + 24) <= v48)
          {
            goto LABEL_157;
          }

          v49 = *(v139[4] + 48 * v48 + 16);
          v50 = *(*(v146 + 32) + 48 * v48 + 16);
          v51 = vmulq_f32(v49, v50);
          v52 = vextq_s8(v51, v51, 8uLL);
          *v51.f32 = vadd_f32(*v51.f32, *v52.f32);
          v51.f32[0] = vaddv_f32(*v51.f32);
          v52.i64[0] = 0;
          v53 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v51, v52)), 0), vnegq_f32(v50), v50);
          v54 = vsubq_f32(v49, v53);
          v55 = vmulq_f32(v54, v54);
          v140 = v53;
          v143 = v49;
          v56 = vaddq_f32(v49, v53);
          v57 = vmulq_f32(v56, v56);
          v58 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL)))));
          v59 = v58 + v58;
          v60 = 1.0;
          v61 = 1.0;
          if ((v58 + v58) != 0.0)
          {
            v61 = sinf(v58 + v58) / v59;
          }

          v38 = v47;
          if ((v39 * v59) != 0.0)
          {
            v135 = v61;
            v62 = sinf(v39 * v59);
            v61 = v135;
            v60 = v62 / (v39 * v59);
          }

          v63 = v147;
          v64 = v147 * v59;
          v65 = 1.0;
          v22 = v46;
          if (v64 != 0.0)
          {
            v136 = v61;
            v66 = sinf(v64);
            v63 = v147;
            v61 = v136;
            v65 = v66 / v64;
          }

          v67 = v61;
          v68 = vrecpe_f32(LODWORD(v61));
          v69 = vmul_f32(v68, vrecps_f32(LODWORD(v67), v68));
          v70 = vmul_f32(v69, vrecps_f32(LODWORD(v67), v69)).f32[0];
          v69.f32[0] = v39 * (v70 * v60);
          v11 = vmlaq_f32(vmulq_n_f32(v140, v63 * (v70 * v65)), v143, vdupq_lane_s32(v69, 0));
          v71 = vmulq_f32(v11, v11);
          v72 = vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
          v19 = v139;
          if (vaddv_f32(v72) == 0.0)
          {
            v73 = 0;
            v74 = 0x3F80000000000000;
          }

          else
          {
            v75 = vadd_f32(v72, vdup_lane_s32(v72, 1)).u32[0];
            v76 = vrsqrte_f32(v75);
            v77 = vmul_f32(v76, vrsqrts_f32(v75, vmul_f32(v76, v76)));
            v11 = vmulq_n_f32(v11, vmul_f32(v77, vrsqrts_f32(v75, vmul_f32(v77, v77))).f32[0]);
            v74 = v11.i64[1];
            v73 = v11.i64[0];
          }

          if (*(a6 + 3) <= v37)
          {
            goto LABEL_158;
          }

          v78 = (*(a6 + 4) + v40);
          *v78 = v73;
          v78[1] = v74;
        }

        ++v37;
        v40 += 48;
        v36 += 16;
        if (v22 == v37)
        {
          goto LABEL_70;
        }
      }

LABEL_134:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_135:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_136:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_137;
    }
  }

  else if (v22)
  {
    v79 = 0;
    v80 = 16;
    while (*(a4 + 3) > v79)
    {
      if (*(a6 + 3) <= v79)
      {
        goto LABEL_133;
      }

      v11 = *(*(a4 + 4) + v80);
      *(*(a6 + 4) + v80) = v11;
      ++v79;
      v80 += 48;
      if (v22 == v79)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_132;
  }

LABEL_70:
  if (*(this + 114))
  {
    if (v22)
    {
      v81 = 0;
      v82 = 0;
      v83 = 0xBF58476D1CE4E5B9;
      v11.f32[0] = 1.0 - v147;
      v144 = vdupq_lane_s32(*v11.f32, 0);
      for (i = 32; ; i += 48)
      {
        v85 = *(a4 + 10);
        if (*(v85 + 216) <= v82)
        {
          break;
        }

        v86 = *(v85 + 224);
        v87 = v19[10];
        v88 = ((*(v86 + v81) >> 31) ^ (*(v86 + v81) >> 1)) * v83;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v87 + 232, (v86 + v81), (0x94D049BB133111EBLL * (v88 ^ (v88 >> 27))) ^ ((0x94D049BB133111EBLL * (v88 ^ (v88 >> 27))) >> 31), &v148);
        if (HIDWORD(v148) != 0x7FFFFFFF)
        {
          v89 = v83;
          v90 = *(*(v87 + 248) + 32 * HIDWORD(v148) + 24);
          if (v19[3] <= v90)
          {
            goto LABEL_159;
          }

          if (*(v146 + 24) <= v90)
          {
            goto LABEL_160;
          }

          if (*(a6 + 3) <= v82)
          {
            goto LABEL_161;
          }

          *(*(a6 + 4) + i) = vmlaq_f32(vmulq_n_f32(*(*(v146 + 32) + 48 * v90 + 32), v147), v144, *(v19[4] + 48 * v90 + 32));
          v83 = v89;
        }

        ++v82;
        v81 += 16;
        if (v22 == v82)
        {
          return;
        }
      }

LABEL_137:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_138:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_139:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_140;
    }
  }

  else if (v22)
  {
    v91 = 0;
    v92 = 32;
    while (*(a4 + 3) > v91)
    {
      if (*(a6 + 3) <= v91)
      {
        goto LABEL_136;
      }

      *(*(a6 + 4) + v92) = *(*(a4 + 4) + v92);
      ++v91;
      v92 += 48;
      if (v22 == v91)
      {
        return;
      }
    }

    goto LABEL_135;
  }
}

__n128 re::SkeletalPoseSampledAnimation::copyPose(re::SkeletalPoseSampledAnimation *this, const re::SkeletalPose *a2, const re::SkeletalPose *a3, re::SkeletalPose *a4)
{
  v118 = *MEMORY[0x1E69E9840];
  v6 = *(a4 + 10);
  v7 = *(v6 + 216);
  v8 = *(a3 + 10);
  if (v8 == v6)
  {
    if (*(this + 112) != 1 || v7 == 0)
    {
LABEL_53:
      if (*(this + 113) != 1 || v7 == 0)
      {
LABEL_61:
        if (*(this + 114) != 1 || v7 == 0)
        {
          return result;
        }

        v56 = 0;
        v57 = 32;
        while (*(a3 + 3) > v56)
        {
          if (*(a4 + 3) <= v56)
          {
            goto LABEL_140;
          }

          result = *(*(a3 + 4) + v57);
          *(*(a4 + 4) + v57) = result;
          ++v56;
          v57 += 48;
          if (v7 == v56)
          {
            return result;
          }
        }

        goto LABEL_139;
      }

      v53 = 0;
      v54 = 16;
      while (*(a3 + 3) > v53)
      {
        if (*(a4 + 3) <= v53)
        {
          goto LABEL_138;
        }

        result = *(*(a3 + 4) + v54);
        *(*(a4 + 4) + v54) = result;
        ++v53;
        v54 += 48;
        if (v7 == v53)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v50 = 0;
      v51 = 0;
      while (*(a3 + 3) > v51)
      {
        if (*(a4 + 3) <= v51)
        {
          goto LABEL_136;
        }

        result = *(*(a3 + 4) + v50);
        *(*(a4 + 4) + v50) = result;
        ++v51;
        v50 += 48;
        if (v7 == v51)
        {
          goto LABEL_53;
        }
      }

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_136:
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_138:
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_140:
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_142:
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_143;
  }

  v9 = 0x94D049BB133111EBLL;
  v10 = *(a2 + 10);
  if (v8 == v10)
  {
    if (*(this + 112) != 1 || v7 == 0)
    {
LABEL_81:
      if (*(this + 113) != 1 || v7 == 0)
      {
LABEL_92:
        if (*(this + 114) != 1 || !v7)
        {
          return result;
        }

        v76 = 0;
        v77 = 0;
        for (i = 32; ; i += 48)
        {
          v79 = *(a4 + 10);
          if (*(v79 + 216) <= v77)
          {
            break;
          }

          v80 = *(v79 + 224);
          v81 = *(a3 + 10);
          v82 = 0xBF58476D1CE4E5B9 * ((*(v80 + v76) >> 31) ^ (*(v80 + v76) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v81 + 232, (v80 + v76), (0x94D049BB133111EBLL * (v82 ^ (v82 >> 27))) ^ ((0x94D049BB133111EBLL * (v82 ^ (v82 >> 27))) >> 31), &v113);
          if (HIDWORD(v113) != 0x7FFFFFFF)
          {
            v83 = *(*(v81 + 248) + 32 * HIDWORD(v113) + 24);
            if (*(a3 + 3) <= v83)
            {
              goto LABEL_160;
            }

            if (*(a4 + 3) <= v77)
            {
              goto LABEL_161;
            }

            result = *(*(a3 + 4) + 48 * v83 + 32);
            *(*(a4 + 4) + i) = result;
          }

          ++v77;
          v76 += 16;
          if (v7 == v77)
          {
            return result;
          }
        }

        goto LABEL_146;
      }

      v68 = 0;
      v69 = 0;
      v70 = 16;
      while (1)
      {
        v71 = *(a4 + 10);
        if (*(v71 + 216) <= v69)
        {
          break;
        }

        v72 = *(v71 + 224);
        v73 = *(a3 + 10);
        v74 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v72 + v68) >> 31) ^ (*(v72 + v68) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v72 + v68) >> 31) ^ (*(v72 + v68) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v73 + 232, (v72 + v68), v74 ^ (v74 >> 31), &v113);
        if (HIDWORD(v113) != 0x7FFFFFFF)
        {
          v75 = *(*(v73 + 248) + 32 * HIDWORD(v113) + 24);
          if (*(a3 + 3) <= v75)
          {
            goto LABEL_158;
          }

          if (*(a4 + 3) <= v69)
          {
            goto LABEL_159;
          }

          result = *(*(a3 + 4) + 48 * v75 + 16);
          *(*(a4 + 4) + v70) = result;
        }

        ++v69;
        v70 += 48;
        v68 += 16;
        if (v7 == v69)
        {
          goto LABEL_92;
        }
      }

LABEL_145:
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_146:
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_147;
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    while (1)
    {
      v62 = *(a4 + 10);
      if (*(v62 + 216) <= v61)
      {
        break;
      }

      v63 = *(v62 + 224);
      v64 = *(a3 + 10);
      v65 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v63 + v59) >> 31) ^ (*(v63 + v59) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v63 + v59) >> 31) ^ (*(v63 + v59) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v64 + 232, (v63 + v59), v65 ^ (v65 >> 31), &v113);
      if (HIDWORD(v113) != 0x7FFFFFFF)
      {
        v66 = *(*(v64 + 248) + 32 * HIDWORD(v113) + 24);
        if (*(a3 + 3) <= v66)
        {
          goto LABEL_154;
        }

        if (*(a4 + 3) <= v61)
        {
          goto LABEL_155;
        }

        result = *(*(a3 + 4) + 48 * v66);
        *(*(a4 + 4) + v60) = result;
      }

      ++v61;
      v60 += 48;
      v59 += 16;
      if (v7 == v61)
      {
        goto LABEL_81;
      }
    }

LABEL_143:
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_144:
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_145;
  }

  v11 = *(this + 112);
  if (!v7)
  {
    v11 = 0;
  }

  if (v6 == v10)
  {
    if (!v11)
    {
LABEL_112:
      if (*(this + 113) != 1 || !v7)
      {
LABEL_123:
        if (*(this + 114) != 1 || !v7)
        {
          return result;
        }

        v102 = 0;
        v103 = 0;
        for (j = 32; ; j += 48)
        {
          v105 = *(a4 + 10);
          if (*(v105 + 216) <= v103)
          {
            break;
          }

          v106 = *(v105 + 224);
          v107 = *(a3 + 10);
          v108 = 0xBF58476D1CE4E5B9 * ((*(v106 + v102) >> 31) ^ (*(v106 + v102) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v107 + 232, (v106 + v102), (0x94D049BB133111EBLL * (v108 ^ (v108 >> 27))) ^ ((0x94D049BB133111EBLL * (v108 ^ (v108 >> 27))) >> 31), &v113);
          if (HIDWORD(v113) == 0x7FFFFFFF)
          {
            v109 = a2;
            if (*(a2 + 3) <= v103)
            {
              goto LABEL_171;
            }

            v110 = v103;
            if (*(a4 + 3) <= v103)
            {
              goto LABEL_172;
            }
          }

          else
          {
            v110 = *(*(v107 + 248) + 32 * HIDWORD(v113) + 24);
            if (*(a3 + 3) <= v110)
            {
              goto LABEL_170;
            }

            v109 = a3;
            if (*(a4 + 3) <= v103)
            {
              goto LABEL_173;
            }
          }

          result = *(*(v109 + 4) + 48 * v110 + 32);
          *(*(a4 + 4) + j) = result;
          ++v103;
          v102 += 16;
          if (v7 == v103)
          {
            return result;
          }
        }

LABEL_149:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_150:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_151:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_152:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_153:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_154:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_155:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_156:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_157:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_158:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_159:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_160:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_161:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_162:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_163:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_164:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_165:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_166:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_167:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_168:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_169:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_170:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_171:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_172:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_173:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_174:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_175:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_176:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_177:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_178:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_179:
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v93 = 0;
      v94 = 0;
      v95 = 16;
      while (1)
      {
        v96 = *(a4 + 10);
        if (*(v96 + 216) <= v94)
        {
          break;
        }

        v97 = *(v96 + 224);
        v98 = *(a3 + 10);
        v99 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v97 + v93) >> 31) ^ (*(v97 + v93) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v97 + v93) >> 31) ^ (*(v97 + v93) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v98 + 232, (v97 + v93), v99 ^ (v99 >> 31), &v113);
        if (HIDWORD(v113) == 0x7FFFFFFF)
        {
          v100 = a2;
          if (*(a2 + 3) <= v94)
          {
            goto LABEL_167;
          }

          v101 = v94;
          if (*(a4 + 3) <= v94)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v101 = *(*(v98 + 248) + 32 * HIDWORD(v113) + 24);
          if (*(a3 + 3) <= v101)
          {
            goto LABEL_166;
          }

          v100 = a3;
          if (*(a4 + 3) <= v94)
          {
            goto LABEL_169;
          }
        }

        result = *(*(v100 + 4) + 48 * v101 + 16);
        *(*(a4 + 4) + v95) = result;
        ++v94;
        v93 += 16;
        v95 += 48;
        if (v7 == v94)
        {
          goto LABEL_123;
        }
      }

LABEL_148:
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_149;
    }

    v84 = 0;
    v85 = 0;
    v86 = 0;
    while (1)
    {
      v87 = *(a4 + 10);
      if (*(v87 + 216) <= v86)
      {
        break;
      }

      v88 = *(v87 + 224);
      v89 = *(a3 + 10);
      v90 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v88 + v85) >> 31) ^ (*(v88 + v85) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v88 + v85) >> 31) ^ (*(v88 + v85) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v89 + 232, (v88 + v85), v90 ^ (v90 >> 31), &v113);
      if (HIDWORD(v113) == 0x7FFFFFFF)
      {
        v91 = a2;
        if (*(a2 + 3) <= v86)
        {
          goto LABEL_163;
        }

        v92 = v86;
        if (*(a4 + 3) <= v86)
        {
          goto LABEL_164;
        }
      }

      else
      {
        v92 = *(*(v89 + 248) + 32 * HIDWORD(v113) + 24);
        if (*(a3 + 3) <= v92)
        {
          goto LABEL_162;
        }

        v91 = a3;
        if (*(a4 + 3) <= v86)
        {
          goto LABEL_165;
        }
      }

      result = *(*(v91 + 4) + 48 * v92);
      *(*(a4 + 4) + v84) = result;
      ++v86;
      v85 += 16;
      v84 += 48;
      if (v7 == v86)
      {
        goto LABEL_112;
      }
    }

LABEL_147:
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_148;
  }

  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *(a4 + 10);
      if (*(v15 + 216) <= v14)
      {
        goto LABEL_141;
      }

      v16 = *(v15 + 224);
      v17 = *(a3 + 10);
      v18 = ((0xBF58476D1CE4E5B9 * ((*(v16 + v13) >> 31) ^ (*(v16 + v13) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v16 + v13) >> 31) ^ (*(v16 + v13) >> 1))) >> 27)) * v9;
      v19 = v9;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v17 + 232, (v16 + v13), v18 ^ (v18 >> 31), &v113);
      if (HIDWORD(v113) != 0x7FFFFFFF)
      {
        break;
      }

      v20 = *(a2 + 10);
      v21 = ((0xBF58476D1CE4E5B9 * ((*(v16 + v13) >> 31) ^ (*(v16 + v13) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v16 + v13) >> 31) ^ (*(v16 + v13) >> 1))) >> 27)) * v19;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v20 + 232, (v16 + v13), v21 ^ (v21 >> 31), &v113);
      v9 = v19;
      if (HIDWORD(v113) != 0x7FFFFFFF)
      {
        v23 = *(*(v20 + 248) + 32 * HIDWORD(v113) + 24);
        v24 = a2;
        if (*(a2 + 3) <= v23)
        {
          goto LABEL_174;
        }

        if (*(a4 + 3) <= v14)
        {
          goto LABEL_175;
        }

LABEL_16:
        result = *(*(v24 + 4) + 48 * v23);
        *(*(a4 + 4) + v12) = result;
      }

      ++v14;
      v13 += 16;
      v12 += 48;
      if (v7 == v14)
      {
        goto LABEL_18;
      }
    }

    v23 = *(*(v17 + 248) + 32 * HIDWORD(v113) + 24);
    if (*(a3 + 3) <= v23)
    {
      goto LABEL_150;
    }

    v24 = a3;
    v9 = 0x94D049BB133111EBLL;
    if (*(a4 + 3) <= v14)
    {
      goto LABEL_151;
    }

    goto LABEL_16;
  }

LABEL_18:
  if (*(this + 113) == 1 && v7)
  {
    v25 = 0;
    v26 = 0;
    v27 = 16;
    while (1)
    {
      v28 = *(a4 + 10);
      if (*(v28 + 216) <= v26)
      {
        goto LABEL_142;
      }

      v29 = *(v28 + 224);
      v30 = *(a3 + 10);
      v31 = ((0xBF58476D1CE4E5B9 * ((*(v29 + v25) >> 31) ^ (*(v29 + v25) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v29 + v25) >> 31) ^ (*(v29 + v25) >> 1))) >> 27)) * v9;
      v32 = v9;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v30 + 232, (v29 + v25), v31 ^ (v31 >> 31), &v113);
      if (HIDWORD(v113) != 0x7FFFFFFF)
      {
        break;
      }

      v33 = *(a2 + 10);
      v34 = ((0xBF58476D1CE4E5B9 * ((*(v29 + v25) >> 31) ^ (*(v29 + v25) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v29 + v25) >> 31) ^ (*(v29 + v25) >> 1))) >> 27)) * v32;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v33 + 232, (v29 + v25), v34 ^ (v34 >> 31), &v113);
      v9 = v32;
      if (HIDWORD(v113) != 0x7FFFFFFF)
      {
        v35 = *(*(v33 + 248) + 32 * HIDWORD(v113) + 24);
        v36 = a2;
        if (*(a2 + 3) <= v35)
        {
          goto LABEL_176;
        }

        if (*(a4 + 3) <= v26)
        {
          goto LABEL_177;
        }

LABEL_29:
        result = *(*(v36 + 4) + 48 * v35 + 16);
        *(*(a4 + 4) + v27) = result;
      }

      ++v26;
      v25 += 16;
      v27 += 48;
      if (v7 == v26)
      {
        goto LABEL_31;
      }
    }

    v35 = *(*(v30 + 248) + 32 * HIDWORD(v113) + 24);
    if (*(a3 + 3) <= v35)
    {
      goto LABEL_152;
    }

    v36 = a3;
    v9 = 0x94D049BB133111EBLL;
    if (*(a4 + 3) <= v26)
    {
      goto LABEL_153;
    }

    goto LABEL_29;
  }

LABEL_31:
  if (*(this + 114) == 1 && v7)
  {
    v37 = 0;
    v38 = 0;
    for (k = 32; ; k += 48)
    {
      v40 = *(a4 + 10);
      if (*(v40 + 216) <= v38)
      {
        goto LABEL_144;
      }

      v41 = *(v40 + 224);
      v42 = *(a3 + 10);
      v43 = ((0xBF58476D1CE4E5B9 * ((*(v41 + v37) >> 31) ^ (*(v41 + v37) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v41 + v37) >> 31) ^ (*(v41 + v37) >> 1))) >> 27)) * v9;
      v44 = v9;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v42 + 232, (v41 + v37), v43 ^ (v43 >> 31), &v113);
      if (HIDWORD(v113) != 0x7FFFFFFF)
      {
        break;
      }

      v45 = *(a2 + 10);
      v46 = ((0xBF58476D1CE4E5B9 * ((*(v41 + v37) >> 31) ^ (*(v41 + v37) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v41 + v37) >> 31) ^ (*(v41 + v37) >> 1))) >> 27)) * v44;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v45 + 232, (v41 + v37), v46 ^ (v46 >> 31), &v113);
      v9 = v44;
      if (HIDWORD(v113) != 0x7FFFFFFF)
      {
        v47 = *(*(v45 + 248) + 32 * HIDWORD(v113) + 24);
        v48 = a2;
        if (*(a2 + 3) <= v47)
        {
          goto LABEL_178;
        }

        if (*(a4 + 3) <= v38)
        {
          goto LABEL_179;
        }

LABEL_42:
        result = *(*(v48 + 4) + 48 * v47 + 32);
        *(*(a4 + 4) + k) = result;
      }

      ++v38;
      v37 += 16;
      if (v7 == v38)
      {
        return result;
      }
    }

    v47 = *(*(v42 + 248) + 32 * HIDWORD(v113) + 24);
    if (*(a3 + 3) <= v47)
    {
      goto LABEL_156;
    }

    v48 = a3;
    v9 = 0x94D049BB133111EBLL;
    if (*(a4 + 3) <= v38)
    {
      goto LABEL_157;
    }

    goto LABEL_42;
  }

  return result;
}

uint64_t *re::SampledAnimation<float>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEB80;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<float>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEB80;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<double>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEC18;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<double>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEC18;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::Vector2<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAECB0;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::Vector2<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAECB0;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::Vector3<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAED48;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::Vector3<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAED48;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::Vector4<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEDE0;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::Vector4<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEDE0;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::Quaternion<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEE78;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::Quaternion<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEE78;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::GenericSRT<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEF10;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::GenericSRT<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEF10;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

void *re::SampledAnimation<re::SkeletalPose>::~SampledAnimation(void *a1)
{
  *a1 = &unk_1F5CAEFA8;
  v2 = (a1 + 5);
  re::FixedArray<re::SkeletalPose>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::SkeletalPose>::~SampledAnimation(void *a1)
{
  *a1 = &unk_1F5CAEFA8;
  v2 = (a1 + 5);
  re::FixedArray<re::SkeletalPose>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

void re::SkeletalPoseSampledAnimation::~SkeletalPoseSampledAnimation(re::SkeletalPoseSampledAnimation *this)
{
  *this = &unk_1F5CAEFA8;
  v2 = (this + 40);
  re::FixedArray<re::SkeletalPose>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEFA8;
  v2 = (this + 40);
  re::FixedArray<re::SkeletalPose>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SampledAnimation<re::BlendShapeWeights>::~SampledAnimation(void *a1)
{
  *a1 = &unk_1F5CAF040;
  v2 = (a1 + 5);
  re::FixedArray<re::BlendShapeWeights>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::BlendShapeWeights>::~SampledAnimation(void *a1)
{
  *a1 = &unk_1F5CAF040;
  v2 = (a1 + 5);
  re::FixedArray<re::BlendShapeWeights>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::BlendShapeWeights>::animationValueType()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 109);
}

float re::AnimationImpl<re::BlendShapeWeights>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<re::BlendShapeWeights>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 184, 8);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACEF0;
  *(v2 + 112) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  return result;
}

uint64_t re::AnimationImpl<re::BlendShapeWeights>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v5 = this;
    v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    this = v5;
    if (v4)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0);
      v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      this = v5;
    }
  }

  if (*(v2 + 109) != *this)
  {
    return 0;
  }

  result = re::BindPoint::valueUntyped(this);
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

void re::Animation<re::BlendShapeWeights>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

uint64_t re::AnimationImpl<re::BlendShapeWeights>::evaluate(_DWORD *a1, _BYTE *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  if (a3)
  {
    v12 = a2[16] != 1 || *a2 == 2;
    if (!v12 || (result = re::AnimationValueTraits<re::BlendShapeWeights>::copy(a4, a6), a1[2] == 49))
    {
      v14 = *(*a1 + 120);

      return v14(a1, a2, a3, a4, a5, a6);
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::FixedArray<re::SkeletalPose>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 88 * v2;
      do
      {
        re::SkeletalPose::~SkeletalPose(v4);
        v4 = (v6 + 88);
        v5 -= 88;
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

void *re::FixedArray<re::BlendShapeWeights>::deinit(void *result)
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
        re::BlendShapeWeights::~BlendShapeWeights(v4);
        v4 = (v6 + 32);
        v5 -= 32;
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

uint64_t re::StateMachineParameterBinding::indexOf@<X0>(uint64_t result@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v8 = 0;
    v9 = *(result + 32);
    while (1)
    {
      result = re::StringID::operator==(v9, a2);
      if (result)
      {
        if (*(v9 + 16) == a3)
        {
          break;
        }
      }

      ++v8;
      v9 += 40;
      if (v5 == v8)
      {
        goto LABEL_6;
      }
    }

    *a4 = 1;
    *(a4 + 8) = v8;
  }

  else
  {
LABEL_6:
    *a4 = 0;
  }

  return result;
}

unint64_t *re::StateMachineParameterBinding::setBindTarget(re::StateMachineParameterBinding *this, unint64_t a2, const re::StringID *a3)
{
  if (*(this + 2) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = re::StringID::operator=((*(this + 4) + 40 * a2 + 24), a3);
  ++*(this + 6);
  return result;
}

void re::StateMachineParameterBinding::add(void *a1, const StringID *a2, char a3, const StringID *a4)
{
  re::StringID::StringID(&v8, a2);
  v9 = a3;
  re::StringID::StringID(v10, a4);
  v7 = re::DynamicArray<re::StateMachineParameterBindingItem>::add(a1, &v8);
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  v10[0] = 0;
  v10[1] = &str_67;
  if (v8)
  {
    if (v8)
    {
    }
  }
}

void *re::DynamicArray<re::StateMachineParameterBindingItem>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::StateMachineParameterBindingItem>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 40 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = *(a2 + 16);
  v7 = a2[3];
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = a2[3] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 32) = a2[4];
  a2[3] = 0;
  a2[4] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void re::DynamicArray<re::StateMachineParameterBindingItem>::removeAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 40 * v2;
    v6 = re::StringID::operator=((v4 + 40 * a2), (v5 - 40));
    *(v6 + 16) = *(v5 - 24);
    re::StringID::operator=((v6 + 24), (v5 - 16));
    v2 = *(a1 + 16);
  }

  v7 = *(a1 + 32) + 40 * v2;
  v8 = (v7 - 40);
  re::StringID::destroyString((v7 - 16));
  re::StringID::destroyString(v8);
  --*(a1 + 16);
  ++*(a1 + 24);
}

void introspect_REStateMachineParameterType(BOOL a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F110, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18F118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F118))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18F1D8, "REStateMachineParameterType", 1, 1, 1, 1);
      qword_1EE18F1D8 = &unk_1F5D0C658;
      qword_1EE18F218 = &introspect_REStateMachineParameterType(BOOL)::enumTable;
      dword_1EE18F1E8 = 9;
      __cxa_guard_release(&qword_1EE18F118);
    }

    if (_MergedGlobals_14)
    {
      break;
    }

    _MergedGlobals_14 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18F1D8, a2);
    v37 = 0x3F37F4A355D87974;
    v38 = "REStateMachineParameterType";
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
      v6 = qword_1EE18F218;
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
      xmmword_1EE18F1F8 = v39;
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
    v28 = __cxa_guard_acquire(&qword_1EE18F110);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE18F178 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Int";
      qword_1EE18F180 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Float";
      qword_1EE18F188 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "Bool";
      qword_1EE18F190 = v36;
      __cxa_guard_release(&qword_1EE18F110);
    }
  }
}

void *re::allocInfo_StateMachineParameterBindingItem(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F128))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18F220, "StateMachineParameterBindingItem");
    __cxa_guard_release(&qword_1EE18F128);
  }

  return &unk_1EE18F220;
}

void re::initInfo_StateMachineParameterBindingItem(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x17066B9AB678EF0ALL;
  v18[1] = "StateMachineParameterBindingItem";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE18F120, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F120);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F160 = v9;
      v10 = re::introspectionAllocator(v9);
      introspect_REStateMachineParameterType(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_type";
      *(v12 + 16) = &qword_1EE18F1D8;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F168 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::StringID>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_bindTarget";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE18F170 = v16;
      __cxa_guard_release(&qword_1EE18F120);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18F160;
  *(this + 9) = re::internal::defaultConstruct<re::StateMachineParameterBindingItem>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StateMachineParameterBindingItem>;
  *(this + 13) = re::internal::defaultConstructV2<re::StateMachineParameterBindingItem>;
  *(this + 14) = re::internal::defaultDestructV2<re::StateMachineParameterBindingItem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::StateMachineParameterBindingItem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
}

void re::internal::defaultDestruct<re::StateMachineParameterBindingItem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::StateMachineParameterBindingItem>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::StateMachineParameterBindingItem>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString(a1);
}

void re::IntrospectionInfo<re::DynamicArray<re::StateMachineParameterBindingItem>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F148, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F148);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE18F148);
    }
  }

  if ((byte_1EE18F109 & 1) == 0)
  {
    v1 = qword_1EE18F130;
    if (qword_1EE18F130 || (v1 = re::allocInfo_StateMachineParameterBindingItem(a1), qword_1EE18F130 = v1, re::initInfo_StateMachineParameterBindingItem(v1, v2), (byte_1EE18F109 & 1) == 0))
    {
      byte_1EE18F109 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18F198, 0);
      qword_1EE18F1A8 = 0x2800000003;
      unk_1EE18F1B0 = v3;
      unk_1EE18F1B4 = 0;
      *&xmmword_1EE18F1B8 = 0;
      *(&xmmword_1EE18F1B8 + 1) = 0xFFFFFFFFLL;
      *algn_1EE18F1C8 = v1;
      qword_1EE18F1D0 = 0;
      qword_1EE18F198 = &unk_1F5CAF290;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18F198, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18F1B8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_StateMachineParameterBinding(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F140))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18F2B0, "StateMachineParameterBinding");
    __cxa_guard_release(&qword_1EE18F140);
  }

  return &unk_1EE18F2B0;
}

void re::initInfo_StateMachineParameterBinding(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0xFB22E2DC977D02A4;
  v13[1] = "StateMachineParameterBinding";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE18F138, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F138);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::StateMachineParameterBindingItem>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "m_bindings";
      *(v7 + 16) = &qword_1EE18F198;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE18F150 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_uint32_t(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_lastArrayVersion";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE18F158 = v11;
      __cxa_guard_release(&qword_1EE18F138);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F150;
  *(this + 9) = re::internal::defaultConstruct<re::StateMachineParameterBinding>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StateMachineParameterBinding>;
  *(this + 13) = re::internal::defaultConstructV2<re::StateMachineParameterBinding>;
  *(this + 14) = re::internal::defaultDestructV2<re::StateMachineParameterBinding>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::internal::defaultConstruct<re::StateMachineParameterBinding>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
}

uint64_t re::internal::defaultDestruct<re::StateMachineParameterBinding>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(a3);

  return re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(a3);
}

uint64_t re::internal::defaultConstructV2<re::StateMachineParameterBinding>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::StateMachineParameterBinding>(uint64_t a1)
{
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(a1);

  return re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(a1);
}

void *re::DynamicArray<re::StateMachineParameterBindingItem>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(v5, a2);
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
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 16) = *(v8 + 16);
          LOBYTE(v12) = v8[3];
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v8[3] & 1;
          v11[3] = v8[3] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[4] = v8[4];
          v8[4] = &str_67;
          v8[3] = 0;
          re::StringID::destroyString((v8 + 3));
          re::StringID::destroyString(v8);
          v11 += 5;
          v8 += 5;
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