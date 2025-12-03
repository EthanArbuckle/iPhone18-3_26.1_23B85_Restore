@interface DKGLUtilities
+ (id)createPlatformGLContext;
+ (id)createSharedGLContext;
+ (id)pathForResource:(id)resource ofType:(id)type;
+ (id)snapshotImageOfFrameBufferWithID:(unsigned int)d bufferSize:(CGSize)size displayScale:(double)scale;
+ (unsigned)compileShader:(id)shader ofType:(id)type;
+ (void)_postGLInactiveNotification;
+ (void)createFBO:(unsigned int *)o depthRB:(unsigned int *)b texture:(unsigned int *)texture width:(int)width height:(int)height format:(unsigned int)format;
+ (void)createRepeatableTexture:(unsigned int *)texture withImageName:(id)name ofType:(id)type;
+ (void)createSharedRepeatableTexture:(unsigned int *)texture withImageName:(id)name ofType:(id)type;
+ (void)createTexture:(unsigned int *)texture withImageName:(id)name ofType:(id)type;
+ (void)createVBO:(unsigned int *)o size:(int64_t)size data:(void *)data usage:(unsigned int)usage;
+ (void)deleteFBO:(unsigned int *)o depthRB:(unsigned int *)b texture:(unsigned int *)texture;
+ (void)deleteTexture:(unsigned int *)texture;
+ (void)deleteVBO:(unsigned int *)o;
+ (void)drawQuadAtX:(float)x Y:(float)y width:(float)width height:(float)height;
+ (void)initialize;
+ (void)setCurrentClearColor;
+ (void)setProjectionMatrixForWidth:(float)width height:(float)height flipped:(BOOL)flipped matrix:(id *)matrix;
+ (void)teardownSharedGLContext;
+ (void)translateMatrix:(id *)matrix byX:(float)x Y:(float)y result:(id *)result;
@end

@implementation DKGLUtilities

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__DKGLUtilities_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_once != -1)
  {
    dispatch_once(&initialize_once, block);
  }
}

void __27__DKGLUtilities_initialize__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__postGLActiveNotification name:*MEMORY[0x277D76648] object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__postGLInactiveNotification name:*MEMORY[0x277D76660] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel__postGLInactiveNotification name:*MEMORY[0x277CCA0D8] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__postGLActiveNotification name:*MEMORY[0x277CCA0C0] object:0];

  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v6 applicationState];

  if (v7 == 2)
  {
    atomic_store(0, DKSafeToUseOpenGL);
  }
}

+ (id)pathForResource:(id)resource ofType:(id)type
{
  v5 = MEMORY[0x277CCA8D8];
  typeCopy = type;
  resourceCopy = resource;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:resourceCopy ofType:typeCopy];

  return v9;
}

+ (unsigned)compileShader:(id)shader ofType:(id)type
{
  v18 = *MEMORY[0x277D85DE8];
  shaderCopy = shader;
  typeCopy = type;
  v7 = [DKGLUtilities pathForResource:shaderCopy ofType:typeCopy];
  v8 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v7 encoding:4 error:0];
  if (!v8)
  {
    NSLog(&cfstr_ErrorLoadingSh.isa, shaderCopy, typeCopy);
    goto LABEL_9;
  }

  v9 = v8;
  if ([typeCopy isEqualToString:@"vert"])
  {
    v10 = 35633;
  }

  else
  {
    v10 = 35632;
  }

  Shader = glCreateShader(v10);
  string = [v9 UTF8String];
  length = [v9 length];
  glShaderSource(Shader, 1, &string, &length);
  glCompileShader(Shader);
  params = 0;
  glGetShaderiv(Shader, 0x8B81u, &params);
  if (!params)
  {
    glGetShaderInfoLog(Shader, 256, 0, infolog);
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:infolog];
    NSLog(&cfstr_ErrorOccurred.isa, v13);
LABEL_9:
    exit(1);
  }

  return Shader;
}

+ (void)createFBO:(unsigned int *)o depthRB:(unsigned int *)b texture:(unsigned int *)texture width:(int)width height:(int)height format:(unsigned int)format
{
  if (o && texture)
  {
    glGenTextures(1, texture);
    glBindTexture(0xDE1u, *texture);
    glTexImage2D(0xDE1u, 0, 6408, width, height, 0, 0x1908u, 0x1401u, 0);
    glTexParameteri(0xDE1u, 0x2801u, 9728);
    glTexParameteri(0xDE1u, 0x2800u, 9728);
    glTexParameteri(0xDE1u, 0x2802u, 33071);
    glTexParameteri(0xDE1u, 0x2803u, 33071);
    glGenFramebuffers(1, o);
    glBindFramebuffer(0x8D40u, *o);
    glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *texture, 0);
  }

  if (b)
  {
    glGenRenderbuffers(1, b);
    glBindRenderbuffer(0x8D41u, *b);
    glRenderbufferStorage(0x8D41u, 0x81A6u, width, height);
    glFramebufferRenderbuffer(0x8D40u, 0x8D00u, 0x8D41u, *b);
  }

  glDisable(0xB71u);
  glDepthMask(0);
  glEnable(0xBE2u);
  glBlendFunc(0x302u, 0x303u);
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4000u);

  glViewport(0, 0, width, height);
}

