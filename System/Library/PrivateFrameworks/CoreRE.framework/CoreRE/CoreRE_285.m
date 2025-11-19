uint64_t REMaterialParameterBlockArrayComponentSetUInt4AtIndex(uint64_t a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, a3, 10, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt4WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, (a3 + 24), 10, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetUInt4AtIndex(uint64_t a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v14 = 0;
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
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::uint4Value(v10, a3, &v14);
  if (v14 == 1)
  {
    v11 = v15;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
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
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v25);
    if ((BYTE12(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 10))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v25);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat2x2AtIndex(uint64_t a1, unint64_t a2, char *a3, double a4, double a5)
{
  v21 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(a1 + 64) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v16, v11);
    ++*(v10 + 16);
    v12 = v16;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v16);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 64) + 32 * a2;
  ++*(v13 + 16);
  v14 = *v13;
  *&v16 = a4;
  *(&v16 + 1) = a5;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v14, a3, 48, &v16);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat2x2WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v21 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(a1 + 64) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v16, v11);
    ++*(v10 + 16);
    v12 = v16;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v16);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 64) + 32 * a2;
  ++*(v13 + 16);
  v14 = *v13;
  *&v16 = a4;
  *(&v16 + 1) = a5;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v14, (a3 + 24), 48, &v16);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat2x2AtIndex(uint64_t a1, unint64_t a2, const char *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v14[0] = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::matrix2x2FValue(v10, a3, v14);
  if (LOBYTE(v14[0]) == 1)
  {
    v11 = v14[2];
    *a4 = v14[1];
    a4[1] = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v14[3] = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v23);
    if ((BYTE12(v23) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v23, 48))
    {
      *a4 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v23);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat3x3AtIndex(uint64_t a1, unint64_t a2, char *a3, __n128 a4, __n128 a5, __n128 a6)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
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
    goto LABEL_14;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v18, v10);
    ++*(v9 + 16);
    v11 = v18.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v18.n128_i64[0]);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 64) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, a3, 49, &v18);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat3x3WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
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
    goto LABEL_14;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v18, v10);
    ++*(v9 + 16);
    v11 = v18.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v18.n128_i64[0]);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 64) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, (a3 + 24), 49, &v18);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat3x3AtIndex(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    *v29 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    *v25 = 789;
    *&v25[4] = 2048;
    *&v25[6] = a2;
    v26 = 2048;
    *v27 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::matrix3x3FValue(v10, a3, &v22);
  if (v22 == 1)
  {
    v11 = *&v25[2];
    v12 = *&v27[2];
    v13 = v28;
    *(a4 + 8) = *&v25[10];
    *a4 = v11;
    *(a4 + 24) = DWORD2(v12);
    *(a4 + 16) = v12;
    *(a4 + 40) = DWORD2(v13);
    *(a4 + 32) = v13;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v29 = 136315906;
    *&v29[4] = "operator[]";
    v30 = 1024;
    v31 = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a1 + 104);
  result = *(v15 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v36);
    if ((BYTE12(v36) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v36, 49))
    {
      Constant = re::ShaderGraphMaterial::getConstant(*(v15 + 8 * a2), &v36);
      v17 = *(Constant + 8);
      v18 = *(Constant + 24);
      v19 = *(Constant + 16);
      v20 = *(Constant + 40);
      v21 = *(Constant + 32);
      *a4 = *Constant;
      *(a4 + 8) = v17;
      *(a4 + 16) = v19;
      *(a4 + 24) = v18;
      *(a4 + 32) = v21;
      *(a4 + 40) = v20;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat4x4AtIndex(uint64_t a1, unint64_t a2, char *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v25 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(a1 + 64) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v20, v11);
    ++*(v10 + 16);
    v12 = v20.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v20.n128_i64[0]);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 64) + 32 * a2;
  ++*(v13 + 16);
  v14 = *v13;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v14, a3, 50, &v20);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat4x4WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v25 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(a1 + 64) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v20, v11);
    ++*(v10 + 16);
    v12 = v20.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v20.n128_i64[0]);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 64) + 32 * a2;
  ++*(v13 + 16);
  v14 = *v13;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v14, (a3 + 24), 50, &v20);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetFloat4x4AtIndex(uint64_t a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    *v24 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    *v21 = 789;
    *&v21[4] = 2048;
    *&v21[6] = a2;
    *&v21[14] = 2048;
    *&v21[16] = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::matrix4x4FValue(v10, a3, &v18);
  if (v18 == 1)
  {
    v11 = *&v21[2];
    v12 = *&v21[18];
    v13 = v22;
    v14 = v23;
LABEL_10:
    *a4 = v11;
    a4[1] = v12;
    a4[2] = v13;
    a4[3] = v14;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v24 = 136315906;
    *&v24[4] = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v16 = *(a1 + 104);
  result = *(v16 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v31);
    if ((BYTE12(v31) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v31, 50))
    {
      Constant = re::ShaderGraphMaterial::getConstant(*(v16 + 8 * a2), &v31);
      v11 = *Constant;
      v12 = Constant[1];
      v13 = Constant[2];
      v14 = Constant[3];
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

void REMaterialParameterBlockArrayComponentSetTextureAtIndexFromAsset(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a4, v13);
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 48);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v23, v9);
    ++*(v8 + 16);
    v10 = v23;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v23);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 48);
  if (v7 <= a2)
  {
LABEL_14:
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  re::AssetHandle::AssetHandle(&v23, v13);
  re::ecs2::SerializableMaterialParameterBlock::setTexture(v12, a3, &v23);
  re::AssetHandle::~AssetHandle(&v23);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v13);
}

void REMaterialParameterBlockArrayComponentSetTextureWithHandleAtIndexFromAsset(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a4, v13);
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 48);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v23, v9);
    ++*(v8 + 16);
    v10 = v23;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v23);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 48);
  if (v7 <= a2)
  {
LABEL_14:
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  re::AssetHandle::AssetHandle(&v23, v13);
  re::ecs2::SerializableMaterialParameterBlock::setTexture(v12, (a3 + 24), &v23);
  re::AssetHandle::~AssetHandle(&v23);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v13);
}

uint64_t REMaterialParameterBlockArrayComponentGetTextureAssetAtIndex(uint64_t a1, unint64_t a2, const char *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 48);
  if (v6 <= a2)
  {
    memset(v18, 0, sizeof(v18));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v11 = 136315906;
    *&v11[4] = "operator[]";
    v12 = 1024;
    v13 = 789;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if (!*v7)
  {
    v8 = *(v7 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::textureValue(v8, a3, v18);
  if (LOBYTE(v18[0]) != 1)
  {
    return 0;
  }

  re::AssetHandle::AssetHandle(v11, (v18 + 8));
  v9 = *v11;
  re::AssetHandle::~AssetHandle(v11);
  if (v18[0])
  {
    re::AssetHandle::~AssetHandle((v18 + 8));
  }

  return v9;
}

uint64_t REMaterialParameterBlockArrayComponentSetBufferDataAtIndex(uint64_t a1, unint64_t a2, char *a3, const void *a4, unint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  if (!result)
  {
    return result;
  }

  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  __dst = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  re::DynamicArray<BOOL>::resize(v16, a5);
  memcpy(__dst, a4, a5);
  v11 = *(a1 + 48);
  if (v11 <= a2)
  {
    v19 = 0;
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
    v25 = a2;
    v26 = 2048;
    v27 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v12 = *(a1 + 64) + 32 * a2;
  v13 = *v12;
  if ((*v12 || (v13 = *(v12 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v28, v13);
    ++*(v12 + 16);
    v14 = v28;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v12, v28);
    *(v12 + 8) = 0;
    if (v14)
    {
    }
  }

  v11 = *(a1 + 48);
  if (v11 <= a2)
  {
LABEL_18:
    v19 = 0;
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
    v25 = a2;
    v26 = 2048;
    v27 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a1 + 64) + 32 * a2;
  ++*(v15 + 16);
  re::ecs2::SerializableMaterialParameterBlock::setBufferData(*v15, a3, v16);
  re::ecs2::Component::enqueueMarkDirty(a1);
  result = v16[0];
  if (v16[0])
  {
    if (__dst)
    {
      return (*(*v16[0] + 40))();
    }
  }

  return result;
}

void REMaterialParameterBlockArrayComponentSetSamplerAtIndex(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4;
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    v21 = 789;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v26, v10);
    ++*(v9 + 16);
    v11 = v26;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v26);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
LABEL_16:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    v21 = 789;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 64) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  v15 = v7;
  v14 = v7;
  re::MaterialSamplerData::fromDescriptor(&v15, &v26);
  re::OptionalMaterialSamplerData::OptionalMaterialSamplerData(v16, &v26);
  re::ecs2::SerializableMaterialParameterBlock::setSampler(v13, a3, v16);
  if (v7)
  {
  }

  re::ecs2::Component::enqueueMarkDirty(a1);
}

id REMaterialParameterBlockArrayComponentCopySamplerAtIndex(uint64_t a1, unint64_t a2, char *a3)
{
  if (*(a1 + 48) <= a2)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 64) + 32 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v4 = *(v3 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::samplerValue(v4, a3, v9);
  if (v9[0] == 1)
  {
    re::OptionalMaterialSamplerData::makeSamplerData(&v10, v7);
    re::MaterialSamplerData::makeDescriptor(v7, &v8);
    v5 = v8;
    if (v8)
    {
    }
  }

  else
  {
LABEL_7:
    v5 = 0;
  }

  return v5;
}

uint64_t REMaterialParameterBlockArrayComponentBindTextureToSamplerWithDefaultArrayAtIndex(uint64_t a1, unint64_t a2, const char *a3, const char *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v13, v9);
    ++*(v8 + 16);
    v10 = v13;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v13);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_16:
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  re::ecs2::SerializableMaterialParameterBlock::bindTextureToSampler(*v11, a3, a4);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetSamplerNameBoundToTexture(uint64_t a1, unint64_t a2, char *a3)
{
  if (*(a1 + 48) <= a2)
  {
    return 0;
  }

  v3 = *(a1 + 64) + 32 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v4 = *(v3 + 8);
  }

  return re::ecs2::SerializableMaterialParameterBlock::tryGetSamplerNameBoundToTexture(v4, a3);
}

void REMaterialParameterBlockArrayComponentSetUVIndexForTextureAtIndex(uint64_t a1, unint64_t a2, const char *a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v13, v9);
    ++*(v8 + 16);
    v10 = v13;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v13);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_16:
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;

  re::ecs2::SerializableMaterialParameterBlock::setUVIndexForTexture(v12, a3, a4);
}

uint64_t REMaterialParameterBlockArrayComponentGetUVIndexForTextureAtIndex(uint64_t a1, unint64_t a2, const char *a3)
{
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(a1 + 64) + 32 * a2;
  v7 = *v6;
  if (!*v6)
  {
    v7 = *(v6 + 8);
  }

  return re::ecs2::SerializableMaterialParameterBlock::uvIndexForTexture(v7, a3);
}

uint64_t REMaterialParameterBlockArrayComponentSerializeToFile(_anonymous_namespace_ *a1, unint64_t a2, uint64_t a3, re::FileStreamWriter *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v34);
  re::AssetHandle::AssetHandle(v23, v34);
  re::ecs2::MaterialParameterBlockArrayComponent::createFlattenedMaterialFileFromBlock(a1, a2, v23, &v24);
  re::AssetHandle::~AssetHandle(v23);
  v7 = re::FileStreamWriter::open(a4, v18);
  if (v18[0])
  {
    {
      if (v7)
      {
        re::introspect<re::MaterialFile>(BOOL)::info = re::introspect_MaterialFile(0);
      }
    }

    v8 = re::introspect<re::MaterialFile>(BOOL)::info;
    v9 = re::globalAllocators(v7)[2];
    v35 = v8[2];
    v11 = re::serializeJson("object", &v19, v10, &v35, &v24, 0, v9);
    if (v11)
    {
      v12 = 1;
      goto LABEL_15;
    }

    v16 = *re::ecsCoreLogObjects(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v35) = 136315138;
      *(&v35 + 4) = a4;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Failed to serialize material file to path %s", &v35, 0xCu);
    }
  }

  else
  {
    v13 = *re::ecsCoreLogObjects(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      re::formattedErrorMessage<re::DetailedError>(&v19, &v35);
      v15 = (BYTE8(v35) & 1) != 0 ? v36 : (&v35 + 9);
      *buf = 136315138;
      v38 = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);

      if (v35)
      {
        if (BYTE8(v35))
        {
          (*(*v35 + 40))();
        }
      }
    }
  }

  v12 = 0;
LABEL_15:
  if (v18[0] == 1)
  {
    if (v20 && v21 == 1)
    {
      fclose(v20);
    }
  }

  else if (v21 && (v22 & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  re::DynamicArray<re::FunctionLink>::deinit(&v33);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v30);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v29);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v28);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v27);
  re::AssetHandle::~AssetHandle(&v26);
  if (v24 && (v25 & 1) != 0)
  {
    (*(*v24 + 40))();
  }

  re::AssetHandle::~AssetHandle(v34);
  return v12;
}

size_t REMaterialParameterBlockArrayComponentHashTechniqueName(const char *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  result = strlen(a1);
  if (result)
  {
    MurmurHash3_x64_128(a1, result, 0, v3);
    return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentAddHashedPassTechniqueMappingAtIndex(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = strlen(a3);
  if (v8)
  {
    MurmurHash3_x64_128(a3, v8, 0, &v15);
    v9 = (*(&v15 + 1) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583E9) ^ v15;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 48) <= a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(a1 + 64) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v15, v11);
    ++*(v10 + 16);
    v12 = v15;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v15);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_17:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 64) + 32 * a2;
  ++*(v13 + 16);
  re::ecs2::SerializableMaterialParameterBlock::addPassTechniqueMapping(*v13, v9, a4);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentAddPassTechniqueMappingAtIndex(uint64_t a1, unint64_t a2, const char *a3, char *__s)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, v11);
    v9 = (v11[1] + (v11[0] << 6) + (v11[0] >> 2) - 0x61C8864680B583E9) ^ v11[0];
  }

  else
  {
    v9 = 0;
  }

  return REMaterialParameterBlockArrayComponentAddHashedPassTechniqueMappingAtIndex(a1, a2, a3, v9);
}

