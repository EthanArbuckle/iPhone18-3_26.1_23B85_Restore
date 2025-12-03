@interface REMeshSkinningPartDescriptor
- (BOOL)validateWithPayloadSize:(const void *)size skeletonCount:(unint64_t)count vertexCount:(unint64_t)vertexCount error:(id *)error;
- (REMeshSkinningPartDescriptor)initWithAttributeDescriptor:(const void *)descriptor payloadBuilder:(void *)builder;
- (REMeshSkinningPartDescriptor)initWithCoder:(id)coder;
- (REMeshSkinningPartDescriptor)initWithSkeletonIndexAndInfluences:(unsigned int)influences packedInfluence:(BOOL)influence influencePerVertex:(unsigned __int8)vertex skinningInfluences:(id)skinningInfluences influenceEndIndices:(id)indices;
- (unint64_t)estimateContainerSize;
- (void)addToSkinningModelBuilder:(void *)builder payloadBuffers:(const void *)buffers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMeshSkinningPartDescriptor

- (REMeshSkinningPartDescriptor)initWithAttributeDescriptor:(const void *)descriptor payloadBuilder:(void *)builder
{
  v13 = 0xA7268F0C3B45D55ELL;
  v7 = v14 = "skinningInfluences";
  v8 = v7;
  if (v13)
  {
    if (v13)
    {
    }
  }

  v13 = 0xF98D22D8F2059642;
  v9 = v14 = "influenceEndIndices";
  v10 = v9;
  if (v13)
  {
    if (v13)
    {
    }
  }

  v11 = [(REMeshSkinningPartDescriptor *)self initWithSkeletonIndexAndInfluences:*descriptor packedInfluence:*(descriptor + 4) influencePerVertex:*(descriptor + 5) skinningInfluences:v8 influenceEndIndices:v10];

  return v11;
}

- (void)addToSkinningModelBuilder:(void *)builder payloadBuffers:(const void *)buffers
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v23 = 0x7FFFFFFFLL;
  skinningInfluences = [(REMeshSkinningPartDescriptor *)self skinningInfluences];

  if (skinningInfluences)
  {
    v19 = 0xA7268F0C3B45D55ELL;
    v20 = "skinningInfluences";
    skinningInfluences2 = [(REMeshSkinningPartDescriptor *)self skinningInfluences];
    payloadOffset = [skinningInfluences2 payloadOffset];
    skinningInfluences3 = [(REMeshSkinningPartDescriptor *)self skinningInfluences];
    re::MeshPayloadBuffers::slice(buffers, 5, payloadOffset, [skinningInfluences3 bufferSize]);
    re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(v21, &v19, v17);
    if (v18 != -1)
    {
      (off_1F5CC8DB0[v18])(&v24, v17);
    }

    v18 = -1;

    if (v19)
    {
      if (v19)
      {
      }
    }
  }

  influenceEndIndices = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];

  if (influenceEndIndices)
  {
    v19 = 0xF98D22D8F2059642;
    v20 = "influenceEndIndices";
    influenceEndIndices2 = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];
    payloadOffset2 = [influenceEndIndices2 payloadOffset];
    influenceEndIndices3 = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];
    re::MeshPayloadBuffers::slice(buffers, 5, payloadOffset2, [influenceEndIndices3 bufferSize]);
    re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(v21, &v19, v17);
    if (v18 != -1)
    {
      (off_1F5CC8DB0[v18])(&v24, v17);
    }

    v18 = -1;

    if (v19)
    {
      if (v19)
      {
      }
    }
  }

  re::SkinningModelBuilder::addSkinnedMeshPartData(builder, [(REMeshSkinningPartDescriptor *)self skeletonIndex], [(REMeshSkinningPartDescriptor *)self packedInfluence], [(REMeshSkinningPartDescriptor *)self influencePerVertex], v21);
  re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v21);
}

