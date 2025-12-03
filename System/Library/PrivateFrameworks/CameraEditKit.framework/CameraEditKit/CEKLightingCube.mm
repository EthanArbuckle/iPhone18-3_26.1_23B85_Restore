@interface CEKLightingCube
- (CEKLightingCube)initWithRotationAngle:(double)angle;
- (CGPath)centerPathWithSize:(CGSize)size;
- (CGPath)centerShadowPathWithSize:(CGSize)size width:(double)width;
- (CGPath)pathForOutlineWithSize:(CGSize)size cornerRadius:(double)radius;
- (CGPath)pathForPlane:(int64_t)plane size:(CGSize)size;
- (double)intensityForPlane:(int64_t)plane;
@end

@implementation CEKLightingCube

- (CEKLightingCube)initWithRotationAngle:(double)angle
{
  v85.receiver = self;
  v85.super_class = CEKLightingCube;
  v4 = [(CEKLightingCube *)&v85 init];
  if (v4)
  {
    angleCopy = angle;
    *v6.i64 = Rotation(angleCopy, 0.0, 1.0);
    v83 = v7;
    v84 = v6;
    v81 = v9;
    v82 = v8;
    v10 = tan(0.523598776);
    v11 = asin(v10);
    v12 = *(MEMORY[0x1E69E9B18] + 16);
    v77 = *(MEMORY[0x1E69E9B18] + 48);
    v78 = *(MEMORY[0x1E69E9B18] + 32);
    v12.f32[1] = -v11;
    v79 = v12;
    v80 = *MEMORY[0x1E69E9B18];
    v76 = v11;
    *v13.i64 = Rotation(v11, 1.0, 0.0);
    v74 = v14;
    v75 = v13;
    v72 = v16;
    v73 = v15;
    *v17.i64 = Rotation(0.7854, 0.0, 1.0);
    v18 = 0;
    v86 = v17;
    v87 = v19;
    v88 = v20;
    v89 = v21;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    do
    {
      *(&v90 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, COERCE_FLOAT(*(&v86 + v18))), v74, *&v86.f32[v18 / 4], 1), v73, *(&v86 + v18), 2), v72, *(&v86 + v18), 3);
      v18 += 16;
    }

    while (v18 != 64);
    v22 = 0;
    v23 = v80;
    v23.f32[0] = v76;
    v24 = v78;
    v24.f32[2] = v76;
    v86 = v90;
    v87 = v91;
    v88 = v92;
    v89 = v93;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    do
    {
      *(&v90 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v86 + v22))), v79, *&v86.f32[v22 / 4], 1), v24, *(&v86 + v22), 2), v77, *(&v86 + v22), 3);
      v22 += 16;
    }

    while (v22 != 64);
    v25 = 0;
    v26 = v90;
    v27 = v91;
    v28 = v92;
    v29 = v93;
    v86 = v84;
    v87 = v83;
    v88 = v82;
    v89 = v81;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    do
    {
      *(&v90 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v86 + v25))), v27, *&v86.f32[v25 / 4], 1), v28, *(&v86 + v25), 2), v29, *(&v86 + v25), 3);
      v25 += 16;
    }

    while (v25 != 64);
    v30 = 0;
    v31 = v90;
    v32 = v91;
    normals = v4->_normals;
    v34 = v92;
    v35 = v93;
    do
    {
      v36 = vaddq_f32(v35, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(initWithRotationAngle__CEKLightingCubePlaneNormals[v30])), v32, *&initWithRotationAngle__CEKLightingCubePlaneNormals[v30], 1), v34, initWithRotationAngle__CEKLightingCubePlaneNormals[v30], 2));
      v37 = vdivq_f32(v36, vdupq_laneq_s32(v36, 3));
      v37.f32[2] = v36.f32[2] / v36.f32[3];
      *&normals[v30 * 16] = v37;
      ++v30;
    }

    while (v30 != 6);
    v38 = 0;
    world = v4->_world;
    do
    {
      v40 = vaddq_f32(v35, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(initWithRotationAngle__CubePoints[v38])), v32, *&initWithRotationAngle__CubePoints[v38], 1), v34, initWithRotationAngle__CubePoints[v38], 2));
      v41 = vdivq_f32(v40, vdupq_laneq_s32(v40, 3));
      v41.f32[2] = v40.f32[2] / v40.f32[3];
      *&world[v38 * 16] = v41;
      ++v38;
    }

    while (v38 != 8);
    screen = v4->_screen;
    v43 = 8;
    do
    {
      v44 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1B7EDA020, COERCE_FLOAT(*&screen[-14])), xmmword_1B7EDA030, *&screen[-14].f64[0], 1), xmmword_1B7EDA040, screen[-14], 2), xmmword_1B7EDA050);
      *screen++ = vcvtq_f64_f32(vdiv_f32(*v44.i8, vdup_laneq_s32(v44, 3)));
      --v43;
    }

    while (v43);
    v45 = 0;
    v46 = xmmword_1B7EDA060;
    v47 = &v4->_points[1];
    v48 = vdupq_n_s64(9uLL);
    v49 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v48, v46)).u8[0])
      {
        *(v47 - 1) = v45;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v46)).i32[1])
      {
        *v47 = v45 + 1;
      }

      v45 += 2;
      v46 = vaddq_s64(v46, v49);
      v47 += 2;
    }

    while (v45 != 10);
    v50 = 0;
    v51 = v4->_points[0];
    v52 = v4->_points[1];
    v53 = &v4->_world[8];
    v54 = v4->_world;
    v55 = v4->_points[2];
    v56 = v4->_points[3];
    do
    {
      v57 = *v54;
      if (COERCE_FLOAT(*v54) <= *&world[16 * v51])
      {
        v4->_points[0] = v50;
        v51 = v50;
      }

      if (*(&v57 + 2) >= *&v53[16 * v52])
      {
        v4->_points[1] = v50;
        v52 = v50;
      }

      v58 = *v54;
      if (COERCE_FLOAT(*v54) >= *&world[16 * v55])
      {
        v4->_points[2] = v50;
        v55 = v50;
      }

      if (*(&v58 + 2) <= *&v53[16 * v56])
      {
        v4->_points[3] = v50;
        v56 = v50;
      }

      ++v50;
      v54 += 16;
    }

    while (v50 != 4);
    v59 = v4->_points[4];
    v60 = v4->_points[5];
    v61 = &v4->_world[64];
    v62 = 4;
    v63 = v4->_points[6];
    v64 = v4->_points[7];
    do
    {
      v65 = *v61;
      if (COERCE_FLOAT(*v61) <= *&world[16 * v59])
      {
        v4->_points[4] = v62;
        v59 = v62;
      }

      if (*(&v65 + 2) >= *&v53[16 * v60])
      {
        v4->_points[5] = v62;
        v60 = v62;
      }

      v66 = *v61;
      if (COERCE_FLOAT(*v61) >= *&world[16 * v63])
      {
        v4->_points[6] = v62;
        v63 = v62;
      }

      if (*(&v66 + 2) <= *&v53[16 * v64])
      {
        v4->_points[7] = v62;
        v64 = v62;
      }

      ++v62;
      v61 += 16;
    }

    while (v62 != 8);
    v4->_planes[0] = 0;
    v4->_planes[5] = 5;
    v67 = &v4->_normals[16];
    for (i = 1; i != 5; ++i)
    {
      v69 = *v67;
      v70 = COERCE_FLOAT(*(v67 + 1));
      if (v70 <= 0.0 && *&v69 <= *&normals[16 * v4->_planes[1]])
      {
        v4->_planes[1] = i;
        v69 = *v67;
        LODWORD(v70) = *(v67 + 1);
      }

      if (v70 <= 0.0 && *&v69 >= *&normals[16 * v4->_planes[2]])
      {
        v4->_planes[2] = i;
        v69 = *v67;
        LODWORD(v70) = *(v67 + 1);
      }

      if (v70 >= 0.0 && *&v69 <= *&normals[16 * v4->_planes[3]])
      {
        v4->_planes[3] = i;
        v69 = *v67;
        LODWORD(v70) = *(v67 + 1);
      }

      if (v70 >= 0.0 && *&v69 >= *&normals[16 * v4->_planes[4]])
      {
        v4->_planes[4] = i;
      }

      v67 += 16;
    }
  }

  return v4;
}

