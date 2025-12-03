@interface NUTiledImageLayer
- ($0AC6E346AE4835514AAA8AC86D8F4844)validRegionInsets;
- (NSString)debugDescription;
- (NUTiledImageLayer)init;
- (id)snapshotImage;
- (void)_recycleTiles;
- (void)_updateSublayers;
- (void)dealloc;
- (void)removeFromSuperlayer;
- (void)setGeometry:(id)geometry;
- (void)setImage:(id)image;
@end

@implementation NUTiledImageLayer

- ($0AC6E346AE4835514AAA8AC86D8F4844)validRegionInsets
{
  p_validRegionInsets = &self->_validRegionInsets;
  x = self->_validRegionInsets.x;
  y = p_validRegionInsets->y;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (NSString)debugDescription
{
  string = [MEMORY[0x277CCAB68] string];
  name = [(NUTiledImageLayer *)self name];
  [string appendFormat:@"<%@ - name:%@\n", self, name];

  delegate = [(NUTiledImageLayer *)self delegate];
  [string appendFormat:@"\tdelegate:%@\n", delegate];

  [(NUTiledImageLayer *)self position];
  v6 = NSStringFromPoint(v23);
  [string appendFormat:@"\tposition:%@\n", v6];

  [(NUTiledImageLayer *)self bounds];
  v7 = NSStringFromRect(v25);
  [string appendFormat:@"\tbounds:%@\n", v7];

  [(NUTiledImageLayer *)self contentsScale];
  [string appendFormat:@"\tcontentScale:%f\n", v8];
  [(NUTiledImageLayer *)self anchorPoint];
  v9 = NSStringFromPoint(v24);
  [string appendFormat:@"\tanchorPoint:%@\n", v9];

  [(NUTiledImageLayer *)self transform];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g}", v13, v14, v15, v16, v17, v18, v19, v20, v21];
  [string appendFormat:@"\ttransform:%@\n", v10];

  image = [(NUTiledImageLayer *)self image];
  [string appendFormat:@"\timage:%@\n", image];

  [string appendString:@">"];

  return string;
}

