@interface REMeshModelDescriptor
- (BOOL)validateWithParts:(id)a3 payloadSize:(FixedInlineArray<unsigned)long error:(8UL> *)a4;
- (MeshModel)meshModelWithMeshModelContext:(SEL)a3 inverseBindPoseBuffers:(MeshModelContext *)a4 allocator:(const void *)a5;
- (REMeshModelDescriptor)initWithCoder:(id)a3;
- (REMeshModelDescriptor)initWithMeshAssetModel:(const void *)a3 inverseBindPoseAttributes:(id)a4 deformerBuilders:(void *)a5 payloadBuilder:(void *)a6 deformationModelData:(void *)a7;
- (REMeshModelDescriptor)initWithName:(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap:(SEL)a2 skeletonCount:(id)a3 skinningModel:(id)a4 blendShapeModel:(unsigned int)a5 lods:(id)a6 boundingBoxMin:(id)a7 boundingBoxMax:(id)a8;
- (REMeshModelDescriptor)initWithResourceDefinitionModel:(const void *)a3 inverseBindPoseAttributes:(id)a4 deformerBuilders:(void *)a5 payloadBuilder:(void *)a6 levels:(DynamicArray<re:(void *)a8 :MeshResourceDefinition::Level> *)a7 deformationModelData:;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMeshModelDescriptor

- (REMeshModelDescriptor)initWithMeshAssetModel:(const void *)a3 inverseBindPoseAttributes:(id)a4 deformerBuilders:(void *)a5 payloadBuilder:(void *)a6 deformationModelData:(void *)a7
{
  v63 = *MEMORY[0x1E69E9840];
  v46 = a4;
  v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = *(a3 + 26);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 80;
    v13 = MEMORY[0x1E69E9B18];
    while (1)
    {
      v14 = *(a3 + 26);
      if (v14 <= v11)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *buf = 136315906;
        v51 = "operator[]";
        v52 = 1024;
        v53 = 797;
        v54 = 2048;
        v55 = v11;
        v56 = 2048;
        v57 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v11 >= *(a3 + 21) || (v15 = *(a3 + 23), v16 = *(v15 + v10), v60 = 0u, v61 = 0u, v58 = 0u, v59 = 0u, v16 == -1))
      {
        v21 = v13[1];
        v58 = *v13;
        v59 = v21;
        v22 = v13[3];
        v60 = v13[2];
        v61 = v22;
      }

      else
      {
        v17 = (v15 + v10);
        v18 = v17[6];
        v19 = v17[7];
        v20 = v17[8];
        v58 = v17[5];
        v59 = v18;
        v60 = v19;
        v61 = v20;
      }

      v23 = *(a3 + 28);
      v24 = [[REMeshPartDescriptor alloc] initWithMeshAssetPart:v23 + v12 - 80 partTransform:&v58 payloadBuilder:a6];
      if (!v24)
      {
        break;
      }

      v25 = [*a6 count];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
      [v48 addObject:v26];

      [*a6 addObject:v24];
      ++v11;
      v10 += 144;
      v12 += 256;
      if (v9 == v11)
      {
        goto LABEL_10;
      }
    }

    v28 = *re::assetTypesLogObjects(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_10:
    if ([v46 count] && *(a3 + 21))
    {
      v45 = [[REMeshSkinningModelDescriptor alloc] initWithMeshSkinningData:a3 + 152 meshParts:*(a3 + 28) inverseBindPoseAttributes:*(a3 + 26) deformerBuilders:v46 payloadBuilder:a5, a6];
    }

    else
    {
      v45 = 0;
    }

    if (*(a3 + 16))
    {
      v27 = [[REMeshBlendShapeModelDescriptor alloc] initWithMeshBlendShapeData:a3 + 112 meshPartCount:*(a3 + 26) payloadBuilder:a6 deformationModelData:a7];
    }

    else
    {
      v27 = 0;
    }

    v30 = *(a3 + 36);
    if (!v30)
    {
LABEL_26:
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a3 + 1)];
      self = -[REMeshModelDescriptor initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:](self, "initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:", v40, v48, [v46 count], v45, v27, v49, *(a3 + 2), *(a3 + 4));

      v29 = self;
      goto LABEL_27;
    }

    v31 = *(a3 + 38);
    v32 = v31 + 48 * v30;
    while (1)
    {
      v33 = *(v31 + 24);
      v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v33];
      if (v33)
      {
        break;
      }

