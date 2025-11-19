@interface REMeshBlendShapeBufferDescriptor
- (BOOL)validateWithPayloadSize:(const void *)a3 error:(id *)a4;
- (REMeshBlendShapeBufferDescriptor)initWithBlendShapeBufferPayload:(void *)a3 indexType:(unint64_t)a4 payloadBuilder:(void *)a5;
- (REMeshBlendShapeBufferDescriptor)initWithBlendShapeNames:(id)a3 floatDeltaBuffer:(id)a4 blendShapeConstantsBuffer:(id)a5 indexBuffer:(id)a6 floatSliceBuffer:(id)a7 coefficientIndexBuffer:(id)a8 renormalizationBuffer:(id)a9 hasNormals:(BOOL)a10 hasTangents:(BOOL)a11 hasBitangents:(BOOL)a12;
- (REMeshBlendShapeBufferDescriptor)initWithCoder:(id)a3;
- (unint64_t)estimateContainerSize;
- (void)addToBlendShapeModelBuilder:(BlendShapeModelBuilder *)a3 blendShapeIndex:(unint64_t)a4 blendShapeGroupName:(const StringID *)a5 payloadBuffers:(const void *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMeshBlendShapeBufferDescriptor

- (REMeshBlendShapeBufferDescriptor)initWithBlendShapeBufferPayload:(void *)a3 indexType:(unint64_t)a4 payloadBuilder:(void *)a5
{
  if (a4)
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
  v13 = *(a3 + 3);
  if (v13)
  {
    v14 = (*(a3 + 4) + 8);
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

  BYTE2(v19) = *(a3 + 14);
  LOWORD(v19) = *(a3 + 6);
  v17 = [REMeshBlendShapeBufferDescriptor initWithBlendShapeNames:"initWithBlendShapeNames:floatDeltaBuffer:blendShapeConstantsBuffer:indexBuffer:floatSliceBuffer:coefficientIndexBuffer:renormalizationBuffer:hasNormals:hasTangents:hasBitangents:" floatDeltaBuffer:v12 blendShapeConstantsBuffer:v20 indexBuffer:v21 floatSliceBuffer:v8 coefficientIndexBuffer:v9 renormalizationBuffer:v10 hasNormals:v11 hasTangents:v19 hasBitangents:?];

  return v17;
}

- (void)addToBlendShapeModelBuilder:(BlendShapeModelBuilder *)a3 blendShapeIndex:(unint64_t)a4 blendShapeGroupName:(const StringID *)a5 payloadBuffers:(const void *)a6
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
  v11 = [(REMeshBlendShapeBufferDescriptor *)self floatDeltaBuffer];

  v12 = [(REMeshBlendShapeBufferDescriptor *)self blendShapeConstantsBuffer];

  v13 = [(REMeshBlendShapeBufferDescriptor *)self indexBuffer];

  v14 = [(REMeshBlendShapeBufferDescriptor *)self floatSliceBuffer];

  v15 = [(REMeshBlendShapeBufferDescriptor *)self coefficientIndexBuffer];

  v16 = [(REMeshBlendShapeBufferDescriptor *)self renormalizationBuffer];

  v18 = [(REMeshBlendShapeBufferDescriptor *)self blendShapeNames];
  v19 = [v18 count];
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

  v21 = [(REMeshBlendShapeBufferDescriptor *)self blendShapeNames];
  v22 = [v21 count];

  if (v22)
  {
    v23 = 0;
    for (i = 0; i != v22; ++i)
    {
      v25 = [(REMeshBlendShapeBufferDescriptor *)self blendShapeNames];
      v26 = [v25 objectAtIndexedSubscript:i];
      v27 = v26;
      v28 = [v26 UTF8String];
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

  re::BlendShapeModelBuilder::addBlendShapeGroup(a3, a4, v41, a5, &v38, [(REMeshBlendShapeBufferDescriptor *)self hasNormals], [(REMeshBlendShapeBufferDescriptor *)self hasTangents], [(REMeshBlendShapeBufferDescriptor *)self hasBitangents]);
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

- (REMeshBlendShapeBufferDescriptor)initWithBlendShapeNames:(id)a3 floatDeltaBuffer:(id)a4 blendShapeConstantsBuffer:(id)a5 indexBuffer:(id)a6 floatSliceBuffer:(id)a7 coefficientIndexBuffer:(id)a8 renormalizationBuffer:(id)a9 hasNormals:(BOOL)a10 hasTangents:(BOOL)a11 hasBitangents:(BOOL)a12
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v18 = a8;
  v19 = a9;
  v30.receiver = self;
  v30.super_class = REMeshBlendShapeBufferDescriptor;
  v20 = [(REMeshBlendShapeBufferDescriptor *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_floatDeltaBuffer, a4);
    objc_storeStrong(&v21->_blendShapeConstantsBuffer, a5);
    objc_storeStrong(&v21->_indexBuffer, a6);
    objc_storeStrong(&v21->_floatSliceBuffer, a7);
    objc_storeStrong(&v21->_coefficientIndexBuffer, a8);
    objc_storeStrong(&v21->_renormalizationBuffer, a9);
    v22 = [v29 copy];
    blendShapeNames = v21->_blendShapeNames;
    v21->_blendShapeNames = v22;

    v21->_hasNormals = a10;
    v21->_hasTangents = a11;
    v21->_hasBitangents = a12;
  }

  return v21;
}

- (REMeshBlendShapeBufferDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"floatDeltaBuffer"];
  floatDeltaBuffer = self->_floatDeltaBuffer;
  self->_floatDeltaBuffer = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blendShapeConstantsBuffer"];
  blendShapeConstantsBuffer = self->_blendShapeConstantsBuffer;
  self->_blendShapeConstantsBuffer = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"indexBuffer"];
  indexBuffer = self->_indexBuffer;
  self->_indexBuffer = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"floatSliceBuffer"];
  floatSliceBuffer = self->_floatSliceBuffer;
  self->_floatSliceBuffer = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coefficientIndexBuffer"];
  coefficientIndexBuffer = self->_coefficientIndexBuffer;
  self->_coefficientIndexBuffer = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renormalizationBuffer"];
  renormalizationBuffer = self->_renormalizationBuffer;
  self->_renormalizationBuffer = v15;

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v4 decodeObjectOfClasses:v19 forKey:@"blendShapeNames"];
  blendShapeNames = self->_blendShapeNames;
  self->_blendShapeNames = v20;

  self->_hasNormals = [v4 decodeBoolForKey:@"hasNormals"];
  self->_hasTangents = [v4 decodeBoolForKey:@"hasTangents"];
  self->_hasBitangents = [v4 decodeBoolForKey:@"hasBitangents"];

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_hasNormals forKey:@"hasNormals"];
  [v4 encodeBool:self->_hasTangents forKey:@"hasTangents"];
  [v4 encodeBool:self->_hasBitangents forKey:@"hasBitangents"];
  [v4 encodeObject:self->_floatDeltaBuffer forKey:@"floatDeltaBuffer"];
  [v4 encodeObject:self->_blendShapeConstantsBuffer forKey:@"blendShapeConstantsBuffer"];
  [v4 encodeObject:self->_indexBuffer forKey:@"indexBuffer"];
  [v4 encodeObject:self->_floatSliceBuffer forKey:@"floatSliceBuffer"];
  [v4 encodeObject:self->_coefficientIndexBuffer forKey:@"coefficientIndexBuffer"];
  [v4 encodeObject:self->_renormalizationBuffer forKey:@"renormalizationBuffer"];
  [v4 encodeObject:self->_blendShapeNames forKey:@"blendShapeNames"];
}

