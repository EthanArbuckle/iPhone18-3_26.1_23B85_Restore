@interface PKLiveRenderedShaderSet
- (PKLiveRenderedShaderSet)initWithCoder:(id)a3;
- (PKLiveRenderedShaderSet)initWithDataAccessor:(id)a3 suffix:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKLiveRenderedShaderSet

- (PKLiveRenderedShaderSet)initWithDataAccessor:(id)a3 suffix:(id)a4
{
  v45[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v44.receiver = self;
  v44.super_class = PKLiveRenderedShaderSet;
  v8 = [(PKLiveRenderedShaderSet *)&v44 init];
  if (v8)
  {
    context = objc_autoreleasePoolPush();
    if (v7)
    {
      v9 = [@"geometry" stringByAppendingString:v7];
    }

    else
    {
      v9 = @"geometry";
    }

    v10 = v9;
    v11 = [[PKBundleResourceDescriptor alloc] initWithName:v9 extension:@"metal"];
    if (v7)
    {
      v12 = [@"lighting" stringByAppendingString:v7];
    }

    else
    {
      v12 = @"lighting";
    }

    v40 = v10;
    v39 = v12;
    v13 = [[PKBundleResourceDescriptor alloc] initWithName:v12 extension:@"metal"];
    if (v7)
    {
      v14 = [@"surface" stringByAppendingString:v7];
    }

    else
    {
      v14 = @"surface";
    }

    v15 = v14;
    v43 = v6;
    v16 = [[PKBundleResourceDescriptor alloc] initWithName:v14 extension:@"metal"];
    v42 = v7;
    if (v7)
    {
      v17 = [@"fragment" stringByAppendingString:v7];
    }

    else
    {
      v17 = @"fragment";
    }

    v18 = v17;
    v19 = [[PKBundleResourceDescriptor alloc] initWithName:v17 extension:@"metal"];
    v20 = MEMORY[0x1E695DFD8];
    v45[0] = v11;
    v45[1] = v13;
    v45[2] = v16;
    v45[3] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    [v20 setWithArray:v21];
    v22 = v13;
    v24 = v23 = v11;
    v25 = [v43 dataForBundleResources:v24];

    objc_autoreleasePoolPop(context);
    if ([v25 count])
    {
      v26 = [v25 objectForKeyedSubscript:v23];
      v27 = v26;
      if (v26)
      {
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v26 encoding:1];
      }

      geometryEntryPointShader = v8->_geometryEntryPointShader;
      v8->_geometryEntryPointShader = v26;

      v29 = [v25 objectForKeyedSubscript:v22];

      if (v29)
      {
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v29 encoding:1];
      }

      else
      {
        v30 = 0;
      }

      lightingModelEntryPointShader = v8->_lightingModelEntryPointShader;
      v8->_lightingModelEntryPointShader = v30;

      v32 = [v25 objectForKeyedSubscript:v16];

      if (v32)
      {
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v32 encoding:1];
      }

      else
      {
        v33 = 0;
      }

      surfaceEntryPointShader = v8->_surfaceEntryPointShader;
      v8->_surfaceEntryPointShader = v33;

      v35 = [v25 objectForKeyedSubscript:v19];

      if (v35)
      {
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v35 encoding:1];
      }

      else
      {
        v36 = 0;
      }

      fragmentEntryPointShader = v8->_fragmentEntryPointShader;
      v8->_fragmentEntryPointShader = v36;
    }

    v7 = v42;
    v6 = v43;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  geometryEntryPointShader = self->_geometryEntryPointShader;
  v5 = a3;
  [v5 encodeObject:geometryEntryPointShader forKey:@"geometry"];
  [v5 encodeObject:self->_lightingModelEntryPointShader forKey:@"lighting"];
  [v5 encodeObject:self->_surfaceEntryPointShader forKey:@"surface"];
  [v5 encodeObject:self->_fragmentEntryPointShader forKey:@"fragment"];
}

- (PKLiveRenderedShaderSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = PKLiveRenderedShaderSet;
  v6 = [(PKLiveRenderedShaderSet *)&v16 init];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    geometryEntryPointShader = v6->_geometryEntryPointShader;
    v6->_geometryEntryPointShader = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lighting"];
    lightingModelEntryPointShader = v6->_lightingModelEntryPointShader;
    v6->_lightingModelEntryPointShader = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"surface"];
    surfaceEntryPointShader = v6->_surfaceEntryPointShader;
    v6->_surfaceEntryPointShader = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fragment"];
    fragmentEntryPointShader = v6->_fragmentEntryPointShader;
    v6->_fragmentEntryPointShader = v13;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

@end