LABEL_25:
      v36 = [REMeshLevelOfDetailDescriptor alloc];
      LODWORD(v37) = *v31;
      LODWORD(v38) = *(v31 + 4);
      v39 = [(REMeshLevelOfDetailDescriptor *)v36 initWithPartIndicesOnModel:v34 minScreenArea:v37 maxViewDepth:v38];
      [v49 addObject:v39];

      v31 += 48;
      if (v31 == v32)
      {
        goto LABEL_26;
      }
    }

    v12 = 0;
    while (1)
    {
      v23 = *(v31 + 24);
      if (v23 <= v12)
      {
        break;
      }

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(v31 + 40) + 8 * v12)];
      [v34 addObject:v35];

      if (v33 == ++v12)
      {
        goto LABEL_25;
      }
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 797;
    v54 = 2048;
    v55 = v12;
    v56 = 2048;
    v57 = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v42 = *(v23 + v12);
  *buf = 136315138;
  v51 = v42;
  _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Failed to create REMeshPartDescriptor for part %s", buf, 0xCu);
LABEL_17:

  v29 = 0;
LABEL_27:

  return v29;
}

- (REMeshModelDescriptor)initWithResourceDefinitionModel:(const void *)a3 inverseBindPoseAttributes:(id)a4 deformerBuilders:(void *)a5 payloadBuilder:(void *)a6 levels:(DynamicArray<re:(void *)a8 :MeshResourceDefinition::Level> *)a7 deformationModelData:
{
  v39 = a4;
  v12 = *(a3 + 16);
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = a8;
  v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  if (v12)
  {
    v14 = 0;
    while (*(a3 + 16) > v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(*(a3 + 18) + 8 * v14)];
      [v41 addObject:v15];

      if (v12 == ++v14)
      {
        goto LABEL_5;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  v37 = a6;
  v40 = v13;
  if (*(a3 + 2))
  {
    v16 = 0;
    do
    {
      v17 = *(a3 + 4) + 40 * v16;
      v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v17 + 16)];
      v19 = *(v17 + 16);
      if (v19)
      {
        v20 = *(v17 + 32);
        v21 = 8 * v19;
        do
        {
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v20];
          [v18 addObject:v22];

          ++v20;
          v21 -= 8;
        }

        while (v21);
      }

      v23 = [REMeshLevelOfDetailDescriptor alloc];
      if (a7->var2 <= v16)
      {
        goto LABEL_23;
      }

      v26 = (a7->var4 + 8 * v16);
      LODWORD(v24) = *v26;
      LODWORD(v25) = v26[1];
      v27 = [(REMeshLevelOfDetailDescriptor *)v23 initWithPartIndicesOnModel:v18 minScreenArea:v24 maxViewDepth:v25];
      v13 = v40;
      [v40 addObject:v27];
    }

    while (++v16 < *(a3 + 2));
  }

  v28 = *(a3 + 21);
  v29 = 0;
  if ([v39 count] && v28)
  {
    v29 = [[REMeshSkinningModelDescriptor alloc] initWithSkinningData:a3 + 152 inverseBindPoseAttributes:v39 deformerBuilders:a5 payloadBuilder:v37];
  }

  if (*(a3 + 26))
  {
    v30 = -[REMeshBlendShapeModelDescriptor initWithBlendShapeData:meshPartCount:payloadBuilder:deformationModelData:]([REMeshBlendShapeModelDescriptor alloc], "initWithBlendShapeData:meshPartCount:payloadBuilder:deformationModelData:", a3 + 192, [v41 count], v37, v36);
  }

  else
  {
    v30 = 0;
  }

  if (*(a3 + 6))
  {
    v31 = *(a3 + 7);
  }

  else
  {
    v31 = a3 + 49;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31];
  v33 = -[REMeshModelDescriptor initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:](self, "initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:", v32, v41, [v39 count], v29, v30, v13, *(a3 + 10), *(a3 + 12));

  return v33;
}

