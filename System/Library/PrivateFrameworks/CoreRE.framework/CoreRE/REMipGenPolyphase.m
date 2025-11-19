@interface REMipGenPolyphase
+ (_REMipGenPolyphaseOptions)defaultOptions;
- (REMipGenPolyphase)initWithLibrary:(id)a3 binaryArchive:(id)a4;
- (void)copyAndGenerateMipmapsFromTexture:(id)a3 toTexture:(id)a4 withComputeEncoder:(id)a5;
- (void)copyAndGenerateMipmapsFromTexture:(id)a3 toTexture:(id)a4 withComputeEncoder:(id)a5 withOptions:(_REMipGenPolyphaseOptions *)a6;
- (void)dealloc;
- (void)generateMipmapsForTexture:(id)a3 withComputeEncoder:(id)a4;
- (void)generateMipmapsForTexture:(id)a3 withComputeEncoder:(id)a4 withOptions:(_REMipGenPolyphaseOptions *)a5;
@end

@implementation REMipGenPolyphase

+ (_REMipGenPolyphaseOptions)defaultOptions
{
  *&retstr->var0 = 0;
  v3 = *(MEMORY[0x1E695F050] + 16);
  retstr->var2.origin = *MEMORY[0x1E695F050];
  retstr->var2.size = v3;
  return result;
}

- (REMipGenPolyphase)initWithLibrary:(id)a3 binaryArchive:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v36 = v6;
  v8 = [v6 device];
  v40.receiver = self;
  v40.super_class = REMipGenPolyphase;
  v9 = [(REMipGenPolyphase *)&v40 init];
  if (v9)
  {
    v44[0] = xmmword_1E871E758;
    v44[1] = *off_1E871E768;
    v45 = @"mipGenPolyphaseRef";
    v35 = v8;
    if ([v8 supportsFamily:5001])
    {
      v10 = [v8 supportsFamily:1006] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    v32 = v9;
    v9->_useTextureViews = v10;
    p_useTextureViews = &v9->_useTextureViews;
    v34 = objc_opt_new();
    [v34 setConstantValue:p_useTextureViews type:53 withName:@"UseTextureViews"];
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v33 = p_useTextureViews;
    v15 = (p_useTextureViews - 152);
    do
    {
      v37 = mach_absolute_time();
      v16 = objc_alloc_init(MEMORY[0x1E6974070]);
      v17 = *(v44 + v12);
      [v16 setName:v17];
      [v16 setConstantValues:v34];
      if (v7)
      {
        v43 = v7;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        [v16 setBinaryArchives:v18];
      }

      v39 = v14;
      v19 = [v36 newFunctionWithDescriptor:v16 error:&v39];
      v20 = v39;

      v21 = *v15;
      *v15 = v19;

      v22 = objc_alloc_init(MEMORY[0x1E6974030]);
      [v22 setComputeFunction:*v15];
      if (v7)
      {
        v42 = v7;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
        [v22 setBinaryArchives:v23];
      }

      v38 = v13;
      v24 = [v35 newComputePipelineStateWithDescriptor:v22 options:0 reflection:0 error:&v38];
      v25 = v38;

      v26 = v15[1];
      v15[1] = v24;

      v27 = mach_absolute_time() - v37;
      info = 0;
      mach_timebase_info(&info);
      LODWORD(v29) = info.denom;
      LODWORD(v28) = info.numer;
      LODWORD(v27) = (v28 / v29 * v27 / 1000000.0);
      NSLog(&cfstr_PsoCompilation.isa, v17, v27);
      if (v27 >= 11)
      {
        NSLog(&cfstr_CompilingPsoRt.isa, v17, *v33);
      }

      v12 += 8;
      v15 += 2;
      v13 = v25;
      v14 = v20;
    }

    while (v12 != 32);

    for (i = 32; i != -8; i -= 8)
    {
    }

    v9 = v32;
    v32->_tileValid = 0;

    v8 = v35;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = REMipGenPolyphase;
  [(REMipGenPolyphase *)&v2 dealloc];
}

- (void)generateMipmapsForTexture:(id)a3 withComputeEncoder:(id)a4
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v6 = a4;
  v7 = a3;
  +[REMipGenPolyphase defaultOptions];
  v8[0] = v10;
  v8[1] = v11;
  v9 = v12;
  [(REMipGenPolyphase *)self generateMipmapsForTexture:v7 withComputeEncoder:v6 withOptions:v8];
}

- (void)generateMipmapsForTexture:(id)a3 withComputeEncoder:(id)a4 withOptions:(_REMipGenPolyphaseOptions *)a5
{
  if (a5->var1)
  {
    bzero(self->_tileValid, self->_tileMaxCount);
    v9 = a4;
    v10 = a3;
    v11 = [v10 mipmapLevelCount];
    useTextureViews = self->_useTextureViews;
    v13 = *&a5->var2.origin.y;
    v16 = *&a5->var0;
    v17 = v13;
    height = a5->var2.size.height;
    generateMipmapsForTexture_HierarchicalTiling_traverse(v10, v9, &v16, self, v11 - 1, 0, 0, useTextureViews, *&v16);
  }

  else
  {
    v14 = *&a5->var2.origin.y;
    v16 = *&a5->var0;
    v17 = v14;
    height = a5->var2.size.height;
    v15 = a4;
    v10 = a3;
    generateMipmapsForTexture(v10, v10, v15, &v16, self, 0);
  }
}

- (void)copyAndGenerateMipmapsFromTexture:(id)a3 toTexture:(id)a4 withComputeEncoder:(id)a5
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  +[REMipGenPolyphase defaultOptions];
  v11[0] = v13;
  v11[1] = v14;
  v12 = v15;
  [(REMipGenPolyphase *)self copyAndGenerateMipmapsFromTexture:v10 toTexture:v9 withComputeEncoder:v8 withOptions:v11];
}

- (void)copyAndGenerateMipmapsFromTexture:(id)a3 toTexture:(id)a4 withComputeEncoder:(id)a5 withOptions:(_REMipGenPolyphaseOptions *)a6
{
  v6 = *&a6->var2.origin.y;
  v7[0] = *&a6->var0;
  v7[1] = v6;
  height = a6->var2.size.height;
  generateMipmapsForTexture(a3, a4, a5, v7, self, 1u);
}

@end