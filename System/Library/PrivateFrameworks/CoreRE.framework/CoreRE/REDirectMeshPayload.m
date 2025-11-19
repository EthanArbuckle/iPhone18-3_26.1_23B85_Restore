@interface REDirectMeshPayload
- (AABB)aabb;
- (FixedInlineArray<unsigned)payloadBufferSizes;
- (MeshCollection)makeMeshCollection:(SEL)a3;
- (MeshPayloadBuffers)meshPayloadBuffersWithDevice:(SEL)a3;
- (NSArray)instances;
- (NSArray)models;
- (NSArray)parts;
- (REDirectMeshPayload)initWithCoder:(id)a3;
- (REDirectMeshPayload)initWithDirectMesh:(id)a3;
- (unint64_t)totalPayloadSize;
- (void)encodeWithCoder:(id)a3;
- (void)makeBoundingBoxes:(void *)a3 perPartPerInstanceBoundingBoxes:(void *)a4;
@end

@implementation REDirectMeshPayload

- (AABB)aabb
{
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *&retstr->var0.var0.var0.var0 = vnegq_f32(v4);
  *&retstr->var1.var0.var1[1] = v4;
  v5 = [(REDirectMeshPayload *)self directMesh];
  if (v5)
  {
    PartCount = DRMeshGetPartCount();
    v21.i32[2] = 0;
    v21.i64[0] = 0;
    v20.i32[2] = 0;
    v20.i64[0] = 0;
    if (PartCount)
    {
      v7 = 0;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v9.i64[0] = 0x7F0000007FLL;
      v9.i64[1] = 0x7F0000007FLL;
      v18 = vnegq_f32(v8);
      v19 = v9;
      do
      {
        if (DRMeshGetPartAt())
        {
          v11 = v20;
          v10 = v21;
          v12 = v18;
          v12.i32[3] = 0;
          v10.i32[3] = 0;
          v13 = vminnmq_f32(v12, v10);
          v14 = v19;
          v14.i32[3] = 0;
          v11.i32[3] = 0;
          v18 = v13;
          v19 = vmaxnmq_f32(v14, v11);
        }

        ++v7;
      }

      while (PartCount != v7);
    }

    else
    {
      v15.i64[0] = 0x7F0000007FLL;
      v15.i64[1] = 0x7F0000007FLL;
      v16.i64[0] = 0x7F0000007FLL;
      v16.i64[1] = 0x7F0000007FLL;
      v18 = vnegq_f32(v15);
      v19 = v16;
    }

    *&retstr->var0.var0.var0.var0 = v18;
    *&retstr->var1.var0.var1[1] = v19;
  }

  return result;
}

