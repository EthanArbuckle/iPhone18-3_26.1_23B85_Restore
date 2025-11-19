_DWORD *SGSplineVector_new(int a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  *v2 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  v2[2] = a1;
  return v2;
}

void SGSplineVector_destroy(void **a1)
{
  free(*a1);

  free(a1);
}

void *SGSplineMatrix_new(int a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x1080040622C3295uLL);
  *v2 = malloc_type_malloc(8 * (a1 * a1), 0x100004000313F17uLL);
  v2[1] = malloc_type_malloc(4 * (a1 * a1), 0x100004052888210uLL);
  *(v2 + 4) = a1;
  return v2;
}

void SGSplineMatrix_destroy(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

uint64_t SGSplineVector_print(uint64_t a1)
{
  putchar(123);
  if (*(a1 + 8) >= 1)
  {
    v2 = 0;
    do
    {
      printf(" (%lf, %lf) ", COERCE_FLOAT(*(*a1 + 8 * v2)), COERCE_FLOAT(HIDWORD(*(*a1 + 8 * v2))));
      ++v2;
    }

    while (v2 < *(a1 + 8));
  }

  return puts("}\r");
}

uint64_t SGSplineMatrix_print(uint64_t a1)
{
  putchar(123);
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    do
    {
      if (!(v3 % v2))
      {
        puts("\r");
      }

      printf(" %.3e ", *(*a1 + 8 * v3++));
      v2 = *(a1 + 16);
    }

    while (v3 < (v2 * v2));
  }

  return puts("}\r");
}

uint64_t SGSplineMatrix_times_SGSplineVector_float(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 8);
    do
    {
      if (v3 < 1)
      {
        v9 = v3;
      }

      else
      {
        v6 = 0;
        v7 = *(*a2 + 8 * v4);
        do
        {
          *(*a3 + 8 * v6) = vmla_n_f32(*(*a3 + 8 * v6), v7, *(v5 + 4 * v6));
          ++v6;
          v8 = *(result + 16);
        }

        while (v6 < v8);
        v9 = v8;
        v3 = *(result + 16);
      }

      v5 += 4 * v9;
      ++v4;
    }

    while (v4 < v9);
  }

  return result;
}

void *SGSplineMatrixInversionWorkspace_new(int a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x900405DDA6445uLL);
  *v2 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  v2[1] = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  return v2;
}

void SGSplineMatrixInversionWorkspace_destroy(void **a1)
{
  free(*a1);
  free(a1[1]);

  free(a1);
}

uint64_t SGSplineMatrix_invert(uint64_t a1, uint64_t a2)
{
  __lda = *(a1 + 16);
  __info = 0;
  v3 = *a2;
  v4 = *(a2 + 8);
  dgetrf_(&__lda, &__lda, *a1, &__lda, *a2, &__info);
  result = __info;
  if (!__info)
  {
    dgetri_(&__lda, *a1, &__lda, v3, v4, &__lda, &__info);
    return __info;
  }

  return result;
}

