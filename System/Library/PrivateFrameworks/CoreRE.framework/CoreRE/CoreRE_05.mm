void re::RigHierarchy::setJointParent(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v28 + 1) = 0;
  re::DynamicString::setCapacity(&v28, v9);
  re::DynamicString::operator=(&v28, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v28);
  v11 = v28;
  if (v28 && (BYTE8(v28) & 1) != 0)
  {
    v11 = (*(*v28 + 40))();
  }

  if (v10)
  {
    v29 = 0uLL;
    v12 = *(a3 + 8);
    if (v12)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }

    re::DynamicString::setCapacity(&v28, v13);
    re::DynamicString::operator=(&v28, a3);
    v14 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v28);
    if (v28 && (BYTE8(v28) & 1) != 0)
    {
      (*(*v28 + 40))();
    }

    if (v14)
    {
      v15 = *v10;
      v16 = *(a1 + 32);
      if (v16 <= *v10)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v27 = 136315906;
        *&v27[4] = "operator[]";
        *&v27[12] = 1024;
        *&v27[14] = 789;
        *&v27[18] = 2048;
        *&v27[20] = v15;
        *&v27[28] = 2048;
        *&v27[30] = v16;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        v14 = *v14;
        *(*(a1 + 34) + 8 * v15) = v14;
        v10 = *v10;
        v15 = *(a1 + 37);
        if (v15 > v10)
        {
          if (v15 > v14)
          {
            re::RigHierarchyJointTransform::setParentTransform((*(a1 + 39) + 160 * v10), (*(a1 + 39) + 160 * v14));
            *a4 = 1;
            return;
          }

LABEL_39:
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v27 = 136315906;
          *&v27[4] = "operator[]";
          *&v27[12] = 1024;
          *&v27[14] = 789;
          *&v27[18] = 2048;
          *&v27[20] = v14;
          *&v27[28] = 2048;
          *&v27[30] = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v27 = 136315906;
      *&v27[4] = "operator[]";
      *&v27[12] = 1024;
      *&v27[14] = 789;
      *&v27[18] = 2048;
      *&v27[20] = v10;
      *&v27[28] = 2048;
      *&v27[30] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }

    v21 = *(a1 + 1);
    *&v27[16] = 0;
    *&v27[24] = 0;
    v22 = *(a3 + 8);
    if (v22)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = 0;
    }

    *v27 = v21;
    *&v27[8] = 0;
    re::DynamicString::setCapacity(v27, v23);
    re::DynamicString::operator=(v27, a3);
    if (v27[8])
    {
      v24 = *&v27[16];
    }

    else
    {
      v24 = &v27[9];
    }

    re::DynamicString::format(v21, "Unknown joint parent name: %s", &v28, v24);
  }

  else
  {
    v17 = *(a1 + 1);
    *&v27[16] = 0;
    *&v27[24] = 0;
    v18 = *(a2 + 8);
    if (v18)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 0;
    }

    *v27 = v17;
    *&v27[8] = 0;
    re::DynamicString::setCapacity(v27, v19);
    re::DynamicString::operator=(v27, a2);
    if (v27[8])
    {
      v20 = *&v27[16];
    }

    else
    {
      v20 = &v27[9];
    }

    re::DynamicString::format(v17, "Unknown joint name: %s", &v28, v20);
  }

  v25 = v28;
  v26 = v29;
  *a4 = 0;
  *(a4 + 8) = 1000;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v25;
  *(a4 + 40) = v26;
  if (*v27)
  {
    if (v27[8])
    {
      (*(**v27 + 40))();
    }
  }
}