- (MeshModel)meshModelWithMeshModelContext:(SEL)a3 inverseBindPoseBuffers:(MeshModelContext *)a4 allocator:(const void *)a5
{
  v123 = *MEMORY[0x1E69E9840];
  v7 = [(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap];
  v8 = [v7 count];

  v102 = 0uLL;
  v103 = 0;
  re::FixedArray<re::MeshPart>::init<>(&v102, a6, v8);
  v9 = self;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = &v116;
    do
    {
      v13 = [(REMeshModelDescriptor *)v9 modelPartIndexToResourcePartIndexMap];
      v14 = [v13 objectAtIndexedSubscript:v11];

      v15 = [a4->var0 objectAtIndexedSubscript:{objc_msgSend(v14, "unsignedIntegerValue")}];
      v16 = v15;
      if (v15)
      {
        [v15 meshPartWithPayloadBuffer:a4->var1 partIndexInModel:v11];
      }

      else
      {
        bzero(&v116, 0x220uLL);
      }

      v17 = *(&v102 + 1);
      if (*(&v102 + 1) <= v11)
      {
        goto LABEL_62;
      }

      v18 = re::MeshPart::operator=(v103 + v10, &v116);
      if (v116.var0[12].var1.var0.var0.var0[0])
      {
        if (v116.var0[12].var1.var0.var0.var0[0])
        {
        }
      }

      *&v116.var0[12].var1.var0.var0.var0[8] = &str_67;
      *v116.var0[12].var1.var0.var0.var0 = 0;
      re::FixedArray<re::StringID>::deinit(v116.var0[8].var1.var0.var0.var0);
      re::AttributeTable::~AttributeTable(&v116);

      ++v11;
      v10 += 544;
      v9 = self;
    }

    while (v8 != v11);
  }

  v19 = [(REMeshModelDescriptor *)v9 lods];
  v20 = [v19 count];

  v100 = 0uLL;
  v101 = 0;
  re::FixedArray<re::BindPoint>::init<>(&v100, a6, v20);
  v80 = v20;
  if (v20)
  {
    v11 = 0;
    v21 = 48;
    do
    {
      v12 = *(&v100 + 1);
      if (*(&v100 + 1) <= v11)
      {
        goto LABEL_63;
      }

      v12 = v101;
      v22 = [(REMeshModelDescriptor *)self lods];
      v23 = [v22 objectAtIndexedSubscript:v11];

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v24 = [v23 modelPartIndices];
      v25 = [v24 countByEnumeratingWithState:&v96 objects:v117 count:16];
      if (!v25)
      {
        goto LABEL_22;
      }

      v26 = *v97;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v97 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(&v100 + 1);
          if (*(&v100 + 1) <= v11)
          {
            *v118 = 0;
            memset(&v116, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v107[0]) = 136315906;
            *(v107 + 4) = "operator[]";
            WORD6(v107[0]) = 1024;
            *(v107 + 14) = 468;
            WORD1(v107[1]) = 2048;
            *(&v107[1] + 4) = v11;
            WORD6(v107[1]) = 2048;
            *(&v107[1] + 14) = v28;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v104 = 0;
            v108 = 0u;
            v109 = 0u;
            memset(v107, 0, sizeof(v107));
            v17 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v118 = 136315906;
            *&v118[4] = "operator[]";
            *&v118[12] = 1024;
            *&v118[14] = 468;
            v119 = 2048;
            v120 = v21;
            v121 = 2048;
            v122 = v28;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_62:
            *&v100 = 0;
            v108 = 0u;
            v109 = 0u;
            memset(v107, 0, sizeof(v107));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v118 = 136315906;
            *&v118[4] = "operator[]";
            *&v118[12] = 1024;
            *&v118[14] = 468;
            v119 = 2048;
            v120 = v11;
            v121 = 2048;
            v122 = v17;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_63:
            *v118 = 0;
            memset(&v116, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v107[0]) = 136315906;
            *(v107 + 4) = "operator[]";
            WORD6(v107[0]) = 1024;
            *(v107 + 14) = 468;
            WORD1(v107[1]) = 2048;
            *(&v107[1] + 4) = v11;
            WORD6(v107[1]) = 2048;
            *(&v107[1] + 14) = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v29 = v101;
          v116.var0[0].var0 = [*(*(&v96 + 1) + 8 * i) unsignedIntValue];
          re::DynamicArray<re::TransitionCondition *>::add(&v29[48 * v11 + 8], &v116);
        }

        v25 = [v24 countByEnumeratingWithState:&v96 objects:v117 count:16];
      }

      while (v25);
LABEL_22:

      [v23 maxViewDepth];
      v30 = &v12[48 * v11];
      *(v30 + 1) = v31;
      [v23 minScreenArea];
      *v30 = v32;

      ++v11;
    }

    while (v11 != v80);
  }

  for (j = 0; j != 720; j += 40)
  {
    v34 = (&v116 + j);
    v34->var0[0].var0 = 0;
    v34->var0[0].var1.var0.var1 = 0;
  }

  v35 = [(REMeshModelDescriptor *)self skinningModel];
  v36 = v35 == 0;

  if (!v36)
  {
    DWORD2(v107[2]) = 1;
    *&v109 = 0;
    v108 = 0uLL;
    DWORD2(v109) = 0;
    v110[1] = 0;
    v110[0] = 0;
    v111 = 1;
    v114 = 0;
    v112 = 0;
    v113 = 0;
    v115 = 0;
    *&v107[2] = 0;
    *&v107[0] = a6;
    *(&v107[1] + 1) = 0;
    *(v107 + 8) = *a5;
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::init(&v107[1] + 8, a6, 1uLL);
    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::init(v110, a6, 1uLL);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v37 = [(REMeshModelDescriptor *)self skinningModel];
    v38 = [v37 skinningParts];

    v39 = [v38 countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v39)
    {
      v40 = *v93;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v93 != v40)
          {
            objc_enumerationMutation(v38);
          }

          [*(*(&v92 + 1) + 8 * k) addToSkinningModelBuilder:v107 payloadBuffers:a4->var1];
        }

        v39 = [v38 countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v39);
    }

    *v118 = 0;
    re::SkinningModelBuilder::buildDeformationModel(v107, v118, &v116);

    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::~BucketArray(v110);
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::~BucketArray(&v107[1] + 8);
  }

  v42 = [(REMeshModelDescriptor *)self blendShapeModel];
  v43 = v42 == 0;

  if (!v43)
  {
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v44 = [(REMeshModelDescriptor *)self blendShapeModel];
    v45 = [v44 perMeshPartBlendShapeBufferIndex];
    re::FixedArray<int>::init<>(&v89, a6, [v45 count]);

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v46 = [(REMeshModelDescriptor *)self blendShapeModel];
    v12 = [v46 perMeshPartBlendShapeBufferIndex];

    v47 = [v12 countByEnumeratingWithState:&v85 objects:v105 count:16];
    if (v47)
    {
      v21 = 0;
      v11 = *v86;
      do
      {
        for (m = 0; m != v47; ++m)
        {
          if (*v86 != v11)
          {
            objc_enumerationMutation(v12);
          }

          v49 = [*(*(&v85 + 1) + 8 * m) unsignedIntValue];
          v28 = v90;
          if (v90 <= v21)
          {
            goto LABEL_61;
          }

          *(v91 + 4 * v21++) = v49;
        }

        v47 = [v12 countByEnumeratingWithState:&v85 objects:v105 count:16];
      }

      while (v47);
    }

    v50 = [(REMeshModelDescriptor *)self blendShapeModel];
    v51 = [v50 blendShapeIndexType] != 0;

    *v118 = 0;
    v52 = [(REMeshModelDescriptor *)self blendShapeModel];
    v53 = [v52 blendShapeBuffers];
    re::BlendShapeModelBuilder::BlendShapeModelBuilder(v107, a6, v118, [v53 count], v51, &v89, &v116);

    v54 = [(REMeshModelDescriptor *)self blendShapeModel];
    v55 = [v54 blendShapeBuffers];
    v56 = [v55 count];

    if (v56)
    {
      for (n = 0; n != v56; ++n)
      {
        v58 = [(REMeshModelDescriptor *)self blendShapeModel];
        v59 = [v58 blendShapeBuffers];
        v60 = [v59 objectAtIndexedSubscript:n];

        v61 = [(REMeshModelDescriptor *)self blendShapeModel];
        v62 = [v61 blendShapeGroupNames];
        v63 = [v62 objectAtIndexedSubscript:n];

        if (v63)
        {
          v64 = v63;
          v65 = [v63 UTF8String];
          *v118 = 0;
          *&v118[8] = &str_67;
        }

        else
        {
          re::StringID::invalid(v118);
        }

        v66 = [v60 addToBlendShapeModelBuilder:v107 blendShapeIndex:n blendShapeGroupName:v118 payloadBuffers:a4->var1];
        if (v118[0])
        {
          if (v118[0])
          {
          }
        }
      }
    }

    if (v89 && v90)
    {
      (*(*v89 + 40))();
    }
  }

  v67 = [(REMeshModelDescriptor *)self name];
  v68 = v67;
  v69 = [v67 UTF8String];
  *&retstr->var0.var0 = 0;
  retstr->var0.var1 = &str_67;
  [(REMeshModelDescriptor *)self boundingBoxMin];
  v82 = v70;
  [(REMeshModelDescriptor *)self boundingBoxMax];
  *&retstr->var2.var1 = v102;
  *&retstr->var1.var0.var0.var0.var0 = v82;
  *&retstr->var1.var1.var0.var1[1] = v71;
  v102 = 0uLL;
  *&retstr->var3.var0.var0.var0.var0.var0 = v103;
  v103 = 0;
  [(REMeshModelDescriptor *)self boundingBoxMin];
  v83 = v72;
  [(REMeshModelDescriptor *)self boundingBoxMax];
  v73 = 0;
  *&retstr->var3.var0.var1.var0.var1[1] = v83;
  *&retstr->var3.var1.var1 = v74;
  *&retstr->var4.var0[0].var0 = v100;
  v100 = 0uLL;
  *&retstr->var4.var0[0].var1.var0.var0.var0[8] = v101;
  v101 = 0;
  do
  {
    var0 = v116.var0[v73].var0;
    v116.var0[v73].var0 = 0;
    retstr->var4.var0[v73].var1.var0.var1 = var0;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100](&retstr->var4.var0[v73 + 1], &v116.var0[v73].var1);
    ++v73;
  }

  while (v73 != 18);

  for (ii = 680; ii != -40; ii -= 40)
  {
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100]((&v116 + ii));
  }

  re::FixedArray<re::MeshLodLevelInfo>::deinit(&v100);
  return re::FixedArray<re::MeshPart>::deinit(&v102);
}