id SGInterpolateBetweenBezierPaths(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v54 = v4;
LABEL_29:
    v55 = v54;
    goto LABEL_61;
  }

  if (!v4)
  {
    v54 = v3;
    goto LABEL_29;
  }

  v6 = [MEMORY[0x277D75208] bezierPath];
  v7 = [MEMORY[0x277CBEB18] array];
  CGPathApply([v3 CGPath], v7, SGBuildPathElement);
  v8 = [MEMORY[0x277CBEB18] array];
  CGPathApply([v5 CGPath], v8, SGBuildPathElement);
  if ([v7 count])
  {
    if ([v8 count])
    {
      v9 = [v7 count];
      v10 = [v8 count];
      if (v9 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = [v7 objectAtIndexedSubscript:v12];
          v14 = [v8 objectAtIndexedSubscript:v12];
          v15 = [v13 type];
          if (v15 != [v14 type])
          {
            goto LABEL_18;
          }

          v16 = [v13 type];
          if (v16 > 1)
          {
            switch(v16)
            {
              case 2:
                [v13 endPoint];
                [v14 endPoint];
                CLKInterpolateBetweenPoints();
                v21 = v20;
                v23 = v22;
                v24 = [v13 points];
                v25 = [v14 points];
                v26 = *(v24 + 16);
                v27 = *(v24 + 24);
                v28 = *(v25 + 16);
                v29 = *(v25 + 24);
                CLKInterpolateBetweenPoints();
                [v6 addQuadCurveToPoint:v21 controlPoint:{v23, v30, v31}];
                break;
              case 3:
                [v13 endPoint];
                [v14 endPoint];
                CLKInterpolateBetweenPoints();
                v33 = v32;
                v35 = v34;
                v36 = [v13 points];
                v37 = [v14 points];
                v38 = *(v36 + 16);
                v39 = *(v36 + 24);
                v40 = *(v37 + 16);
                v41 = *(v37 + 24);
                CLKInterpolateBetweenPoints();
                v43 = v42;
                v45 = v44;
                v46 = [v13 points];
                v47 = [v14 points];
                v48 = *(v46 + 32);
                v49 = *(v46 + 40);
                v50 = *(v47 + 32);
                v51 = *(v47 + 40);
                CLKInterpolateBetweenPoints();
                [v6 addCurveToPoint:v33 controlPoint1:v35 controlPoint2:{v43, v45, v52, v53}];
                break;
              case 4:
                [v6 closePath];
                break;
            }

            goto LABEL_19;
          }

          if (!v16)
          {
            [v13 endPoint];
            [v14 endPoint];
            CLKInterpolateBetweenPoints();
            [v6 moveToPoint:?];
            goto LABEL_19;
          }

          if (v16 == 1)
          {
LABEL_18:
            [v13 endPoint];
            [v14 endPoint];
            CLKInterpolateBetweenPoints();
            [v6 addLineToPoint:?];
          }

LABEL_19:

          ++v12;
          v17 = [v7 count];
          v18 = [v8 count];
          if (v17 >= v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = v17;
          }
        }

        while (v12 < v19);
      }

      for (i = [v7 count]; i < objc_msgSend(v8, "count"); ++i)
      {
        v57 = [v7 lastObject];
        v58 = [v8 objectAtIndexedSubscript:i];
        v59 = [v58 type];
        if (v59 <= 1)
        {
          if (v59)
          {
            if (v59 == 1)
            {
              [v57 endPoint];
              [v58 endPoint];
              CLKInterpolateBetweenPoints();
              [v6 addLineToPoint:?];
            }
          }

          else
          {
            [v57 endPoint];
            [v58 endPoint];
            CLKInterpolateBetweenPoints();
            [v6 moveToPoint:?];
          }
        }

        else
        {
          switch(v59)
          {
            case 2:
              [v57 endPoint];
              [v58 endPoint];
              CLKInterpolateBetweenPoints();
              v61 = v60;
              v63 = v62;
              [v57 endPoint];
              v64 = [v58 points];
              v65 = *(v64 + 16);
              v66 = *(v64 + 24);
              CLKInterpolateBetweenPoints();
              [v6 addQuadCurveToPoint:v61 controlPoint:{v63, v67, v68}];
              break;
            case 3:
              [v57 endPoint];
              [v58 endPoint];
              CLKInterpolateBetweenPoints();
              v70 = v69;
              v72 = v71;
              [v57 endPoint];
              v73 = [v58 points];
              v74 = *(v73 + 16);
              v75 = *(v73 + 24);
              CLKInterpolateBetweenPoints();
              v77 = v76;
              v79 = v78;
              [v57 endPoint];
              v80 = [v58 points];
              v81 = *(v80 + 32);
              v82 = *(v80 + 40);
              CLKInterpolateBetweenPoints();
              [v6 addCurveToPoint:v70 controlPoint1:v72 controlPoint2:{v77, v79, v83, v84}];
              break;
            case 4:
              [v6 closePath];
              break;
          }
        }
      }

      v85 = [v8 count];
      v86 = [v7 count];
      v87 = v6;
      if (v85 < v86)
      {
        do
        {
          v88 = [v7 objectAtIndexedSubscript:v85];
          v89 = [v8 lastObject];
          v90 = [v89 type];
          if (v90 <= 1)
          {
            if (v90)
            {
              if (v90 == 1)
              {
                [v88 endPoint];
                [v89 endPoint];
                CLKInterpolateBetweenPoints();
                [v6 addLineToPoint:?];
              }
            }

            else
            {
              [v88 endPoint];
              [v89 endPoint];
              CLKInterpolateBetweenPoints();
              [v6 moveToPoint:?];
            }
          }

          else
          {
            switch(v90)
            {
              case 2:
                [v88 endPoint];
                [v89 endPoint];
                CLKInterpolateBetweenPoints();
                v92 = v91;
                v94 = v93;
                v95 = [v88 points];
                [v89 endPoint];
                v96 = *(v95 + 16);
                v97 = *(v95 + 24);
                CLKInterpolateBetweenPoints();
                [v6 addQuadCurveToPoint:v92 controlPoint:{v94, v98, v99}];
                break;
              case 3:
                [v88 endPoint];
                [v89 endPoint];
                CLKInterpolateBetweenPoints();
                v101 = v100;
                v103 = v102;
                v104 = [v88 points];
                [v89 endPoint];
                v105 = *(v104 + 16);
                v106 = *(v104 + 24);
                CLKInterpolateBetweenPoints();
                v108 = v107;
                v110 = v109;
                v111 = [v88 points];
                [v89 endPoint];
                v112 = *(v111 + 32);
                v113 = *(v111 + 40);
                CLKInterpolateBetweenPoints();
                [v6 addCurveToPoint:v101 controlPoint1:v103 controlPoint2:{v108, v110, v114, v115}];
                break;
              case 4:
                [v6 closePath];
                break;
            }
          }

          ++v85;
        }

        while (v85 < [v7 count]);
        v87 = v6;
      }
    }

    else
    {
      v87 = v3;
    }
  }

  else
  {
    v87 = v5;
  }

  v55 = v87;

