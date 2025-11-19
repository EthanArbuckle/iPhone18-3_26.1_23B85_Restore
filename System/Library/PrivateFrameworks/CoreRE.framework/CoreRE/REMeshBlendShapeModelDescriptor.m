@interface REMeshBlendShapeModelDescriptor
- (BOOL)validateWithPayloadSize:(const void *)a3 partCountOnModel:(unint64_t)a4 error:(id *)a5;
- (REMeshBlendShapeModelDescriptor)initWithBlendShapeData:(const void *)a3 meshPartCount:(unint64_t)a4 payloadBuilder:(void *)a5 deformationModelData:(void *)a6;
- (REMeshBlendShapeModelDescriptor)initWithBlendShapeIndexType:(unint64_t)a3 blendShapeBuffers:(id)a4 perMeshPartBlendShapeBufferIndex:(id)a5 blendGroupNames:(id)a6;
- (REMeshBlendShapeModelDescriptor)initWithCoder:(id)a3;
- (REMeshBlendShapeModelDescriptor)initWithMeshBlendShapeData:(const void *)a3 meshPartCount:(unint64_t)a4 payloadBuilder:(void *)a5 deformationModelData:(void *)a6;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMeshBlendShapeModelDescriptor

- (REMeshBlendShapeModelDescriptor)initWithMeshBlendShapeData:(const void *)a3 meshPartCount:(unint64_t)a4 payloadBuilder:(void *)a5 deformationModelData:(void *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  *&v40[0] = 0;
  v27 = a4;

  if (*(a3 + 2))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      re::BlendShapeModelBuilder::addBlendShapeGroup(v31, *(a3 + 4) + v10, *(*(a3 + 4) + v10 + 48), v11++, 0);
      v10 += 56;
    }

    while (v11 < *(a3 + 2));
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = *a6;
  v13 = **a6;
  if (v12[2])
  {
    v14 = 0;
    v15 = 0;
    v16 = 8;
    do
    {
      v17 = [[REMeshBlendShapeBufferDescriptor alloc] initWithBlendShapeBufferPayload:v12[3] + v14 indexType:v13 payloadBuilder:a5];
      [v30 addObject:v17];
      v18 = v12[8];
      if (v18 <= v15)
      {
        v31[2] = 0;
        memset(v40, 0, sizeof(v40));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v32 = 136315906;
        v33 = "operator[]";
        v34 = 1024;
        v35 = 468;
        v36 = 2048;
        v37 = v15;
        v38 = 2048;
        v39 = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v12[9] + v16)];
      [v29 addObject:v19];

      ++v15;
      v16 += 16;
      v14 += 184;
    }

    while (v15 < v12[2]);
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v27];
  v21 = v12[5];
  if (v21)
  {
    v22 = v12[6];
    v23 = 4 * v21;
    do
    {
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v22];
      [v20 addObject:v24];

      ++v22;
      v23 -= 4;
    }

    while (v23);
  }

  v25 = [(REMeshBlendShapeModelDescriptor *)self initWithBlendShapeIndexType:v13 blendShapeBuffers:v30 perMeshPartBlendShapeBufferIndex:v20 blendGroupNames:v29];

  return v25;
}