uint64_t REMaterialParameterBlockArrayComponentRemovePassTechniqueMappingAtIndex(uint64_t a1, unint64_t a2, const char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = strlen(a3);
  if (v6)
  {
    MurmurHash3_x64_128(a3, v6, 0, &v13);
    v7 = (*(&v13 + 1) + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583E9) ^ v13;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 48) <= a2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v13, v9);
    ++*(v8 + 16);
    v10 = v13;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v13);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_17:
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  re::ecs2::SerializableMaterialParameterBlock::markPassTechniqueMappingRemoved(*v11, v7);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex(uint64_t a1, re::MaterialParameterBlock *a2, const char *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = strlen(a3);
  if (v8)
  {
    MurmurHash3_x64_128(a3, v8, 0, &v24);
    v9 = (*(&v24 + 1) + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583E9) ^ v24;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 48);
  if (v10 <= a2)
  {
    v14 = 0;
    v28 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    v19 = 789;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    v15[1] = 0;
    v28 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    a4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    v19 = 789;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    goto LABEL_16;
  }

  v11 = (*(a1 + 64) + 32 * a2);
  v12 = *v11;
  if (!*v11)
  {
    v12 = v11[1];
  }

  re::ecs2::SerializableMaterialParameterBlock::tryGetPassTechniqueMapping(v12, v9, &v14);
  if (v14 == 1)
  {
    result = v15;
LABEL_17:
    *a4 = *result;
    return 1;
  }

  v10 = *(a1 + 88);
  if (v10 <= a2)
  {
    goto LABEL_21;
  }

  a2 = *(*(a1 + 104) + 8 * a2);
  if (!a2)
  {
    return 0;
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  result = re::MaterialParameterBlock::tryGetPassTechniqueMapping(a2, v9, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (result)
  {
    goto LABEL_17;
  }

  return result;
}

unsigned __int8 *getBinding(uint64_t a1, unint64_t a2, const char *a3, int a4, void *a5)
{
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  v11 = *v10;
  if (!*v10)
  {
    v11 = *(v10 + 8);
  }

  result = re::ecs2::SerializableMaterialParameterBlock::parameterBinding(v11, a3);
  if (result)
  {
    if (*result == a4)
    {
      v13 = *(result + 4);
      *a5 = *(result + 2);
      a5[1] = v13;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t setBinding(uint64_t a1, unint64_t a2, const char *a3, char *a4, char *a5, unsigned int a6)
{
  v22 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(a1 + 64) + 32 * a2;
  v13 = *v12;
  if ((*v12 || (v13 = *(v12 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v17, v13);
    ++*(v12 + 16);
    v14 = v17;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v12, v17);
    *(v12 + 8) = 0;
    if (v14)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_16:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a1 + 64) + 32 * a2;
  ++*(v15 + 16);
  re::ecs2::SerializableMaterialParameterBlock::setParameterBinding(*v15, a3, a6, a4, a5);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentRemoveBindingAtIndex(uint64_t a1, unint64_t a2, char *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(a1 + 64) + 32 * a2;
  v7 = *v6;
  if ((*v6 || (v7 = *(v6 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v11, v7);
    ++*(v6 + 16);
    v8 = v11;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v6, v11);
    *(v6 + 8) = 0;
    if (v8)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_16:
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(a1 + 64) + 32 * a2;
  ++*(v9 + 16);
  re::ecs2::SerializableMaterialParameterBlock::markParameterBindingRemoved(*v9, a3);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::ecs2::SerializableMaterialParameterBlock *re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(re *a1, const re::ecs2::SerializableMaterialParameterBlock *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 520, 8);
  result = re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock(v5, a2);
  *a1 = result;
  return result;
}

uint64_t REPeerAttributionServiceGetContextCount(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 124);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionService is null.", "service", "REPeerAttributionServiceGetContextCount", 7, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *REPeerAttributionServiceCreateOrGetContextWithPeerID(re::PeerAttributionService *a1, unint64_t a2)
{
  if (a1)
  {

    return re::PeerAttributionService::getOrCreateContextForPeerId(a1, a2);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionService is null.", "service", "REPeerAttributionServiceCreateOrGetContextWithPeerID", 14, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t REPeerAttributionServiceDestroyContext(re::PeerAttributionService *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      re::PeerAttributionService::destroyContext(a1, a2);
      return 1;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionService is null.", "service", "REPeerAttributionServiceDestroyContext", 21);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionContext is null.", "context", "REPeerAttributionServiceDestroyContext", 22);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t REPeerAttributionContextGetProfilerAttributionHandle(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a1 + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionContext is null.", "context", "REPeerAttributionContextGetProfilerAttributionHandle", 31, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t REAssetManagerMemoryAssetCreateWithRemotePlayer(uint64_t a1, void *a2)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(a1, a2);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = (v5[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

id REVideoAssetGetAVPlayer(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::getAVPlayer(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

id _RETestingVideoAssetGetInternalPlayer(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::testingGetInternalAVPlayer(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

uint64_t REAssetManagerMemoryAssetCreateWithAVSampleBufferVideoRenderer(re::VideoAsset *a1, AssetService *a2, AVSampleBufferVideoRenderer *a3)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(a1, a2, a3);
  v3 = v6[0];
  if (v6[0])
  {
    v4 = (v6[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v3;
}

id REVideoAssetGetAVSampleBufferVideoRenderer(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::getAVSampleBufferVideoRenderer(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

void REVideoAssetSetAVSampleBufferVideoRenderer(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  re::AssetHandle::loadNow(v8, 0);
  if (v8)
  {
    v4 = atomic_load(v8 + 224);
    if (v4 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v7);
      ++*(v8 + 69);
      v5 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v7);
      if (v5)
      {
        re::VideoAsset::setAVSampleBufferVideoRenderer(v5, v3);
        v6 = v8;
        *(v8 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v6);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v7);
}

void REVideoAssetSetAVPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  re::AssetHandle::loadNow(v8, 0);
  if (v8)
  {
    v4 = atomic_load(v8 + 224);
    if (v4 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v7);
      ++*(v8 + 69);
      v5 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v7);
      if (v5)
      {
        re::VideoAsset::setAVPlayer(v5, v3);
        v6 = v8;
        *(v8 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v6);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v7);
}

id REVideoAssetGetVideoReceiverID(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::getReceiverEndpoint(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

uint64_t REAssetManagerVideoMemoryAssetCreate(re::VideoAsset *a1, AssetService *a2)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(v5, a1, a2);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = (v5[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

uint64_t REAssetManagerVideoMemoryAssetCreateWithoutTarget(re::VideoAsset *a1, AssetService *a2)
{
  re::VideoAsset::makeVideoMutableMemoryAssetWithoutTarget(v5, a1, a2);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = (v5[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

uint64_t REAssetManagerAVSampleBufferVideoRendererMemoryAssetCreate(re::VideoAsset *a1, AssetService *a2, AVSampleBufferVideoRenderer *a3)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(a1, a2, a3);
  v3 = v6[0];
  if (v6[0])
  {
    v4 = (v6[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v3;
}

void REAssetManagerPreloadVideoAssetOnce(uint64_t a1, uint64_t a2, char a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v13);
  v6 = re::AssetHandle::loadedAsset<re::VideoAsset>(v13);
  if (v6)
  {
    v7 = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __REAssetManagerPreloadVideoAssetOnce_block_invoke;
    v10[3] = &__block_descriptor_81_a8_40c22_ZTSN2re11AssetHandleE_e5_v8__0l;
    v10[4] = v6;
    v12 = a3;
    re::AssetHandle::AssetHandle(v11, v13);
    v9 = *(v7 + 112);
    v8 = (v7 + 112);
    v11[3] = a1;
    v11[4] = a2;
    if (v9 != -1)
    {
      dispatch_once(v8, v10);
    }

    re::AssetHandle::~AssetHandle(v11);
  }

  re::AssetHandle::~AssetHandle(v13);
}

void __REAssetManagerPreloadVideoAssetOnce_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 948) = *(a1 + 80);
  re::AssetHandle::AssetHandle(v5, (a1 + 40));
  re::AssetHandle::payloadDidChangeIfPossible(v5);
  AssetRequest = REAssetManagerCreateAssetRequest(*(a1 + 64));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __REAssetManagerPreloadVideoAssetOnce_block_invoke_2;
  v4[3] = &__block_descriptor_40_e8_v12__0B8l;
  v4[4] = AssetRequest;
  v3 = _Block_copy(v4);
  REAssetLoadRequestSetLoadAndWaitForResourceSharingClients(AssetRequest, 1, 1, 0);
  REAssetLoadRequestAddAsset(AssetRequest, *(a1 + 72));
  REAssetLoadRequestSetCompletionHandler(AssetRequest, v3);

  re::AssetHandle::~AssetHandle(v5);
}

void __REAssetManagerPreloadVideoAssetOnce_block_invoke_2(re *a1, int a2)
{
  v4 = *re::videoLogObjects(a1);
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[REAssetManagerPreloadVideoAsset] Completed preloading video asset load request", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[REAssetManagerPreloadVideoAsset] Failed to create an asset load request", v5, 2u);
  }
}

id REVideoAssetGetRemotePlayer(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::getRemotePlayer(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

void REVideoAssetSetRemotePlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  re::AssetHandle::loadNow(v8, 0);
  if (v8)
  {
    v4 = atomic_load(v8 + 224);
    if (v4 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v7);
      ++*(v8 + 69);
      v5 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v7);
      if (v5)
      {
        re::VideoAsset::setRemotePlayer(v5, v3);
        v6 = v8;
        *(v8 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v6);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v7);
}

void *REVideoComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

double REVideoAssetGetDimensions(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = COERCE_DOUBLE(re::VideoAsset::dimensions(v1));
  }

  else
  {
    v2 = 0.0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REVideoAssetGetAudioInputMode(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

void REVideoAssetSetAudioInputMode(uint64_t a1, char a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v6);
  re::AssetHandle::loadNow(v7, 0);
  if (v7)
  {
    v3 = atomic_load(v7 + 224);
    if (v3 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v6);
      ++*(v7 + 69);
      v4 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v6);
      if (v4)
      {
        *(v4 + 24) = a2;
        v5 = v7;
        *(v7 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v7);
      }
    }
  }

  re::AssetManager::assetPayloadDidChange(*(v7 + 3), v7);
  re::AssetHandle::~AssetHandle(&v6);
}

float REVideoAssetGetReverbSendLevelDecibels(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 28);
  }

  else
  {
    v2 = 0.0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

void REVideoAssetSetReverbSendLevelDecibels(uint64_t a1, float a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v6);
  if (v7)
  {
    v3 = atomic_load(v7 + 224);
    if (v3 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v6);
      ++*(v7 + 69);
      v4 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(&v6);
      if (v4)
      {
        *(v4 + 28) = a2;
        v5 = v7;
        *(v7 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v7);
        re::AssetManager::assetPayloadDidChange(*(v7 + 3), v7);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v6);
}

void REVideoAssetSetFileAssetPlaybackMode(uint64_t a1, int a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v6);
  if (v7)
  {
    v3 = atomic_load(v7 + 224);
    if (v3 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v6);
      ++*(v7 + 69);
      v4 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(&v6);
      if (v4)
      {
        re::VideoAsset::updateAutoPlay(v4, a2, 0);
        v5 = v7;
        *(v7 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v7);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v6);
}

void REVideoAssetSetFileAssets(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, &v14);
  re::AssetHandle::loadNow(v15, 0);
  if (v15)
  {
    v5 = atomic_load(v15 + 224);
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v14);
      ++*(v15 + 69);
      v6 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v14);
      if (v6)
      {
        v7 = v6;
        v20 = 0;
        memset(v18, 0, sizeof(v18));
        v19 = 0;
        if (a2)
        {
          while (1)
          {
            re::AssetAPIHelper::assetHandleCreate(*a3, &v16);
            if (!v17)
            {
              break;
            }

            v9 = *(v17 + 280);
            if (v9 != re::VideoFileAsset::assetType(v8))
            {
              goto LABEL_9;
            }

            re::DynamicArray<re::AssetHandle>::add(v18, &v16);
LABEL_13:
            re::AssetHandle::~AssetHandle(&v16);
            ++a3;
            if (!--a2)
            {
              goto LABEL_19;
            }
          }

          re::VideoFileAsset::assetType(v8);
LABEL_9:
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v10 = CoreRELog::log;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = re::AssetHandle::assetInfo(&v16);
            if (v11[17])
            {
              v12 = v11[18];
            }

            else
            {
              v12 = v11 + 137;
            }

            *buf = 136315138;
            v22 = v12;
            _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Not a video file asset: '%s'", buf, 0xCu);
          }

          goto LABEL_13;
        }

LABEL_19:
        re::DynamicArray<re::AssetHandle>::operator=(v7 + 144, v18);
        re::VideoAsset::updateAutoPlay(v7, *(v7 + 192), 0);
        re::DynamicArray<re::AssetHandle>::deinit(v18);
        v13 = v15;
        *(v15 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v13);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v15);
      }
    }
  }

  re::AssetManager::assetPayloadDidChange(*(v15 + 3), v15);
  re::AssetHandle::~AssetHandle(&v14);
}

uint64_t REVideoAssetGetFileAssetCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 160);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REVideoAssetGetFileAsset(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  v3 = re::AssetHandle::loadedAsset<re::VideoAsset>(v8);
  if (!v3)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_12;
  }

  v4 = *(v3 + 160);
  if (v4 < a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid file asset index: %d", buf, 8u);
    }

    goto LABEL_8;
  }

  if (v4 <= a2)
  {
    v8[3] = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*(v3 + 176) + 24 * a2);
LABEL_12:
  re::AssetHandle::~AssetHandle(v8);
  return v6;
}

id REVideoFileAssetGetAVAsset(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::VideoFileAsset>(v4);
  if (v1)
  {
    v2 = **(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

void REVideoAssetSetDiffuseSpillMapDimensions(uint64_t a1, int32x2_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = vmin_s32(vmax_s32(a2, 0), 0x10000000100);
  v3 = vceq_s32(v11, a2);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v9) = 67109888;
      HIDWORD(v9) = a2.i32[0];
      *buf = v9;
      LOWORD(v13) = 1024;
      *(buf | 0xA) = a2.i32[1];
      HIWORD(v13) = 1024;
      v14 = v11.i32[0];
      v15 = 1024;
      v16 = v11.i32[1];
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[REVideoAssetSetDiffuseSpillMapDimensions] Invalid spill map dimensions: %d %d, diffuse spill map clamped to %d %d", buf, 0x1Au);
    }
  }

  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, buf);
    if (v13)
    {
      v5 = atomic_load(v13 + 224);
      if (v5 == 2)
      {
        re::AssetHandle::mutateAssetCommon(buf);
        ++*(v13 + 69);
        v6 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(buf);
        if (v6)
        {
          *(v6 + 232) = v11;
          v7 = v13;
          *(v13 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v13);
        }

        re::AssetHandle::payloadDidChangeIfPossible(buf);
      }
    }

    re::AssetHandle::~AssetHandle(buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[REVideoAssetSetDiffuseSpillMapDimensions] Invalid video asset reference", buf, 2u);
    }
  }
}

void REVideoAssetSetSpecularSpillMapDimensions(uint64_t a1, int32x2_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = vmin_s32(vmax_s32(a2, 0), 0x80000000800);
  v3 = vceq_s32(v11, a2);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v9) = 67109888;
      HIDWORD(v9) = a2.i32[0];
      *buf = v9;
      LOWORD(v13) = 1024;
      *(buf | 0xA) = a2.i32[1];
      HIWORD(v13) = 1024;
      v14 = v11.i32[0];
      v15 = 1024;
      v16 = v11.i32[1];
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[REVideoAssetSetSpecularSpillMapDimensions] Invalid spill map dimensions: %d %d, specular spill map clamped to %d %d", buf, 0x1Au);
    }
  }

  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, buf);
    if (v13)
    {
      v5 = atomic_load(v13 + 224);
      if (v5 == 2)
      {
        re::AssetHandle::mutateAssetCommon(buf);
        ++*(v13 + 69);
        v6 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(buf);
        if (v6)
        {
          *(v6 + 248) = v11;
          v7 = v13;
          *(v13 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v13);
        }

        re::AssetHandle::payloadDidChangeIfPossible(buf);
      }
    }

    re::AssetHandle::~AssetHandle(buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[REVideoAssetSetSpecularSpillMapDimensions] Invalid video asset reference", buf, 2u);
    }
  }
}

void REVideoAssetSetDiffuseSpillMapBlurSigma(uint64_t a1, int a2)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, &v7);
    if (v8)
    {
      v3 = atomic_load(v8 + 224);
      if (v3 == 2)
      {
        re::AssetHandle::mutateAssetCommon(&v7);
        ++*(v8 + 69);
        v4 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(&v7);
        if (v4)
        {
          re::VideoAsset::setDiffuseSpillMapBlurSigma(v4, a2);
          v5 = v8;
          *(v8 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
        }

        re::AssetHandle::payloadDidChangeIfPossible(&v7);
      }
    }

    re::AssetHandle::~AssetHandle(&v7);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[REVideoAssetSetDiffuseSpillMapBlurSigma] Invalid video asset reference", &v7, 2u);
    }
  }
}

void REVideoAssetSetSpecularSpillMapBlurSigma(uint64_t a1, int a2)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, &v7);
    if (v8)
    {
      v3 = atomic_load(v8 + 224);
      if (v3 == 2)
      {
        re::AssetHandle::mutateAssetCommon(&v7);
        ++*(v8 + 69);
        v4 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(&v7);
        if (v4)
        {
          re::VideoAsset::setSpecularSpillMapBlurSigma(v4, a2);
          v5 = v8;
          *(v8 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
        }

        re::AssetHandle::payloadDidChangeIfPossible(&v7);
      }
    }

    re::AssetHandle::~AssetHandle(&v7);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[REVideoAssetSetSpecularSpillMapBlurSigma] Invalid video asset reference", &v7, 2u);
    }
  }
}

void REVideoComponentSetVideoAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v4);
  re::AssetHandle::AssetHandle(v3, v4);
  re::AssetHandle::operator=(a1 + 208, v3);
  *(a1 + 73) = 0;
  re::AssetHandle::~AssetHandle(v3);
  re::AssetHandle::~AssetHandle(v4);
}

void REVideoComponentSetMaterialAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v3);
  re::AssetHandle::operator=(a1 + 32, v3);
  re::AssetHandle::~AssetHandle(v3);
}

void REVideoComponentAddRealityKitDefaultAttachmentsOnAllMaterials(uint64_t a1)
{
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane0", "texturePlane0");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane1", "texturePlane1");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane2", "texturePlane2");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane0", "texturePlane0ChannelID2");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane1", "texturePlane1ChannelID2");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane2", "texturePlane2ChannelID2");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentConstantYCbCrMatrix", "YCbCrMatrixOption");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentConstantImageFunction", "imageFunction");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID1TextureSpill", "textureSpill");

  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID2TextureSpill", "textureSpill2");
}

void REVideoComponentAddAttachmentOnAllMaterials(uint64_t a1, id a2, const char *a3)
{
  v6 = a2;
  v7 = [a2 UTF8String];
  *&v10.var0 = 0;
  v10.var1 = &str_67;
  v11 = 0;
  v12 = &str_67;
  v9 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a1 + 120), &v10);
  if (v11)
  {
    if (v11)
    {
    }
  }

  v11 = 0;
  v12 = &str_67;
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }
}

void REVideoComponentRemoveRealityKitDefaultAttachmentsOnAllMaterials(uint64_t a1)
{
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane0", "texturePlane0");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane1", "texturePlane1");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane2", "texturePlane2");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane0", "texturePlane0ChannelID2");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane1", "texturePlane1ChannelID2");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane2", "texturePlane2ChannelID2");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentConstantYCbCrMatrix", "YCbCrMatrixOption");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentConstantImageFunction", "imageFunction");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID1TextureSpill", "textureSpill");

  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID2TextureSpill", "textureSpill2");
}

void REVideoComponentRemoveAttachmentFromAllMaterials(uint64_t a1, id a2, const char *a3)
{
  v6 = a2;
  v7 = [a2 UTF8String];
  *&v10.var0 = 0;
  v10.var1 = &str_67;
  v11 = 0;
  v12 = &str_67;
  re::ecs2::VideoComponent::removeAttachment(a1, &v10);
  if (v11)
  {
    if (v11)
    {
    }
  }

  v11 = 0;
  v12 = &str_67;
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }
}

uint64_t REVideoComponentSetOptOutOfAudioControl(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 331) = a2;
  }

  return result;
}

uint64_t REVideoComponentGetOptOutOfAudioControl(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 331);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoComponentSetLightSpillTraitEnabled(uint64_t result)
{
  if (result)
  {
    *(result + 332) |= 1u;
  }

  return result;
}

uint64_t REVideoComponentGetLightSpillTraitEnabled(uint64_t result)
{
  if (result)
  {
    return *(result + 332) & 1;
  }

  return result;
}

re::ecs2::VideoComponent *REVideoComponentGetReadyToRender(re::ecs2::VideoComponent *result)
{
  if (result)
  {
    return re::ecs2::VideoComponent::getReadyToRender(result);
  }

  return result;
}

__CFString *REVideoComponentGetStereoMode(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    return @"REVideoStereoModeMono";
  }

  else
  {
    return @"REVideoStereoModeStereo";
  }
}

_anonymous_namespace_ *REComponentIsAvailableForMajorVersion(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 32))(&v6);
  v3 = v6;
  v4 = re::TypeAvailabilityUtilities::checkComponentIsAvailableForMajorVersion(v6, a2, 1u);

  return v4;
}

uint64_t REAssetIsAvailableForRealityFileVersion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v7);
  v5 = re::TypeAvailabilityUtilities::checkAssetIsAvailableForMajorVersion(v7, a2, a3, 0);
  re::AssetHandle::~AssetHandle(v7);
  return v5;
}

uint64_t REComponentGetInitialRelease(uint64_t a1)
{
  (*(*a1 + 32))(&v6);
  v1 = v6;
  RequiredReleaseInfo = REComponentGetRequiredReleaseInfo(v6, 1u);
  v3 = *(RequiredReleaseInfo + 24);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = re::TypeAvailabilityUtilities::convertToMajorVersion(v3);
  }

  return v4;
}

uint64_t REComponentGetRequiredReleaseInfo(uint64_t a1, unsigned int a2)
{
  re::make::shared::object<RERealityKitReleaseInfo>(&v10);
  re::TypeAvailabilityUtilities::getComponentInitialRelease(a1, a2, &v7);
  v4 = v10;
  *(v10 + 24) = v7;
  v5 = re::Optional<re::StringID>::operator=(v4 + 32, v8);
  if (v8[0] == 1 && (v9 & 1) != 0)
  {
    if (v9)
    {
    }
  }

  return v4;
}

uint64_t RERealityKitReleaseInfoGetRelease(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return re::TypeAvailabilityUtilities::convertToMajorVersion(v1);
  }
}

uint64_t REAssetGetInitialRelease(uint64_t a1)
{
  RequiredReleaseInfo = REAssetGetRequiredReleaseInfo(a1, 1, 2);
  v2 = *(RequiredReleaseInfo + 24);
  if (v2 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = re::TypeAvailabilityUtilities::convertToMajorVersion(v2);
  }

  return v3;
}

uint64_t REAssetGetRequiredReleaseInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v15);
  re::make::shared::object<RERealityKitReleaseInfo>(&v14);
  if (!v16)
  {
    re::SceneAsset::assetType(v5);
    goto LABEL_5;
  }

  v6 = *(v16 + 280);
  if (v6 != re::SceneAsset::assetType(v5))
  {
LABEL_5:
    re::TypeAvailabilityUtilities::getAssetInitialRelease(&v15, a2, &v11);
    v7 = v14;
    *(v14 + 24) = v11;
    v8 = v7 + 32;
    goto LABEL_6;
  }

  re::TypeAvailabilityUtilities::getSceneRequiredReleaseInfo(&v15, a2, a3, &v11);
  v7 = v14;
  *(v14 + 24) = v11;
  v8 = v7 + 32;
LABEL_6:
  v9 = re::Optional<re::StringID>::operator=(v8, v12);
  if (v12[0] == 1 && (v13 & 1) != 0)
  {
    if (v13)
    {
    }
  }

  re::AssetHandle::~AssetHandle(&v15);
  return v7;
}

__CFString *RERealityKitReleaseInfoGetAdjustmentLog(uint64_t a1)
{
  v4 = *(a1 + 32);
  v1 = v4;
  if (v4 == 1 && (a1 = re::StringID::StringID(&v5, (a1 + 40)), v1 = v4, (v4 & 1) != 0))
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v2 = a1;
  }

  else
  {
    v2 = &stru_1F5D319D0;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v5)
  {
    if (v5)
    {
    }
  }

LABEL_8:

  return v2;
}

void re::make::shared::object<RERealityKitReleaseInfo>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 56, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v3 = &unk_1F5D2D068;
  *(v3 + 24) = -1;
  *(v3 + 32) = 0;
  *a1 = v3;
}

void RERealityKitReleaseInfo::~RERealityKitReleaseInfo(RERealityKitReleaseInfo *this)
{
  *this = &unk_1F5D2D068;
  if (*(this + 32) == 1)
  {
    re::StringID::destroyString((this + 40));
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D068;
  if (*(this + 32) == 1)
  {
    re::StringID::destroyString((this + 40));
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *RETransformComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void RETransformComponentSetLocalPose(float32x4_t *a1, int8x16_t a2, float32x4_t a3)
{
  v3 = a2;
  v18 = *MEMORY[0x1E69E9840];
  v4 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v5 = vmvn_s8(vceq_f32(v4, v4));
  if ((v5.i8[0] & 1) != 0 || (v5.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a3, a3))) & 0xF) != 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "RETransformComponentSetLocalPose";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", &buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v13 = a3;
      v14 = v3;
      v7 = re::BindPoint::baseValueUntyped(&a1[5]);
      a3 = v13;
      v3 = v14;
    }

    else
    {
      v7 = a1 + 2;
    }

    v9 = v7->i64[1];
    *&buf = v7->i64[0];
    *(&buf + 1) = v9;
    v10.i64[0] = buf;
    v10.i64[1] = v9;
    v16 = a3;
    v17 = v3;
    v11 = vceqq_f32(v10, v10);
    v11.i32[3] = v11.i32[2];
    if ((vminvq_u32(v11) & 0x80000000) == 0 || (vminvq_u32(vceqq_f32(v7[1], a3)) & 0x80000000) == 0 || (v12 = vceqq_f32(v7[2], v3), v12.i32[3] = v12.i32[2], (vminvq_u32(v12) & 0x80000000) == 0))
    {
      re::ecs2::TransformComponent::setLocalSRT(a1, &buf, 0);
      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

void RETransformComponentSetLocalSRT(float32x4_t *a1, int8x16_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v5 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v6 = vmvn_s8(vceq_f32(v5, v5));
  if (v6.i8[0] & 1) != 0 || (v6.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a3, a3))) & 0xF) != 0 || (v7 = vextq_s8(a4, a4, 4uLL).u64[0], v8 = vmvn_s8(vceq_f32(v7, v7)), (v8.i8[0]) || (v8.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "RETransformComponentSetLocalSRT";
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v15 = a3;
      v16 = a4;
      v14 = v4;
      v10 = re::BindPoint::baseValueUntyped(&a1[5]);
      v4 = v14;
      a3 = v15;
      a4 = v16;
    }

    else
    {
      v10 = a1 + 2;
    }

    v12 = vceqq_f32(*v10, v4);
    v12.i32[3] = v12.i32[2];
    if ((vminvq_u32(v12) & 0x80000000) == 0 || (vminvq_u32(vceqq_f32(v10[1], a3)) & 0x80000000) == 0 || (v13 = vceqq_f32(v10[2], a4), v13.i32[3] = v13.i32[2], (vminvq_u32(v13) & 0x80000000) == 0))
    {
      re::ecs2::TransformComponent::setLocalSRT(a1, v17, 0);

      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

__n128 RETransformComponentGetLocalUnanimatedSRT(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = re::BindPoint::baseValueUntyped((a1 + 80));
  }

  else
  {
    v1 = a1 + 32;
  }

  return *v1;
}

void RETransformComponentSetLocalTranslation(float32x4_t *a1, int8x16_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v3 = vmvn_s8(vceq_f32(v2, v2));
  if (v3.i8[0] & 1) != 0 || (v3.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "RETransformComponentSetLocalTranslation";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v8 = a2;
      v5 = re::BindPoint::baseValueUntyped(&a1[5]);
      a2 = v8;
    }

    else
    {
      v5 = a1 + 2;
    }

    v7 = vceqq_f32(v5[2], a2);
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) == 0)
    {
      re::ecs2::TransformComponent::setLocalPosition(a1, a2.i64[0], a2.i64[1], 0);

      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

void RETransformComponentSetLocalOrientation(float32x4_t *a1, float32x4_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a2, a2)))))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v2 = CoreRELog::log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "RETransformComponentSetLocalOrientation";
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v5 = a2;
      v4 = re::BindPoint::baseValueUntyped(&a1[5]);
      a2 = v5;
    }

    else
    {
      v4 = a1 + 2;
    }

    if ((vminvq_u32(vceqq_f32(a2, v4[1])) & 0x80000000) == 0)
    {
      re::ecs2::TransformComponent::setLocalOrientation(a1, a2.i64[0], a2.i64[1], 0);

      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

void RETransformComponentSetLocalScale(float32x4_t *a1, int8x16_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v3 = vmvn_s8(vceq_f32(v2, v2));
  if (v3.i8[0] & 1) != 0 || (v3.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "RETransformComponentSetLocalScale";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v8 = a2;
      v5 = re::BindPoint::baseValueUntyped(&a1[5]);
      a2 = v8;
    }

    else
    {
      v5 = a1 + 2;
    }

    v7 = vceqq_f32(*v5, a2);
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) == 0)
    {
      re::ecs2::TransformComponent::setLocalScale(a1, a2.i64[0], a2.i64[1], 0);

      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

double RETransformComponentGetWorldUnanimatedMatrix4x4F(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (v3 && (v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2)) != 0)
  {
    re::TransformService::worldMatrix(v4, v3, 2, &v6);
  }

  else
  {
    re::ecs2::TransformComponent::worldMatrix4x4F(a1, 0, &v6);
  }

  return *v6.i64;
}