void re::RigHierarchy::clearJointParent(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v18 + 1) = 0;
  re::DynamicString::setCapacity(&v18, v7);
  re::DynamicString::operator=(&v18, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v18);
  if (v18 && (BYTE8(v18) & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  if (v8)
  {
    v9 = *v8;
    v10 = *(a1 + 32);
    if (v10 <= *v8)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v17 = 136315906;
      *&v17[4] = "operator[]";
      *&v17[12] = 1024;
      *&v17[14] = 789;
      *&v17[18] = 2048;
      *&v17[20] = v9;
      *&v17[28] = 2048;
      *&v17[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      *(*(a1 + 34) + 8 * v9) = -1;
      v9 = *v8;
      v8 = *(a1 + 37);
      if (v8 > v9)
      {
        re::RigHierarchyJointTransform::setParentTransform((*(a1 + 39) + 160 * v9), 0);
        *a3 = 1;
        return;
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v17 = 136315906;
    *&v17[4] = "operator[]";
    *&v17[12] = 1024;
    *&v17[14] = 789;
    *&v17[18] = 2048;
    *&v17[20] = v9;
    *&v17[28] = 2048;
    *&v17[30] = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 1);
  *&v17[16] = 0;
  *&v17[24] = 0;
  v12 = *(a2 + 8);
  if (v12)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 0;
  }

  *v17 = v11;
  *&v17[8] = 0;
  re::DynamicString::setCapacity(v17, v13);
  re::DynamicString::operator=(v17, a2);
  if (v17[8])
  {
    v14 = *&v17[16];
  }

  else
  {
    v14 = &v17[9];
  }

  re::DynamicString::format(v11, "Unknown joint name: %s", &v18, v14);
  v15 = v18;
  v16 = v19;
  *a3 = 0;
  *(a3 + 8) = 1000;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v15;
  *(a3 + 40) = v16;
  if (*v17)
  {
    if (v17[8])
    {
      (*(**v17 + 40))();
    }
  }
}

uint64_t re::RigHierarchy::getLocalSpaceJointScale@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v20 + 1) = 0;
  re::DynamicString::setCapacity(&v20, v7);
  re::DynamicString::operator=(&v20, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v20);
  result = v20;
  if (v20 && (BYTE8(v20) & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = *(a1 + 37);
    if (v11 <= v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v10;
      *&v19[28] = 2048;
      *&v19[30] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(*(a1 + 39) + 160 * v10 + 8);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = *(a1 + 1);
    *&v19[16] = 0;
    *&v19[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v19 = v13;
    *&v19[8] = 0;
    re::DynamicString::setCapacity(v19, v15);
    re::DynamicString::operator=(v19, a2);
    if (v19[8])
    {
      v16 = *&v19[16];
    }

    else
    {
      v16 = &v19[9];
    }

    re::DynamicString::format(v13, "Unknown joint name: %s", &v20, v16);
    v17 = v20;
    v18 = v21;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v17;
    *(a3 + 40) = v18;
    result = *v19;
    if (*v19 && (v19[8] & 1) != 0)
    {
      return (*(**v19 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getLocalSpaceJointRotation@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v20 + 1) = 0;
  re::DynamicString::setCapacity(&v20, v7);
  re::DynamicString::operator=(&v20, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v20);
  result = v20;
  if (v20 && (BYTE8(v20) & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = *(a1 + 37);
    if (v11 <= v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v10;
      *&v19[28] = 2048;
      *&v19[30] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(*(a1 + 39) + 160 * v10 + 16);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = *(a1 + 1);
    *&v19[16] = 0;
    *&v19[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v19 = v13;
    *&v19[8] = 0;
    re::DynamicString::setCapacity(v19, v15);
    re::DynamicString::operator=(v19, a2);
    if (v19[8])
    {
      v16 = *&v19[16];
    }

    else
    {
      v16 = &v19[9];
    }

    re::DynamicString::format(v13, "Unknown joint name: %s", &v20, v16);
    v17 = v20;
    v18 = v21;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v17;
    *(a3 + 40) = v18;
    result = *v19;
    if (*v19 && (v19[8] & 1) != 0)
    {
      return (*(**v19 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getLocalSpaceJointTranslation@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v20 + 1) = 0;
  re::DynamicString::setCapacity(&v20, v7);
  re::DynamicString::operator=(&v20, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v20);
  result = v20;
  if (v20 && (BYTE8(v20) & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = *(a1 + 37);
    if (v11 <= v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v10;
      *&v19[28] = 2048;
      *&v19[30] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(*(a1 + 39) + 160 * v10 + 24);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = *(a1 + 1);
    *&v19[16] = 0;
    *&v19[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v19 = v13;
    *&v19[8] = 0;
    re::DynamicString::setCapacity(v19, v15);
    re::DynamicString::operator=(v19, a2);
    if (v19[8])
    {
      v16 = *&v19[16];
    }

    else
    {
      v16 = &v19[9];
    }

    re::DynamicString::format(v13, "Unknown joint name: %s", &v20, v16);
    v17 = v20;
    v18 = v21;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v17;
    *(a3 + 40) = v18;
    result = *v19;
    if (*v19 && (v19[8] & 1) != 0)
    {
      return (*(**v19 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::setLocalSpaceJointScale@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v21 + 1) = 0;
  re::DynamicString::setCapacity(&v21, v9);
  re::DynamicString::operator=(&v21, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v21);
  if (v21 && (BYTE8(v21) & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 37);
    if (v12 <= v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      *&v20[12] = 1024;
      *&v20[14] = 789;
      *&v20[18] = 2048;
      *&v20[20] = v11;
      *&v20[28] = 2048;
      *&v20[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 39) + 160 * v11), a3);
    *a4 = 1;
  }

  else
  {
    v14 = *(a1 + 1);
    *&v20[16] = 0;
    *&v20[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v20 = v14;
    *&v20[8] = 0;
    re::DynamicString::setCapacity(v20, v16);
    re::DynamicString::operator=(v20, a2);
    if (v20[8])
    {
      v17 = *&v20[16];
    }

    else
    {
      v17 = &v20[9];
    }

    re::DynamicString::format(v14, "Unknown joint name: %s", &v21, v17);
    v18 = v21;
    v19 = v22;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    result = *v20;
    if (*v20 && (v20[8] & 1) != 0)
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::setLocalSpaceJointRotation@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v21 + 1) = 0;
  re::DynamicString::setCapacity(&v21, v9);
  re::DynamicString::operator=(&v21, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v21);
  if (v21 && (BYTE8(v21) & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 37);
    if (v12 <= v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      *&v20[12] = 1024;
      *&v20[14] = 789;
      *&v20[18] = 2048;
      *&v20[20] = v11;
      *&v20[28] = 2048;
      *&v20[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 39) + 160 * v11), a3);
    *a4 = 1;
  }

  else
  {
    v14 = *(a1 + 1);
    *&v20[16] = 0;
    *&v20[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v20 = v14;
    *&v20[8] = 0;
    re::DynamicString::setCapacity(v20, v16);
    re::DynamicString::operator=(v20, a2);
    if (v20[8])
    {
      v17 = *&v20[16];
    }

    else
    {
      v17 = &v20[9];
    }

    re::DynamicString::format(v14, "Unknown joint name: %s", &v21, v17);
    v18 = v21;
    v19 = v22;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    result = *v20;
    if (*v20 && (v20[8] & 1) != 0)
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::setLocalSpaceJointTranslation@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v21 + 1) = 0;
  re::DynamicString::setCapacity(&v21, v9);
  re::DynamicString::operator=(&v21, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v21);
  if (v21 && (BYTE8(v21) & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 37);
    if (v12 <= v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      *&v20[12] = 1024;
      *&v20[14] = 789;
      *&v20[18] = 2048;
      *&v20[20] = v11;
      *&v20[28] = 2048;
      *&v20[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setLocalSpaceJointTranslation((*(a1 + 39) + 160 * v11), a3);
    *a4 = 1;
  }

  else
  {
    v14 = *(a1 + 1);
    *&v20[16] = 0;
    *&v20[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v20 = v14;
    *&v20[8] = 0;
    re::DynamicString::setCapacity(v20, v16);
    re::DynamicString::operator=(v20, a2);
    if (v20[8])
    {
      v17 = *&v20[16];
    }

    else
    {
      v17 = &v20[9];
    }

    re::DynamicString::format(v14, "Unknown joint name: %s", &v21, v17);
    v18 = v21;
    v19 = v22;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    result = *v20;
    if (*v20 && (v20[8] & 1) != 0)
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getModelSpaceJointScale@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v20 + 1) = 0;
  re::DynamicString::setCapacity(&v20, v7);
  re::DynamicString::operator=(&v20, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v20);
  result = v20;
  if (v20 && (BYTE8(v20) & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = *(a1 + 37);
    if (v11 <= v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v10;
      *&v19[28] = 2048;
      *&v19[30] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(*(a1 + 39) + 160 * v10 + 32);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = *(a1 + 1);
    *&v19[16] = 0;
    *&v19[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v19 = v13;
    *&v19[8] = 0;
    re::DynamicString::setCapacity(v19, v15);
    re::DynamicString::operator=(v19, a2);
    if (v19[8])
    {
      v16 = *&v19[16];
    }

    else
    {
      v16 = &v19[9];
    }

    re::DynamicString::format(v13, "Unknown joint name: %s", &v20, v16);
    v17 = v20;
    v18 = v21;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v17;
    *(a3 + 40) = v18;
    result = *v19;
    if (*v19 && (v19[8] & 1) != 0)
    {
      return (*(**v19 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getModelSpaceJointRotation@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v20 + 1) = 0;
  re::DynamicString::setCapacity(&v20, v7);
  re::DynamicString::operator=(&v20, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v20);
  result = v20;
  if (v20 && (BYTE8(v20) & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = *(a1 + 37);
    if (v11 <= v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v10;
      *&v19[28] = 2048;
      *&v19[30] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(*(a1 + 39) + 160 * v10 + 40);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = *(a1 + 1);
    *&v19[16] = 0;
    *&v19[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v19 = v13;
    *&v19[8] = 0;
    re::DynamicString::setCapacity(v19, v15);
    re::DynamicString::operator=(v19, a2);
    if (v19[8])
    {
      v16 = *&v19[16];
    }

    else
    {
      v16 = &v19[9];
    }

    re::DynamicString::format(v13, "Unknown joint name: %s", &v20, v16);
    v17 = v20;
    v18 = v21;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v17;
    *(a3 + 40) = v18;
    result = *v19;
    if (*v19 && (v19[8] & 1) != 0)
    {
      return (*(**v19 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getModelSpaceJointTranslation@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v20 + 1) = 0;
  re::DynamicString::setCapacity(&v20, v7);
  re::DynamicString::operator=(&v20, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v20);
  result = v20;
  if (v20 && (BYTE8(v20) & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = *(a1 + 37);
    if (v11 <= v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v10;
      *&v19[28] = 2048;
      *&v19[30] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(*(a1 + 39) + 160 * v10 + 48);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = *(a1 + 1);
    *&v19[16] = 0;
    *&v19[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v19 = v13;
    *&v19[8] = 0;
    re::DynamicString::setCapacity(v19, v15);
    re::DynamicString::operator=(v19, a2);
    if (v19[8])
    {
      v16 = *&v19[16];
    }

    else
    {
      v16 = &v19[9];
    }

    re::DynamicString::format(v13, "Unknown joint name: %s", &v20, v16);
    v17 = v20;
    v18 = v21;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v17;
    *(a3 + 40) = v18;
    result = *v19;
    if (*v19 && (v19[8] & 1) != 0)
    {
      return (*(**v19 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::setModelSpaceJointScale@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v21 + 1) = 0;
  re::DynamicString::setCapacity(&v21, v9);
  re::DynamicString::operator=(&v21, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v21);
  if (v21 && (BYTE8(v21) & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 37);
    if (v12 <= v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      *&v20[12] = 1024;
      *&v20[14] = 789;
      *&v20[18] = 2048;
      *&v20[20] = v11;
      *&v20[28] = 2048;
      *&v20[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setModelSpaceJointScale((*(a1 + 39) + 160 * v11), a3);
    *a4 = 1;
  }

  else
  {
    v14 = *(a1 + 1);
    *&v20[16] = 0;
    *&v20[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v20 = v14;
    *&v20[8] = 0;
    re::DynamicString::setCapacity(v20, v16);
    re::DynamicString::operator=(v20, a2);
    if (v20[8])
    {
      v17 = *&v20[16];
    }

    else
    {
      v17 = &v20[9];
    }

    re::DynamicString::format(v14, "Unknown joint name: %s", &v21, v17);
    v18 = v21;
    v19 = v22;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    result = *v20;
    if (*v20 && (v20[8] & 1) != 0)
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::setModelSpaceJointRotation@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v21 + 1) = 0;
  re::DynamicString::setCapacity(&v21, v9);
  re::DynamicString::operator=(&v21, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v21);
  if (v21 && (BYTE8(v21) & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 37);
    if (v12 <= v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      *&v20[12] = 1024;
      *&v20[14] = 789;
      *&v20[18] = 2048;
      *&v20[20] = v11;
      *&v20[28] = 2048;
      *&v20[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setModelSpaceJointRotation((*(a1 + 39) + 160 * v11), a3);
    *a4 = 1;
  }

  else
  {
    v14 = *(a1 + 1);
    *&v20[16] = 0;
    *&v20[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v20 = v14;
    *&v20[8] = 0;
    re::DynamicString::setCapacity(v20, v16);
    re::DynamicString::operator=(v20, a2);
    if (v20[8])
    {
      v17 = *&v20[16];
    }

    else
    {
      v17 = &v20[9];
    }

    re::DynamicString::format(v14, "Unknown joint name: %s", &v21, v17);
    v18 = v21;
    v19 = v22;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    result = *v20;
    if (*v20 && (v20[8] & 1) != 0)
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::setModelSpaceJointTranslation@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v21 + 1) = 0;
  re::DynamicString::setCapacity(&v21, v9);
  re::DynamicString::operator=(&v21, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v21);
  if (v21 && (BYTE8(v21) & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 37);
    if (v12 <= v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      *&v20[12] = 1024;
      *&v20[14] = 789;
      *&v20[18] = 2048;
      *&v20[20] = v11;
      *&v20[28] = 2048;
      *&v20[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setModelSpaceJointTranslation((*(a1 + 39) + 160 * v11), a3);
    *a4 = 1;
  }

  else
  {
    v14 = *(a1 + 1);
    *&v20[16] = 0;
    *&v20[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v20 = v14;
    *&v20[8] = 0;
    re::DynamicString::setCapacity(v20, v16);
    re::DynamicString::operator=(v20, a2);
    if (v20[8])
    {
      v17 = *&v20[16];
    }

    else
    {
      v17 = &v20[9];
    }

    re::DynamicString::format(v14, "Unknown joint name: %s", &v21, v17);
    v18 = v21;
    v19 = v22;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    result = *v20;
    if (*v20 && (v20[8] & 1) != 0)
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getBindPoseHierarchy@<X0>(re::RigHierarchy *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 44) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 60) = 0x7FFFFFFFLL;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0x7FFFFFFFLL;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = 0;
  *(a3 + 144) = 0;
  v4 = (a3 + 312);
  *(a3 + 352) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 304) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 344) = 0;
  *v4 = 0u;
  v4[1] = 0u;
  v5 = *this;
  v6 = *(this + 1);
  v7 = *(this + 2);
  re::RigHierarchy::jointDescription(this, a2, &v11);
  v8 = v12;
  re::RigHierarchy::init(a3, v5, v6, v7, v13, v12);
  result = v11;
  if (v11 && v8)
  {
    v10 = *(*v11 + 40);

    return v10();
  }

  return result;
}

void re::Skeleton::~Skeleton(re::Skeleton *this)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
  re::FixedArray<re::StringID>::deinit(this + 2);
  re::StringID::destroyString(this);
}

void *re::FixedArray<re::FixedArray<unsigned int>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 24 * v2;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v4);
        v4 += 3;
        v5 -= 24;
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

__n128 re::DynamicArray<re::EvaluationSRT>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::EvaluationSRT>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 24 * v4);
  result = *a2;
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::EvaluationSRT>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::EvaluationSRT>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationSRT>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = re::DynamicString::operator==(v10 + 56 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 56 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
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

unint64_t re::Hash<re::DynamicString>::operator()(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a2 + 9;
  v6 = *(a2 + 16);
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  MurmurHash3_x64_128(v7, v4, 0, v9);
  return (v9[1] + (v9[0] << 6) + (v9[0] >> 2) - 0x61C8864680B583E9) ^ v9[0];
}

void *re::DynamicArray<re::StringID>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::StringID>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::StringID>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::decomposeScaleRotationTranslation<float>(uint64_t result, int32x4_t *a2, void *a3, _OWORD *a4)
{
  *a4 = *(result + 48);
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = vmulq_f32(*result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL))), vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)));
  v7 = -1.0;
  if ((v6.f32[2] + vaddv_f32(*v6.f32)) > 0.0)
  {
    v7 = 1.0;
  }

  v8 = vmulq_f32(*result, *result);
  v9 = vmulq_f32(v4, v4);
  v10 = vadd_f32(vzip1_s32(*v8.i8, *v9.i8), vzip2_s32(*v8.i8, *v9.i8));
  v11 = vextq_s8(v8, v8, 8uLL);
  *v11.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v11.f32, *&vextq_s8(v9, v9, 8uLL)), v10));
  v12 = vmulq_f32(v5, v5);
  v11.i32[2] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  v13 = vmulq_n_f32(v11, v7);
  *a2 = v13;
  v14 = v13.i64[1];
  v15 = vdupq_laneq_s32(v13, 2);
  v16 = v13.i64[0];
  v17 = vdivq_f32(*result, vdupq_lane_s32(*v13.i8, 0));
  v18 = vdivq_f32(*(result + 16), vdupq_lane_s32((__PAIR128__(v14, v16) >> 32), 0));
  v19 = vdivq_f32(*(result + 32), v15);
  v20 = vmulq_f32(v17, v17);
  v15.f32[0] = vaddv_f32(*v20.f32);
  v20.i32[1] = 0;
  *&v21 = v20.f32[2] + v15.f32[0];
  *v15.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v15.f32[0]));
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v21, vmul_f32(*v15.f32, *v15.f32)));
  v22 = vmulq_n_f32(v17, vmul_f32(*v15.f32, vrsqrts_f32(v21, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v23 = vmulq_f32(v22, v18);
  v24 = vmulq_f32(v22, v22);
  v24.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
  v25 = vsubq_f32(v18, vmulq_n_f32(v22, (v23.f32[2] + vaddv_f32(*v23.f32)) / v24.f32[0]));
  v26 = vmulq_f32(v25, v25);
  *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
  *v26.f32 = vrsqrte_f32(v27);
  *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v28 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
  v29 = vmulq_f32(v22, v19);
  v30 = vsubq_f32(v19, vmulq_n_f32(v22, (v29.f32[2] + vaddv_f32(*v29.f32)) / v24.f32[0]));
  v31 = vmulq_f32(v19, v28);
  v32 = vmulq_f32(v28, v28);
  v33 = vsubq_f32(v30, vmulq_n_f32(v28, (v31.f32[2] + vaddv_f32(*v31.f32)) / (v32.f32[2] + vaddv_f32(*v32.f32))));
  v34 = vmulq_f32(v33, v33);
  v32.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(v32.u32[0]);
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v34.f32, *v34.f32)));
  v35 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  v36 = (v22.f32[0] + v28.f32[1]) + v35.f32[2];
  if (v36 >= 0.0)
  {
    v46 = sqrtf(v36 + 1.0);
    v47 = v46 + v46;
    v20.f32[0] = v46 + v46;
    v48 = vrecpe_f32(*v20.f32);
    v49 = vmul_f32(v48, vrecps_f32(*v20.f32, v48));
    v50 = vmul_f32(v49, vrecps_f32(*v20.f32, v49)).f32[0];
    v42 = (v28.f32[2] - v35.f32[1]) * v50;
    v43 = (v35.f32[0] - v22.f32[2]) * v50;
    v44 = (v22.f32[1] - v28.f32[0]) * v50;
    v51 = v47 * 0.25;
  }

  else
  {
    if (v22.f32[0] < v28.f32[1] || v22.f32[0] < v35.f32[2])
    {
      v52 = 1.0 - v22.f32[0];
      if (v28.f32[1] >= v35.f32[2])
      {
        v57 = sqrtf(v28.f32[1] + (v52 - v35.f32[2]));
        v58 = v57 + v57;
        v59 = vrecpe_f32(COERCE_UNSIGNED_INT(v57 + v57));
        v60 = vmul_f32(v59, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v59));
        v41 = vmul_f32(v60, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v60)).f32[0];
        v42 = (v22.f32[1] + v28.f32[0]) * v41;
        v43 = v58 * 0.25;
        v44 = (v28.f32[2] + v35.f32[1]) * v41;
        v45 = v35.f32[0] - v22.f32[2];
      }

      else
      {
        v53 = sqrtf((v52 - v28.f32[1]) + v35.f32[2]);
        v54 = v53 + v53;
        v55 = vrecpe_f32(COERCE_UNSIGNED_INT(v53 + v53));
        v56 = vmul_f32(v55, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v55));
        v41 = vmul_f32(v56, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v56)).f32[0];
        v42 = (v22.f32[2] + v35.f32[0]) * v41;
        v43 = (v28.f32[2] + v35.f32[1]) * v41;
        v44 = v54 * 0.25;
        v45 = v22.f32[1] - v28.f32[0];
      }
    }

    else
    {
      v37 = sqrtf(v22.f32[0] + ((1.0 - v28.f32[1]) - v35.f32[2]));
      *&v38 = v37 + v37;
      v39 = vrecpe_f32(v38);
      v40 = vmul_f32(v39, vrecps_f32(v38, v39));
      v41 = vmul_f32(v40, vrecps_f32(v38, v40)).f32[0];
      v42 = *&v38 * 0.25;
      v43 = (v22.f32[1] + v28.f32[0]) * v41;
      v44 = (v22.f32[2] + v35.f32[0]) * v41;
      v45 = v28.f32[2] - v35.f32[1];
    }

    v51 = v45 * v41;
  }

  *a3 = __PAIR64__(LODWORD(v43), LODWORD(v42));
  a3[1] = __PAIR64__(LODWORD(v51), LODWORD(v44));
  return result;
}

void *re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
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
        v10 = &v8[11 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[2] = *(v8 + 2);
          *v11 = v12;
          v13 = *(v8 + 32);
          *(v11 + 32) = v13;
          if (v13 == 1)
          {
            v14 = v8[3];
            v15 = v8[5];
            *(v11 + 4) = v8[4];
            *(v11 + 5) = v15;
            *(v11 + 3) = v14;
          }

          v16 = *(v8 + 96);
          *(v11 + 96) = v16;
          if (v16 == 1)
          {
            v17 = v8[7];
            v18 = v8[8];
            v19 = v8[10];
            *(v11 + 9) = v8[9];
            *(v11 + 10) = v19;
            *(v11 + 7) = v17;
            *(v11 + 8) = v18;
          }

          v8 += 11;
          v11 += 22;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigHierarchyJointDescription>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v11 = v9 + 56 * v8;
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

  v16 = *(v9 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 56 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 56 * v17) & 0x7FFFFFFF;
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

size_t re::Hash<re::DynamicString>::operator()(int a1, char *__s)
{
  v4[2] = *MEMORY[0x1E69E9840];
  result = strlen(__s);
  if (result)
  {
    MurmurHash3_x64_128(__s, result, 0, v4);
    return (v4[1] + (v4[0] << 6) + (v4[0] >> 2) - 0x61C8864680B583E9) ^ v4[0];
  }

  return result;
}

uint64_t re::make::shared::object<re::SkeletalPoseJointDefinition,re::FixedArray<re::StringID>,re::Skeleton>@<X0>(re *a1@<X0>, const StringID *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 280, 8);
  result = re::SkeletalPoseJointDefinition::SkeletalPoseJointDefinition(v7, a1, a2);
  *a3 = result;
  return result;
}

uint64_t re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(void *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3[3])
  {
    return 0;
  }

  v7 = *a3;
  v8 = &unk_1EE187000;
  {
    *v15 = a2;
    v8 = &unk_1EE187000;
    a2 = *v15;
    if (v14)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v8 = &unk_1EE187000;
      a2 = *v15;
    }
  }

  if (v7 != v8[248])
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v19[0] = v10;
  if (v10 >= a1[133])
  {
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a1 + 131, v10 + 1);
  }

  else if (*(a1[135] + 56 * v10 + 24))
  {
    return 0;
  }

  re::DynamicArray<unsigned long>::add(a1 + 176, v19);
  v16 = *a3;
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v17, a3 + 1);
  v18 = a4;
  v11 = v19[0];
  v12 = a1[133];
  if (v12 <= v19[0])
  {
    v19[1] = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = a1[135] + 56 * v19[0];
  *v13 = v16;
  re::DynamicArray<re::RigDataValue>::operator=(v13 + 8, v17);
  *(v13 + 48) = v18;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v17);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v17);
  return 1;
}

void *re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 56 * a2 + 8;
    v9 = a2;
    do
    {
      v10 = v3[4];
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v10 + v8);
      result = re::DynamicArray<re::BindPoint::BindPointData>::deinit(v10 + v8);
      ++v9;
      v8 += 56;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::EvaluationContextManager::BindPointReference>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 40) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0;
        *(v7 + 48) = 0;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::BindPoint::BindPointData>::copy(a1, a2);
  }

  return a1;
}

BOOL re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
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
      re::DynamicString::deinit((v10 + 2));
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

BOOL re::TransitionConditionInt::evaluate(re::TransitionConditionInt *this, const re::StateParameterBlackboard *a2)
{
  v9 = 0;
  result = re::StateParameterBlackboard::getStateParameterIntValue(a2, (this + 8), &v9);
  if (result)
  {
    v4 = *(this + 4);
    v5 = *(this + 24);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        return v9 <= v4;
      }

      v6 = v9 > v4;
      v7 = v9 >= v4;
      if (v5 != 5)
      {
        v7 = 0;
      }

      v8 = v5 == 4;
    }

    else
    {
      if (!*(this + 24))
      {
        return v9 == v4;
      }

      v6 = v9 != v4;
      v7 = v9 < v4;
      if (v5 != 2)
      {
        v7 = 0;
      }

      v8 = v5 == 1;
    }

    if (v8)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

BOOL re::StateParameterBlackboard::getStateParameterIntValue(re::StateParameterBlackboard *this, const re::StringID *a2, uint64_t *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  return v8 != 0x7FFFFFFF && (re::StateParameterInt::getValue(*(*(this + 3) + 32 * v8 + 24), a3) & 1) != 0;
}

BOOL re::TransitionConditionFloat::evaluate(re::TransitionConditionFloat *this, const re::StateParameterBlackboard *a2)
{
  v7 = 0.0;
  StateParameterFloatValue = re::StateParameterBlackboard::getStateParameterFloatValue(a2, (this + 8), &v7);
  result = 0;
  if (StateParameterFloatValue)
  {
    result = 0;
    v5 = *(this + 7);
    v6 = *(this + 24);
    if (v6 > 2)
    {
      switch(v6)
      {
        case 3u:
          return v7 <= v5;
        case 4u:
          return v7 > v5;
        case 5u:
          return v7 >= v5;
      }
    }

    else if (*(this + 24))
    {
      if (v6 == 1)
      {
        return v7 != v5;
      }

      else if (v6 == 2)
      {
        return v7 < v5;
      }
    }

    else
    {
      return v7 == v5;
    }
  }

  return result;
}

BOOL re::StateParameterBlackboard::getStateParameterFloatValue(re::StateParameterBlackboard *this, const re::StringID *a2, float *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  return v8 != 0x7FFFFFFF && (re::StateParameterFloat::getValue(*(*(this + 9) + 32 * v8 + 24), a3) & 1) != 0;
}

uint64_t re::TransitionConditionBool::evaluate(re::TransitionConditionBool *this, const re::StateParameterBlackboard *a2)
{
  v5 = 0;
  StateParameterBoolValue = re::StateParameterBlackboard::getStateParameterBoolValue(a2, (this + 8), &v5);
  result = 0;
  if (StateParameterBoolValue)
  {
  }

  return result;
}

BOOL re::StateParameterBlackboard::getStateParameterBoolValue(re::StateParameterBlackboard *this, const re::StringID *a2, BOOL *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  return v8 != 0x7FFFFFFF && (re::StateParameterBool::getValue(*(*(this + 15) + 32 * v8 + 24), a3) & 1) != 0;
}

uint64_t anonymous namespace::evaluateTransitionCondition<BOOL>(int a1, int a2, int a3)
{
  v3 = a1 ^ 1 | a2;
  v4 = a1 & ~a2;
  v5 = a2 ^ 1 | a1;
  if (a3 != 5)
  {
    v5 = 0;
  }

  if (a3 != 4)
  {
    v4 = v5;
  }

  if (a3 != 3)
  {
    v3 = v4;
  }

  v6 = a1 ^ a2;
  v7 = a2 & ~a1;
  if (a3 != 2)
  {
    v7 = 0;
  }

  if (a3 != 1)
  {
    v6 = v7;
  }

  if (!a3)
  {
    v6 = a1 ^ a2 ^ 1;
  }

  if (a3 <= 2)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t re::TransitionConditionTrigger::evaluate(re::TransitionConditionTrigger *this, const re::StateParameterBlackboard *a2)
{
  v5 = 0;
  StateParameterTriggerValue = re::StateParameterBlackboard::getStateParameterTriggerValue(a2, (this + 8), &v5);
  result = 0;
  if (StateParameterTriggerValue)
  {
  }

  return result;
}

BOOL re::StateParameterBlackboard::getStateParameterTriggerValue(re::StateParameterBlackboard *this, const re::StringID *a2, BOOL *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  return v8 != 0x7FFFFFFF && (re::StateParameterBool::getValue(*(*(this + 21) + 32 * v8 + 24), a3) & 1) != 0;
}

uint64_t re::TransitionConditionTrigger::setStateParameterReset(uint64_t a1, uint64_t a2, char a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*(a1 + 8) >> 31) ^ (*(a1 + 8) >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2 + 152, (a1 + 8), (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  *(*(*(a2 + 168) + 32 * v8 + 24) + 56) = a3;
  return result;
}

void *re::DynamicArray<re::TransitionCondition *>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<float *>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::StateTransition::canTransition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  v6 = 8 * v2;
  do
  {
    if (((***v5)(*v5, a2) & 1) == 0)
    {
      return 0;
    }

    ++v5;
    v6 -= 8;
  }

  while (v6);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = *(a1 + 32);
  v9 = 8 * v7;
  do
  {
    v10 = *v8++;
    v11 = 1;
    (*(*v10 + 8))(v10, a2, 1);
    v9 -= 8;
  }

  while (v9);
  return v11;
}

re *re::internal::destroyPersistent<re::TransitionCondition>(re *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    *a3 = &unk_1F5CADBD0;
    re::StringID::destroyString((a3 + 1));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::StateMachineState::addIntTransitionCondition(uint64_t a1, void *a2, const StringID *a3, char a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = 8 * v5;
  while (1)
  {
    v12 = *v10;
    v13 = re::StringID::operator==((*v10 + 40), a2);
    if (v13)
    {
      break;
    }

    v10 += 8;
    v11 -= 8;
    if (!v11)
    {
      return 0;
    }
  }

  v15 = re::globalAllocators(v13);
  v16 = (*(*v15[2] + 32))(v15[2], 40, 8);
  *v16 = &unk_1F5CADBD0;
  re::StringID::StringID((v16 + 8), a3);
  *(v16 + 24) = a4;
  *v16 = &unk_1F5CADAE0;
  *(v16 + 32) = a5;
  v17 = v16;
  re::DynamicArray<re::TransitionCondition *>::add(v12, &v17);
  return 1;
}

uint64_t re::StateMachineState::addFloatTransitionCondition(uint64_t a1, void *a2, const StringID *a3, char a4, float a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = 8 * v5;
  while (1)
  {
    v12 = *v10;
    v13 = re::StringID::operator==((*v10 + 40), a2);
    if (v13)
    {
      break;
    }

    v10 += 8;
    v11 -= 8;
    if (!v11)
    {
      return 0;
    }
  }

  v15 = re::globalAllocators(v13);
  v16 = (*(*v15[2] + 32))(v15[2], 32, 8);
  *v16 = &unk_1F5CADBD0;
  re::StringID::StringID((v16 + 8), a3);
  *(v16 + 24) = a4;
  *v16 = &unk_1F5CADB28;
  *(v16 + 28) = a5;
  v17 = v16;
  re::DynamicArray<re::TransitionCondition *>::add(v12, &v17);
  return 1;
}

uint64_t re::StateMachineState::addBoolTransitionCondition(uint64_t a1, void *a2, const StringID *a3, char a4, char a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = 8 * v5;
  while (1)
  {
    v12 = *v10;
    v13 = re::StringID::operator==((*v10 + 40), a2);
    if (v13)
    {
      break;
    }

    v10 += 8;
    v11 -= 8;
    if (!v11)
    {
      return 0;
    }
  }

  v15 = re::globalAllocators(v13);
  v16 = (*(*v15[2] + 32))(v15[2], 32, 8);
  *v16 = &unk_1F5CADBD0;
  re::StringID::StringID((v16 + 8), a3);
  *(v16 + 24) = a4;
  *v16 = &unk_1F5CADB60;
  *(v16 + 25) = a5;
  v17 = v16;
  re::DynamicArray<re::TransitionCondition *>::add(v12, &v17);
  return 1;
}

uint64_t re::StateMachineState::addTriggerTransitionCondition(re::StateMachineState *this, const re::StringID *a2, const StringID *a3)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v6 = *(this + 5);
  v7 = 8 * v3;
  while (1)
  {
    v8 = *v6;
    v9 = re::StringID::operator==((*v6 + 40), a2);
    if (v9)
    {
      break;
    }

    v6 += 8;
    v7 -= 8;
    if (!v7)
    {
      return 0;
    }
  }

  v11 = re::globalAllocators(v9);
  v12 = (*(*v11[2] + 32))(v11[2], 32, 8);
  *v12 = &unk_1F5CADBD0;
  re::StringID::StringID((v12 + 8), a3);
  *(v12 + 24) = 256;
  *v12 = &unk_1F5CADB98;
  v13 = v12;
  re::DynamicArray<re::TransitionCondition *>::add(v8, &v13);
  return 1;
}

uint64_t re::StateMachineState::canTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 108) > 0.0)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = 8 * v3;
  while (1)
  {
    v8 = *v6;
    if (!a3 || v8 != a3) && (re::StateTransition::canTransition(*v6, a2))
    {
      break;
    }

    ++v6;
    v7 -= 8;
    if (!v7)
    {
      return 0;
    }
  }

  return v8;
}

float re::StateMachineState::internalEnterState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 64);
  if (v9)
  {
    v11 = *(a1 + 80);
    v12 = 8 * v9;
    do
    {
      v13 = *v11++;
      (*(*v13 + 136))(v13, a2, a3, a4, a5);
      v12 -= 8;
    }

    while (v12);
  }

  (*(*a1 + 32))(a1, a2, a3, a4);
  result = *(a1 + 104);
  *(a1 + 108) = result;
  return result;
}

re *re::StateMachineState::deinit(re *this)
{
  v1 = this;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      this = re::internal::destroyPersistent<re::StateTransition>("deinit", 326, v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    v7 = *(v1 + 10);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      this = re::internal::destroyPersistent<re::StateCommand>("deinit", 331, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return this;
}

re *re::internal::destroyPersistent<re::StateTransition>(re *result, uint64_t a2, re::StateTransition *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::StateTransition::~StateTransition(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re *re::internal::destroyPersistent<re::StateCommand>(re *result, uint64_t a2, void (***a3)(void))
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

void *re::StateGraph::addAnyState(void *this, re::StateMachineState *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = this[8];
    if (v4)
    {
      v5 = re::globalAllocators(this)[2];
      (**v4)(v4);
      this = (*(*v5 + 40))(v5, v4);
    }

    v3[8] = a2;
  }

  return this;
}

re *re::internal::destroyPersistent<re::StateMachineState>(re *result, uint64_t a2, void (***a3)(void))
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

BOOL re::StateGraph::createStateTransition(re::StateGraph *a1, uint64_t a2, re::StringID *a3, void *a4, const re::StringID *a5, StringID *a6, char a7, float a8)
{
  v49 = *MEMORY[0x1E69E9840];
  v34 = -1;
  StateByName = re::StateGraph::findStateByName(a1, a3, v35);
  StateGraphByName = re::StateGraph::findStateGraphByName(a2, a4);
  v16 = StateGraphByName;
  v17 = *(a2 + 16);
  if (v17 <= StateGraphByName)
  {
    v35[1] = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 797;
    v40 = 2048;
    v41 = v16;
    v42 = 2048;
    v43 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v18 = re::StateGraph::findStateByName(*(*(a2 + 32) + 8 * StateGraphByName), a5, &v34);
  result = 0;
  if (StateByName && v18)
  {
    v20 = v34;
    v21 = *(StateByName + 24);
    if (v21)
    {
      v22 = *(StateByName + 40);
      v23 = 8 * v21;
      while (1)
      {
        result = re::StringID::operator==((*v22 + 40), a6);
        if (result)
        {
          return 0;
        }

        v22 += 8;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v24 = re::globalAllocators(result);
      v25 = (*(*v24[2] + 32))(v24[2], 80, 8);
      *(v25 + 32) = 0;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      *v25 = 0;
      *(v25 + 24) = 0;
      v26 = re::StringID::StringID((v25 + 40), a6);
      *(v25 + 56) = v16;
      *(v25 + 64) = v20;
      *(v25 + 72) = a8;
      *(v25 + 76) = a7;
      v27 = *(StateByName + 16);
      v28 = *(StateByName + 24);
      if (v28 >= v27)
      {
        v29 = v28 + 1;
        if (v27 < v28 + 1)
        {
          if (*(StateByName + 8))
          {
            v30 = 2 * v27;
            v31 = v27 == 0;
            v32 = 8;
            if (!v31)
            {
              v32 = v30;
            }

            if (v32 <= v29)
            {
              v33 = v29;
            }

            else
            {
              v33 = v32;
            }

            re::DynamicArray<float *>::setCapacity((StateByName + 8), v33);
          }

          else
          {
            re::DynamicArray<float *>::setCapacity((StateByName + 8), v29);
            ++*(StateByName + 32);
          }
        }

        v28 = *(StateByName + 24);
      }

      *(*(StateByName + 40) + 8 * v28) = v25;
      *(StateByName + 24) = v28 + 1;
      ++*(StateByName + 32);
      return 1;
    }
  }

  return result;
}

uint64_t re::StateGraph::findStateByName(re::StateGraph *this, const re::StringID *a2, unint64_t *a3)
{
  *a3 = -1;
  v5 = *(this + 5);
  if (v5)
  {
    v7 = 0;
    v8 = *(this + 7);
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        if (re::StringID::operator==((v9 + 88), a2))
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        goto LABEL_6;
      }
    }

    *a3 = v7;
  }

  else
  {
LABEL_6:
    v10 = *(this + 8);
    if (v10)
    {
      if (re::StringID::operator==((v10 + 88), a2))
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t re::StateGraph::findStateGraphByName(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return -1;
  }

  v4 = 0;
  v5 = *(a1 + 32);
  while (1)
  {
    v6 = *(v5 + 8 * v4);
    if (v6)
    {
      if (re::StringID::operator==((v6 + 8), a2))
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return -1;
    }
  }

  return v4;
}

uint64_t re::StateGraph::addIntTransitionCondition(re::StateGraph *a1, const re::StringID *a2, void *a3, const StringID *a4, char a5, uint64_t a6)
{
  result = re::StateGraph::findStateByName(a1, a2, &v11);
  if (result)
  {

    return re::StateMachineState::addIntTransitionCondition(result, a3, a4, a5, a6);
  }

  return result;
}

uint64_t re::StateGraph::addFloatTransitionCondition(re::StateGraph *a1, const re::StringID *a2, void *a3, const StringID *a4, char a5, float a6)
{
  result = re::StateGraph::findStateByName(a1, a2, &v11);
  if (result)
  {

    return re::StateMachineState::addFloatTransitionCondition(result, a3, a4, a5, a6);
  }

  return result;
}

uint64_t re::StateGraph::addBoolTransitionCondition(re::StateGraph *a1, const re::StringID *a2, void *a3, const StringID *a4, char a5, char a6)
{
  result = re::StateGraph::findStateByName(a1, a2, &v11);
  if (result)
  {

    return re::StateMachineState::addBoolTransitionCondition(result, a3, a4, a5, a6);
  }

  return result;
}

re::StateMachineState *re::StateGraph::addTriggerTransitionCondition(re::StateGraph *this, const re::StringID *a2, const re::StringID *a3, const StringID *a4)
{
  result = re::StateGraph::findStateByName(this, a2, &v7);
  if (result)
  {

    return re::StateMachineState::addTriggerTransitionCondition(result, a3, a4);
  }

  return result;
}

re *re::StateGraph::deinit(re::StateGraph *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::StateMachineState>("deinit", 507, v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(this + 8);

  return re::internal::destroyPersistent<re::StateMachineState>("deinit", 510, v6);
}

void *re::introspect_StateTransitionConditionOperator(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Equal";
      re::introspect_StateTransitionConditionOperator(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "NotEqual";
      qword_1ECF1BEF8 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "LessThan";
      qword_1ECF1BF00 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 3;
      *(v17 + 2) = "LessThanOrEqual";
      qword_1ECF1BF08 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 1) = 4;
      *(v19 + 2) = "GreaterThan";
      qword_1ECF1BF10 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = (*(*v20 + 32))(v20, 24, 8);
      *v21 = 1;
      *(v21 + 8) = 5;
      *(v21 + 16) = "GreaterThanOrEqual";
      qword_1ECF1BF18 = v21;
    }
  }

  {
    v22 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_StateTransitionConditionOperator(BOOL)::info, "StateTransitionConditionOperator", 1, 1, 1, 1);
    *v22 = &unk_1F5D0C658;
    *(v22 + 8) = &re::introspect_StateTransitionConditionOperator(BOOL)::enumTable;
    *(v22 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_StateTransitionConditionOperator(BOOL)::isInitialized)
    {
      return &re::introspect_StateTransitionConditionOperator(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v24);
    v3 = re::introspect_StateTransitionConditionOperator(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v24);
    if (v3)
    {
      return &re::introspect_StateTransitionConditionOperator(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_StateTransitionConditionOperator(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_StateTransitionConditionOperator(BOOL)::info;
    }
  }

  re::introspect_StateTransitionConditionOperator(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_StateTransitionConditionOperator(BOOL)::info, a2);
  v23[0] = 0x510755AC47BE15B2;
  v23[1] = "StateTransitionConditionOperator";
  xmmword_1ECF1BF48 = v24;
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_StateTransitionConditionOperator(BOOL)::info;
}

void re::internal::registerEnumType<re::StateTransitionConditionOperator>(re::TypeRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *&v35.var0 = 0x31CD534126;
  v35.var1 = "uint8_t";
  v8 = re::TypeRegistry::typeID(a1, &v35, v34);
  v10 = v34[0];
  v11 = v34[1];
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  if (v10)
  {
    v12 = *(a2 + 64);
    v33[0] = v10;
    v33[1] = v11;
    re::TypeBuilder::beginEnumType(v34, a3, 1, 1, v33);
    v13 = *v12;
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v15 = *(*(v12 + 1) + 8 * i);
        if (*v15 == 1)
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            v17 = *v16;
            if (*v16)
            {
              v18 = v16[1];
              if (v18)
              {
                v19 = (v16 + 2);
                do
                {
                  v17 = 31 * v17 + v18;
                  v20 = *v19++;
                  v18 = v20;
                }

                while (v20);
              }
            }
          }

          else
          {
            v17 = 0;
          }

          v21 = *(v15 + 8);
          *&v35.var0 = 2 * v17;
          v35.var1 = v16;
          re::TypeBuilder::addEnumConstant(v34, v21, &v35);
          if (*&v35.var0)
          {
            if (*&v35.var0)
            {
            }
          }

          v13 = *v12;
        }
      }

      if (v13)
      {
        for (j = 0; j < v13; ++j)
        {
          v24 = *(*(v12 + 1) + 8 * j);
          if (*v24 == 2)
          {
            v25 = *(v24 + 16);
            if (v25)
            {
              v26 = *v25;
              if (*v25)
              {
                v27 = v25[1];
                if (v27)
                {
                  v28 = (v25 + 2);
                  do
                  {
                    v26 = 31 * v26 + v27;
                    v29 = *v28++;
                    v27 = v29;
                  }

                  while (v29);
                }
              }
            }

            else
            {
              v26 = 0;
            }

            v30 = *(v24 + 8);
            *&v35.var0 = 2 * v26;
            v35.var1 = v25;
            re::TypeBuilder::addEnumConstantRenaming(v34, v30, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
              {
              }
            }

            v13 = *v12;
          }
        }
      }
    }

    re::TypeBuilder::commitTo(v34, a1, a4);
    re::TypeBuilder::~TypeBuilder(v34, v32);
  }

  else
  {
    re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, a3[1]);
    _os_crash();
    __break(1u);
  }
}

void *re::introspect_StateTransitionInterruptionType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "NoInterruption";
      re::introspect_StateTransitionInterruptionType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "InterruptFrom";
      qword_1ECF1BF88 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "InterruptTo";
      qword_1ECF1BF90 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 3;
      *(v17 + 2) = "InterruptFromTo";
      qword_1ECF1BF98 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 4;
      *(v19 + 16) = "InterruptToFrom";
      qword_1ECF1BFA0 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_StateTransitionInterruptionType(BOOL)::info, "StateTransitionInterruptionType", 1, 1, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::introspect_StateTransitionInterruptionType(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized)
    {
      return &re::introspect_StateTransitionInterruptionType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::introspect_StateTransitionInterruptionType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_StateTransitionInterruptionType(BOOL)::info;
    }
  }

  re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_StateTransitionInterruptionType(BOOL)::info, a2);
  v21[0] = 0x3BFE1784889200CALL;
  v21[1] = "StateTransitionInterruptionType";
  xmmword_1ECF1BFD0 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_StateTransitionInterruptionType(BOOL)::info;
}

void *re::introspect_TransitionConditionType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Unknown";
      re::introspect_TransitionConditionType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Int";
      qword_1ECF1C010 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "Float";
      qword_1ECF1C018 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 3;
      *(v17 + 2) = "Bool";
      qword_1ECF1C020 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 4;
      *(v19 + 16) = "Trigger";
      qword_1ECF1C028 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_TransitionConditionType(BOOL)::info, "TransitionConditionType", 1, 1, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::introspect_TransitionConditionType(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_TransitionConditionType(BOOL)::isInitialized)
    {
      return &re::introspect_TransitionConditionType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::introspect_TransitionConditionType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::introspect_TransitionConditionType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_TransitionConditionType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_TransitionConditionType(BOOL)::info;
    }
  }

  re::introspect_TransitionConditionType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_TransitionConditionType(BOOL)::info, a2);
  v21[0] = 0x5876EE64EBA2F00;
  v21[1] = "TransitionConditionType";
  xmmword_1ECF1C058 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_TransitionConditionType(BOOL)::info;
}

uint64_t re::StateParameterInt::getValue(re::StateParameterInt *this, uint64_t *a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  result = re::BindPoint::isAlive((this + 8));
  if (result)
  {
    result = re::BindPoint::valueUntyped((this + 8));
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 32 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 32 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 32 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 32 * v12) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
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

uint64_t re::StateParameterFloat::getValue(re::StateParameterFloat *this, float *a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  result = re::BindPoint::isAlive((this + 8));
  if (result)
  {
    result = re::BindPoint::valueUntyped((this + 8));
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t re::StateParameterBool::getValue(re::StateParameterBool *this, BOOL *a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  result = re::BindPoint::isAlive((this + 8));
  if (result)
  {
    result = re::BindPoint::valueUntyped((this + 8));
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

void re::StateTransition::~StateTransition(re::StateTransition *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::TransitionCondition>("deinit", 123, v5);
      v4 -= 8;
    }

    while (v4);
  }

  re::StringID::destroyString((this + 40));
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::internal::floorLevelSolverCallback(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, float32x4_t *a9)
{
  v9 = a4;
  v74 = *MEMORY[0x1E69E9840];
  if (a4 <= 2)
  {
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, v9, *&v49, *&v50);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  re::internal::getSRTFromRDV((a3 + 72), &v61);
  if (v9 == 3)
  {
LABEL_27:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  re::internal::getSRTFromRDV((a3 + 108), v60);
  v58 = v60[1];
  v59 = v60[0];
  v53 = v62;
  v54 = v61;
  _S0 = v62.i32[3];
  __asm { FMLA            S1, S0, V3.S[3] }

  v51 = v63;
  v52 = _S1;
  v57 = v60[2];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v20 = a3[68];
  if (v20)
  {
    v21 = 0;
    v9 = 0;
    v22 = vnegq_f32(v58);
    v23 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), v22), v51, v23);
    v25 = vaddq_f32(v24, v24);
    v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
    v55 = v23;
    v56 = v22;
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v22), v26, v23);
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), v22), v53, v23);
    v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v53, v58, 3), v58, v53, 3);
    v30 = vaddq_f32(v57, vmulq_f32(v59, vaddq_f32(vaddq_f32(v51, vmulq_laneq_f32(v26, v58, 3)), vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL))));
    v31 = vnegq_f32(v29);
    v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
    v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v29), v30, v32);
    v34 = vaddq_f32(v33, v33);
    v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v29), v35, v32);
    __asm { FMOV            V5.4S, #1.0 }

    v38 = vaddq_f32(v30, vmulq_n_f32(v35, v52));
    v39 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v40 = vdivq_f32(_Q5, vmulq_f32(v59, v54));
    v49 = vmulq_f32(v40, vaddq_f32(v38, v39));
    v50 = v40;
    while (1)
    {
      v41 = a3[68];
      if (v41 <= v9)
      {
        break;
      }

      re::internal::getSRTFromRDV((a3[70] + v21), &v66);
      v42 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*&v73[2], *&v73[2]), *&v73[2], 0xCuLL), v56), *&v73[2], v55);
      v43 = vaddq_f32(v42, v42);
      v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
      v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), v56), v44, v55);
      a9[1] = vsubq_f32(vaddq_f32(v57, vmulq_f32(v59, vaddq_f32(vaddq_f32(*&v73[2], vmulq_laneq_f32(v44, v58, 3)), vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL)))), vmulq_n_f32(a9[2], a9[3].f32[0] * 0.5));
      re::internal::RayCaster::cast(a9[4].i64, &a9[1], v65);
      if (LOBYTE(v65[0]) == 1)
      {
        MEMORY[0x1E69036C0](a9->i64[0], v9);
        CoreIKACPPenetrationConstraintSetPlaneDefinition();
      }

      ++v9;
      v21 += 288;
      if (v20 == v9)
      {
        goto LABEL_11;
      }
    }

    v64 = 0;
    memset(v65, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v66 = 136315906;
    v67 = "operator[]";
    v68 = 1024;
    v69 = 797;
    v70 = 2048;
    v71 = v9;
    v72 = 2048;
    *v73 = v41;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  re::internal::transferPose(a3, &a9[11].i64[1]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a8)
  {
LABEL_28:
    re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v47 = MEMORY[0x1E69036A0](a9->i64[0], a9[12].i64[1], a9[12].i64[0]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v47, a3, &a9[11].u32[2], a7);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::floorLevelSolverCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v53[36] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  if (a3 == 1)
  {
LABEL_38:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_39;
  }

  if (a3 <= 2)
  {
LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_40;
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v9 = *(*a2 + 232);
  v10 = strlen(v9);
  v11 = MEMORY[0x1E6903780](v9, v10);
  v12 = *(v6 + 184);
  v13 = MEMORY[0x1E6903C50](v11, 0);
  v53[0] = v13;
  v53[1] = strlen(v13);
  re::RigHierarchy::jointParent(v12, v53, 1, v41);
  if (v41[0] == 1 && v42)
  {
    v13 = *(v42 + 8);
  }

  v49 = 164778;
  v50 = "SRT";
  re::internal::makeRigDataValue(a1, &v49, v53);
  if (v49)
  {
    if (v49)
    {
    }
  }

  re::internal::makeModelSpaceJointPoseRDV(a1, v12, v13, &v49);
  re::RigDataValue::operator=(v53, &v49);
  re::RigDataValue::~RigDataValue(&v49);
  v15 = *(a1[2] + 7);
  v16 = *a1;
  v17 = (*(**a1 + 32))(*a1, 208, 16);
  *v17 = CoreIKCreateACPPenetrationSolverFromRig();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v17 + 64) = v15;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 84) = 0xFFFFFFFF00000001;
  *(v17 + 124) = 0u;
  *(v17 + 152) = 0u;
  *(v17 + 140) = 0u;
  *(v17 + 108) = 0u;
  *(v17 + 92) = 0u;
  *(v17 + 128) = 1;
  *(v17 + 144) = 0;
  *(v17 + 152) = 0;
  *(v17 + 136) = 0;
  *(v17 + 160) = 0;
  *(v17 + 176) = v16;
  *(v17 + 192) = 0;
  *(v17 + 200) = 0;
  *(v17 + 184) = 0;
  v18 = MEMORY[0x1E6903C40](v11);
  re::FixedArray<CoreIKTransform>::init<>((v17 + 184), v16, v18);
  CoreIKACPPenetrationSolverGetTargetRestPose();
  v20 = vmulq_f32(v19, v19);
  v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
  *(v17 + 16) = 0u;
  *(v17 + 32) = xmmword_1E30476B0;
  *(v17 + 48) = v20.f32[0] + v20.f32[0];
  v49 = &unk_1F5CADBF0;
  v50 = v16;
  v51 = &v49;
  v47 = v17;
  v48[3] = v48;
  v48[0] = &unk_1F5CADBF0;
  v48[1] = v16;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v49);
  v46[0] = 158357486;
  v46[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v46, &v49);
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  v22 = CoreIKACPPenetrationSolverConstraintCount();
  if (v22)
  {
    v23 = v22;
    for (i = 0; i != v23; ++i)
    {
      ConstraintTargetName = CoreIKACPPenetrationSolverGetConstraintTargetName();
      re::internal::makeModelSpaceJointPoseRDV(a1, v12, ConstraintTargetName, v46);
      re::DynamicArray<re::RigDataValue>::add(&v52, v46);
      re::RigDataValue::~RigDataValue(v46);
    }
  }

  v26 = *(v6 + 184);
  re::internal::makePoseFromRig(a1, v26, v11, v46);
  v27 = MEMORY[0x1E6903C40](v11);
  re::internal::makePose(a1, v27, v45);
  v40 = 0;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  re::RigGraphCallbackBuilder::init(v36, *a1);
  *&v35.var0 = 0x10643527A253C4;
  v35.var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v36, &v35, v46);
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  *&v35.var0 = 0x170CCA3259E8975ELL;
  v35.var1 = "ModelSpaceTaskJointTransforms";
  re::RigGraphCallbackBuilder::addInputParam(v36, &v35, &v49);
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  *&v35.var0 = 0x675FFFDDE7071B76;
  v35.var1 = "SolverToModel";
  re::RigGraphCallbackBuilder::addInputParam(v36, &v35, v53);
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  *&v35.var0 = 0x1F85042B1B4E4034;
  v35.var1 = "WorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v36, &v35, v7);
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  *&v35.var0 = 0x10498EC9357CACLL;
  v35.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v36, &v35, v45);
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v36, a1, re::internal::floorLevelSolverCallback, &v47);
  v33 = re::internal::bindCallbackOutputToNodeOutputPose(v26, v45, v11, a1, v8);
  MEMORY[0x1E69037D0](v11, v33);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v38 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v36 + 8);
  re::RigDataValue::~RigDataValue(v45);
  re::RigDataValue::~RigDataValue(v46);
  re::RigDataValue::~RigDataValue(&v49);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v47);
  re::RigDataValue::~RigDataValue(v53);
  if (v41[0] & 1) == 0 && v43 && (v44)
  {
    (*(*v43 + 40))();
  }

  return 1;
}