- (id)snapshotImage
{
  [(NUTiledImageLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__264;
  v22 = __Block_byref_object_dispose__265;
  v11 = objc_alloc(MEMORY[0x277CBF758]);
  redColor = [MEMORY[0x277CBF730] redColor];
  v13 = [v11 initWithColor:redColor];
  v23 = [v13 imageByCroppingToRect:{v4, v6, v8, v10}];

  accessQueue = self->_accessQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__NUTiledImageLayer_snapshotImage__block_invoke;
  v17[3] = &unk_279973E08;
  *&v17[6] = v4;
  *&v17[7] = v6;
  *&v17[8] = v8;
  *&v17[9] = v10;
  v17[4] = self;
  v17[5] = &v18;
  dispatch_sync(accessQueue, v17);
  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

void __34__NUTiledImageLayer_snapshotImage__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(a1 + 32) sublayers];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 contents];

        v9 = [objc_alloc(MEMORY[0x277CBF758]) initWithIOSurface:v8];
        [v7 position];
        v11 = v10;
        v13 = v12;
        v14 = *(a1 + 72);
        [v9 extent];
        CGAffineTransformMakeTranslation(&v20, v11, v14 - (v13 + v15));
        v16 = [v9 imageByApplyingTransform:&v20];

        if (v16)
        {
          v17 = [v16 imageByCompositingOverImage:*(*(*(a1 + 40) + 8) + 40)];
          v18 = *(*(a1 + 40) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }
}

- (void)_updateSublayers
{
  superlayer = [(NUTiledImageLayer *)self superlayer];

  if (superlayer)
  {
    [(NUTiledImageLayer *)self _recycleTiles];
    image = [(NUTiledImageLayer *)self image];
    if (image)
    {
      geometry = [(NUTiledImageLayer *)self geometry];

      if (geometry)
      {
        [(NUTiledImageLayer *)self position];
        [(NUTiledImageLayer *)self anchorPoint];
        [(NUTiledImageLayer *)self bounds];
        NUAbsolutePointInRect();
        geometry2 = [(NUTiledImageLayer *)self geometry];
        [geometry2 renderScale];
        NUScaleToDouble();

        [(NUTiledImageLayer *)self bounds];
        v31 = 0u;
        v32 = 0u;
        NUPixelRectFromCGRect();
        if ([(NUTiledImageLayer *)self isGeometryFlipped])
        {
          v25 = 0;
          v26 = 0;
          v27 = [image size];
          v28 = v7;
          v23 = v31;
          v24 = v32;
          NUPixelRectFlipYOrigin();
          v31 = v29;
          v32 = v30;
        }

        v29 = v31;
        v30 = v32;
        v8 = [MEMORY[0x277D2D008] regionWithRect:&v29];
        validRegion = [image validRegion];
        validRegionInsets = [(NUTiledImageLayer *)self validRegionInsets];
        v12 = [validRegion regionByShrinkingBy:{validRegionInsets, v11}];

        v13 = [v12 regionByClippingToRegion:v8];
        if (([v13 isEmpty] & 1) == 0)
        {
          colorSpace = [image colorSpace];
          if ([colorSpace isHDR])
          {
            isExtended = 1;
          }

          else
          {
            isExtended = [colorSpace isExtended];
          }

          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __37__NUTiledImageLayer__updateSublayers__block_invoke;
          v16[3] = &unk_279973DE0;
          v17 = v13;
          selfCopy = self;
          v20 = v31;
          v21 = v32;
          v19 = image;
          v22 = isExtended;
          [v19 readSurfaceRegion:v17 withBlock:v16];
        }
      }
    }
  }
}

void __37__NUTiledImageLayer__updateSublayers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v36 = 0u;
  v37 = 0u;
  if (v3)
  {
    [v3 frameRect];
  }

  v5 = [v4 surface];
  v6 = [v4 surface];
  v7 = [v6 size];
  v8 = [v4 surface];
  [v8 size];
  v10 = v9;

  v11 = *(a1 + 32);
  if (v4)
  {
    [v4 contentRect];
  }

  else
  {
    memset(v35, 0, sizeof(v35));
  }

  v12 = v7;
  v13 = v10;
  v14 = [v11 regionByClippingToRect:v35];
  v15 = *(*(a1 + 40) + 48);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v26 = v36;
  v20[2] = __37__NUTiledImageLayer__updateSublayers__block_invoke_2;
  v20[3] = &unk_279973DB8;
  v21 = v14;
  v27 = v37;
  v28 = *(a1 + 56);
  v29 = *(a1 + 72);
  v22 = *(a1 + 48);
  v23 = v4;
  v30 = 0;
  v31 = 0;
  v32 = v12;
  v33 = v13;
  v16 = *(a1 + 40);
  v24 = v5;
  v25 = v16;
  v34 = *(a1 + 88);
  v17 = v5;
  v18 = v4;
  v19 = v14;
  dispatch_sync(v15, v20);
}

void __37__NUTiledImageLayer__updateSublayers__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__NUTiledImageLayer__updateSublayers__block_invoke_3;
  v11[3] = &unk_279973D90;
  v3 = *(a1 + 88);
  v14 = *(a1 + 72);
  v15 = v3;
  v4 = *(a1 + 120);
  v16 = *(a1 + 104);
  v17 = v4;
  v5 = (a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 152);
  v18 = *(a1 + 136);
  v19 = v8;
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = *v5;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v12 = v10;
  v13 = v9;
  v20 = *(a1 + 168);
  [v2 enumerateRects:v11];
}

void __37__NUTiledImageLayer__updateSublayers__block_invoke_3(uint64_t a1, __int128 *a2)
{
  NUPixelRectOffset();
  v7 = *a2;
  v8 = a2[1];
  NUPixelRectOffset();
  v4 = [[NUTileLayer alloc] initWithImage:*(a1 + 32) tile:*(a1 + 40), v7, v8, 0, 0];
  [(NUTileLayer *)v4 setAnchorPoint:0.0, 0.0];
  NUPixelPointToCGPoint();
  [(NUTileLayer *)v4 setPosition:?];
  [(NUTileLayer *)v4 setBounds:0.0, 0.0, 0, 0];
  NUPixelRectToCGRect();
  CGRectInset(v9, 0.0, 0.0);
  NURectNormalize();
  [(NUTileLayer *)v4 setContentsRect:0, 0, 0, 0];
  v5 = [*(a1 + 48) IOSurface];
  [(NUTileLayer *)v4 setContents:v5];

  [(NUTileLayer *)v4 setDelegate:*(a1 + 56)];
  [(NUTileLayer *)v4 setAllowsEdgeAntialiasing:0];
  [(NUTileLayer *)v4 setWantsExtendedDynamicRangeContent:*(a1 + 160)];
  [(NUTileLayer *)v4 setToneMapMode:*MEMORY[0x277CD9DE0]];
  [*(a1 + 56) addSublayer:v4];
  v6 = [*(a1 + 56) _tileLayers];
  [v6 addObject:v4];
}

