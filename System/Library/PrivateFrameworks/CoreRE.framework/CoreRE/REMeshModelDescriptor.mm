@interface REMeshModelDescriptor
- (BOOL)validateWithParts:(id)parts payloadSize:(FixedInlineArray<unsigned)long error:(8UL> *)error;
- (MeshModel)meshModelWithMeshModelContext:(SEL)context inverseBindPoseBuffers:(MeshModelContext *)buffers allocator:(const void *)allocator;
- (REMeshModelDescriptor)initWithCoder:(id)coder;
- (REMeshModelDescriptor)initWithMeshAssetModel:(const void *)model inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder deformationModelData:(void *)data;
- (REMeshModelDescriptor)initWithName:(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap:(SEL)map skeletonCount:(id)count skinningModel:(id)model blendShapeModel:(unsigned int)shapeModel lods:(id)lods boundingBoxMin:(id)min boundingBoxMax:(id)max;
- (REMeshModelDescriptor)initWithResourceDefinitionModel:(const void *)model inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder levels:(DynamicArray<re:(void *)levels :MeshResourceDefinition::Level> *)a7 deformationModelData:;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMeshModelDescriptor

- (REMeshModelDescriptor)initWithMeshAssetModel:(const void *)model inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder deformationModelData:(void *)data
{
  v63 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = *(model + 26);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 80;
    v13 = MEMORY[0x1E69E9B18];
    while (1)
    {
      v14 = *(model + 26);
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

      if (v11 >= *(model + 21) || (v15 = *(model + 23), v16 = *(v15 + v10), v60 = 0u, v61 = 0u, v58 = 0u, v59 = 0u, v16 == -1))
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

      v23 = *(model + 28);
      v24 = [[REMeshPartDescriptor alloc] initWithMeshAssetPart:v23 + v12 - 80 partTransform:&v58 payloadBuilder:builder];
      if (!v24)
      {
        break;
      }

      v25 = [*builder count];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
      [v48 addObject:v26];

      [*builder addObject:v24];
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
    if ([attributesCopy count] && *(model + 21))
    {
      builder = [[REMeshSkinningModelDescriptor alloc] initWithMeshSkinningData:model + 152 meshParts:*(model + 28) inverseBindPoseAttributes:*(model + 26) deformerBuilders:attributesCopy payloadBuilder:builders, builder];
    }

    else
    {
      builder = 0;
    }

    if (*(model + 16))
    {
      v27 = [[REMeshBlendShapeModelDescriptor alloc] initWithMeshBlendShapeData:model + 112 meshPartCount:*(model + 26) payloadBuilder:builder deformationModelData:data];
    }

    else
    {
      v27 = 0;
    }

    v30 = *(model + 36);
    if (!v30)
    {
LABEL_26:
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(model + 1)];
      self = -[REMeshModelDescriptor initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:](self, "initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:", v40, v48, [attributesCopy count], builder, v27, v49, *(model + 2), *(model + 4));

      selfCopy = self;
      goto LABEL_27;
    }

    v31 = *(model + 38);
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

  selfCopy = 0;
LABEL_27:

  return selfCopy;
}

- (REMeshModelDescriptor)initWithResourceDefinitionModel:(const void *)model inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder levels:(DynamicArray<re:(void *)levels :MeshResourceDefinition::Level> *)a7 deformationModelData:
{
  attributesCopy = attributes;
  v12 = *(model + 16);
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  levelsCopy = levels;
  v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  if (v12)
  {
    v14 = 0;
    while (*(model + 16) > v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(*(model + 18) + 8 * v14)];
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
  builderCopy = builder;
  v40 = v13;
  if (*(model + 2))
  {
    v16 = 0;
    do
    {
      v17 = *(model + 4) + 40 * v16;
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

    while (++v16 < *(model + 2));
  }

  v28 = *(model + 21);
  v29 = 0;
  if ([attributesCopy count] && v28)
  {
    v29 = [[REMeshSkinningModelDescriptor alloc] initWithSkinningData:model + 152 inverseBindPoseAttributes:attributesCopy deformerBuilders:builders payloadBuilder:builderCopy];
  }

  if (*(model + 26))
  {
    v30 = -[REMeshBlendShapeModelDescriptor initWithBlendShapeData:meshPartCount:payloadBuilder:deformationModelData:]([REMeshBlendShapeModelDescriptor alloc], "initWithBlendShapeData:meshPartCount:payloadBuilder:deformationModelData:", model + 192, [v41 count], builderCopy, levelsCopy);
  }

  else
  {
    v30 = 0;
  }

  if (*(model + 6))
  {
    v31 = *(model + 7);
  }

  else
  {
    v31 = model + 49;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31];
  v33 = -[REMeshModelDescriptor initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:](self, "initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:", v32, v41, [attributesCopy count], v29, v30, v13, *(model + 10), *(model + 12));

  return v33;
}

- (MeshModel)meshModelWithMeshModelContext:(SEL)context inverseBindPoseBuffers:(MeshModelContext *)buffers allocator:(const void *)allocator
{
  v123 = *MEMORY[0x1E69E9840];
  modelPartIndexToResourcePartIndexMap = [(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap];
  v8 = [modelPartIndexToResourcePartIndexMap count];

  v102 = 0uLL;
  v103 = 0;
  re::FixedArray<re::MeshPart>::init<>(&v102, a6, v8);
  selfCopy2 = self;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    perMeshPartBlendShapeBufferIndex2 = &v116;
    do
    {
      modelPartIndexToResourcePartIndexMap2 = [(REMeshModelDescriptor *)selfCopy2 modelPartIndexToResourcePartIndexMap];
      v14 = [modelPartIndexToResourcePartIndexMap2 objectAtIndexedSubscript:v11];

      v15 = [buffers->var0 objectAtIndexedSubscript:{objc_msgSend(v14, "unsignedIntegerValue")}];
      v16 = v15;
      if (v15)
      {
        [v15 meshPartWithPayloadBuffer:buffers->var1 partIndexInModel:v11];
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
      selfCopy2 = self;
    }

    while (v8 != v11);
  }

  lods = [(REMeshModelDescriptor *)selfCopy2 lods];
  v20 = [lods count];

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
      perMeshPartBlendShapeBufferIndex2 = *(&v100 + 1);
      if (*(&v100 + 1) <= v11)
      {
        goto LABEL_63;
      }

      perMeshPartBlendShapeBufferIndex2 = v101;
      lods2 = [(REMeshModelDescriptor *)self lods];
      v23 = [lods2 objectAtIndexedSubscript:v11];

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      modelPartIndices = [v23 modelPartIndices];
      v25 = [modelPartIndices countByEnumeratingWithState:&v96 objects:v117 count:16];
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
            objc_enumerationMutation(modelPartIndices);
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
            *(&v107[1] + 14) = perMeshPartBlendShapeBufferIndex2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v29 = v101;
          v116.var0[0].var0 = [*(*(&v96 + 1) + 8 * i) unsignedIntValue];
          re::DynamicArray<re::TransitionCondition *>::add(&v29[48 * v11 + 8], &v116);
        }

        v25 = [modelPartIndices countByEnumeratingWithState:&v96 objects:v117 count:16];
      }

      while (v25);
LABEL_22:

      [v23 maxViewDepth];
      v30 = &perMeshPartBlendShapeBufferIndex2[48 * v11];
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

  skinningModel = [(REMeshModelDescriptor *)self skinningModel];
  v36 = skinningModel == 0;

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
    *(v107 + 8) = *allocator;
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::init(&v107[1] + 8, a6, 1uLL);
    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::init(v110, a6, 1uLL);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    skinningModel2 = [(REMeshModelDescriptor *)self skinningModel];
    skinningParts = [skinningModel2 skinningParts];

    v39 = [skinningParts countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v39)
    {
      v40 = *v93;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v93 != v40)
          {
            objc_enumerationMutation(skinningParts);
          }

          [*(*(&v92 + 1) + 8 * k) addToSkinningModelBuilder:v107 payloadBuffers:buffers->var1];
        }

        v39 = [skinningParts countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v39);
    }

    *v118 = 0;
    re::SkinningModelBuilder::buildDeformationModel(v107, v118, &v116);

    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::~BucketArray(v110);
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::~BucketArray(&v107[1] + 8);
  }

  blendShapeModel = [(REMeshModelDescriptor *)self blendShapeModel];
  v43 = blendShapeModel == 0;

  if (!v43)
  {
    v89 = 0;
    v90 = 0;
    v91 = 0;
    blendShapeModel2 = [(REMeshModelDescriptor *)self blendShapeModel];
    perMeshPartBlendShapeBufferIndex = [blendShapeModel2 perMeshPartBlendShapeBufferIndex];
    re::FixedArray<int>::init<>(&v89, a6, [perMeshPartBlendShapeBufferIndex count]);

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    blendShapeModel3 = [(REMeshModelDescriptor *)self blendShapeModel];
    perMeshPartBlendShapeBufferIndex2 = [blendShapeModel3 perMeshPartBlendShapeBufferIndex];

    v47 = [perMeshPartBlendShapeBufferIndex2 countByEnumeratingWithState:&v85 objects:v105 count:16];
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
            objc_enumerationMutation(perMeshPartBlendShapeBufferIndex2);
          }

          unsignedIntValue = [*(*(&v85 + 1) + 8 * m) unsignedIntValue];
          v28 = v90;
          if (v90 <= v21)
          {
            goto LABEL_61;
          }

          *(v91 + 4 * v21++) = unsignedIntValue;
        }

        v47 = [perMeshPartBlendShapeBufferIndex2 countByEnumeratingWithState:&v85 objects:v105 count:16];
      }

      while (v47);
    }

    blendShapeModel4 = [(REMeshModelDescriptor *)self blendShapeModel];
    v51 = [blendShapeModel4 blendShapeIndexType] != 0;

    *v118 = 0;
    blendShapeModel5 = [(REMeshModelDescriptor *)self blendShapeModel];
    blendShapeBuffers = [blendShapeModel5 blendShapeBuffers];
    re::BlendShapeModelBuilder::BlendShapeModelBuilder(v107, a6, v118, [blendShapeBuffers count], v51, &v89, &v116);

    blendShapeModel6 = [(REMeshModelDescriptor *)self blendShapeModel];
    blendShapeBuffers2 = [blendShapeModel6 blendShapeBuffers];
    v56 = [blendShapeBuffers2 count];

    if (v56)
    {
      for (n = 0; n != v56; ++n)
      {
        blendShapeModel7 = [(REMeshModelDescriptor *)self blendShapeModel];
        blendShapeBuffers3 = [blendShapeModel7 blendShapeBuffers];
        v60 = [blendShapeBuffers3 objectAtIndexedSubscript:n];

        blendShapeModel8 = [(REMeshModelDescriptor *)self blendShapeModel];
        blendShapeGroupNames = [blendShapeModel8 blendShapeGroupNames];
        v63 = [blendShapeGroupNames objectAtIndexedSubscript:n];

        if (v63)
        {
          v64 = v63;
          uTF8String = [v63 UTF8String];
          *v118 = 0;
          *&v118[8] = &str_67;
        }

        else
        {
          re::StringID::invalid(v118);
        }

        v66 = [v60 addToBlendShapeModelBuilder:v107 blendShapeIndex:n blendShapeGroupName:v118 payloadBuffers:buffers->var1];
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

  name = [(REMeshModelDescriptor *)self name];
  v68 = name;
  uTF8String2 = [name UTF8String];
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

- (REMeshModelDescriptor)initWithName:(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap:(SEL)map skeletonCount:(id)count skinningModel:(id)model blendShapeModel:(unsigned int)shapeModel lods:(id)lods boundingBoxMin:(id)min boundingBoxMax:(id)max
{
  v29 = v8;
  v30 = v9;
  countCopy = count;
  modelCopy = model;
  lodsCopy = lods;
  minCopy = min;
  maxCopy = max;
  v31.receiver = self;
  v31.super_class = REMeshModelDescriptor;
  v21 = [(REMeshModelDescriptor *)&v31 init];
  if (v21)
  {
    v22 = [countCopy copy];
    name = v21->_name;
    v21->_name = v22;

    v24 = [modelCopy copy];
    modelPartIndexToResourcePartIndexMap = v21->_modelPartIndexToResourcePartIndexMap;
    v21->_modelPartIndexToResourcePartIndexMap = v24;

    v21->_skeletonCount = shapeModel;
    objc_storeStrong(&v21->_skinningModel, lods);
    objc_storeStrong(&v21->_blendShapeModel, min);
    v26 = [maxCopy copy];
    lods = v21->_lods;
    v21->_lods = v26;

    *v21->_boundingBoxMin = v29;
    *v21->_boundingBoxMax = v30;
  }

  return v21;
}

- (REMeshModelDescriptor)initWithCoder:(id)coder
{
  v44 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = self->_name;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"partIndices"];
  modelPartIndexToResourcePartIndexMap = self->_modelPartIndexToResourcePartIndexMap;
  self->_modelPartIndexToResourcePartIndexMap = v11;

  v13 = [coderCopy decodeIntegerForKey:@"skeletonCount"];
  v14 = HIDWORD(v13) != 0;
  self->_skeletonCount = v13;
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skinningModel"];
  skinningModel = self->_skinningModel;
  self->_skinningModel = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blendShapeModel"];
  blendShapeModel = self->_blendShapeModel;
  self->_blendShapeModel = v17;

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"lods"];
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
  [coderCopy decodeFloatForKey:@"boundingBoxMin.x"];
  *self->_boundingBoxMin = v28;
  [coderCopy decodeFloatForKey:@"boundingBoxMin.y"];
  *&self->_boundingBoxMin[4] = v29;
  [coderCopy decodeFloatForKey:@"boundingBoxMin.z"];
  *self->_boundingBoxMax = 0;
  *&self->_boundingBoxMin[8] = v30;
  *&self->_boundingBoxMax[8] = 0;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.x"];
  *self->_boundingBoxMax = v31;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.y"];
  *&self->_boundingBoxMax[4] = v32;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.z"];
  *&self->_boundingBoxMax[8] = v34;
  if (v14)
    v35 = {;
    [coderCopy failWithError:v35];

LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  if (!v7)
    v37 = {;
    [coderCopy failWithError:v37];

    goto LABEL_13;
  }

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_modelPartIndexToResourcePartIndexMap forKey:@"partIndices"];
  [coderCopy encodeInt:self->_skeletonCount forKey:@"skeletonCount"];
  [coderCopy encodeObject:self->_skinningModel forKey:@"skinningModel"];
  [coderCopy encodeObject:self->_blendShapeModel forKey:@"blendShapeModel"];
  [coderCopy encodeObject:self->_lods forKey:@"lods"];
  LODWORD(v4) = *self->_boundingBoxMin;
  [coderCopy encodeFloat:@"boundingBoxMin.x" forKey:v4];
  LODWORD(v5) = *&self->_boundingBoxMin[4];
  [coderCopy encodeFloat:@"boundingBoxMin.y" forKey:v5];
  LODWORD(v6) = *&self->_boundingBoxMin[8];
  [coderCopy encodeFloat:@"boundingBoxMin.z" forKey:v6];
  LODWORD(v7) = *self->_boundingBoxMax;
  [coderCopy encodeFloat:@"boundingBoxMax.x" forKey:v7];
  LODWORD(v8) = *&self->_boundingBoxMax[4];
  [coderCopy encodeFloat:@"boundingBoxMax.y" forKey:v8];
  LODWORD(v9) = *&self->_boundingBoxMax[8];
  [coderCopy encodeFloat:@"boundingBoxMax.z" forKey:v9];
}

- (BOOL)validateWithParts:(id)parts payloadSize:(FixedInlineArray<unsigned)long error:(8UL> *)error
{
  v54 = *MEMORY[0x1E69E9840];
  partsCopy = parts;
  v9 = [(_anonymous_namespace_ *)partsCopy count];
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
  errorCopy = error;
  v32 = partsCopy;
  if (v10)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = [(NSArray *)self->_modelPartIndexToResourcePartIndexMap objectAtIndexedSubscript:v12];
      unsignedIntegerValue = [(NSArray *)v14 unsignedIntegerValue];
      if (HIDWORD(unsignedIntegerValue))
      {
        break;
      }

      if (unsignedIntegerValue >= v9)
      {
        v29 = @"REMeshModelDescriptor: mesh part index out of range";
        goto LABEL_32;
      }

      v16 = unsignedIntegerValue >> 6;
      v17 = v38;
      if (v38 <= unsignedIntegerValue >> 6)
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
        v20 = 1 << unsignedIntegerValue;
        if ((v19 & (1 << unsignedIntegerValue)) != 0)
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
        v20 = 1 << unsignedIntegerValue;
        if ((v19 & (1 << unsignedIntegerValue)) != 0)
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
  if (skinningModel && ![(REMeshSkinningModelDescriptor *)skinningModel validateWithPayloadSize:errorCopy partsOnResource:v32 modelPartIndexToResourcePartIndex:self->_modelPartIndexToResourcePartIndexMap skeletonCount:self->_skeletonCount error:a5]|| (blendShapeModel = self->_blendShapeModel) != 0 && ![(REMeshBlendShapeModelDescriptor *)blendShapeModel validateWithPayloadSize:errorCopy partCountOnModel:v10 error:a5])
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

  estimateContainerSize = [(REMeshSkinningModelDescriptor *)self->_skinningModel estimateContainerSize];
  estimateContainerSize2 = [(REMeshBlendShapeModelDescriptor *)self->_blendShapeModel estimateContainerSize];
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
  v29 = estimateContainerSize + v17 + estimateContainerSize2 + v24 + 8 * v26;
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