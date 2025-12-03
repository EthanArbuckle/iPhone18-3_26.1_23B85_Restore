@interface REMeshPartDescriptor
+ (NSArray)coreAttributeNames;
- (BOOL)validateAttribute:(id)attribute withName:(id)name payloadSize:(FixedInlineArray<unsigned)long required:(8UL> *)required error:(BOOL)error;
- (BOOL)validateWithPayloadSize:(const void *)size error:(id *)error;
- (MeshPart)meshPartWithPayloadBuffer:(SEL)buffer partIndexInModel:(const void *)model;
- (REMeshPartDescriptor)initWithCoder:(id)coder;
- (REMeshPartDescriptor)initWithMeshAssetPart:(const void *)part partTransform:(id *)transform payloadBuilder:(void *)builder;
- (REMeshPartDescriptor)initWithName:(__n128)name vertexCount:(__n128)count indexCount:(__n128)indexCount instanceCount:(__n128)instanceCount attributes:(__n128)attributes materialIndex:(uint64_t)index boundingBoxMin:(void *)min boundingBoxMax:(unsigned int)self0 doubleSidedFlag:(unsigned int)self1 windingOrderIsCCW:(unsigned int)self2 transform:(void *)self3 preSplitVertexCount:(unsigned int)self4 patchCount:(unsigned __int8)self5;
- (REMeshPartDescriptor)initWithResourceDefinition:(const void *)definition meshPart:(const void *)part payloadBuilder:(void *)builder;
- (unint64_t)estimateContainerSize;
- (unint64_t)indexBufferSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMeshPartDescriptor

- (REMeshPartDescriptor)initWithMeshAssetPart:(const void *)part partTransform:(id *)transform payloadBuilder:(void *)builder
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(part + 10)];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = *(part + 2);
  if (!v9)
  {
LABEL_12:
    v19 = *(part + 58);
    if (v19)
    {
      v20 = 0;
      v21 = *(part + 27);
      while (1)
      {
        v22 = *v21;
        v21 += 20;
        if (v22 < 0)
        {
          break;
        }

        if (v19 == ++v20)
        {
          LODWORD(v20) = *(part + 58);
          break;
        }
      }
    }

    else
    {
      LODWORD(v20) = 0;
    }

    if (v20 == v19)
    {
LABEL_39:
      v33 = *(part + 195) == 1;
      if (!*(part + 194))
      {
        v33 = 2;
      }

      if (*(part + 192))
      {
        v34 = *(part + 193);
      }

      else
      {
        v34 = 2;
      }

      HIDWORD(v38) = *(part + 15);
      LODWORD(v39) = *(part + 16);
      BYTE1(v38) = v33;
      LOBYTE(v38) = v34;
      v35 = [(REMeshPartDescriptor *)self initWithName:v40 vertexCount:*(part + 12) indexCount:*(part + 10) instanceCount:*(part + 13) attributes:v8 materialIndex:*(part + 28) boundingBoxMin:*(part + 12) boundingBoxMax:*(part + 14) doubleSidedFlag:*transform windingOrderIsCCW:*(transform + 2) transform:*(transform + 4) preSplitVertexCount:*(transform + 6) patchCount:v38, v39];
      self = v35;
      goto LABEL_45;
    }

    v23 = *(part + 27);
    while (1)
    {
      v24 = v23 + 80 * v20;
      if (*(v24 + 16))
      {
        v25 = *(v24 + 24);
      }

      else
      {
        v25 = v24 + 17;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
      if (*(v24 + 48))
      {
        v27 = *(v24 + 56);
      }

      else
      {
        v27 = v24 + 49;
      }

      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v27];
      v29 = [v8 objectForKeyedSubscript:v26];
      if (!v29)
      {
        v30 = [v8 objectForKeyedSubscript:v28];
        v31 = v30 == 0;

        if (v31)
        {
          goto LABEL_30;
        }

        v29 = [v8 objectForKeyedSubscript:v28];
        [v8 setObject:v29 forKeyedSubscript:v26];
      }

LABEL_30:
      if (*(part + 58) <= (v20 + 1))
      {
        v32 = v20 + 1;
      }

      else
      {
        v32 = *(part + 58);
      }

      v23 = *(part + 27);
      while (v32 - 1 != v20)
      {
        LODWORD(v20) = v20 + 1;
        if ((*(v23 + 80 * v20) & 0x80000000) != 0)
        {
          goto LABEL_38;
        }
      }

      LODWORD(v20) = v32;
LABEL_38:
      if (v20 == v19)
      {
        goto LABEL_39;
      }
    }
  }

  v10 = *(part + 4);
  v11 = 80 * v9;
  while (1)
  {
    if (*(v10 + 8))
    {
      v12 = *(v10 + 16);
    }

    else
    {
      v12 = v10 + 9;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    v14 = [v8 objectForKeyedSubscript:v13];
    v15 = v14 == 0;

    if (!v15)
    {
      v17 = *re::assetTypesLogObjects(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = v40;
        v44 = 2112;
        v45 = v13;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Two attribute buffers in the same mesh part (%@) have the same name (%@)", buf, 0x16u);
      }

      goto LABEL_11;
    }

    v18 = [[REMeshAttributeDescriptor alloc] initWithMeshAssetBuffer:v10 payloadBuilder:builder];
    if (!v18)
    {
      break;
    }

    [v8 setObject:v18 forKeyedSubscript:v13];

LABEL_11:
    v10 += 80;
    v11 -= 80;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v37 = *re::assetTypesLogObjects(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v43 = v13;
    _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "Failed to create REMeshAttributeDescriptor for attribute buffer %@", buf, 0xCu);
  }

  v35 = 0;
LABEL_45:

  return v35;
}

