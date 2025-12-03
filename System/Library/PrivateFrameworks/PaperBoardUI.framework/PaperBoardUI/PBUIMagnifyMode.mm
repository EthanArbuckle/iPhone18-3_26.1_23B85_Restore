@interface PBUIMagnifyMode
+ (PBUIMagnifyMode)magnifyModeWithSize:(CGSize)size name:(id)name;
+ (id)currentMagnifyMode;
+ (void)currentMagnifyMode;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (PBUIMagnifyMode)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation PBUIMagnifyMode

+ (id)currentMagnifyMode
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  displayConfiguration = [mainScreen displayConfiguration];

  v9 = 0;
  [displayConfiguration deviceName];
  v4 = IOMobileFramebufferOpenByName();
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[(PBUIMagnifyMode *)displayConfiguration];
  }

  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[(PBUIMagnifyMode *)v8];
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

+ (PBUIMagnifyMode)magnifyModeWithSize:(CGSize)size name:(id)name
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  v8 = objc_alloc_init(self);
  [v8 setSize:{width, height}];
  [v8 setName:nameCopy];

  LODWORD(v9) = 1.0;
  [v8 setZoomFactor:v9];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSize:{self->_size.width, self->_size.height}];
  [v4 setName:self->_name];
  *&v5 = self->_zoomFactor;
  [v4 setZoomFactor:v5];
  return v4;
}

- (PBUIMagnifyMode)init
{
  v3.receiver = self;
  v3.super_class = PBUIMagnifyMode;
  result = [(PBUIMagnifyMode *)&v3 init];
  if (result)
  {
    result->_zoomFactor = 1.0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [v5 size];
    v7 = v6;
    v9 = v8;
    [(PBUIMagnifyMode *)self size];
    if (v7 == v11 && v9 == v10)
    {
      name = [(PBUIMagnifyMode *)self name];
      name2 = [v5 name];
      if ([name isEqualToString:name2])
      {
        [(PBUIMagnifyMode *)self zoomFactor];
        v17 = v16;
        [v5 zoomFactor];
        v13 = v17 == v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCAE60] valueWithCGSize:{self->_size.width, self->_size.height}];
  v3 = [v2 hash];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIMagnifyMode *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(PBUIMagnifyMode *)self name];
  v6 = [v4 appendObject:name withName:@"name"];

  [(PBUIMagnifyMode *)self zoomFactor];
  v8 = [v4 appendFloat:@"zoomFactor" withName:v7];
  [(PBUIMagnifyMode *)self size];
  v9 = [v4 appendSize:@"size" withName:?];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIMagnifyMode *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)currentMagnifyMode
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "PBUIMagnifyMode *PBUIGetCurrentMagnifyMode(void)";
  _os_log_error_impl(&dword_21E67D000, log, OS_LOG_TYPE_ERROR, "%s Returning nil because PBUICreateMobileFrameBuffer() returned NULL framebuffer", &v1, 0xCu);
}

@end