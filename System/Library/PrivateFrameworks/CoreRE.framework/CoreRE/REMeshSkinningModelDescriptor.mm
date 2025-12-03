@interface REMeshSkinningModelDescriptor
- (BOOL)validateWithPayloadSize:(const void *)size partsOnResource:(id)resource modelPartIndexToResourcePartIndex:(id)index skeletonCount:(unint64_t)count error:(id *)error;
- (REMeshSkinningModelDescriptor)initWithCoder:(id)coder;
- (REMeshSkinningModelDescriptor)initWithInverseBindPoseAttributes:(id)attributes skinningParts:(id)parts;
- (REMeshSkinningModelDescriptor)initWithMeshSkinningData:(const void *)data meshParts:(Slice<re:(id)parts :(void *)a6 MeshAssetPart>)a4 inverseBindPoseAttributes:(void *)attributes deformerBuilders:payloadBuilder:;
- (REMeshSkinningModelDescriptor)initWithSkinningAttributeDescriptor:(const void *)descriptor inverseBindPoseAttributes:(id)attributes payloadBuilder:(void *)builder;
- (REMeshSkinningModelDescriptor)initWithSkinningData:(const void *)data inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMeshSkinningModelDescriptor

- (REMeshSkinningModelDescriptor)initWithMeshSkinningData:(const void *)data meshParts:(Slice<re:(id)parts :(void *)a6 MeshAssetPart>)a4 inverseBindPoseAttributes:(void *)attributes deformerBuilders:payloadBuilder:
{
  v32 = *MEMORY[0x1E69E9840];
  partsCopy = parts;
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  v26 = a6;
  v25 = *(data + 2);
  if (v25)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (*(data + 2) <= v10)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = (*(data + 4) + v9);
      v12 = *v11;
      v13 = *(v11 + 2);
      v14 = *(v11 + 3);
      v16 = *(v11 + 5);
      v15 = *(v11 + 6);
      v18 = *(v11 + 8);
      v17 = *(v11 + 9);
      v19 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::addUninitialized((v26 + 3));
      *v19 = v12;
      *(v19 + 8) = v14;
      *(v19 + 16) = v13;
      *(v19 + 24) = v15;
      *(v19 + 32) = v16;
      ++v10;
      v9 += 144;
      *(v19 + 40) = v17;
      *(v19 + 48) = v18;
    }

    while (v25 != v10);
  }

  *&v29 = 0;
  v27 = 0u;
  v28 = 0u;
  re::SkinningModelBuilder::buildAttributeDescriptor(v26, &v27);
  v20 = [(REMeshSkinningModelDescriptor *)self initWithSkinningAttributeDescriptor:&v27 inverseBindPoseAttributes:partsCopy payloadBuilder:attributes];
  re::FixedArray<re::SkinningModelBuilder::AttributeDescriptor::SkinnedPartAttribute>::deinit(&v28);

  return v20;
}