double RETransformComponentGetWorldMatrix4x4F(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (v3 && (v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2)) != 0)
  {
    re::TransformService::worldMatrix(v4, v3, 0, &v6);
  }

  else
  {
    re::ecs2::TransformComponent::worldMatrix4x4F(a1, 1, &v6);
  }

  return *v6.i64;
}

double RETransformComponentGetParentWorldMatrix4x4F(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
    if (v4)
    {
      re::TransformService::parentWorldMatrix(v4, v3, 0, &v7);
      return *&v7;
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      re::ecs2::TransformComponent::parentWorldMatrix4x4F(v5, 1, &v7);
      return *&v7;
    }
  }

  *&result = 1065353216;
  return result;
}

double RETransformComponentGetParentWorldUnanimatedMatrix4x4F(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
    if (v4)
    {
      re::TransformService::parentWorldMatrix(v4, v3, 2, &v7);
      return *&v7;
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      re::ecs2::TransformComponent::parentWorldMatrix4x4F(v5, 0, &v7);
      return *&v7;
    }
  }

  *&result = 1065353216;
  return result;
}

double RETransformComponentGetWorldPose(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (!v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      re::ecs2::TransformComponent::worldSRT(v5, 1, v8);
      return *&v9;
    }

LABEL_6:
    v6 = *(a1 + 48);
    v8[0] = *(a1 + 32);
    v8[1] = v6;
    v9 = *(a1 + 64);
    return *&v9;
  }

  re::TransformService::worldTransform(v4, v3, 0, v8);
  return *&v9;
}

__n128 RETransformComponentGetWorldPosition(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    return *(a1 + 64);
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (v4)
  {
    re::TransformService::worldTransform(v4, v3, 0, v7);
    result.n128_u64[0] = v8;
    return result;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    re::ecs2::TransformComponent::worldMatrix4x4F(v6, 1, v7);
    result.n128_u64[0] = v9;
  }

  else
  {
    return *(a1 + 64);
  }

  return result;
}

double RETransformComponentGetWorldOrientation(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    return *(a1 + 48);
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (v4)
  {
    re::TransformService::worldTransform(v4, v3, 0, v8);
    return *&v8[2];
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    return *(a1 + 48);
  }

  re::ecs2::TransformComponent::worldOrientation(v6, 1);
  return v7;
}

double RETransformComponentGetWorldScale(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    return *(a1 + 32);
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (v4)
  {
    re::TransformService::worldTransform(v4, v3, 0, v8);
    return v8[0];
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    return *(a1 + 32);
  }

  re::ecs2::TransformComponent::worldScale(v6, 1);
  return v7;
}

double RETransformComponentGetWorldSRT(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (!v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      re::ecs2::TransformComponent::worldSRT(v5, 1, v8);
      return *v8;
    }

LABEL_6:
    v6 = *(a1 + 48);
    v8[0] = *(a1 + 32);
    v8[1] = v6;
    v8[2] = *(a1 + 64);
    return *v8;
  }

  re::TransformService::worldTransform(v4, v3, 0, v8);
  return *v8;
}

void RETransformComponentSetWorldMatrix4x4F(uint64_t a1, __n128 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v12.columns[0] = a2;
  v12.columns[1] = a3;
  v12.columns[2] = a4;
  v12.columns[3] = a5;
  if (containsNaN(&v12))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "RETransformComponentSetWorldMatrix4x4F";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    *buf = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v14 = xmmword_1E30474D0;
    v15 = 0u;
    v13 = 0u;
    re::decomposeScaleRotationTranslation<float>(buf, &v15, &v14, &v13);
    v11[0] = v15;
    v11[1] = v14;
    v11[2] = v13;
    re::ecs2::TransformComponent::setWorldSRT(a1, v11, 0);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

BOOL containsNaN(simd_float4x4 *a1)
{
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a1->columns[0], a1->columns[0])))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a1->columns[1], a1->columns[1])))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a1->columns[2], a1->columns[2])))))
  {
    return 1;
  }

  v2 = a1->columns[3];
  result = 1;
  v3 = vext_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL), 4uLL);
  v4 = vmvn_s8(vceq_f32(v3, v3));
  if ((v4.i8[0] & 1) == 0)
  {
    return (v4.i8[4] & 1) != 0;
  }

  return result;
}

void RETransformComponentSetWorldAnimatedMatrix4x4F(uint64_t a1, __n128 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v12.columns[0] = a2;
  v12.columns[1] = a3;
  v12.columns[2] = a4;
  v12.columns[3] = a5;
  if (containsNaN(&v12))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "RETransformComponentSetWorldAnimatedMatrix4x4F";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    *buf = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v14 = xmmword_1E30474D0;
    v15 = 0u;
    v13 = 0u;
    re::decomposeScaleRotationTranslation<float>(buf, &v15, &v14, &v13);
    v11[0] = v15;
    v11[1] = v14;
    v11[2] = v13;
    re::ecs2::TransformComponent::setWorldSRT(a1, v11, 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldPose(uint64_t a1, const re::ecs2::Entity *a2, int8x16_t a3, float32x4_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL);
  v5 = vmvn_s8(vceq_f32(v4, v4));
  if ((v5.i8[0] & 1) != 0 || (v5.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a4, a4))) & 0xF) != 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "RETransformComponentSetWorldPose";
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    v7 = re::TransformService::transformServiceFromEntity(*(a1 + 16), a2);
    flushDirtyComponentsQueue(*(a1 + 16));
    v8 = *(a1 + 16);
    if (v7)
    {
      re::TransformService::worldTransform(v7, v8, 0, buf);
      v10 = a3;
      v9 = *buf;
      v11 = a4;
    }

    else
    {
      if (v8)
      {
        re::ecs2::TransformComponent::worldScale(*(a1 + 16), 1);
      }

      else
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
      }

      v11 = a4;
      v10 = a3;
      *&v9 = v13;
      *(&v9 + 1) = v14;
    }

    *buf = v9;
    v18 = v11;
    v19 = v10;
    re::ecs2::TransformComponent::setWorldSRT(a1, buf, 0);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldPosition(void *a1, int8x16_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v3 = vmvn_s8(vceq_f32(v2, v2));
  if (v3.i8[0] & 1) != 0 || (v3.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "RETransformComponentSetWorldPosition";
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", &v6, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldPosition(a1, a2.i64[0], a2.i64[1]);

    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldOrientation(void *a1, float32x4_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a2, a2)))))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v2 = CoreRELog::log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "RETransformComponentSetWorldOrientation";
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", &v4, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldOrientation(a1, a2.i64[0], a2.i64[1]);

    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldScale(void *a1, int8x16_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v3 = vmvn_s8(vceq_f32(v2, v2));
  if (v3.i8[0] & 1) != 0 || (v3.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "RETransformComponentSetWorldScale";
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", &v6, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldScale(a1, a2.i64[0], a2.i64[1]);

    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldSRT(uint64_t a1, int8x16_t a2, float32x4_t a3, int8x16_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v4 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v5 = vmvn_s8(vceq_f32(v4, v4));
  if (v5.i8[0] & 1) != 0 || (v5.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a3, a3))) & 0xF) != 0 || (v6 = vextq_s8(a4, a4, 4uLL).u64[0], v7 = vmvn_s8(vceq_f32(v6, v6)), (v7.i8[0]) || (v7.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "RETransformComponentSetWorldSRT";
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldSRT(a1, v10, 0);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldAnimatedSRT(uint64_t a1, int8x16_t a2, float32x4_t a3, int8x16_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v4 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v5 = vmvn_s8(vceq_f32(v4, v4));
  if (v5.i8[0] & 1) != 0 || (v5.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a3, a3))) & 0xF) != 0 || (v6 = vextq_s8(a4, a4, 4uLL).u64[0], v7 = vmvn_s8(vceq_f32(v6, v6)), (v7.i8[0]) || (v7.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "RETransformComponentSetWorldAnimatedSRT";
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldSRT(a1, v10, 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

uint64_t REStateMachineAssetCreateAsset(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 104, 8);
  v10 = v9;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  v9[12] = 0;
  v30 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  if (a2)
  {
    v11 = (a3 + 16);
    do
    {
      v12 = *(v11 - 2);
      v22 = 0;
      v23 = &str_67;
      v13 = *(v11 - 1);
      v24 = 0;
      v25 = &str_67;
      v15 = *v11;
      v26 = 0;
      v27 = &str_67;
      v9 = re::DynamicArray<re::StateMachineInitializationData>::add(v28, &v22);
      if (v26)
      {
        if (v26)
        {
        }
      }

      v26 = 0;
      v27 = &str_67;
      if (v24)
      {
        if (v24)
        {
        }
      }

      v24 = 0;
      v25 = &str_67;
      if (v22)
      {
        if (v22)
        {
        }
      }

      v11 += 3;
      --a2;
    }

    while (a2);
  }

  inited = re::StateMachineAsset::initWithInitData(v10, v28, a4 + 24);
  v18 = re::StateMachineAsset::assetType(inited);
  (*(*a1 + 424))(&v22, a1, v10, v18, 0, 0, 0);
  v19 = v22;
  if (v22)
  {
    v20 = (v22 + 8);
  }

  re::AssetHandle::~AssetHandle(&v22);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(v28);
  return v19;
}

uint64_t REStateMachineAssetCreate(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 104, 8);
  v10 = v9;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 12) = 0;
  v30 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  if (a2)
  {
    v11 = (a3 + 16);
    do
    {
      v12 = *(v11 - 2);
      v22 = 0;
      v23 = &str_67;
      v13 = *(v11 - 1);
      v24 = 0;
      v25 = &str_67;
      v15 = *v11;
      v26 = 0;
      v27 = &str_67;
      v9 = re::DynamicArray<re::StateMachineInitializationData>::add(v28, &v22);
      if (v26)
      {
        if (v26)
        {
        }
      }

      v26 = 0;
      v27 = &str_67;
      if (v24)
      {
        if (v24)
        {
        }
      }

      v24 = 0;
      v25 = &str_67;
      if (v22)
      {
        if (v22)
        {
        }
      }

      v11 += 3;
      --a2;
    }

    while (a2);
  }

  inited = re::StateMachineAsset::initWithInitData(v10, v28, (a4 + 24));
  v18 = re::StateMachineAsset::assetType(inited);
  (*(*a1 + 424))(&v22, a1, v10, v18, 0, 0, 0);
  v19 = v22;
  if (v22)
  {
    v20 = (v22 + 8);
  }

  re::AssetHandle::~AssetHandle(&v22);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(v28);
  return v19;
}

uint64_t REStateMachineAssetSingleGraphCreate(re *a1, uint64_t a2, uint64_t a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  REStateMachineAssetStateGraphGroupCreate(a1);
  v7 = v6;
  re::DynamicArray<re::SMAssetStateGraph>::add((v6 + 24), a2 + 24);
  REStateMachineAssetStateGraphGroupCollectionCreate(v8);
  v10 = v9;
  re::DynamicArray<re::SMAssetStateGraphGroup>::add((v9 + 24), (v7 + 24));
  v12[0] = "";
  v12[1] = "";
  v12[2] = a3;
  return REStateMachineAssetCreate(a1, 1, v12, v10);
}

void REStateMachineAssetStateGraphGroupCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 64, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 24) = 0;
  *v2 = &unk_1F5D2D0F8;
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

void REStateMachineAssetStateGraphGroupCollectionCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 64, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 24) = 0;
  *v2 = &unk_1F5D2D140;
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

uint64_t REStateMachineAssetStateGraphCreate(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 192, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 64) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D0B0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 64) = 0;
  *(v3 + 56) = 0;
  *(v3 + 72) = &str_67;
  *(v3 + 80) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = &str_67;
  *(v3 + 184) = 0;
  v7 = 0;
  v8 = &str_67;
  v5 = re::StringID::operator=((v3 + 64), &v7);
  if (v7)
  {
    if (v7)
    {
    }
  }

  return v3;
}

uint64_t REStateMachineAssetStateCreate(const char *a1)
{
  v2 = v8;
  v6 = 0;
  v7 = &str_67;
  v4 = re::StringID::operator=((v2 + 104), &v6);
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v2;
}

uint64_t REStateMachineAssetTransitionCreate(const char *a1, const char *a2, const char *a3, char a4, float a5)
{
  v10 = v22;
  v20 = 0;
  v21 = &str_67;
  v18 = 0;
  v19 = &str_67;
  v16 = 0;
  v17 = &str_67;
  re::StringID::operator=((v10 + 64), &v20);
  re::StringID::operator=((v10 + 80), &v18);
  v14 = re::StringID::operator=((v10 + 96), &v16);
  *(v10 + 112) = a5;
  *(v10 + 116) = a4;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  return v10;
}

uint64_t REStateMachineAssetIntConditionCreate(const char *a1, char a2, uint64_t a3)
{
  v10 = 0;
  v11 = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14[0] = 0;
  *&v14[8] = 0;
  *&v14[14] = 0;
  re::StringID::operator=(&v12, &v10);
  v14[0] = 1;
  *&v14[8] = a3;
  v14[21] = a2;
  v7 = v15;
  v8 = re::StringID::operator=((v15 + 24), &v12);
  *(v7 + 40) = *v14;
  *(v7 + 54) = *&v14[14];
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v10)
  {
    if (v10)
    {
    }
  }

  return v7;
}

uint64_t REStateMachineAssetFloatConditionCreate(const char *a1, char a2, float a3)
{
  v10 = 0;
  v11 = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14[0] = 0;
  *&v14[8] = 0;
  *&v14[14] = 0;
  re::StringID::operator=(&v12, &v10);
  v14[0] = 2;
  *&v14[16] = a3;
  v14[21] = a2;
  v7 = v15;
  v8 = re::StringID::operator=((v15 + 24), &v12);
  *(v7 + 40) = *v14;
  *(v7 + 54) = *&v14[14];
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v10)
  {
    if (v10)
    {
    }
  }

  return v7;
}

uint64_t REStateMachineAssetBoolConditionCreate(const char *a1, char a2, char a3)
{
  v10 = 0;
  v11 = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14[0] = 0;
  *&v14[8] = 0;
  *&v14[14] = 0;
  re::StringID::operator=(&v12, &v10);
  v14[0] = 3;
  v14[20] = a3;
  v14[21] = a2;
  v7 = v15;
  v8 = re::StringID::operator=((v15 + 24), &v12);
  *(v7 + 40) = *v14;
  *(v7 + 54) = *&v14[14];
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v10)
  {
    if (v10)
    {
    }
  }

  return v7;
}