void re::internal::registerFloorLevelSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717D90;
  v11[1] = *&off_1E8717DA0;
  v11[2] = xmmword_1E8717DB0;
  v11[3] = *off_1E8717DC0;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::floorLevelSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_36CoreIKACPPenetrationSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CADBF0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_36CoreIKACPPenetrationSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDestroyACPPenetrationSolver();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 184));
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 112);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 112);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_36CoreIKACPPenetrationSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_36CoreIKACPPenetrationSolverNodeHelperENS_9AllocatorEJP9CoreIKRigNSt3__117reference_wrapperIKNS_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::introspect_REStateCommandID(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "InvalidCommand";
      re::introspect_REStateCommandID(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "AnimationPlayCommand";
      qword_1ECF1C098 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "AnimationStopCommand";
      qword_1ECF1C0A0 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 3;
      *(v17 + 2) = "AnimationStopAllCommand";
      qword_1ECF1C0A8 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 4;
      *(v19 + 16) = "AnimationSetPlaybackTimeCommand";
      qword_1ECF1C0B0 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_REStateCommandID(BOOL)::info, "REStateCommandID", 1, 1, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::introspect_REStateCommandID(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_REStateCommandID(BOOL)::isInitialized)
    {
      return &re::introspect_REStateCommandID(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::introspect_REStateCommandID(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::introspect_REStateCommandID(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_REStateCommandID(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_REStateCommandID(BOOL)::info;
    }
  }

  re::introspect_REStateCommandID(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_REStateCommandID(BOOL)::info, a2);
  v21[0] = 0x87BB690F50576250;
  v21[1] = "REStateCommandID";
  xmmword_1ECF1C0E0 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_REStateCommandID(BOOL)::info;
}

uint64_t *anonymous namespace::countTimelinesRecursive@<X0>(uint64_t *this@<X0>, const re::Timeline *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 999)
  {
LABEL_2:
    *a3 = 0;
    return this;
  }

  v4 = a2;
  v5 = this;
  this = (*(*this + 24))(this);
  if (this)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = (*(*v5 + 32))(v5, v6);
      if (v10 != 1)
      {
        goto LABEL_2;
      }

      v7 += HIDWORD(v10);
      ++v6;
      this = (*(*v5 + 24))(v5);
      if (v6 >= this)
      {
        goto LABEL_9;
      }
    }
  }

  v7 = 1;
LABEL_9:
  *a3 = 1;
  *(a3 + 4) = v7;
  return this;
}

void *re::RigGraphDefinitionBuilder::init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  a1[1] = a4;
  a1[2] = a3;
  *a1 = a2;
  *(a3 + 96) = a2;
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity((a3 + 96), 0);
  ++*(v4 + 120);
  *(v4 + 136) = *a1;
  re::DynamicArray<re::RigGraphConnection>::setCapacity((v4 + 136), 0);
  ++*(v4 + 160);
  *(v4 + 176) = *a1;
  re::DynamicArray<re::RigGraphInputValue>::setCapacity((v4 + 176), 0);
  ++*(v4 + 200);
  *(v4 + 16) = *a1;
  re::DynamicArray<re::RigGraphParameterProxy>::setCapacity((v4 + 16), 0);
  *(v4 + 56) = *a1;
  v4 += 56;
  ++*(v4 - 16);
  result = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(v4, 0);
  ++*(v4 + 24);
  return result;
}

