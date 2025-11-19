@interface VCPSaliencyRegion
+ (id)salientRegionsFromPixelBuffer:(__CVBuffer *)a3;
+ (void)attachSalientRegions:(id)a3 toPixelBuffer:(__CVBuffer *)a4;
- (CGRect)bound;
- (VCPSaliencyRegion)initWith:(CGRect)a3 confidence:(float)a4;
- (VCPSaliencyRegion)initWithPlistRepresentation:(id)a3;
- (id)plistRepresentation;
@end

@implementation VCPSaliencyRegion

- (VCPSaliencyRegion)initWith:(CGRect)a3 confidence:(float)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = VCPSaliencyRegion;
  result = [(VCPSaliencyRegion *)&v10 init];
  if (result)
  {
    result->_bound.origin.x = x;
    result->_bound.origin.y = y;
    result->_bound.size.width = width;
    result->_bound.size.height = height;
    result->_confidence = a4;
  }

  return result;
}

- (VCPSaliencyRegion)initWithPlistRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"bound"];
  v6 = [v4 objectForKeyedSubscript:@"confidence"];
  v7 = v6;
  if (!v5)
  {
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0.0;
    goto LABEL_6;
  }

  v16 = NSRectFromString(v5);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v7 floatValue];
  LODWORD(v13) = v12;
LABEL_6:
  v14 = [(VCPSaliencyRegion *)self initWith:x confidence:y, width, height, v13];

  return v14;
}

- (id)plistRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromRect(self->_bound);
  *&v4 = self->_confidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v8[0] = @"bound";
  v8[1] = @"confidence";
  v9[0] = v3;
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (void)attachSalientRegions:(id)a3 toPixelBuffer:(__CVBuffer *)a4
{
  v5 = [a3 valueForKey:@"plistRepresentation"];
  CVBufferSetAttachment(a4, @"SalientRegions", v5, kCVAttachmentMode_ShouldNotPropagate);
}

+ (id)salientRegionsFromPixelBuffer:(__CVBuffer *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = CVBufferGetAttachment(a3, @"SalientRegions", 0);
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [VCPSaliencyRegion alloc];
        v11 = [(VCPSaliencyRegion *)v10 initWithPlistRepresentation:v9, v13];
        [v4 addObject:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

- (CGRect)bound
{
  objc_copyStruct(v6, &self->_bound, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end