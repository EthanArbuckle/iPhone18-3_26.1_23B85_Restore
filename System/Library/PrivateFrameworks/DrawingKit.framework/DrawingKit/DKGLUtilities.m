@interface DKGLUtilities
+ (id)createPlatformGLContext;
+ (id)createSharedGLContext;
+ (id)pathForResource:(id)a3 ofType:(id)a4;
+ (id)snapshotImageOfFrameBufferWithID:(unsigned int)a3 bufferSize:(CGSize)a4 displayScale:(double)a5;
+ (unsigned)compileShader:(id)a3 ofType:(id)a4;
+ (void)_postGLInactiveNotification;
+ (void)createFBO:(unsigned int *)a3 depthRB:(unsigned int *)a4 texture:(unsigned int *)a5 width:(int)a6 height:(int)a7 format:(unsigned int)a8;
+ (void)createRepeatableTexture:(unsigned int *)a3 withImageName:(id)a4 ofType:(id)a5;
+ (void)createSharedRepeatableTexture:(unsigned int *)a3 withImageName:(id)a4 ofType:(id)a5;
+ (void)createTexture:(unsigned int *)a3 withImageName:(id)a4 ofType:(id)a5;
+ (void)createVBO:(unsigned int *)a3 size:(int64_t)a4 data:(void *)a5 usage:(unsigned int)a6;
+ (void)deleteFBO:(unsigned int *)a3 depthRB:(unsigned int *)a4 texture:(unsigned int *)a5;
+ (void)deleteTexture:(unsigned int *)a3;
+ (void)deleteVBO:(unsigned int *)a3;
+ (void)drawQuadAtX:(float)a3 Y:(float)a4 width:(float)a5 height:(float)a6;
+ (void)initialize;
+ (void)setCurrentClearColor;
+ (void)setProjectionMatrixForWidth:(float)a3 height:(float)a4 flipped:(BOOL)a5 matrix:(id *)a6;
+ (void)teardownSharedGLContext;
+ (void)translateMatrix:(id *)a3 byX:(float)a4 Y:(float)a5 result:(id *)a6;
@end

@implementation DKGLUtilities

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__DKGLUtilities_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)pathForResource:(id)a3 ofType:(id)a4
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:v7 ofType:v6];

  return v9;
}

+ (unsigned)compileShader:(id)a3 ofType:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [DKGLUtilities pathForResource:v5 ofType:v6];
  v8 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v7 encoding:4 error:0];
  if (!v8)
  {
    NSLog(&cfstr_ErrorLoadingSh.isa, v5, v6);
    goto LABEL_9;
  }

  v9 = v8;
  if ([v6 isEqualToString:@"vert"])
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

+ (void)createFBO:(unsigned int *)a3 depthRB:(unsigned int *)a4 texture:(unsigned int *)a5 width:(int)a6 height:(int)a7 format:(unsigned int)a8
{
  if (a3 && a5)
  {
    glGenTextures(1, a5);
    glBindTexture(0xDE1u, *a5);
    glTexImage2D(0xDE1u, 0, 6408, a6, a7, 0, 0x1908u, 0x1401u, 0);
    glTexParameteri(0xDE1u, 0x2801u, 9728);
    glTexParameteri(0xDE1u, 0x2800u, 9728);
    glTexParameteri(0xDE1u, 0x2802u, 33071);
    glTexParameteri(0xDE1u, 0x2803u, 33071);
    glGenFramebuffers(1, a3);
    glBindFramebuffer(0x8D40u, *a3);
    glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *a5, 0);
  }

  if (a4)
  {
    glGenRenderbuffers(1, a4);
    glBindRenderbuffer(0x8D41u, *a4);
    glRenderbufferStorage(0x8D41u, 0x81A6u, a6, a7);
    glFramebufferRenderbuffer(0x8D40u, 0x8D00u, 0x8D41u, *a4);
  }

  glDisable(0xB71u);
  glDepthMask(0);
  glEnable(0xBE2u);
  glBlendFunc(0x302u, 0x303u);
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4000u);

  glViewport(0, 0, a6, a7);
}

+ (void)deleteFBO:(unsigned int *)a3 depthRB:(unsigned int *)a4 texture:(unsigned int *)a5
{
  if (a3)
  {
    glDeleteFramebuffers(1, a3);
    *a3 = 0;
  }

  if (a4)
  {
    glDeleteRenderbuffers(1, a4);
    *a4 = 0;
  }

  if (a5)
  {
    glDeleteTextures(1, a5);
    *a5 = 0;
  }
}

+ (void)createVBO:(unsigned int *)a3 size:(int64_t)a4 data:(void *)a5 usage:(unsigned int)a6
{
  glGenBuffers(1, a3);
  glBindBuffer(0x8892u, *a3);

  glBufferData(0x8892u, a4, a5, a6);
}

+ (void)deleteVBO:(unsigned int *)a3
{
  if (a3)
  {
    glDeleteVertexArraysOES();
    *a3 = 0;
  }
}