void re::RigGraphDefinitionBuilder::addNode(re::RigGraphDefinitionBuilder *this@<X0>, _anonymous_namespace_ *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigGraphDefinitionBuilder::getParameterCount(this, a2, v19);
  if (v19[0] == 1)
  {
    *&v15 = 0;
    *(&v15 + 1) = &str_67;
    v16 = 0;
    *&v17 = &str_67;
    v10 = re::DynamicArray<re::RigGraphNodeDescription>::add((*(this + 2) + 96), &v15);
    v13 = 0;
    v14 = &str_67;
    v12 = *(*(this + 2) + 112) - 1;
    v11 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 24, &v13, &v12);
    if (v13)
    {
      if (v13)
      {
      }
    }

    *a4 = 1;
    if (v16)
    {
      if (v16)
      {
      }
    }

    v16 = 0;
    *&v17 = &str_67;
    if (v15)
    {
      if (v15)
      {
      }
    }
  }

  else
  {
    v15 = v20;
    re::DynamicString::DynamicString(&v16, &v21);
    *a4 = 0;
    *(a4 + 8) = v15;
    *(a4 + 24) = v16;
    *(a4 + 48) = v18;
    *(a4 + 32) = v17;
    if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))(v21, v23);
    }
  }
}

__n128 re::RigGraphDefinitionBuilder::getParameterCount@<Q0>(re::RigGraphDefinitionBuilder *this@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
  }

  else
  {
    re::DynamicString::format("Undefined rig environment!", &v8);
    result = v8;
    v6 = v9;
    v7 = v10;
    *a3 = 0;
    *(a3 + 8) = 5001;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = result;
    *(a3 + 40) = v6;
    *(a3 + 48) = v7;
  }

  return result;
}

void *re::DynamicArray<re::RigGraphNodeDescription>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::RigGraphNodeDescription>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 32 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  v7[1] = v7[1] & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  v7[1] = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v7[2] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7[3] = *a3;
  result = (v7 + 3);
  ++*(a1 + 40);
  return result;
}

__n128 re::RigGraphDefinitionBuilder::getNodeType(re::RigGraphDefinitionBuilder *this, const char *a2, const char *a3)
{
  if (a2)
  {
    v4 = *(a2 + 14);
    v5 = *(a2 + 16);
  }

  else
  {
    re::DynamicString::format("Undefined rig definition!", &v9);
    result = v9;
    v7 = v10;
    v8 = v11;
    *this = 0;
    *(this + 1) = 3000;
    *(this + 2) = &re::AnimationErrorCategory(void)::instance;
    *(this + 24) = result;
    *(this + 5) = v7;
    *(this + 6) = v8;
  }

  return result;
}