- (REMeshPartDescriptor)initWithResourceDefinition:(const void *)definition meshPart:(const void *)part payloadBuilder:(void *)builder
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy = self;
  v10 = *(definition + 7);
  v11 = *(definition + 5);
  v12 = *(part + 4);
  v13 = *(part + 2);
  v14 = v9;
  if (v46)
  {
    v15 = v47;
    v16 = &v47[7 * v46];
    while (1)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v15];
      v19 = *v15;
      if (*v15)
      {
        v20 = *v19;
        if (*v19)
        {
          v21 = v19[1];
          if (v21)
          {
            v22 = (v19 + 2);
            do
            {
              v20 = 31 * v20 + v21;
              v23 = *v22++;
              v21 = v23;
            }

            while (v23);
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v48[0] = 2 * v20;
      v48[1] = v19;
      v24 = re::bufferIdentifierForMeshAttribute(v48, v17);
      v26 = v24;
      if (v48[0])
      {
        if (v48[0])
        {
        }
      }

      v27 = v26 >= 4 ? 64 : 8;
      v28 = v15[4];
      if (!v28)
      {
        break;
      }

      v29 = v15[5];
      if (v28 != 1)
      {
        v31 = &v29[2 * v28];
        v32 = v29 + 2;
        do
        {
          v32 += 2;
        }

        while (v32 != v31);
      }

      v33 = [[REMeshAttributeDescriptor alloc] initWithVertexAttributeDescriptor:v15 payloadOffset:v30 count:*(v15 + 4)];
      v9 = v14;
      [(_anonymous_namespace_ *)v14 setObject:v33 forKeyedSubscript:v18];

      v15 += 7;
      if (v15 == v16)
      {
        goto LABEL_21;
      }
    }

    re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(part + 114))
    {
      v34 = *(part + 115) == 1;
    }

    else
    {
      v34 = 2;
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"indexTriangles"];
    v36 = [(_anonymous_namespace_ *)v9 objectForKeyedSubscript:v35];

    if (v36)
    {
      [v36 count];
    }

    if (*(part + 6))
    {
      v37 = *(part + 7);
    }

    else
    {
      v37 = part + 49;
    }

    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v37];
    if (*(part + 112))
    {
      v39 = *(part + 113);
    }

    else
    {
      v39 = 2;
    }

    HIDWORD(v42) = *(part + 30);
    LODWORD(v43) = 0;
    BYTE1(v42) = v34;
    LOBYTE(v42) = v39;
    v40 = [REMeshPartDescriptor initWithName:selfCopy vertexCount:"initWithName:vertexCount:indexCount:instanceCount:attributes:materialIndex:boundingBoxMin:boundingBoxMax:doubleSidedFlag:windingOrderIsCCW:transform:preSplitVertexCount:patchCount:" indexCount:v38 instanceCount:*(part + 10) attributes:*(part + 12) materialIndex:*MEMORY[0x1E69E9B18] boundingBoxMin:*(MEMORY[0x1E69E9B18] + 16) boundingBoxMax:*(MEMORY[0x1E69E9B18] + 32) doubleSidedFlag:*(MEMORY[0x1E69E9B18] + 48) windingOrderIsCCW:v42 transform:v43 preSplitVertexCount:? patchCount:?];

    re::FixedArray<re::MeshVertexAttributeBuffers::Attribute>::deinit(&v45);
    return v40;
  }

  return result;
}

