@interface REMeshSkeletonDescriptor
- (BOOL)validateWithError:(id *)error;
- (MeshAssetSkeleton)meshAssetSkeleton;
- (REMeshSkeletonDescriptor)initWithCoder:(id)coder;
- (REMeshSkeletonDescriptor)initWithMeshAssetSkeleton:(const void *)skeleton;
- (REMeshSkeletonDescriptor)initWithMeshSkeletonDefinition:(const void *)definition;
- (REMeshSkeletonDescriptor)initWithName:(id)name jointNames:(id)names parentIndices:(id)indices localRestPoseScales:localRestPoseRotations:localRestPoseTranslations:inverseBindPose:;
- (id).cxx_construct;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMeshSkeletonDescriptor

- (REMeshSkeletonDescriptor)initWithMeshAssetSkeleton:(const void *)skeleton
{
  v4 = *(skeleton + 3);
  if (v4 != *(skeleton + 6))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "jointCount == skeleton.parentIndices.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshAssetSkeleton:]", 1604);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  if (v4 != *(skeleton + 9))
  {
LABEL_23:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "jointCount == skeleton.localBindPoses.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshAssetSkeleton:]", 1605);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  if (v4 != *(skeleton + 12))
  {
LABEL_24:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "jointCount == skeleton.inverseBindPoses.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshAssetSkeleton:]", 1606);
    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  if (v4 != v18)
  {
LABEL_25:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "jointCount == localRestPose.scales.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshAssetSkeleton:]", 1609);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v21)
  {
LABEL_26:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "jointCount == localRestPose.rotations.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshAssetSkeleton:]", 1610);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v24)
  {
LABEL_27:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "jointCount == localRestPose.translations.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshAssetSkeleton:]", 1611);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(skeleton + 1)];
  v9 = v8 = objc_claimAutoreleasedReturnValue();
  v10 = v19;
  v11 = v22;
  v12 = v25;
  v14 = [(REMeshSkeletonDescriptor *)self initWithName:v7 jointNames:v8 parentIndices:v9 localRestPoseScales:v10 localRestPoseRotations:v11 localRestPoseTranslations:v12 inverseBindPose:v13, v16[2]];
  if (v16[0] && v16[1])
  {
    (*(*v16[0] + 40))();
  }

  if (v23)
  {
    if (v24)
    {
      (*(*v23 + 40))();
      v24 = 0;
      v25 = 0;
    }

    v23 = 0;
  }

  if (v20)
  {
    if (v21)
    {
      (*(*v20 + 40))();
      v21 = 0;
      v22 = 0;
    }

    v20 = 0;
  }

  if (v17)
  {
    if (v18)
    {
      (*(*v17 + 40))();
    }
  }

  return v14;
}

- (REMeshSkeletonDescriptor)initWithMeshSkeletonDefinition:(const void *)definition
{
  v4 = *(definition + 6);
  if (v4 != *(definition + 9))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "jointCount == skeleton.parentIndices.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshSkeletonDefinition:]", 1625);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  if (v4 != *(definition + 12))
  {
LABEL_23:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "jointCount == skeleton.localRestPose.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshSkeletonDefinition:]", 1626);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  if (v4 != *(definition + 15))
  {
LABEL_24:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "jointCount == skeleton.inverseBindPoses.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshSkeletonDefinition:]", 1627);
    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  if (v4 != v18)
  {
LABEL_25:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "jointCount == localRestPose.scales.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshSkeletonDefinition:]", 1630);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v21)
  {
LABEL_26:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "jointCount == localRestPose.rotations.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshSkeletonDefinition:]", 1631);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v24)
  {
LABEL_27:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "jointCount == localRestPose.translations.size()", "[REMeshSkeletonDescriptor(REMeshAssetRuntime) initWithMeshSkeletonDefinition:]", 1632);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(definition + 4)];
  v9 = v8 = objc_claimAutoreleasedReturnValue();
  v10 = v19;
  v11 = v22;
  v12 = v25;
  v14 = [(REMeshSkeletonDescriptor *)self initWithName:v7 jointNames:v8 parentIndices:v9 localRestPoseScales:v10 localRestPoseRotations:v11 localRestPoseTranslations:v12 inverseBindPose:v13, v16[2]];
  if (v16[0] && v16[1])
  {
    (*(*v16[0] + 40))();
  }

  if (v23)
  {
    if (v24)
    {
      (*(*v23 + 40))();
      v24 = 0;
      v25 = 0;
    }

    v23 = 0;
  }

  if (v20)
  {
    if (v21)
    {
      (*(*v20 + 40))();
      v21 = 0;
      v22 = 0;
    }

    v20 = 0;
  }

  if (v17)
  {
    if (v18)
    {
      (*(*v17 + 40))();
    }
  }

  return v14;
}

