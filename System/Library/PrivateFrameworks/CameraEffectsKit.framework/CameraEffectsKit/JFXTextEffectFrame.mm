@interface JFXTextEffectFrame
+ (id)frameWithEffect:(id)effect relativeToSize:(CGSize)size origin:(int)origin time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames;
- (CGPoint)center;
- (CGRect)objectBounds;
- (CGRect)outputROI;
- (CGRect)viewSpaceObjectBounds;
- (CGSize)effectSize;
- (CGSize)relativeToSize;
- (PVCGPointQuad)cornerPoints;
- (__n128)setTransform:(__int128 *)transform;
- (__n128)setTransformInfo:(__int128 *)info;
- (__n128)transform;
- (__n128)transformInfo;
- (id)description;
- (void)dealloc;
- (void)setCornerPoints:(PVCGPointQuad *)points;
- (void)setExpandedHitAreaPath:(CGPath *)path;
- (void)setHitAreaPath:(CGPath *)path;
- (void)setTime:(id *)time;
@end

@implementation JFXTextEffectFrame

- (void)dealloc
{
  CGPathRelease(self->_hitAreaPath);
  CGPathRelease(self->_expandedHitAreaPath);
  v3.receiver = self;
  v3.super_class = JFXTextEffectFrame;
  [(JFXTextEffectFrame *)&v3 dealloc];
}

+ (id)frameWithEffect:(id)effect relativeToSize:(CGSize)size origin:(int)origin time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames
{
  framesCopy = frames;
  shadowCopy = shadow;
  frameCopy = frame;
  v13 = *&origin;
  height = size.height;
  width = size.width;
  effectCopy = effect;
  v18 = [self alloc];
  v21 = *time;
  v19 = [v18 initWithEffect:effectCopy relativeToSize:v13 origin:&v21 time:frameCopy forcePosterFrame:shadowCopy includeDropShadow:framesCopy includeTextFrames:{width, height}];

  return v19;
}

- (CGRect)viewSpaceObjectBounds
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  [(JFXTextEffectFrame *)self objectBounds];
  PVCGPointQuad_from_CGRect(&v50, v55);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  [(JFXTextEffectFrame *)self transform];
  v34 = 0;
  v35 = &v34;
  v36 = 0x6010000000;
  v37 = "";
  v3 = *(MEMORY[0x277D416D0] + 16);
  v38 = *MEMORY[0x277D416D0];
  v39 = v3;
  v4 = *(MEMORY[0x277D416D0] + 48);
  v40 = *(MEMORY[0x277D416D0] + 32);
  v41 = v4;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v23 = __43__JFXTextEffectFrame_viewSpaceObjectBounds__block_invoke;
  v24 = &unk_278D7CA80;
  v27 = v44;
  v28 = v45;
  v25 = v42;
  v26 = v43;
  v31 = v48;
  v32 = v49;
  v29 = v46;
  v30 = v47;
  v33 = &v34;
  v21.a = v50;
  v21.b = v51;
  v21.c = v52;
  v21.d = v53;
  v5 = v22;
  v6 = 0;
  do
  {
    v54 = v21;
    PVCGPointQuad_get_point_at_index(&v54);
    (v23)(v5, v6);
    v6 = (v6 + 1);
  }

  while (v6 != 4);

  v7 = *(v35 + 3);
  v54.a = *(v35 + 2);
  v54.b = v7;
  v8 = *(v35 + 5);
  v54.c = *(v35 + 4);
  v54.d = v8;
  pv_bounding_CGRect(&v54);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  _Block_object_dispose(&v34, 8);
  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGPoint)center
{
  [(JFXTextEffectFrame *)self cornerPoints];
  pv_CGPoint_get_quad_center(&v4);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setHitAreaPath:(CGPath *)path
{
  CGPathRetain(path);
  CGPathRelease(self->_hitAreaPath);
  self->_hitAreaPath = path;
}

- (void)setExpandedHitAreaPath:(CGPath *)path
{
  CGPathRetain(path);
  CGPathRelease(self->_expandedHitAreaPath);
  self->_expandedHitAreaPath = path;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v22.receiver = self;
  v22.super_class = JFXTextEffectFrame;
  v18 = [(JFXTextEffectFrame *)&v22 description];
  [(JFXTextEffectFrame *)self time];
  v17 = CMTimeCopyDescription(0, &time);
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXTextEffectFrame forcePosterFrame](self, "forcePosterFrame")}];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{PVCoordinateSystemOriginNames[-[JFXTextEffectFrame effectOrigin](self, "effectOrigin")]}];
  [(JFXTextEffectFrame *)self effectSize];
  v15 = NSStringFromCGSize(v24);
  [(JFXTextEffectFrame *)self center];
  v3 = NSStringFromCGPoint(v25);
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{PVCoordinateSystemOriginNames[-[JFXTextEffectFrame origin](self, "origin")]}];
  [(JFXTextEffectFrame *)self relativeToSize];
  v12 = NSStringFromCGSize(v26);
  [(JFXTextEffectFrame *)self cornerPoints];
  v4 = NSStringFromPVCGPointQuad();
  [(JFXTextEffectFrame *)self objectBounds];
  v11 = NSStringFromCGRect(v27);
  hitAreaPoints = [(JFXTextEffectFrame *)self hitAreaPoints];
  [(JFXTextEffectFrame *)self transform];
  v6 = NSStringFromSIMDDouble4x4();
  v7 = MEMORY[0x277CCABB0];
  textFrames = [(JFXTextEffectFrame *)self textFrames];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(textFrames, "count")}];
  v20 = [v19 stringWithFormat:@"%@\ntime: %@\nforcePosterFrame: %@\neffectOrigin: %@\neffectSize: %@\n\ncenter: %@\n\norigin: %@\nrelativeToSize: %@\n\ncornerPoints:\n%@\n\nobjectBounds: %@\n\nhitAreaPoints: %@\n\ntransform:\n%@\n\ntextFrames (count): %@", v18, v17, v14, v16, v15, v3, v13, v12, v4, v11, hitAreaPoints, v6, v9];

  return v20;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