- (void)_recycleTiles
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__NUTiledImageLayer__recycleTiles__block_invoke;
  block[3] = &unk_279973E38;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __34__NUTiledImageLayer__recycleTiles__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _tileLayers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeFromSuperlayer];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) _tileLayers];
  [v7 removeAllObjects];
}

- (void)setGeometry:(id)geometry
{
  v12 = *MEMORY[0x277D85DE8];
  geometryCopy = geometry;
  _geometry = [(NUTiledImageLayer *)self _geometry];
  [(NUTiledImageLayer *)self set_geometry:geometryCopy];
  if (!_geometry || ([geometryCopy renderScale], objc_msgSend(_geometry, "renderScale"), (NUScaleEqual() & 1) == 0))
  {
    [geometryCopy renderScale];
    NUScaleInvert();
    NUScaleToDouble();
    CATransform3DMakeScale(&v10, v6, v6, 1.0);
    buf = v10;
    [(NUTiledImageLayer *)self setTransform:&buf];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v8 = log;
      [(NUTiledImageLayer *)self transform];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g, %.15g}", *&buf.m11, *&buf.m12, *&buf.m13, *&buf.m21, *&buf.m23, *&buf.m31, *&buf.m33, *&buf.m41, *&buf.m43];
      LODWORD(buf.m11) = 136315394;
      *(&buf.m11 + 4) = "[NUTiledImageLayer setGeometry:]";
      WORD2(buf.m12) = 2112;
      *(&buf.m12 + 6) = v9;
      _os_log_debug_impl(&dword_25BD29000, v8, OS_LOG_TYPE_DEBUG, "%s transform = %@", &buf, 0x16u);
    }

    [(NUTiledImageLayer *)self setNeedsLayout];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  _image = [(NUTiledImageLayer *)self _image];
  [_image endAccess];

  [(NUTiledImageLayer *)self set_image:imageCopy];
  _image2 = [(NUTiledImageLayer *)self _image];
  [_image2 beginAccess];

  [(NUTiledImageLayer *)self setNeedsLayout];
}

- (void)removeFromSuperlayer
{
  [(NUTiledImageLayer *)self _recycleTiles];
  v3.receiver = self;
  v3.super_class = NUTiledImageLayer;
  [(NUTiledImageLayer *)&v3 removeFromSuperlayer];
}

- (void)dealloc
{
  _image = [(NUTiledImageLayer *)self _image];
  [_image endAccess];

  [(NUTiledImageLayer *)self set_image:0];
  [(NUTiledImageLayer *)self _recycleTiles];
  v4.receiver = self;
  v4.super_class = NUTiledImageLayer;
  [(NUTiledImageLayer *)&v4 dealloc];
}

- (NUTiledImageLayer)init
{
  v11.receiver = self;
  v11.super_class = NUTiledImageLayer;
  v2 = [(NUTiledImageLayer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(NUTiledImageLayer *)v2 setGeometryFlipped:[(NUTiledImageLayer *)v2 nu_contentsAreFlipped]^ 1];
    [(NUTiledImageLayer *)v3 setAllowsEdgeAntialiasing:0];
    v4 = objc_opt_new();
    [(NUTiledImageLayer *)v3 set_tileLayers:v4];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.neutrinokit.mediaview", v5);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v6;

    v8 = os_log_create("com.apple.neutrinokit.mediaview", "layer");
    log = v3->_log;
    v3->_log = v8;
  }

  return v3;
}

@end