- (REMeshModelDescriptor)initWithName:(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap:(SEL)a2 skeletonCount:(id)a3 skinningModel:(id)a4 blendShapeModel:(unsigned int)a5 lods:(id)a6 boundingBoxMin:(id)a7 boundingBoxMax:(id)a8
{
  v29 = v8;
  v30 = v9;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v31.receiver = self;
  v31.super_class = REMeshModelDescriptor;
  v21 = [(REMeshModelDescriptor *)&v31 init];
  if (v21)
  {
    v22 = [v16 copy];
    name = v21->_name;
    v21->_name = v22;

    v24 = [v17 copy];
    modelPartIndexToResourcePartIndexMap = v21->_modelPartIndexToResourcePartIndexMap;
    v21->_modelPartIndexToResourcePartIndexMap = v24;

    v21->_skeletonCount = a5;
    objc_storeStrong(&v21->_skinningModel, a6);
    objc_storeStrong(&v21->_blendShapeModel, a7);
    v26 = [v20 copy];
    lods = v21->_lods;
    v21->_lods = v26;

    *v21->_boundingBoxMin = v29;
    *v21->_boundingBoxMax = v30;
  }

  return v21;
}

- (REMeshModelDescriptor)initWithCoder:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = self->_name;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"partIndices"];
  modelPartIndexToResourcePartIndexMap = self->_modelPartIndexToResourcePartIndexMap;
  self->_modelPartIndexToResourcePartIndexMap = v11;

  v13 = [v4 decodeIntegerForKey:@"skeletonCount"];
  v14 = HIDWORD(v13) != 0;
  self->_skeletonCount = v13;
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"skinningModel"];
  skinningModel = self->_skinningModel;
  self->_skinningModel = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blendShapeModel"];
  blendShapeModel = self->_blendShapeModel;
  self->_blendShapeModel = v17;

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [v4 decodeObjectOfClasses:v21 forKey:@"lods"];
  lods = self->_lods;
  self->_lods = v22;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = self->_modelPartIndexToResourcePartIndexMap;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v25)
  {
    v26 = *v40;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v14 |= [*(*(&v39 + 1) + 8 * i) unsignedIntegerValue] >> 32 != 0;
      }

      v25 = [(NSArray *)v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v25);
  }

  *self->_boundingBoxMin = 0;
  *&self->_boundingBoxMin[8] = 0;
  [v4 decodeFloatForKey:@"boundingBoxMin.x"];
  *self->_boundingBoxMin = v28;
  [v4 decodeFloatForKey:@"boundingBoxMin.y"];
  *&self->_boundingBoxMin[4] = v29;
  [v4 decodeFloatForKey:@"boundingBoxMin.z"];
  *self->_boundingBoxMax = 0;
  *&self->_boundingBoxMin[8] = v30;
  *&self->_boundingBoxMax[8] = 0;
  [v4 decodeFloatForKey:@"boundingBoxMax.x"];
  *self->_boundingBoxMax = v31;
  [v4 decodeFloatForKey:@"boundingBoxMax.y"];
  *&self->_boundingBoxMax[4] = v32;
  [v4 decodeFloatForKey:@"boundingBoxMax.z"];
  *&self->_boundingBoxMax[8] = v34;
  if (v14)
    v35 = {;
    [v4 failWithError:v35];

LABEL_13:
    v36 = 0;
    goto LABEL_14;
  }

  if (!v7)
    v37 = {;
    [v4 failWithError:v37];

    goto LABEL_13;
  }

  v36 = self;
