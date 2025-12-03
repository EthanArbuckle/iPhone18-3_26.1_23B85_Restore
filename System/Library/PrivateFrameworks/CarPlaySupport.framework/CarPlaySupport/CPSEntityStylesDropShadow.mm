@interface CPSEntityStylesDropShadow
- (CGRect)rectsForSource:(CGRect)source shadowRect:(CGRect *)rect unionRect:(CGRect *)unionRect positionTransform:(CGAffineTransform *)transform;
- (CGSize)offset;
- (void)applyShadowToLayer:(id)layer;
@end

@implementation CPSEntityStylesDropShadow

- (void)applyShadowToLayer:(id)layer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layer);
  v8 = location[0];
  color = [(CPSEntityStylesDropShadow *)selfCopy color];
  v3 = color;
  [v8 setShadowColor:{-[UIColor CGColor](color, "CGColor")}];
  *&v4 = MEMORY[0x277D82BD8](color).n128_u64[0];
  v10 = location[0];
  [(CPSEntityStylesDropShadow *)selfCopy offset];
  [v10 setShadowOffset:{v5, v6}];
  v11 = location[0];
  [(CPSEntityStylesDropShadow *)selfCopy radius];
  [v11 setShadowRadius:?];
  v12 = location[0];
  [(CPSEntityStylesDropShadow *)selfCopy opacity];
  *&v7 = v7;
  [v12 setShadowOpacity:v7];
  objc_storeStrong(location, 0);
}

- (CGRect)rectsForSource:(CGRect)source shadowRect:(CGRect *)rect unionRect:(CGRect *)unionRect positionTransform:(CGAffineTransform *)transform
{
  sourceCopy = source;
  selfCopy = self;
  v36 = a2;
  rectCopy = rect;
  unionRectCopy = unionRect;
  transformCopy = transform;
  [(CPSEntityStylesDropShadow *)self radius];
  [(CPSEntityStylesDropShadow *)selfCopy radius];
  [(CPSEntityStylesDropShadow *)selfCopy radius];
  [(CPSEntityStylesDropShadow *)selfCopy radius];
  CGRectMake_9();
  v32.origin.x = v6;
  v32.origin.y = v7;
  v32.size.width = v8;
  v32.size.height = v9;
  [(CPSEntityStylesDropShadow *)selfCopy offset];
  v28 = v10;
  v29 = v11;
  tx = v10;
  [(CPSEntityStylesDropShadow *)selfCopy offset];
  v26 = v12;
  ty = v13;
  CGAffineTransformMakeTranslation(&v30, tx, v13);
  v31 = CGRectApplyAffineTransform(v32, &v30);
  v32 = v31;
  v25 = CGRectUnion(sourceCopy, v31);
  memset(&__b, 0, sizeof(__b));
  CGAffineTransformMakeTranslation(&__b, -v25.origin.x, -v25.origin.y);
  v39 = 0u;
  v40 = 0u;
  memcpy(&__dst, &__b, sizeof(__dst));
  v41 = CGRectApplyAffineTransform(sourceCopy, &__dst);
  *&v39 = v41.origin.x;
  *(&v39 + 1) = *&v41.origin.y;
  *&v40 = v41.size.width;
  *(&v40 + 1) = *&v41.size.height;
  memcpy(&v21, &__b, sizeof(v21));
  v22 = CGRectApplyAffineTransform(v32, &v21);
  v32 = v22;
  memcpy(&v19, &__b, sizeof(v19));
  v20 = CGRectApplyAffineTransform(v25, &v19);
  v25 = v20;
  if (rectCopy)
  {
    *rectCopy = v32;
  }

  if (unionRectCopy)
  {
    *unionRectCopy = v25;
  }

  if (transformCopy)
  {
    memcpy(transformCopy, &__b, sizeof(CGAffineTransform));
  }

  v15 = *(&v39 + 1);
  v14 = *&v39;
  v17 = *(&v40 + 1);
  v16 = *&v40;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGSize)offset
{
  height = self->_offset.height;
  width = self->_offset.width;
  result.height = height;
  result.width = width;
  return result;
}

@end