uint64_t re::RigGraphDefinitionBuilder::getParameterType(re::RigGraphDefinitionBuilder *this, const char *a2, char *a3, const char *a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 1);
  if (a3)
  {
    v11 = *a3;
    if (*a3)
    {
      v12 = a3[1];
      if (v12)
      {
        v13 = a3 + 2;
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

  __s2[0] = (2 * v11);
  __s2[1] = a3;
  v15 = re::RigEnvironment::lookupRigGraphNode(v10, __s2);
  v16 = v15;
  if (__s2[0])
  {
    if (__s2[0])
    {
    }
  }

  if (v16)
  {
    v17 = 40;
    if (a5)
    {
      v17 = 0;
    }

    v18 = v16 + v17;
    if (*(v16 + v17 + 16))
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = *(v18 + 4);
        __s2[0] = 0;
        __s2[1] = &str_67;
        v22 = __s2[0];
        if ((__s2[0] ^ *(v21 + v19)) > 1uLL)
        {
          v23 = 0;
          if ((__s2[0] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v15 = *(v21 + v19 + 8);
          if (v15 == __s2[1])
          {
            v23 = 1;
            if ((__s2[0] & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v15 = strcmp(v15, __s2[1]);
            v23 = v15 == 0;
            if ((v22 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        if (__s2[0])
        {
        }

LABEL_25:
        if (v23)
        {
          v29 = re::RigGraphNode::inputType(v16, v20);
          goto LABEL_60;
        }

        ++v20;
        v19 += 40;
        if (v20 >= *(v18 + 2))
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

  v24 = *(a2 + 1);
  if (a3)
  {
    v25 = *a3;
    if (*a3)
    {
      v26 = a3[1];
      if (v26)
      {
        v27 = a3 + 2;
        do
        {
          v25 = 31 * v25 + v26;
          v28 = *v27++;
          v26 = v28;
        }

        while (v28);
      }
    }
  }

  else
  {
    v25 = 0;
  }

  __s2[0] = (2 * v25);
  __s2[1] = a3;
  v30 = re::RigEnvironment::lookupRigGraphOperator(v24, __s2);
  v31 = v30;
  if (__s2[0])
  {
    if (__s2[0])
    {
    }
  }

  if (!v31)
  {
    result = re::DynamicString::format("Node type '%s' not found!", __s2, a3);
    v40 = *__s2;
    v42 = *(&v46 + 1);
    v41 = v46;
    *this = 0;
    v43 = 5004;
    goto LABEL_56;
  }

  v32 = 40;
  if (a5)
  {
    v32 = 16;
  }

  v33 = v31 + v32;
  if (!*(v33 + 8))
  {
LABEL_55:
    result = re::DynamicString::format("Parameter name '%s' not found!", __s2, a4);
    v40 = *__s2;
    v42 = *(&v46 + 1);
    v41 = v46;
    *this = 0;
    v43 = 5006;
LABEL_56:
    *(this + 1) = v43;
    *(this + 2) = &re::AnimationErrorCategory(void)::instance;
    *(this + 24) = v40;
    *(this + 5) = v41;
    *(this + 6) = v42;
    return result;
  }

  v34 = 0;
  v35 = 0;
  while (1)
  {
    v36 = *(v33 + 16);
    __s2[0] = 0;
    __s2[1] = &str_67;
    v37 = __s2[0];
    if ((__s2[0] ^ *(v36 + v34)) > 1uLL)
    {
      v38 = 0;
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v30 = *(v36 + v34 + 8);
      if (v30 == __s2[1])
      {
        v38 = 1;
        if ((__s2[0] & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v30 = strcmp(v30, __s2[1]);
        v38 = v30 == 0;
        if ((v37 & 1) == 0)
        {
          goto LABEL_53;
        }
      }
    }

    if (__s2[0])
    {
    }

LABEL_53:
    if (v38)
    {
      break;
    }

    ++v35;
    v34 += 32;
    if (v35 >= *(v33 + 8))
    {
      goto LABEL_55;
    }
  }

  if (*(v33 + 8) <= v35)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *__s2 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v29 = (*(v33 + 16) + v34 + 16);
LABEL_60:
  result = re::StringID::StringID(__s2, v29);
  *this = 1;
  v44 = __s2[1];
  *(this + 1) = __s2[0];
  *(this + 2) = v44;
  return result;
}

_BYTE *re::Result<re::StringID,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::StringID::destroyString((a1 + 8));
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void *re::DynamicArray<re::RigGraphInputValue>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::RigGraphInputValue>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 96 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  v8 = a2[4];
  v5[4] = v5[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[5] = a2[5];
  a2[4] = 0;
  a2[5] = &str_67;
  v9 = a2[6];
  v5[6] = v5[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[6] = a2[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[7] = a2[7];
  a2[6] = 0;
  a2[7] = &str_67;
  v10 = a2[8];
  v5[8] = v5[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[8] = a2[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[9] = a2[9];
  a2[8] = 0;
  a2[9] = &str_67;
  v11 = a2[10];
  v5[10] = v5[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[10] = a2[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[11] = a2[11];
  a2[10] = 0;
  a2[11] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void re::RigGraphDefinitionBuilder::addConnection(re::RigGraphDefinitionBuilder *this@<X0>, const char *a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, const char *a6@<X5>, const char *a7@<X6>, uint64_t a8@<X8>)
{
  re::RigGraphDefinitionBuilder::getNodeType(v85, *(this + 2), a2);
  if (v85[0] != 1)
  {
    *(a8 + 8) = v86;
    v23 = v87;
    v24 = v88;
    v25 = v89;
    v88 = 0;
    v87 = 0uLL;
    *a8 = 0;
    *(a8 + 24) = v23;
    *(a8 + 40) = v24;
    *(a8 + 48) = v25;
    return;
  }

  re::RigGraphDefinitionBuilder::getNodeType(v80, *(this + 2), a4);
  if (v80[0] == 1)
  {
    re::RigGraphDefinitionBuilder::getParameterType(v76, this, *(&v86 + 1), a3, 0);
    if (v76[0] != 1)
    {
      *(a8 + 8) = v77;
      v29 = v78;
      v78 = 0u;
      v30 = v79;
      v79 = 0u;
      *a8 = 0;
      *(a8 + 24) = v29;
      *(a8 + 40) = v30;
      goto LABEL_70;
    }

    re::RigGraphDefinitionBuilder::getParameterType(v72, this, *(&v81 + 1), a5, 1);
    if (v72[0] != 1)
    {
      v31 = v74;
      *(a8 + 8) = v73;
      v32 = v75;
      v74 = 0u;
      v75 = 0u;
      *a8 = 0;
      *(a8 + 24) = v31;
      *(a8 + 40) = v32;
      goto LABEL_62;
    }

    re::StringID::StringID(&v70, &v77);
    re::StringID::invalid(&v69);
    if (!a6)
    {
      goto LABEL_22;
    }

    re::RigEnvironment::lookupRigDataType(*(this + 1), &v77, &v51);
    v17 = *(this + 1);
    v18 = strlen(a6);
    v63 = a6;
    v64 = v18;
    re::RigDataTypeClass::attributeType(&v51 + 8, v17, &v63, v65);
    if (v51 == 1)
    {
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v53);
      re::StringID::destroyString(v52);
    }

    v20 = v65[0];
    if (v65[0] == 1)
    {
      v21 = v66;
      *&v66.var0 = 0;
      v66.var1 = &str_67;
      var0 = v69.var0;
      v69 = v21;
      if (var0)
      {
      }

      re::StringID::operator=(&v70, &v69);
      if (v65[0])
      {
        re::StringID::destroyString(&v66);
        goto LABEL_21;
      }
    }

    else
    {
      *(a8 + 8) = v66;
      v33 = v67;
      v67 = 0u;
      v34 = v68;
      v68 = 0u;
      *a8 = 0;
      *(a8 + 24) = v33;
      *(a8 + 40) = v34;
    }

    v16 = v67;
    if (v67 && (BYTE8(v67) & 1) != 0)
    {
      v16 = (*(*v67 + 40))();
    }

LABEL_21:
    if (!v20)
    {
      goto LABEL_52;
    }

LABEL_22:
    re::StringID::StringID(&v63, &v73);
    re::StringID::invalid(&v62);
    if (!a7)
    {
      goto LABEL_35;
    }

    re::RigEnvironment::lookupRigDataType(*(this + 1), &v73, &v51);
    v35 = *(this + 1);
    v36 = strlen(a7);
    v61[0] = a7;
    v61[1] = v36;
    re::RigDataTypeClass::attributeType(&v51 + 8, v35, v61, v65);
    if (v51 == 1)
    {
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v53);
      re::StringID::destroyString(v52);
    }

    v38 = v65[0];
    if (v65[0] == 1)
    {
      v39 = v66;
      *&v66.var0 = 0;
      v66.var1 = &str_67;
      v40 = v62.var0;
      v62 = v39;
      if (v40)
      {
      }

      re::StringID::operator=(&v63, &v62);
      if (v65[0])
      {
        re::StringID::destroyString(&v66);
        goto LABEL_34;
      }
    }

    else
    {
      *(a8 + 8) = v66;
      v41 = v67;
      v67 = 0u;
      v42 = v68;
      v68 = 0u;
      *a8 = 0;
      *(a8 + 24) = v41;
      *(a8 + 40) = v42;
    }

    v16 = v67;
    if (v67 && (BYTE8(v67) & 1) != 0)
    {
      v16 = (*(*v67 + 40))();
    }

LABEL_34:
    if (!v38)
    {
LABEL_46:
      if (*&v62.var0)
      {
        if (*&v62.var0)
        {
        }
      }

      if (v63)
      {
        if (v63)
        {
        }
      }

LABEL_52:
      if (*&v69.var0)
      {
        if (*&v69.var0)
        {
        }
      }

      if (v70)
      {
        if (v70)
        {
        }
      }

      if (v72[0])
      {
        if (*&v73.var0)
        {
          if (*&v73.var0)
          {
            var1 = v73.var1;
LABEL_65:
            v16 = (*(*v16 + 40))(v16, var1);
            goto LABEL_66;
          }
        }

        goto LABEL_66;
      }

LABEL_62:
      v16 = v74;
      if (v74 && (BYTE8(v74) & 1) != 0)
      {
        var1 = v75;
        goto LABEL_65;
      }

LABEL_66:
      if (v76[0])
      {
        if (*&v77.var0)
        {
          if (*&v77.var0)
          {
            v50 = v77.var1;
LABEL_73:
            v16 = (*(*v16 + 40))(v16, v50);
            goto LABEL_74;
          }
        }

        goto LABEL_74;
      }

LABEL_70:
      v16 = v78;
      if (v78 && (BYTE8(v78) & 1) != 0)
      {
        v50 = v79;
        goto LABEL_73;
      }

LABEL_74:
      if (v81)
      {
      }

      goto LABEL_76;
    }

LABEL_35:
    v43 = v71;
    v44 = v64;
    if ((v63 ^ v70) <= 1 && (v71 == v64 || !strcmp(v71, v64)))
    {
      v48 = *(this + 2);
      re::StringID::StringID(&v51, a2);
      re::StringID::StringID(v52, &v77);
      re::StringID::StringID(v53, a3);
      re::StringID::StringID(&v54, &v69);
      if (a6)
      {
        re::StringID::StringID(v55, a6);
      }

      else
      {
        re::StringID::invalid(v55);
      }

      re::StringID::StringID(&v56, a4);
      re::StringID::StringID(&v57, &v73);
      re::StringID::StringID(&v58, a5);
      re::StringID::StringID(&v59, &v62);
      if (a7)
      {
        re::StringID::StringID(v60, a7);
      }

      else
      {
        re::StringID::invalid(v60);
      }

      re::DynamicArray<re::RigGraphConnection>::add((v48 + 136), &v51);
      re::RigGraphConnection::~RigGraphConnection(&v51);
      *a8 = 1;
    }

    else
    {
      v16 = re::DynamicString::format("Cannot make connection between two different types: %s - %s", &v51, v43, v44);
      v45 = v51;
      v46 = v52[0];
      v47 = v52[1];
      *a8 = 0;
      *(a8 + 8) = 5004;
      *(a8 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a8 + 24) = v45;
      *(a8 + 40) = v46;
      *(a8 + 48) = v47;
    }

    goto LABEL_46;
  }

  v26 = v82;
  *(a8 + 8) = v81;
  v27 = v83;
  v28 = v84;
  v83 = 0;
  v82 = 0uLL;
  *a8 = 0;
  *(a8 + 24) = v26;
  *(a8 + 40) = v27;
  *(a8 + 48) = v28;
LABEL_76:
  if (v86)
  {
  }
}

void re::RigGraphDefinitionBuilder::promoteParameter(const char **this@<X0>, const char *a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  re::RigGraphDefinitionBuilder::getNodeType(v63, this[2], a2);
  if (v63[0] == 1)
  {
    re::RigGraphDefinitionBuilder::getParameterType(v58, this, v64.var1, a3, a6);
    if (v58[0] == 1)
    {
      *&v53.var0 = 7118140;
      v53.var1 = "this";
      v14 = re::StringID::StringID(&v54, &v59);
      *&v55.var0 = 0;
      v55.var1 = &str_67;
      re::StringID::invalid(&v56);
      v15 = re::StringID::invalid(&v57);
      *&v48.var0 = 0;
      v48.var1 = &str_67;
      v16 = re::StringID::StringID(&v49, &v59);
      *&v50.var0 = 0;
      v50.var1 = &str_67;
      re::StringID::invalid(&v51);
      re::StringID::invalid(&v52);
      v17 = this[2];
      if (a6)
      {
        re::StringID::StringID(&v30, &v53);
        re::StringID::StringID(&v31, &v54);
        re::StringID::StringID((&v32 + 8), &v55);
        re::StringID::StringID(&v34, &v56);
        re::StringID::StringID(&v36, &v57);
        re::StringID::StringID(&v38, &v48);
        re::StringID::StringID(&v40, &v49);
        re::StringID::StringID(&v42, &v50);
        re::StringID::StringID(&v44, &v51);
        re::StringID::StringID(&v46, &v52);
        v18 = re::DynamicArray<re::RigGraphConnection>::add(v17 + 17, &v30);
        if (v46)
        {
          if (v46)
          {
          }
        }

        v46 = 0;
        v47 = &str_67;
        if (v44)
        {
          if (v44)
          {
          }
        }

        v44 = 0;
        v45 = &str_67;
        if (v42)
        {
          if (v42)
          {
          }
        }

        v42 = 0;
        v43 = &str_67;
        if (v40)
        {
          if (v40)
          {
          }
        }

        v40 = 0;
        v41 = &str_67;
        if (v38)
        {
          if (v38)
          {
          }
        }

        v38 = 0;
        v39 = &str_67;
        if (v36)
        {
          if (v36)
          {
          }
        }

        v36 = 0;
        v37 = &str_67;
        if (v34)
        {
          if (v34)
          {
          }
        }

        v34 = 0;
        v35 = &str_67;
        if (BYTE8(v32))
        {
          if (BYTE8(v32))
          {
          }
        }

        *(&v32 + 1) = 0;
        v33 = &str_67;
        if (v31)
        {
          if (v31)
          {
          }
        }

        v31 = 0;
        *&v32 = &str_67;
        if (*&v30.var0)
        {
          if (*&v30.var0)
          {
          }
        }

        v19 = this[2];
        re::StringID::StringID(&v30, &v48);
        re::StringID::StringID(&v31, &v49);
        re::StringID::StringID((&v32 + 8), &v50);
        re::StringID::StringID(&v34, &v51);
        v20 = re::StringID::StringID(&v36, &v52);
        v38 = 0;
        v39 = &str_67;
        v40 = 0;
        v41 = &str_67;
        v22 = v19 + 16;
      }

      else
      {
        re::StringID::StringID(&v30, &v48);
        re::StringID::StringID(&v31, &v49);
        re::StringID::StringID((&v32 + 8), &v50);
        re::StringID::StringID(&v34, &v51);
        re::StringID::StringID(&v36, &v52);
        re::StringID::StringID(&v38, &v53);
        re::StringID::StringID(&v40, &v54);
        re::StringID::StringID(&v42, &v55);
        re::StringID::StringID(&v44, &v56);
        re::StringID::StringID(&v46, &v57);
        v26 = re::DynamicArray<re::RigGraphConnection>::add(v17 + 17, &v30);
        if (v46)
        {
          if (v46)
          {
          }
        }

        v46 = 0;
        v47 = &str_67;
        if (v44)
        {
          if (v44)
          {
          }
        }

        v44 = 0;
        v45 = &str_67;
        if (v42)
        {
          if (v42)
          {
          }
        }

        v42 = 0;
        v43 = &str_67;
        if (v40)
        {
          if (v40)
          {
          }
        }

        v40 = 0;
        v41 = &str_67;
        if (v38)
        {
          if (v38)
          {
          }
        }

        v38 = 0;
        v39 = &str_67;
        if (v36)
        {
          if (v36)
          {
          }
        }

        v36 = 0;
        v37 = &str_67;
        if (v34)
        {
          if (v34)
          {
          }
        }

        v34 = 0;
        v35 = &str_67;
        if (BYTE8(v32))
        {
          if (BYTE8(v32))
          {
          }
        }

        *(&v32 + 1) = 0;
        v33 = &str_67;
        if (v31)
        {
          if (v31)
          {
          }
        }

        v31 = 0;
        *&v32 = &str_67;
        if (*&v30.var0)
        {
          if (*&v30.var0)
          {
          }
        }

        v27 = this[2];
        re::StringID::StringID(&v30, &v48);
        re::StringID::StringID(&v31, &v49);
        re::StringID::StringID((&v32 + 8), &v50);
        re::StringID::StringID(&v34, &v51);
        v28 = re::StringID::StringID(&v36, &v52);
        v38 = 0;
        v39 = &str_67;
        v40 = 0;
        v41 = &str_67;
        v22 = v27 + 56;
      }

      v25 = re::DynamicArray<re::RigGraphParameterProxy>::add(v22, &v30);
      if (v40)
      {
        if (v40)
        {
        }
      }

      v40 = 0;
      v41 = &str_67;
      if (v38)
      {
        if (v38)
        {
        }
      }

      v38 = 0;
      v39 = &str_67;
      if (v36)
      {
        if (v36)
        {
        }
      }

      v36 = 0;
      v37 = &str_67;
      if (v34)
      {
        if (v34)
        {
        }
      }

      v34 = 0;
      v35 = &str_67;
      if (BYTE8(v32))
      {
        if (BYTE8(v32))
        {
        }
      }

      *(&v32 + 1) = 0;
      v33 = &str_67;
      if (v31)
      {
        if (v31)
        {
        }
      }

      v31 = 0;
      *&v32 = &str_67;
      if (*&v30.var0)
      {
        if (*&v30.var0)
        {
        }
      }

      *a7 = 1;
      if (*&v52.var0)
      {
        if (*&v52.var0)
        {
        }
      }

      *&v52.var0 = 0;
      v52.var1 = &str_67;
      if (*&v51.var0)
      {
        if (*&v51.var0)
        {
        }
      }

      *&v51.var0 = 0;
      v51.var1 = &str_67;
      if (*&v50.var0)
      {
        if (*&v50.var0)
        {
        }
      }

      *&v50.var0 = 0;
      v50.var1 = &str_67;
      if (*&v49.var0)
      {
        if (*&v49.var0)
        {
        }
      }

      *&v49.var0 = 0;
      v49.var1 = &str_67;
      if (*&v48.var0)
      {
        if (*&v48.var0)
        {
        }
      }

      if (*&v57.var0)
      {
        if (*&v57.var0)
        {
        }
      }

      *&v57.var0 = 0;
      v57.var1 = &str_67;
      if (*&v56.var0)
      {
        if (*&v56.var0)
        {
        }
      }

      *&v56.var0 = 0;
      v56.var1 = &str_67;
      if (*&v55.var0)
      {
        if (*&v55.var0)
        {
        }
      }

      *&v55.var0 = 0;
      v55.var1 = &str_67;
      if (*&v54.var0)
      {
        if (*&v54.var0)
        {
        }
      }

      *&v54.var0 = 0;
      v54.var1 = &str_67;
      if (*&v53.var0)
      {
        if (*&v53.var0)
        {
        }
      }

      if (*&v59.var0)
      {
      }
    }

    else
    {
      v30 = v59;
      re::DynamicString::DynamicString(&v31, &v60);
      *a7 = 0;
      *(a7 + 8) = v30;
      *(a7 + 24) = v31;
      *(a7 + 48) = v33;
      *(a7 + 32) = v32;
      v25 = v60;
      if (v60 && (v61 & 1) != 0)
      {
        v25 = (*(*v60 + 40))(v60, v62);
      }
    }

    if (*&v64.var0)
    {
      var1 = v64.var1;
      goto LABEL_127;
    }
  }

  else
  {
    v30 = v64;
    re::DynamicString::DynamicString(&v31, &v65);
    *a7 = 0;
    *(a7 + 8) = v30;
    *(a7 + 24) = v31;
    *(a7 + 48) = v33;
    *(a7 + 32) = v32;
    v23 = v65;
    if (v65 && (v66 & 1) != 0)
    {
      var1 = v67;
LABEL_127:
      (*(*v23 + 40))(v23, var1);
    }
  }
}

void *re::DynamicArray<re::RigGraphParameterProxy>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::RigGraphParameterProxy>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 112 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  v8 = a2[4];
  v5[4] = v5[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[5] = a2[5];
  a2[4] = 0;
  a2[5] = &str_67;
  v9 = a2[6];
  v5[6] = v5[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[6] = a2[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[7] = a2[7];
  a2[6] = 0;
  a2[7] = &str_67;
  v10 = a2[8];
  v5[8] = v5[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[8] = a2[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[9] = a2[9];
  a2[8] = 0;
  a2[9] = &str_67;
  v11 = a2[10];
  v5[10] = v5[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[10] = a2[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[11] = a2[11];
  a2[10] = 0;
  a2[11] = &str_67;
  v12 = a2[12];
  v5[12] = v5[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v5[12] = a2[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v5[13] = a2[13];
  a2[12] = 0;
  a2[13] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t anonymous namespace::getNodeType(_anonymous_namespace_ *var1, const char *a2, uint64_t a3, const StringID *a4)
{
  v5 = var1;
  if (!a3)
  {
LABEL_14:
    result = re::DynamicString::format("Node name '%s' not found!", __s2, a2);
    v11 = *__s2;
    v12 = v16;
    v13 = v17;
    *v5 = 0;
    *(v5 + 1) = 5005;
    *(v5 + 2) = &re::AnimationErrorCategory(void)::instance;
    *(v5 + 24) = v11;
    *(v5 + 5) = v12;
    *(v5 + 6) = v13;
    return result;
  }

  v6 = a4 + 1;
  v7 = 32 * a3;
  while (1)
  {
    __s2[0] = 0;
    __s2[1] = &str_67;
    v8 = __s2[0];
    if ((__s2[0] ^ *&v6[-1].var0) > 1uLL)
    {
      v9 = 0;
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      var1 = v6[-1].var1;
      if (var1 == __s2[1])
      {
        v9 = 1;
        if ((__s2[0] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        var1 = strcmp(var1, __s2[1]);
        v9 = var1 == 0;
        if ((v8 & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    if (__s2[0])
    {
    }

LABEL_12:
    if (v9)
    {
      break;
    }

    v6 += 2;
    v7 -= 32;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  result = re::StringID::StringID(__s2, v6);
  *v5 = 1;
  v14 = __s2[1];
  *(v5 + 1) = __s2[0];
  *(v5 + 2) = v14;
  return result;
}

void anonymous namespace::getParameterCount(_anonymous_namespace_ *this@<X0>, re::RigEnvironment *a2@<X1>, uint64_t a3@<X8>)
{
  if (this)
  {
    v7 = *this;
    if (*this)
    {
      v8 = *(this + 1);
      if (v8)
      {
        v9 = this + 2;
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v22 = 2 * v7;
  v23 = this;
  v11 = re::RigEnvironment::lookupRigGraphNode(a2, &v22);
  v12 = v11;
  if (v22)
  {
    if (v22)
    {
    }
  }

  if (v12)
  {
    v13 = (v12 + 16);
LABEL_25:
    v21 = *v13;
    *a3 = 1;
    *(a3 + 8) = v21;
    return;
  }

  if (this)
  {
    v14 = *this;
    if (*this)
    {
      v15 = *(this + 1);
      if (v15)
      {
        v16 = this + 2;
        do
        {
          v14 = 31 * v14 + v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v22 = 2 * v14;
  v23 = this;
  v18 = re::RigEnvironment::lookupRigGraphOperator(a2, &v22);
  v20 = v18;
  if (v22)
  {
    if (v22)
    {
    }
  }

  if (v20)
  {
    v13 = (v20 + 24);
    goto LABEL_25;
  }

  re::internal::assertLog(5, v19, "assertion failure: '%s' (%s:line %i) Node type %s not found!", "false", "getParameterCount", 25, this);
  _os_crash();
  __break(1u);
}

unint64_t re::RigGraphNode::inputType(re::RigGraphNode *this, unint64_t a2)
{
  if (*(this + 2) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 4) + 40 * a2 + 16);
  if (*(this + 17) <= v2)
  {
    goto LABEL_5;
  }

  return *(this + 19) + 16 * v2;
}

void re::RigGraphDefinitionValidator::validate(re::RigGraphDefinitionValidator *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  if (!v3)
  {
    re::DynamicString::format("Undefined rig definition!", v112);
    v93 = *v112;
    v94 = *&v112[16];
    v95 = v113;
    *a2 = 0;
    v96 = 3000;
    goto LABEL_284;
  }

  if (!*(this + 2))
  {
    re::DynamicString::format("Undefined rig environment!", v112);
    v93 = *v112;
    v94 = *&v112[16];
    v95 = v113;
    *a2 = 0;
    v96 = 5001;
    goto LABEL_284;
  }

  v5 = v3[14];
  if (v5)
  {
    v6 = (v3[16] + 24);
    v7 = 32 * v5;
    do
    {
      v8 = *(v6 - 2);
      if (v112[0] == 1)
      {
        *v122 = 0;
        *&v122[8] = &str_67;
        v110 = (*(*(this + 1) + 112) - 1);
        v10 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 24, v122, &v110);
        if (v122[0])
        {
          if (v122[0])
          {
          }
        }

        *a2 = 1;
      }

      else
      {
        *v122 = *&v112[8];
        re::DynamicString::DynamicString(&v122[16], &v113);
        *a2 = 0;
        *(a2 + 8) = *v122;
        v11 = v124;
        *(a2 + 24) = *&v122[16];
        *(a2 + 48) = v11;
        *(a2 + 32) = v123;
        if (!v113)
        {
          return;
        }

        if ((BYTE8(v113) & 1) == 0)
        {
          return;
        }

        (*(*v113 + 40))();
        if ((*a2 & 1) == 0)
        {
          return;
        }
      }

      v6 += 4;
      v7 -= 32;
    }

    while (v7);
    v3 = *(this + 1);
  }

  v12 = v3[4];
  if (v12)
  {
    v13 = (v3[6] + 88);
    for (i = 112 * v12; i; i -= 112)
    {
      v15 = *(v13 - 7);
      if (v15 < 0xFFFFFFFFFFFFFFFELL || (v15 & 1) != 0)
      {
        if (v15 > 1)
        {
          goto LABEL_23;
        }

        v16 = *(v13 - 6);
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = *(v13 - 6);
      }

      if (!*v16)
      {
        re::DynamicString::format("Input parameter name '%s' contains invalid parameter value '%s'.", v112, *v13, v16);
        goto LABEL_283;
      }

LABEL_23:
      v17 = *(v13 - 11);
      if (v17 < 0xFFFFFFFFFFFFFFFELL || (v17 & 1) != 0)
      {
        if (v17 > 1)
        {
          goto LABEL_29;
        }

        v18 = *(v13 - 10);
        if (!v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = *(v13 - 10);
      }

      if (!*v18)
      {
        re::DynamicString::format("Input parameter name '%s' contains invalid node value '%s'.", v112, *v13, v18);
        goto LABEL_283;
      }

LABEL_29:
      v19 = *(v13 - 9);
      if (v19 >= 0xFFFFFFFFFFFFFFFELL && (v19 & 1) == 0)
      {
        v20 = *(v13 - 8);
LABEL_34:
        if (!*v20)
        {
          re::DynamicString::format("Input parameter name '%s' contains invalid type value '%s'.", v112, *v13, v20);
          goto LABEL_283;
        }

        goto LABEL_35;
      }

      if (v19 <= 1)
      {
        v20 = *(v13 - 8);
        if (v20)
        {
          goto LABEL_34;
        }
      }

LABEL_35:
      v13 += 14;
    }
  }

  v21 = v3[9];
  if (v21)
  {
    v22 = (v3[11] + 88);
    for (j = 112 * v21; j; j -= 112)
    {
      v24 = *(v22 - 7);
      if (v24 < 0xFFFFFFFFFFFFFFFELL || (v24 & 1) != 0)
      {
        if (v24 > 1)
        {
          goto LABEL_44;
        }

        v25 = *(v22 - 6);
        if (!v25)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v25 = *(v22 - 6);
      }

      if (!*v25)
      {
        re::DynamicString::format("Output parameter name '%s' contains invalid parameter value '%s'.", v112, *v22, v25);
        goto LABEL_283;
      }

LABEL_44:
      v26 = *(v22 - 11);
      if (v26 < 0xFFFFFFFFFFFFFFFELL || (v26 & 1) != 0)
      {
        if (v26 > 1)
        {
          goto LABEL_50;
        }

        v27 = *(v22 - 10);
        if (!v27)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v27 = *(v22 - 10);
      }

      if (!*v27)
      {
        re::DynamicString::format("Output parameter name '%s' contains invalid node value '%s'.", v112, *v22, v27);
        goto LABEL_283;
      }

LABEL_50:
      v28 = *(v22 - 9);
      if (v28 < 0xFFFFFFFFFFFFFFFELL || (v28 & 1) != 0)
      {
        if (v28 > 1)
        {
          goto LABEL_56;
        }

        v29 = *(v22 - 8);
        if (!v29)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v29 = *(v22 - 8);
      }

      if (!*v29)
      {
        re::DynamicString::format("Output parameter name '%s' contains invalid type value '%s'.", v112, *v22, v29);
LABEL_283:
        v93 = *v112;
        v94 = *&v112[16];
        v95 = v113;
        *a2 = 0;
        v96 = 5006;
LABEL_284:
        *(a2 + 8) = v96;
        *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a2 + 24) = v93;
        *(a2 + 40) = v94;
        *(a2 + 48) = v95;
        return;
      }

LABEL_56:
      v22 += 14;
    }
  }

  v30 = v3[19];
  if (!v30)
  {
LABEL_272:
    *a2 = 1;
    return;
  }

  v31 = v3[21];
  v107 = &v31[10 * v30];
  while (1)
  {
    v33 = v31 + 2;
    v32 = *&v31[2].var0;
    if (v32 < 0xFFFFFFFFFFFFFFFELL || (v32 & 1) != 0)
    {
      if (v32 > 1)
      {
        goto LABEL_65;
      }

      var1 = v31[2].var1;
      if (!var1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      var1 = v31[2].var1;
    }

    if (!*var1)
    {
      re::DynamicString::format("Source parameter name '%s' is invalid for node '%s' connection!", v112, var1, v31->var1);
      goto LABEL_283;
    }

LABEL_65:
    v35 = *&v31[7].var0;
    if (v35 < 0xFFFFFFFFFFFFFFFELL || (v35 & 1) != 0)
    {
      if (v35 > 1)
      {
        goto LABEL_71;
      }

      v36 = v31[7].var1;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v36 = v31[7].var1;
    }

    if (!*v36)
    {
      re::DynamicString::format("Target parameter name '%s' is invalid for node '%s' connection!", v112, v36, v31[5].var1);
      goto LABEL_283;
    }

LABEL_71:
    v37 = *&v31->var0;
    if ((*&v31->var0 & 0xFFFFFFFFFFFFFFFELL) != 0x6C9D3C || (v38 = v31->var1, v38 != "this") && strcmp(v38, "this"))
    {
      v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v37 >> 31) ^ (v37 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v37 >> 31) ^ (v37 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 24, v31, v39 ^ (v39 >> 31), v112);
      if (*&v112[12] == 0x7FFFFFFF)
      {
        re::DynamicString::format("Node name '%s' not found for connection!", v112, v31->var1);
        v93 = *v112;
        v94 = *&v112[16];
        v95 = v113;
        *a2 = 0;
        v96 = 5005;
        goto LABEL_284;
      }

      re::RigGraphDefinitionBuilder::getNodeType(v112, *(this + 1), v31->var1);
      if ((v112[0] & 1) == 0)
      {
        goto LABEL_279;
      }

      v40 = *&v112[16];
      ParameterType = re::RigGraphDefinitionValidator::getParameterType(v122, this, *&v112[16], v31[2].var1, 0);
      v42 = v122[0];
      if (v122[0] == 1)
      {
        if (v122[8])
        {
        }
      }

      else
      {
        *(a2 + 8) = *&v122[8];
        v43 = v123;
        *&v123 = 0;
        v44 = v124;
        v45 = v125;
        *a2 = 0;
        *(a2 + 24) = v43;
        *(a2 + 40) = v44;
        *(a2 + 48) = v45;
      }

      if (v112[8])
      {
      }

      if ((v42 & 1) == 0)
      {
        return;
      }

      goto LABEL_83;
    }

    v108 = v31;
    v106 = v31 + 2;
    re::StringID::StringID(v122, v31 + 2);
    v53 = *(this + 1);
    v54 = v53[4];
    if (!v54)
    {
      goto LABEL_135;
    }

    v55 = 0;
    v56 = 0;
    v57 = v53[6];
    v58 = 112 * v54 - 112;
    do
    {
      re::StringID::StringID(v112, (v57 + v55));
      re::StringID::StringID(&v112[16], (v57 + v55 + 16));
      re::StringID::StringID((&v113 + 8), (v57 + v55 + 32));
      re::StringID::StringID(&v114[1], (v57 + v55 + 48));
      re::StringID::StringID(&v116, (v57 + v55 + 64));
      re::StringID::StringID(&v118, (v57 + v55 + 80));
      v59 = re::StringID::StringID(&v120, (v57 + v55 + 96));
      v60 = *v122;
      if ((*v122 ^ v118) <= 1 && ((v59 = __s1, __s1 == *&v122[8]) || (v59 = strcmp(__s1, *&v122[8]), !v59)))
      {
        v56 = 1;
        v61 = 1;
      }

      else
      {
        if ((*(&v113 + 1) ^ v60) > 1)
        {
          v61 = 0;
        }

        else
        {
          v59 = v114[0];
          if (v114[0] == *&v122[8])
          {
            v61 = 1;
          }

          else
          {
            v59 = strcmp(v114[0], *&v122[8]);
            v61 = v59 == 0;
          }
        }

        v56 |= v61;
      }

      if (v120)
      {
        if (v120)
        {
        }
      }

      v120 = 0;
      v121 = &str_67;
      if (v118)
      {
        if (v118)
        {
        }
      }

      v118 = 0;
      __s1 = &str_67;
      if (v116)
      {
        if (v116)
        {
        }
      }

      v116 = 0;
      v117 = &str_67;
      if (v114[1])
      {
        if (v114[1])
        {
        }
      }

      v114[1] = 0;
      v115 = &str_67;
      if (BYTE8(v113))
      {
        if (BYTE8(v113))
        {
        }
      }

      *(&v113 + 1) = 0;
      v114[0] = &str_67;
      if (v112[16])
      {
        if (v112[16])
        {
        }
      }

      *&v112[16] = 0;
      *&v113 = &str_67;
      if (v112[0])
      {
        if (v112[0])
        {
        }
      }

      v62 = v58 == v55 || v61;
      v55 += 112;
    }

    while (v62 != 1);
    if ((v56 & 1) == 0)
    {
      v53 = *(this + 1);
LABEL_135:
      v63 = v53[9];
      if (!v63)
      {
        goto LABEL_286;
      }

      v64 = 0;
      v65 = 0;
      v66 = v53[11];
      v67 = 112 * v63 - 112;
      do
      {
        re::StringID::StringID(v112, (v66 + v64));
        re::StringID::StringID(&v112[16], (v66 + v64 + 16));
        re::StringID::StringID((&v113 + 8), (v66 + v64 + 32));
        re::StringID::StringID(&v114[1], (v66 + v64 + 48));
        re::StringID::StringID(&v116, (v66 + v64 + 64));
        re::StringID::StringID(&v118, (v66 + v64 + 80));
        v68 = re::StringID::StringID(&v120, (v66 + v64 + 96));
        v69 = *v122;
        if ((*v122 ^ v118) <= 1 && ((v68 = __s1, __s1 == *&v122[8]) || (v68 = strcmp(__s1, *&v122[8]), !v68)))
        {
          v65 = 1;
          v70 = 1;
        }

        else
        {
          if ((*(&v113 + 1) ^ v69) > 1)
          {
            v70 = 0;
          }

          else
          {
            v68 = v114[0];
            if (v114[0] == *&v122[8])
            {
              v70 = 1;
            }

            else
            {
              v68 = strcmp(v114[0], *&v122[8]);
              v70 = v68 == 0;
            }
          }

          v65 |= v70;
        }

        if (v120)
        {
          if (v120)
          {
          }
        }

        v120 = 0;
        v121 = &str_67;
        if (v118)
        {
          if (v118)
          {
          }
        }

        v118 = 0;
        __s1 = &str_67;
        if (v116)
        {
          if (v116)
          {
          }
        }

        v116 = 0;
        v117 = &str_67;
        if (v114[1])
        {
          if (v114[1])
          {
          }
        }

        v114[1] = 0;
        v115 = &str_67;
        if (BYTE8(v113))
        {
          if (BYTE8(v113))
          {
          }
        }

        *(&v113 + 1) = 0;
        v114[0] = &str_67;
        if (v112[16])
        {
          if (v112[16])
          {
          }
        }

        *&v112[16] = 0;
        *&v113 = &str_67;
        if (v112[0])
        {
          if (v112[0])
          {
          }
        }

        v71 = v67 == v64 || v70;
        v64 += 112;
      }

      while (v71 != 1);
      if ((v65 & 1) == 0)
      {
LABEL_286:
        re::DynamicString::format("Source parameter name '%s' not found for node '%s' connection!", v112, *&v122[8], v108->var1);
LABEL_288:
        v100 = *v112;
        v101 = *&v112[16];
        v102 = v113;
        *a2 = 0;
        *(a2 + 8) = 5006;
        *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a2 + 24) = v100;
        *(a2 + 40) = v101;
        *(a2 + 48) = v102;
        goto LABEL_292;
      }
    }

    v31 = v108;
    re::StringID::StringID(&v110, v108 + 1);
    re::RigEnvironment::lookupRigDataType(*(this + 2), &v110, v112);
    if ((v112[0] & 1) == 0)
    {
      re::DynamicString::format("Source parameter name '%s' type '%s' not found!", v112, *&v122[8], v111);
      goto LABEL_291;
    }

    v72 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v113 + 8);
    if (v112[16])
    {
      if (v112[16])
      {
      }
    }

    v33 = v106;
    if (v110)
    {
      if (v110)
      {
      }
    }

    if (v122[0])
    {
      if (v122[0])
      {
      }
    }

LABEL_83:
    v46 = v31[5].var1;
    if ((*&v31[5].var0 & 0xFFFFFFFFFFFFFFFELL) == 0x6C9D3C && (v46 == "this" || !strcmp(v31[5].var1, "this")))
    {
      break;
    }

    re::RigGraphDefinitionBuilder::getNodeType(v112, *(this + 1), v46);
    if ((v112[0] & 1) == 0)
    {
LABEL_279:
      *(a2 + 8) = *&v112[8];
      v97 = v113;
      v113 = 0u;
      v98 = v114[0];
      v99 = v114[1];
      *v114 = 0u;
      *a2 = 0;
      *(a2 + 24) = v97;
      *(a2 + 40) = v98;
      *(a2 + 48) = v99;
      re::Result<re::StringID,re::DetailedError>::~Result(v112);
      return;
    }

    v47 = *&v112[16];
    v48 = re::RigGraphDefinitionValidator::getParameterType(v122, this, *&v112[16], v31[7].var1, 1);
    v49 = v122[0];
    if (v122[0] == 1)
    {
      if (v122[8])
      {
      }
    }

    else
    {
      *(a2 + 8) = *&v122[8];
      v50 = v123;
      *&v123 = 0;
      v51 = v124;
      v52 = v125;
      *a2 = 0;
      *(a2 + 24) = v50;
      *(a2 + 40) = v51;
      *(a2 + 48) = v52;
    }

    if (v112[8])
    {
    }

    if ((v49 & 1) == 0)
    {
      return;
    }

LABEL_94:
    v31 += 10;
    if (v31 == v107)
    {
      goto LABEL_272;
    }
  }

  re::StringID::StringID(v122, v33 + 5);
  v73 = *(this + 1);
  v74 = v73[4];
  v109 = v31;
  if (!v74)
  {
    goto LABEL_222;
  }

  v75 = 0;
  v76 = 0;
  v77 = v73[6];
  v78 = 112 * v74 - 112;
  do
  {
    re::StringID::StringID(v112, (v77 + v75));
    re::StringID::StringID(&v112[16], (v77 + v75 + 16));
    re::StringID::StringID((&v113 + 8), (v77 + v75 + 32));
    re::StringID::StringID(&v114[1], (v77 + v75 + 48));
    re::StringID::StringID(&v116, (v77 + v75 + 64));
    re::StringID::StringID(&v118, (v77 + v75 + 80));
    v79 = re::StringID::StringID(&v120, (v77 + v75 + 96));
    v80 = *v122;
    if ((*v122 ^ v118) <= 1 && ((v79 = __s1, __s1 == *&v122[8]) || (v79 = strcmp(__s1, *&v122[8]), !v79)))
    {
      v76 = 1;
      v81 = 1;
    }

    else
    {
      if ((*(&v113 + 1) ^ v80) > 1)
      {
        v81 = 0;
      }

      else
      {
        v79 = v114[0];
        if (v114[0] == *&v122[8])
        {
          v81 = 1;
        }

        else
        {
          v79 = strcmp(v114[0], *&v122[8]);
          v81 = v79 == 0;
        }
      }

      v76 |= v81;
    }

    if (v120)
    {
      if (v120)
      {
      }
    }

    v120 = 0;
    v121 = &str_67;
    if (v118)
    {
      if (v118)
      {
      }
    }

    v118 = 0;
    __s1 = &str_67;
    if (v116)
    {
      if (v116)
      {
      }
    }

    v116 = 0;
    v117 = &str_67;
    if (v114[1])
    {
      if (v114[1])
      {
      }
    }

    v114[1] = 0;
    v115 = &str_67;
    if (BYTE8(v113))
    {
      if (BYTE8(v113))
      {
      }
    }

    *(&v113 + 1) = 0;
    v114[0] = &str_67;
    if (v112[16])
    {
      if (v112[16])
      {
      }
    }

    *&v112[16] = 0;
    *&v113 = &str_67;
    if (v112[0])
    {
      if (v112[0])
      {
      }
    }

    v82 = v78 == v75 || v81;
    v75 += 112;
  }

  while (v82 != 1);
  v31 = v109;
  if ((v76 & 1) == 0)
  {
    v73 = *(this + 1);
LABEL_222:
    v83 = v73[9];
    if (!v83)
    {
      goto LABEL_287;
    }

    v84 = 0;
    v85 = 0;
    v86 = v73[11];
    v87 = 112 * v83 - 112;
    do
    {
      re::StringID::StringID(v112, (v86 + v84));
      re::StringID::StringID(&v112[16], (v86 + v84 + 16));
      re::StringID::StringID((&v113 + 8), (v86 + v84 + 32));
      re::StringID::StringID(&v114[1], (v86 + v84 + 48));
      re::StringID::StringID(&v116, (v86 + v84 + 64));
      re::StringID::StringID(&v118, (v86 + v84 + 80));
      v88 = re::StringID::StringID(&v120, (v86 + v84 + 96));
      v89 = *v122;
      if ((*v122 ^ v118) <= 1 && ((v88 = __s1, __s1 == *&v122[8]) || (v88 = strcmp(__s1, *&v122[8]), !v88)))
      {
        v85 = 1;
        v90 = 1;
      }

      else
      {
        if ((*(&v113 + 1) ^ v89) > 1)
        {
          v90 = 0;
        }

        else
        {
          v88 = v114[0];
          if (v114[0] == *&v122[8])
          {
            v90 = 1;
          }

          else
          {
            v88 = strcmp(v114[0], *&v122[8]);
            v90 = v88 == 0;
          }
        }

        v85 |= v90;
      }

      if (v120)
      {
        if (v120)
        {
        }
      }

      v120 = 0;
      v121 = &str_67;
      if (v118)
      {
        if (v118)
        {
        }
      }

      v118 = 0;
      __s1 = &str_67;
      if (v116)
      {
        if (v116)
        {
        }
      }

      v116 = 0;
      v117 = &str_67;
      if (v114[1])
      {
        if (v114[1])
        {
        }
      }

      v114[1] = 0;
      v115 = &str_67;
      if (BYTE8(v113))
      {
        if (BYTE8(v113))
        {
        }
      }

      *(&v113 + 1) = 0;
      v114[0] = &str_67;
      if (v112[16])
      {
        if (v112[16])
        {
        }
      }

      *&v112[16] = 0;
      *&v113 = &str_67;
      if (v112[0])
      {
        if (v112[0])
        {
        }
      }

      v91 = v87 == v84 || v90;
      v84 += 112;
    }

    while (v91 != 1);
    v31 = v109;
    if ((v85 & 1) == 0)
    {
LABEL_287:
      re::DynamicString::format("Target parameter name '%s' not found for node '%s' connection!", v112, *&v122[8], v31->var1);
      goto LABEL_288;
    }
  }

  re::StringID::StringID(&v110, v31 + 6);
  re::RigEnvironment::lookupRigDataType(*(this + 2), &v110, v112);
  if (v112[0])
  {
    v92 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v113 + 8);
    if (v112[16])
    {
      if (v112[16])
      {
      }
    }

    if (v110)
    {
      if (v110)
      {
      }
    }

    if (v122[0])
    {
      if (v122[0])
      {
      }
    }

    goto LABEL_94;
  }

  re::DynamicString::format("Target parameter name '%s' type '%s' not found!", v112, *&v122[8], v111);
LABEL_291:
  v103 = *v112;
  v104 = *&v112[16];
  v105 = v113;
  *a2 = 0;
  *(a2 + 8) = 5000;
  *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a2 + 24) = v103;
  *(a2 + 40) = v104;
  *(a2 + 48) = v105;
  re::StringID::destroyString(&v110);
LABEL_292:
  re::StringID::destroyString(v122);
}

uint64_t re::RigGraphDefinitionValidator::getParameterType(re::RigGraphDefinitionValidator *this, const char *a2, const char *a3, const char *a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 2);
  if (a3)
  {
    v11 = *a3;
    if (*a3)
    {
      v12 = a3[1];
      if (v12)
      {
        v13 = a3 + 2;
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

  *&v45 = 2 * v11;
  *(&v45 + 1) = a3;
  v15 = re::RigEnvironment::lookupRigGraphNode(v10, &v45);
  v16 = v15;
  if (v45)
  {
    if (v45)
    {
    }
  }

  if (!v16)
  {
    v24 = *(a2 + 2);
    if (a3)
    {
      v25 = *a3;
      if (*a3)
      {
        v26 = a3[1];
        if (v26)
        {
          v27 = a3 + 2;
          do
          {
            v25 = 31 * v25 + v26;
            v28 = *v27++;
            v26 = v28;
          }

          while (v28);
        }
      }
    }

    else
    {
      v25 = 0;
    }

    *&v45 = 2 * v25;
    *(&v45 + 1) = a3;
    v29 = re::RigEnvironment::lookupRigGraphOperator(v24, &v45);
    v30 = v29;
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (!v30)
    {
      result = re::DynamicString::format("Node type '%s' not found!", &v45, a3);
      v39 = v45;
      v41 = *(&v46 + 1);
      v40 = v46;
      *this = 0;
      v42 = 5004;
      goto LABEL_39;
    }

    v31 = 40;
    if (a5)
    {
      v31 = 16;
    }

    v32 = v30 + v31;
    v33 = *(v32 + 1);
    if (v33)
    {
      v34 = *(v32 + 2);
      v35 = strlen(a4);
      v36 = 0;
      v37 = v34 + 1;
      while (v35 > strlen(v37[-1].var1) || memcmp(v37[-1].var1, a4, v35))
      {
        ++v36;
        v37 += 2;
        if (v33 == v36)
        {
          goto LABEL_38;
        }
      }

      if (v33 <= v36)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v43 = v37;
      goto LABEL_44;
    }

LABEL_38:
    result = re::DynamicString::format("Parameter name '%s' not found!", &v45, a4);
    v39 = v45;
    v41 = *(&v46 + 1);
    v40 = v46;
    *this = 0;
    v42 = 5006;
LABEL_39:
    *(this + 1) = v42;
    *(this + 2) = &re::AnimationErrorCategory(void)::instance;
    *(this + 24) = v39;
    *(this + 5) = v40;
    *(this + 6) = v41;
    return result;
  }

  v17 = 40;
  if (a5)
  {
    v17 = 0;
  }

  v18 = v16 + v17;
  v19 = *(v18 + 2);
  if (!v19)
  {
    goto LABEL_38;
  }

  v20 = *(v18 + 4);
  v21 = strlen(a4);
  v22 = 0;
  v23 = (v20 + 8);
  while (v21 > strlen(*v23) || memcmp(*v23, a4, v21))
  {
    ++v22;
    v23 += 5;
    if (v19 == v22)
    {
      goto LABEL_38;
    }
  }

  v43 = re::RigGraphNode::inputType(v16, v22);
LABEL_44:
  result = re::StringID::StringID(&v45, v43);
  *this = 1;
  v44 = *(&v45 + 1);
  *(this + 1) = v45;
  *(this + 2) = v44;
  return result;
}

void *re::allocInfo_RigGraphNodeParameterHandle(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E038))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E230, "RigGraphNodeParameterHandle");
    __cxa_guard_release(&qword_1EE18E038);
  }

  return &unk_1EE18E230;
}

void re::initInfo_RigGraphNodeParameterHandle(re *this, re::IntrospectionBase *a2)
{
  v27[0] = 0xCE511803B47B62;
  v27[1] = "RigGraphNodeParameterHandle";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE18E040, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E040);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "node";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18E118 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "type";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18E120 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "parameter";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18E128 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::StringID>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "attributeType";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x3000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE18E130 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::IntrospectionInfo<re::StringID>::get(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "attribute";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x4000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE18E138 = v25;
      __cxa_guard_release(&qword_1EE18E040);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE18E118;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphNodeParameterHandle>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphNodeParameterHandle>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphNodeParameterHandle>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphNodeParameterHandle>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphNodeParameterHandle>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::invalid(a3);
  re::StringID::invalid((a3 + 16));
  re::StringID::invalid((a3 + 32));
  re::StringID::invalid((a3 + 48));
  return re::StringID::invalid((a3 + 64));
}

void re::internal::defaultDestruct<re::RigGraphNodeParameterHandle>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphNodeParameterHandle>(uint64_t a1)
{
  re::StringID::invalid(a1);
  re::StringID::invalid((a1 + 16));
  re::StringID::invalid((a1 + 32));
  re::StringID::invalid((a1 + 48));
  return re::StringID::invalid((a1 + 64));
}

void re::internal::defaultDestructV2<re::RigGraphNodeParameterHandle>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphParameterProxy(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E050))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E2C0, "RigGraphParameterProxy");
    __cxa_guard_release(&qword_1EE18E050);
  }

  return &unk_1EE18E2C0;
}

void re::initInfo_RigGraphParameterProxy(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0xB79804C19E716C46;
  v20[1] = "RigGraphParameterProxy";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE18E058, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E058);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E048;
      if (!qword_1EE18E048)
      {
        v8 = re::allocInfo_RigGraphNodeParameterHandle(v6);
        qword_1EE18E048 = v8;
        re::initInfo_RigGraphNodeParameterHandle(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "parameter";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E100 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "name";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x5000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18E108 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "value";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x6000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18E110 = v18;
      __cxa_guard_release(&qword_1EE18E058);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18E100;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphParameterProxy>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphParameterProxy>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphParameterProxy>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphParameterProxy>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphParameterProxy>(uint64_t a1, uint64_t a2, void *a3)
{
  re::StringID::invalid(a3);
  re::StringID::invalid((a3 + 2));
  re::StringID::invalid((a3 + 4));
  re::StringID::invalid((a3 + 6));
  result = re::StringID::invalid((a3 + 8));
  a3[10] = 0;
  a3[11] = &str_67;
  a3[12] = 0;
  a3[13] = &str_67;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphParameterProxy>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 96));
  re::StringID::destroyString((a3 + 80));
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphParameterProxy>(void *a1)
{
  re::StringID::invalid(a1);
  re::StringID::invalid((a1 + 2));
  re::StringID::invalid((a1 + 4));
  re::StringID::invalid((a1 + 6));
  result = re::StringID::invalid((a1 + 8));
  a1[10] = 0;
  a1[11] = &str_67;
  a1[12] = 0;
  a1[13] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphParameterProxy>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 96));
  re::StringID::destroyString((a1 + 80));
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphConnection(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E068))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E350, "RigGraphConnection");
    __cxa_guard_release(&qword_1EE18E068);
  }

  return &unk_1EE18E350;
}

void re::initInfo_RigGraphConnection(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x7AFB480BA3239778;
  v17[1] = "RigGraphConnection";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE18E070, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E070);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E048;
      if (!qword_1EE18E048)
      {
        v8 = re::allocInfo_RigGraphNodeParameterHandle(v6);
        qword_1EE18E048 = v8;
        re::initInfo_RigGraphNodeParameterHandle(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "source";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E0D0 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = v11;
      v13 = qword_1EE18E048;
      if (!qword_1EE18E048)
      {
        v13 = re::allocInfo_RigGraphNodeParameterHandle(v11);
        qword_1EE18E048 = v13;
        re::initInfo_RigGraphNodeParameterHandle(v13, v14);
      }

      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "target";
      *(v15 + 16) = v13;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x5000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE18E0D8 = v15;
      __cxa_guard_release(&qword_1EE18E070);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E0D0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphConnection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphConnection>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphConnection>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphConnection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphConnection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::invalid(a3);
  re::StringID::invalid((a3 + 16));
  re::StringID::invalid((a3 + 32));
  re::StringID::invalid((a3 + 48));
  re::StringID::invalid((a3 + 64));
  re::StringID::invalid((a3 + 80));
  re::StringID::invalid((a3 + 96));
  re::StringID::invalid((a3 + 112));
  re::StringID::invalid((a3 + 128));
  return re::StringID::invalid((a3 + 144));
}

void re::internal::defaultDestruct<re::RigGraphConnection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 144));
  re::StringID::destroyString((a3 + 128));
  re::StringID::destroyString((a3 + 112));
  re::StringID::destroyString((a3 + 96));
  re::StringID::destroyString((a3 + 80));
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphConnection>(uint64_t a1)
{
  re::StringID::invalid(a1);
  re::StringID::invalid((a1 + 16));
  re::StringID::invalid((a1 + 32));
  re::StringID::invalid((a1 + 48));
  re::StringID::invalid((a1 + 64));
  re::StringID::invalid((a1 + 80));
  re::StringID::invalid((a1 + 96));
  re::StringID::invalid((a1 + 112));
  re::StringID::invalid((a1 + 128));
  return re::StringID::invalid((a1 + 144));
}

void re::internal::defaultDestructV2<re::RigGraphConnection>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 144));
  re::StringID::destroyString((a1 + 128));
  re::StringID::destroyString((a1 + 112));
  re::StringID::destroyString((a1 + 96));
  re::StringID::destroyString((a1 + 80));
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphInputValue(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E078))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E3E0, "RigGraphInputValue");
    __cxa_guard_release(&qword_1EE18E078);
  }

  return &unk_1EE18E3E0;
}

void re::initInfo_RigGraphInputValue(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x7AFC672AA3D9C94ALL;
  v16[1] = "RigGraphInputValue";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE18E080, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E080);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE18E048;
      if (!qword_1EE18E048)
      {
        v8 = re::allocInfo_RigGraphNodeParameterHandle(v6);
        qword_1EE18E048 = v8;
        re::initInfo_RigGraphNodeParameterHandle(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "inputNode";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18E0E0 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "value";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x5000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18E0E8 = v14;
      __cxa_guard_release(&qword_1EE18E080);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E0E0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphInputValue>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphInputValue>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphInputValue>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphInputValue>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphInputValue>(uint64_t a1, uint64_t a2, void *a3)
{
  re::StringID::invalid(a3);
  re::StringID::invalid((a3 + 2));
  re::StringID::invalid((a3 + 4));
  re::StringID::invalid((a3 + 6));
  result = re::StringID::invalid((a3 + 8));
  a3[10] = 0;
  a3[11] = &str_67;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphInputValue>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 80));
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphInputValue>(void *a1)
{
  re::StringID::invalid(a1);
  re::StringID::invalid((a1 + 2));
  re::StringID::invalid((a1 + 4));
  re::StringID::invalid((a1 + 6));
  result = re::StringID::invalid((a1 + 8));
  a1[10] = 0;
  a1[11] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphInputValue>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 80));
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphNodeDescription(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E090))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E470, "RigGraphNodeDescription");
    __cxa_guard_release(&qword_1EE18E090);
  }

  return &unk_1EE18E470;
}

void re::initInfo_RigGraphNodeDescription(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xF8858BA97F982CF8;
  v15[1] = "RigGraphNodeDescription";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18E098, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E098);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18E0F0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "type";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18E0F8 = v13;
      __cxa_guard_release(&qword_1EE18E098);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E0F0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphNodeDescription>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphNodeDescription>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphNodeDescription>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphNodeDescription>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::internal::defaultDestruct<re::RigGraphNodeDescription>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void re::internal::defaultDestructV2<re::RigGraphNodeDescription>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E0A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E0A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E500, "RigGraphDefinition");
    __cxa_guard_release(&qword_1EE18E0A8);
  }

  return &unk_1EE18E500;
}

void re::initInfo_RigGraphDefinition(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x7AFB683786AD0462;
  v22[1] = "RigGraphDefinition";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE18E0B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18E0B0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "type";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18E140 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::RigGraphParameterProxy>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "inputParameters";
      *(v11 + 16) = &qword_1EE18E170;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE18E148 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::DynamicArray<re::RigGraphParameterProxy>>::get(v12);
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "outputParameters";
      *(v13 + 16) = &qword_1EE18E170;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3800000003;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18E150 = v13;
      v14 = re::introspectionAllocator(v13);
      re::IntrospectionInfo<re::DynamicArray<re::RigGraphNodeDescription>>::get(v14);
      v15 = (*(*v14 + 32))(v14, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "nodes";
      *(v15 + 16) = &qword_1EE18E1B0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x6000000004;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE18E158 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(1);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "connections";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x8800000005;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18E160 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::DynamicArray<re::RigGraphInputValue>>::get(v19);
      v20 = (*(*v19 + 32))(v19, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "inputValues";
      *(v20 + 16) = &qword_1EE18E1F0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xB000000006;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE18E168 = v20;
      __cxa_guard_release(&qword_1EE18E0B0);
    }
  }

  *(this + 2) = 0xD800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE18E140;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphParameterProxy>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18E0B8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18E0B8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18E170);
      qword_1EE18E170 = &unk_1F5CADC70;
      __cxa_guard_release(&qword_1EE18E0B8);
    }
  }

  if ((_MergedGlobals_11 & 1) == 0)
  {
    v1 = qword_1EE18E060;
    if (qword_1EE18E060 || (v1 = re::allocInfo_RigGraphParameterProxy(a1), qword_1EE18E060 = v1, re::initInfo_RigGraphParameterProxy(v1, v2), (_MergedGlobals_11 & 1) == 0))
    {
      _MergedGlobals_11 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18E170, 0);
      qword_1EE18E180 = 0x2800000003;
      dword_1EE18E188 = v3;
      word_1EE18E18C = 0;
      *&xmmword_1EE18E190 = 0;
      *(&xmmword_1EE18E190 + 1) = 0xFFFFFFFFLL;
      qword_1EE18E1A0 = v1;
      unk_1EE18E1A8 = 0;
      qword_1EE18E170 = &unk_1F5CADC70;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18E170, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18E190 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphNodeDescription>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18E0C0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18E0C0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18E1B0);
      qword_1EE18E1B0 = &unk_1F5CADD08;
      __cxa_guard_release(&qword_1EE18E0C0);
    }
  }

  if ((byte_1EE18E031 & 1) == 0)
  {
    v1 = qword_1EE18E0A0;
    if (qword_1EE18E0A0 || (v1 = re::allocInfo_RigGraphNodeDescription(a1), qword_1EE18E0A0 = v1, re::initInfo_RigGraphNodeDescription(v1, v2), (byte_1EE18E031 & 1) == 0))
    {
      byte_1EE18E031 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18E1B0, 0);
      qword_1EE18E1C0 = 0x2800000003;
      dword_1EE18E1C8 = v3;
      word_1EE18E1CC = 0;
      *&xmmword_1EE18E1D0 = 0;
      *(&xmmword_1EE18E1D0 + 1) = 0xFFFFFFFFLL;
      qword_1EE18E1E0 = v1;
      unk_1EE18E1E8 = 0;
      qword_1EE18E1B0 = &unk_1F5CADD08;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18E1B0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18E1D0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphInputValue>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18E0C8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18E0C8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18E1F0);
      qword_1EE18E1F0 = &unk_1F5CADDA0;
      __cxa_guard_release(&qword_1EE18E0C8);
    }
  }

  if ((byte_1EE18E032 & 1) == 0)
  {
    v1 = qword_1EE18E088;
    if (qword_1EE18E088 || (v1 = re::allocInfo_RigGraphInputValue(a1), qword_1EE18E088 = v1, re::initInfo_RigGraphInputValue(v1, v2), (byte_1EE18E032 & 1) == 0))
    {
      byte_1EE18E032 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18E1F0, 0);
      qword_1EE18E200 = 0x2800000003;
      dword_1EE18E208 = v3;
      word_1EE18E20C = 0;
      *&xmmword_1EE18E210 = 0;
      *(&xmmword_1EE18E210 + 1) = 0xFFFFFFFFLL;
      qword_1EE18E220 = v1;
      unk_1EE18E228 = 0;
      qword_1EE18E1F0 = &unk_1F5CADDA0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18E1F0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18E210 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RigGraphDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::invalid(a3);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  *(a3 + 32) = 0;
  *(a3 + 208) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphDefinition>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<re::RigGraphInputValue>::deinit(a3 + 176);
  re::DynamicArray<re::RigGraphConnection>::deinit(a3 + 17);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a3 + 96);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a3 + 56);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a3 + 16);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::RigGraphDefinition>(uint64_t a1)
{
  re::StringID::invalid(a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphDefinition>(re::StringID *a1)
{
  re::DynamicArray<re::RigGraphInputValue>::deinit(a1 + 176);
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 17);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a1 + 96);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a1 + 16);

  re::StringID::destroyString(a1);
}

void re::RigGraphConnection::~RigGraphConnection(re::RigGraphConnection *this)
{
  re::StringID::destroyString((this + 144));
  re::StringID::destroyString((this + 128));
  re::StringID::destroyString((this + 112));
  re::StringID::destroyString((this + 96));
  re::StringID::destroyString((this + 80));
  re::StringID::destroyString((this + 64));
  re::StringID::destroyString((this + 48));
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));
  re::StringID::destroyString(this);
}

