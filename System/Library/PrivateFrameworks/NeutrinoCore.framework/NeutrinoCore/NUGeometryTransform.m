@interface NUGeometryTransform
- (BOOL)isEqual:(id)a3;
- (CGRect)transformRect:(CGRect)a3;
- (__n128)transformMatrix:(uint64_t)a1@<X2>;
@end

@implementation NUGeometryTransform

- (CGRect)transformRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MinX = CGRectGetMinX(a3);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v8 = CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v9 = CGRectGetMinX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v11 = CGRectGetMaxX(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v12 = CGRectGetMaxY(v43);
  [(NUGeometryTransform *)self transformPoint:MinX, MinY];
  v14 = v13;
  v16 = v15;
  [(NUGeometryTransform *)self transformPoint:MaxX, v8];
  v18 = v17;
  v20 = v19;
  [(NUGeometryTransform *)self transformPoint:v9, MaxY];
  v22 = v21;
  v24 = v23;
  [(NUGeometryTransform *)self transformPoint:v11, v12];
  v26 = v25;
  v28 = v27;
  v44.size.width = 0.0;
  v44.size.height = 0.0;
  v48.size.width = 0.0;
  v48.size.height = 0.0;
  v44.origin.x = v14;
  v44.origin.y = v16;
  v48.origin.x = v18;
  v48.origin.y = v20;
  v45 = CGRectUnion(v44, v48);
  v49.size.width = 0.0;
  v49.size.height = 0.0;
  v49.origin.x = v22;
  v49.origin.y = v24;
  v46 = CGRectUnion(v45, v49);
  v29 = 0;
  v30 = 0;
  v31 = v26;
  v32 = v28;

  return CGRectUnion(v46, *&v31);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (__n128)transformMatrix:(uint64_t)a1@<X2>
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

@end