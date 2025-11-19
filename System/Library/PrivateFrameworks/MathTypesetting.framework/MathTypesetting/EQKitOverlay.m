@interface EQKitOverlay
- (CGRect)erasableBounds;
- (EQKitOverlay)initWithLayout:(id)a3 scale:(double)a4;
- (id)pLineBoxFrom:(CGPoint)a3 to:(CGPoint)a4 withWithRGBA:(double *)a5 scale:(double)a6;
- (id)pOpticalAlignOverlayBoxesForBox:(id)a3 topLevelBox:(id)a4 minDistance:(double)a5;
- (void)addErasableBounds;
- (void)addOpticalAlignForEdge:(unsigned int)a3 config:(id)a4;
- (void)addOpticalAlignWithMinimumDistance:(double)a3;
- (void)addOverlayBox:(id)a3 offset:(CGPoint)a4;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitOverlay

- (EQKitOverlay)initWithLayout:(id)a3 scale:(double)a4
{
  v12.receiver = self;
  v12.super_class = EQKitOverlay;
  v6 = [(EQKitOverlay *)&v12 init];
  if (v6)
  {
    v6->_overlayBoxes = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6->_box = [a3 box];
    [a3 erasableBounds];
    v6->_erasableBounds.origin.y = v7;
    v6->_erasableBounds.size.width = v8;
    v6->_erasableBounds.size.height = v9;
    v6->_scale = a4;
    v6->_erasableBounds.origin.x = v10;
  }

  return v6;
}

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  overlayBoxes = self->_overlayBoxes;
  v8 = [(NSMutableArray *)overlayBoxes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(overlayBoxes);
        }

        [*(*(&v12 + 1) + 8 * i) renderIntoContext:a3 offset:{x, y}];
      }

      v9 = [(NSMutableArray *)overlayBoxes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addOverlayBox:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [EQKitPaddedBox alloc];
  [a3 height];
  v10 = v9;
  [a3 width];
  v12 = v11;
  [a3 depth];
  v14 = [(EQKitPaddedBox *)v8 initWithBox:a3 height:v10 width:v12 depth:v13 lspace:x voffset:y];
  overlayBoxes = self->_overlayBoxes;

  [(NSMutableArray *)overlayBoxes addObject:v14];
}

- (void)addErasableBounds
{
  v10 = *MEMORY[0x277D85DE8];
  Mutable = CGPathCreateMutable();
  CGPathAddRect(Mutable, 0, self->_erasableBounds);
  v8 = xmmword_2582D0760;
  v9 = unk_2582D0770;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF458]);
  v5 = CGColorCreate(v4, &v8);
  CGColorSpaceRelease(v4);
  v6 = [EQKitPathBox alloc];
  v7 = [(EQKitPathBox *)v6 initWithCGPath:Mutable height:v5 cgColor:2 drawingMode:0.0 lineWidth:1.0 / self->_scale, v8, v9];
  [(EQKitOverlay *)self addOverlayBox:v7 offset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  CGColorRelease(v5);
  CGPathRelease(Mutable);
}

- (void)addOpticalAlignWithMinimumDistance:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(EQKitOverlay *)self pOpticalAlignOverlayBoxesForBox:self->_box topLevelBox:self->_box minDistance:a3, 0];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    v8 = MEMORY[0x277CBF348];
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(EQKitOverlay *)self addOverlayBox:*(*(&v10 + 1) + 8 * v9++) offset:*v8, v8[1]];
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)pLineBoxFrom:(CGPoint)a3 to:(CGPoint)a4 withWithRGBA:(double *)a5 scale:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  result = CGPathCreateMutable();
  if (result)
  {
    v13 = result;
    CGPathMoveToPoint(result, 0, v11, v10);
    CGPathAddLineToPoint(v13, 0, x, y);
    v14 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF458]);
    v15 = CGColorCreate(v14, a5);
    CGColorSpaceRelease(v14);
    v16 = [[EQKitPathBox alloc] initWithCGPath:v13 height:v15 cgColor:2 drawingMode:0.0 lineWidth:1.0 / a6];
    CGColorRelease(v15);
    CGPathRelease(v13);
    return v16;
  }

  return result;
}