void *re::DynamicArray<re::RigGraphInputValue>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphInputValue>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
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
        v10 = &v8[12 * v9];
        v12 = v7;
        do
        {
          v11 = *v8;
          *v7 = *v7 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v7 = *v8 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v11) = v8[2];
          v7[2] = v7[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v7[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LOBYTE(v11) = v8[4];
          v7[4] = v7[4] & 0xFFFFFFFFFFFFFFFELL | v8[4] & 1;
          v7[4] = v8[4] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[5] = v8[5];
          v8[5] = &str_67;
          v8[4] = 0;
          LOBYTE(v11) = v8[6];
          v7[6] = v7[6] & 0xFFFFFFFFFFFFFFFELL | v8[6] & 1;
          v7[6] = v8[6] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[7] = v8[7];
          v8[7] = &str_67;
          LOBYTE(v11) = v8[8];
          v8[6] = 0;
          v7[8] = v7[8] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[8] = v8[8] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[9] = v8[9];
          v8[9] = &str_67;
          v8[8] = 0;
          LOBYTE(v11) = v8[10];
          v7[10] = v7[10] & 0xFFFFFFFFFFFFFFFELL | v8[10] & 1;
          v7[10] = v8[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[11] = v8[11];
          v8[11] = &str_67;
          v8[10] = 0;
          re::StringID::destroyString((v8 + 10));
          re::StringID::destroyString((v8 + 8));
          re::StringID::destroyString((v8 + 6));
          re::StringID::destroyString((v8 + 4));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v7 += 12;
          v8 += 12;
        }

        while (v8 != v10);
        v8 = v5[4];
        v7 = v12;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v4 = a2;
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(v5, v4);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v5[1] = v4;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v13 = v4;
        v10 = &v8[14 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LOBYTE(v12) = v8[4];
          v11[4] = v11[4] & 0xFFFFFFFFFFFFFFFELL | v8[4] & 1;
          v11[4] = v8[4] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[5] = v8[5];
          v8[5] = &str_67;
          v8[4] = 0;
          LOBYTE(v12) = v8[6];
          v11[6] = v11[6] & 0xFFFFFFFFFFFFFFFELL | v8[6] & 1;
          v11[6] = v8[6] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[7] = v8[7];
          v8[7] = &str_67;
          v8[6] = 0;
          LOBYTE(v12) = v8[8];
          v11[8] = v11[8] & 0xFFFFFFFFFFFFFFFELL | v8[8] & 1;
          v11[8] = v8[8] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[9] = v8[9];
          v8[9] = &str_67;
          LOBYTE(v12) = v8[10];
          v8[8] = 0;
          v11[10] = v11[10] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[10] = v8[10] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[11] = v8[11];
          v8[11] = &str_67;
          v8[10] = 0;
          LOBYTE(v12) = v8[12];
          v11[12] = v11[12] & 0xFFFFFFFFFFFFFFFELL | v8[12] & 1;
          v11[12] = v8[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[13] = v8[13];
          v8[13] = &str_67;
          v8[12] = 0;
          re::StringID::destroyString((v8 + 12));
          re::StringID::destroyString((v8 + 10));
          re::StringID::destroyString((v8 + 8));
          re::StringID::destroyString((v8 + 6));
          re::StringID::destroyString((v8 + 4));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 14;
          v8 += 14;
        }

        while (v8 != v10);
        v8 = v5[4];
        v4 = v13;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigGraphNodeDescription>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[1] = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[2] = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v7 = *(a2 + 16);
        result[3] = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_0, 4 * v10);
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

void *re::DynamicArray<re::RigGraphInputValue>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigGraphInputValue>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigGraphInputValue>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RigGraphParameterProxy>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphParameterProxy>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::addElement(uint64_t a1, re *a2, int a3, void *a4)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  re::StringID::invalid(&v13);
  re::StringID::invalid(&v14);
  re::StringID::invalid(&v15);
  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  v8 = re::DynamicArray<re::RigGraphParameterProxy>::add(a4, &v11);
  if (v17)
  {
    if (v17)
    {
    }
  }

  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  if (v16)
  {
    if (v16)
    {
    }
  }

  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  *&v15 = 0;
  *(&v15 + 1) = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  *&v14 = 0;
  *(&v14 + 1) = &str_67;
  if (v13)
  {
    if (v13)
    {
    }
  }

  *&v13 = 0;
  *(&v13 + 1) = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (a4[4] + 112 * a4[2] - 112);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

uint64_t re::DynamicArray<re::RigGraphParameterProxy>::deinit(uint64_t a1)
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
        v6 = 112 * v4;
        do
        {
          re::StringID::destroyString((v3 + v5 + 96));
          re::StringID::destroyString((v3 + v5 + 80));
          re::StringID::destroyString((v3 + v5 + 64));
          re::StringID::destroyString((v3 + v5 + 48));
          re::StringID::destroyString((v3 + v5 + 32));
          re::StringID::destroyString((v3 + v5 + 16));
          re::StringID::destroyString((v3 + v5));
          v5 += 112;
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

void re::DynamicArray<re::RigGraphParameterProxy>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 96));
      re::StringID::destroyString((v10 + 80));
      re::StringID::destroyString((v10 + 64));
      re::StringID::destroyString((v10 + 48));
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 112;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4 + 104;
      do
      {
        v7 = (*(a1 + 32) + v6);
        re::StringID::invalid((v7 - 13));
        re::StringID::invalid((v7 - 11));
        re::StringID::invalid((v7 - 9));
        re::StringID::invalid((v7 - 7));
        re::StringID::invalid((v7 - 5));
        *(v7 - 3) = 0;
        *(v7 - 2) = &str_67;
        v6 += 112;
        *(v7 - 1) = 0;
        *v7 = &str_67;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 112 * v8;
      do
      {
        re::StringID::destroyString((v10 + v9 + 96));
        re::StringID::destroyString((v10 + v9 + 80));
        re::StringID::destroyString((v10 + v9 + 64));
        re::StringID::destroyString((v10 + v9 + 48));
        re::StringID::destroyString((v10 + v9 + 32));
        re::StringID::destroyString((v10 + v9 + 16));
        re::StringID::destroyString((v10 + v9));
        v9 += 112;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphParameterProxy>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphParameterProxy>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 112 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 112;
        v15 -= 112;
      }

      while (v15);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 112 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 112 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphNodeDescription>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::addElement(uint64_t a1, re *a2, int a3, void *a4)
{
  v11 = 0u;
  v12 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  v8 = re::DynamicArray<re::RigGraphNodeDescription>::add(a4, &v11);
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (a4[4] + 32 * a4[2] - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void re::DynamicArray<re::RigGraphNodeDescription>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
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
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        re::StringID::invalid(v7);
        re::StringID::invalid((v7 + 16));
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 32 * v8;
      do
      {
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 32;
        v10 -= 32;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphNodeDescription>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 32 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 32;
        v14 -= 32;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigGraphInputValue>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphInputValue>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphInputValue>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphInputValue>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphInputValue>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphInputValue>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphInputValue>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphInputValue>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphInputValue>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphInputValue>::addElement(uint64_t a1, re *a2, int a3, void *a4)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  re::StringID::invalid(&v13);
  re::StringID::invalid(&v14);
  re::StringID::invalid(&v15);
  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  v8 = re::DynamicArray<re::RigGraphInputValue>::add(a4, &v11);
  if (v16)
  {
    if (v16)
    {
    }
  }

  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  *&v15 = 0;
  *(&v15 + 1) = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  *&v14 = 0;
  *(&v14 + 1) = &str_67;
  if (v13)
  {
    if (v13)
    {
    }
  }

  *&v13 = 0;
  *(&v13 + 1) = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (a4[4] + 96 * a4[2] - 96);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigGraphInputValue>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

uint64_t re::DynamicArray<re::RigGraphInputValue>::deinit(uint64_t a1)
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
        v6 = 96 * v4;
        do
        {
          re::StringID::destroyString((v3 + v5 + 80));
          re::StringID::destroyString((v3 + v5 + 64));
          re::StringID::destroyString((v3 + v5 + 48));
          re::StringID::destroyString((v3 + v5 + 32));
          re::StringID::destroyString((v3 + v5 + 16));
          re::StringID::destroyString((v3 + v5));
          v5 += 96;
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