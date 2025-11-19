@interface _CUIThemeModelMeshRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)initForArchiving:(id)a3 withSubmeshRenditionKeys:(id)a4;
- (unint64_t)writeToData:(id)a3;
- (void)dealloc;
@end

@implementation _CUIThemeModelMeshRendition

- (id)initForArchiving:(id)a3 withSubmeshRenditionKeys:(id)a4
{
  v8.receiver = self;
  v8.super_class = _CUIThemeModelMeshRendition;
  v6 = [(_CUIThemeModelMeshRendition *)&v8 init];
  if (v6)
  {
    v6->_mesh = a3;
    v6->_submeshKeys = [[NSMutableArray alloc] initWithArray:a4];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeModelMeshRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v41.receiver = self;
  v41.super_class = _CUIThemeModelMeshRendition;
  v6 = [(CUIThemeRendition *)&v41 _initWithCSIHeader:a3 version:*&a4];
  if (v6)
  {
    memset(v43, 0, 92);
    v7 = &a3->var0 + 4 * a3->var11.var0 + a3->var10;
    v9 = *(v7 + 45);
    v8 = v7 + 180;
    if (v9 != 1297040461)
    {
      [_CUIThemeModelMeshRendition _initWithCSIHeader:a2 version:v6];
    }

    v10 = [[NSString alloc] initWithBytes:v8 + 52 length:*(v8 + 2) encoding:4];
    [v6 setName:v10];

    v11 = &v8[*(v8 + 2) + 52];
    v12 = [NSMutableArray arrayWithCapacity:*(v8 + 5)];
    if (*(v8 + 20))
    {
      v13 = v6;
      v14 = 0;
      do
      {
        v15 = [[NSString alloc] initWithBytes:v11 + 8 length:v11[7] encoding:4];
        v16 = [objc_alloc(getMDLVertexAttributeClass[0]()) initWithName:v15 format:*v11 offset:v11[4] bufferIndex:v11[6]];
        [(NSMutableArray *)v12 addObject:v16];

        v11 = (v11 + v11[7] + *(v11 + 1) * *(v8 + 12) + 32);
        ++v14;
        v17 = *(v8 + 20);
      }

      while (v14 < v17);
      v18 = v17;
      v6 = v13;
    }

    else
    {
      v18 = 0;
    }

    v19 = [NSMutableArray arrayWithCapacity:v18];
    if (*(v8 + 28))
    {
      v20 = v19;
      v21 = 0;
      do
      {
        v22 = objc_alloc(getMDLVertexBufferLayoutClass[0]());
        v23 = *v11;
        v11 += 2;
        v24 = [v22 initWithStride:v23];
        [(NSMutableArray *)v20 addObject:v24];

        ++v21;
      }

      while (v21 < *(v8 + 28));
    }

    v25 = [NSMutableArray arrayWithCapacity:*(v8 + 9)];
    if (*(v8 + 36))
    {
      v26 = 0;
      do
      {
        v27 = [[CUIMeshBuffer alloc] initWithBytes:v11 + 2 andLength:*v11 ofType:1];
        [(NSMutableArray *)v25 addObject:v27];

        v11 = (v11 + *v11 + 8);
        ++v26;
      }

      while (v26 < *(v8 + 36));
    }

    v6[28] = [[NSMutableArray alloc] initWithCapacity:*(v8 + 11)];
    if (*(v8 + 44))
    {
      v28 = 0;
      do
      {
        __memcpy_chk();
        v29 = [[CUIRenditionKey alloc] initWithKeyList:v43];
        [v6[28] addObject:v29];

        v11 = (v11 + *v11 + 4);
        ++v28;
      }

      while (v28 < *(v8 + 44));
    }

    v30 = objc_alloc_init(getMDLVertexDescriptorClass[0]());
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v38;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(v12);
          }

          [v30 addOrReplaceAttribute:*(*(&v37 + 1) + 8 * i)];
        }

        v32 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v32);
    }

    v35 = objc_alloc_init(NSArray);
    v6[27] = [objc_alloc(getMDLMeshClass[0]()) initWithVertexBuffers:v25 vertexCount:*(v8 + 3) descriptor:v30 submeshes:v35];
    [v6[27] setName:{objc_msgSend(v6, "name")}];
  }

  return v6;
}

