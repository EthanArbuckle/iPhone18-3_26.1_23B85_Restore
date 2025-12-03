@interface VCPImageDescriptor
+ (id)descriptorWithData:(id)data;
+ (id)descriptorWithImage:(__CVBuffer *)image;
- (VCPImageDescriptor)initWithData:(id)data;
- (VCPImageDescriptor)initWithImage:(__CVBuffer *)image;
- (int)computeDistance:(float *)distance toDescriptor:(id)descriptor;
@end

@implementation VCPImageDescriptor

+ (id)descriptorWithImage:(__CVBuffer *)image
{
  v3 = [[VCPImageDescriptor alloc] initWithImage:image];

  return v3;
}

+ (id)descriptorWithData:(id)data
{
  dataCopy = data;
  v4 = [[VCPImageDescriptor alloc] initWithData:dataCopy];

  return v4;
}

- (VCPImageDescriptor)initWithImage:(__CVBuffer *)image
{
  v33[1] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = VCPImageDescriptor;
  v4 = [(VCPImageDescriptor *)&v31 init];
  if (v4)
  {
    context = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x1E69845B8]);
    v6 = [v5 initWithCVPixelBuffer:image options:MEMORY[0x1E695E0F8]];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E6984488]);
      v8 = v7;
      if (v7 && ([v7 setPreferBackgroundProcessing:1], v33[0] = v8, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v33, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "performRequests:error:", v9, 0), v9, (v10 & 1) != 0))
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        results = [v8 results];
        v12 = [results countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v12)
        {
          v13 = 0;
          v14 = *v28;
          do
          {
            v15 = 0;
            v16 = v13;
            v17 = v12;
            v13 += v12;
            do
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(results);
              }

              imageprint = [*(*(&v27 + 1) + 8 * v15) imageprint];
              imagePrint = v4->_imagePrint;
              v4->_imagePrint = imageprint;

              ++v15;
            }

            while (v12 != v15);
            v12 = [results countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v12);

          if (v16 + v17 - 1 >= 1 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Image descriptor - found more than 1 VNImageprintObservations", buf, 2u);
          }
        }

        else
        {
        }

        v22 = 0;
        v21 = 1;
      }

      else
      {
        v21 = 0;
        v22 = -18;
      }
    }

    else
    {
      v8 = 0;
      v21 = 0;
      v22 = -108;
    }

    objc_autoreleasePoolPop(context);
    if (v21 && !v4->_imagePrint)
    {
      v22 = -18;
    }

    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v4;
    }

    v20 = v23;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (VCPImageDescriptor)initWithData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = VCPImageDescriptor;
  v5 = [(VCPImageDescriptor *)&v14 init];
  if (v5)
  {
    if (dataCopy)
    {
      v13 = 0;
      v6 = [objc_alloc(MEMORY[0x1E69845C0]) initWithState:dataCopy error:&v13];
      v7 = v13;
      imagePrint = v5->_imagePrint;
      v5->_imagePrint = v6;

      if (v5->_imagePrint)
      {
        v9 = v5;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = [v7 description];
          *buf = 138412290;
          v16 = v11;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VNImageprint init error: %@", buf, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)computeDistance:(float *)distance toDescriptor:(id)descriptor
{
  v5 = [(VNImageprint *)self->_imagePrint distanceToImageprint:*(descriptor + 1) error:0];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v7 = 0;
    *distance = v8;
  }

  else
  {
    v7 = -18;
  }

  return v7;
}

@end