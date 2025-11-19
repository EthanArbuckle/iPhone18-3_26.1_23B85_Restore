@interface REMeshSkinningPartDescriptor
- (BOOL)validateWithPayloadSize:(const void *)a3 skeletonCount:(unint64_t)a4 vertexCount:(unint64_t)a5 error:(id *)a6;
- (REMeshSkinningPartDescriptor)initWithAttributeDescriptor:(const void *)a3 payloadBuilder:(void *)a4;
- (REMeshSkinningPartDescriptor)initWithCoder:(id)a3;
- (REMeshSkinningPartDescriptor)initWithSkeletonIndexAndInfluences:(unsigned int)a3 packedInfluence:(BOOL)a4 influencePerVertex:(unsigned __int8)a5 skinningInfluences:(id)a6 influenceEndIndices:(id)a7;
- (unint64_t)estimateContainerSize;
- (void)addToSkinningModelBuilder:(void *)a3 payloadBuffers:(const void *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMeshSkinningPartDescriptor

- (REMeshSkinningPartDescriptor)initWithAttributeDescriptor:(const void *)a3 payloadBuilder:(void *)a4
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

  v11 = [(REMeshSkinningPartDescriptor *)self initWithSkeletonIndexAndInfluences:*a3 packedInfluence:*(a3 + 4) influencePerVertex:*(a3 + 5) skinningInfluences:v8 influenceEndIndices:v10];

  return v11;
}

- (void)addToSkinningModelBuilder:(void *)a3 payloadBuffers:(const void *)a4
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v23 = 0x7FFFFFFFLL;
  v7 = [(REMeshSkinningPartDescriptor *)self skinningInfluences];

  if (v7)
  {
    v19 = 0xA7268F0C3B45D55ELL;
    v20 = "skinningInfluences";
    v8 = [(REMeshSkinningPartDescriptor *)self skinningInfluences];
    v9 = [v8 payloadOffset];
    v10 = [(REMeshSkinningPartDescriptor *)self skinningInfluences];
    re::MeshPayloadBuffers::slice(a4, 5, v9, [v10 bufferSize]);
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

  v12 = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];

  if (v12)
  {
    v19 = 0xF98D22D8F2059642;
    v20 = "influenceEndIndices";
    v13 = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];
    v14 = [v13 payloadOffset];
    v15 = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];
    re::MeshPayloadBuffers::slice(a4, 5, v14, [v15 bufferSize]);
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

  re::SkinningModelBuilder::addSkinnedMeshPartData(a3, [(REMeshSkinningPartDescriptor *)self skeletonIndex], [(REMeshSkinningPartDescriptor *)self packedInfluence], [(REMeshSkinningPartDescriptor *)self influencePerVertex], v21);
  re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v21);
}

- (REMeshSkinningPartDescriptor)initWithSkeletonIndexAndInfluences:(unsigned int)a3 packedInfluence:(BOOL)a4 influencePerVertex:(unsigned __int8)a5 skinningInfluences:(id)a6 influenceEndIndices:(id)a7
{
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = REMeshSkinningPartDescriptor;
  v15 = [(REMeshSkinningPartDescriptor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_skeletonIndex = a3;
    v15->_packedInfluence = a4;
    v15->_influencePerVertex = a5;
    objc_storeStrong(&v15->_skinningInfluences, a6);
    objc_storeStrong(&v16->_influenceEndIndices, a7);
  }

  return v16;
}

- (REMeshSkinningPartDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"skeletonIndex"];
  self->_skeletonIndex = v5;
  self->_packedInfluence = [v4 decodeBoolForKey:@"packedInfluence"];
  v6 = [v4 decodeIntegerForKey:@"influencePerVertex"];
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
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"skinningInfluences"];
  skinningInfluences = self->_skinningInfluences;
  self->_skinningInfluences = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"influenceEndIndices"];
  influenceEndIndices = self->_influenceEndIndices;
  self->_influenceEndIndices = v11;

  if (v8)
    v14 = {;
    [v4 failWithError:v14];

    v15 = 0;
  }

  else
  {
    v15 = self;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_skeletonIndex forKey:@"skeletonIndex"];
  [v4 encodeBool:self->_packedInfluence forKey:@"packedInfluence"];
  [v4 encodeInt:self->_influencePerVertex forKey:@"influencePerVertex"];
  [v4 encodeObject:self->_skinningInfluences forKey:@"skinningInfluences"];
  [v4 encodeObject:self->_influenceEndIndices forKey:@"influenceEndIndices"];
}

- (BOOL)validateWithPayloadSize:(const void *)a3 skeletonCount:(unint64_t)a4 vertexCount:(unint64_t)a5 error:(id *)a6
{
  if (self->_skeletonIndex >= a4)
  {
    goto LABEL_15;
  }

  skinningInfluences = self->_skinningInfluences;
  if (!skinningInfluences)
  {
    v17 = @"REMeshSkinningPartDescriptor: is missing skinningInfuences";
    goto LABEL_12;
  }

  v11 = [(REAttributeDescriptor *)skinningInfluences validateWithPayloadSize:*(a3 + 5) error:a6];
  if (v11)
  {
    influenceEndIndices = self->_influenceEndIndices;
    if (!influenceEndIndices || (v11 = [(REAttributeDescriptor *)influenceEndIndices validateWithPayloadSize:*(a3 + 5) error:a6]))
    {
      packedInfluence = self->_packedInfluence;
      v14 = [(REMeshSkinningPartDescriptor *)self skinningInfluences];
      v15 = [v14 bufferSize];

      if (self->_influencePerVertex)
      {
        v16 = 2;
        if (!packedInfluence)
        {
          v16 = 3;
        }

        if (v15 >> v16 != self->_influencePerVertex * a5)
        {
          v17 = @"REMeshSkinningPartDescriptor: incorrect influence count";
LABEL_12:
          LOBYTE(v11) = 0;
          return v11;
        }
      }

      else
      {
        v18 = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];

        if (!v18)
        {
          v17 = @"REMeshSkinningPartDescriptor: is missing influenceEndIndices";
          goto LABEL_12;
        }

        v19 = [(REMeshSkinningPartDescriptor *)self influenceEndIndices];
        v20 = [v19 bufferSize];

        if (a5 != v20 >> 2)
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