- (MeshAssetSkeleton)meshAssetSkeleton
{
  v69 = *MEMORY[0x1E69E9840];
  jointNames = [(REMeshSkeletonDescriptor *)self jointNames];
  v45 = [jointNames count];

  name = [(REMeshSkeletonDescriptor *)self name];
  uTF8String = [name UTF8String];
  *&retstr->var0.var0 = 0;
  retstr->var0.var1 = &str_67;
  jointNames2 = [(REMeshSkeletonDescriptor *)self jointNames];
  retstr->var1.var1 = 0;
  retstr->var1.var2 = 0;
  retstr->var1.var0 = 0;
  v42 = jointNames2;
  v7 = [jointNames2 count];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = v42;
  v9 = [v8 countByEnumeratingWithState:&v49 objects:&v53 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v50;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v8);
        }

        uTF8String2 = [*(*(&v49 + 1) + 8 * v12) UTF8String];
        v46 = 0;
        v47 = &str_67;
        var1 = retstr->var1.var1;
        if (var1 <= v10)
        {
          v48 = 0;
          v25 = &v53;
          v67 = 0u;
          v68 = 0u;
          memset(v66, 0, sizeof(v66));
          v21 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v58 = 136315906;
          v59 = "operator[]";
          v60 = 1024;
          v61 = 468;
          v62 = 2048;
          v63 = v10;
          v64 = 2048;
          v65 = var1;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_32:
          v46 = 0;
          v30 = &v53;
          v67 = 0u;
          v68 = 0u;
          memset(v66, 0, sizeof(v66));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v58 = 136315906;
          v59 = "operator[]";
          v60 = 1024;
          v61 = 468;
          v62 = 2048;
          v63 = v21;
          v64 = 2048;
          v65 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_33:
          *&v49 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66[0] = 136315906;
          *&v66[1] = "operator[]";
          LOWORD(v66[3]) = 1024;
          *(&v66[3] + 2) = 468;
          HIWORD(v66[4]) = 2048;
          *&v66[5] = v21;
          LOWORD(v66[7]) = 2048;
          *(&v66[7] + 2) = v30;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_34:
          *&v49 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66[0] = 136315906;
          *&v66[1] = "operator[]";
          LOWORD(v66[3]) = 1024;
          *(&v66[3] + 2) = 468;
          HIWORD(v66[4]) = 2048;
          *&v66[5] = v30;
          LOWORD(v66[7]) = 2048;
          *(&v66[7] + 2) = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_35:
          *&v49 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66[0] = 136315906;
          *&v66[1] = "operator[]";
          LOWORD(v66[3]) = 1024;
          *(&v66[3] + 2) = 468;
          HIWORD(v66[4]) = 2048;
          *&v66[5] = v30;
          LOWORD(v66[7]) = 2048;
          *(&v66[7] + 2) = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_36:
          *&v49 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66[0] = 136315906;
          *&v66[1] = "operator[]";
          LOWORD(v66[3]) = 1024;
          *(&v66[3] + 2) = 468;
          HIWORD(v66[4]) = 2048;
          *&v66[5] = v30;
          LOWORD(v66[7]) = 2048;
          *(&v66[7] + 2) = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v16 = re::StringID::operator=(&retstr->var1.var2[v13], &v46);
        if (v46)
        {
          if (v46)
          {
          }
        }

        ++v10;
        ++v12;
        ++v13;
      }

      while (v9 != v12);
      v9 = [v8 countByEnumeratingWithState:&v49 objects:&v53 count:16];
    }

    while (v9);
  }

  parentIndices = [(REMeshSkeletonDescriptor *)self parentIndices];
  retstr->var2.var1 = 0;
  retstr->var2.var2 = 0;
  retstr->var2.var0 = 0;
  v18 = [parentIndices count];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v19 = parentIndices;
  v20 = [v19 countByEnumeratingWithState:&v49 objects:&v53 count:16];
  if (v20)
  {
    v21 = 0;
    v22 = *v50;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v50 != v22)
        {
          objc_enumerationMutation(v19);
        }

        unsignedIntValue = [*(*(&v49 + 1) + 8 * i) unsignedIntValue];
        v25 = retstr->var2.var1;
        if (v25 <= v21)
        {
          goto LABEL_32;
        }

        retstr->var2.var2[v21++] = unsignedIntValue;
      }

      v20 = [v19 countByEnumeratingWithState:&v49 objects:&v53 count:16];
    }

    while (v20);
  }

  localRestPoseScales = [(REMeshSkeletonDescriptor *)self localRestPoseScales];
  localRestPoseRotations = [(REMeshSkeletonDescriptor *)self localRestPoseRotations];
  localRestPoseTranslations = [(REMeshSkeletonDescriptor *)self localRestPoseTranslations];
  retstr->var3.var0 = 0;
  retstr->var3.var1 = 0;
  retstr->var3.var2 = 0;
  if (v45)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v21 = retstr->var3.var1;
      if (v21 <= v30)
      {
        goto LABEL_34;
      }

      *(retstr->var3.var2 + v29) = *(localRestPoseScales + 16 * v30);
      v21 = retstr->var3.var1;
      if (v21 <= v30)
      {
        goto LABEL_35;
      }

      *(retstr->var3.var2 + v29 + 16) = *(localRestPoseRotations + v30);
      v21 = retstr->var3.var1;
      if (v21 <= v30)
      {
        goto LABEL_36;
      }

      *(retstr->var3.var2 + v29 + 32) = *(localRestPoseTranslations + v30++);
      v29 += 48;
    }

    while (v45 != v30);
  }

  inverseBindPose = [(REMeshSkeletonDescriptor *)self inverseBindPose];
  inverseBindPose2 = [(REMeshSkeletonDescriptor *)self inverseBindPose];
  v33 = (inverseBindPose2 + 64 * v45);
  v34 = (v33 - inverseBindPose) >> 6;
  retstr->var4.var0 = 0;
  retstr->var4.var1 = 0;
  retstr->var4.var2 = 0;
  if (v33 != inverseBindPose)
  {
    v21 = 0;
    v35 = (inverseBindPose + 32);
    v36 = 32;
    do
    {
      v30 = retstr->var4.var1;
      if (v30 <= v21)
      {
        goto LABEL_33;
      }

      v38 = *v35;
      v37 = v35[1];
      v39 = *(v35 - 1);
      v40 = retstr->var4.var2 + v36;
      *(v40 - 2) = *(v35 - 2);
      *(v40 - 1) = v39;
      *v40 = v38;
      v40[1] = v37;
      ++v21;
      v36 += 64;
      v35 += 4;
    }

    while (v34 != v21);
  }

  return result;
}