- (MeshPart)meshPartWithPayloadBuffer:(SEL)buffer partIndexInModel:(const void *)model
{
  v72 = *MEMORY[0x1E69E9840];
  result = [(REMeshPartDescriptor *)self materialIndex];
  if (result < 0x10000)
  {
    v46 = result;
    v69 = 0;
    v66[1] = 0;
    v67 = 0;
    v68 = 0;
    re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v66, 0);
    ++v68;
    if ([(REMeshPartDescriptor *)self isIndexed])
    {
      indexType = [(REMeshPartDescriptor *)self indexType];
      if (indexType == 1)
      {
        v12 = 36;
      }

      else
      {
        v12 = 0;
      }

      if (indexType)
      {
        v13 = v12;
      }

      else
      {
        v13 = 49;
      }

      LOWORD(v63[0]) = v13;
      re::MeshPayloadBuffers::slice(model, 4, [(REMeshPartDescriptor *)self indexPayloadOffset], [(REMeshPartDescriptor *)self indexBufferSize]);
      v65 = 0xFFFFFFFF00000000;
      re::DynamicArray<re::NamedVertexBuffer>::add(v66, v62);
      if (v64 != -1)
      {
        (off_1F5CC8DB0[v64])(v53, v63 + 8);
      }

      v64 = -1;
      if (*&v62[0] && (BYTE8(v62[0]) & 1) != 0)
      {
        (*(**&v62[0] + 40))();
      }
    }

    v45 = a5;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v58 = 0u;
    v14 = +[REMeshPartDescriptor coreAttributeNames];
    v15 = [v14 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v15)
    {
      v16 = *v59;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v58 + 1) + 8 * i);
          coreAttributes = [(REMeshPartDescriptor *)self coreAttributes];
          v20 = [coreAttributes objectForKeyedSubscript:v18];

          if (v20)
          {
            v21 = v18;
            [v20 addBufferToArray:v66 name:objc_msgSend(v18 payloadBuffer:{"UTF8String"), model}];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v15);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    customAttributes = [(REMeshPartDescriptor *)self customAttributes];
    v23 = [customAttributes countByEnumeratingWithState:&v54 objects:v70 count:16];
    if (v23)
    {
      v24 = *v55;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(customAttributes);
          }

          v26 = *(*(&v54 + 1) + 8 * j);
          customAttributes2 = [(REMeshPartDescriptor *)self customAttributes];
          v28 = [customAttributes2 objectForKeyedSubscript:v26];

          v29 = v26;
          [v28 addBufferToArray:v66 name:objc_msgSend(v26 payloadBuffer:{"UTF8String"), model}];
        }

        v23 = [customAttributes countByEnumeratingWithState:&v54 objects:v70 count:16];
      }

      while (v23);
    }

    [(REMeshPartDescriptor *)self boundingBoxMin];
    v44 = v30;
    [(REMeshPartDescriptor *)self boundingBoxMax];
    v53[0] = v44;
    v53[1] = v31;
    v49[0] = 0;
    v50 = 0;
    v52 = 0;
    if ([(REMeshPartDescriptor *)self doubleSidedFlag]!= 2)
    {
      v49[0] = 1;
      v49[1] = [(REMeshPartDescriptor *)self doubleSidedFlag]== 1;
    }

    if ([(REMeshPartDescriptor *)self windingOrderIsCCW]!= 2)
    {
      v50 = 1;
      v51 = [(REMeshPartDescriptor *)self windingOrderIsCCW]== 1;
    }

    name = [(REMeshPartDescriptor *)self name];
    v33 = name;
    uTF8String = [name UTF8String];
    v47 = 0;
    v48 = &str_67;
    v35 = v69;
    v36 = v67;
    indexCount = [(REMeshPartDescriptor *)self indexCount];
    vertexCount = [(REMeshPartDescriptor *)self vertexCount];
    LODWORD(uTF8String) = [(REMeshPartDescriptor *)self instanceCount];
    [(REMeshPartDescriptor *)self transform];
    v62[0] = v39;
    v62[1] = v40;
    v63[0] = v41;
    v63[1] = v42;
    v43 = re::MeshPart::MeshPart(retstr, &v47, v46, v35, v36, indexCount, vertexCount, uTF8String, v53, v45, v62, v49, [(REMeshPartDescriptor *)self preSplitVertexCount], [(REMeshPartDescriptor *)self patchCount]);
    if (v47)
    {
      if (v47)
      {
      }
    }

    v47 = 0;
    v48 = &str_67;

    return re::DynamicArray<re::NamedVertexBuffer>::deinit(v66);
  }

  else
  {
    *&retstr->var0.var3.var4.var2 = 0u;
    *&retstr->var0.var3.var4.var4 = 0u;
    *&retstr->var0.var3.var3.var1 = 0u;
    *&retstr->var0.var3.var4.var0 = 0u;
    *&retstr->var0.var3.var3.var0.var1 = 0u;
    retstr->var0.var3.var3.var0.var3 = 0u;
    *&retstr->var0.var3.var2.var2 = 0u;
    *&retstr->var0.var3.var2.var4 = 0u;
    *&retstr->var0.var3.var1.var3 = 0u;
    *&retstr->var0.var3.var2.var0 = 0u;
    *&retstr->var0.var3.var0.var7 = 0u;
    *&retstr->var0.var3.var1.var1 = 0u;
    *&retstr->var0.var3.var0.var3 = 0u;
    *&retstr->var0.var3.var0.var5 = 0u;
    *&retstr->var0.var2.var2 = 0u;
    *&retstr->var0.var3.var0.var1 = 0u;
    *&retstr->var0.var0 = 0u;
    *&retstr->var0.var2.var0 = 0u;
    retstr->var0.var3.var3.var0.var2.var1 = 1;
    retstr->var0.var3.var3.var0.var3.var0[1] = 0;
    retstr->var0.var3.var3.var1 = 0;
    retstr->var0.var3.var3.var0.var3.var1.var0 = 0;
    retstr->var0.var3.var3.var2 = 0;
    retstr->var0.var3.var4.var1 = 0;
    retstr->var0.var3.var4.var2 = 0;
    retstr->var0.var3.var4.var0 = 0;
    retstr->var0.var3.var4.var3 = 0;
    *&retstr->var0.var3.var4.var4 = 0u;
    *&retstr->var0.var3.var5.var1 = 0u;
    *&retstr->var0.var3.var5.var1 = 0u;
    *&retstr->var0.var3.var5.var3 = 0u;
    retstr->var0.var3.var5.var3 = 0;
    *&retstr->var0.var3.var6 = 0;
    retstr->var1.var0 = 0;
    retstr->var1.var1 = 0;
    retstr->var1.var2 = 0;
    *&retstr->var2.var0.var0.var0 = xmmword_1E3047670;
    *&retstr->var2.var0.var5[4] = xmmword_1E3047680;
    *&retstr->var2.var0.var5[8] = xmmword_1E30476A0;
    *&retstr->var2.var0.var5[12] = xmmword_1E30474D0;
    v10.i64[0] = 0x7F0000007FLL;
    v10.i64[1] = 0x7F0000007FLL;
    *&retstr->var3.var0.var0.var0.var0 = vnegq_f32(v10);
    *&retstr->var3.var1.var0.var1[1] = v10;
    retstr->var8.var0[4] = 0;
    *&retstr->var6 = 0;
    *&retstr->var8.var0[6] = 0;
    retstr->var9.var1 = 0;
    retstr->var10 = &str_67;
    *&retstr->var13 = 0;
    LOBYTE(retstr->var15.var0) = 3;
    *(&retstr->var15 + 1) = 0x180197E00000001;
    *&retstr->var8.var0[8] = -1;
    *&retstr->var8.var0[16] = -1;
    *(&retstr->var8 + 1) = -1;
  }

  return result;
}