- (REMeshBlendShapeModelDescriptor)initWithBlendShapeData:(const void *)a3 meshPartCount:(unint64_t)a4 payloadBuilder:(void *)a5 deformationModelData:(void *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  *&v40[0] = 0;
  v27 = a4;

  if (*(a3 + 2))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      re::BlendShapeModelBuilder::addBlendShapeGroup(v31, *(a3 + 4) + v10, *(*(a3 + 4) + v10 + 48), v11++, 0);
      v10 += 56;
    }

    while (v11 < *(a3 + 2));
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = *a6;
  v13 = **a6;
  if (v12[2])
  {
    v14 = 0;
    v15 = 0;
    v16 = 8;
    do
    {
      v17 = [[REMeshBlendShapeBufferDescriptor alloc] initWithBlendShapeBufferPayload:v12[3] + v14 indexType:v13 payloadBuilder:a5];
      [v30 addObject:v17];
      v18 = v12[8];
      if (v18 <= v15)
      {
        v31[2] = 0;
        memset(v40, 0, sizeof(v40));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v32 = 136315906;
        v33 = "operator[]";
        v34 = 1024;
        v35 = 468;
        v36 = 2048;
        v37 = v15;
        v38 = 2048;
        v39 = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v12[9] + v16)];
      [v29 addObject:v19];

      ++v15;
      v16 += 16;
      v14 += 184;
    }

    while (v15 < v12[2]);
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v27];
  v21 = v12[5];
  if (v21)
  {
    v22 = v12[6];
    v23 = 4 * v21;
    do
    {
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v22];
      [v20 addObject:v24];

      ++v22;
      v23 -= 4;
    }

    while (v23);
  }

  v25 = [(REMeshBlendShapeModelDescriptor *)self initWithBlendShapeIndexType:v13 blendShapeBuffers:v30 perMeshPartBlendShapeBufferIndex:v20 blendGroupNames:v29];

  return v25;
}

- (REMeshBlendShapeModelDescriptor)initWithBlendShapeIndexType:(unint64_t)a3 blendShapeBuffers:(id)a4 perMeshPartBlendShapeBufferIndex:(id)a5 blendGroupNames:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = REMeshBlendShapeModelDescriptor;
  v13 = [(REMeshBlendShapeModelDescriptor *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_blendShapeIndexType = a3;
    v15 = [v10 copy];
    blendShapeBuffers = v14->_blendShapeBuffers;
    v14->_blendShapeBuffers = v15;

    v17 = [v11 copy];
    perMeshPartBlendShapeBufferIndex = v14->_perMeshPartBlendShapeBufferIndex;
    v14->_perMeshPartBlendShapeBufferIndex = v17;

    v19 = [v12 copy];
    blendShapeGroupNames = v14->_blendShapeGroupNames;
    v14->_blendShapeGroupNames = v19;
  }

  return v14;
}

- (REMeshBlendShapeModelDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"blendShapeBuffers"];
  blendShapeBuffers = self->_blendShapeBuffers;
  self->_blendShapeBuffers = v8;

  v10 = validateMTLIndexType([v4 decodeIntegerForKey:@"blendShapeIndexType"], &self->_blendShapeIndexType);
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"perMeshPartBlendShapeBufferIndex"];
  perMeshPartBlendShapeBufferIndex = self->_perMeshPartBlendShapeBufferIndex;
  self->_perMeshPartBlendShapeBufferIndex = v14;

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [v4 decodeObjectOfClasses:v18 forKey:@"blendShapeGroupNames"];
  blendShapeGroupNames = self->_blendShapeGroupNames;
  self->_blendShapeGroupNames = v19;

  v21 = [(NSArray *)self->_blendShapeGroupNames count];
  if (v21 == [(NSArray *)self->_blendShapeBuffers count]&& v10)
  {
    v24 = self;
  }

  else
    v25 = {;
    [v4 failWithError:v25];

    v24 = 0;
  }

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_blendShapeBuffers forKey:@"blendShapeBuffers"];
  [v4 encodeInteger:self->_blendShapeIndexType forKey:@"blendShapeIndexType"];
  [v4 encodeObject:self->_perMeshPartBlendShapeBufferIndex forKey:@"perMeshPartBlendShapeBufferIndex"];
  [v4 encodeObject:self->_blendShapeGroupNames forKey:@"blendShapeGroupNames"];
}

