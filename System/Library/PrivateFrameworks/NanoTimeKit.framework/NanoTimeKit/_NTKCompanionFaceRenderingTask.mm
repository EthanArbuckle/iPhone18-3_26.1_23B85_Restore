@interface _NTKCompanionFaceRenderingTask
- (_NTKCompanionFaceRenderingTask)initWithFace:(id)face detailMode:(int64_t)mode completionHandler:(id)handler;
@end

@implementation _NTKCompanionFaceRenderingTask

- (_NTKCompanionFaceRenderingTask)initWithFace:(id)face detailMode:(int64_t)mode completionHandler:(id)handler
{
  faceCopy = face;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = _NTKCompanionFaceRenderingTask;
  v11 = [(_NTKCompanionFaceRenderingTask *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_face, face);
    v12->_detailMode = mode;
    v13 = [handlerCopy copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

@end