- (MeshCollection)makeMeshCollection:(SEL)a3
{
  v111 = *MEMORY[0x1E69E9840];
  v4 = [(REDirectMeshPayload *)self directMesh];
  v42 = DRMeshCopyDescriptor();
  v57 = 0uLL;
  v58 = 0;
  PartCount = DRMeshGetPartCount();
  v43 = v4;
  v6 = DRMeshCopyDescriptor();
  v56 = 0;
  v53[1] = 0;
  v54 = 0;
  v53[0] = 0;
  v55 = 0;
  VertexAttributeCount = DRMeshDescriptorGetVertexAttributeCount();
  if (VertexAttributeCount != -1)
  {
    VertexAttributeCount = re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v53, VertexAttributeCount + 1);
  }

  IndexType = DRMeshDescriptorGetIndexType();
  if (IndexType == 1)
  {
    v9 = 36;
  }

  else
  {
    v9 = 0;
  }

  if (!IndexType)
  {
    v9 = 49;
  }

  v62.i8[0] = v9;
  v62.i8[1] = 1;
  re::MeshPayloadBuffers::slice(a4, 4, 0, 0);
  v65.i32[0] = 0;
  v10 = DRMeshDescriptorGetIndexType();
  v11 = 4 * (v10 == 1);
  if (!v10)
  {
    v11 = 2;
  }

  v65.i32[1] = v11;
  re::DynamicArray<re::NamedVertexBuffer>::add(v53, &v60);
  if (v64 != -1)
  {
    (off_1F5CC8DB0[v64])(&v106, &v62.u32[2]);
  }

  LODWORD(v64) = -1;
  if (v60 && (BYTE8(v60) & 1) != 0)
  {
    (*(*v60 + 40))();
  }

  v12 = DRMeshDescriptorGetVertexAttributeCount();
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      LODWORD(v52) = 0;
      v106.i64[0] = 0;
      *__str = 0;
      *v105 = 0;
      *v48 = 0;
      v47[0] = 0;
      v59 = 0;
      if (DRMeshDescriptorGetVertexAttributeFormat())
      {
        VertexLayout = DRMeshDescriptorGetVertexLayout();
        if (VertexLayout)
        {
          if (v52 <= 0xC)
          {
            v15 = *(*(&off_1E871B370 + v52) + 1);
            v62.i8[0] = v106.i8[0];
            v62.i8[1] = 1;
            re::MeshPayloadBuffers::slice(a4, v48[0], v47[0], 0);
            v65.i64[0] = __PAIR64__(v59, *v105);
            re::DynamicArray<re::NamedVertexBuffer>::add(v53, &v60);
            if (v64 != -1)
            {
              (off_1F5CC8DB0[v64])(&v51, &v62.u32[2]);
            }

            LODWORD(v64) = -1;
            if (v60 && (BYTE8(v60) & 1) != 0)
            {
              (*(*v60 + 40))();
            }
          }
        }
      }
    }
  }

  v16 = v43;
  if (v54)
  {
    v17 = v56 + 40;
    v18 = 88 * v54;
    while (1)
    {
      v19 = (*(v17 - 32) & 1) != 0 ? *(v17 - 24) : (v17 - 31);
      if (!strcmp(v19, "indexTriangles"))
      {
        break;
      }

      v17 += 88;
      v18 -= 88;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v20 = DRMeshGetPartCount();
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      v23.i64[0] = 0x7F0000007FLL;
      v23.i64[1] = 0x7F0000007FLL;
      v41 = vnegq_f32(v23);
      do
      {
        v51 = 0;
        v52 = 0;
        v49 = 0;
        v50 = 0;
        v48[2] = 0;
        *v48 = 0;
        LODWORD(v47[1]) = 0;
        v47[0] = 0;
        if (DRMeshGetPartAt())
        {
          v25 = v51;
          v24 = v52;
          v26 = DRMeshDescriptorGetIndexType();
          v27 = 4 * (v26 == 1);
          if (!v26)
          {
            v27 = 2;
          }

          re::MeshPayloadBuffers::slice(a4, 4, v24, v27 * v25);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v17, &v60);
          *(v17 + 32) = v62.i64[0];
          v16 = v43;
          if (v61.i32[2] != -1)
          {
            (off_1F5CC8DB0[v61.u32[2]])(&v106, &v60);
          }

          v28 = snprintf(__str, 0x40uLL, "Part%zu", v22);
          v45 = 0;
          v46 = &str_67;
          v29 = strlen(__str);
          *v105 = *v48;
          *&v105[16] = *v47;
          v106 = xmmword_1E3047670;
          v107 = xmmword_1E3047680;
          v108 = xmmword_1E30476A0;
          v109 = xmmword_1E30474D0;
          WORD2(v59) = 0;
          LODWORD(v59) = 0;
          v30 = re::MeshPart::MeshPart(&v60, &v45, v50, v56, v54, v51, v51, 1, v105, v22, &v106, &v59, -1, 0);
          if (v45)
          {
            if (v45)
            {
            }
          }

          v45 = 0;
          v46 = &str_67;
          v96 = v49;
          v31 = *(&v57 + 1);
          if (*(&v57 + 1) <= v22)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v80 = 0;
          v79 = 0u;
          v76 = 0u;
          v74 = 0u;
          v72 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          DWORD2(v72) = 1;
          *&v74 = 0;
          v73 = 0uLL;
          DWORD2(v74) = 0;
          *&v76 = 0;
          v75 = 0uLL;
          DWORD2(v76) = 0;
          v77 = 0u;
          v78 = 0u;
          LODWORD(v79) = 0;
          memset(v81, 0, sizeof(v81));
          v82 = xmmword_1E3047670;
          v83 = xmmword_1E3047680;
          v84 = xmmword_1E30476A0;
          v85 = xmmword_1E30474D0;
          *&v32 = 0x7F0000007FLL;
          *(&v32 + 1) = 0x7F0000007FLL;
          v86 = v41;
          v87 = v32;
          v89 = 0;
          v88 = 0;
          v90 = 0;
          v93 = 0;
          v94 = &str_67;
          v95 = 0;
          v96 = 3;
          v97 = 0x180197E00000001;
          v91 = -1;
          v92[0] = -1;
          *(v92 + 5) = -1;
          v31 = *(&v57 + 1);
          if (*(&v57 + 1) <= v22)
          {
            *v105 = 0;
            v109 = 0uLL;
            v110 = 0uLL;
            v107 = 0uLL;
            v108 = 0uLL;
            v106 = 0uLL;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *__str = 136315906;
            *&__str[4] = "operator[]";
            v99 = 1024;
            v100 = 468;
            v101 = 2048;
            v102 = v22;
            v103 = 2048;
            v104 = v31;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_56:
            v59 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v106 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v105 = 136315906;
            *&v105[4] = "operator[]";
            *&v105[12] = 1024;
            *&v105[14] = 468;
            *&v105[18] = 2048;
            *&v105[20] = v22;
            *&v105[28] = 2048;
            *&v105[30] = v31;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }
        }

        v33 = re::MeshPart::operator=(v58 + v21, &v60);
        if (v93)
        {
          if (v93)
          {
          }
        }

        v94 = &str_67;
        v93 = 0;
        re::FixedArray<re::StringID>::deinit(v81);
        re::AttributeTable::~AttributeTable(&v60);
        ++v22;
        v21 += 544;
      }

      while (v20 != v22);
    }

    v34 = 0;
    v35.i64[0] = 0x7F0000007FLL;
    v35.i64[1] = 0x7F0000007FLL;
    v61 = vnegq_f32(v35);
    v62 = v35;
    *&v64 = 0;
    v63 = 0uLL;
    v65 = v61;
    v66 = v35;
    *&v68 = 0;
    v67 = 0uLL;
    do
    {
      v36 = &v60 + v34;
      *(v36 + 18) = 0;
      *(v36 + 22) = 0;
      v34 += 40;
    }

    while (v34 != 720);
    *&v60 = 149034514;
    *(&v60 + 1) = "Model";
    v37 = [(REDirectMeshPayload *)self aabb];
    v61 = v106;
    v62 = v107;
    v63 = v57;
    v57 = 0uLL;
    *&v64 = v58;
    v58 = 0;
    retstr->var0.var4 = 0;
    retstr->var0.var1 = 0;
    retstr->var0.var2 = 0;
    retstr->var0.var3 = 0;
    re::DynamicArray<re::MeshModel>::setCapacity(retstr, 1uLL);
    ++retstr->var0.var3;
    re::DynamicArray<re::MeshModel>::add(retstr, &v60);
    re::MeshModel::~MeshModel(&v60);
  }

  else
  {
LABEL_33:
    retstr->var0.var4 = 0;
    retstr->var0.var1 = 0;
    retstr->var0.var2 = 0;
    retstr->var0.var0 = 0;
    retstr->var0.var3 = 0;
  }

  re::DynamicArray<re::NamedVertexBuffer>::deinit(v53);
  re::FixedArray<re::MeshPart>::deinit(&v57);

  return result;
}

