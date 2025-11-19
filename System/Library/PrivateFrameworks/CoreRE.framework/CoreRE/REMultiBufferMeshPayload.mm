@interface REMultiBufferMeshPayload
- (FixedInlineArray<unsigned)payloadBufferSizes;
- (MeshPayloadBuffers)meshPayloadBuffersWithDevice:(SEL)a3;
- (REMultiBufferMeshPayload)initWithCoder:(id)a3;
- (REMultiBufferMeshPayload)initWithPayload:(id)a3 privatePayload:(id)a4 parts:(id)a5 models:(id)a6 instances:(id)a7 skeletons:(id)a8 isLimitedRenderAsset:(BOOL)a9;
- (unint64_t)estimatePayloadContainerOverheadSize;
- (unint64_t)totalPayloadSize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMultiBufferMeshPayload

- (REMultiBufferMeshPayload)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42.receiver = self;
    v42.super_class = REMultiBufferMeshPayload;
    self = [(RESharedResourcePayload *)&v42 initWithCoder:v4];
    if (self)
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
      v9 = [v4 decodeObjectOfClasses:v8 forKey:@"parts"];
      parts = self->_parts;
      self->_parts = v9;

      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"models"];
      models = self->_models;
      self->_models = v14;

      v16 = MEMORY[0x1E695DFD8];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [v4 decodeObjectOfClasses:v18 forKey:@"instances"];
      instances = self->_instances;
      self->_instances = v19;

      v21 = MEMORY[0x1E695DFD8];
      v22 = objc_opt_class();
      v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
      v24 = [v4 decodeObjectOfClasses:v23 forKey:@"skeletons"];
      skeletons = self->_skeletons;
      self->_skeletons = v24;

      v26 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"private"];
      if (v26)
      {
        v27 = DRMemoryResourceCreateFromXPC();
      }

      else
      {
        v27 = 0;
      }

      privatePayload = self->_privatePayload;
      self->_privatePayload = v27;

      v30 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"shared"];
      if (v30)
      {
        v31 = DRMemoryResourceCreateFromXPC();
      }

      else
      {
        v31 = 0;
      }

      sharedPayload = self->_sharedPayload;
      self->_sharedPayload = v31;

      self->_isLimitedRenderAsset = [v4 decodeBoolForKey:@"isLimitedRenderAsset"];
        v28 = {;
        [v4 failWithError:v28];
        goto LABEL_22;
      }

      if (self->_privatePayload)
      {
        if ((DRMemoryResourceIsPrivateToProcess() & 1) == 0)
          v28 = {;
          [v4 failWithError:v28];
          goto LABEL_22;
        }

        Bytes = DRMemoryResourceGetBytes();
        Length = DRMemoryResourceGetLength();
        {
          goto LABEL_20;
        }
      }

      else
      {
        v40 = DRMemoryResourceGetBytes();
        v41 = DRMemoryResourceGetLength();
        {
          v28 = LABEL_20:;
          [v4 failWithError:v28];
          goto LABEL_22;
        }
      }
    }

    self = self;
    v38 = self;
    goto LABEL_23;
  }
  v28 = ;
  [v4 failWithError:v28];
LABEL_22:

  v38 = 0;
LABEL_23:

  return v38;
}

- (REMultiBufferMeshPayload)initWithPayload:(id)a3 privatePayload:(id)a4 parts:(id)a5 models:(id)a6 instances:(id)a7 skeletons:(id)a8 isLimitedRenderAsset:(BOOL)a9
{
  v33 = a3;
  v32 = a4;
  v36 = a5;
  v35 = a6;
  v16 = a7;
  v34 = a8;
  v38.receiver = self;
  v38.super_class = REMultiBufferMeshPayload;
  v17 = [(RESharedResourcePayload *)&v38 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_privatePayload, a4);
    objc_storeStrong(&v18->_sharedPayload, a3);
    v19 = [v36 copy];
    parts = v18->_parts;
    v18->_parts = v19;

    v21 = [v35 copy];
    models = v18->_models;
    v18->_models = v21;

    v23 = [v16 copy];
    instances = v18->_instances;
    v18->_instances = v23;

    v25 = [v34 copy];
    skeletons = v18->_skeletons;
    v18->_skeletons = v25;

    v18->_isLimitedRenderAsset = a9;
    privatePayload = v18->_privatePayload;
    if (privatePayload)
    {
      privatePayload = DRMemoryResourceIsPrivateToProcess();
      if ((privatePayload & 1) == 0)
      {
        v28 = *re::assetTypesLogObjects(privatePayload);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v29 = "Private data is expected to be private";
LABEL_16:
          _os_log_fault_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_FAULT, v29, buf, 2u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else if (!v18->_sharedPayload)
    {
      v28 = *re::assetTypesLogObjects(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v29 = "Expected at least one of private and shared data to be non-nil";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if (!v18->_parts || !v18->_models || !v18->_instances || !v18->_skeletons)
    {
      v28 = *re::assetTypesLogObjects(privatePayload);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v29 = "Expected non-nil arrays for mesh parts, models, instances, and skeletons";
        goto LABEL_16;
      }

LABEL_17:
      v30 = 0;
      goto LABEL_18;
    }
  }

  v30 = v18;
LABEL_18:

  return v30;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (self->_privatePayload)
    {
      v6 = DRMemoryResourceCopyToXPC();
      [v4 encodeXPCObject:v6 forKey:@"private"];
    }

    if (self->_sharedPayload)
    {
      v7 = DRMemoryResourceCopyToXPC();
      [v4 encodeXPCObject:v7 forKey:@"shared"];
    }

    [v4 encodeObject:self->_parts forKey:@"parts"];
    [v4 encodeObject:self->_models forKey:@"models"];
    [v4 encodeObject:self->_instances forKey:@"instances"];
    [v4 encodeObject:self->_skeletons forKey:@"skeletons"];
    [v4 encodeBool:self->_isLimitedRenderAsset forKey:@"isLimitedRenderAsset"];
  }

  else
  {
    v8 = *re::assetTypesLogObjects(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_FAULT, "REMultiBufferMeshPayload requires an NSXPCCoder", v9, 2u);
    }
  }
}

