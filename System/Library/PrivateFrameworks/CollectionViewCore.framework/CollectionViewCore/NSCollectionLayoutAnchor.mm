@interface NSCollectionLayoutAnchor
+ (NSCollectionLayoutAnchor)layoutAnchorWithAnchorPoint:(CGPoint)point;
+ (NSCollectionLayoutAnchor)layoutAnchorWithAnchorPoint:(CGPoint)point offset:(CGPoint)offset;
+ (NSCollectionLayoutAnchor)layoutAnchorWithAnchorPoint:(CGPoint)point unitOffset:(CGPoint)offset;
+ (NSCollectionLayoutAnchor)layoutAnchorWithEdges:(NSDirectionalRectEdge)edges;
+ (NSCollectionLayoutAnchor)layoutAnchorWithEdges:(NSDirectionalRectEdge)edges absoluteOffset:(CGPoint)absoluteOffset;
+ (NSCollectionLayoutAnchor)layoutAnchorWithEdges:(NSDirectionalRectEdge)edges fractionalOffset:(CGPoint)fractionalOffset;
- (BOOL)isEqual:(id)equal;
- (CGPoint)anchorPoint;
- (CGPoint)offset;
- (CGRect)_itemFrameForContainerRect:(CGRect)rect itemSize:(CGSize)size itemLayoutAnchor:(id)anchor;
- (NSCollectionLayoutAnchor)initWithEdges:(unint64_t)edges offset:(CGPoint)offset anchorPoint:(CGPoint)point offsetIsUnitOffset:(BOOL)unitOffset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NSCollectionLayoutAnchor

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSCollectionLayoutAnchor)initWithEdges:(unint64_t)edges offset:(CGPoint)offset anchorPoint:(CGPoint)point offsetIsUnitOffset:(BOOL)unitOffset
{
  y = point.y;
  x = point.x;
  v9 = offset.y;
  v10 = offset.x;
  v13.receiver = self;
  v13.super_class = NSCollectionLayoutAnchor;
  result = [(NSCollectionLayoutAnchor *)&v13 init];
  if (result)
  {
    result->_edges = edges;
    result->_offset.x = v10;
    result->_offset.y = v9;
    result->_anchorPoint.x = x;
    result->_anchorPoint.y = y;
    result->_offsetIsUnitOffset = unitOffset;
  }

  return result;
}

+ (NSCollectionLayoutAnchor)layoutAnchorWithEdges:(NSDirectionalRectEdge)edges
{
  v4 = vdupq_n_s64(edges);
  __asm
  {
    FMOV            V3.2D, #0.5
    FMOV            V4.2D, #1.0
  }

  v14 = vbslq_s8(vceqzq_s64(vandq_s8(v4, xmmword_243BB23B0)), vbslq_s8(vceqzq_s64(vandq_s8(v4, xmmword_243BB23C0)), _Q3, _Q4), vandq_s8(_Q3, vceqq_s64(vandq_s8(v4, xmmword_243BB23D0), xmmword_243BB23D0)));
  v11 = [self alloc];
  v12 = [v11 initWithEdges:edges offset:0 anchorPoint:*MEMORY[0x277CBF348] offsetIsUnitOffset:{*(MEMORY[0x277CBF348] + 8), *&v14}];

  return v12;
}

+ (NSCollectionLayoutAnchor)layoutAnchorWithEdges:(NSDirectionalRectEdge)edges absoluteOffset:(CGPoint)absoluteOffset
{
  x = absoluteOffset.x;
  v5 = vdupq_n_s64(edges);
  __asm
  {
    FMOV            V3.2D, #0.5
    FMOV            V4.2D, #1.0
  }

  v12 = [[self alloc] initWithEdges:edges offset:0 anchorPoint:x offsetIsUnitOffset:{absoluteOffset.y, vbslq_s8(vceqzq_s64(vandq_s8(v5, xmmword_243BB23B0)), vbslq_s8(vceqzq_s64(vandq_s8(v5, xmmword_243BB23C0)), _Q3, _Q4), vandq_s8(_Q3, vceqq_s64(vandq_s8(v5, xmmword_243BB23D0), xmmword_243BB23D0)))}];

  return v12;
}