+ (NSArray)coreAttributeNames
{
  if (qword_1EE19BB80 != -1)
  {
    dispatch_once(&qword_1EE19BB80, &__block_literal_global_2);
  }

  v3 = _MergedGlobals_104;

  return v3;
}

void __42__REMeshPartDescriptor_coreAttributeNames__block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexPosition"];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"vertexUV", v0}];
  v7[1] = v1;
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexNormal"];
  v7[2] = v2;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexBitangent"];
  v7[3] = v3;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexColor"];
  v7[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v6 = _MergedGlobals_104;
  _MergedGlobals_104 = v5;
}

- (REMeshPartDescriptor)initWithName:(__n128)name vertexCount:(__n128)count indexCount:(__n128)indexCount instanceCount:(__n128)instanceCount attributes:(__n128)attributes materialIndex:(uint64_t)index boundingBoxMin:(void *)min boundingBoxMax:(unsigned int)self0 doubleSidedFlag:(unsigned int)self1 windingOrderIsCCW:(unsigned int)self2 transform:(void *)self3 preSplitVertexCount:(unsigned int)self4 patchCount:(unsigned __int8)self5
{
  v62 = *MEMORY[0x1E69E9840];
  minCopy = min;
  transformCopy = transform;
  v58.receiver = self;
  v58.super_class = REMeshPartDescriptor;
  v24 = [(REMeshPartDescriptor *)&v58 init];
  if (!v24)
  {
LABEL_18:
    v42 = v24;
    goto LABEL_19;
  }

  v25 = [minCopy copy];
  vertexCountCopy = vertexCount;
  name = v24->_name;
  v24->_name = v25;

  v27 = [transformCopy mutableCopy];
  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"indexTriangles"];
  v29 = objc_claimAutoreleasedReturnValue();

  v24->_indexPayloadOffset = 0;
  v24->_indexCount = 0;
  v24->_isIndexed = 0;
  v24->_indexType = 0;
  if (!v29)
  {
LABEL_8:
    v24->_vertexCount = max;
    v24->_instanceCount = w;
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v34 = +[REMeshPartDescriptor coreAttributeNames];
    v35 = [v34 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v35)
    {
      v36 = *v55;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v39 = v38 = *(*(&v54 + 1) + 8 * i);
          if (v39)
          {
            [v33 setObject:v39 forKeyedSubscript:v38];
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v35);
    }

    objc_storeStrong(&v24->_coreAttributes, v33);
    v40 = [v27 copy];
    customAttributes = v24->_customAttributes;
    v24->_customAttributes = v40;

    v24->_materialIndex = vertexCountCopy;
    *v24->_boundingBoxMin = a2;
    *v24->_boundingBoxMax = name;
    v24->_doubleSidedFlag = patchCount;
    v24->_windingOrderIsCCW = a16;
    *&v24[1].super.isa = count;
    *&v24[1]._indexCount = indexCount;
    *&v24[1]._instanceCount = instanceCount;
    *&v24[1]._indexType = attributes;
    v24->_preSplitVertexCount = a17;
    v24->_patchCount = a18;

    goto LABEL_18;
  }

  format = [v29 format];
  payloadOffset = [v29 payloadOffset];
  v24->_indexPayloadOffset = payloadOffset;
  v24->_indexCount = flag;
  v24->_isIndexed = 1;
  if (format == 36)
  {
    v32 = 1;
    goto LABEL_7;
  }

  if (format == 49)
  {
    v32 = 0;
LABEL_7:
    v24->_indexType = v32;
    goto LABEL_8;
  }

  v44 = *re::assetTypesLogObjects(payloadOffset);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    v61 = format;
    _os_log_fault_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_FAULT, "Unknown MTLVertexFormat (%d) for index buffer", buf, 8u);
  }

  v42 = 0;
