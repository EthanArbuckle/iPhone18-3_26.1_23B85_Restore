@interface NUNISceneUpdateDescription
+ (id)descriptionWithVista:(unint64_t)a3 updateBlock:(id)a4;
- (NUNISceneUpdateDescription)initWithVista:(unint64_t)a3 updateBlock:(id)a4;
@end

@implementation NUNISceneUpdateDescription

+ (id)descriptionWithVista:(unint64_t)a3 updateBlock:(id)a4
{
  v5 = a4;
  v6 = [[NUNISceneUpdateDescription alloc] initWithVista:a3 updateBlock:v5];

  return v6;
}

- (NUNISceneUpdateDescription)initWithVista:(unint64_t)a3 updateBlock:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = NUNISceneUpdateDescription;
  v7 = [(NUNISceneUpdateDescription *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_vista = a3;
    v9 = _Block_copy(v6);
    updateBlock = v8->_updateBlock;
    v8->_updateBlock = v9;
  }

  return v8;
}

@end