+ (void)createTexture:(unsigned int *)a3 withImageName:(id)a4 ofType:(id)a5
{
  pixels[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  Error = glGetError();
  if (Error)
  {
    printf("glError: %04x caught at %s:%u\n", Error, "/Library/Caches/com.apple.xbs/Sources/DrawingKit/DrawingKit/Source/Shared/GLUtilities/DKGLUtilities.m", 175);
  }

  v10 = [DKGLUtilities pathForResource:v7 ofType:v8];
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
    if (a3)
    {
      *a3 = [v11 name];
    }
  }

  else
  {
    v15 = [v12 localizedDescription];
    NSLog(&cfstr_SFailedToLoadT.isa, "+[DKGLUtilities createTexture:withImageName:ofType:]", v15);

    if (a3)
    {
      pixels[0] = -1;
      pixels[1] = -1;
      glGenTextures(1, a3);
      glBindTexture(0xDE1u, *a3);
      glTexImage2D(0xDE1u, 0, 6408, 2, 2, 0, 0x1908u, 0x1401u, pixels);
    }
  }
}

+ (void)createRepeatableTexture:(unsigned int *)a3 withImageName:(id)a4 ofType:(id)a5
{
  v7 = a5;
  v8 = a4;
  [objc_opt_class() createTexture:a3 withImageName:v8 ofType:v7];

  if (a3)
  {
    glBindTexture(0xDE1u, *a3);
    glTexParameteri(0xDE1u, 0x2800u, 9729);
    glTexParameteri(0xDE1u, 0x2801u, 9729);
    glTexParameteri(0xDE1u, 0x2802u, 10497);

    glTexParameteri(0xDE1u, 0x2803u, 10497);
  }
}

+ (void)deleteTexture:(unsigned int *)a3
{
  if (a3)
  {
    glDeleteTextures(1, a3);
    *a3 = 0;
  }
}

+ (void)drawQuadAtX:(float)a3 Y:(float)a4 width:(float)a5 height:(float)a6
{
  v18 = *MEMORY[0x277D85DE8];
  buffers[1] = 0;
  *data = a3;
  *&data[1] = a4;
  v9 = a3 + a5;
  v10 = a4;
  v12 = a3;
  v13 = a4 + a6;
  v15 = a3 + a5;
  v16 = a4 + a6;
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

+ (void)setProjectionMatrixForWidth:(float)a3 height:(float)a4 flipped:(BOOL)a5 matrix:(id *)a6
{
  v6 = 0;
  v7.i32[0] = -1.0;
  if (a5)
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
  *a6 = v13;
  *(a6 + 1) = v9;
  *(a6 + 2) = v10;
  *(a6 + 3) = v11;
}

+ (void)translateMatrix:(id *)a3 byX:(float)a4 Y:(float)a5 result:(id *)a6
{
  v6 = 0;
  v8 = 0;
  v9 = 1.0;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = *(a3 + 3);
  v17[2] = xmmword_249D9D910;
  v17[3] = *&a4;
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
  *a6 = v18;
  *(a6 + 1) = v14;
  *(a6 + 2) = v15;
  *(a6 + 3) = v16;
}

+ (id)snapshotImageOfFrameBufferWithID:(unsigned int)a3 bufferSize:(CGSize)a4 displayScale:(double)a5
{
  if (a3)
  {
    height = a4.height;
    width = a4.width;
    params = 0;
    glGetIntegerv(0x8CA6u, &params);
    glPushGroupMarkerEXT(0, "Take Snapshot");
    glBindFramebuffer(0x8D40u, a3);
    v9 = (width * a5);
    v10 = (height * a5);
    param = 0;
    v11 = malloc_type_malloc(4 * v9 * v10, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      glGetIntegerv(0xD05u, &param);
      glPixelStorei(0xD05u, 1);
      glReadPixels(0, 0, (width * a5), (height * a5), 0x1908u, 0x1401u, v12);
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
          v18 = CGImageCreate((width * a5), (height * a5), 8uLL, 0x20uLL, 4 * v9, DeviceRGB, 3u, v16, 0, 0, kCGRenderingIntentDefault);
          if (v18)
          {
            v19 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v18 scale:0 orientation:a5];
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
  v2 = a1;
  objc_sync_enter(v2);
  if (sSharegroupContext)
  {
    v3 = objc_alloc(MEMORY[0x277CD9388]);
    v4 = [sSharegroupContext sharegroup];
    v5 = [v3 initWithAPI:2 sharegroup:v4];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2];
    objc_storeStrong(&sSharegroupContext, v5);
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v4 = sTextureCache;
    sTextureCache = v6;
  }

  objc_sync_exit(v2);

  return v5;
}

+ (void)teardownSharedGLContext
{
  obj = a1;
  objc_sync_enter(obj);
  v2 = sSharegroupContext;
  sSharegroupContext = 0;

  v3 = sTextureCache;
  sTextureCache = 0;

  objc_sync_exit(obj);
}

+ (void)createSharedRepeatableTexture:(unsigned int *)a3 withImageName:(id)a4 ofType:(id)a5
{
  v16 = a4;
  v8 = a5;
  v9 = a1;
  objc_sync_enter(v9);
  if (sTextureCache && ([MEMORY[0x277CD9388] currentContext], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "sharegroup"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(sSharegroupContext, "sharegroup"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v11 == v12))
  {
    v13 = [sTextureCache objectForKeyedSubscript:v16];
    v14 = v13;
    if (v13)
    {
      *a3 = [v13 unsignedIntegerValue];
    }

    else
    {
      [v9 createRepeatableTexture:a3 withImageName:v16 ofType:v8];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
      [sTextureCache setObject:v15 forKeyedSubscript:v16];
    }
  }

  else
  {
    *a3 = 0;
  }

  objc_sync_exit(v9);
}

+ (void)_postGLInactiveNotification
{
  if ([a1 gpuAvailable])
  {
    [a1 teardownSharedGLContext];
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