uint64_t REStateMachineAssetTriggerConditionCreate(const char *a1)
{
  v6 = 0;
  v7 = &str_67;
  v8 = 0;
  v9 = &str_67;
  v10[0] = 0;
  *&v10[8] = 0;
  *&v10[14] = 0;
  re::StringID::operator=(&v8, &v6);
  v10[0] = 4;
  *&v10[20] = 1;
  v3 = v11;
  v4 = re::StringID::operator=((v11 + 24), &v8);
  *(v3 + 40) = *v10;
  *(v3 + 54) = *&v10[14];
  if (v8)
  {
    if (v8)
    {
    }
  }

  v8 = 0;
  v9 = &str_67;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v3;
}

uint64_t REStateMachineAssetCommandCreate(_anonymous_namespace_ *a1, const char *a2)
{
  v12 = 0;
  v13 = &str_67;
  CommandIDFromCommandName = re::ecs2::StateCommandFactoryECS::getCommandIDFromCommandName(&v12, v4);
  v6 = CommandIDFromCommandName;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v7 = v11;
  v12 = 0;
  v13 = &str_67;
  *(v7 + 424) = v6;
  v9 = re::StringID::operator=((v7 + 432), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  return v7;
}

__n128 REStateMachineAssetTransitionAddCondition(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 32))
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::growCapacity((a1 + 24), v4 + 1);
    v4 = *(a1 + 40);
  }

  v5 = re::StringID::StringID((*(a1 + 56) + 40 * v4), (a2 + 24));
  result = *(a2 + 40);
  *(v5 + 30) = *(a2 + 54);
  *(v5 + 1) = result;
  ++*(a1 + 40);
  ++*(a1 + 48);
  return result;
}

re::StringID *REStateMachineAssetStateAddTransition(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 32))
  {
    re::DynamicArray<re::SMAssetStateTransition>::growCapacity((a1 + 24), v4 + 1);
    v4 = *(a1 + 40);
  }

  v5 = *(a1 + 56) + 96 * v4;
  re::DynamicArray<re::SMAssetTransitionCondition>::DynamicArray(v5, (a2 + 24));
  re::StringID::StringID((v5 + 40), (a2 + 64));
  re::StringID::StringID((v5 + 56), (a2 + 80));
  result = re::StringID::StringID((v5 + 72), (a2 + 96));
  v7 = *(a2 + 112);
  *(v5 + 92) = *(a2 + 116);
  *(v5 + 88) = v7;
  ++*(a1 + 40);
  ++*(a1 + 48);
  return result;
}

re::StringID *REStateMachineAssetStateAddCommand(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4 >= *(a1 + 72))
  {
    re::DynamicArray<re::SMAssetStateCommand>::growCapacity((a1 + 64), v4 + 1);
    v4 = *(a1 + 80);
  }

  v5 = *(a1 + 96) + 424 * v4;
  re::DynamicArray<re::StringID>::DynamicArray(v5, (a2 + 24));
  re::DynamicArray<char const*>::DynamicArray(v5 + 40, (a2 + 64));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 80, (a2 + 104));
  re::DynamicArray<float>::DynamicArray(v5 + 120, (a2 + 144));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 160, (a2 + 184));
  re::DynamicArray<char const*>::DynamicArray(v5 + 200, (a2 + 224));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 240, (a2 + 264));
  re::DynamicArray<BOOL>::DynamicArray(v5 + 280, (a2 + 304));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 320, (a2 + 344));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 360, (a2 + 384));
  *(v5 + 400) = *(a2 + 424);
  result = re::StringID::StringID((v5 + 408), (a2 + 432));
  ++*(a1 + 80);
  ++*(a1 + 88);
  return result;
}

void REStateMachineAssetCommandAddParameterInt(uint64_t a1, const char *a2, uint64_t a3)
{
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  v6 = re::DynamicArray<re::StringID>::add((a1 + 24), &v8);
  v7 = *(a1 + 80);
  if (v7 >= *(a1 + 72))
  {
    v6 = re::DynamicArray<float *>::growCapacity((a1 + 64), v7 + 1);
    v7 = *(a1 + 80);
  }

  *(*(a1 + 96) + 8 * v7) = a3;
  *(a1 + 80) = v7 + 1;
  ++*(a1 + 88);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

void REStateMachineAssetCommandAddParameterFloat(uint64_t a1, const char *a2, float a3)
{
  *&v7.var0 = 0;
  v7.var1 = &str_67;
  v8 = a3;
  re::DynamicArray<re::StringID>::add((a1 + 104), &v7);
  re::DynamicArray<float>::add((a1 + 144), &v8);
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }
}

void REStateMachineAssetCommandAddParameterDouble(uint64_t a1, const char *a2, double a3)
{
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  v6 = re::DynamicArray<re::StringID>::add((a1 + 184), &v8);
  v7 = *(a1 + 240);
  if (v7 >= *(a1 + 232))
  {
    v6 = re::DynamicArray<float *>::growCapacity((a1 + 224), v7 + 1);
    v7 = *(a1 + 240);
  }

  *(*(a1 + 256) + 8 * v7) = a3;
  *(a1 + 240) = v7 + 1;
  ++*(a1 + 248);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

void REStateMachineAssetCommandAddParameterBool(uint64_t a1, const char *a2, char a3)
{
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  v6 = re::DynamicArray<re::StringID>::add((a1 + 264), &v8);
  v7 = *(a1 + 320);
  if (v7 >= *(a1 + 312))
  {
    v6 = re::DynamicArray<BOOL>::growCapacity((a1 + 304), v7 + 1);
    v7 = *(a1 + 320);
  }

  *(*(a1 + 336) + v7) = a3;
  *(a1 + 320) = v7 + 1;
  ++*(a1 + 328);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

void REStateMachineAssetCommandAddParameterString(uint64_t a1, const char *a2, const char *a3)
{
  *&v9.var0 = 0;
  v9.var1 = &str_67;
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  re::DynamicArray<re::StringID>::add((a1 + 344), &v9);
  v7 = re::DynamicArray<re::StringID>::add((a1 + 384), &v8);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }

  if (*&v9.var0)
  {
    if (*&v9.var0)
    {
    }
  }
}

_anonymous_namespace_ *REStateMachineAssetCommandGetParameterInt(uint64_t a1, const char *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = &str_67;
  IntParameter = re::SMAssetStateCommand::getIntParameter((a1 + 24), &v9, a3);
  v7 = IntParameter;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

_anonymous_namespace_ *REStateMachineAssetCommandGetParameterFloat(uint64_t a1, const char *a2, float *a3)
{
  v9 = 0;
  v10 = &str_67;
  FloatParameter = re::SMAssetStateCommand::getFloatParameter((a1 + 24), &v9, a3);
  v7 = FloatParameter;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

_anonymous_namespace_ *REStateMachineAssetCommandGetParameterDouble(uint64_t a1, const char *a2, double *a3)
{
  v9 = 0;
  v10 = &str_67;
  DoubleParameter = re::SMAssetStateCommand::getDoubleParameter((a1 + 24), &v9, a3);
  v7 = DoubleParameter;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

_anonymous_namespace_ *REStateMachineAssetCommandGetParameterBool(uint64_t a1, const char *a2, BOOL *a3)
{
  v9 = 0;
  v10 = &str_67;
  BoolParameter = re::SMAssetStateCommand::getBoolParameter((a1 + 24), &v9, a3);
  v7 = BoolParameter;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

BOOL REStateMachineAssetCommandGetParameterString(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v10 = 0;
  v11 = &str_67;
  StringParameter = re::SMAssetStateCommand::getStringParameter((a1 + 24), &v10);
  v7 = StringParameter;
  if (v10)
  {
    if (v10)
    {
    }
  }

  if (v7)
  {
    v8 = CFStringCreateWithCString(0, *(v7 + 1), 0x8000100u);
    *a3 = CFAutorelease(v8);
  }

  return v7 != 0;
}

uint64_t REStateMachineAssetCommandGetParameterStringAsChars(uint64_t a1, const char *a2)
{
  v7 = 0;
  v8 = &str_67;
  StringParameter = re::SMAssetStateCommand::getStringParameter((a1 + 24), &v7);
  v5 = StringParameter;
  if (v7)
  {
    if (v7)
    {
    }
  }

  if (v5)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

float REStateMachineAssetStateGraphAddState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 32))
  {
    re::DynamicArray<re::SMAssetState>::growCapacity((a1 + 24), v4 + 1);
    v4 = *(a1 + 40);
  }

  v5 = *(a1 + 56) + 104 * v4;
  re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(v5, (a2 + 24));
  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v5 + 40, (a2 + 64));
  re::StringID::StringID((v5 + 80), (a2 + 104));
  result = *(a2 + 120);
  *(v5 + 96) = result;
  ++*(a1 + 40);
  ++*(a1 + 48);
  return result;
}

float REStateMachineAssetStateGraphAddAnyState(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::SMAssetStateTransition>::operator=(a1 + 88, (a2 + 24));
  re::DynamicArray<re::SMAssetStateCommand>::operator=(a1 + 128, (a2 + 64));
  re::StringID::operator=((a1 + 168), (a2 + 104));
  result = *(a2 + 120);
  *(a1 + 184) = result;
  *(a1 + 80) = 1;
  return result;
}

float re::DynamicArray<re::SMAssetStateGraph>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateGraph>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 168 * v4;
  re::DynamicArray<re::SMAssetState>::DynamicArray(v5, a2);
  re::StringID::StringID((v5 + 40), (a2 + 40));
  *(v5 + 56) = *(a2 + 56);
  re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(v5 + 64, (a2 + 64));
  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v5 + 104, (a2 + 104));
  re::StringID::StringID((v5 + 144), (a2 + 144));
  result = *(a2 + 160);
  *(v5 + 160) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateGraphGroup>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::DynamicArray<re::SMAssetStateGraph>::DynamicArray(*(this + 4) + 40 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t REStateMachineAssetGetStateCount(uint64_t a1)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t anonymous namespace::firstGraphInAsset(uint64_t a1)
{
  if (result)
  {
    if (*(result + 56) && (v2 = *(result + 72), *(v2 + 16)))
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REStateMachineAssetGetStateAtIndex(uint64_t a1, unint64_t a2)
{
  if (!GraphInAsset || *(GraphInAsset + 16) <= a2)
  {
    return 0;
  }

  v4 = *(GraphInAsset + 32) + 104 * a2;
  v5 = v7;
  re::DynamicArray<re::SMAssetStateTransition>::operator=(v7 + 24, v4);
  re::DynamicArray<re::SMAssetStateCommand>::operator=(v5 + 64, (v4 + 40));
  re::StringID::operator=((v5 + 104), (v4 + 80));
  *(v5 + 120) = *(v4 + 96);
  return v5;
}

uint64_t REStateMachineAssetGetAnyState(uint64_t a1)
{
  if (!GraphInAsset)
  {
    return 0;
  }

  v2 = GraphInAsset;
  if (*(GraphInAsset + 56) != 1)
  {
    return 0;
  }

  v3 = v5;
  re::DynamicArray<re::SMAssetStateTransition>::operator=(v5 + 24, (v2 + 64));
  re::DynamicArray<re::SMAssetStateCommand>::operator=(v3 + 64, (v2 + 104));
  re::StringID::operator=((v3 + 104), (v2 + 144));
  *(v3 + 120) = *(v2 + 160);
  return v3;
}

const char *REStateMachineAssetGetInitialStateName(uint64_t a1)
{
  if (v1 && *(v1 + 16))
  {
    return *(*(v1 + 32) + 40);
  }

  else
  {
    return "";
  }
}

uint64_t anonymous namespace::stateMachineAssetFromREAssetRef(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = re::AssetHandle::blockUntilLoaded<re::StateMachineAsset>(v3);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

uint64_t REStateMachineAssetStateGetTransitionAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  v2 = *(a1 + 56) + 96 * a2;
  v3 = v6;
  re::DynamicArray<re::SMAssetTransitionCondition>::operator=(v6 + 24, v2);
  re::StringID::operator=((v3 + 64), (v2 + 40));
  re::StringID::operator=((v3 + 80), (v2 + 56));
  re::StringID::operator=((v3 + 96), (v2 + 72));
  v4 = *(v2 + 88);
  *(v3 + 116) = *(v2 + 92);
  *(v3 + 112) = v4;
  return v3;
}

uint64_t REStateMachineAssetStateGetCommandCount(uint64_t a1)
{
  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v3, (a1 + 64));
  v1 = v3[2];
  re::DynamicArray<re::SMAssetStateCommand>::deinit(v3);
  return v1;
}

uint64_t REStateMachineAssetStateGetCommandAtIndex(uint64_t a1, unint64_t a2)
{
  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v7, (a1 + 64));
  if (v7[2] <= a2)
  {
    v4 = 0;
  }

  else
  {
    v3 = v7[4] + 424 * a2;
    v4 = v6;
    re::DynamicArray<re::StringID>::operator=(v6 + 24, v3);
    re::DynamicArray<unsigned long long>::operator=(v4 + 64, (v3 + 40));
    re::DynamicArray<re::StringID>::operator=(v4 + 104, (v3 + 80));
    re::DynamicArray<float>::operator=(v4 + 144, (v3 + 120));
    re::DynamicArray<re::StringID>::operator=(v4 + 184, (v3 + 160));
    re::DynamicArray<unsigned long long>::operator=(v4 + 224, (v3 + 200));
    re::DynamicArray<re::StringID>::operator=(v4 + 264, (v3 + 240));
    re::DynamicArray<BOOL>::operator=(v4 + 304, (v3 + 280));
    re::DynamicArray<re::StringID>::operator=(v4 + 344, (v3 + 320));
    re::DynamicArray<re::StringID>::operator=(v4 + 384, (v3 + 360));
    *(v4 + 424) = *(v3 + 400);
    re::StringID::operator=((v4 + 432), (v3 + 408));
  }

  re::DynamicArray<re::SMAssetStateCommand>::deinit(v7);
  return v4;
}

uint64_t REStateMachineAssetTransitionGetConditionAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  v2 = *(a1 + 56) + 40 * a2;
  v3 = v6;
  re::StringID::operator=((v6 + 24), v2);
  v4 = *(v2 + 16);
  *(v3 + 54) = *(v2 + 30);
  *(v3 + 40) = v4;
  return v3;
}

uint64_t REStateMachineAssetTransitionConditionGetParameterType(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 5)
  {
    v2 = 1;
  }

  else
  {
    v2 = 0x303020101uLL >> (8 * v1);
  }

  return v2 & 3;
}

uint64_t REStateMachineAssetCommandGetParameterCount(uint64_t a1, unsigned int a2)
{
  if (a2 > 4)
  {
    return 0;
  }

  else
  {
    return *(a1 + qword_1E311D5F8[a2]);
  }
}

uint64_t REStateMachineAssetCommandGetParameterNameAtIndex(void *a1, int a2, unint64_t a3)
{
  v3 = 0;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (a1[5] > a3)
        {
          v4 = 7;
          return *(a1[v4] + 16 * a3 + 8);
        }

LABEL_23:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      return v3;
    }

    if (a1[45] > a3)
    {
      v4 = 47;
      return *(a1[v4] + 16 * a3 + 8);
    }