LABEL_61:

  return v55;
}

double SGFindCubicBezierPoint(double a1, float64x2_t a2, float64_t a3, float64x2_t a4, float64_t a5, float64x2_t a6, float64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, float64x2_t a16)
{
  a2.f64[1] = a3;
  a4.f64[1] = a5;
  __asm { FMOV            V4.2D, #3.0 }

  a6.f64[1] = a7;
  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(a4, _Q4), 1.0 - a1), 1.0 - a1), a1), vmulq_n_f64(vmulq_n_f64(a2, 1.0 - a1), 1.0 - a1), 1.0 - a1), vmulq_n_f64(vmulq_n_f64(vmulq_f64(a6, _Q4), 1.0 - a1), a1), a1), vmulq_n_f64(vmulq_n_f64(a16, a1), a1), a1);
  return result;
}

double SGComputeCubicBezierLength(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4, float64x2_t a5, float64_t a6, float64x2_t a7, float64_t a8)
{
  a3.f64[1] = a4;
  __asm { FMOV            V3.2D, #3.0 }

  a5.f64[1] = a6;
  v13 = vmulq_f64(a3, _Q3);
  v14 = vmulq_f64(a5, _Q3);
  a7.f64[1] = a8;
  a1.f64[1] = a2;
  v15 = 0uLL;
  v16 = 0.0;
  v17 = 11;
  v18 = 0.0;
  do
  {
    v19 = 1.0 - v18 / 10.0;
    v20 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(v13, v19), v19), v18 / 10.0), vmulq_n_f64(vmulq_n_f64(a1, v19), v19), v19), vmulq_n_f64(vmulq_n_f64(v14, v19), v18 / 10.0), v18 / 10.0), vmulq_n_f64(vmulq_n_f64(a7, v18 / 10.0), v18 / 10.0), v18 / 10.0);
    if (v17 != 11)
    {
      v21 = vsubq_f64(v20, v15);
      v16 = v16 + sqrt(COERCE_DOUBLE(*&vmulq_f64(v21, v21).f64[1]) + v21.f64[0] * v21.f64[0]);
    }

    v18 = v18 + 1.0;
    v15 = v20;
    --v17;
  }

  while (v17);
  return v16;
}

double SGComputeCubicBezierYForX(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v17 = vabdd_f64(a9, a2) * 10.0;
  if (v17 < 10.0)
  {
    v17 = 10.0;
  }

  v18 = v17;
  if (v17 < 0)
  {
    return 0.0;
  }

  v19 = v18;
  v20 = a4 * 3.0;
  v21 = a6 * 3.0;
  v22 = a5 * 3.0;
  v23 = a7 * 3.0;
  v24 = v18 + 1;
  v25 = 0.0;
  v26 = 1.79769313e308;
  v27 = 0.0;
  do
  {
    v28 = 1.0 - v25 / v19;
    v29 = vabdd_f64(v25 / v19 * (v28 * (v20 * v28)) + v28 * (a2 * v28) * v28 + v25 / v19 * (v21 * v28) * (v25 / v19) + v25 / v19 * (a9 * (v25 / v19)) * (v25 / v19), a1);
    if (v29 < v26)
    {
      v27 = v25 / v19 * (v28 * (v22 * v28)) + v28 * (a3 * v28) * v28 + v25 / v19 * (v23 * v28) * (v25 / v19) + v25 / v19 * (a10 * (v25 / v19)) * (v25 / v19);
      v26 = v29;
    }

    v25 = v25 + 1.0;
    --v24;
  }

  while (v24);
  return v27;
}