- (CGPath)pathForOutlineWithSize:(CGSize)size cornerRadius:(double)radius
{
  v7[12] = *MEMORY[0x1E69E9840];
  [(CEKLightingCube *)self points:v7 forOutlineWithSize:size.width, size.height];
  RoundedPathForConvexPolygon = CreateRoundedPathForConvexPolygon(v7, 6, radius);
  return CFAutorelease(RoundedPathForConvexPolygon);
}

- (CGPath)centerShadowPathWithSize:(CGSize)size width:(double)width
{
  height = size.height;
  width = size.width;
  v7 = width / size.width;
  Mutable = CGPathCreateMutable();
  screen = self->_screen;
  v10 = &self->_screen[self->_points[3]];
  CGPathMoveToPoint(Mutable, 0, v10->x, v10->y);
  CGPathAddLineToPoint(Mutable, 0, screen[self->_points[0]].x, screen[self->_points[0]].y);
  v11 = &self->_screen[self->_points[4]];
  v12 = &self->_screen[self->_points[0]];
  y = v11->y;
  v14 = v12->x - v11->x;
  v15 = v12->y - y;
  v16 = sqrt(v15 * v15 + v14 * v14);
  v17 = v14 / v16;
  v18 = v16 == 0.0;
  if (v16 == 0.0)
  {
    v17 = 0.0;
  }

  v19 = v15 / v16;
  if (v18)
  {
    v19 = 0.0;
  }

  CGPathAddLineToPoint(Mutable, 0, v11->x + v14 - v7 * v17, y + v15 - v7 * v19);
  p_x = &screen[self->_points[7]].x;
  v21 = &screen[self->_points[3]].x;
  v22 = p_x[1];
  v23 = *v21 - *p_x;
  v24 = v21[1] - v22;
  v25 = sqrt(v24 * v24 + v23 * v23);
  v26 = v23 / v25;
  v27 = v25 == 0.0;
  if (v25 == 0.0)
  {
    v26 = 0.0;
  }

  v28 = v24 / v25;
  if (v27)
  {
    v28 = 0.0;
  }

  v29 = *p_x + v23 - v7 * v26;
  v30 = v22 + v24 - v7 * v28;
  CGPathAddLineToPoint(Mutable, 0, v29, v30);
  CGPathAddLineToPoint(Mutable, 0, screen[self->_points[7]].x, screen[self->_points[7]].y);
  v31 = &screen[self->_points[6]].x;
  v32 = &screen[self->_points[7]].x;
  v33 = v31[1];
  v34 = *v32 - *v31;
  v35 = v32[1] - v33;
  v36 = sqrt(v35 * v35 + v34 * v34);
  v37 = v34 / v36;
  v38 = v36 == 0.0;
  if (v36 == 0.0)
  {
    v37 = 0.0;
  }

  v39 = v35 / v36;
  if (v38)
  {
    v39 = 0.0;
  }

  CGPathAddLineToPoint(Mutable, 0, *v31 + v34 - v7 * v37, v33 + v35 - v7 * v39);
  v40 = &screen[self->_points[2]].x;
  v41 = &screen[self->_points[3]].x;
  v42 = v40[1];
  v43 = v41[1];
  v44 = *v41 - *v40;
  v45 = v43 - v42;
  v46 = sqrt(v45 * v45 + v44 * v44);
  v47 = v44 / v46;
  v48 = v46 == 0.0;
  if (v46 == 0.0)
  {
    v47 = 0.0;
  }

  v49 = v45 / v46;
  if (v48)
  {
    v49 = 0.0;
  }

  CGPathAddLineToPoint(Mutable, 0, v29 - *v41 + *v41 + *v40 + v44 - v7 * v47 - *v41, v30 - v43 + v43 + v42 + v45 - v7 * v49 - v43);
  v50 = &screen[self->_points[6]].x;
  v51 = &screen[self->_points[2]].x;
  v52 = v50[1];
  v53 = *v51 - *v50;
  v54 = v51[1] - v52;
  v55 = sqrt(v54 * v54 + v53 * v53);
  v56 = v53 / v55;
  v57 = v55 == 0.0;
  if (v55 == 0.0)
  {
    v56 = 0.0;
  }

  v58 = v54 / v55;
  if (v57)
  {
    v58 = 0.0;
  }

  CGPathAddLineToPoint(Mutable, 0, *v50 + v53 - v7 * v56, v52 + v54 - v7 * v58);
  CGPathAddLineToPoint(Mutable, 0, screen[self->_points[2]].x, screen[self->_points[2]].y);
  CGPathAddLineToPoint(Mutable, 0, screen[self->_points[3]].x, screen[self->_points[3]].y);
  CGPathCloseSubpath(Mutable);
  memset(&v61, 0, sizeof(v61));
  CGAffineTransformMakeScale(&v61, width, height);
  v59 = MEMORY[0x1B8CB45A0](Mutable, &v61);
  CGPathRelease(Mutable);
  return CFAutorelease(v59);
}