- (MeshPayloadBuffers)meshPayloadBuffersWithDevice:(SEL)a3
{
  v6 = a4;
  {
    goto LABEL_13;
  }

  privatePayload = self->_privatePayload;
  if (privatePayload)
  {
    if (v6)
    {
      v36 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v33 = 0uLL;
      v31[0] = 0;
      v29[0] = 0;
      if (self->_sharedPayload)
      {
        v8 = DRMemoryResourceCopyBuffer();
        v27[0] = v8;
        NS::SharedPtr<MTL::Texture>::operator=(v31, v27);
        if (v27[0])
        {

          v27[0] = 0;
        }

        v9 = DRMemoryResourceCopyBuffer();
        v27[0] = v9;
        NS::SharedPtr<MTL::Texture>::operator=(v29, v27);
        if (v27[0])
        {

          v27[0] = 0;
        }

LABEL_21:
        v13 = 0;
        v14 = &v33;
        do
        {
          if ((v13 & 0xFFFFFFFC) == 4)
          {
            v15 = v31;
          }

          else
          {
            v15 = v29;
          }

          NS::SharedPtr<MTL::Buffer>::operator=(v14, v15);
          ++v13;
          ++v14;
        }

        while (v13 != 8);
        for (i = 0; i != 64; i += 8)
        {
          *(&retstr->var0.var0.var0.var2.var1.var0.var0[0].var0 + i) = *(&v33 + i);
        }

        retstr->var0.var0.var1 = 0;
        if (v29[0])
        {
        }

        if (v31[0])
        {
        }

        for (j = 56; j != -8; j -= 8)
        {
          v18 = *(&v33 + j);
          if (v18)
          {

            *(&v33 + j) = 0;
          }
        }

        goto LABEL_59;
      }

      v27[0] = DRMemoryResourceCopyBuffer();
      v12 = NS::SharedPtr<MTL::Texture>::operator=(v29, v27);
      NS::SharedPtr<MTL::Buffer>::operator=(v31, v12);
LABEL_19:
      if (v27[0])
      {
      }

      goto LABEL_21;
    }

    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v36 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v33 = 0uLL;
    v31[0] = 0;
    v31[1] = 0;
    v32[0] = 0;
    v29[0] = 0;
    v29[1] = 0;
    v30[0] = 0;
    if (self->_sharedPayload)
    {
      *v31 = *v27;
      NS::SharedPtr<MTL::Texture>::operator=(v32, &v28);
      if (v28)
      {
      }

      *v29 = *v27;
      NS::SharedPtr<MTL::Texture>::operator=(v30, &v28);
    }

    else
    {
      *v29 = *v27;
      NS::SharedPtr<MTL::Texture>::operator=(v30, &v28);
      *v31 = *v29;
      NS::SharedPtr<MTL::Buffer>::operator=(v32, v30);
    }

    goto LABEL_39;
  }

  sharedPayload = self->_sharedPayload;
  if (!sharedPayload)
  {
LABEL_13:
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
    goto LABEL_59;
  }

  if (v6)
  {
    v36 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v33 = 0uLL;
    v31[0] = 0;
    v29[0] = 0;
    v27[0] = DRMemoryResourceCopyBuffer();
    v11 = NS::SharedPtr<MTL::Texture>::operator=(v29, v27);
    NS::SharedPtr<MTL::Buffer>::operator=(v31, v11);
    goto LABEL_19;
  }

  v43 = 0uLL;
  v44 = 0uLL;
  v41 = 0uLL;
  v42 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  v37 = 0uLL;
  v38 = 0uLL;
  v36 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  v33 = 0uLL;
  v31[0] = 0;
  v31[1] = 0;
  v32[0] = 0;
  v29[0] = 0;
  v29[1] = 0;
  v30[0] = 0;
  *v29 = *v27;
  NS::SharedPtr<MTL::Texture>::operator=(v30, &v28);
  *v31 = *v29;
  NS::SharedPtr<MTL::Buffer>::operator=(v32, v30);
LABEL_39:
  if (v28)
  {
  }

  v19 = 0;
  v20 = &v34;
  do
  {
    if ((v19 & 0xFFFFFFFC) == 4)
    {
      v21 = v31;
    }

    else
    {
      v21 = v29;
    }

    if ((v19 & 0xFFFFFFFC) == 4)
    {
      v22 = v32;
    }

    else
    {
      v22 = v30;
    }

    *(v20 - 1) = *v21;
    NS::SharedPtr<MTL::Buffer>::operator=(v20, v22);
    ++v19;
    v20 += 3;
  }

  while (v19 != 8);
  for (k = 0; k != 24; k += 3)
  {
    *(&retstr->var0.var0.var0.var0 + k * 8) = *(&v33 + k * 8);
    retstr->var0.var0.var0.var1.var0.var0[k + 2].var0 = *(&v33 + k * 8 + 16);
  }

  retstr->var0.var0.var1 = 1;
  if (v30[0])
  {
  }

  if (v32[0])
  {
  }

  for (m = 184; m != -8; m -= 24)
  {
    v25 = *(&v33 + m);
    if (v25)
    {

      *(&v33 + m) = 0;
    }
  }

LABEL_59:

  return result;
}