- (id)pOpticalAlignOverlayBoxesForBox:(id)a3 topLevelBox:(id)a4 minDistance:(double)a5
{
  v51 = *MEMORY[0x277D85DE8];
  EQKitPath::QuantizationConfig::QuantizationConfig(v47);
  v9 = objc_opt_class();
  v10 = EQKitUtilDynamicCast(v9, a3);
  v11 = [MEMORY[0x277CBEB18] array];
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 2;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = [v10 childBoxes];
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v40;
    v16 = MEMORY[0x277CBF348];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        if (a4)
        {
          [a4 transformFromDescendant:v18];
        }

        if (v14)
        {
          std::vector<EQKit::OpticalKern::Spec::Entry>::resize(v45, 0);
          if (![v18 appendOpticalAlignToSpec:v45 offset:{*&v38 + v16[1] * *&v37 + *&v36 * *v16, *(&v38 + 1) + v16[1] * *(&v37 + 1) + *(&v36 + 1) * *v16}])
          {
            v14 = 1;
            goto LABEL_24;
          }

          EQKit::OpticalKern::Edge::Composite::Composite(v34, v45, v47, 0);
          EQKit::OpticalKern::Edge::Composite::Composite(&v32, v43, v47, 0);
          v30 = *v16;
          v31 = v30;
          __p = 0;
          v28 = 0;
          v29 = 0;
          v26 = 0;
          isDistanceSmallerThanThreshold = EQKit::OpticalKern::Edge::Composite::isDistanceSmallerThanThreshold(&v32, v34, &v26, &v30, &__p, a5);
          NSLog(&cfstr_MoveOffsetF.isa, v26);
          v20 = _pathBoxForCompositeEdge(v34, self->_scale);
          if (v20)
          {
            [v11 addObject:v20];
          }

          v21 = _pathBoxForCompositeEdge(&v32, self->_scale);
          if (v21)
          {
            [v11 addObject:v21];
          }

          if (isDistanceSmallerThanThreshold)
          {
            v49[0] = xmmword_2582D0780;
            v49[1] = unk_2582D0790;
            v48[0] = xmmword_2582D07A0;
            v48[1] = unk_2582D07B0;
            for (j = __p; j != v28; j += 4)
            {
              [v11 addObject:{-[EQKitOverlay pLineBoxFrom:to:withWithRGBA:scale:](self, "pLineBoxFrom:to:withWithRGBA:scale:", v49, *j, j[1], j[2], j[3], self->_scale)}];
            }

            [v11 addObject:{-[EQKitOverlay pLineBoxFrom:to:withWithRGBA:scale:](self, "pLineBoxFrom:to:withWithRGBA:scale:", v48, v30, *&v31, *(&v31 + 1), self->_scale * 0.5)}];
          }

          if (__p)
          {
            v28 = __p;
            operator delete(__p);
          }

          *&v30 = &v33;
          std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](&v30);
          v32 = &v35;
          std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](&v32);
        }

        std::vector<EQKit::OpticalKern::Spec::Entry>::resize(v43, 0);
        v14 = [v18 appendOpticalAlignToSpec:v43 offset:{*&v38 + v16[1] * *&v37 + *&v36 * *v16, *(&v38 + 1) + v16[1] * *(&v37 + 1) + *(&v36 + 1) * *v16}];
LABEL_24:
        v23 = objc_opt_class();
        v24 = EQKitUtilDynamicCast(v23, v18);
        if (v24)
        {
          [v11 addObjectsFromArray:{-[EQKitOverlay pOpticalAlignOverlayBoxesForBox:topLevelBox:minDistance:](self, "pOpticalAlignOverlayBoxesForBox:topLevelBox:minDistance:", v24, a4, a5)}];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v13);
  }

  *&v36 = v43;
  std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&v36);
  *&v36 = v45;
  std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&v36);
  return v11;
}

- (void)addOpticalAlignForEdge:(unsigned int)a3 config:(id)a4
{
  memset(v25, 0, sizeof(v25));
  v26 = a3;
  v6 = MEMORY[0x277CBF348];
  [(EQKitBox *)self->_box appendOpticalAlignToSpec:v25 offset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  if ([a4 length])
  {
    v7 = [MEMORY[0x277CCAC80] scannerWithString:a4];
    __src = 0;
    v23 = 0;
    v24 = 0;
    while (([v7 isAtEnd] & 1) == 0)
    {
      v20 = 0;
      v8 = [v7 scanInteger:&v20];
      v9 = v20 >= 0 ? v8 : 0;
      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = v23;
      if (v23 >= v24)
      {
        v12 = __src;
        v13 = v23 - __src;
        v14 = (v23 - __src) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v16 = v24 - __src;
        if ((v24 - __src) >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v17);
        }

        *(8 * v14) = v20;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        v18 = __src;
        __src = 0;
        v23 = v11;
        v24 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v23 = v20;
        v11 = (v10 + 8);
      }

      v23 = v11;
    }

    if ([v7 isAtEnd])
    {
      operator new();
    }

    if (__src)
    {
      v23 = __src;
      operator delete(__src);
    }
  }

  EQKitPath::QuantizationConfig::QuantizationConfig(&__src);
  EQKitPath::QuantizationConfig::setThresholdCurveControlPointDistance(&__src, -1.0);
  EQKit::OpticalKern::Edge::Composite::Composite(&v20, v25, &__src, 0);
  v19 = _pathBoxForCompositeEdge(&v20, self->_scale);
  if (v19)
  {
    [(EQKitOverlay *)self addOverlayBox:v19 offset:*v6, v6[1]];
  }

  v27 = &v21;
  std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:ne200100](&v27);
  __src = v25;
  std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&__src);
}

- (CGRect)erasableBounds
{
  x = self->_erasableBounds.origin.x;
  y = self->_erasableBounds.origin.y;
  width = self->_erasableBounds.size.width;
  height = self->_erasableBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end