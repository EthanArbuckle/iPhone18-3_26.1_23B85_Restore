@interface REMeshBlendShapeBufferDescriptor
- (BOOL)validateWithPayloadSize:(const void *)size error:(id *)error;
- (REMeshBlendShapeBufferDescriptor)initWithBlendShapeBufferPayload:(void *)payload indexType:(unint64_t)type payloadBuilder:(void *)builder;
- (REMeshBlendShapeBufferDescriptor)initWithBlendShapeNames:(id)names floatDeltaBuffer:(id)buffer blendShapeConstantsBuffer:(id)constantsBuffer indexBuffer:(id)indexBuffer floatSliceBuffer:(id)sliceBuffer coefficientIndexBuffer:(id)coefficientIndexBuffer renormalizationBuffer:(id)renormalizationBuffer hasNormals:(BOOL)self0 hasTangents:(BOOL)self1 hasBitangents:(BOOL)self2;
- (REMeshBlendShapeBufferDescriptor)initWithCoder:(id)coder;
- (unint64_t)estimateContainerSize;
- (void)addToBlendShapeModelBuilder:(BlendShapeModelBuilder *)builder blendShapeIndex:(unint64_t)index blendShapeGroupName:(const StringID *)name payloadBuffers:(const void *)buffers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMeshBlendShapeBufferDescriptor

- (REMeshBlendShapeBufferDescriptor)initWithBlendShapeBufferPayload:(void *)payload indexType:(unint64_t)type payloadBuilder:(void *)builder
{
  if (type)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }
  v21 = ;
  v8 = v20 = objc_claimAutoreleasedReturnValue();
  v10 = v9 = objc_claimAutoreleasedReturnValue();
  v11 = objc_claimAutoreleasedReturnValue();
  v12 = objc_opt_new();
  v13 = *(payload + 3);
  if (v13)
  {
    v14 = (*(payload + 4) + 8);
    v15 = 16 * v13;
    do
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v14];
      [v12 addObject:v16];

      v14 += 2;
      v15 -= 16;
    }

    while (v15);
  }

  BYTE2(v19) = *(payload + 14);
  LOWORD(v19) = *(payload + 6);
  v17 = [REMeshBlendShapeBufferDescriptor initWithBlendShapeNames:"initWithBlendShapeNames:floatDeltaBuffer:blendShapeConstantsBuffer:indexBuffer:floatSliceBuffer:coefficientIndexBuffer:renormalizationBuffer:hasNormals:hasTangents:hasBitangents:" floatDeltaBuffer:v12 blendShapeConstantsBuffer:v20 indexBuffer:v21 floatSliceBuffer:v8 coefficientIndexBuffer:v9 renormalizationBuffer:v10 hasNormals:v11 hasTangents:v19 hasBitangents:?];

  return v17;
}