LABEL_14:

  return v36;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeObject:self->_name forKey:@"name"];
  [v10 encodeObject:self->_modelPartIndexToResourcePartIndexMap forKey:@"partIndices"];
  [v10 encodeInt:self->_skeletonCount forKey:@"skeletonCount"];
  [v10 encodeObject:self->_skinningModel forKey:@"skinningModel"];
  [v10 encodeObject:self->_blendShapeModel forKey:@"blendShapeModel"];
  [v10 encodeObject:self->_lods forKey:@"lods"];
  LODWORD(v4) = *self->_boundingBoxMin;
  [v10 encodeFloat:@"boundingBoxMin.x" forKey:v4];
  LODWORD(v5) = *&self->_boundingBoxMin[4];
  [v10 encodeFloat:@"boundingBoxMin.y" forKey:v5];
  LODWORD(v6) = *&self->_boundingBoxMin[8];
  [v10 encodeFloat:@"boundingBoxMin.z" forKey:v6];
  LODWORD(v7) = *self->_boundingBoxMax;
  [v10 encodeFloat:@"boundingBoxMax.x" forKey:v7];
  LODWORD(v8) = *&self->_boundingBoxMax[4];
  [v10 encodeFloat:@"boundingBoxMax.y" forKey:v8];
  LODWORD(v9) = *&self->_boundingBoxMax[8];
  [v10 encodeFloat:@"boundingBoxMax.z" forKey:v9];
}