- (BOOL)validateWithPayloadSize:(const void *)a3 error:(id *)a4
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
    v5 = [(REAttributeDescriptor *)floatDeltaBuffer estimateContainerSize];
  }

  else
  {
    v5 = 0;
  }

  blendShapeConstantsBuffer = self->_blendShapeConstantsBuffer;
  if (blendShapeConstantsBuffer)
  {
    v7 = [(REAttributeDescriptor *)blendShapeConstantsBuffer estimateContainerSize];
  }

  else
  {
    v7 = 0;
  }

  indexBuffer = self->_indexBuffer;
  if (indexBuffer)
  {
    v9 = [(REAttributeDescriptor *)indexBuffer estimateContainerSize];
  }

  else
  {
    v9 = 0;
  }

  floatSliceBuffer = self->_floatSliceBuffer;
  if (floatSliceBuffer)
  {
    v11 = [(REAttributeDescriptor *)floatSliceBuffer estimateContainerSize];
  }

  else
  {
    v11 = 0;
  }

  coefficientIndexBuffer = self->_coefficientIndexBuffer;
  if (coefficientIndexBuffer)
  {
    v13 = [(REAttributeDescriptor *)coefficientIndexBuffer estimateContainerSize];
  }

  else
  {
    v13 = 0;
  }

  renormalizationBuffer = self->_renormalizationBuffer;
  if (renormalizationBuffer)
  {
    v15 = [(REAttributeDescriptor *)renormalizationBuffer estimateContainerSize];
  }

  else
  {
    v15 = 0;
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
  v22 = InstanceSize + 48 + v5 + v7 + v9 + v11 + v13 + v15 + v17 + 8 * v19;
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