- (CGSize)effectSize
{
  width = self->_effectSize.width;
  height = self->_effectSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)relativeToSize
{
  width = self->_relativeToSize.width;
  height = self->_relativeToSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PVCGPointQuad)cornerPoints
{
  v3 = *&self[3].a.y;
  retstr->a = *&self[2].d.y;
  retstr->b = v3;
  v4 = *&self[3].c.y;
  retstr->c = *&self[3].b.y;
  retstr->d = v4;
  return self;
}

- (void)setCornerPoints:(PVCGPointQuad *)points
{
  a = points->a;
  b = points->b;
  c = points->c;
  self->_cornerPoints.d = points->d;
  self->_cornerPoints.c = c;
  self->_cornerPoints.b = b;
  self->_cornerPoints.a = a;
}

- (CGRect)outputROI
{
  x = self->_outputROI.origin.x;
  y = self->_outputROI.origin.y;
  width = self->_outputROI.size.width;
  height = self->_outputROI.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)objectBounds
{
  x = self->_objectBounds.origin.x;
  y = self->_objectBounds.origin.y;
  width = self->_objectBounds.size.width;
  height = self->_objectBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)transform
{
  v2 = *(self + 336);
  *(a2 + 64) = *(self + 320);
  *(a2 + 80) = v2;
  v3 = *(self + 368);
  *(a2 + 96) = *(self + 352);
  *(a2 + 112) = v3;
  v4 = *(self + 272);
  *a2 = *(self + 256);
  *(a2 + 16) = v4;
  result = *(self + 288);
  v6 = *(self + 304);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setTransform:(__int128 *)transform
{
  v3 = *transform;
  v4 = transform[1];
  v5 = transform[3];
  *(self + 288) = transform[2];
  *(self + 304) = v5;
  *(self + 256) = v3;
  *(self + 272) = v4;
  result = transform[4];
  v7 = transform[5];
  v8 = transform[7];
  *(self + 352) = transform[6];
  *(self + 368) = v8;
  *(self + 320) = result;
  *(self + 336) = v7;
  return result;
}

- (__n128)transformInfo
{
  v2 = *(self + 464);
  *(a2 + 64) = *(self + 448);
  *(a2 + 80) = v2;
  v3 = *(self + 496);
  *(a2 + 96) = *(self + 480);
  *(a2 + 112) = v3;
  v4 = *(self + 400);
  *a2 = *(self + 384);
  *(a2 + 16) = v4;
  result = *(self + 416);
  v6 = *(self + 432);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setTransformInfo:(__int128 *)info
{
  v3 = *info;
  v4 = info[1];
  v5 = info[3];
  *(self + 416) = info[2];
  *(self + 432) = v5;
  *(self + 384) = v3;
  *(self + 400) = v4;
  result = info[4];
  v7 = info[5];
  v8 = info[7];
  *(self + 480) = info[6];
  *(self + 496) = v8;
  *(self + 448) = result;
  *(self + 464) = v7;
  return result;
}

@end