LABEL_21:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  switch(a2)
  {
    case 2:
      if (a1[15] > a3)
      {
        v4 = 17;
        return *(a1[v4] + 16 * a3 + 8);
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_20;
    case 3:
      if (a1[25] > a3)
      {
        v4 = 27;
        return *(a1[v4] + 16 * a3 + 8);
      }

LABEL_20:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_21;
    case 4:
      if (a1[35] > a3)
      {
        v4 = 37;
        return *(a1[v4] + 16 * a3 + 8);
      }

      goto LABEL_22;
  }

  return v3;
}

void anonymous namespace::AssetStateGraph::~AssetStateGraph(_anonymous_namespace_::AssetStateGraph *this)
{
  *this = &unk_1F5D2D0B0;
  v2 = (this + 64);
  re::StringID::destroyString((this + 168));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(this + 16);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(this + 88);
  re::StringID::destroyString(v2);
  re::DynamicArray<re::SMAssetState>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D0B0;
  v2 = (this + 64);
  re::StringID::destroyString((this + 168));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(this + 16);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(this + 88);
  re::StringID::destroyString(v2);
  re::DynamicArray<re::SMAssetState>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::AssetStateGraphGroup::~AssetStateGraphGroup(_anonymous_namespace_::AssetStateGraphGroup *this)
{
  *this = &unk_1F5D2D0F8;
  re::DynamicArray<re::SMAssetStateGraph>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D0F8;
  re::DynamicArray<re::SMAssetStateGraph>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::AssetStateGraphGroupCollection::~AssetStateGraphGroupCollection(_anonymous_namespace_::AssetStateGraphGroupCollection *this)
{
  *this = &unk_1F5D2D140;
  re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D140;
  re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::object<anonymous namespace::AssetState>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D188;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = &str_67;
  *(v3 + 120) = 0;
  *a1 = v3;
  return result;
}

void anonymous namespace::AssetState::~AssetState(_anonymous_namespace_::AssetState *this)
{
  *this = &unk_1F5D2D188;
  v2 = (this + 64);
  re::StringID::destroyString((this + 104));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(v2);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D188;
  v2 = (this + 64);
  re::StringID::destroyString((this + 104));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(v2);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::make::shared::object<anonymous namespace::AssetTransition>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 120, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D1D0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = &str_67;
  *(v3 + 80) = 0;
  *(v3 + 88) = &str_67;
  *(v3 + 96) = 0;
  *(v3 + 104) = &str_67;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0;
  *a1 = v3;
}

void anonymous namespace::AssetTransition::~AssetTransition(_anonymous_namespace_::AssetTransition *this)
{
  *this = &unk_1F5D2D1D0;
  v2 = (this + 64);
  re::StringID::destroyString((this + 96));
  re::StringID::destroyString((this + 80));
  re::StringID::destroyString(v2);
  re::DynamicArray<re::SMAssetTransitionCondition>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D1D0;
  v2 = (this + 64);
  re::StringID::destroyString((this + 96));
  re::StringID::destroyString((this + 80));
  re::StringID::destroyString(v2);
  re::DynamicArray<re::SMAssetTransitionCondition>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::make::shared::object<anonymous namespace::AssetCondition>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D218;
  *(v3 + 32) = &str_67;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 54) = 0;
  *a1 = v3;
}

void anonymous namespace::AssetCondition::~AssetCondition(_anonymous_namespace_::AssetCondition *this)
{
  *this = &unk_1F5D2D218;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D218;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::object<anonymous namespace::AssetCommand>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 448, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D260;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 416) = 0;
  *(v3 + 424) = 0;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0;
  *(v3 + 208) = 0;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 248) = 0;
  *(v3 + 232) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0;
  *(v3 + 432) = 0;
  *(v3 + 440) = &str_67;
  *a1 = v3;
  return result;
}

void anonymous namespace::AssetCommand::~AssetCommand(_anonymous_namespace_::AssetCommand *this)
{
  *this = &unk_1F5D2D260;
  v2 = this + 64;
  re::StringID::destroyString((this + 432));
  re::DynamicArray<re::StringID>::deinit(this + 384);
  re::DynamicArray<re::StringID>::deinit(this + 344);
  re::DynamicArray<unsigned long>::deinit(this + 304);
  re::DynamicArray<re::StringID>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::DynamicArray<unsigned long>::deinit(this + 144);
  re::DynamicArray<re::StringID>::deinit(this + 104);
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::StringID>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D260;
  v2 = this + 64;
  re::StringID::destroyString((this + 432));
  re::DynamicArray<re::StringID>::deinit(this + 384);
  re::DynamicArray<re::StringID>::deinit(this + 344);
  re::DynamicArray<unsigned long>::deinit(this + 304);
  re::DynamicArray<re::StringID>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::DynamicArray<unsigned long>::deinit(this + 144);
  re::DynamicArray<re::StringID>::deinit(this + 104);
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::StringID>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t REGeomMeshGetFaceVertexCount(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 64);
  if (v2 <= a2)
  {
    return 0;
  }

  else
  {
    if (v2 <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(a1 + 80) + 16 * a2 + 12) == -1)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t REGeomMeshGetFaceVertexIndices(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    if (v3 <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v4 = 0;
    v5 = *(a1 + 80) + 16 * a2;
    do
    {
      *(a3 + v4) = *(v5 + v4);
      v4 += 4;
    }

    while (v4 != 16);
    if (*(a3 + 12) == -1)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t REGeomMeshGetAttributeIndex(uint64_t a1, char *a2)
{
  v5 = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find((a1 + 688), &v5);
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 696) + 16 * v3 + 8);
  }
}

uint64_t REGeomMeshGetAttributeValueCount(uint64_t a1, unsigned int a2)
{
  v2 = *(*re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2) + 16);

  return v2();
}

uint64_t REGeomMeshGetAttributeName(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  else
  {
    return *(re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2) + 8);
  }
}

uint64_t REGeomMeshGetAttributeRate(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 664) <= a2)
  {
    return 255;
  }

  else
  {
    return *(re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2) + 16);
  }
}

uint64_t REGeomMeshGetAttributeType(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 664) <= a2)
  {
    return 255;
  }

  else
  {
    return *(re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2) + 17);
  }
}

uint64_t REGeomMeshCreateFromPolygon(unsigned int a1, __int128 *a2)
{
  LODWORD(v2) = a1;
  v67 = *MEMORY[0x1E69E9840];
  v3 = a1 - 2;
  if (a1 > 2)
  {
    bzero(buf, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(v41, 1uLL);
    ++v43;
    re::internal::GeomAttributeManager::GeomAttributeManager(v45);
    v8 = re::internal::GeomAttributeManager::addAttribute(v45, "vertexPosition", 1, 7);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v33 = 0;
    v9 = v2;
    v31[0] = a2;
    v31[1] = v2;
    memset(v32, 0, sizeof(v32));
    if (v40 > v2 && v42 && (v42 - 1) > v42)
    {
        ;
      }
    }

    v40 = v2;
    v46 = v2;
    if (v47)
    {
      v10 = v48;
      v11 = 8 * v47;
      do
      {
        v12 = *v10++;
        (*(*v12 + 80))(v12, v46);
        v11 -= 8;
      }

      while (v11);
    }

    if (v3 < v42)
    {
      v13 = v53;
      if (v53)
      {
        v14 = 0;
        do
        {
          v15 = re::internal::GeomAttributeContainer::attributeByIndex(&v52, v14);
          re::internal::accessFaceVaryingAttributeSubmesh(v15, v16);
          ++v14;
        }

        while (v13 != v14);
      }
    }

    re::DynamicArray<re::GeomCell4>::resize(v41, v3);
    v49 = v3;
    if (v50)
    {
      v17 = v51;
      v18 = 8 * v50;
      do
      {
        v19 = *v17++;
        (*(*v19 + 80))(v19, v49);
        v18 -= 8;
      }

      while (v18);
    }

    v20 = 0;
    v2 = v36;
    v21 = v37;
    do
    {
      if (v2 == v20)
      {
        v38 = 0;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v62 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v54 = 136315906;
        v55 = "operator[]";
        v56 = 1024;
        v57 = 468;
        v58 = 2048;
        v59 = v2;
        v60 = 2048;
        v61 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        v38 = 0;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v62 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v54 = 136315906;
        v55 = "operator[]";
        v56 = 1024;
        v57 = 621;
        v58 = 2048;
        v59 = v2;
        v60 = 2048;
        v61 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_42;
      }

      *(v21 + 4 * v20) = v20;
      ++v20;
    }

    while (v9 != v20);
    *&v62 = v21;
    *(&v62 + 1) = v2;
    v22 = re::triangulatePolygon(v31, &v62, v32);
    if (v3)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        re::GeomMeshBuilder::setFaceVertices(buf, v23++, 3, (v34 + 4 * v24));
        v24 += 3;
      }

      while (v3 != v23);
    }

    re::make::shared::object<re::Shareable<re::GeomMesh>>(v22, &v62);
    v25 = v62;
    re::GeomMesh::operator=(v62 + 24, &v40);
    re::GeomMesh::setName((v25 + 24), *buf);
    re::GeomMesh::freeName(buf);
    v5 = v62;
    if (v62)
    {
      v26 = re::GeomMesh::modifyVertexPositions((v62 + 24));
      v2 = v27;
      v28 = v27;
      while (v28)
      {
        v29 = *a2++;
        *v26++ = v29;
        --v28;
        if (!--v9)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_41;
    }

LABEL_30:
    if (v32[0] && v34)
    {
      (*(*v32[0] + 40))();
    }

    if (v35 && v36)
    {
      (*(*v35 + 40))();
    }

    re::GeomMesh::freeName(buf);
    re::internal::GeomAttributeManager::~GeomAttributeManager(v45);
    if (v41[0] && v44)
    {
      (*(*v41[0] + 40))();
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
LABEL_42:
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v2;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "REGeomMeshCreateFromPolygon - called with a degenerate polygon vertex count of %d.  This value must be greater than 2.", buf, 8u);
    }

    return 0;
  }

  return v5;
}

double re::GeomMeshBuilder::setFaceVertices(re::GeomMeshBuilder *this, unsigned int a2, int a3, double *a4)
{
  v4 = a2;
  if (*(this + 4) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v8 = (*(this + 6) + 16 * a2);
  if (*v8 != -1)
  {
    v9 = v8[3] == -1;
    v10 = a3 == 3 || *(a4 + 3) == -1;
    if (v10 != v9)
    {
      v11 = *(this + 104);
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = re::internal::GeomAttributeContainer::attributeByIndex((this + 392), i);
          re::internal::accessFaceVaryingAttributeSubmesh(v13, v14);
        }
      }
    }
  }

  if (a3 == 4)
  {
    v15 = *(a4 + 3);
  }

  else
  {
    v15 = -1;
  }

  if (*(this + 4) <= v4)
  {
LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *a4;
  v17 = *(a4 + 2);
  v18 = *(this + 6) + 16 * v4;
  *v18 = *a4;
  *(v18 + 8) = v17;
  *(v18 + 12) = v15;
  return result;
}

uint64_t REGeomMeshCreateFromCoreAttributes(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, __int128 *a7, __int128 *a8, __int128 *a9, char *a10)
{
  v11 = a3;
  v12 = a2;
  v84[11] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = 0;
    do
    {
      v17 = *(v14 + a3);
      v18 = v17 - 2;
      if (v17 <= 2)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_64;
        }

        goto LABEL_50;
      }

      if (v17 < 5)
      {
        v18 = 1;
      }

      v16 += v18;
      v15 = v15 + v17;
      v14 = (v14 + 1);
    }

    while (a2 != v14);
    if (!v15)
    {
LABEL_11:
      v58 = a6;
      v59 = a5;
      v56 = a8;
      v57 = a7;
      goto LABEL_13;
    }

    v19 = 0;
    while (*(a4 + 4 * v19) < a1)
    {
      if (v15 == ++v19)
      {
        goto LABEL_11;
      }
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v49 = CoreRELog::log;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v54 = *(a4 + 4 * v19);
      *buf = 67109632;
      *&buf[4] = v19;
      *v61 = 1024;
      *&v61[2] = v54;
      v62 = 1024;
      LODWORD(v63[0]) = a1;
      v51 = "REGeomMeshCreateFromCoreAttributes - vertexIndicesPerPolygon[%d] specifies an invalid vertex index (%d) which is larger than the specified vertex count of %d.";
      v52 = v49;
      v53 = 20;
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v58 = a6;
  v59 = a5;
  v56 = a8;
  v57 = a7;
  v16 = 0;
LABEL_13:
  bzero(buf, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(v63, 1uLL);
  ++v65;
  re::internal::GeomAttributeManager::GeomAttributeManager(v67);
  re::internal::GeomAttributeManager::addAttribute(v67, "vertexPosition", 1, 7);
  if (v16 < v64)
  {
    v21 = v75;
    if (v75)
    {
      v22 = 0;
      do
      {
        v23 = re::internal::GeomAttributeContainer::attributeByIndex(&v74, v22);
        re::internal::accessFaceVaryingAttributeSubmesh(v23, v24);
        ++v22;
      }

      while (v21 != v22);
    }
  }

  v25 = re::DynamicArray<re::GeomCell4>::resize(v63, v16);
  v71 = v16;
  if (v72)
  {
    v26 = v73;
    v27 = 8 * v72;
    do
    {
      v28 = *v26++;
      v25 = (*(*v28 + 80))(v28, v71);
      v27 -= 8;
    }

    while (v27);
  }

  if (*v61 > a1 && v64 && (v64 - 1) > v64)
  {
      ;
    }
  }

  *v61 = a1;
  v68 = a1;
  if (v69)
  {
    v29 = v70;
    v30 = 8 * v69;
    do
    {
      v31 = *v29++;
      v25 = (*(*v31 + 80))(v31, v68);
      v30 -= 8;
    }

    while (v30);
  }

  if (a10)
  {
    v25 = re::GeomMesh::setName(buf, a10);
  }

  if (v12)
  {
    v32 = 0;
    v33 = 0;
    v34 = v12;
    do
    {
      v35 = *(v11 + v32);
      v36 = v33;
      v37 = (a4 + 4 * v33);
      if (v35 > 4)
      {
        v25 = re::GeomMeshBuilder::setFaceVertices(buf, v32, *v37, v37[1], v37[2]);
        if (v12 < v12 + v35 - 3)
        {
          v38 = v35 - 2 - 1;
          v39 = (a4 + 12 + 4 * v36);
          do
          {
            v25 = re::GeomMeshBuilder::setFaceVertices(buf, v12++, *v37, *(v39 - 1), *v39);
            ++v39;
            --v38;
          }

          while (v38);
        }
      }

      else
      {
        re::GeomMeshBuilder::setFaceVertices(buf, v32, *(v11 + v32), (a4 + 4 * v33));
      }

      ++v32;
      v33 = v36 + v35;
    }

    while (v32 != v34);
  }

  re::make::shared::object<re::Shareable<re::GeomMesh>>(v25, v84);
  v40 = v84[0];
  re::GeomMesh::operator=(v84[0] + 24, v61);
  re::GeomMesh::setName((v40 + 24), *buf);
  re::GeomMesh::freeName(buf);
  v41 = v84[0];
  if (!v84[0])
  {
    goto LABEL_59;
  }

  if (!_ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(v84[0] + 24, "vertexPosition", v59))
  {
LABEL_48:
    v41 = 0;
    goto LABEL_59;
  }

  v42 = v58;
  if (v58)
  {
    v43 = re::GeomMesh::addAttribute(v41 + 24, "vertexUV", 1, 6);
    if (!v43)
    {
LABEL_58:
      v41 = 0;
      goto LABEL_59;
    }

    v44 = *(v41 + 40);
    v45 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v43);
    if (v44)
    {
      v14 = &v76;
      v11 = v46;
      v47 = v46;
      while (v47)
      {
        v48 = *v42++;
        *v45++ = v48;
        --v47;
        if (!--v44)
        {
          goto LABEL_45;
        }
      }

      memset(v84, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v76 = 136315906;
      v77 = "operator[]";
      v78 = 1024;
      v79 = 621;
      v80 = 2048;
      v81 = v11;
      v82 = 2048;
      v83 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_64:
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_50:
      v49 = CoreRELog::log;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = *(v14 + v11);
        *buf = 67109376;
        *&buf[4] = v14;
        *v61 = 1024;
        *&v61[2] = v50;
        v51 = "REGeomMeshCreateFromCoreAttributes - vertexCountPerPolygon[%d] contains a degenerate polygon that is only %d-sided.";
        v52 = v49;
        v53 = 14;
LABEL_56:
        _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);
      }

LABEL_57:

      return 0;
    }
  }