LABEL_19:

  return v42;
}

- (REMeshPartDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v62 = self->_name;
  v64 = [coderCopy decodeIntegerForKey:@"vertexCount"];
  self->_vertexCount = v64;
  v63 = [coderCopy decodeIntegerForKey:@"instanceCount"];
  self->_instanceCount = v63;
  v7 = [coderCopy decodeIntegerForKey:@"preSplitVertexCount"];
  self->_preSplitVertexCount = v7;
  v8 = [coderCopy decodeIntegerForKey:@"patchCount"];
  self->_patchCount = v8;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"coreAttributes"];
  coreAttributes = self->_coreAttributes;
  self->_coreAttributes = v13;

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"customAttributes"];
  customAttributes = self->_customAttributes;
  self->_customAttributes = v19;

  v21 = [coderCopy decodeIntegerForKey:@"indexPayloadOffset"];
  self->_indexPayloadOffset = v21;
  v22 = [coderCopy decodeIntegerForKey:@"indexCount"];
  self->_indexCount = v22;
  self->_isIndexed = [coderCopy decodeBoolForKey:@"isIndexed"];
  v23 = validateMTLIndexType([coderCopy decodeIntegerForKey:@"indexType"], &self->_indexType);
  if (v62)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [coderCopy decodeIntegerForKey:@"materialIndex"];
  *self->_boundingBoxMin = 0;
  self->_materialIndex = v25;
  v26 = (v25 | v21 | v8 | v7 | v63 | v64 | v22) >> 32 != 0;
  *&self->_boundingBoxMin[8] = 0;
  [coderCopy decodeFloatForKey:@"boundingBoxMin.x"];
  *self->_boundingBoxMin = v27;
  [coderCopy decodeFloatForKey:@"boundingBoxMin.y"];
  *&self->_boundingBoxMin[4] = v28;
  [coderCopy decodeFloatForKey:@"boundingBoxMin.z"];
  *self->_boundingBoxMax = 0;
  *&self->_boundingBoxMin[8] = v29;
  *&self->_boundingBoxMax[8] = 0;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.x"];
  *self->_boundingBoxMax = v30;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.y"];
  *&self->_boundingBoxMax[4] = v31;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.z"];
  *&self->_boundingBoxMax[8] = v32;
  v33 = validateMeshPartOptionalFlag([coderCopy decodeIntegerForKey:@"doubleSidedFlag"], &self->_doubleSidedFlag);
  v34 = validateMeshPartOptionalFlag([coderCopy decodeIntegerForKey:@"windingOrderIsCCW"], &self->_windingOrderIsCCW);
  v65 = 0;
  v35 = [coderCopy decodeBytesForKey:@"transform" returnedLength:&v65];
  if (v65 != 64)
  {
    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v37 = 0;
  v38 = *v35;
  v39 = v35[1];
  v40 = vneg_f32(0x7F0000007FLL);
  LODWORD(v41) = HIDWORD(*v35);
  if ((v35->u32[0] & 0x7FFFFFFF) <= 0x7F7FFFFF)
  {
    v42 = vcge_s32((*&vext_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL), 4uLL) & 0x7FFFFFFF7FFFFFFFLL), v40);
    if ((v42.i8[0] & 1) == 0 && (v42.i8[4] & 1) == 0)
    {
      v37 = (LODWORD(v41) & 0x7FFFFFFFu) < 0x7F800000;
    }
  }

  v43 = 0;
  v44 = v35[2];
  if ((v39.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v45 = vcge_s32((vextq_s8(v39, v39, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL), v40);
    if ((v45.i8[0] & 1) == 0 && (v45.i8[4] & 1) == 0)
    {
      v43 = (v39.i32[3] & 0x7FFFFFFFu) < 0x7F800000;
    }
  }

  v46 = 0;
  v47 = v35[3];
  v48 = vneg_f32(0x7F0000007FLL);
  if ((v44.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v49 = vcge_s32((vextq_s8(v44, v44, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL), v48);
    if ((v49.i8[0] & 1) == 0 && (v49.i8[4] & 1) == 0)
    {
      v46 = (v44.i32[3] & 0x7FFFFFFFu) < 0x7F800000;
    }
  }

  v50 = 0;
  if ((v47.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v51 = vcge_s32((vextq_s8(v47, v47, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL), v48);
    if ((v51.i8[0] & 1) == 0 && (v51.i8[4] & 1) == 0)
    {
      v50 = (v47.i32[3] & 0x7FFFFFFFu) < 0x7F800000;
    }
  }

  v52 = v41 == 0.0;
  v53 = fabsf(v41);
  if (v53 < ((v53 + 1.0) * 0.00001))
  {
    v52 = 1;
  }

  v54 = *&v39.i32[3] == 0.0;
  v55 = fabsf(*&v39.i32[3]);
  if (v55 < ((v55 + 1.0) * 0.00001))
  {
    v54 = 1;
  }

  v56 = *&v44.i32[3] == 0.0;
  v57 = fabsf(*&v44.i32[3]);
  if (v57 < ((v57 + 1.0) * 0.00001))
  {
    v56 = 1;
  }

  if (*&v47.i32[3] != 1.0)
  {
    v56 = (fabsf(*&v47.i32[3] + -1.0) < (((fabsf(*&v47.i32[3]) + 1.0) + 1.0) * 0.00001)) & v56;
  }

  v58 = v56 & v54 & (v52 && v50) & (v46 && v43 && v37);
  if ((v58 & 1) == 0)
  {
    *&self[1]._instanceCount = 0u;
    *&self[1]._indexType = 0u;
    *&self[1].super.isa = 0u;
    *&self[1]._indexCount = 0u;
    if (!v26)
    {
      goto LABEL_36;
    }

    v59 = LABEL_35:;
    [coderCopy failWithError:v59];
LABEL_39:

    selfCopy = 0;
    goto LABEL_40;
  }

  *&self[1].super.isa = v38;
  *&self[1]._indexCount = v39;
  *&self[1]._instanceCount = v44;
  *&self[1]._indexType = v47;
  if (v26)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (((v33 && v34 && v24) & v58 & 1) == 0)
  {
    v59 = LABEL_38:;
    [coderCopy failWithError:v59];
    goto LABEL_39;
  }

  selfCopy = self;
LABEL_40:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_vertexCount forKey:@"vertexCount"];
  [coderCopy encodeInteger:self->_instanceCount forKey:@"instanceCount"];
  [coderCopy encodeInteger:self->_preSplitVertexCount forKey:@"preSplitVertexCount"];
  [coderCopy encodeInteger:self->_patchCount forKey:@"patchCount"];
  [coderCopy encodeObject:self->_coreAttributes forKey:@"coreAttributes"];
  [coderCopy encodeObject:self->_customAttributes forKey:@"customAttributes"];
  [coderCopy encodeInteger:self->_indexPayloadOffset forKey:@"indexPayloadOffset"];
  [coderCopy encodeInteger:self->_indexCount forKey:@"indexCount"];
  [coderCopy encodeBool:self->_isIndexed forKey:@"isIndexed"];
  [coderCopy encodeInteger:self->_indexType forKey:@"indexType"];
  [coderCopy encodeInteger:self->_materialIndex forKey:@"materialIndex"];
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
  [coderCopy encodeInteger:self->_doubleSidedFlag forKey:@"doubleSidedFlag"];
  [coderCopy encodeInteger:self->_windingOrderIsCCW forKey:@"windingOrderIsCCW"];
  [coderCopy encodeBytes:&self[1] length:64 forKey:@"transform"];
}

- (BOOL)validateAttribute:(id)attribute withName:(id)name payloadSize:(FixedInlineArray<unsigned)long required:(8UL> *)required error:(BOOL)error
{
  errorCopy = error;
  attributeCopy = attribute;
  nameCopy = name;
  v14 = nameCopy;
  if (!attributeCopy)
  {
    if (errorCopy)
    {
LABEL_27:
      v27 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  uTF8String = [nameCopy UTF8String];
  if (uTF8String)
  {
    v17 = *uTF8String;
    if (*uTF8String)
    {
      v18 = uTF8String[1];
      if (v18)
      {
        v19 = (uTF8String + 2);
        do
        {
          v17 = 31 * v17 + v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v29[0] = 2 * v17;
  v29[1] = uTF8String;
  v21 = re::bufferIdentifierForMeshAttribute(v29, v16);
  v22 = v21;
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  if (([attributeCopy validateWithPayloadSize:required->var0[v22] error:a7] & 1) == 0)
  {
    goto LABEL_27;
  }

  stepFunction = [attributeCopy stepFunction];
  if (stepFunction == 3)
  {
    v25 = [attributeCopy count];
    patchCount = self->_patchCount;
  }

  else
  {
    if (stepFunction != 1)
    {
      if (stepFunction)
      {
        v24 = @"REMeshAttributeDescriptor: unsupported vertex step function";
        goto LABEL_26;
      }

      if (![attributeCopy count])
      {
        v24 = @"REMeshAttributeDescriptor: vertex count is 0";
LABEL_26:
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v25 = [attributeCopy count];
    patchCount = self->_vertexCount;
  }

  if (v25 < patchCount)
  {
    v24 = @"REMeshAttributeDescriptor: attribute buffer is too small";
    goto LABEL_26;
  }

LABEL_24:
  v27 = 1;
LABEL_28:

  return v27;
}

- (BOOL)validateWithPayloadSize:(const void *)size error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->_isIndexed)
  {
    if (self->_indexCount == -1)
    {
      v8 = @"REMeshPartDescriptor: index count is UINT32_MAX";
    }

    else
    {
      indexPayloadOffset = self->_indexPayloadOffset;
      indexBufferSize = [(REMeshPartDescriptor *)self indexBufferSize];
      if (!__CFADD__(indexPayloadOffset, indexBufferSize))
      {
        v9 = *(size + 4);
        if (v9 > indexPayloadOffset && indexPayloadOffset + indexBufferSize <= v9)
        {
          goto LABEL_9;
        }
      }

      v8 = @"REMeshPartDescriptor: index buffer payload range is invalid";
    }

LABEL_13:
    return 0;
  }

LABEL_9:
  if (self->_vertexCount + 1 <= 1)
  {
    v8 = @"REMeshPartDescriptor: vertex count must be between 1 and UINT32_MAX";
    goto LABEL_13;
  }

  if (self->_instanceCount + 1 <= 1)
  {
    v8 = @"REMeshPartDescriptor: instance count must be between 1 and UINT32_MAX";
    goto LABEL_13;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = +[REMeshPartDescriptor coreAttributeNames];
  v11 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v11)
  {
    v12 = *v44;
    LOBYTE(v13) = 1;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexPosition"];
        v17 = [v15 isEqualToString:v16];

        if (v13)
        {
          v18 = [(NSDictionary *)self->_coreAttributes objectForKeyedSubscript:v15];
          v19 = *(size + 1);
          v39 = *size;
          v40 = v19;
          v20 = *(size + 3);
          v41 = *(size + 2);
          v42 = v20;
          v13 = [(REMeshPartDescriptor *)self validateAttribute:v18 withName:v15 payloadSize:&v39 required:v17 error:error];
        }

        else
        {
          v13 = 0;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 1;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obja = self->_customAttributes;
  v21 = [(NSDictionary *)obja countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v21)
  {
    v22 = *v36;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(obja);
        }

        v24 = *(*(&v35 + 1) + 8 * j);
        v25 = +[REMeshPartDescriptor coreAttributeNames];
        v26 = [v25 containsObject:v24];

        if ((v26 & v13) == 1)
        {
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"REMeshPartDescriptor: custom attribute %@ is also in core attributes list", v24];

          v28 = 0;
        }

        else
        {
          v28 = (v26 ^ 1) & v13;
        }

        v29 = [(NSDictionary *)self->_customAttributes objectForKeyedSubscript:v24];
        if (v28)
        {
          v30 = *(size + 1);
          v39 = *size;
          v40 = v30;
          v31 = *(size + 3);
          v41 = *(size + 2);
          v42 = v31;
          v13 = [(REMeshPartDescriptor *)self validateAttribute:v29 withName:v24 payloadSize:&v39 required:1 error:error];
        }

        else
        {
          v13 = 0;
        }
      }

      v21 = [(NSDictionary *)obja countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v21);
  }

  if (!v13)
  {
    return 0;
  }

  if (self->_materialIndex >= 0xFFFF)
  {
    return 0;
  }

  return 1;
}

- (unint64_t)indexBufferSize
{
  indexType = self->_indexType;
  if (!indexType)
  {
    v3 = 2;
    return v3 * self->_indexCount;
  }

  if (indexType == 1)
  {
    v3 = 4;
    return v3 * self->_indexCount;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid index type: %d", "false", "[REMeshPartDescriptor indexBufferSize]", 684, indexType);
  result = _os_crash();
  __break(1u);
  return result;
}

- (unint64_t)estimateContainerSize
{
  v64 = *MEMORY[0x1E69E9840];
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

  if (self->_coreAttributes)
  {
    v9 = objc_opt_class();
    v10 = class_getInstanceSize(v9);
    coreAttributes = self->_coreAttributes;
  }

  else
  {
    coreAttributes = 0;
    v10 = 0;
  }

  v12 = [(NSDictionary *)coreAttributes count];
  v13 = [(NSDictionary *)self->_coreAttributes count];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  allKeys = [(NSDictionary *)self->_coreAttributes allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v56 objects:v63 count:16];
  v16 = v8 + InstanceSize + v10 + 8 * v12 + 8 * v13;
  if (v15)
  {
    v17 = *v57;
    do
    {
      v18 = 0;
      do
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v56 + 1) + 8 * v18);
        if (v19)
        {
          v20 = objc_opt_class();
          v16 += class_getInstanceSize(v20);
          v21 = [v19 lengthOfBytesUsingEncoding:4] + 1;
        }

        else
        {
          v21 = 0;
        }

        v16 += v21;
        ++v18;
      }

      while (v15 != v18);
      v15 = [allKeys countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v15);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  allValues = [(NSDictionary *)self->_coreAttributes allValues];
  v23 = [allValues countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v23)
  {
    v24 = *v53;
    do
    {
      v25 = 0;
      do
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(allValues);
        }

        v16 += [*(*(&v52 + 1) + 8 * v25++) estimateContainerSize];
      }

      while (v23 != v25);
      v23 = [allValues countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v23);
  }

  if (self->_customAttributes)
  {
    v26 = objc_opt_class();
    v27 = class_getInstanceSize(v26);
    customAttributes = self->_customAttributes;
  }

  else
  {
    customAttributes = 0;
    v27 = 0;
  }

  v29 = [(NSDictionary *)customAttributes count];
  v30 = [(NSDictionary *)self->_customAttributes count];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys2 = [(NSDictionary *)self->_customAttributes allKeys];
  v32 = [allKeys2 countByEnumeratingWithState:&v48 objects:v61 count:16];
  v33 = v27 + v16 + 8 * v29 + 8 * v30;
  if (v32)
  {
    v34 = *v49;
    do
    {
      v35 = 0;
      do
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(allKeys2);
        }

        v36 = *(*(&v48 + 1) + 8 * v35);
        if (v36)
        {
          v37 = objc_opt_class();
          v33 += class_getInstanceSize(v37);
          v38 = [v36 lengthOfBytesUsingEncoding:4] + 1;
        }

        else
        {
          v38 = 0;
        }

        v33 += v38;
        ++v35;
      }

      while (v32 != v35);
      v32 = [allKeys2 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v32);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  allValues2 = [(NSDictionary *)self->_customAttributes allValues];
  v40 = [allValues2 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v40)
  {
    v41 = *v45;
    do
    {
      v42 = 0;
      do
      {
        if (*v45 != v41)
        {
          objc_enumerationMutation(allValues2);
        }

        v33 += [*(*(&v44 + 1) + 8 * v42++) estimateContainerSize];
      }

      while (v40 != v42);
      v40 = [allValues2 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v40);
  }

  return v33;
}

@end