+ (void)deleteFBO:(unsigned int *)o depthRB:(unsigned int *)b texture:(unsigned int *)texture
{
  if (o)
  {
    glDeleteFramebuffers(1, o);
    *o = 0;
  }

  if (b)
  {
    glDeleteRenderbuffers(1, b);
    *b = 0;
  }

  if (texture)
  {
    glDeleteTextures(1, texture);
    *texture = 0;
  }
}

+ (void)createVBO:(unsigned int *)o size:(int64_t)size data:(void *)data usage:(unsigned int)usage
{
  glGenBuffers(1, o);
  glBindBuffer(0x8892u, *o);

  glBufferData(0x8892u, size, data, usage);
}

+ (void)deleteVBO:(unsigned int *)o
{
  if (o)
  {
    glDeleteVertexArraysOES();
    *o = 0;
  }
}

+ (void)createTexture:(unsigned int *)texture withImageName:(id)name ofType:(id)type
{
  pixels[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  typeCopy = type;
  Error = glGetError();
  if (Error)
  {
    printf("glError: %04x caught at %s:%u\n", Error, "/Library/Caches/com.apple.xbs/Sources/DrawingKit/DrawingKit/Source/Shared/GLUtilities/DKGLUtilities.m", 175);
  }

  v10 = [DKGLUtilities pathForResource:nameCopy ofType:typeCopy];
  v16 = 0;
  v11 = [MEMORY[0x277CCAEF0] textureWithContentsOfFile:v10 options:0 error:&v16];
  v12 = v16;
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    if (texture)
    {
      *texture = [v11 name];
    }
  }

  else
  {
    localizedDescription = [v12 localizedDescription];
    NSLog(&cfstr_SFailedToLoadT.isa, "+[DKGLUtilities createTexture:withImageName:ofType:]", localizedDescription);

    if (texture)
    {
      pixels[0] = -1;
      pixels[1] = -1;
      glGenTextures(1, texture);
      glBindTexture(0xDE1u, *texture);
      glTexImage2D(0xDE1u, 0, 6408, 2, 2, 0, 0x1908u, 0x1401u, pixels);
    }
  }
}

+ (void)createRepeatableTexture:(unsigned int *)texture withImageName:(id)name ofType:(id)type
{
  typeCopy = type;
  nameCopy = name;
  [objc_opt_class() createTexture:texture withImageName:nameCopy ofType:typeCopy];

  if (texture)
  {
    glBindTexture(0xDE1u, *texture);
    glTexParameteri(0xDE1u, 0x2800u, 9729);
    glTexParameteri(0xDE1u, 0x2801u, 9729);
    glTexParameteri(0xDE1u, 0x2802u, 10497);

    glTexParameteri(0xDE1u, 0x2803u, 10497);
  }
}

+ (void)deleteTexture:(unsigned int *)texture
{
  if (texture)
  {
    glDeleteTextures(1, texture);
    *texture = 0;
  }
}

+ (void)drawQuadAtX:(float)x Y:(float)y width:(float)width height:(float)height
{
  v18 = *MEMORY[0x277D85DE8];
  buffers[1] = 0;
  *data = x;
  *&data[1] = y;
  v9 = x + width;
  yCopy = y;
  xCopy = x;
  v13 = y + height;
  v15 = x + width;
  v16 = y + height;
  v8 = xmmword_249D9D8D0;
  v11 = xmmword_249D9D8E0;
  v14 = xmmword_249D9D8F0;
  v17 = xmmword_249D9D900;
  glGenBuffers(1, &buffers[1]);
  glBindBuffer(0x8892u, buffers[1]);
  glBufferData(0x8892u, 96, data, 0x88E4u);
  glGenVertexArraysOES();
  glBindVertexArrayOES();
  glEnableVertexAttribArray(0);
  glEnableVertexAttribArray(1u);
  glVertexAttribPointer(0, 4, 0x1406u, 0, 24, 0);
  glVertexAttribPointer(1u, 2, 0x1406u, 0, 24, 0x10);
  glDrawArrays(5u, 0, 4);
  glBindBuffer(0x8892u, 0);
  glDeleteBuffers(1, &buffers[1]);
  glDeleteVertexArraysOES();
}

+ (void)setProjectionMatrixForWidth:(float)width height:(float)height flipped:(BOOL)flipped matrix:(id *)matrix
{
  v6 = 0;
  v7.i32[0] = -1.0;
  if (flipped)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = -1.0;
  }

  v7.f32[1] = v8;
  v7.i32[2] = 0;
  v7.i32[3] = 1.0;
  v12[2] = xmmword_249D9D910;
  v12[3] = xmmword_249D9D8B0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  do
  {
    *(&v13 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_249D9D920, COERCE_FLOAT(v12[v6])), xmmword_249D9D8D0, *&v12[v6], 1), xmmword_249D9D910, v12[v6], 2), v7, v12[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *matrix = v13;
  *(matrix + 1) = v9;
  *(matrix + 2) = v10;
  *(matrix + 3) = v11;
}