- (REMeshSkinningPartDescriptor)initWithSkeletonIndexAndInfluences:(unsigned int)influences packedInfluence:(BOOL)influence influencePerVertex:(unsigned __int8)vertex skinningInfluences:(id)skinningInfluences influenceEndIndices:(id)indices
{
  skinningInfluencesCopy = skinningInfluences;
  indicesCopy = indices;
  v18.receiver = self;
  v18.super_class = REMeshSkinningPartDescriptor;
  v15 = [(REMeshSkinningPartDescriptor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_skeletonIndex = influences;
    v15->_packedInfluence = influence;
    v15->_influencePerVertex = vertex;
    objc_storeStrong(&v15->_skinningInfluences, skinningInfluences);
    objc_storeStrong(&v16->_influenceEndIndices, indices);
  }

  return v16;
}

- (REMeshSkinningPartDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"skeletonIndex"];
  self->_skeletonIndex = v5;
  self->_packedInfluence = [coderCopy decodeBoolForKey:@"packedInfluence"];
  v6 = [coderCopy decodeIntegerForKey:@"influencePerVertex"];
  self->_influencePerVertex = v6;
  if (HIDWORD(v5))
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 > 0xFF;
  }

  v8 = v7;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skinningInfluences"];
  skinningInfluences = self->_skinningInfluences;
  self->_skinningInfluences = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"influenceEndIndices"];
  influenceEndIndices = self->_influenceEndIndices;
  self->_influenceEndIndices = v11;

  if (v8)
    v14 = {;
    [coderCopy failWithError:v14];

    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_skeletonIndex forKey:@"skeletonIndex"];
  [coderCopy encodeBool:self->_packedInfluence forKey:@"packedInfluence"];
  [coderCopy encodeInt:self->_influencePerVertex forKey:@"influencePerVertex"];
  [coderCopy encodeObject:self->_skinningInfluences forKey:@"skinningInfluences"];
  [coderCopy encodeObject:self->_influenceEndIndices forKey:@"influenceEndIndices"];
}

- (BOOL)validateWithPayloadSize:(const void *)size skeletonCount:(unint64_t)count vertexCount:(unint64_t)vertexCount error:(id *)error
{
  if (self->_skeletonIndex >= count)
  {
    goto LABEL_15;
  }

  skinningInfluences = self->_skinningInfluences;
  if (!skinningInfluences)
  {
    v17 = @"REMeshSkinningPartDescriptor: is missing skinningInfuences";
    goto LABEL_12;
  }

  v11 = [(REAttributeDescriptor *)skinningInfluences validateWithPayloadSize:*(size + 5) error:error];
  if (v11)
  {
    influenceEndIndices = self->_influenceEndIndices;
    if (!influenceEndIndices || (v11 = [(REAttributeDescriptor *)influenceEndIndices validateWithPayloadSize:*(size + 5) error:error]))
    {
      packedInfluence = self->_packedInfluence;
      skinningInfluences = [(REMeshSkinningPartDescriptor *)self skinningInfluences];
      bufferSize = [skinningInfluences bufferSize];

      if (self->_influencePerVertex)
      {
        v16 = 2;
        if (!packedInfluence)
        {
          v16 = 3;
        }

        if (bufferSize >> v16 != self->_influencePerVertex * vertexCount)
        {
          v17 = @"REMeshSkinningPartDescriptor: incorrect influence count";
LABEL_12:
          LOBYTE(v11) = 0;
          return v11;
        }
      }

      else
      {
        influenceEndIndices = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];

        if (!influenceEndIndices)
        {
          v17 = @"REMeshSkinningPartDescriptor: is missing influenceEndIndices";
          goto LABEL_12;
        }

        influenceEndIndices2 = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];
        bufferSize2 = [influenceEndIndices2 bufferSize];

        if (vertexCount != bufferSize2 >> 2)
        {
          v17 = @"REMeshSkinningPartDescriptor: incorrect number of influenceEndIndices";
          goto LABEL_12;
        }
      }

LABEL_15:
      LOBYTE(v11) = 1;
    }
  }

  return v11;
}

- (unint64_t)estimateContainerSize
{
  v3 = objc_opt_class();
  v4 = class_getInstanceSize(v3) + 16;
  skinningInfluences = self->_skinningInfluences;
  if (skinningInfluences)
  {
    v4 += [(REAttributeDescriptor *)skinningInfluences estimateContainerSize];
  }

  influenceEndIndices = self->_influenceEndIndices;
  if (influenceEndIndices)
  {
    v4 += [(REAttributeDescriptor *)influenceEndIndices estimateContainerSize];
  }

  return v4;
}

@end