- (void)makeBoundingBoxes:(void *)a3 perPartPerInstanceBoundingBoxes:(void *)a4
{
  [(REDirectMeshPayload *)self aabb];
  if (!*(a3 + 1))
  {
    goto LABEL_8;
  }

  v7 = *(a3 + 2);
  *v7 = v14;
  v7[1] = v15;
  v8 = [(REDirectMeshPayload *)self directMesh];
  PartCount = DRMeshGetPartCount();

  if (PartCount)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      [(REDirectMeshPayload *)self aabb];
      if (*(a4 + 1) <= v12)
      {
        break;
      }

      v13 = (*(a4 + 2) + v11);
      *v13 = v14;
      v13[1] = v15;
      ++v12;
      v11 += 32;
      if (PartCount == v12)
      {
        return;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

- (REDirectMeshPayload)initWithDirectMesh:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REDirectMeshPayload;
  v5 = [(RESharedResourcePayload *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(REDirectMeshPayload *)v5 setDirectMesh:v4];
    v7 = DRMeshAsResource();
    DRResourceGetIdentifier();
  }

  return v6;
}

- (REDirectMeshPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = REDirectMeshPayload;
  v5 = [(RESharedResourcePayload *)&v14 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
    v11 = {;
    [v4 failWithError:v11];

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v9 = v7;
  if (!v7)
    v12 = {;
    [v4 failWithError:v12];

    goto LABEL_8;
  }

  [v7 getUUIDBytes:v5->_identifier];

LABEL_5:
  v10 = v5;
LABEL_9:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_identifier];
    [v4 encodeObject:v6 forKey:@"identifier"];
  }

  else
  {
    v7 = *re::assetTypesLogObjects(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "REDirectMeshPayload requires an NSXPCCoder", v8, 2u);
    }
  }
}