- (unint64_t)estimatePayloadContainerOverheadSize
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  v4 = self;
  v5 = objc_opt_class();
  v39 = class_getInstanceSize(v5);
  v6 = objc_opt_class();
  v7 = class_getInstanceSize(v6);
  v8 = objc_opt_class();
  v9 = class_getInstanceSize(v8);
  v10 = objc_opt_class();
  v11 = class_getInstanceSize(v10);
  v12 = [(REMultiBufferMeshPayload *)v4 parts];
  v13 = [v12 count];

  v14 = [(REMultiBufferMeshPayload *)v4 models];
  v15 = [v14 count];

  v16 = [(REMultiBufferMeshPayload *)v4 instances];
  v17 = [v16 count];

  v18 = [(REMultiBufferMeshPayload *)v4 skeletons];
  v19 = [v18 count];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v20 = [(REMultiBufferMeshPayload *)v4 parts];
  v21 = [v20 countByEnumeratingWithState:&v52 objects:v59 count:16];
  v22 = v7 + v39 + v9 + v11 + 8 * (v15 + v13 + v17) + 8 * v19;
  if (v21)
  {
    v23 = *v53;
    do
    {
      v24 = 0;
      do
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v22 += [*(*(&v52 + 1) + 8 * v24++) estimateContainerSize];
      }

      while (v21 != v24);
      v21 = [v20 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v21);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = [(REMultiBufferMeshPayload *)v4 models];
  v26 = [v25 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v26)
  {
    v27 = *v49;
    do
    {
      v28 = 0;
      do
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v22 += [*(*(&v48 + 1) + 8 * v28++) estimateContainerSize];
      }

      while (v26 != v28);
      v26 = [v25 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v26);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = [(REMultiBufferMeshPayload *)v4 instances];
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v30)
  {
    v31 = *v45;
    do
    {
      v32 = 0;
      do
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v22 += [*(*(&v44 + 1) + 8 * v32++) estimateContainerSize];
      }

      while (v30 != v32);
      v30 = [v29 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v30);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = [(REMultiBufferMeshPayload *)v4 skeletons];
  v34 = [v33 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v34)
  {
    v35 = *v41;
    do
    {
      v36 = 0;
      do
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v22 += [*(*(&v40 + 1) + 8 * v36++) estimateContainerSize];
      }

      while (v34 != v36);
      v34 = [v33 countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v34);
  }

  return v22 + InstanceSize;
}

- (FixedInlineArray<unsigned)payloadBufferSizes
{
  *&retstr->var0[4] = 0u;
  *&retstr->var0[6] = 0u;
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  if (self->_sharedPayload || (result = self->_privatePayload) != 0)
  {
    Length = DRMemoryResourceGetLength();
    result = DRMemoryResourceGetLength();
    v6 = vdupq_n_s64(Length);
    v7 = vdupq_n_s64(result);
    *retstr->var0 = v6;
    *&retstr->var0[2] = v6;
    *&retstr->var0[4] = v7;
    *&retstr->var0[6] = v7;
  }

  return result;
}

- (unint64_t)totalPayloadSize
{
  if (self->_sharedPayload)
  {
    Length = DRMemoryResourceGetLength();
  }

  else
  {
    Length = 0;
  }

  privatePayload = self->_privatePayload;
  if (privatePayload)
  {
    privatePayload = DRMemoryResourceGetLength();
  }

  return privatePayload + Length;
}

@end