- (BOOL)validateWithParts:(id)a3 payloadSize:(FixedInlineArray<unsigned)long error:(8UL> *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(_anonymous_namespace_ *)v8 count];
  v10 = [(NSArray *)self->_modelPartIndexToResourcePartIndexMap count];
  v39 = 1;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(&v37, 0);
  v39 += 2;
  if ((v9 & 0x3F) != 0)
  {
    v11 = (v9 >> 6) + 1;
  }

  else
  {
    v11 = v9 >> 6;
  }

  v42 = v9;
  *&v53[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v37, v11, v53);
  v31 = a4;
  v32 = v8;
  if (v10)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = [(NSArray *)self->_modelPartIndexToResourcePartIndexMap objectAtIndexedSubscript:v12];
      v15 = [(NSArray *)v14 unsignedIntegerValue];
      if (HIDWORD(v15))
      {
        break;
      }

      if (v15 >= v9)
      {
        v29 = @"REMeshModelDescriptor: mesh part index out of range";
        goto LABEL_32;
      }

      v16 = v15 >> 6;
      v17 = v38;
      if (v38 <= v15 >> 6)
      {
        v43 = 0;
        memset(v53, 0, sizeof(v53));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45 = 136315906;
        v46 = "operator[]";
        v47 = 1024;
        v48 = 866;
        v49 = 2048;
        v50 = v16;
        v51 = 2048;
        v52 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v39)
      {
        v19 = *(&v40 + v16);
        v20 = 1 << v15;
        if ((v19 & (1 << v15)) != 0)
        {
LABEL_33:
          goto LABEL_34;
        }

        v18 = &v40;
      }

      else
      {
        v18 = v41;
        v19 = v41[v16];
        v20 = 1 << v15;
        if ((v19 & (1 << v15)) != 0)
        {
          goto LABEL_33;
        }
      }

      v18[v16] = v20 | v19;

      v12 = v13;
      if (v10 <= v13++)
      {
        goto LABEL_15;
      }
    }

    v29 = @"REMeshModelDescriptor: mesh part index overflow";