- (BOOL)validateWithPayloadSize:(const void *)a3 partCountOnModel:(unint64_t)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_perMeshPartBlendShapeBufferIndex count]> a4)
  {
    v8 = @"REMeshBlendShapeModelDescriptor: blend shape index per mesh part out of range";
    goto LABEL_26;
  }

  v9 = [(NSArray *)self->_blendShapeBuffers count];
  if ([(NSArray *)self->_blendShapeGroupNames count]!= v9)
  {
    v8 = @"REMeshBlendShapeModelDescriptor: blend shape group name count does not match blend shape count";
LABEL_26:
    return 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_perMeshPartBlendShapeBufferIndex;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v28 + 1) + 8 * i) unsignedIntValue];
        if (v14 != -1 && v9 < v14)
        {

          return 0;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_blendShapeBuffers;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = *v25;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        v21 = [v20 validateWithPayloadSize:a3 error:{a5, v24}];

        if (!v21)
        {
          v22 = 0;
          goto LABEL_30;
        }
      }

      v17 = [(NSArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_30:

  return v22;
}

- (unint64_t)estimateContainerSize
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  if (self->_perMeshPartBlendShapeBufferIndex)
  {
    v5 = objc_opt_class();
    v6 = class_getInstanceSize(v5);
    perMeshPartBlendShapeBufferIndex = self->_perMeshPartBlendShapeBufferIndex;
  }

  else
  {
    perMeshPartBlendShapeBufferIndex = 0;
    v6 = 0;
  }

  v8 = [(NSArray *)perMeshPartBlendShapeBufferIndex count];
  v9 = objc_opt_class();
  v10 = class_getInstanceSize(v9);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = self->_perMeshPartBlendShapeBufferIndex;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v49 objects:v55 count:16];
  v13 = v6 + InstanceSize + 8 * v8;
  if (v12)
  {
    v14 = *v50;
    do
    {
      v15 = 0;
      do
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (*(*(&v49 + 1) + 8 * v15))
        {
          v16 = v10;
        }

        else
        {
          v16 = 0;
        }

        v13 += v16;
        ++v15;
      }

      while (v12 != v15);
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v12);
  }

  if (self->_blendShapeBuffers)
  {
    v17 = objc_opt_class();
    v18 = class_getInstanceSize(v17);
    blendShapeBuffers = self->_blendShapeBuffers;
  }

  else
  {
    blendShapeBuffers = 0;
    v18 = 0;
  }

  v20 = [(NSArray *)blendShapeBuffers count];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = self->_blendShapeBuffers;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v45 objects:v54 count:16];
  v23 = v18 + v13 + 8 * v20;
  if (v22)
  {
    v24 = *v46;
    do
    {
      v25 = 0;
      do
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v23 += [*(*(&v45 + 1) + 8 * v25++) estimateContainerSize];
      }

      while (v22 != v25);
      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v22);
  }

  if (self->_blendShapeGroupNames)
  {
    v26 = objc_opt_class();
    v27 = class_getInstanceSize(v26);
    blendShapeGroupNames = self->_blendShapeGroupNames;
  }

  else
  {
    blendShapeGroupNames = 0;
    v27 = 0;
  }

  v29 = [(NSArray *)blendShapeGroupNames count];
  v30 = objc_opt_class();
  v31 = class_getInstanceSize(v30);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = self->_blendShapeGroupNames;
  v33 = [(NSArray *)v32 countByEnumeratingWithState:&v41 objects:v53 count:16];
  v34 = v27 + v23 + 8 * v29;
  if (v33)
  {
    v35 = *v42;
    do
    {
      v36 = 0;
      do
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v41 + 1) + 8 * v36);
        if (v37)
        {
          v38 = v31;
        }

        else
        {
          v38 = 0;
        }

        if (v37)
        {
          v39 = [v37 lengthOfBytesUsingEncoding:{4, v41}] + 1;
        }

        else
        {
          v39 = 0;
        }

        v34 += v38 + v39;
        ++v36;
      }

      while (v33 != v36);
      v33 = [(NSArray *)v32 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v33);
  }

  return v34;
}

@end