- (REMeshSkeletonDescriptor)initWithName:(id)name jointNames:(id)names parentIndices:(id)indices localRestPoseScales:localRestPoseRotations:localRestPoseTranslations:inverseBindPose:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  nameCopy = name;
  namesCopy = names;
  indicesCopy = indices;
  v40.receiver = self;
  v40.super_class = REMeshSkeletonDescriptor;
  v17 = [(REMeshSkeletonDescriptor *)&v40 init];
  if (v17)
  {
    v18 = [nameCopy copy];
    v19 = *(v17 + 13);
    *(v17 + 13) = v18;

    objc_storeStrong(v17 + 14, names);
    objc_storeStrong(v17 + 15, indices);
    v20 = [namesCopy count];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v17 + 1, v20);
    v21 = *(v17 + 4);
    v22 = *(v17 + 5);
    v23 = (v22 - v21) >> 4;
    if (v20 <= v23)
    {
      if (v20 >= v23)
      {
        goto LABEL_15;
      }

      v29 = v21 + 16 * v20;
    }

    else
    {
      v24 = v20 - v23;
      v25 = *(v17 + 6);
      if (v24 > (v25 - v22) >> 4)
      {
        if (!(v20 >> 60))
        {
          v26 = v25 - v21;
          v27 = v26 >> 3;
          if (v26 >> 3 <= v20)
          {
            v27 = v20;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFF0)
          {
            v28 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v27;
          }

          _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v28);
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      bzero(*(v17 + 5), 16 * v24);
      v29 = v22 + 16 * v24;
    }

    *(v17 + 5) = v29;
LABEL_15:
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v17 + 7, v20);
    v30 = *(v17 + 10);
    v31 = *(v17 + 11);
    v32 = (v31 - v30) >> 6;
    if (v20 <= v32)
    {
      if (v20 >= v32)
      {
LABEL_28:
        memcpy(*(v17 + 1), v10, 16 * v20);
        memcpy(*(v17 + 4), v9, 16 * v20);
        memcpy(*(v17 + 7), v8, 16 * v20);
        memcpy(*(v17 + 10), v41, v20 << 6);
        goto LABEL_29;
      }

      v38 = v30 + (v20 << 6);
    }

    else
    {
      v33 = v20 - v32;
      v34 = *(v17 + 12);
      if (v33 > (v34 - v31) >> 6)
      {
        if (!(v20 >> 58))
        {
          v35 = v34 - v30;
          v36 = v35 >> 5;
          if (v35 >> 5 <= v20)
          {
            v36 = v20;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFC0)
          {
            v37 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float4x4>>(v37);
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      bzero(*(v17 + 11), v33 << 6);
      v38 = v31 + (v33 << 6);
    }

    *(v17 + 11) = v38;
    goto LABEL_28;
  }

LABEL_29:

  return v17;
}

- (REMeshSkeletonDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"jointNames"];
  jointNames = self->_jointNames;
  self->_jointNames = v7;

  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"parentIndices"];
  parentIndices = self->_parentIndices;
  self->_parentIndices = v9;

  v11 = [(NSArray *)self->_jointNames count];
  v23 = 0;
  v12 = [coderCopy decodeBytesForKey:@"localRestPose.scale" returnedLength:&v23];
  v13 = validateLocalRestPoseFloat3(v11, v12, v23, self->_anon_8);
  [coderCopy decodeBytesForKey:@"localRestPose.rotation" returnedLength:&v23];
  if (v13)
  {
    if (v23 == 16 * v11)
    {
      if (v11)
      {
        if (!(v11 >> 60))
        {
          _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v11);
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      begin = self->_localRestPoseRotations.__begin_;
      if (begin)
      {
        self->_localRestPoseRotations.__end_ = begin;
        operator delete(begin);
      }

      self->_localRestPoseRotations.__begin_ = 0;
      self->_localRestPoseRotations.__end_ = 0;
      v13 = 1;
      self->_localRestPoseRotations.__cap_ = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = [coderCopy decodeBytesForKey:@"localRestPose.translation" returnedLength:&v23];
  if (v13)
  {
    v16 = validateLocalRestPoseFloat3(v11, v15, v23, self->_anon_38);
  }

  else
  {
    v16 = 0;
  }

  v17 = [coderCopy decodeBytesForKey:@"inverseBindPose" returnedLength:&v23];
  if (v16 && v23 == v11 << 6)
  {
    if (v11)
    {
      if (!(v11 >> 58))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float4x4>>(v11);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    memcpy(0, v17, v23);
    v21 = self->_inverseBindPose.__begin_;
    if (v21)
    {
      self->_inverseBindPose.__end_ = v21;
      operator delete(v21);
    }

    self->_inverseBindPose.__begin_ = 0;
    self->_inverseBindPose.__end_ = 0;
    self->_inverseBindPose.__cap_ = 0;
    selfCopy = self;
  }

  else
    v19 = {;
    [coderCopy failWithError:v19];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_jointNames forKey:@"jointNames"];
  [coderCopy encodeObject:self->_parentIndices forKey:@"parentIndices"];
  [coderCopy encodeBytes:*self->_anon_8 length:*&self->_anon_8[8] - *self->_anon_8 forKey:@"localRestPose.scale"];
  [coderCopy encodeBytes:self->_localRestPoseRotations.__begin_ length:self->_localRestPoseRotations.__end_ - self->_localRestPoseRotations.__begin_ forKey:@"localRestPose.rotation"];
  [coderCopy encodeBytes:*self->_anon_38 length:*&self->_anon_38[8] - *self->_anon_38 forKey:@"localRestPose.translation"];
  [coderCopy encodeBytes:self->_inverseBindPose.__begin_ length:self->_inverseBindPose.__end_ - self->_inverseBindPose.__begin_ forKey:@"inverseBindPose"];
}

- (BOOL)validateWithError:(id *)error
{
  v5 = [(NSArray *)self->_jointNames count];
  if ([(NSArray *)self->_parentIndices count]== v5 && v5 == (*&self->_anon_8[8] - *self->_anon_8) >> 4 && v5 == (self->_localRestPoseRotations.__end_ - self->_localRestPoseRotations.__begin_) >> 4 && v5 == (*&self->_anon_38[8] - *self->_anon_38) >> 4 && v5 == (self->_inverseBindPose.__end_ - self->_inverseBindPose.__begin_) >> 6)
  {
    return 1;
  }

  return 0;
}

- (unint64_t)estimateContainerSize
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  v5 = objc_opt_class();
  v6 = class_getInstanceSize(v5);
  name = self->_name;
  if (name)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (name)
  {
    v9 = [(NSString *)name lengthOfBytesUsingEncoding:4]+ 1;
  }

  else
  {
    v9 = 0;
  }

  if (self->_jointNames)
  {
    v10 = objc_opt_class();
    v11 = class_getInstanceSize(v10);
    jointNames = self->_jointNames;
  }

  else
  {
    jointNames = 0;
    v11 = 0;
  }

  v13 = [(NSArray *)jointNames count];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = self->_jointNames;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
  v16 = v8 + InstanceSize + v9 + v11 + 8 * v13;
  if (v15)
  {
    v17 = *v40;
    do
    {
      v18 = 0;
      do
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        if (v19)
        {
          v20 = v6;
        }

        else
        {
          v20 = 0;
        }

        if (v19)
        {
          v21 = [v19 lengthOfBytesUsingEncoding:4] + 1;
        }

        else
        {
          v21 = 0;
        }

        v16 += v20 + v21;
        ++v18;
      }

      while (v15 != v18);
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v15);
  }

  if (self->_parentIndices)
  {
    v22 = objc_opt_class();
    v23 = class_getInstanceSize(v22);
    parentIndices = self->_parentIndices;
  }

  else
  {
    parentIndices = 0;
    v23 = 0;
  }

  v25 = [(NSArray *)parentIndices count];
  v26 = objc_opt_class();
  v27 = class_getInstanceSize(v26);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_parentIndices;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
  v30 = v23 + v16 + 8 * v25;
  if (v29)
  {
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        if (*(*(&v35 + 1) + 8 * v32))
        {
          v33 = v27;
        }

        else
        {
          v33 = 0;
        }

        v30 += v33;
        ++v32;
      }

      while (v29 != v32);
      v29 = [(NSArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v29);
  }

  return (self->_localRestPoseRotations.__cap_ + *&self->_anon_8[16] + *&self->_anon_38[16] + self->_inverseBindPose.__cap_ + v30) - (self->_localRestPoseRotations.__begin_ + *self->_anon_8 + self->_inverseBindPose.__begin_ + *self->_anon_38);
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end