LABEL_32:
    goto LABEL_34;
  }

LABEL_15:
  skinningModel = self->_skinningModel;
  v23 = v32;
  if (skinningModel && ![(REMeshSkinningModelDescriptor *)skinningModel validateWithPayloadSize:v31 partsOnResource:v32 modelPartIndexToResourcePartIndex:self->_modelPartIndexToResourcePartIndexMap skeletonCount:self->_skeletonCount error:a5]|| (blendShapeModel = self->_blendShapeModel) != 0 && ![(REMeshBlendShapeModelDescriptor *)blendShapeModel validateWithPayloadSize:v31 partCountOnModel:v10 error:a5])
  {
    v28 = 0;
  }

  else if ([(NSArray *)self->_lods count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = self->_lods;
    v25 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v25)
    {
      v26 = *v34;
LABEL_22:
      v27 = 0;
      while (1)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v14);
        }

        if (([*(*(&v33 + 1) + 8 * v27) validateWithModelPartCount:-[_anonymous_namespace_ count](v32 error:{"count"), a5}] & 1) == 0)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v44 count:16];
          v28 = 1;
          if (v25)
          {
            goto LABEL_22;
          }

          goto LABEL_35;
        }
      }

LABEL_34:
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

LABEL_35:

    v23 = v32;
  }

  else
  {
    v28 = 1;
  }

  if (v37 && (v39 & 1) == 0)
  {
    (*(*v37 + 40))();
  }

  return v28;
}

- (unint64_t)estimateContainerSize
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  if (self->_name && (v5 = objc_opt_class(), v6 = class_getInstanceSize(v5), name = self->_name, InstanceSize += v6, name))
  {
    v8 = [(NSString *)name lengthOfBytesUsingEncoding:4]+ 1;
  }

  else
  {
    v8 = 0;
  }

  if (self->_modelPartIndexToResourcePartIndexMap)
  {
    v9 = objc_opt_class();
    v10 = class_getInstanceSize(v9);
    modelPartIndexToResourcePartIndexMap = self->_modelPartIndexToResourcePartIndexMap;
  }

  else
  {
    modelPartIndexToResourcePartIndexMap = 0;
    v10 = 0;
  }

  v12 = [(NSArray *)modelPartIndexToResourcePartIndexMap count];
  v13 = objc_opt_class();
  v14 = class_getInstanceSize(v13);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = self->_modelPartIndexToResourcePartIndexMap;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
  v17 = v8 + InstanceSize + v10 + 8 * v12;
  if (v16)
  {
    v18 = *v38;
    do
    {
      v19 = 0;
      do
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (*(*(&v37 + 1) + 8 * v19))
        {
          v20 = v14;
        }

        else
        {
          v20 = 0;
        }

        v17 += v20;
        ++v19;
      }

      while (v16 != v19);
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v16);
  }

  v21 = [(REMeshSkinningModelDescriptor *)self->_skinningModel estimateContainerSize];
  v22 = [(REMeshBlendShapeModelDescriptor *)self->_blendShapeModel estimateContainerSize];
  if (self->_lods)
  {
    v23 = objc_opt_class();
    v24 = class_getInstanceSize(v23);
    lods = self->_lods;
  }

  else
  {
    lods = 0;
    v24 = 0;
  }

  v26 = [(NSArray *)lods count];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = self->_lods;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v33 objects:v41 count:16];
  v29 = v21 + v17 + v22 + v24 + 8 * v26;
  if (v28)
  {
    v30 = *v34;
    do
    {
      v31 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v29 += [*(*(&v33 + 1) + 8 * v31++) estimateContainerSize];
      }

      while (v28 != v31);
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v28);
  }

  return v29;
}

@end