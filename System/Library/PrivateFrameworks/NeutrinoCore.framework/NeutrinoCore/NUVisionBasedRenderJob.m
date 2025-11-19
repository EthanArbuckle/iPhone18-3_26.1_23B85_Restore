@interface NUVisionBasedRenderJob
- (id)newRequestHandlerForImage:(id)a3 error:(id *)a4;
@end

@implementation NUVisionBasedRenderJob

- (id)newRequestHandlerForImage:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NURenderJob *)self renderer:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 context];
    v10 = objc_alloc(MEMORY[0x1E69845B8]);
    v16 = *MEMORY[0x1E6984998];
    v17[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = +[NUFactory sharedFactory];
    v13 = [v12 visionSession];
    v14 = [v10 initWithCIImage:v6 options:v11 session:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end