- (void)addToBlendShapeModelBuilder:(BlendShapeModelBuilder *)builder blendShapeIndex:(unint64_t)index blendShapeGroupName:(const StringID *)name payloadBuffers:(const void *)buffers
{
  v9 = 0;
  v52 = *MEMORY[0x1E69E9840];
  do
  {
    v10 = &v41[v9];
    *v10 = 0;
    *(v10 + 6) = 0;
    *(v10 + 4) = 0;
    v9 += 40;
  }

  while (v9 != 240);
  floatDeltaBuffer = [(REMeshBlendShapeBufferDescriptor *)self floatDeltaBuffer];

  blendShapeConstantsBuffer = [(REMeshBlendShapeBufferDescriptor *)self blendShapeConstantsBuffer];

  indexBuffer = [(REMeshBlendShapeBufferDescriptor *)self indexBuffer];

  floatSliceBuffer = [(REMeshBlendShapeBufferDescriptor *)self floatSliceBuffer];

  coefficientIndexBuffer = [(REMeshBlendShapeBufferDescriptor *)self coefficientIndexBuffer];

  renormalizationBuffer = [(REMeshBlendShapeBufferDescriptor *)self renormalizationBuffer];

  blendShapeNames = [(REMeshBlendShapeBufferDescriptor *)self blendShapeNames];
  v19 = [blendShapeNames count];
  re::StringID::invalid(&v51);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (*&v51.var0)
  {
    if (*&v51.var0)
    {
    }
  }

  blendShapeNames2 = [(REMeshBlendShapeBufferDescriptor *)self blendShapeNames];
  v22 = [blendShapeNames2 count];

  if (v22)
  {
    v23 = 0;
    for (i = 0; i != v22; ++i)
    {
      blendShapeNames3 = [(REMeshBlendShapeBufferDescriptor *)self blendShapeNames];
      v26 = [blendShapeNames3 objectAtIndexedSubscript:i];
      v27 = v26;
      uTF8String = [v26 UTF8String];
      v36 = 0;
      v37 = &str_67;
      v29 = v39;
      if (v39 <= i)
      {
        v42 = 0;
        memset(&v51, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v43 = 136315906;
        v44 = "operator[]";
        v45 = 1024;
        v46 = 468;
        v47 = 2048;
        v48 = i;
        v49 = 2048;
        v50 = v29;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v30 = re::StringID::operator=((v40 + v23), &v36);
      if (v36)
      {
        if (v36)
        {
        }
      }

      v36 = 0;
      v37 = &str_67;

      v23 += 16;
    }
  }

  re::BlendShapeModelBuilder::addBlendShapeGroup(builder, index, v41, name, &v38, [(REMeshBlendShapeBufferDescriptor *)self hasNormals], [(REMeshBlendShapeBufferDescriptor *)self hasTangents], [(REMeshBlendShapeBufferDescriptor *)self hasBitangents]);
  re::FixedArray<re::StringID>::deinit(&v38);
  for (j = 0; j != -240; j -= 40)
  {
    v32 = &v41[j];
    v33 = *&v41[j + 224];
    if (v33 != -1)
    {
      (off_1F5CC8DB0[v33])(&v51, v32 + 200);
    }

    *(v32 + 56) = -1;
  }
}

- (REMeshBlendShapeBufferDescriptor)initWithBlendShapeNames:(id)names floatDeltaBuffer:(id)buffer blendShapeConstantsBuffer:(id)constantsBuffer indexBuffer:(id)indexBuffer floatSliceBuffer:(id)sliceBuffer coefficientIndexBuffer:(id)coefficientIndexBuffer renormalizationBuffer:(id)renormalizationBuffer hasNormals:(BOOL)self0 hasTangents:(BOOL)self1 hasBitangents:(BOOL)self2
{
  namesCopy = names;
  bufferCopy = buffer;
  constantsBufferCopy = constantsBuffer;
  indexBufferCopy = indexBuffer;
  sliceBufferCopy = sliceBuffer;
  coefficientIndexBufferCopy = coefficientIndexBuffer;
  renormalizationBufferCopy = renormalizationBuffer;
  v30.receiver = self;
  v30.super_class = REMeshBlendShapeBufferDescriptor;
  v20 = [(REMeshBlendShapeBufferDescriptor *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_floatDeltaBuffer, buffer);
    objc_storeStrong(&v21->_blendShapeConstantsBuffer, constantsBuffer);
    objc_storeStrong(&v21->_indexBuffer, indexBuffer);
    objc_storeStrong(&v21->_floatSliceBuffer, sliceBuffer);
    objc_storeStrong(&v21->_coefficientIndexBuffer, coefficientIndexBuffer);
    objc_storeStrong(&v21->_renormalizationBuffer, renormalizationBuffer);
    v22 = [namesCopy copy];
    blendShapeNames = v21->_blendShapeNames;
    v21->_blendShapeNames = v22;

    v21->_hasNormals = normals;
    v21->_hasTangents = tangents;
    v21->_hasBitangents = bitangents;
  }

  return v21;
}

- (REMeshBlendShapeBufferDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"floatDeltaBuffer"];
  floatDeltaBuffer = self->_floatDeltaBuffer;
  self->_floatDeltaBuffer = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blendShapeConstantsBuffer"];
  blendShapeConstantsBuffer = self->_blendShapeConstantsBuffer;
  self->_blendShapeConstantsBuffer = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexBuffer"];
  indexBuffer = self->_indexBuffer;
  self->_indexBuffer = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"floatSliceBuffer"];
  floatSliceBuffer = self->_floatSliceBuffer;
  self->_floatSliceBuffer = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coefficientIndexBuffer"];
  coefficientIndexBuffer = self->_coefficientIndexBuffer;
  self->_coefficientIndexBuffer = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"renormalizationBuffer"];
  renormalizationBuffer = self->_renormalizationBuffer;
  self->_renormalizationBuffer = v15;

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"blendShapeNames"];
  blendShapeNames = self->_blendShapeNames;
  self->_blendShapeNames = v20;

  self->_hasNormals = [coderCopy decodeBoolForKey:@"hasNormals"];
  self->_hasTangents = [coderCopy decodeBoolForKey:@"hasTangents"];
  self->_hasBitangents = [coderCopy decodeBoolForKey:@"hasBitangents"];

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_hasNormals forKey:@"hasNormals"];
  [coderCopy encodeBool:self->_hasTangents forKey:@"hasTangents"];
  [coderCopy encodeBool:self->_hasBitangents forKey:@"hasBitangents"];
  [coderCopy encodeObject:self->_floatDeltaBuffer forKey:@"floatDeltaBuffer"];
  [coderCopy encodeObject:self->_blendShapeConstantsBuffer forKey:@"blendShapeConstantsBuffer"];
  [coderCopy encodeObject:self->_indexBuffer forKey:@"indexBuffer"];
  [coderCopy encodeObject:self->_floatSliceBuffer forKey:@"floatSliceBuffer"];
  [coderCopy encodeObject:self->_coefficientIndexBuffer forKey:@"coefficientIndexBuffer"];
  [coderCopy encodeObject:self->_renormalizationBuffer forKey:@"renormalizationBuffer"];
  [coderCopy encodeObject:self->_blendShapeNames forKey:@"blendShapeNames"];
}