- (REMeshSkinningModelDescriptor)initWithSkinningData:(const void *)data inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder
{
  attributesCopy = attributes;
  *(builders + 1) = 0;
  *(builders + 2) = 0;
  v11 = *(data + 2);
  if (v11)
  {
    v12 = *(data + 4);
    v13 = &v12[14 * v11];
    do
    {
      v14 = *v12;
      v15 = *(v12 + 5);
      v16 = *(v12 + 6);
      v20 = *(v12 + 6);
      v21 = *(v12 + 2);
      v17 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::addUninitialized(builders + 24);
      *v17 = v14;
      *(v17 + 24) = v20;
      *(v17 + 8) = v21;
      v12 += 14;
      *(v17 + 40) = v15;
      *(v17 + 48) = v16;
    }

    while (v12 != v13);
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  re::SkinningModelBuilder::buildAttributeDescriptor(builders, &v22);
  v18 = [(REMeshSkinningModelDescriptor *)self initWithSkinningAttributeDescriptor:&v22 inverseBindPoseAttributes:attributesCopy payloadBuilder:builder];
  re::FixedArray<re::SkinningModelBuilder::AttributeDescriptor::SkinnedPartAttribute>::deinit(&v23);

  return v18;
}

- (REMeshSkinningModelDescriptor)initWithSkinningAttributeDescriptor:(const void *)descriptor inverseBindPoseAttributes:(id)attributes payloadBuilder:(void *)builder
{
  attributesCopy = attributes;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = *(descriptor + 3);
  if (v10)
  {
    v11 = *(descriptor + 4);
    v12 = 56 * v10;
    do
    {
      v13 = [[REMeshSkinningPartDescriptor alloc] initWithAttributeDescriptor:v11 payloadBuilder:builder];
      [v9 addObject:v13];

      v11 += 56;
      v12 -= 56;
    }

    while (v12);
  }

  v14 = [(REMeshSkinningModelDescriptor *)self initWithInverseBindPoseAttributes:attributesCopy skinningParts:v9];

  return v14;
}

- (REMeshSkinningModelDescriptor)initWithInverseBindPoseAttributes:(id)attributes skinningParts:(id)parts
{
  attributesCopy = attributes;
  partsCopy = parts;
  v14.receiver = self;
  v14.super_class = REMeshSkinningModelDescriptor;
  v8 = [(REMeshSkinningModelDescriptor *)&v14 init];
  if (v8)
  {
    v9 = [attributesCopy copy];
    inverseBindPoseAttributes = v8->_inverseBindPoseAttributes;
    v8->_inverseBindPoseAttributes = v9;

    v11 = [partsCopy copy];
    skinningParts = v8->_skinningParts;
    v8->_skinningParts = v11;
  }

  return v8;
}

- (REMeshSkinningModelDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"inverseBindPoseAttributes"];
  inverseBindPoseAttributes = self->_inverseBindPoseAttributes;
  self->_inverseBindPoseAttributes = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"skinningParts"];
  skinningParts = self->_skinningParts;
  self->_skinningParts = v13;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_inverseBindPoseAttributes forKey:@"inverseBindPoseAttributes"];
  [coderCopy encodeObject:self->_skinningParts forKey:@"skinningParts"];
}

- (BOOL)validateWithPayloadSize:(const void *)size partsOnResource:(id)resource modelPartIndexToResourcePartIndex:(id)index skeletonCount:(unint64_t)count error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  indexCopy = index;
  if ([(NSArray *)self->_inverseBindPoseAttributes count]> count)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = self->_inverseBindPoseAttributes;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = *v30;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (([*(*(&v29 + 1) + 8 * i) validateWithPayloadSize:*size error:error] & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = [(NSArray *)self->_skinningParts count];
  if (v17 > [indexCopy count])
  {
    goto LABEL_14;
  }

  v20 = [(NSArray *)self->_skinningParts count];
  if (v20)
  {
    v21 = 0;
    v22 = v20 - 1;
    do
    {
      v23 = [(NSArray *)self->_skinningParts objectAtIndexedSubscript:v21];
      v24 = [indexCopy objectAtIndexedSubscript:v21];
      v25 = [resourceCopy objectAtIndexedSubscript:{objc_msgSend(v24, "unsignedLongLongValue")}];
      v18 = [v23 validateWithPayloadSize:size skeletonCount:-[NSArray count](self->_inverseBindPoseAttributes vertexCount:"count") error:{objc_msgSend(v25, "vertexCount"), error}];

      if (v22 == v21++)
      {
        v27 = 0;
      }

      else
      {
        v27 = v18;
      }
    }

    while ((v27 & 1) != 0);
  }

  else
  {
    v18 = 1;
  }

LABEL_15:

  return v18;
}

- (unint64_t)estimateContainerSize
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  if (self->_inverseBindPoseAttributes)
  {
    v5 = objc_opt_class();
    v6 = class_getInstanceSize(v5);
  }

  else
  {
    v6 = 0;
  }

  if (self->_skinningParts)
  {
    v7 = objc_opt_class();
    v8 = class_getInstanceSize(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSArray *)self->_inverseBindPoseAttributes count];
  v10 = [(NSArray *)self->_skinningParts count];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_inverseBindPoseAttributes;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  v13 = v6 + InstanceSize + v8 + 8 * v9 + 8 * v10;
  if (v12)
  {
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v13 += [*(*(&v25 + 1) + 8 * v15++) estimateContainerSize];
      }

      while (v12 != v15);
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_skinningParts;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v13 += [*(*(&v21 + 1) + 8 * v19++) estimateContainerSize];
      }

      while (v17 != v19);
      v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  return v13;
}

@end