LABEL_45:
  if (!_ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(v41 + 24, "vertexNormal", v57))
  {
    goto LABEL_58;
  }

  if (!_ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(v41 + 24, "vertexTangent", v56) || !_ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(v41 + 24, "vertexBitangent", a9))
  {
    goto LABEL_48;
  }

LABEL_59:
  re::GeomMesh::freeName(buf);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v67);
  if (v63[0] && v66)
  {
    (*(*v63[0] + 40))();
  }

  return v41;
}

uint64_t _ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(uint64_t a1, char *a2, __int128 *a3)
{
  if (a3)
  {
    v3 = a3;
    result = re::GeomMesh::addAttribute(a1, a2, 1, 7);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
    v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(result);
    if (v6)
    {
      v9 = v8;
      do
      {
        if (!v9)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *v3++;
        *v7++ = v10;
        --v9;
        --v6;
      }

      while (v6);
    }
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeInt16(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeInt16";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 0)) == 0 || (v7 = v6, v6[17]) || v6[16] != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeInt16";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_25:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!v7[5])
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = v7[7];
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 2 * v15) = *(a3 + 2 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeUInt16(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeUInt16";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 1)) == 0 || (v7 = v6, v6[17] != 1) || v6[16] != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeUInt16";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_25:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!v7[5])
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = v7[7];
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 2 * v15) = *(a3 + 2 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeInt32(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeInt32";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 2)) == 0 || (v7 = v6, v6[17] != 2) || v6[16] != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeInt32";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_25:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!v7[5])
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = v7[7];
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 4 * v15) = *(a3 + 4 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeUInt32(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeUInt32";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 3)) == 0 || (v7 = v6, v6[17] != 3) || v6[16] != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeUInt32";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_25:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!v7[5])
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = v7[7];
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 4 * v15) = *(a3 + 4 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeFloat(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeFloat";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 4)) == 0 || (v7 = v6, v6[17] != 4) || v6[16] != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeFloat";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_25:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!v7[5])
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = v7[7];
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 4 * v15) = *(a3 + 4 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeDouble(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeDouble";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 5)) == 0 || (v7 = v6, v6[17] != 5) || v6[16] != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeDouble";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_25:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!v7[5])
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = v7[7];
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 8 * v15) = *(a3 + 8 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeVector2F(uint64_t a1, const char *a2, uint64_t *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "REGeomMeshAddVertexAttributeVector2F";
    v14 = "%s - attempt to add an attribute with no name.";
    v15 = v13;
    v16 = 12;
    goto LABEL_19;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if ((v6 || (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 6)) != 0) && *(v6 + 17) == 6 && *(v6 + 16) == 1)
  {
    v7 = *(a1 + 40);
    v8 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v6);
    if (!v7)
    {
      return 1;
    }

    v4 = v9;
    for (i = v9; i; --i)
    {
      v11 = *a3++;
      *v8++ = v11;
      if (!--v7)
      {
        return 1;
      }
    }

    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else if (CoreRELog::onceToken == -1)
  {
    goto LABEL_12;
  }

  dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_12:
  v13 = CoreRELog::log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "REGeomMeshAddVertexAttributeVector2F";
    WORD6(buf[0]) = 2080;
    *(buf + 14) = v4;
    v14 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
    v15 = v13;
    v16 = 22;
LABEL_19:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
  }

LABEL_17:

  return 0;
}

uint64_t REGeomMeshAddVertexAttributeVector3F(uint64_t a1, const char *a2, __int128 *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "REGeomMeshAddVertexAttributeVector3F";
    v14 = "%s - attempt to add an attribute with no name.";
    v15 = v13;
    v16 = 12;
    goto LABEL_19;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if ((v6 || (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 7)) != 0) && *(v6 + 17) == 7 && *(v6 + 16) == 1)
  {
    v7 = *(a1 + 40);
    v8 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v6);
    if (!v7)
    {
      return 1;
    }

    v4 = v9;
    for (i = v9; i; --i)
    {
      v11 = *a3++;
      *v8++ = v11;
      if (!--v7)
      {
        return 1;
      }
    }

    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else if (CoreRELog::onceToken == -1)
  {
    goto LABEL_12;
  }

  dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_12:
  v13 = CoreRELog::log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "REGeomMeshAddVertexAttributeVector3F";
    WORD6(buf[0]) = 2080;
    *(buf + 14) = v4;
    v14 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
    v15 = v13;
    v16 = 22;
LABEL_19:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
  }

LABEL_17:

  return 0;
}

uint64_t REGeomMeshAddVertexAttributeVector4F(uint64_t a1, const char *a2, __int128 *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeVector4F";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 8)) == 0 || (v7 = v6, v6[17] != 8) || v6[16] != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeVector4F";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_25:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!v7[5])
    {
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = v7[7];
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    for (i = v4; i; --i)
    {
      v16 = *a3++;
      *v9++ = v16;
      if (!--v8)
      {
        return 1;
      }
    }

    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesInt16(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17))
  {
    return 0;
  }

  v6 = v4;
  v7 = re::GeomAttribute::accessValues<int>(v4);
  v9 = v8;
  v10 = (*(*v6 + 16))(v6);
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    do
    {
      if (!v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v13 = *v7++;
      *a3++ = v13;
      --v12;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesUInt16(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 1)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesInt32(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 2)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesUInt32(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 3)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesFloat(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 4)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesDouble(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 5)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesVector2F(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 6)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesVector3F(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 7)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesVector4F(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 8)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValueInt16(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17])
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 2 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueUInt16(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 1)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 2 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueInt32(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 2)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 4 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueUInt32(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 3)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 4 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueFloat(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 4)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 4 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueDouble(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 5)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 8 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueVector2F(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 6)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 8 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueVector3F(uint64_t a1, unsigned int a2, unsigned int a3, _OWORD *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 7)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 16 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueVector4F(uint64_t a1, unsigned int a2, unsigned int a3, _OWORD *a4)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 8)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 16 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesInt16(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _WORD *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17])
  {
    return 0;
  }

  v11 = v8;
  v12 = (*(*v8 + 16))(v8);
  v13 = re::GeomAttribute::accessValues<int>(v11);
  if (!a3)
  {
    return 1;
  }

  v15 = a3;
  do
  {
    v17 = *a4++;
    v16 = v17;
    v9 = v17 < v12;
    if (v17 >= v12)
    {
      break;
    }

    if (v16 >= v14)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v13 + 2 * v16);
    --v15;
  }

  while (v15);
  return v9;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesUInt16(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _WORD *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 1)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = a3;
  do
  {
    v15 = *a4++;
    v14 = v15;
    v16 = v15 < v10;
    if (v15 >= v10)
    {
      break;
    }

    if (v14 >= v12)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 2 * v14);
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesInt32(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 2)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = a3;
  do
  {
    v15 = *a4++;
    v14 = v15;
    v16 = v15 < v10;
    if (v15 >= v10)
    {
      break;
    }

    if (v14 >= v12)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 4 * v14);
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesUInt32(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 3)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = a3;
  do
  {
    v15 = *a4++;
    v14 = v15;
    v16 = v15 < v10;
    if (v15 >= v10)
    {
      break;
    }

    if (v14 >= v12)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 4 * v14);
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesFloat(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 4)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = a3;
  do
  {
    v15 = *a4++;
    v14 = v15;
    v16 = v15 < v10;
    if (v15 >= v10)
    {
      break;
    }

    if (v14 >= v12)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 4 * v14);
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesDouble(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, void *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 5)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = a3;
  do
  {
    v15 = *a4++;
    v14 = v15;
    v16 = v15 < v10;
    if (v15 >= v10)
    {
      break;
    }

    if (v14 >= v12)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 8 * v14);
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesVector2F(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, void *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 6)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = a3;
  do
  {
    v15 = *a4++;
    v14 = v15;
    v16 = v15 < v10;
    if (v15 >= v10)
    {
      break;
    }

    if (v14 >= v12)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 8 * v14);
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesVector3F(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _OWORD *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 7)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = a3;
  do
  {
    v15 = *a4++;
    v14 = v15;
    v16 = v15 < v10;
    if (v15 >= v10)
    {
      break;
    }

    if (v14 >= v12)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 16 * v14);
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t REGeomMeshGetAttributeValuesByIndicesVector4F(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _OWORD *a5)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 8)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = a3;
  do
  {
    v15 = *a4++;
    v14 = v15;
    v16 = v15 < v10;
    if (v15 >= v10)
    {
      break;
    }

    if (v14 >= v12)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 16 * v14);
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t REGeomCompareMeshes(uint64_t a1, uint64_t a2, const re::GeomMesh *a3, float a4)
{
  re::internal::compareMeshes((a1 + 24), (a2 + 24), a3, a4, v13);
  v4 = re::GeomMeshBuilder::GeomMeshBuilder(&v8, v13);
  re::make::shared::object<re::Shareable<re::GeomMesh>>(v4, &v14);
  v5 = v14;
  re::GeomMesh::operator=(v14 + 24, &v9);
  re::GeomMesh::setName((v5 + 24), v8);
  re::GeomMesh::freeName(&v8);
  v6 = v14;
  re::GeomMesh::freeName(&v8);
  re::internal::GeomAttributeManager::~GeomAttributeManager(&v12);
  if (v10 && v11)
  {
    (*(*v10 + 40))();
  }

  re::GeomMesh::~GeomMesh(v13);
  return v6;
}

void *re::make::shared::object<re::Shareable<re::GeomMesh>>@<X0>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 760, 8);
  result = re::Shareable<re::GeomMesh>::Shareable<>(v4);
  *a2 = result;
  return result;
}

void *re::Shareable<re::GeomMesh>::Shareable<>(void *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D2D2A8;
  re::GeomMesh::GeomMesh((a1 + 3), 0);
  return a1;
}

uint64_t re::Shareable<re::GeomMesh>::~Shareable(uint64_t a1)
{
  *a1 = &unk_1F5D2D2A8;
  re::GeomMesh::~GeomMesh((a1 + 24));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance((a1 + 8));
  return a1;
}

void re::Shareable<re::GeomMesh>::~Shareable(uint64_t a1)
{
  *a1 = &unk_1F5D2D2A8;
  re::GeomMesh::~GeomMesh((a1 + 24));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance((a1 + 8));

  JUMPOUT(0x1E6906520);
}

void *RESubsceneComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SubsceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void RESubsceneComponentSetSubscene(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v3);
  re::ecs2::SubsceneComponent::setSubscene(a1, v3);
  re::AssetHandle::~AssetHandle(v3);
}

void RESubsceneComponentLoad(uint64_t a1)
{
  re::AssetHandle::AssetHandle(v2, (a1 + 32));
  re::ecs2::SubsceneComponent::setSubscene(a1, v2);
  re::AssetHandle::~AssetHandle(v2);
}

void *RESkyboxComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void RESkyboxComponentSetTexture()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "Please use RESkyboxComponentSetMaterial(). Will be deleted in M9.", v1, 2u);
  }
}

uint64_t RESkyboxComponentGetTexture()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "Please use RESkyboxComponentGetMaterial(). Will be deleted in M9.", v2, 2u);
  }

  return 0;
}

void RESkyboxComponentSetMaterial(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v5);
  v3 = *(a1 + 32);
  *(a1 + 32) = v5;
  v5 = v3;
  v4 = *(a1 + 48);
  *(a1 + 48) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

void RESkyboxComponentSetMaterialBlockParameter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = a2;
  if (v5)
  {
  }
}

void *REConstraintListComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void *REDeferredActivationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *RECameraMovementComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::CameraMovementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REClientWorldOriginOverrideComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

__CFArray *REAssetManagerGetRegisteredAssetTypeNames(uint64_t a1)
{
  v1 = *(a1 + 1808);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = 0;
    v5 = *(v1 + 16);
    while (1)
    {
      v6 = *v5;
      v5 += 16;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(v1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(v1 + 16);
    do
    {
      v8 = CFStringCreateWithCString(0, **(v7 + (v4 << 6) + 8), 0x8000100u);
      CFArrayAppendValue(Mutable, v8);
      CFRelease(v8);
      if (*(v1 + 32) <= (v4 + 1))
      {
        v9 = v4 + 1;
      }

      else
      {
        v9 = *(v1 + 32);
      }

      v7 = *(v1 + 16);
      while (v9 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + (v4 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v4) = v9;
LABEL_18:
      ;
    }

    while (v4 != v3);
  }

  return Mutable;
}

uint64_t REAssetManagerCreateSampleAsset(void *a1, char *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a1[226];
  v7 = re::internal::AssetTypeRegistry::assetTypeWithName(v6, a2);
  if (!v7)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *v16 = 136315138;
    *&v16[4] = a2;
    v14 = "%s is not the name of a registered asset type.";
    goto LABEL_18;
  }

  v8 = v7;
  *v16 = v7;
  v9 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, v16);
  (*(**v9 + 128))(*v9);
  v10 = (*(**v9 + 168))();
  if (!v10)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *v16 = 136315138;
    *&v16[4] = a2;
    v14 = "Failed to create a default AssetPointer for asset type %s.";
LABEL_18:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, v16, 0xCu);
LABEL_15:

    return 0;
  }

  (*(*a1 + 424))(v16, a1, v10, v8, 0, 0, 0);
  v11 = *v16;
  v12 = (*v16 + 8);
  re::AssetHandle::~AssetHandle(v16);
  return v11;
}