+ (NSCollectionLayoutAnchor)layoutAnchorWithEdges:(NSDirectionalRectEdge)edges fractionalOffset:(CGPoint)fractionalOffset
{
  x = fractionalOffset.x;
  v5 = vdupq_n_s64(edges);
  __asm
  {
    FMOV            V3.2D, #0.5
    FMOV            V4.2D, #1.0
  }

  v12 = [[self alloc] initWithEdges:edges offset:1 anchorPoint:x offsetIsUnitOffset:{fractionalOffset.y, vbslq_s8(vceqzq_s64(vandq_s8(v5, xmmword_243BB23B0)), vbslq_s8(vceqzq_s64(vandq_s8(v5, xmmword_243BB23C0)), _Q3, _Q4), vandq_s8(_Q3, vceqq_s64(vandq_s8(v5, xmmword_243BB23D0), xmmword_243BB23D0)))}];

  return v12;
}

+ (NSCollectionLayoutAnchor)layoutAnchorWithAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = [self alloc];
  v6 = [v5 initWithEdges:0 offset:0 anchorPoint:*MEMORY[0x277CBF348] offsetIsUnitOffset:{*(MEMORY[0x277CBF348] + 8), x, y}];

  return v6;
}

+ (NSCollectionLayoutAnchor)layoutAnchorWithAnchorPoint:(CGPoint)point offset:(CGPoint)offset
{
  v4 = [[self alloc] initWithEdges:0 offset:0 anchorPoint:offset.x offsetIsUnitOffset:{offset.y, point.x, point.y}];

  return v4;
}

+ (NSCollectionLayoutAnchor)layoutAnchorWithAnchorPoint:(CGPoint)point unitOffset:(CGPoint)offset
{
  v4 = [[self alloc] initWithEdges:0 offset:1 anchorPoint:offset.x offsetIsUnitOffset:{offset.y, point.x, point.y}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  edges = [(NSCollectionLayoutAnchor *)self edges];
  [(NSCollectionLayoutAnchor *)self offset];
  v7 = v6;
  v9 = v8;
  [(NSCollectionLayoutAnchor *)self anchorPoint];
  v11 = v10;
  v13 = v12;
  offsetIsUnitOffset = [(NSCollectionLayoutAnchor *)self offsetIsUnitOffset];

  return [v4 initWithEdges:edges offset:offsetIsUnitOffset anchorPoint:v7 offsetIsUnitOffset:{v9, v11, v13}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(NSCollectionLayoutAnchor *)self edges], v5 == [(NSCollectionLayoutAnchor *)equalCopy edges]))
    {
      [(NSCollectionLayoutAnchor *)self anchorPoint];
      v7 = v6;
      v9 = v8;
      [(NSCollectionLayoutAnchor *)equalCopy anchorPoint];
      LOBYTE(v11) = 0;
      if (v7 == v12 && v9 == v10)
      {
        [(NSCollectionLayoutAnchor *)self offset];
        v14 = v13;
        v16 = v15;
        [(NSCollectionLayoutAnchor *)equalCopy offset];
        LOBYTE(v11) = 0;
        if (v14 == v18 && v16 == v17)
        {
          offsetIsUnitOffset = [(NSCollectionLayoutAnchor *)self offsetIsUnitOffset];
          v11 = offsetIsUnitOffset ^ [(NSCollectionLayoutAnchor *)equalCopy offsetIsUnitOffset]^ 1;
        }
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSCollectionLayoutAnchor edges](self, "edges")}];
  [(NSCollectionLayoutAnchor *)self offset];
  v9 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g}", 17, v7, 17, v8);
  [(NSCollectionLayoutAnchor *)self anchorPoint];
  v12 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g}", 17, v10, 17, v11);
  v13 = [v3 stringWithFormat:@"<%@ %p: edges=%@ offset=%@; anchorPoint=%@>", v5, self, v6, v9, v12];;

  return v13;
}