double SGScreenRadiusAtAngleWithInset(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = fmodf(v6, 6.2832);
  v8 = v7;
  if (v7 < 0.0)
  {
    do
    {
      v8 = v8 + 6.28318531;
    }

    while (v8 < 0.0);
  }

  v9 = 1.57079633;
  if (v8 >= 1.57079633)
  {
    v10 = 3.14159265;
    if (v8 >= 3.14159265)
    {
      if (v8 < 4.71238898)
      {
        v8 = v8 + -3.14159265;
        goto LABEL_9;
      }

      v10 = 6.28318531;
    }

    v8 = v10 - v8;
  }

LABEL_9:
  [v5 screenBounds];
  v12 = v11 + a3 * -2.0;
  [v5 screenBounds];
  v14 = v13 + a3 * -2.0;
  [v5 screenCornerRadius];
  v16 = fmax((v15 - a3) * 1.52866, 0.0);
  v17 = v14 * 0.5;
  if (atan2(-(v16 - v12 * 0.5), v14 * 0.5) >= v8)
  {
    v18 = tan(v8) * v17;
LABEL_13:
    v19 = v18 * v18 + v17 * v17;
    goto LABEL_25;
  }

  v18 = v12 * 0.5;
  if (atan2(v18, v14 * 0.5 - v16) < v8)
  {
    v17 = v18 / tan(v8);
    goto LABEL_13;
  }

  v20 = 0;
  v30 = v18 - v16;
  v21 = 0.0;
  do
  {
    v22 = __sincos_stret((v21 + v9) * 0.5);
    v23 = v17 - v16 + v16 * pow(v22.__cosval, 0.622409222);
    v24 = v30 + v16 * pow(v22.__sinval, 0.622409222);
    v25 = v8 - atan2(v24, v23);
    if (v25 > 0.0)
    {
      v26 = (v21 + v9) * 0.5;
    }

    else
    {
      v26 = v21;
    }

    if (v25 < 0.0)
    {
      v9 = (v21 + v9) * 0.5;
    }

    else
    {
      v21 = v26;
    }

    if (fabs(v25) <= 0.01)
    {
      break;
    }
  }

  while (v20++ < 0x63);
  v19 = v24 * v24 + v23 * v23;
LABEL_25:
  v28 = sqrt(v19);

  return v28;
}