uint64_t REAssetManagerGetAssetTypeInitialRelease(uint64_t a1, char *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1808);
  v6 = re::internal::AssetTypeRegistry::assetTypeWithName(v5, a2);
  if (v6)
  {
    *buf = v6;
    v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v5, buf);
    (*(**v7 + 128))(*v7);
    v13 = *((*(**v7 + 128))() + 32);
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v12);
    if (buf[0] == 1)
    {
      v8 = *(v15 + 64);
    }

    else
    {
      v8 = -1;
    }

    v10 = re::TypeAvailabilityUtilities::convertToMajorVersion(v8);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v12);
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "%s is not the name of a registered asset type.", buf, 0xCu);
    }

    return 0;
  }

  return v10;
}

BOOL REAssetManagerRunTaskInBackgroundLoadingGroup(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v9 = a2;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __REAssetManagerRunTaskInBackgroundLoadingGroup_block_invoke;
    v7[3] = &unk_1E8722BD8;
    v8 = v5;
    re::AssetManager::runTaskInBackgroundLoadingGroup(a1, &v9, v7);
  }

  return v5 != 0;
}

void *REProjectiveShadowReceiverComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *addShadowReceiverToEntitySubtree(void *result, int a2)
{
  v3 = result;
  if (result[24])
  {
    result = re::ecs2::EntityComponentCollection::getOrAdd((result + 6), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  if (v3[30])
  {
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = re::ecs2::EntityComponentCollection::add((v3 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!a2)
    {
      return result;
    }
  }

  v4 = v3[43];
  if (v4)
  {
    v5 = v3[45];
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      result = addShadowReceiverToEntitySubtree(v7, 1);
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void removeShadowReceiverFromEntitySubtree(re::ecs2::Entity *a1, int a2)
{
  re::ecs2::EntityComponentCollection::remove((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(a1 + 49);
  if (!*(a1 + 49))
  {
    goto LABEL_7;
  }

  v5 = (re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
  v6 = *(a1 + 13);
  v7 = vld1q_dup_s16(v5);
  v8 = 1;
  while (1)
  {
    v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
    v9.i16[0] = vmaxvq_u16(v9);
    if (v9.i32[0])
    {
      break;
    }

    v8 -= 8;
    ++v6;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }

  if (v9.u16[0] - v8 >= *(a1 + 48))
  {
LABEL_7:
    re::ecs2::EntityComponentCollection::remove((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  if (a2)
  {
    v10 = *(a1 + 43);
    if (v10)
    {
      v11 = *(a1 + 45);
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        removeShadowReceiverFromEntitySubtree(v13, 1);
        v12 -= 8;
      }

      while (v12);
    }
  }
}

void REProjectiveShadowReceiverSystemSetShadowClusterExtentDiscrepancy(float a1)
{
  if ((re::ShadowManager::getMutableDeprecatedShadowParams(void)::deprecatedShadowParams & 1) == 0)
  {
    re::ShadowManager::getMutableDeprecatedShadowParams(void)::deprecatedShadowParams = 1;
  }

  dword_1ECF1C4AC = LODWORD(a1);
}

float REProjectiveShadowReceiverSystemGetShadowClusterExtentDiscrepancy()
{
  result = *&dword_1ECF1C4AC;
  if (!re::ShadowManager::getMutableDeprecatedShadowParams(void)::deprecatedShadowParams)
  {
    return 0.0;
  }

  return result;
}

void REProjectiveShadowReceiverSystemSetShadowClusteringFudgeFactor(float a1)
{
  if ((byte_1ECF1C4B0 & 1) == 0)
  {
    byte_1ECF1C4B0 = 1;
  }

  dword_1ECF1C4B4 = LODWORD(a1);
}

float REProjectiveShadowReceiverSystemGetShadowClusteringFudgeFactor()
{
  result = *&dword_1ECF1C4B4;
  if (!byte_1ECF1C4B0)
  {
    return 1.0;
  }

  return result;
}

BOOL REEntityGetProjectiveShadowClusterID(uint64_t a1, void *a2)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    v2 = *(v2 + 64);
    result = v2 != 0;
  }

  else
  {
    result = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t re::convert(int a1)
{
  if (a1 > 47)
  {
    if (a1 <= 49)
    {
      if (a1 == 48)
      {
        return 6;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      switch(a1)
      {
        case 50:
          return 8;
        case 64:
          return 1;
        case 128:
          return 10;
        default:
          return 0;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = 2;
        break;
      case 2:
        result = 9;
        break;
      case 3:
        result = 11;
        break;
      case 4:
        result = 13;
        break;
      case 5:
        result = 15;
        break;
      case 6:
        result = 17;
        break;
      case 7:
        result = 12;
        break;
      case 8:
        result = 14;
        break;
      case 9:
        result = 16;
        break;
      case 10:
        result = 18;
        break;
      case 20:
        result = 19;
        break;
      case 21:
        result = 20;
        break;
      case 32:
        result = 3;
        break;
      case 33:
        result = 4;
        break;
      case 34:
        result = 5;
        break;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t RETypeRegistryCreateTestData(re::TypeRegistry *a1)
{
  *&v47 = 6059476;
  *(&v47 + 1) = "BOOL";
  re::TypeBuilderHelper::registerBasic<BOOL>(a1, &v47, &v44);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 208862;
  *(&v47 + 1) = "int";
  re::TypeBuilderHelper::registerBasic<int>(a1, &v47, &v43);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 0x161EEF7A2;
  *(&v47 + 1) = "double";
  re::TypeBuilderHelper::registerBasic<double>(a1, &v47, &v42);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 0x971D12FA97F764A2;
  *(&v47 + 1) = "Optional<double>";
  re::TypeBuilderHelper::registerOptional<double>(a1, &v47, &v42, &v41);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 0x172E213ACLL;
  *(&v47 + 1) = "int[3]";
  re::TypeBuilderHelper::registerArray(a1, &v47, &v43, 3uLL, &v40);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 0x67A219376628FE62;
  *(&v47 + 1) = "DynamicArray<int>";
  re::TypeBuilderHelper::registerDynamicArray<int>(a1, &v47, &v43, &v39);
  if (v47)
  {
    if (v47)
    {
    }
  }

  v37[0] = 0xE7E18952C29E6A8;
  v37[1] = "HashTable<int,double>";
  v8 = re::TypeRegistry::typeID(a1, v37, &v55);
  if (v55)
  {
    v38 = v55;
  }

  else
  {
    *&v47 = 0x449AD97C4B77BED4;
    *(&v47 + 1) = "_CompareFunc";
    v9 = re::TypeRegistry::typeID(a1, &v47, &v54);
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (!v54)
    {
      v49[0] = 0x449AD97C4B77BED4;
      v49[1] = "_CompareFunc";
      re::TypeRegistry::declareType(v49, a1, 8, 1u, 0, &v47);
      v54 = v47;
      if (v49[0])
      {
        if (v49[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, &v43, &v47);
    re::TypeInfo::TypeInfo(&v52, &v47 + 8);
    if (!v54 || (v11 = *v53, *&v47 = *(&v54 + 1), *(&v47 + 1) = v11, v48 = -1, (v12 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v52 + 768, &v47)) == 0) || !*v12)
    {
      v50 = v54;
      v51 = v43;
      re::TypeRegistry::addAttribute(a1, &v51, -1, &v50, re::internal::less<int>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v49);
    re::TypeBuilder::TypeBuilder(&v47, v49);
    v45 = v42;
    v46 = v43;
    re::TypeBuilder::beginDictionaryType(&v47, v37, 1, 0x30uLL, 8uLL, &v46, &v45);
    re::TypeBuilder::setConstructor(&v47, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v47, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v47, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v47, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(&v47, a1, &v38);
    re::TypeBuilder::~TypeBuilder(&v47, v13);
    re::StackScratchAllocator::~StackScratchAllocator(v49);
  }

  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  re::TypeBuilderHelper::registerDynamicString(a1, &v52);
  re::TypeBuilderHelper::registerStringID(a1, &v55);
  re::StackScratchAllocator::StackScratchAllocator(v49);
  re::TypeBuilder::TypeBuilder(&v47, v49);
  *&v54 = 0x45F7EF0E6F8;
  *(&v54 + 1) = "TestData";
  v36[0] = 0;
  v36[1] = 0xFFFFFFFFLL;
  v14 = re::TypeBuilder::beginObjectType(&v47, &v54, 1, 1, 0xB8uLL, 8uLL, v36);
  if (v54)
  {
    if (v54)
    {
    }
  }

  re::TypeBuilder::setConstructor(&v47, RETypeRegistryCreateTestData::$_0::__invoke);
  re::TypeBuilder::setDestructor(&v47, RETypeRegistryCreateTestData::$_1::__invoke);
  v35 = v44;
  *&v54 = 196;
  *(&v54 + 1) = "b";
  v15 = re::TypeBuilder::addObjectMember(&v47, 1, &v35, &v54, 0);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v34 = v43;
  *&v54 = 210;
  *(&v54 + 1) = "i";
  v16 = re::TypeBuilder::addObjectMember(&v47, 2, &v34, &v54, 4);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v33 = v42;
  *&v54 = 200;
  *(&v54 + 1) = "d";
  v17 = re::TypeBuilder::addObjectMember(&v47, 3, &v33, &v54, 8);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v32 = v41;
  *&v54 = 0x5BDF69496C0;
  *(&v54 + 1) = "optional";
  v18 = re::TypeBuilder::addObjectMember(&v47, 4, &v32, &v54, 16);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v31 = v40;
  *&v54 = 0x13D298C84A468ALL;
  *(&v54 + 1) = "fixedArray";
  v19 = re::TypeBuilder::addObjectMember(&v47, 5, &v31, &v54, 32);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v30 = v39;
  *&v54 = 0x495BC3BA4202E2B4;
  *(&v54 + 1) = "dynamicArray";
  v20 = re::TypeBuilder::addObjectMember(&v47, 6, &v30, &v54, 48);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v29 = v38;
  *&v54 = 0xA66423A206C0;
  *(&v54 + 1) = "hashTable";
  v21 = re::TypeBuilder::addObjectMember(&v47, 7, &v29, &v54, 88);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v28 = v52;
  *&v54 = 0xE21CB38E3C008260;
  *(&v54 + 1) = "dynamicString";
  v22 = re::TypeBuilder::addObjectMember(&v47, 8, &v28, &v54, 136);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v27 = v55;
  *&v54 = 0x5F2D5FB51D8;
  *(&v54 + 1) = "stringID";
  v23 = re::TypeBuilder::addObjectMember(&v47, 9, &v27, &v54, 168);
  if (v54)
  {
    if (v54)
    {
    }
  }

  re::TypeBuilder::commitTo(&v47, a1, &v54);
  v24 = v54;
  re::TypeBuilder::~TypeBuilder(&v47, v25);
  re::StackScratchAllocator::~StackScratchAllocator(v49);
  return v24;
}

uint64_t RETypeRegistryCreateTestData::$_0::__invoke(RETypeRegistryCreateTestData::$_0 *this, void *a2, const re::TypeInfo *a3, re::Allocator *a4, void *a5)
{
  *(this + 16) = 0;
  *(this + 6) = 0;
  v6 = (this + 48);
  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0x7FFFFFFFLL;
  *(this + 136) = 0u;
  v7 = (this + 136);
  *(this + 152) = 0u;
  re::DynamicString::setCapacity(v7, 0);
  *(this + 21) = 0;
  *(this + 22) = &str_67;
  *this = 1;
  *(this + 1) = -123;
  *(this + 1) = 0x405EDD2F1A9FBE77;
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 16) = 1;
  }

  *(this + 3) = 0x3FBF7CED916872B0;
  *(this + 4) = 0xFFFFFFFEFFFFFFFFLL;
  *(this + 10) = -3;
  for (i = 1; i != 6; ++i)
  {
    LODWORD(v13) = i;
    re::DynamicArray<int>::add(v6, &v13);
  }

  for (j = 1; j != 3; ++j)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (j ^ (j >> 30))) ^ ((0xBF58476D1CE4E5B9 * (j ^ (j >> 30))) >> 27));
    re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v13, this + 88, j, v10 ^ (v10 >> 31));
    if (HIDWORD(v14) == 0x7FFFFFFF)
    {
      v11 = re::HashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(this + 88, v14, v13);
      *(v11 + 4) = j;
      *(v11 + 8) = j / 10.0;
      ++*(this + 32);
    }
  }

  v13 = "DynamicString Test";
  v14 = 18;
  re::DynamicString::operator=(v7, &v13);
  re::StringID::destroyString((this + 168));
  result = re::internal::compileTimeHornerHash<15ul>(31, "StringID Test", 0, 0, 13);
  *(this + 21) = 2 * result;
  *(this + 22) = "StringID Test";
  return result;
}

uint64_t re::HashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = re::HashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                *(v18 + 4) = *(v17 - 1);
                *(v18 + 8) = *v17;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

uint64_t RETypeRegistryCreateTestData::$_1::__invoke(uint64_t *a1)
{
  re::StringID::destroyString((a1 + 21));
  re::DynamicString::deinit((a1 + 17));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1 + 11);

  return re::DynamicArray<unsigned long>::deinit((a1 + 6));
}

void re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1);

  return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {
    if (*(a1 + 28))
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v5);
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(a1 + 16);
        do
        {
          if ((*v7 & 0x80000000) != 0)
          {
            *v7 &= ~0x80000000;
          }

          v7 += 6;
          --v6;
        }

        while (v6);
      }

      *(a1 + 28) = 0;
      *(a1 + 32) = 0;
      v8 = *(a1 + 40) + 1;
      *(a1 + 36) = 0x7FFFFFFF;
      *(a1 + 40) = v8;
    }
  }

  else
  {
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1);

    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, int *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], &v18);
  re::TypeInfo::TypeInfo(v17, v19);
  Instance = re::TypeInfo::createInstance(v17, a3, 0);
  v18 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v9 = *a4;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v18, a1, v9, v10 ^ (v10 >> 31));
  v11 = HIDWORD(v19[0]);
  if (HIDWORD(v19[0]) == 0x7FFFFFFF)
  {
    v12 = re::HashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, v19[0], v18);
    v13 = *a4;
    *(v12 + 8) = *Instance;
    v14 = v12 + 8;
    *(v12 + 4) = v13;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v15 = *(a1 + 16) + 24 * v11;
    *(v15 + 8) = *Instance;
    v14 = v15 + 8;
  }

  re::TypeRegistry::typeInfo(*a2, a2[2][11], &v18);
  re::TypeInfo::TypeInfo(v17, v19);
  re::TypeInfo::releaseInstance(v17, Instance, a3, 0);
  return v14;
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v6, a1, v3, v4 ^ (v4 >> 31));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v7 + 8;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 24 * v4) & 0x80000000) != 0)
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
          v5 += 6;
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