- (BOOL)validateWithPayloadSize:(const void *)size error:(id *)error
{
  floatDeltaBuffer = self->_floatDeltaBuffer;
  if (!floatDeltaBuffer)
  {
    return 0;
  }

  {
    return 0;
  }

  renormalizationBuffer = self->_renormalizationBuffer;
}

- (unint64_t)estimateContainerSize
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  floatDeltaBuffer = self->_floatDeltaBuffer;
  if (floatDeltaBuffer)
  {
    estimateContainerSize = [(REAttributeDescriptor *)floatDeltaBuffer estimateContainerSize];
  }

  else
  {
    estimateContainerSize = 0;
  }

  blendShapeConstantsBuffer = self->_blendShapeConstantsBuffer;
  if (blendShapeConstantsBuffer)
  {
    estimateContainerSize2 = [(REAttributeDescriptor *)blendShapeConstantsBuffer estimateContainerSize];
  }

  else
  {
    estimateContainerSize2 = 0;
  }

  indexBuffer = self->_indexBuffer;
  if (indexBuffer)
  {
    estimateContainerSize3 = [(REAttributeDescriptor *)indexBuffer estimateContainerSize];
  }

  else
  {
    estimateContainerSize3 = 0;
  }

  floatSliceBuffer = self->_floatSliceBuffer;
  if (floatSliceBuffer)
  {
    estimateContainerSize4 = [(REAttributeDescriptor *)floatSliceBuffer estimateContainerSize];
  }

  else
  {
    estimateContainerSize4 = 0;
  }

  coefficientIndexBuffer = self->_coefficientIndexBuffer;
  if (coefficientIndexBuffer)
  {
    estimateContainerSize5 = [(REAttributeDescriptor *)coefficientIndexBuffer estimateContainerSize];
  }

  else
  {
    estimateContainerSize5 = 0;
  }

  renormalizationBuffer = self->_renormalizationBuffer;
  if (renormalizationBuffer)
  {
    estimateContainerSize6 = [(REAttributeDescriptor *)renormalizationBuffer estimateContainerSize];
  }

  else
  {
    estimateContainerSize6 = 0;
  }

  if (self->_blendShapeNames)
  {
    v16 = objc_opt_class();
    v17 = class_getInstanceSize(v16);
    blendShapeNames = self->_blendShapeNames;
  }

  else
  {
    blendShapeNames = 0;
    v17 = 0;
  }

  v19 = [(NSArray *)blendShapeNames count];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = self->_blendShapeNames;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  v22 = InstanceSize + 48 + estimateContainerSize + estimateContainerSize2 + estimateContainerSize3 + estimateContainerSize4 + estimateContainerSize5 + estimateContainerSize6 + v17 + 8 * v19;
  if (v21)
  {
    v23 = *v31;
    do
    {
      v24 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * v24);
        if (v25)
        {
          v26 = objc_opt_class();
          v22 += class_getInstanceSize(v26);
          v27 = [v25 lengthOfBytesUsingEncoding:4] + 1;
        }

        else
        {
          v27 = 0;
        }

        v22 += v27;
        ++v24;
      }

      while (v21 != v24);
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }

  return v22;
}

@end