@interface _NTKCompanionFaceRenderingTask
- (_NTKCompanionFaceRenderingTask)initWithFace:(id)a3 detailMode:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation _NTKCompanionFaceRenderingTask

- (_NTKCompanionFaceRenderingTask)initWithFace:(id)a3 detailMode:(int64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _NTKCompanionFaceRenderingTask;
  v11 = [(_NTKCompanionFaceRenderingTask *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_face, a3);
    v12->_detailMode = a4;
    v13 = [v10 copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

@end