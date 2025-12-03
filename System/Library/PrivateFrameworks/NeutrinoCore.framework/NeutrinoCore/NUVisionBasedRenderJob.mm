@interface NUVisionBasedRenderJob
- (id)newRequestHandlerForImage:(id)image error:(id *)error;
@end

@implementation NUVisionBasedRenderJob

- (id)newRequestHandlerForImage:(id)image error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v7 = [(NURenderJob *)self renderer:error];
  v8 = v7;
  if (v7)
  {
    context = [v7 context];
    v10 = objc_alloc(MEMORY[0x1E69845B8]);
    v16 = *MEMORY[0x1E6984998];
    v17[0] = context;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = +[NUFactory sharedFactory];
    visionSession = [v12 visionSession];
    v14 = [v10 initWithCIImage:imageCopy options:v11 session:visionSession];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end