- (unint64_t)writeToData:(id)a3
{
  v70 = 0;
  v41 = [a3 length];
  v47 = objc_alloc_init(NSMutableArray);
  v71 = 0x14D4F444DLL;
  v45 = [(MDLMesh *)self->_mesh vertexCount];
  v73 = v45;
  v75 = 0;
  v74 = 0;
  v76 = [(NSArray *)[(MDLMesh *)self->_mesh vertexBuffers] count];
  v77 = [(NSMutableArray *)self->_submeshKeys count];
  v43 = [(MDLMesh *)self->_mesh name];
  v72 = [v43 length];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v46 = self;
  obj = [(MDLVertexDescriptor *)[(MDLMesh *)self->_mesh vertexDescriptor] attributes];
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v66 objects:v82 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v67;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v67 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v66 + 1) + 8 * i);
        v11 = -[MDLMesh vertexAttributeDataForAttributeNamed:](v46->_mesh, "vertexAttributeDataForAttributeNamed:", [v10 name]);
        if ([(MDLVertexAttributeData *)v11 format])
        {
          v64 = 0u;
          v65 = 0u;
          v12 = +[NSMutableData data];
          v13 = [NSData dataWithBytes:[(MDLVertexAttributeData *)v11 dataStart] length:[(MDLVertexAttributeData *)v11 stride]* v45];
          *&v64 = [(MDLVertexAttributeData *)v11 format];
          *(&v64 + 1) = [(MDLVertexAttributeData *)v11 stride];
          *&v65 = [v10 offset];
          DWORD2(v65) = [v10 bufferIndex];
          HIDWORD(v65) = [objc_msgSend(v10 "name")];
          [v12 appendBytes:&v64 length:32];
          v14 = [objc_msgSend(v10 "name")];
          [v12 appendBytes:v14 length:HIDWORD(v65)];
          [v12 appendData:v13];
          [v47 addObject:v12];
          v74 = ++v7;
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v66 objects:v82 count:16];
    }

    while (v6);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v15 = [(MDLVertexDescriptor *)[(MDLMesh *)v46->_mesh vertexDescriptor] layouts];
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v60 objects:v81 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v61;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v60 + 1) + 8 * j);
        if ([v21 stride])
        {
          *&v64 = 0;
          v22 = +[NSMutableData data];
          *&v64 = [v21 stride];
          [v22 appendBytes:&v64 length:8];
          [v47 addObject:v22];
          v75 = ++v18;
        }
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v60 objects:v81 count:16];
    }

    while (v17);
  }

  [a3 appendBytes:&v71 length:52];
  v23 = [v43 UTF8String];
  [a3 appendBytes:v23 length:v72];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v24 = [v47 countByEnumeratingWithState:&v56 objects:v80 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v57;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v57 != v26)
        {
          objc_enumerationMutation(v47);
        }

        [a3 appendData:*(*(&v56 + 1) + 8 * k)];
      }

      v25 = [v47 countByEnumeratingWithState:&v56 objects:v80 count:16];
    }

    while (v25);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v28 = [(MDLMesh *)v46->_mesh vertexBuffers];
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v52 objects:v79 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v53;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v52 + 1) + 8 * m);
        *&v64 = 0;
        *&v64 = [v33 length];
        [a3 appendBytes:&v64 length:8];
        [a3 appendData:{objc_msgSend(v33, "data")}];
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v52 objects:v79 count:16];
    }

    while (v30);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  submeshKeys = v46->_submeshKeys;
  v35 = [(NSMutableArray *)submeshKeys countByEnumeratingWithState:&v48 objects:v78 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v49;
    do
    {
      for (n = 0; n != v36; n = n + 1)
      {
        if (*v49 != v37)
        {
          objc_enumerationMutation(submeshKeys);
        }

        v39 = [*(*(&v48 + 1) + 8 * n) keyList];
        v70 = 4 * CUIRenditionKeyTokenCount(v39) + 4;
        [a3 appendBytes:&v70 length:4];
        [a3 appendBytes:v39 length:v70];
      }

      v36 = [(NSMutableArray *)submeshKeys countByEnumeratingWithState:&v48 objects:v78 count:16];
    }

    while (v36);
  }

  return [a3 length] - v42;
}

@end