+ (void)translateMatrix:(id *)matrix byX:(float)x Y:(float)y result:(id *)result
{
  v6 = 0;
  v8 = 0;
  v9 = 1.0;
  v10 = *matrix;
  v11 = *(matrix + 1);
  v12 = *(matrix + 2);
  v13 = *(matrix + 3);
  v17[2] = xmmword_249D9D910;
  v17[3] = *&x;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v18 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v17[v6])), v11, *&v17[v6], 1), v12, v17[v6], 2), v13, v17[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v14 = v19;
  v15 = v20;
  v16 = v21;
  *result = v18;
  *(result + 1) = v14;
  *(result + 2) = v15;
  *(result + 3) = v16;
}

+ (id)snapshotImageOfFrameBufferWithID:(unsigned int)d bufferSize:(CGSize)size displayScale:(double)scale
{
  if (d)
  {
    height = size.height;
    width = size.width;
    params = 0;
    glGetIntegerv(0x8CA6u, &params);
    glPushGroupMarkerEXT(0, "Take Snapshot");
    glBindFramebuffer(0x8D40u, d);
    v9 = (width * scale);
    v10 = (height * scale);
    param = 0;
    v11 = malloc_type_malloc(4 * v9 * v10, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      glGetIntegerv(0xD05u, &param);
      glPixelStorei(0xD05u, 1);
      glReadPixels(0, 0, (width * scale), (height * scale), 0x1908u, 0x1401u, v12);
      glPixelStorei(0xD05u, param);
      v13 = CFDataCreate(*MEMORY[0x277CBECE8], v12, 4 * v9 * v10);
      if (v13)
      {
        v14 = v13;
        v15 = CGDataProviderCreateWithCFData(v13);
        if (v15)
        {
          v16 = v15;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v18 = CGImageCreate((width * scale), (height * scale), 8uLL, 0x20uLL, 4 * v9, DeviceRGB, 3u, v16, 0, 0, kCGRenderingIntentDefault);
          if (v18)
          {
            v19 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v18 scale:0 orientation:scale];
          }

          else
          {
            v19 = 0;
          }

          CGColorSpaceRelease(DeviceRGB);
          CGDataProviderRelease(v16);
          CGImageRelease(v18);
        }

        else
        {
          v19 = 0;
        }

        CFRelease(v14);
      }

      else
      {
        v19 = 0;
      }

      free(v12);
    }

    else
    {
      v19 = 0;
    }

    glPopGroupMarkerEXT();
    glBindFramebuffer(0x8D40u, params);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)createPlatformGLContext
{
  v2 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2];

  return v2;
}

+ (id)createSharedGLContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sSharegroupContext)
  {
    v3 = objc_alloc(MEMORY[0x277CD9388]);
    sharegroup = [sSharegroupContext sharegroup];
    v5 = [v3 initWithAPI:2 sharegroup:sharegroup];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2];
    objc_storeStrong(&sSharegroupContext, v5);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sharegroup = sTextureCache;
    sTextureCache = dictionary;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

+ (void)teardownSharedGLContext
{
  obj = self;
  objc_sync_enter(obj);
  v2 = sSharegroupContext;
  sSharegroupContext = 0;

  v3 = sTextureCache;
  sTextureCache = 0;

  objc_sync_exit(obj);
}

+ (void)createSharedRepeatableTexture:(unsigned int *)texture withImageName:(id)name ofType:(id)type
{
  nameCopy = name;
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sTextureCache && ([MEMORY[0x277CD9388] currentContext], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "sharegroup"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(sSharegroupContext, "sharegroup"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v11 == v12))
  {
    v13 = [sTextureCache objectForKeyedSubscript:nameCopy];
    v14 = v13;
    if (v13)
    {
      *texture = [v13 unsignedIntegerValue];
    }

    else
    {
      [selfCopy createRepeatableTexture:texture withImageName:nameCopy ofType:typeCopy];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*texture];
      [sTextureCache setObject:v15 forKeyedSubscript:nameCopy];
    }
  }

  else
  {
    *texture = 0;
  }

  objc_sync_exit(selfCopy);
}

+ (void)_postGLInactiveNotification
{
  if ([self gpuAvailable])
  {
    [self teardownSharedGLContext];
  }

  atomic_store(0, DKSafeToUseOpenGL);
}

+ (void)setCurrentClearColor
{
  if (DKIsDarkMode())
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v2 = 1.0;
    v3 = 1.0;
    v4 = 1.0;
  }

  glClearColor(v2, v3, v4, 1.0);
}

@end