- (CGRect)_itemFrameForContainerRect:(CGRect)rect itemSize:(CGSize)size itemLayoutAnchor:(id)anchor
{
  height = size.height;
  width = size.width;
  v7 = rect.size.height;
  v8 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  anchorCopy = anchor;
  [(NSCollectionLayoutAnchor *)self anchorPoint];
  v14 = _CVCRectAnchorPointForUnitAnchorPoint(x, y, v8, v7, v13) - width * 0.5;
  v16 = v15 - height * 0.5;
  if (anchorCopy)
  {
    selfCopy = anchorCopy;
  }

  else
  {
    selfCopy = self;
  }

  v18 = selfCopy;
  [(NSCollectionLayoutAnchor *)v18 anchorPoint];
  v20 = _CVCRectAdjustWithAnchorPoint(v14, v16, width, height, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  offsetIsUnitOffset = [(NSCollectionLayoutAnchor *)self offsetIsUnitOffset];
  [(NSCollectionLayoutAnchor *)self offset];
  v29 = v28;
  v31 = v30;
  if (offsetIsUnitOffset)
  {
    v53.origin.x = v20;
    v53.origin.y = v22;
    v53.size.width = v24;
    v53.size.height = v26;
    v29 = v29 * CGRectGetWidth(v53);
    v54.origin.x = v20;
    v54.origin.y = v22;
    v54.size.width = v24;
    v54.size.height = v26;
    v31 = v31 * CGRectGetHeight(v54);
  }

  v32 = *MEMORY[0x277CBF348];
  v33 = *(MEMORY[0x277CBF348] + 8);
  if (*MEMORY[0x277CBF348] != v29 || v33 != v31)
  {
    v52 = v20 + v29;
    v55.origin.x = v20;
    v55.origin.y = v22;
    v55.size.width = v24;
    v55.size.height = v26;
    v35 = CGRectGetWidth(v55);
    v56.origin.x = v20;
    v56.origin.y = v22;
    v56.size.width = v24;
    v56.size.height = v26;
    v26 = CGRectGetHeight(v56);
    v24 = v35;
    v22 = v22 + v31;
    v20 = v52;
  }

  if (anchorCopy)
  {
    [(NSCollectionLayoutAnchor *)anchorCopy offset];
    if (v32 != v37 || v33 != v36)
    {
      offsetIsUnitOffset2 = [(NSCollectionLayoutAnchor *)anchorCopy offsetIsUnitOffset];
      [(NSCollectionLayoutAnchor *)anchorCopy offset];
      v42 = v41;
      if (offsetIsUnitOffset2)
      {
        v43 = v40;
        v57.origin.x = v20;
        v57.origin.y = v22;
        v57.size.width = v24;
        v57.size.height = v26;
        v44 = v43 * CGRectGetWidth(v57);
        v58.origin.x = v20;
        v58.origin.y = v22;
        v58.size.width = v24;
        v58.size.height = v26;
        v42 = v42 * CGRectGetHeight(v58);
        v40 = v44;
      }

      v45 = v20;
      v46 = v22;
      v47 = v24;
      v20 = v20 + v40;
      v22 = v22 + v42;
      v59.origin.x = v45;
      v59.origin.y = v46;
      v59.size.width = v24;
      v59.size.height = v26;
      v24 = CGRectGetWidth(v59);
      v60.origin.x = v45;
      v60.origin.y = v46;
      v60.size.width = v47;
      v60.size.height = v26;
      v26 = CGRectGetHeight(v60);
    }
  }

  v48 = v20;
  v49 = v22;
  v50 = v24;
  v51 = v26;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

@end