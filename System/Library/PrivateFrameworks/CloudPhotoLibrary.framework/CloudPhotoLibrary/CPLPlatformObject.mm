@interface CPLPlatformObject
- (CPLAbstractObject)abstractObject;
- (CPLPlatformObject)init;
- (CPLPlatformObject)initWithAbstractObject:(id)object;
@end

@implementation CPLPlatformObject

- (CPLAbstractObject)abstractObject
{
  WeakRetained = objc_loadWeakRetained(&self->_abstractObject);

  return WeakRetained;
}

- (CPLPlatformObject)initWithAbstractObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = CPLPlatformObject;
  v5 = [(CPLPlatformObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_abstractObject, objectCopy);
  }

  return v6;
}

- (CPLPlatformObject)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPlatform.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:22 description:@"Should not use -init method but -initWithAbstractObject:"];

  abort();
}

@end