- (FixedInlineArray<unsigned)payloadBufferSizes
{
  v4 = DRMeshCopyDescriptor();
  DRMeshDescriptorCalculateBufferSizes();

  retstr->var0[6] = 0;
  retstr->var0[7] = 0;
  retstr->var0[4] = 0;
  retstr->var0[5] = 0;
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  return result;
}

- (unint64_t)totalPayloadSize
{
  v2 = DRMeshCopyDescriptor();
  DRMeshDescriptorCalculateBufferSizes();

  v3.i64[0] = 0;
  return vaddvq_s64(vaddq_s64(0, vaddq_s64(0, v3)));
}

- (MeshPayloadBuffers)meshPayloadBuffersWithDevice:(SEL)a3
{
  v6 = a4;
  directMesh = self->_directMesh;
  if (directMesh)
  {
    if (v6)
    {
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v8 = DRMeshReadIndicesUsing();
      *buf = v8;
      v9 = v8;
      NS::SharedPtr<MTL::Texture>::operator=(&v24, buf);
      if (*buf)
      {

        *buf = 0;
      }

      v10 = 0;
      v11 = &v22;
      do
      {
        v12 = DRMeshReadVerticesUsing();
        *buf = v12;
        v13 = v12;
        NS::SharedPtr<MTL::Texture>::operator=(v11, buf);
        if (*buf)
        {

          *buf = 0;
        }

        ++v10;
        ++v11;
      }

      while (v10 != 4);
      for (i = 0; i != 64; i += 8)
      {
        *(&retstr->var0.var0.var0.var2.var1.var0.var0[0].var0 + i) = *(&v22 + i);
      }

      retstr->var0.var0.var1 = 0;
      for (j = 56; j != -8; j -= 8)
      {
        v16 = *(&v22 + j);
        if (v16)
        {

          *(&v22 + j) = 0;
        }
      }
    }

    else
    {
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v17 = *re::foundationCoreLogObjects(directMesh);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "REDirectMeshPayload.meshPayloadBuffersWithDevice has no CPU implementation.", buf, 2u);
      }

      for (k = 0; k != 24; k += 3)
      {
        *(&retstr->var0.var0.var0.var0 + k * 8) = *(&v22 + k * 8);
        retstr->var0.var0.var0.var1.var0.var0[k + 2].var0 = *(&v22 + k * 8 + 16);
      }

      retstr->var0.var0.var1 = 1;
      for (m = 184; m != -8; m -= 24)
      {
        v20 = *(&v22 + m);
        if (v20)
        {

          *(&v22 + m) = 0;
        }
      }
    }
  }

  else
  {
    *&retstr->var0.var0.var1 = 0;
    *(&retstr->var0.var0.var0.var2.var2 + 10) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 11) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 8) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 9) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 6) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 7) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 4) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 5) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 2) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 3) = 0u;
    *&retstr->var0.var0.var0.var0 = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 1) = 0u;
  }

  return result;
}

- (NSArray)parts
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "[REDirectMeshPayload parts]", 203);
  result = _os_crash();
  __break(1u);
  return result;
}

- (NSArray)models
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "[REDirectMeshPayload models]", 209);
  result = _os_crash();
  __break(1u);
  return result;
}

- (NSArray)instances
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_directMesh)
  {
    v2 = [REMeshInstanceDescriptor alloc];
    v3 = [(REMeshInstanceDescriptor *)v2 initWithName:@"Model" modelIndex:0 transform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

@end