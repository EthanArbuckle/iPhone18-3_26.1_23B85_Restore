@interface CPSEntityStylesDropShadow
- (CGRect)rectsForSource:(CGRect)a3 shadowRect:(CGRect *)a4 unionRect:(CGRect *)a5 positionTransform:(CGAffineTransform *)a6;
- (CGSize)offset;
- (void)applyShadowToLayer:(id)a3;
@end

@implementation CPSEntityStylesDropShadow

- (void)applyShadowToLayer:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = location[0];
  v9 = [(CPSEntityStylesDropShadow *)v14 color];
  v3 = v9;
  [v8 setShadowColor:{-[UIColor CGColor](v9, "CGColor")}];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = location[0];
  [(CPSEntityStylesDropShadow *)v14 offset];
  [v10 setShadowOffset:{v5, v6}];
  v11 = location[0];
  [(CPSEntityStylesDropShadow *)v14 radius];
  [v11 setShadowRadius:?];
  v12 = location[0];
  [(CPSEntityStylesDropShadow *)v14 opacity];
  *&v7 = v7;
  [v12 setShadowOpacity:v7];
  objc_storeStrong(location, 0);
}

- (CGRect)rectsForSource:(CGRect)a3 shadowRect:(CGRect *)a4 unionRect:(CGRect *)a5 positionTransform:(CGAffineTransform *)a6
{
  v38 = a3;
  v37 = self;
  v36 = a2;
  v35 = a4;
  v34 = a5;
  v33 = a6;
  [(CPSEntityStylesDropShadow *)self radius];
  [(CPSEntityStylesDropShadow *)v37 radius];
  [(CPSEntityStylesDropShadow *)v37 radius];
  [(CPSEntityStylesDropShadow *)v37 radius];
  CGRectMake_9();
  v32.origin.x = v6;
  v32.origin.y = v7;
  v32.size.width = v8;
  v32.size.height = v9;
  [(CPSEntityStylesDropShadow *)v37 offset];
  v28 = v10;
  v29 = v11;
  tx = v10;
  [(CPSEntityStylesDropShadow *)v37 offset];
  v26 = v12;
  ty = v13;
  CGAffineTransformMakeTranslation(&v30, tx, v13);
  v31 = CGRectApplyAffineTransform(v32, &v30);
  v32 = v31;
  v25 = CGRectUnion(v38, v31);
  memset(&__b, 0, sizeof(__b));
  CGAffineTransformMakeTranslation(&__b, -v25.origin.x, -v25.origin.y);
  v39 = 0u;
  v40 = 0u;
  memcpy(&__dst, &__b, sizeof(__dst));
  v41 = CGRectApplyAffineTransform(v38, &__dst);
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
  if (v35)
  {
    *v35 = v32;
  }

  if (v34)
  {
    *v34 = v25;
  }

  if (v33)
  {
    memcpy(v33, &__b, sizeof(CGAffineTransform));
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