- (CGPath)centerPathWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  Mutable = CGPathCreateMutable();
  screen = self->_screen;
  v8 = &self->_screen[self->_points[3]];
  CGPathMoveToPoint(Mutable, 0, v8->x, v8->y);
  CGPathAddLineToPoint(Mutable, 0, screen[self->_points[7]].x, screen[self->_points[7]].y);
  CGPathMoveToPoint(Mutable, 0, screen[self->_points[3]].x, screen[self->_points[3]].y);
  CGPathAddLineToPoint(Mutable, 0, screen[self->_points[2]].x, screen[self->_points[2]].y);
  CGPathMoveToPoint(Mutable, 0, screen[self->_points[3]].x, screen[self->_points[3]].y);
  CGPathAddLineToPoint(Mutable, 0, screen[self->_points[0]].x, screen[self->_points[0]].y);
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, width, height);
  v9 = MEMORY[0x1B8CB45A0](Mutable, &v11);
  CGPathRelease(Mutable);
  return CFAutorelease(v9);
}

- (CGPath)pathForPlane:(int64_t)plane size:(CGSize)size
{
  v6[8] = *MEMORY[0x1E69E9840];
  [(CEKLightingCube *)self points:v6 forPlane:plane size:size.width, size.height];
  RoundedPathForConvexPolygon = CreateRoundedPathForConvexPolygon(v6, 4, 0.0);
  return CFAutorelease(RoundedPathForConvexPolygon);
}

- (double)intensityForPlane:(int64_t)plane
{
  v3 = vrsqrte_f32(1068373115);
  v4 = vmul_f32(v3, vrsqrts_f32(1068373115, vmul_f32(v3, v3)));
  v5 = vmulq_n_f32(xmmword_1B7EDA080, vmul_f32(v4, vrsqrts_f32(1068373115, vmul_f32(v4, v4))).f32[0]);
  v6 = *&self->_normals[16 * self->_planes[plane]];
  v7 = vmulq_f32(v6, v6);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *v7.f32 = vrsqrte_f32(v8);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
  v9 = vmulq_f32(v5, vmulq_n_f32(v6, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]));
  return fabsf(v9.f32[2] + vaddv_f32(*v9.f32));
}

@end