void SGBuildPathElement(void *a1, uint64_t a2)
{
  v9 = a1;
  if ([v9 count])
  {
    v3 = [v9 lastObject];
    [v3 endPoint];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  v8 = [[SGBezierPathElement alloc] initWithStartPoint:a2 pathElement:v5, v7];
  [v9 addObject:v8];
}

SGColorCurveElement *_elementWithColorAtAltitude(double a1, double a2, double a3, double a4)
{
  v5 = [MEMORY[0x277D75348] colorWithHue:a1 / 360.0 saturation:a2 / 100.0 brightness:a3 / 100.0 alpha:1.0];
  v6 = [SGColorCurveElement alloc];
  *&v7 = a4;
  v8 = [(SGColorCurveElement *)v6 initWithColor:v5 fraction:v7];

  return v8;
}

SGCubicColorCurveElement *SGCubicColorCurveElementCreate(double a1)
{
  v2 = objc_alloc_init(SGCubicColorCurveElement);
  [(SGCubicColorCurveElement *)v2 setFraction:a1];
  __asm { FMOV            V0.4S, #1.0 }

  CLKUIConvertToRGBfFromXRSRGBf();
  [(SGCubicColorCurveElement *)v2 setColor:?];

  return v2;
}

void *generateOpenSplineMatrix(int a1)
{
  v2 = SGSplineMatrix_new(a1);
  SGSplineMatrix_zero(v2);
  if (a1 >= 3)
  {
    v3 = 1;
    do
    {
      SGSplineMatrix_set(v2, v3, v3 - 1, 1.0);
      SGSplineMatrix_set(v2, v3, v3, 4.0);
      SGSplineMatrix_set(v2, v3, v3 + 1, 1.0);
      ++v3;
    }

    while (v3 != a1 - 1);
  }

  SGSplineMatrix_set(v2, 0, 0, 2.0);
  SGSplineMatrix_set(v2, 0, 1, 1.0);
  SGSplineMatrix_set(v2, a1 - 1, a1 - 2, 1.0);
  SGSplineMatrix_set(v2, a1 - 1, a1 - 1, 2.0);
  return v2;
}

void *generateClosedSplineMatrix(int a1)
{
  v2 = SGSplineMatrix_new(a1);
  SGSplineMatrix_zero(v2);
  if (a1 >= 3)
  {
    v3 = 1;
    do
    {
      SGSplineMatrix_set(v2, v3, v3 - 1, 1.0);
      SGSplineMatrix_set(v2, v3, v3, 4.0);
      SGSplineMatrix_set(v2, v3, v3 + 1, 1.0);
      ++v3;
    }

    while (v3 != a1 - 1);
  }

  SGSplineMatrix_set(v2, 0, 0, 4.0);
  SGSplineMatrix_set(v2, 0, 1, 1.0);
  SGSplineMatrix_set(v2, 0, a1 - 1, 1.0);
  SGSplineMatrix_set(v2, a1 - 1, 0, 1.0);
  SGSplineMatrix_set(v2, a1 - 1, a1 - 2, 1.0);
  SGSplineMatrix_set(v2, a1 - 1, a1 - 1, 4.0);
  return v2;
}

float32x2_t computeCubic(float32x2_t *a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, double a6, double a7)
{
  *&a7 = *&a6 * *&a6;
  v7 = vdup_lane_s32(*&a6, 0);
  if (a1)
  {
    __asm { FMOV            V7.2S, #3.0 }

    v13 = vmul_f32(a5, _D7);
    v14 = vdup_lane_s32(*&a7, 0);
    *a1 = vmla_n_f32(vmla_n_f32(a3, vadd_f32(a4, a4), *&a6), v13, *&a7);
  }

  else
  {
    v14 = vdup_lane_s32(*&a7, 0);
  }

  return vmla_n_f32(vmla_f32(vmla_f32(a2, a3, v7), a4, v14), a5, *&a7 * *&a6);
}

id SGStartOfDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 startOfDayForDate:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id SGStartOfNextDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 dateByAddingUnit:16 value:1 toDate:v2 options:0];

    v5 = [v3 startOfDayForDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double SGPercentageOfDayDoneForDateWithStartAndEnd(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0.0;
  if (v5)
  {
    if (v6)
    {
      if (v7)
      {
        [v6 timeIntervalSinceReferenceDate];
        v11 = v10;
        [v8 timeIntervalSinceReferenceDate];
        v13 = v12;
        [v5 timeIntervalSinceReferenceDate];
        if (v13 - v11 > 0.0)
        {
          v9 = (v14 - v11) / (v13 - v11);
        }
      }
    }
  }

  return v9;
}

double SGSiderealDegreesToSolarDayProgress(double a1)
{
  result = a1 / 360.0;
  if (result < 0.0)
  {
    return result + 1.0;
  }

  return result;
}

id SGCircleSectorPath(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = [MEMORY[0x277D75208] bezierPath];
  [v12 moveToPoint:{a2, a3}];
  [v12 addArcWithCenter:a1 radius:a2 startAngle:a3 endAngle:a4 clockwise:{a5, a6}];
  [v12 closePath];

  return v12;
}

uint64_t SolarGradient.colors.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void SolarGradient.gradient.getter()
{
  v1 = *v0;

  JUMPOUT(0x25F865B80);
}

uint64_t SolarGradient.init(date:location:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_opt_self() sharedPalette];
  v7 = sub_25B2FC1EC();
  v8 = [v6 getSolarColorsForLocation:a2 atDate:v7];

  sub_25B2FC0C4();
  v9 = sub_25B2FC22C();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    v17 = sub_25B2FC1FC();
    result = (*(*(v17 - 8) + 8))(a1, v17);
    v16 = MEMORY[0x277D84F90];
LABEL_12:
    *a3 = v16;
    return result;
  }

  v10 = sub_25B2FC29C();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v18 = MEMORY[0x277D84F90];
  result = sub_25B2FC26C();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F865BA0](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      ++v12;
      sub_25B2FC20C();
      sub_25B2FC24C();
      v13 = *(v18 + 16);
      sub_25B2FC27C();
      sub_25B2FC28C();
      sub_25B2FC25C();
    }

    while (v10 != v12);
    v15 = sub_25B2FC1FC();
    (*(*(v15 - 8) + 8))(a1, v15);

    v16 = v18;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_25B2FC0C4()
{
  result = qword_27FA41268;
  if (!qword_27FA41268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA41268);
  }

  return result;
}

uint64_t sub_25B2FC11C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B2FC164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}