uint64_t sub_246020714()
{

  v0 = sub_246091CF4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_246091CF4();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_2460923E4();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_246091CF4();
      v3 = v5;
    }

    while (v5);
  }

  sub_246091CF4();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_246020870()
{
  if (qword_27EE3CC90 != -1)
  {
    swift_once();
  }

  if (byte_27EE3F010 == 1)
  {
    v0 = sub_24601FE70() > 12;
    v2 = v0 & ~v1;
  }

  else
  {
    v2 = 1;
  }

  byte_27EE3F011 = v2;
}

char *sub_2460208E4()
{
  if (qword_27EE3CC98 != -1)
  {
    swift_once();
  }

  return &byte_27EE3F011;
}

uint64_t sub_246020958()
{
  result = sub_245F92858();
  if (result == 2)
  {
    v1 = sub_24601FE70() > 15;
    result = v1 & ~v2;
  }

  byte_27EE3F012 = result & 1;
  return result;
}

char *sub_246020998()
{
  if (qword_27EE3CCA0 != -1)
  {
    swift_once();
  }

  return &byte_27EE3F012;
}

uint64_t sub_2460209E8(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, uint64_t a4, char a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, double a10, double a11)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v20 = Height;
  if (a5)
  {
    v21 = Height * a11;
  }

  else
  {
    v21 = a11;
  }

  if (a5)
  {
    v22 = Width * a10;
  }

  else
  {
    v22 = a10;
  }

  v23 = CVPixelBufferGetWidth(a2);
  v61 = a2;
  result = CVPixelBufferGetHeight(a2);
  v58 = v23;
  v25 = v22;
  v26 = ((v23 / Width) * v25) + 0.5;
  if (v26 <= -9.2234e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v26 >= 9.2234e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v27 = result;
  v28 = v21;
  v29 = ((result / v20) * v28) + 0.5;
  v30 = COERCE_INT(fabs(v29)) > 2139095039;
  if (COERCE_INT(fabs(((v23 / Width) * v25) + 0.5)) > 2139095039 || v30)
  {
    goto LABEL_53;
  }

  if (v29 <= -9.2234e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v29 >= 9.2234e18)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  result = 0;
  v31 = v26;
  if ((v26 & 0x8000000000000000) == 0 && v23 > v31)
  {
    v32 = v29;
    if ((v29 & 0x8000000000000000) == 0 && v27 > v32)
    {
      v33 = MEMORY[0x277D83A90];
      sub_245F98918(v61, v26, v29, MEMORY[0x277D83A90], v65);
      result = sub_245F98918(a3, v31, v32, v33, &v64);
      if (v64 < 0.8)
      {
        v52 = a4;
        v34 = v31 - 3;
        v35 = -3;
        v36 = MEMORY[0x277D84F90];
        v37 = MEMORY[0x277D83A90];
        v59 = a3;
        v57 = v31;
        while (2)
        {
          v39 = v34 >= 0 && v34 < v58;
          a4 = -3;
          do
          {
            if (v39)
            {
              v40 = v32 + a4;
              if (__OFADD__(v32, a4))
              {
                __break(1u);
                goto LABEL_51;
              }

              if ((v40 & 0x8000000000000000) == 0 && v40 < v27)
              {
                sub_245F98918(v61, v34, v32 + a4, v37, &v64);
                v41 = v64;
                result = sub_245F98918(a3, v34, v32 + a4, v37, &v64);
                if (v64 > 0.7)
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_245FB1254(0, *(v36 + 16) + 1, 1, v36);
                    v36 = result;
                  }

                  v43 = *(v36 + 16);
                  v42 = *(v36 + 24);
                  if (v43 >= v42 >> 1)
                  {
                    result = sub_245FB1254((v42 > 1), v43 + 1, 1, v36);
                    v36 = result;
                  }

                  *(v36 + 16) = v43 + 1;
                  *(v36 + 4 * v43 + 32) = v41;
                  a3 = v59;
                }
              }
            }

            ++a4;
          }

          while (a4 != 4);
          if (v35 == 3)
          {
            if (!*(v36 + 16))
            {

              return 0;
            }

            sub_246020E18(v36);
            v62 = v45;

            v44 = v62;
            v65[0] = v62;
            a4 = v52;
            if (v62 <= 0.0)
            {
              return 0;
            }

            goto LABEL_45;
          }

          ++v35;
          v34 = v57 + v35;
          if (!__OFADD__(v57, v35))
          {
            continue;
          }

          break;
        }

        __break(1u);
      }

      v44 = v65[0];
      if (v65[0] <= 0.0)
      {
        return 0;
      }

LABEL_45:
      v46 = v44 * (v25 - COERCE_FLOAT(*(a4 + 32)));
      v60 = (v44 * (v28 - COERCE_FLOAT(HIDWORD(*(a4 + 32))))) / *(a4 + 20);
      v63 = v44;
      v47 = *a4;
      ARVisionCameraToRenderingCoordinateTransform();
      return vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v51.f32[0]), a7, *v51.f32, 1), a8, v51, 2), a9, v51, 3), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v48.f32[0]), a7, *v48.f32, 1), a8, v48, 2), a9, v48, 3), v46 / v47), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v49.f32[0]), a7, *v49.f32, 1), a8, v49, 2), a9, v49, 3), v60), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v50.f32[0]), a7, *v50.f32, 1), a8, v50, 2), a9, v50, 3), v63)).u64[0];
    }
  }

  return result;
}

uint64_t sub_246020E18(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = a1;

  v1 = 0;
  sub_24602638C(&v9);
  v2 = *(v9 + 2);
  if ((v2 & 1) == 0)
  {
    if (v2)
    {
      v3 = &v9[2 * v2];
      v5 = *(v3 + 7);
      v4 = *(v3 + 8);
    }

    goto LABEL_8;
  }

  v7 = (v2 - 1) >> 1;
  if (v7 < v2)
  {
    v8 = *&v9[4 * v7 + 32];
  }

LABEL_9:
  __break(1u);

  __break(1u);
  return result;
}

double sub_246020EF0(int32x4_t *a1)
{
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  v2 = swift_allocObject();
  v3 = a1[1];
  v4 = a1[2];
  v5 = vuzp1q_s32(vuzp2q_s32(v3, v4), v3);
  v3.i64[0] = vtrn1q_s32(*a1, v3).u64[0];
  v3.i32[3] = HIDWORD(a1->i64[0]);
  v5.i32[2] = a1->i64[1];
  *&result = 9;
  v3.i32[2] = v4.i32[0];
  *(v2 + 16) = xmmword_246098DF0;
  *(v2 + 32) = v3;
  *(v2 + 48) = v5;
  *(v2 + 64) = v4.i32[2];
  return result;
}

uint64_t sub_246020F68@<X0>(uint64_t result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  if (*(result + 16) == 9)
  {
    a3.n128_u32[0] = *(result + 32);
    a4.n128_u32[0] = *(result + 36);
    a3.n128_u32[1] = *(result + 44);
    a3.n128_u32[2] = *(result + 56);
    a4.n128_u32[1] = *(result + 48);
    a4.n128_u32[2] = *(result + 60);
    a5.n128_u32[0] = *(result + 40);
    a5.n128_u32[1] = *(result + 52);
    a5.n128_u32[2] = *(result + 64);
    *a2 = a3;
    a2[1] = a4;
    a2[2] = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_246020FBC(int32x4_t a1, int32x4_t a2, int8x16_t a3, int32x4_t a4)
{
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  v4 = swift_allocObject();
  *&v5 = vzip1q_s32(a1, a2).u64[0];
  *(&v5 + 1) = vextq_s8(a3, vzip1q_s32(*&a3, a4), 8uLL).i64[1];
  *&v6 = vtrn2q_s32(a1, a2).u64[0];
  *(&v6 + 1) = __PAIR64__(a4.u32[1], a3.u32[1]);
  *(v4 + 16) = xmmword_246098E00;
  *(v4 + 32) = v5;
  *&v7 = vzip2q_s32(a1, a2).u64[0];
  *(&v7 + 1) = __PAIR64__(a4.u32[2], a3.u32[2]);
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  result.n128_u64[0] = vuzp2q_s32(vuzp2q_s32(a1, a2), a1).u64[0];
  result.n128_u64[1] = __PAIR64__(a4.u32[3], a3.u32[3]);
  *(v4 + 80) = result;
  return result;
}

uint64_t sub_24602105C(uint64_t result)
{
  if (*(result + 16) == 16)
  {
    v1 = *(result + 32);
    v2 = *(result + 36);
    v3 = *(result + 48);
    v4 = *(result + 64);
    v5 = *(result + 80);
    v6 = *(result + 52);
    v7 = *(result + 68);
    v8 = *(result + 84);
    v9 = *(result + 40);
    v10 = *(result + 44);
    v11 = *(result + 56);
    v12 = *(result + 72);
    v13 = *(result + 88);
    v14 = *(result + 60);
    v15 = *(result + 76);
    v16 = *(result + 92);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_2460210D8(__n128 a1)
{
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_246096640;
  result = a1;
  *(v1 + 32) = a1.n128_u64[0];
  *(v1 + 40) = a1.n128_u32[2];
  return result;
}

float64x2_t sub_246021134@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  *&v3 = COERCE_FLOAT(*(a1 + 8));
  *&v4 = COERCE_FLOAT(*(a1 + 24));
  *&v5 = COERCE_FLOAT(*(a1 + 40));
  v6 = vcvtq_f64_f32(*(a1 + 16));
  *a2 = vcvtq_f64_f32(*a1);
  *(a2 + 16) = v3;
  result = vcvtq_f64_f32(*&v2);
  *(a2 + 32) = v6;
  *(a2 + 48) = v4;
  *(a2 + 64) = result;
  *(a2 + 80) = v5;
  return result;
}

float64x2_t sub_246021188@<Q0>(float64x2_t *a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>, float32x4_t a5@<Q3>)
{
  *a1 = vcvtq_f64_f32(*a2.f32);
  a1[1] = vcvt_hight_f64_f32(a2);
  a1[2] = vcvtq_f64_f32(*a3.f32);
  a1[3] = vcvt_hight_f64_f32(a3);
  a1[4] = vcvtq_f64_f32(*a4.f32);
  a1[5] = vcvt_hight_f64_f32(a4);
  result = vcvt_hight_f64_f32(a5);
  a1[6] = vcvtq_f64_f32(*a5.f32);
  a1[7] = result;
  return result;
}

double sub_2460211BC(float64x2_t *a1)
{
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(*a1), a1[1]).u64[0];
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[2]), a1[3]);
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[4]), a1[5]);
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[6]), a1[7]);
  return result;
}

float sub_2460211F0@<S0>(float64x2_t *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v3 = vcvt_f32_f64(*a1);
  *&v2 = a1[1].f64[0];
  *(&v3 + 1) = v2;
  *&v4 = vcvt_f32_f64(a1[2]);
  *&v5 = a1[3].f64[0];
  *(&v4 + 1) = v5;
  *&v6 = vcvt_f32_f64(a1[4]);
  *&v7 = a1[5].f64[0];
  *(&v6 + 1) = v7;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
  return *&v3;
}

uint64_t sub_246021244(int32x4_t a1, int32x4_t a2, int8x16_t a3, int32x4_t a4)
{
  sub_246020FBC(a1, a2, a3, a4);
  v13 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D83A90];
    v8 = MEMORY[0x277D83B08];
    do
    {
      v9 = *(v13 + 32 + 4 * v6);
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_246096460;
      *(v10 + 56) = v7;
      *(v10 + 64) = v8;
      *(v10 + 32) = v9;
      v11 = sub_246091C24();
      MEMORY[0x24C196640](v11);

      if (v6 < v5 - 1)
      {
        MEMORY[0x24C196640](44, 0xE100000000000000);
      }

      ++v6;
    }

    while (v5 != v6);
  }

  MEMORY[0x24C196640](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_24602138C(double a1)
{
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_246096460;
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = a1;

  return sub_246091C24();
}

float sub_246021418(float result, float a2, float a3)
{
  if (result <= a2)
  {
    result = a2;
  }

  if (result > a3)
  {
    return a3;
  }

  return result;
}

double sub_24602142C()
{
  xmmword_27EE3F020 = xmmword_246096F80;
  *algn_27EE3F030 = xmmword_246098E10;
  result = -0.000348046946;
  xmmword_27EE3F040 = xmmword_246098E20;
  unk_27EE3F050 = xmmword_246098E30;
  return result;
}

void sub_246021460()
{
  if (qword_27EE3CCA8 != -1)
  {
    swift_once();
  }

  *zmmword_27EE3F060 = __invert_f4(*zmmword_27EE3F020);
}

double sub_2460214C8(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *v1.i8 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  v1.i32[0] = vadd_f32(*v1.i8, vdup_lane_s32(*v1.i8, 1)).u32[0];
  v2 = vrsqrte_f32(v1.u32[0]);
  v3 = vmul_f32(v2, vrsqrts_f32(v1.u32[0], vmul_f32(v2, v2)));
  *&result = vmulq_n_f32(a1, vmul_f32(v3, vrsqrts_f32(v1.u32[0], vmul_f32(v3, v3))).f32[0]).u64[0];
  return result;
}

double sub_246021574(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246098BF0;
  *(inited + 32) = a5.n128_u64[0];
  *(inited + 40) = a5.n128_u32[2];
  *(inited + 44) = 1065353216;
  sub_246027190(inited);
  a5.n128_u32[0] = v6;
  swift_setDeallocating();
  *&result = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(a1, a5.n128_f32[0]), 0, a2), 0, a3), 0, a4).u64[0];
  return result;
}

double sub_246021644(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  a5.i32[3] = 0;
  v5 = vrecpeq_f32(a5);
  v6 = vmulq_f32(v5, vrecpsq_f32(a5, v5));
  v10 = vmulq_f32(v6, vrecpsq_f32(a5, v6));
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246098BF0;
  *(inited + 32) = v10.i64[0];
  *(inited + 40) = v10.i32[2];
  *(inited + 44) = 1065353216;
  sub_246027190(inited);
  v10.i32[0] = v8;
  swift_setDeallocating();
  *&result = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(a1, v10.f32[0]), 0, a2), 0, a3), 0, a4).u64[0];
  return result;
}

double sub_24602172C(float32x4_t a1, double a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vmulq_f32(a1, a1);
  *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v8.i32[0] = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  v11 = vmulq_n_f32(a1, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, v11.f32[0]), a6, *v11.f32, 1), a7, v11, 2), a8, v11, 3).u64[0];
  return result;
}

__n128 sub_24602181C@<Q0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>, float32x4_t a5@<Q3>, float32x4_t a6@<Q4>, float32x4_t a7@<Q5>, float32x4_t a8@<Q6>, float32x4_t a9@<Q7>, float32x4_t a10, float32x4_t a11, float32x4_t a12, float32x4_t a13)
{
  v14 = vmulq_f32(a6, a6);
  v15 = vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  v15.i32[0] = vadd_f32(v15, vdup_lane_s32(v15, 1)).u32[0];
  v16 = vrsqrte_f32(v15.u32[0]);
  v17 = vmul_f32(v16, vrsqrts_f32(v15.u32[0], vmul_f32(v16, v16)));
  v18 = vmulq_n_f32(a6, vmul_f32(v17, vrsqrts_f32(v15.u32[0], vmul_f32(v17, v17))).f32[0]);
  v19 = vmulq_f32(a7, a7);
  *v19.i8 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v19.i32[0] = vadd_f32(*v19.i8, vdup_lane_s32(*v19.i8, 1)).u32[0];
  v20 = vrsqrte_f32(v19.u32[0]);
  v21 = vmul_f32(v20, vrsqrts_f32(v19.u32[0], vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(a7, vmul_f32(v21, vrsqrts_f32(v19.u32[0], vmul_f32(v21, v21))).f32[0]);
  v23 = vmulq_f32(a8, a8);
  *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  v23.i32[0] = vadd_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)).u32[0];
  v24 = vrsqrte_f32(v23.u32[0]);
  v25 = vmul_f32(v24, vrsqrts_f32(v23.u32[0], vmul_f32(v24, v24)));
  v26 = vmulq_n_f32(a8, vmul_f32(v25, vrsqrts_f32(v23.u32[0], vmul_f32(v25, v25))).f32[0]);
  v36.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a10, v22.f32[0]), a11, *v22.f32, 1), a12, v22, 2), a13, v22, 3);
  v30 = v36.columns[1];
  v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a10, v18.f32[0]), a11, *v18.f32, 1), a12, v18, 2), a13, v18, 3);
  v36.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a10, a9.f32[0]), a11, *a9.f32, 1), a12, a9, 2), a13, a9, 3);
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a10, v26.f32[0]), a11, *v26.f32, 1), a12, v26, 2), a13, v26, 3);
  v29 = v36.columns[3];
  v36.columns[0] = v31;
  v36.columns[2] = v28;
  v37 = __invert_f4(v36);
  *a1 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], a2.f32[0]), v37.columns[1], *a2.f32, 1), v37.columns[2], a2, 2), v37.columns[3], a2, 3);
  *(a1 + 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], a3.f32[0]), v37.columns[1], *a3.f32, 1), v37.columns[2], a3, 2), v37.columns[3], a3, 3);
  *(a1 + 32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], a4.f32[0]), v37.columns[1], *a4.f32, 1), v37.columns[2], a4, 2), v37.columns[3], a4, 3);
  *(a1 + 48) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], a5.f32[0]), v37.columns[1], *a5.f32, 1), v37.columns[2], a5, 2), v37.columns[3], a5, 3);
  *(a1 + 64) = v31;
  *(a1 + 80) = v30;
  result = v29;
  *(a1 + 96) = v28;
  *(a1 + 112) = v29;
  return result;
}

void sub_2460219BC(float a1)
{
  if (a1 <= 0.0)
  {
    __break(1u);
  }
}

double sub_2460219F0(simd_float4x4 *a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  OCBoundingBox.init(transform:)(&v58, a1);
  v56 = v58.transform.columns[1];
  v57 = v58.transform.columns[0];
  v54 = v58.transform.columns[3];
  v55 = v58.transform.columns[2];
  OCBoundingBox.rotation.getter(v59);
  v53 = v59[0];
  v58.transform.columns[0] = v57;
  v58.transform.columns[1] = v56;
  v58.transform.columns[2] = v55;
  v58.transform.columns[3] = v54;
  OCBoundingBox.rotation.getter(v60);
  v46 = v60[1];
  v58.transform.columns[0] = v57;
  v58.transform.columns[1] = v56;
  v58.transform.columns[2] = v55;
  v58.transform.columns[3] = v54;
  OCBoundingBox.rotation.getter(v61);
  v8 = vmulq_f32(a8, a8);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v50 = vmulq_n_f32(a8, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v52 = v61[2];
  sub_245F8E624(&unk_27EE3B240, &unk_246097000);
  v10 = swift_allocObject();
  v11.i64[0] = vsubq_f32(0, v53).u64[0];
  v11.f32[2] = 0.0 - v53.f32[2];
  v11.i32[3] = 0;
  v12.i64[0] = vsubq_f32(0, v52).u64[0];
  v12.f32[2] = 0.0 - v52.f32[2];
  v12.i32[3] = 0;
  v10[2] = v53;
  v10[3] = v11;
  v47 = v11;
  v48 = v12;
  v10[4] = v52;
  v10[5] = v12;
  v58.transform.columns[0].i64[0] = MEMORY[0x277D84F90];
  sub_245FC7B28(0, 4, 0);
  v13 = v58.transform.columns[0].i64[0];
  v15 = *(v58.transform.columns[0].i64[0] + 16);
  v14 = *(v58.transform.columns[0].i64[0] + 24);
  v16 = v14 >> 1;
  v17 = v15 + 1;
  if (v14 >> 1 <= v15)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v18 = v50;
    v19 = vmulq_f32(v50, v53);
    *(v13 + 16) = v17;
    *(v13 + 4 * v15 + 32) = v19.f32[2] + vaddv_f32(*v19.f32);
    v20 = v15 + 2;
    if (v16 < v20)
    {
      sub_245FC7B28((v14 > 1), v20, 1);
      v18 = v50;
      v13 = v58.transform.columns[0].i64[0];
    }

    v21 = vmulq_f32(v47, v18);
    *(v13 + 16) = v20;
    *(v13 + 4 * v17 + 32) = v21.f32[2] + vaddv_f32(*v21.f32);
    v23 = *(v13 + 16);
    v22 = *(v13 + 24);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      sub_245FC7B28((v22 > 1), v23 + 1, 1);
      v18 = v50;
    }

    v25 = vmulq_f32(v52, v18);
    v26 = v58.transform.columns[0].i64[0];
    *(v58.transform.columns[0].i64[0] + 16) = v24;
    *(v26 + 4 * v23 + 32) = v25.f32[2] + vaddv_f32(*v25.f32);
    v27 = *(v26 + 24);
    v28 = v23 + 2;
    if (v28 > (v27 >> 1))
    {
      sub_245FC7B28((v27 > 1), v28, 1);
      v18 = v50;
      v26 = v58.transform.columns[0].i64[0];
    }

    v29 = vmulq_f32(v48, v18);
    *(v26 + 16) = v28;
    v15 = v26 + 32;
    *(v26 + 32 + 4 * v24) = v29.f32[2] + vaddv_f32(*v29.f32);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v17 = *(v26 + 16);
    if (v17 < 2)
    {
      break;
    }

    v30 = 0;
    v31 = 0;
    v14 = (v26 + 36);
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = 1;
    while (v32)
    {
      if (v31 < 0)
      {
        goto LABEL_26;
      }

      if (v31 >= v17)
      {
        goto LABEL_27;
      }

      v34 = *v14++;
      if (*(v15 + 4 * v31) < v34)
      {
        v30 = v33;
        v31 = v33;
      }

      ++v33;
      --v32;
      if (v17 == v33)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_245FC7B28((v14 > 1), v17, 1);
    v13 = v58.transform.columns[0].i64[0];
    v14 = *(v58.transform.columns[0].i64[0] + 24);
    v16 = v14 >> 1;
  }

  v30 = 0;
LABEL_17:

  v58.transform.columns[0] = v57;
  v58.transform.columns[1] = v56;
  v58.transform.columns[2] = v55;
  v58.transform.columns[3] = v54;
  *v35.f32 = OCBoundingBox.extent.getter();
  v51 = v35;
  v58.transform.columns[0] = v57;
  v58.transform.columns[1] = v56;
  v58.transform.columns[2] = v55;
  v58.transform.columns[3] = v54;
  OCBoundingBox.rotation.getter(&v62);
  v39 = v62;
  v38 = v63;
  if (v17)
  {
    if (v30 == 1)
    {
      v39 = v52;
      v42 = vrev64q_s32(v51);
      v51 = vextq_s8(v42, v42, 0xCuLL);
      v38 = v46;
      v41 = v47;
    }

    else if (v30)
    {
      v36.i64[0] = v30;
      v37.i64[0] = 3;
      v43 = vdupq_lane_s64(vceqq_s64(v36, v37).i64[0], 0);
      v41 = vbslq_s8(v43, v48, v64);
      v39 = vbslq_s8(v43, v47, v62);
      v38 = vbslq_s8(v43, v46, v63);
    }

    else
    {
      v39 = v48;
      v40 = vrev64q_s32(v51);
      v51 = vextq_s8(v40, v40, 0xCuLL);
      v38 = v46;
      v41 = v53;
    }
  }

  else
  {
    v41 = v64;
  }

  v65[0] = v39;
  v65[1] = v38;
  v65[2] = v41;
  v44 = OCBoundingBox.position.getter();
  OCBoundingBox.init(position:extent:rotation:)(v65, &v58, v44, v51);
  return *v58.transform.columns[0].i64;
}

uint64_t sub_246021E38(float32x4_t a1, float32x4_t a2, float32x4_t a3, int8x16_t a4)
{
  v4 = vmulq_f32(a1, a1);
  *v4.i8 = vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v4.i32[0] = vadd_f32(*v4.i8, vdup_lane_s32(*v4.i8, 1)).u32[0];
  v5 = vrsqrte_f32(v4.u32[0]);
  v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
  v7 = vmulq_n_f32(a1, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]);
  v8 = vmulq_f32(a2, a2);
  *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v8.i32[0] = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  v11 = vmulq_n_f32(a2, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
  v12 = vmulq_f32(a3, a3);
  *v12.i8 = vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
  v12.i32[0] = vadd_f32(*v12.i8, vdup_lane_s32(*v12.i8, 1)).u32[0];
  v13 = vrsqrte_f32(v12.u32[0]);
  v14 = vmul_f32(v13, vrsqrts_f32(v12.u32[0], vmul_f32(v13, v13)));
  return sub_2460233E8(v7, v11, vmulq_n_f32(a3, vmul_f32(v14, vrsqrts_f32(v12.u32[0], vmul_f32(v14, v14))).f32[0]), a4);
}

void __swiftcall getRotatedPlaneTransform(_:)(simd_float4x4 *__return_ptr retstr, ARPlaneAnchor *a2)
{
  [(ARPlaneAnchor *)a2 transform];
  v3 = [(ARPlaneAnchor *)a2 planeExtent];
  [(ARPlaneExtent *)v3 rotationOnYAxis];
  v5 = v4;

  v6 = __sincosf_stret(v5 * 0.5);
  v7 = vmulq_n_f32(xmmword_246098E50, v6.__sinval);
  v7.n128_u32[3] = LODWORD(v6.__cosval);
  MEMORY[0x24C196950](v7);
}

float sub_246021FD4(void *a1, void *a2)
{
  [a1 transform];
  v6 = v3;
  [a2 transform];
  return fabsf(COERCE_FLOAT(vsubq_f32(v6, v4).i32[1]));
}

void sub_246022048(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = *(*a1 + 96);
  if (v6() <= 0 || (v7 = (*(*a1 + 136))()) == 0)
  {
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return;
  }

  v8 = v7;
  v9 = v6();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v9;
    if (v9)
    {
      v56 = a3;
      type metadata accessor for OCVoxel(0);
      v12 = sub_246091E14();
      *(v12 + 16) = v11;
      v13 = (v12 + 16);
      bzero((v12 + 32), 48 * v11);
      v14._rawValue = v12;
    }

    else
    {
      v14._rawValue = MEMORY[0x277D84F90];
      v13 = (MEMORY[0x277D84F90] + 16);
      v11 = *(MEMORY[0x277D84F90] + 16);
      if (!v11)
      {
LABEL_29:
        OCVoxelCloud.init(voxels:transform:)(&v57, v14, v10);
        v38 = v57.transform.columns[0];
        v39 = v57.transform.columns[1];
        v40 = v57.transform.columns[2];
        v41 = v57.transform.columns[3];
        *a3 = v57.voxels._rawValue;
        a3[1] = v38;
        a3[2] = v39;
        a3[3] = v40;
        a3[4] = v41;
        return;
      }

      v56 = a3;
    }

    v15 = 0;
    v16 = (v14._rawValue + 64);
    v17 = v8 + 32;
    v18 = &qword_27EE3C000;
    v19 = &qword_27EE3C000;
    v20 = v11;
    while (1)
    {
      v21 = *(v17 - 32);
      v22 = floorf(*&v21);
      if ((LODWORD(v22) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v22 <= -2147500000.0)
      {
        goto LABEL_31;
      }

      if (v22 >= 2147500000.0)
      {
        goto LABEL_32;
      }

      v23 = floorf(*(&v21 + 1));
      if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_33;
      }

      if (v23 <= -2147500000.0)
      {
        goto LABEL_34;
      }

      if (v23 >= 2147500000.0)
      {
        goto LABEL_35;
      }

      v24 = floorf(*(&v21 + 2));
      if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_36;
      }

      if (v24 <= -2147500000.0)
      {
        goto LABEL_37;
      }

      if (v24 >= 2147500000.0)
      {
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        goto LABEL_39;
      }

      v25 = *(v17 - 16);
      v26 = *v17;
      v27 = *(v17 + 4);
      v29.i32[3] = 1;
      v29.i32[0] = v22;
      v29.i32[1] = v23;
      v29.i32[2] = v24;
      v25.i32[3] = 0;
      v28 = *v17;
      v16[-2] = v29;
      v16[-1] = v25;
      v29.f32[0] = HIBYTE(v26) / 255.0;
      v30 = v29;
      v30.f32[1] = BYTE2(v26) / 255.0;
      v31 = v30;
      v31.f32[2] = BYTE1(v26) / 255.0;
      v32 = v31;
      v32.f32[3] = v28 / 255.0;
      if (a2)
      {
        if (v18[406] != -1)
        {
          rawValue = v14._rawValue;
          v50 = HIBYTE(v26) / 255.0;
          v52 = v32;
          v46 = v31;
          v48 = v30.i64[0];
          swift_once();
          v31 = v46;
          v30.i64[0] = v48;
          v29.f32[0] = v50;
          v32 = v52;
          v19 = &qword_27EE3C000;
          v18 = &qword_27EE3C000;
          v14._rawValue = rawValue;
        }

        v34 = *zmmword_27EE3F060;
        v33 = *&zmmword_27EE3F060[16];
        v36 = *&zmmword_27EE3F060[32];
        v35 = *&zmmword_27EE3F060[48];
        if (v19[405] != -1)
        {
          v55 = v14._rawValue;
          v51 = v29.i32[0];
          v53 = v32;
          v47 = v31;
          v49 = v30.i64[0];
          v44 = *&zmmword_27EE3F060[32];
          v45 = *&zmmword_27EE3F060[48];
          v42 = *zmmword_27EE3F060;
          v43 = *&zmmword_27EE3F060[16];
          swift_once();
          v34 = v42;
          v33 = v43;
          v36 = v44;
          v35 = v45;
          v31 = v47;
          v30.i64[0] = v49;
          v29.i32[0] = v51;
          v32 = v53;
          v19 = &qword_27EE3C000;
          v18 = &qword_27EE3C000;
          v14._rawValue = v55;
        }

        v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, v29.f32[0]), v33, *v30.f32, 1), v36, v31, 2), v35, v32, 3);
        v32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F020, v27 * v37.f32[0]), *&zmmword_27EE3F020[16], *v37.f32, 1), *&zmmword_27EE3F020[32], v37, 2), *&zmmword_27EE3F020[48], v37, 3);
        v20 = *v13;
      }

      if (v15 >= v20)
      {
        goto LABEL_40;
      }

      ++v15;
      *v16 = v32;
      v16 += 3;
      v17 += 48;
      if (v11 == v15)
      {
        a3 = v56;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_246022454@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>)
{
  v10 = *(*a1 + 96);
  result = v10();
  if (result <= 0 || (result = (*(*a1 + 136))()) == 0)
  {
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return result;
  }

  v12 = result;
  result = v10();
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    if (result)
    {
      type metadata accessor for OCPoint(0);
      v14 = sub_246091E14();
      *(v14 + 16) = v13;
      v15 = (v14 + 16);
      bzero((v14 + 32), 48 * v13);
      result = v14;
    }

    else
    {
      result = MEMORY[0x277D84F90];
      v15 = (MEMORY[0x277D84F90] + 16);
      v13 = *(MEMORY[0x277D84F90] + 16);
      if (!v13)
      {
LABEL_18:
        result = _s6CoreOC12OCVoxelCloudV6voxels9transformACSaySo0C0aG_So13simd_float4x4atcfC_0(result, v58, a4, a5, a6, a7);
        v36 = v58[1];
        v37 = v58[2];
        v38 = v58[3];
        v39 = v58[4];
        *a3 = v58[0].n128_u64[0];
        a3[1] = v36;
        a3[2] = v37;
        a3[3] = v38;
        a3[4] = v39;
        return result;
      }
    }

    v16 = 0;
    v17 = (result + 64);
    v18 = v12 + 32;
    v19 = 1.0;
    v20 = qword_27EE3C000;
    v21 = qword_27EE3C000;
    v22 = v13;
    while (v16 < v22)
    {
      v23 = *(v18 + 4);
      v27 = *(v18 - 32);
      v24 = *(v18 - 16);
      v27.f32[3] = v19;
      v25 = *v18;
      v24.i32[3] = 0;
      v26 = *v18;
      v17[-2] = v27;
      v17[-1] = v24;
      v24.f32[0] = v26 / 255.0;
      v27.f32[0] = HIBYTE(v25) / 255.0;
      v28 = v27;
      v28.f32[1] = BYTE2(v25) / 255.0;
      v29 = v28;
      v29.f32[2] = BYTE1(v25) / 255.0;
      v30 = v29;
      v30.i32[3] = v24.i32[0];
      if (a2)
      {
        if (v20[406] != -1)
        {
          v52 = result;
          v48 = HIBYTE(v25) / 255.0;
          v50 = v30;
          v44 = v29;
          v46 = v28.i64[0];
          swift_once();
          v29 = v44;
          v28.i64[0] = v46;
          v27.f32[0] = v48;
          v30 = v50;
          v21 = qword_27EE3C000;
          v20 = qword_27EE3C000;
          v19 = 1.0;
          result = v52;
        }

        v32 = *zmmword_27EE3F060;
        v31 = *&zmmword_27EE3F060[16];
        v34 = *&zmmword_27EE3F060[32];
        v33 = *&zmmword_27EE3F060[48];
        if (v21[405] != -1)
        {
          v53 = result;
          v49 = v27.i32[0];
          v51 = v30;
          v45 = v29;
          v47 = v28.i64[0];
          v42 = *&zmmword_27EE3F060[32];
          v43 = *&zmmword_27EE3F060[48];
          v40 = *zmmword_27EE3F060;
          v41 = *&zmmword_27EE3F060[16];
          swift_once();
          v32 = v40;
          v31 = v41;
          v34 = v42;
          v33 = v43;
          v29 = v45;
          v28.i64[0] = v47;
          v27.i32[0] = v49;
          v30 = v51;
          v21 = qword_27EE3C000;
          v20 = qword_27EE3C000;
          v19 = 1.0;
          result = v53;
        }

        v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v27.f32[0]), v31, *v28.f32, 1), v34, v29, 2), v33, v30, 3);
        v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F020, v23 * v35.f32[0]), *&zmmword_27EE3F020[16], *v35.f32, 1), *&zmmword_27EE3F020[32], v35, 2), *&zmmword_27EE3F020[48], v35, 3);
        v22 = *v15;
      }

      if (v16 >= v22)
      {
        goto LABEL_20;
      }

      ++v16;
      *v17 = v30;
      v17 += 3;
      v18 += 48;
      if (v13 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_246022788@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *result;
  v41 = *(result + 48);
  v42 = *(result + 32);
  v39 = *(result + 80);
  v40 = *(result + 64);
  v5 = *(**result + 96);

  if ((v5)(v6) <= 0 || (v7 = (*(*v4 + 136))()) == 0 || (v8 = v7, (v9 = (*(*v3 + 136))()) == 0))
  {

LABEL_9:
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v10 = v9;
  result = v5();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = result;
  if (result)
  {
    type metadata accessor for OCPoint(0);
    v13 = sub_246091E14();
    *(v13 + 16) = v12;
    bzero((v13 + 32), 48 * v12);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  v14 = (v13 + 64);
  v15 = v8 + 16;
  v16.i64[0] = 0xFF000000FFLL;
  v16.i64[1] = 0xFF000000FFLL;
  v17 = vdupq_n_s32(0x437F0000u);
  do
  {
    v18 = *(v15 + 16);
    v11.i32[0] = v18;
    v19 = vshrq_n_u32(v11, 0x18uLL).u32[0];
    v11.i32[1] = HIWORD(v18);
    v11.i32[2] = v18 >> 8;
    v20 = *(v15 - 16);
    v21 = *v15;
    v11.i32[3] = v18;
    v22 = vandq_s8(v11, v16);
    v22.i32[0] = v19;
    v20.i32[3] = 1.0;
    v21.i32[3] = 0;
    v14[-2] = v20;
    v14[-1] = v21;
    v11 = vdivq_f32(vcvtq_f32_u32(v22), v17);
    *v14 = v11;
    v14 += 3;
    v15 += 48;
    --v12;
  }

  while (v12);
LABEL_13:
  result = (*(*v3 + 96))();
  if ((result & 0x8000000000000000) == 0)
  {
    v23 = result;
    if (result)
    {
      v24 = sub_246091E14();
      *(v24 + 16) = v23;
      bzero((v24 + 32), 4 * v23);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
      v23 = *(MEMORY[0x277D84F90] + 16);
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    if (v23 >= 8 && v24 - v10 < 0xFFFFFFFFFFFFFFE0)
    {
      v25 = v23 & 0x7FFFFFFFFFFFFFF8;
      v35 = (v10 + 16);
      v36 = (v24 + 48);
      v37 = v23 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v38 = *v35;
        *(v36 - 1) = *(v35 - 1);
        *v36 = v38;
        v35 += 2;
        v36 += 2;
        v37 -= 8;
      }

      while (v37);
      if (v23 == v25)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v23 - v25;
    v27 = 4 * v25;
    v28 = 4 * v25 + 32;
    v29 = (v10 + v27);
    do
    {
      v30 = *v29++;
      *(v24 + v28) = v30;
      v28 += 4;
      --v26;
    }

    while (v26);
LABEL_22:
    sub_246086638(v13, v24, v43, v42, v41, v40, v39);

    v31 = v43[2];
    v32 = v43[3];
    v33 = v43[4];
    v34 = v43[1];
    *a2 = v43[0];
    a2[1] = v34;
    a2[2] = v31;
    a2[3] = v32;
    a2[4] = v33;
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

_BYTE *sub_246022A7C(void *a1)
{
  v2 = [a1 length];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = v2;
  while (1)
  {
    result = [a1 echoIds];
    if (!result[v3])
    {
      break;
    }

    if (__OFADD__(v3, 3))
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 += 3;
    }

    if (v3 >= v4)
    {
      return 0;
    }
  }

  v6 = __OFADD__(v3, 2);
  v7 = v3 + 2;
  if (!v6)
  {
    if (v7 < v4)
    {
      return (*([a1 echoIds] + v7) == 2);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_246022B2C@<X0>(void *a1@<X0>, char a2@<W1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_246022A7C(a1);
  v8 = v7;
  *a3 = v7 & 1;
  if (v7)
  {
    v9 = 0.8;
  }

  else
  {
    v9 = 0.9;
  }

  if (v7)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  OCDepthPointCloud.init()(&v86);
  result = [a1 length];
  if (result >= 1)
  {
    v12 = 0;
    v85 = v8 & a2;
    v13 = result;
    do
    {
      v15 = v12;
      v16 = __OFADD__(v12, v10);
      v12 += v10;
      if (v16)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v12;
      }

      result = [a1 echoIds];
      if (!*(result + v15))
      {
        if (v85)
        {
          v18 = v15 + 2;
          if (__OFADD__(v15, 2))
          {
            __break(1u);
            return result;
          }

          goto LABEL_29;
        }

        v19 = *([a1 confidences] + v15);
        v20 = *([a1 confidences] + v15 + 1);
        v21 = 16 * v15;
        v79 = *([a1 points] + v15);
        result = [a1 points];
        if (v9 < (v19 - v20))
        {
          v18 = v15;
LABEL_29:
          if (v18 != -1)
          {
            result = [a1 points];
            if (fabsf(*(result + 16 * v18 + 8)) >= 0.000001)
            {
              v80 = *([a1 bankIds] + v18);
              v24 = v86;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = sub_245F8D874(0, *(v24 + 2) + 1, 1, v24);
              }

              v26 = *(v24 + 2);
              v25 = *(v24 + 3);
              v27 = v26 + 1;
              if (v26 >= v25 >> 1)
              {
                v65 = sub_245F8D874((v25 > 1), v26 + 1, 1, v24);
                v27 = v26 + 1;
                v24 = v65;
              }

              *(v24 + 2) = v27;
              v24[v26 + 32] = v80;
              *&v86 = v24;
              v81 = *([a1 spotIds] + v18);
              v28 = *(&v86 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v28 = sub_245F8D874(0, *(v28 + 2) + 1, 1, v28);
              }

              v30 = *(v28 + 2);
              v29 = *(v28 + 3);
              v31 = v30 + 1;
              if (v30 >= v29 >> 1)
              {
                v66 = sub_245F8D874((v29 > 1), v30 + 1, 1, v28);
                v31 = v30 + 1;
                v28 = v66;
              }

              *(v28 + 2) = v31;
              v28[v30 + 32] = v81;
              *(&v86 + 1) = v28;
              v82 = *([a1 echoIds] + v18);
              v32 = v87;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v32 = sub_245F8D874(0, *(v32 + 2) + 1, 1, v32);
              }

              v34 = *(v32 + 2);
              v33 = *(v32 + 3);
              v35 = v34 + 1;
              if (v34 >= v33 >> 1)
              {
                v67 = sub_245F8D874((v33 > 1), v34 + 1, 1, v32);
                v35 = v34 + 1;
                v32 = v67;
              }

              *(v32 + 2) = v35;
              v32[v34 + 32] = v82;
              *&v87 = v32;
              v36 = *([a1 euclideanDistances] + v18);
              v37 = *(&v87 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v37 = sub_245FB1254(0, *(v37 + 2) + 1, 1, v37);
              }

              v39 = *(v37 + 2);
              v38 = *(v37 + 3);
              v40 = v39 + 1;
              if (v39 >= v38 >> 1)
              {
                v68 = sub_245FB1254((v38 > 1), v39 + 1, 1, v37);
                v40 = v39 + 1;
                v37 = v68;
              }

              *(v37 + 2) = v40;
              *&v37[4 * v39 + 32] = v36;
              *(&v87 + 1) = v37;
              v41 = *([a1 confidences] + v18);
              v42 = v88;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v42 = sub_245FB1254(0, *(v42 + 2) + 1, 1, v42);
              }

              v44 = *(v42 + 2);
              v43 = *(v42 + 3);
              v45 = v44 + 1;
              if (v44 >= v43 >> 1)
              {
                v69 = sub_245FB1254((v43 > 1), v44 + 1, 1, v42);
                v45 = v44 + 1;
                v42 = v69;
              }

              *(v42 + 2) = v45;
              *&v42[4 * v44 + 32] = v41;
              *&v88 = v42;
              v46 = *([a1 intensities] + v18);
              v47 = *(&v88 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v47 = sub_245FB1254(0, *(v47 + 2) + 1, 1, v47);
              }

              v49 = *(v47 + 2);
              v48 = *(v47 + 3);
              v50 = v49 + 1;
              if (v49 >= v48 >> 1)
              {
                v70 = sub_245FB1254((v48 > 1), v49 + 1, 1, v47);
                v50 = v49 + 1;
                v47 = v70;
              }

              *(v47 + 2) = v50;
              *&v47[4 * v49 + 32] = v46;
              *(&v88 + 1) = v47;
              v51 = *([a1 signalToNoiseRatios] + v18);
              v52 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v52 = sub_245FB1254(0, *(v52 + 2) + 1, 1, v52);
              }

              v54 = *(v52 + 2);
              v53 = *(v52 + 3);
              v55 = v54 + 1;
              if (v54 >= v53 >> 1)
              {
                v71 = sub_245FB1254((v53 > 1), v54 + 1, 1, v52);
                v55 = v54 + 1;
                v52 = v71;
              }

              *(v52 + 2) = v55;
              *&v52[4 * v54 + 32] = v51;
              *&v89 = v52;
              v83 = *([a1 cameraPixels] + v18);
              v56 = *(&v89 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v56 = sub_246026288(0, *(v56 + 2) + 1, 1, v56);
              }

              v58 = *(v56 + 2);
              v57 = *(v56 + 3);
              v59 = v58 + 1;
              if (v58 >= v57 >> 1)
              {
                v72 = sub_246026288((v57 > 1), v58 + 1, 1, v56);
                v59 = v58 + 1;
                v56 = v72;
              }

              *(v56 + 2) = v59;
              *&v56[16 * v58 + 32] = v83;
              *(&v89 + 1) = v56;
              v84 = *([a1 points] + v18);
              v76 = *([a1 points] + v18);
              v75 = *([a1 points] + v18);
              v60 = v90;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_245FA26DC(0, *(v60 + 16) + 1, 1, v60);
                v60 = result;
              }

              v62 = *(v60 + 16);
              v61 = *(v60 + 24);
              v63 = v62 + 1;
              v64 = v77;
              if (v62 >= v61 >> 1)
              {
                result = sub_245FA26DC((v61 > 1), v62 + 1, 1, v60);
                v64 = v77;
                v63 = v62 + 1;
                v60 = result;
              }

              *&v14 = vmul_f32(__PAIR64__(DWORD1(v76), v84), 0xBA83126F3A83126FLL);
              *(&v14 + 1) = __PAIR64__(v64, COERCE_UNSIGNED_INT(vmuls_lane_f32(-0.001, v75, 2)));
              *(v60 + 16) = v63;
              *(v60 + 16 * v62 + 32) = v14;
              v90 = v60;
              v77 = HIDWORD(v14);
            }
          }

          continue;
        }

        v18 = v15 + 1;
        if ((v19 - v20) < -v9)
        {
          goto LABEL_29;
        }

        if (v9 < v19 && v9 < v20)
        {
          v23 = *(result + v21 + 16);
          if (*(&v79 + 2) <= COERCE_FLOAT(*(result + v21 + 24)))
          {
            v18 = v15;
          }

          goto LABEL_29;
        }
      }
    }

    while (v17 < v13);
  }

  v73 = v89;
  *(a4 + 32) = v88;
  *(a4 + 48) = v73;
  *(a4 + 64) = v90;
  v74 = v87;
  *a4 = v86;
  *(a4 + 16) = v74;
  return result;
}

void filteredDepthPointCloud(_:)(void *a1@<X8>)
{
  v2 = OCNonModularSPI_ADJasperPointCloud_CreatePointCloud();
  if (v2)
  {
    v3 = v2;
    sub_246022B2C(v2, 0, &v4, a1);
  }

  else
  {

    OCDepthPointCloud.init()(a1);
  }
}

void sub_24602335C(_BYTE *a1@<X1>, void *a2@<X8>)
{
  v4 = OCNonModularSPI_ADJasperPointCloud_CreatePointCloud();
  if (v4)
  {
    v5 = v4;
    sub_246022B2C(v4, 0, a1, a2);
  }

  else
  {
    *a1 = 0;

    OCDepthPointCloud.init()(a2);
  }
}

uint64_t sub_2460233E8(float32x4_t a1, float32x4_t a2, float32x4_t a3, int8x16_t a4)
{
  v4 = *(MEMORY[0x277D860B0] + 16);
  v5 = *(MEMORY[0x277D860B0] + 32);
  v6 = vdupq_n_s32(0x38D1B717u);
  v7 = vandq_s8(vandq_s8(vcgeq_f32(v6, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a1, *a1.f32, 1), a2, *a2.f32, 1), a3, *a3.f32, 1), v4)), vcgeq_f32(v6, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a1, a1.f32[0]), a2, a2.f32[0]), a3, a3.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a1, a1, 2), a2, a2, 2), a3, a3, 2), v5)));
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0)
  {
    return 0;
  }

  v8 = vzip1q_s32(a1, a3);
  v9 = vzip1q_s32(a2, 0);
  v10 = vzip2q_s32(v8, v9);
  v11 = vzip1q_s32(v8, v9);
  v11.i32[2] = vdupq_lane_s32(*&a3, 0).i32[2];
  v10.i32[2] = vdupq_lane_s32(*&a3, 1).i32[2];
  v12 = vzip2q_s32(a1, a2);
  v12.i32[2] = a3.i32[2];
  v13 = vandq_s8(vandq_s8(vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, a2.f32[0]), v10, *a2.f32, 1), v12, a2, 2), v4)), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, a1.f32[0]), v10, *a1.f32, 1), v12, a1, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, a3.f32[0]), v10, *a3.f32, 1), v12, a3, 2), v5)));
  v13.i32[3] = v13.i32[2];
  if ((vminvq_u32(v13) & 0x80000000) == 0)
  {
    return 0;
  }

  v14 = vmulq_f32(a1, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a3, a3, 0xCuLL), a3, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL))), vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL)));
  if (vabds_f32(1.0, v14.f32[2] + vaddv_f32(*v14.f32)) >= 0.0001)
  {
    return 0;
  }

  v15 = vzip2_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL));
  v16 = vzip2_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL));
  v17 = vdup_n_s32(0x38D1B717u);
  v18 = vand_s8(vcge_f32(v17, vabs_f32(vadd_f32(v16, 0xBF80000080000000))), vcge_f32(v17, vabs_f32(v15)));
  return vpmin_u32(v18, v18).u32[0] >> 31;
}

float sub_246023584(float a1, double a2, __n128 a3)
{
  v3 = (((a1 + *(&a2 + 1)) + a3.n128_f32[2]) + -1.0) * 0.5;
  if (v3 <= -1.0)
  {
    v3 = -1.0;
  }

  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  return (acosf(v3) * 180.0) / 3.1416;
}

uint64_t sub_246023624(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    result = sub_245F8D968(0x73726F736E6553, 0xE700000000000000);
    if (v2)
    {
      sub_245F8E5C8(*(v1 + 56) + 32 * result, v15);
      sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      result = swift_dynamicCast();
      if (result)
      {
        if (!*(v14 + 16))
        {
        }

        v3 = sub_245F8D968(0x69736E6972746E49, 0xEA00000000007363);
        if ((v4 & 1) == 0)
        {
        }

        sub_245F8E5C8(*(v14 + 56) + 32 * v3, v15);

        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          return result;
        }

        if (!*(v14 + 16))
        {
        }

        v5 = sub_245F8D968(4343634, 0xE300000000000000);
        if ((v6 & 1) == 0)
        {
        }

        sub_245F8E5C8(*(v14 + 56) + 32 * v5, v15);

        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          return result;
        }

        if (!*(v14 + 16))
        {
        }

        v7 = sub_245F8D968(0x656C6F686E6950, 0xE700000000000000);
        if ((v8 & 1) == 0)
        {
        }

        sub_245F8E5C8(*(v14 + 56) + 32 * v7, v15);

        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          return result;
        }

        if (!*(v14 + 16))
        {
        }

        v9 = sub_245F8D968(0x654C206C61636F46, 0xEC0000006874676ELL);
        if ((v10 & 1) == 0)
        {
        }

        sub_245F8E5C8(*(v14 + 56) + 32 * v9, v15);

        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          return result;
        }

        if (!*(v14 + 16))
        {
        }

        v11 = sub_245F8D968(1635017028, 0xE400000000000000);
        if ((v12 & 1) == 0)
        {
        }

        sub_245F8E5C8(*(v14 + 56) + 32 * v11, v15);

        sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          return result;
        }

        if (*(v14 + 16))
        {
          v13 = *(v14 + 32);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

float sub_2460238D0(uint64_t a1)
{
  v1 = -1.0;
  if (*(a1 + 16))
  {
    v3 = sub_245F8D968(0x657275736F707845, 0xEC000000656D6954);
    if (v4)
    {
      sub_245F8E5C8(*(a1 + 56) + 32 * v3, v7);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  return v1;
}

uint64_t sub_246023974(uint64_t a1)
{
  v2 = *MEMORY[0x277CD30B0];
  v3 = sub_246091C04();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v5 = sub_245F8D968(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0 || (sub_245F8E5C8(*(a1 + 56) + 32 * v5, v16), sub_245F8E624(&qword_27EE3A460, "6K"), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (!*(a1 + 16))
    {
      return -1;
    }

    v12 = sub_245F8D968(0x6E69614744707369, 0xE800000000000000);
    if ((v13 & 1) == 0)
    {
      return -1;
    }

    sub_245F8E5C8(*(a1 + 56) + 32 * v12, v16);
    sub_245FC82A8();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return -1;
    }

    v14 = [v15 integerValue];

    return v14;
  }

  if (v15 >> 62)
  {
    result = sub_246092354();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_6:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C196C20](0);
    goto LABEL_9;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v15 + 32);
LABEL_9:
    v10 = v9;

    v11 = [v10 integerValue];

    return v11;
  }

  __break(1u);
  return result;
}

void sub_246023B40(__CVBuffer *a1)
{
  v2 = sub_246091BD4();
  HasAttachment = CVBufferHasAttachment(a1, v2);

  if (!HasAttachment)
  {
    return;
  }

  v4 = sub_246091BD4();
  v5 = CVBufferHasAttachment(a1, v4);

  if (!v5)
  {
    return;
  }

  v6 = sub_246091BD4();
  v7 = CVBufferCopyAttachment(a1, v6, 0);

  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13[0] = v7;
  sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
  swift_dynamicCast();
  sub_246023624(v12);
  v8 = sub_246091BD4();
  v9 = CVBufferCopyAttachment(a1, v8, 0);

  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13[0] = v9;
  swift_dynamicCast();
  sub_2460238D0(v12);
  if (*(v12 + 16))
  {
    v10 = sub_245F8D968(0x6C6576654C78754CLL, 0xE800000000000000);
    if (v11)
    {
      sub_245F8E5C8(*(v12 + 56) + 32 * v10, v13);
      swift_dynamicCast();
    }
  }

  sub_246023974(v12);
}

void sub_246023D7C(__CVBuffer *a1)
{
  v2 = sub_246091BD4();
  HasAttachment = CVBufferHasAttachment(a1, v2);

  if (HasAttachment)
  {
    v4 = *MEMORY[0x277CD3038];
    if (CVBufferHasAttachment(a1, *MEMORY[0x277CD3038]))
    {
      v5 = sub_246091BD4();
      v6 = CVBufferCopyAttachment(a1, v5, 0);

      if (v6)
      {
        sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
        swift_dynamicCast();
        sub_246023624(v7);
        if (CVBufferCopyAttachment(a1, v4, 0))
        {

          swift_dynamicCast();
          sub_2460238D0(v7);
          sub_246023974(v7);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

unint64_t sub_246023F10(void *a1, double a2, double a3)
{
  if (a2 >= a3)
  {
    goto LABEL_20;
  }

  *a1 = 0;
  result = (*(*v3 + 128))();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v8 = result;
  if (!result)
  {
LABEL_20:
    v9 = 0.0;
    v12 = 1;
    goto LABEL_27;
  }

  v9 = 0.0;
  v10 = 0;
  v11 = *(*v3 + 216);
  v12 = 1;
  v13 = result;
  while (1)
  {
    if (v8 < v13)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    result = v11(&v19, --v13);
    if ((v21 & 1) == 0)
    {
      break;
    }

LABEL_6:
    if (!v13)
    {
      goto LABEL_27;
    }
  }

  v14 = v20;
  if (v19 >= a2 && v19 < a3)
  {
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_29;
    }

    *a1 = v10;
    v17 = v9;
    if (v12)
    {
      v17 = v14;
    }

    if (v17 > v14)
    {
      v14 = v17;
    }

    v9 = v14;
    v12 = 0;
    goto LABEL_6;
  }

  if (v19 < a3)
  {
    goto LABEL_6;
  }

  if (__OFADD__(v10, 1))
  {
    goto LABEL_31;
  }

  *a1 = v10 + 1;
  v18 = v9;
  if (v12)
  {
    v18 = v14;
  }

  if (v18 > v14)
  {
    v14 = v18;
  }

  v9 = v14;
  v12 = 0;
LABEL_27:
  v22 = v12;
  return LODWORD(v9) | ((v12 & 1) << 32);
}

uint64_t *sub_24602409C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  type metadata accessor for DepthWarpCircularBuffer(0);
  swift_allocObject();
  v6 = v3;
  v7 = v4;
  return sub_24608EB44(a1, &v6);
}

uint64_t sub_246024100(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v114 = a2;
  v7 = sub_2460918F4();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v112 = &v108 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v108 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v113 = &v108 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v111 = &v108 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - v21;
  v23 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v108 - v25;
  v27 = sub_246091834();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v33 = v32;
  v35 = v34;
  sub_245F8E7A4(v31, v26, &qword_27EE3A350, &unk_2460969A0);
  if ((*(v33 + 48))(v26, 1, v35) == 1)
  {
    v36 = sub_245F8E744(v26, &qword_27EE3A350, &unk_2460969A0);
    if ((a3 & 1) == 0)
    {
      v37 = (*(*v4 + 112))(v36);
      v38 = sub_245FA3174();
      v39 = v115;
      v40 = *(v115 + 16);
      if ((v37 & 1) == 0)
      {
        v79 = v112;
        v80 = v116;
        v40(v112, v38, v116);
        v81 = sub_2460918D4();
        v82 = sub_246091F94();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v119 = v84;
          *v83 = 136380931;
          *(v83 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, &v119);
          *(v83 + 12) = 2048;
          v85 = v114;
          *(v83 + 14) = v114;
          _os_log_impl(&dword_245F8A000, v81, v82, "SegmentIDConverter.%{private}s:\nSample has a nil session UUID. Final segment ID is the same with original: %ld", v83, 0x16u);
          sub_245F8E6F4(v84);
          MEMORY[0x24C1989D0](v84, -1, -1);
          MEMORY[0x24C1989D0](v83, -1, -1);

          (*(v39 + 8))(v79, v80);
          return v85;
        }

        else
        {

          (*(v39 + 8))(v79, v80);
          return v114;
        }
      }

      v41 = v116;
      v40(v16, v38, v116);
      v42 = sub_2460918D4();
      v43 = sub_246091F94();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = -1;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v119 = v46;
        *v45 = 136380931;
        *(v45 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, &v119);
        *(v45 + 12) = 2048;
        *(v45 + 14) = -1;
        _os_log_impl(&dword_245F8A000, v42, v43, "SegmentIDConverter.%{private}s:\nSample has a nil session UUID but need to reset legacy id. Final segment ID is: %ld", v45, 0x16u);
        sub_245F8E6F4(v46);
        MEMORY[0x24C1989D0](v46, -1, -1);
        MEMORY[0x24C1989D0](v45, -1, -1);

        (*(v39 + 8))(v16, v41);
        return v44;
      }

      (*(v39 + 8))(v16, v41);
      return -1;
    }

LABEL_8:
    v47 = sub_245FA3174();
    v48 = v115;
    v49 = v116;
    (*(v115 + 16))(v11, v47, v116);
    v50 = sub_2460918D4();
    v51 = sub_246091F94();
    if (os_log_type_enabled(v50, v51))
    {
      v44 = -1;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v119 = v53;
      *v52 = 136380675;
      *(v52 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, &v119);
      _os_log_impl(&dword_245F8A000, v50, v51, "SegmentIDConverter.%{private}s:\nSample has a nil segment ID. Final segment ID is -1.", v52, 0xCu);
      sub_245F8E6F4(v53);
      MEMORY[0x24C1989D0](v53, -1, -1);
      MEMORY[0x24C1989D0](v52, -1, -1);

      (*(v48 + 8))(v11, v49);
      return v44;
    }

    (*(v48 + 8))(v11, v49);
    return -1;
  }

  (*(v33 + 32))(v30, v26, v35);
  if (a3)
  {
    (*(v33 + 8))(v30, v35);
    goto LABEL_8;
  }

  v112 = v35;
  v54 = v114;
  if (v114 < 0)
  {
    v86 = sub_245FA3174();
    v87 = v115;
    v88 = v116;
    (*(v115 + 16))(v22, v86, v116);
    v89 = sub_2460918D4();
    v90 = sub_246091F94();
    if (!os_log_type_enabled(v89, v90))
    {

      (*(v87 + 8))(v22, v88);
      (*(v33 + 8))(v30, v112);
      return -1;
    }

    v110 = v30;
    v44 = -1;
    v91 = v54;
    v92 = swift_slowAlloc();
    v93 = v33;
    v94 = swift_slowAlloc();
    v119 = v94;
    *v92 = 136380931;
    *(v92 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, &v119);
    *(v92 + 12) = 2048;
    *(v92 + 14) = v91;
    _os_log_impl(&dword_245F8A000, v89, v90, "SegmentIDConverter.%{private}s:\nSample has a negative segment ID: %ld.\nFinal segment ID is -1.", v92, 0x16u);
    sub_245F8E6F4(v94);
    MEMORY[0x24C1989D0](v94, -1, -1);
    MEMORY[0x24C1989D0](v92, -1, -1);

    (*(v87 + 8))(v22, v88);
LABEL_27:
    (*(v93 + 8))(v110, v112);
    return v44;
  }

  v55 = sub_2460917F4();
  v57 = v56;
  v119 = v54;
  v58 = sub_2460923D4();
  v60 = v59;
  v109 = v55;
  v119 = v55;
  v120 = v57;

  MEMORY[0x24C196640](v58, v60);

  v62 = v119;
  v61 = v120;
  swift_beginAccess();
  v63 = v4[3];
  v64 = *(v63 + 16);
  v110 = v30;
  if (v64)
  {
    v65 = v33;

    v66 = sub_245F8D968(v62, v61);
    if (v67)
    {
      v68 = v66;

      v44 = *(*(v63 + 56) + 8 * v68);

      v69 = sub_245FA3174();
      v70 = v115;
      v71 = v116;
      v72 = v111;
      (*(v115 + 16))(v111, v69, v116);

      v73 = sub_2460918D4();
      v74 = sub_246091F94();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v118[0] = v76;
        *v75 = 136381443;
        *(v75 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, v118);
        *(v75 + 12) = 2080;
        v77 = v54;
        v78 = sub_245F8D3C0(v109, v57, v118);

        *(v75 + 14) = v78;
        *(v75 + 22) = 2048;
        *(v75 + 24) = v77;
        *(v75 + 32) = 2048;
        *(v75 + 34) = v44;
        _os_log_impl(&dword_245F8A000, v73, v74, "SegmentIDConverter.%{private}s:\nFound existing ID with session UUID: %s and\noriginal segment ID: %ld.\nFinal segment ID is %ld.", v75, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v76, -1, -1);
        MEMORY[0x24C1989D0](v75, -1, -1);

        (*(v70 + 8))(v111, v116);
      }

      else
      {

        (*(v70 + 8))(v72, v71);
      }

      (*(v65 + 8))(v110, v112);
      return v44;
    }
  }

  v95 = v4[4];
  swift_beginAccess();
  v96 = v4[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v117 = v4[3];
  v4[3] = 0x8000000000000000;
  sub_246026EB0(v95, v62, v61, isUniquelyReferenced_nonNull_native);

  v4[3] = v117;
  result = swift_endAccess();
  v44 = v4[4];
  if (!__OFADD__(v44, 1))
  {
    v4[4] = v44 + 1;
    v99 = sub_245FA3174();
    v100 = v115;
    v101 = v116;
    v102 = v113;
    (*(v115 + 16))(v113, v99, v116);

    v103 = sub_2460918D4();
    v104 = sub_246091F94();

    if (!os_log_type_enabled(v103, v104))
    {

      (*(v100 + 8))(v102, v101);
      (*(v33 + 8))(v110, v112);
      return v44;
    }

    v105 = swift_slowAlloc();
    v93 = v33;
    v106 = swift_slowAlloc();
    v118[0] = v106;
    *v105 = 136381443;
    *(v105 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, v118);
    *(v105 + 12) = 2080;
    v107 = sub_245F8D3C0(v109, v57, v118);

    *(v105 + 14) = v107;
    *(v105 + 22) = 2048;
    *(v105 + 24) = v114;
    *(v105 + 32) = 2048;
    *(v105 + 34) = v44;
    _os_log_impl(&dword_245F8A000, v103, v104, "SegmentIDConverter.%{private}s:\nFound new ID with session UUID: %s and\noriginal segment ID: %ld.\nFinal segment ID is %ld.", v105, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v106, -1, -1);
    MEMORY[0x24C1989D0](v105, -1, -1);

    (*(v100 + 8))(v113, v101);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_246024DEC(char a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v2 + 16) = a1;
  v9 = sub_245FA3174();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2460918D4();
  v11 = sub_246091F94();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = *(v2 + 16);

    _os_log_impl(&dword_245F8A000, v10, v11, "SegmentIDConverter: should reset legacy segment id: %{BOOL}d", v12, 8u);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v8, v4);
}

void (*sub_246024F98(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_2460918F4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  swift_beginAccess();
  return sub_246025080;
}

void sub_246025080(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[3];
    v8 = sub_245FA3174();
    (*(v6 + 16))(v4, v8, v5);

    v9 = sub_2460918D4();
    v10 = sub_246091F94();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v3[3];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = *(v12 + 16);

      _os_log_impl(&dword_245F8A000, v9, v10, "SegmentIDConverter: should reset legacy segment id: %{BOOL}d", v13, 8u);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    else
    {
      v14 = v3[3];
    }

    v4 = v3[6];
    (*(v3[5] + 8))(v4, v3[4]);
  }

  free(v4);

  free(v3);
}

uint64_t sub_2460251C0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2460251F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_246027200(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0;
  return v0;
}

uint64_t sub_246025258(uint64_t *a1)
{
  v3 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  sub_246091A84();
  v7 = sub_246091AA4();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = *a1;
  swift_beginAccess();
  sub_2460272FC(v6, v1 + v8);
  return swift_endAccess();
}

uint64_t sub_246025348()
{
  v1 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_246091AA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v16, v7, &qword_27EE3A870, &unk_246098E70);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
    return sub_245F8E744(v18, &qword_27EE3A870, &unk_246098E70);
  }

  v25 = *(v9 + 32);
  v25(v15, v7, v8);
  v19 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v19, v5, &qword_27EE3A870, &unk_246098E70);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    return sub_245F8E744(v18, &qword_27EE3A870, &unk_246098E70);
  }

  v25(v13, v5, v8);
  v21 = sub_246091A74();
  v22 = sub_246091A74();
  v23 = *(v9 + 8);
  v23(v13, v8);
  result = (v23)(v15, v8);
  if (v21 < v22)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246025630()
{
  v1 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_246091AA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v16, v7, &qword_27EE3A870, &unk_246098E70);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
    return sub_245F8E744(v18, &qword_27EE3A870, &unk_246098E70);
  }

  v25 = *(v9 + 32);
  v25(v15, v7, v8);
  v19 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v19, v5, &qword_27EE3A870, &unk_246098E70);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    return sub_245F8E744(v18, &qword_27EE3A870, &unk_246098E70);
  }

  v25(v13, v5, v8);
  v21 = sub_246091A74();
  v22 = sub_246091A74();
  v23 = *(v9 + 8);
  v23(v13, v8);
  result = (v23)(v15, v8);
  if (v21 < v22)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246025924()
{
  v1 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_246091AA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v16, v7, &qword_27EE3A870, &unk_246098E70);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
    return sub_245F8E744(v18, &qword_27EE3A870, &unk_246098E70);
  }

  v25 = *(v9 + 32);
  v25(v15, v7, v8);
  v19 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v19, v5, &qword_27EE3A870, &unk_246098E70);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    return sub_245F8E744(v18, &qword_27EE3A870, &unk_246098E70);
  }

  v25(v13, v5, v8);
  v21 = sub_246091A74();
  v22 = sub_246091A74();
  v23 = *(v9 + 8);
  v23(v13, v8);
  result = (v23)(v15, v8);
  if (v21 < v22)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246025C1C()
{
  v1 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_246091AA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v16, v7, &qword_27EE3A870, &unk_246098E70);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
    return sub_245F8E744(v18, &qword_27EE3A870, &unk_246098E70);
  }

  v25 = *(v9 + 32);
  v25(v15, v7, v8);
  v19 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v19, v5, &qword_27EE3A870, &unk_246098E70);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    return sub_245F8E744(v18, &qword_27EE3A870, &unk_246098E70);
  }

  v25(v13, v5, v8);
  v21 = sub_246091A74();
  v22 = sub_246091A74();
  v23 = *(v9 + 8);
  v23(v13, v8);
  result = (v23)(v15, v8);
  if (v21 < v22)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246025F14()
{
  sub_245F8E744(v0 + OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime, &qword_27EE3A870, &unk_246098E70);
  sub_245F8E744(v0 + OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime, &qword_27EE3A870, &unk_246098E70);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_246025FB8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  v5 = sub_246091AA4();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime, 1, 1, v5);
  return v3;
}

uint64_t sub_246026078(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) - 8) + 64);
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v14[1] = v14 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v14 - v10;
  v12 = *(v9 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_246092214();
  sub_246092214();
  sub_246092214();
  sub_246092204();
  memcpy(v3, v11, v1);
  sub_246092224();
  memcpy(v3, v8, v1);
  sub_246092224();
  return sub_246092224();
}

char *sub_246026288(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_245F8E624(&qword_27EE3A890, &qword_246098F58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_24602638C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24602717C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_2460923C4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_246091E14();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2460264C0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2460264C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_245FAE62C(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_246026A1C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_245FAC394(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_245FAC394((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_246026A1C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_246026A1C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_246026C10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A888, "lB");
  v38 = a2;
  result = sub_246092374();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_246092504();
      sub_246091C94();
      result = sub_246092544();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_246026EB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_245F8D968(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_246026C10(v16, a4 & 1);
      v20 = *v5;
      result = sub_245F8D968(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_246092424();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_246027014();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_246027014()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A888, "lB");
  v2 = *v0;
  v3 = sub_246092364();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_246027190(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
      if (v1 != 3)
      {
        v5 = *(result + 44);
      }
    }
  }

  if (v1 != 4)
  {
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_246027200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A888, "lB");
    v3 = sub_246092384();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_245F8D968(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2460272FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for OCDepthWarpData(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OCDepthWarpData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OCDepthWarpData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

void sub_246027468()
{
  sub_2460274F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2460274F8()
{
  if (!qword_27EE3A878)
  {
    sub_246091AA4();
    v0 = sub_2460920F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE3A878);
    }
  }
}

float32x2_t sub_246027558()
{
  result = vneg_f32(0x7F0000007FLL);
  qword_27EE3CCF0 = result;
  return result;
}

uint64_t ObjectContour.init(points:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16) < 3uLL)
  {

    result = 0;
  }

  *a2 = result;
  return result;
}

double ObjectContour.closestPoint(to:)()
{
  v23[7] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_245F8E624(&qword_27EE3A0E8, &qword_24609ADA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096EF0;
  *(inited + 32) = 0;
  v8 = (inited + 32);
  *(inited + 40) = 0;
  v22 = 0;
  v9 = *(v6 + 16);
  if (OCObjectContourGetNearestPoints())
  {
    v10 = 1;
  }

  else
  {
    v10 = v22 < 1;
  }

  if (!v10)
  {
    v17 = *v8;
    if ((*v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *(v6 + 16))
    {
      v16 = (v6 + 32 + 8 * v17);
      goto LABEL_14;
    }

    __break(1u);
  }

  v11 = sub_245FA3174();
  (*(v2 + 16))(v5, v11, v1);
  v12 = sub_2460918D4();
  v13 = sub_246091FC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A18B0, v23);
    _os_log_impl(&dword_245F8A000, v12, v13, "Object Contour.%{private}s: Failed to get nearest points!", v14, 0xCu);
    sub_245F8E6F4(v15);
    MEMORY[0x24C1989D0](v15, -1, -1);
    MEMORY[0x24C1989D0](v14, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  if (qword_27EE3CCE8 != -1)
  {
    swift_once();
  }

  v16 = &qword_27EE3CCF0;
LABEL_14:
  v18 = *v16;

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

double ObjectContour.center()()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (qword_27EE3CCE8 != -1)
  {
    swift_once();
  }

  v7 = *&qword_27EE3CCF0;
  v17 = qword_27EE3CCF0;
  v8 = *(v6 + 16);
  if (OCObjectContourGetCenterOfMass())
  {
    v9 = sub_245FA3174();
    (*(v2 + 16))(v5, v9, v1);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136380675;
      *(v12 + 4) = sub_245F8D3C0(0x29287265746E6563, 0xE800000000000000, v18);
      _os_log_impl(&dword_245F8A000, v10, v11, "Object Contour.%{private}s: Invalid center!", v12, 0xCu);
      sub_245F8E6F4(v13);
      MEMORY[0x24C1989D0](v13, -1, -1);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v7 = *&v17;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_246027AE4(uint64_t *a1, int a2)
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

uint64_t sub_246027B2C(uint64_t result, int a2, int a3)
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

unint64_t PhotogrammetrySession.Error.localizedDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x5255206567616D49;
    v3 = 0x20656761726F7453;
    if (v1 == 5)
    {
      v3 = 0xD000000000000015;
    }

    v4 = 0xD000000000000023;
    if (v1 != 3)
    {
      v4 = 0x676E696C706D6153;
    }

    if (v1 <= 4)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000015;
    }

    if (!v1)
    {
      v2 = 0xD000000000000012;
    }

    if (v1 <= 2)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    sub_246092284();

    v6 = sub_2460923D4();
    MEMORY[0x24C196640](v6);

    return 0xD00000000000002ELL;
  }
}

CoreOC::PhotogrammetrySession::Request::Detail_optional __swiftcall PhotogrammetrySession.Request.Detail.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 PhotogrammetrySession.Request.Geometry.orientedBoundsTransform.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return result;
}

void PhotogrammetrySession.Request.Geometry.orientedBoundsTransform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 PhotogrammetrySession.Request.Geometry.rootTransform.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  return result;
}

void PhotogrammetrySession.Request.Geometry.rootTransform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

__n128 sub_246027DB4()
{
  result = *MEMORY[0x277D860B8];
  v1 = *(MEMORY[0x277D860B8] + 16);
  v2 = *(MEMORY[0x277D860B8] + 32);
  v3 = *(MEMORY[0x277D860B8] + 48);
  return result;
}

void __swiftcall PhotogrammetrySession.Request.Geometry.init(orientedBoundsTransform:rootTransform:)(CoreOC::PhotogrammetrySession::Request::Geometry *__return_ptr retstr, simd_float4x4 *orientedBoundsTransform, simd_float4x4 *rootTransform)
{
  retstr->orientedBoundsTransform.columns[0] = v3;
  retstr->orientedBoundsTransform.columns[1] = v4;
  retstr->orientedBoundsTransform.columns[2] = v5;
  retstr->orientedBoundsTransform.columns[3] = v6;
  retstr->rootTransform.columns[0] = v7;
  retstr->rootTransform.columns[1] = v8;
  retstr->rootTransform.columns[2] = v9;
  retstr->rootTransform.columns[3] = v10;
}

uint64_t PhotogrammetrySession.Request.Geometry.hash(into:)()
{
  v1 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();

  return sub_24602FCD4();
}

uint64_t static PhotogrammetrySession.Request.Geometry.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[1], a2[1]), vceqq_f32(*a1, *a2)), vandq_s8(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[3], a2[3])))) & 0x80000000) != 0)
  {
    return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[6], a2[6]), vceqq_f32(a1[7], a2[7])), vandq_s8(vceqq_f32(a1[5], a2[5]), vceqq_f32(a1[4], a2[4])))) >> 31;
  }

  else
  {
    return 0;
  }
}

uint64_t PhotogrammetrySession.Request.Geometry.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  sub_246092504();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  return sub_246092544();
}

uint64_t sub_246027FC0()
{
  v1 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();

  return sub_24602FCD4();
}

uint64_t sub_24602806C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  sub_246092504();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  return sub_246092544();
}

uint64_t sub_246028120(float32x4_t *a1, float32x4_t *a2)
{
  result = sub_24602FD64(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3]);
  if (result)
  {
    return sub_24602FD64(a1[4], a1[5], a1[6], a1[7], a2[4], a2[5], a2[6], a2[7]);
  }

  return result;
}

uint64_t PhotogrammetrySession.Request.init(modelFile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v5 = *(v4 + 48);
  v6 = a2 + *(v4 + 64);
  v7 = sub_246091704();
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  sub_245F97B40(v13);
  v8 = v13[3];
  *(v6 + 32) = v13[2];
  *(v6 + 48) = v8;
  *(v6 + 128) = v14;
  v9 = v13[7];
  *(v6 + 96) = v13[6];
  *(v6 + 112) = v9;
  v10 = v13[5];
  *(v6 + 64) = v13[4];
  *(v6 + 80) = v10;
  v11 = v13[1];
  *v6 = v13[0];
  *(v6 + 16) = v11;
  *(a2 + v5) = 5;
  return (*(*(v4 - 8) + 56))(a2, 0, 3, v4);
}

uint64_t PhotogrammetrySession.Request.hash(into:)()
{
  v1 = v0;
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Request(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24603046C(v1, v10, type metadata accessor for PhotogrammetrySession.Request);
  v11 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v12 = (*(*(v11 - 8) + 48))(v10, 3, v11);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }

    return MEMORY[0x24C196E90](v21);
  }

  if (v12)
  {
    v21 = 1;
    return MEMORY[0x24C196E90](v21);
  }

  v13 = v10[*(v11 + 48)];
  v14 = &v10[*(v11 + 64)];
  v15 = *(v14 + 1);
  v23 = *v14;
  v24 = v15;
  v16 = *(v14 + 3);
  v25 = *(v14 + 2);
  v26 = v16;
  v17 = *(v14 + 5);
  v27 = *(v14 + 4);
  v19 = *(v14 + 6);
  v18 = *(v14 + 7);
  v28 = v17;
  v29 = v19;
  v30 = v18;
  v20 = v14[128];
  (*(v3 + 32))(v6, v10, v2);
  MEMORY[0x24C196E90](0);
  sub_246030C6C(&qword_27EE3A5E0, MEMORY[0x277CC9260]);
  sub_246091B94();
  MEMORY[0x24C196E90](v13);
  v31[0] = v23;
  v31[1] = v24;
  v31[2] = v25;
  v31[3] = v26;
  v31[4] = v27;
  v31[5] = v28;
  v31[6] = v29;
  v31[7] = v30;
  v32 = v20;
  if (sub_245F97DBC(v31) == 1)
  {
    sub_246092524();
  }

  else
  {
    sub_246092524();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t PhotogrammetrySession.Request.hashValue.getter()
{
  sub_246092504();
  PhotogrammetrySession.Request.hash(into:)();
  return sub_246092544();
}

uint64_t sub_246028630()
{
  sub_246092504();
  PhotogrammetrySession.Request.hash(into:)();
  return sub_246092544();
}

uint64_t sub_246028674()
{
  sub_246092504();
  PhotogrammetrySession.Request.hash(into:)();
  return sub_246092544();
}

uint64_t sub_2460286C4@<X0>(uint64_t result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>)
{
  *a2 = a3;
  a2[1].n128_u32[0] = result;
  return result;
}

CoreOC::PhotogrammetrySession::Poses __swiftcall PhotogrammetrySession.Poses.init(posesBySample:)(Swift::OpaquePointer posesBySample)
{
  v3 = v1;
  v4 = MEMORY[0x277D84F90];
  v1[1]._rawValue = sub_245FFC018(MEMORY[0x277D84F90]);
  v5 = sub_24603030C(v4);
  v3[2]._rawValue = v5;
  v3->_rawValue = posesBySample._rawValue;
  result._lensDistortionDataBySample._rawValue = v7;
  result._intrinsicsBySample._rawValue = v6;
  result.posesBySample._rawValue = v5;
  return result;
}

unint64_t PhotogrammetrySession.ProcessStage.localizedDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C41206567616D49;
  v3 = 0x6E6547206873654DLL;
  v4 = 0x2065727574786554;
  if (v1 != 4)
  {
    v4 = 0x617A696D6974704FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t PhotogrammetrySession.Output.ProgressInfo.estimatedRemainingTime.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_24602883C@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 9) = v4;
  return result;
}

unint64_t PhotogrammetrySession.Output.localizedDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PhotogrammetrySession.Result(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  v9 = type metadata accessor for PhotogrammetrySession.Request(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for PhotogrammetrySession.Output(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24603046C(v1, v19, type metadata accessor for PhotogrammetrySession.Output);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v43 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
        sub_2460304D4(v19, v15, type metadata accessor for PhotogrammetrySession.Request);
        sub_2460304D4(v19 + v43, v8, type metadata accessor for PhotogrammetrySession.Result);
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_246092284();

        v49 = 0x2074736575716552;
        v50 = 0xE800000000000000;
        sub_24603046C(v15, v13, type metadata accessor for PhotogrammetrySession.Request);
        v44 = sub_246091C54();
        MEMORY[0x24C196640](v44);

        MEMORY[0x24C196640](0xD000000000000016, 0x80000002460A1BA0);
        sub_24603046C(v8, v6, type metadata accessor for PhotogrammetrySession.Result);
        v45 = sub_246091C54();
        MEMORY[0x24C196640](v45);

        MEMORY[0x24C196640](46, 0xE100000000000000);
        v34 = v49;
        sub_24603053C(v8, type metadata accessor for PhotogrammetrySession.Result);
        goto LABEL_22;
      }

      v27 = v19 + *(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48);
      v28 = *v27;
      v29 = v27[8];
      sub_2460304D4(v19, v15, type metadata accessor for PhotogrammetrySession.Request);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_246092284();

      v49 = 0x2074736575716552;
      v50 = 0xE800000000000000;
      sub_24603046C(v15, v13, type metadata accessor for PhotogrammetrySession.Request);
      v30 = sub_246091C54();
      MEMORY[0x24C196640](v30);

      MEMORY[0x24C196640](0xD000000000000015, 0x80000002460A1BC0);
      v46 = v28;
      v47 = v29;
      v31 = PhotogrammetrySession.Error.localizedDescription.getter();
      MEMORY[0x24C196640](v31);

      MEMORY[0x24C196640](11810, 0xE200000000000000);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v32 = *(v19 + *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48));
      sub_2460304D4(v19, v15, type metadata accessor for PhotogrammetrySession.Request);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0x2074736575716552, 0xE800000000000000);
      sub_24603046C(v15, v13, type metadata accessor for PhotogrammetrySession.Request);
      v33 = sub_246091C54();
      MEMORY[0x24C196640](v33);

      MEMORY[0x24C196640](0x736572676F727020, 0xEC000000203D2073);
      sub_246091EF4();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v40 = *v19;
        v39 = v19[1];
        v41 = v19[2];
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_246092284();

        v49 = 0x6920656C706D6153;
        v50 = 0xEA00000000003D64;
        v46 = v40;
        v42 = sub_2460923D4();
        MEMORY[0x24C196640](v42);

        MEMORY[0x24C196640](0xD000000000000022, 0x80000002460A1B50);
        MEMORY[0x24C196640](v39, v41);

        v37 = 46;
        v38 = 0xE100000000000000;
        goto LABEL_20;
      }

      v22 = v19 + *(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48);
      v23 = *v22;
      v24 = v22[8];
      v25 = v22[9];
      sub_2460304D4(v19, v15, type metadata accessor for PhotogrammetrySession.Request);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0x2074736575716552, 0xE800000000000000);
      sub_24603046C(v15, v13, type metadata accessor for PhotogrammetrySession.Request);
      v26 = sub_246091C54();
      MEMORY[0x24C196640](v26);

      MEMORY[0x24C196640](0xD000000000000011, 0x80000002460A1B80);
      v46 = v23;
      v47 = v24;
      v48 = v25;
      sub_246092334();
    }

    v34 = v49;
LABEL_22:
    sub_24603053C(v15, type metadata accessor for PhotogrammetrySession.Request);
    return v34;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD00000000000001ALL;
      }

      else
      {
        return 0xD000000000000076;
      }
    }

    v35 = *v19;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0x6920656C706D6153, 0xEA00000000003D64);
    v46 = v35;
    v36 = sub_2460923D4();
    MEMORY[0x24C196640](v36);

    v37 = 0xD000000000000048;
    v38 = 0x80000002460A1B00;
LABEL_20:
    MEMORY[0x24C196640](v37, v38);
    return v49;
  }

  if (EnumCaseMultiPayload == 8)
  {
    return 0xD00000000000003DLL;
  }

  if (EnumCaseMultiPayload == 9)
  {
    return 0xD00000000000002BLL;
  }

  return 0xD000000000000032;
}

CoreOC::PhotogrammetrySession::Configuration::CustomDetailSpecification::TextureDimension_optional __swiftcall PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue <= 4095)
  {
    if (rawValue == 1024)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 2048)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 0x4000)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 0x2000)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 4096)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_246029288()
{
  v1 = *v0;
  sub_246092504();
  MEMORY[0x24C196E90](qword_246099AD8[v1]);
  return sub_246092544();
}

uint64_t sub_246029310()
{
  v1 = *v0;
  sub_246092504();
  MEMORY[0x24C196E90](qword_246099AD8[v1]);
  return sub_246092544();
}

uint64_t sub_2460293D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_2460294A8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2460294D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_246029504@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2460295F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL static PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureFormat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_246029678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

void PhotogrammetrySession.Configuration.CustomDetailSpecification.textureFormat.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 28);
  *a1 = *(v1 + 24);
  *(a1 + 4) = v2;
}

uint64_t PhotogrammetrySession.Configuration.CustomDetailSpecification.textureFormat.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 24) = *result;
  *(v1 + 28) = v2;
  return result;
}

void PhotogrammetrySession.Configuration.CustomDetailSpecification.init()(uint64_t a1@<X8>)
{
  *a1 = 30000000;
  *(a1 + 8) = 3;
  *(a1 + 16) = 31;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
}

void PhotogrammetrySession.Configuration.customDetailSpecification.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 28) = v5;
}

uint64_t PhotogrammetrySession.Configuration.customDetailSpecification.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 28);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 36) = v5;
  return result;
}

uint64_t PhotogrammetrySession.Configuration.snapshotURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PhotogrammetrySession.Configuration(0) + 32);

  return sub_246030634(a1, v3);
}

uint64_t PhotogrammetrySession.Configuration.ignoreBoundingBox.setter(char a1)
{
  result = type metadata accessor for PhotogrammetrySession.Configuration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PhotogrammetrySession.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 2) = 0;
  *(a1 + 8) = 30000000;
  *(a1 + 16) = 3;
  *(a1 + 24) = 31;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  v2 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v3 = *(v2 + 32);
  v4 = sub_246091704();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + *(v2 + 36)) = 0;
  return result;
}

uint64_t PhotogrammetrySession.Configuration.init(snapshotURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 2) = 0;
  *(a2 + 8) = 30000000;
  *(a2 + 16) = 3;
  *(a2 + 24) = 31;
  *(a2 + 32) = 0;
  *(a2 + 36) = 1;
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v5 = *(v4 + 32);
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  v9 = *(v7 + 56);
  v9(a2 + v5, 1, 1, v6);
  *(a2 + *(v4 + 36)) = 0;
  sub_245F8E744(a2 + v5, &qword_27EE3A498, &unk_246097EB8);
  (*(v7 + 32))(a2 + v5, a1, v6);

  return (v9)(a2 + v5, 0, 1, v6);
}

uint64_t sub_246029B3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_246029B4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_246029B98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_246029BF8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_246029C30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_246029C78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_246029CC4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    sub_24602E8A0();
    sub_245F8E624(&qword_27EE3A898, &unk_246098FC0);
    sub_245F9218C(&qword_27EE3A8A0, &qword_27EE3A898, &unk_246098FC0);
    v1 = sub_2460919A4();

    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_246029DE4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24603046C(a1, v7, type metadata accessor for PhotogrammetrySession.Configuration);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  swift_beginAccess();
  sub_246030A98(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_246029EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  swift_beginAccess();
  return sub_24603046C(v1 + v3, a1, type metadata accessor for PhotogrammetrySession.Configuration);
}

uint64_t sub_246029F1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  swift_beginAccess();
  sub_246030A98(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t static PhotogrammetrySession.isSupported.getter()
{
  v1 = v0;
  v2 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_246091EB4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_246091E84();
  v7 = sub_246091E74();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_24602D858(0, 0, v5, &unk_246098FD8, v8);

  type metadata accessor for PGManager();
  return sub_245FD4A28() & 1;
}

double static PhotogrammetrySession.hardwareSpecs.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EE3CD00 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_27EE3CD30;
  result = *&xmmword_27EE3CD10;
  v3 = unk_27EE3CD20;
  *a1 = xmmword_27EE3CD10;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

uint64_t PhotogrammetrySession.__allocating_init(snapshotURL:)(uint64_t a1)
{
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MemoryLogger();
  v19[0] = *(v12 + 88);
  v19[1] = v12;
  (v19[0])(0xD00000000000002ELL, 0x80000002460A1C00);
  v13 = *(v3 + 16);
  v20 = a1;
  v13(v6, a1, v2);
  *v11 = 1;
  v11[2] = 0;
  *(v11 + 1) = 30000000;
  v11[16] = 3;
  *(v11 + 3) = 31;
  *(v11 + 8) = 0;
  v11[36] = 1;
  v14 = *(v8 + 40);
  v15 = *(v3 + 56);
  v15(&v11[v14], 1, 1, v2);
  v11[*(v8 + 44)] = 0;
  sub_245F8E744(&v11[v14], &qword_27EE3A498, &unk_246097EB8);
  (*(v3 + 32))(&v11[v14], v6, v2);
  v15(&v11[v14], 0, 1, v2);
  v16 = v19[3];
  v17 = (*(v19[2] + 208))(v11);
  if (!v16)
  {
    (v19[0])(0xD000000000000031, 0x80000002460A1C30);
  }

  (*(v3 + 8))(v20, v2);
  return v17;
}

uint64_t PhotogrammetrySession.__allocating_init(configuration:)(_BYTE *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PhotogrammetrySession.init(configuration:)(a1);
  return v5;
}

void *PhotogrammetrySession.init(configuration:)(_BYTE *a1)
{
  v147 = a1;
  v157[3] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v149 = &v134 - v5;
  v6 = sub_246091704();
  v153 = *(v6 - 8);
  v7 = *(v153 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v135 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v152 = &v134 - v10;
  v11 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v141 = &v134 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v134 - v17;
  v19 = sub_2460918F4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v137 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v136 = &v134 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v142 = &v134 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = (&v134 - v28);
  v30 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v134 - v32;
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = 0;
  *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject) = 0;
  *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 0;
  v154 = v1;
  *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) = 0;
  v34 = sub_246091EB4();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  sub_246091E84();
  v35 = sub_246091E74();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v2;
  sub_24602D858(0, 0, v33, &unk_246098FE8, v36);

  v38 = sub_245FA31EC();
  v150 = v20;
  v151 = v19;
  v39 = v20;
  v40 = v147;
  v41 = *(v39 + 16);
  v144 = v38;
  v145 = v41;
  v146 = v39 + 16;
  (v41)(v29);
  sub_24603046C(v40, v18, type metadata accessor for PhotogrammetrySession.Configuration);
  v148 = v29;
  v42 = sub_2460918D4();
  v43 = sub_246091FC4();
  v44 = os_log_type_enabled(v42, v43);
  v143 = v11;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v140 = v6;
    v47 = v46;
    v157[0] = v46;
    *v45 = 136446210;
    sub_24603046C(v18, v141, type metadata accessor for PhotogrammetrySession.Configuration);
    v48 = sub_246091C54();
    v50 = v49;
    sub_24603053C(v18, type metadata accessor for PhotogrammetrySession.Configuration);
    v51 = sub_245F8D3C0(v48, v50, v157);
    v53 = v152;
    v52 = v153;

    *(v45 + 4) = v51;
    _os_log_impl(&dword_245F8A000, v42, v43, "Backend Session: Initializing with configuration = %{public}s", v45, 0xCu);
    sub_245F8E6F4(v47);
    v54 = v47;
    v6 = v140;
    MEMORY[0x24C1989D0](v54, -1, -1);
    MEMORY[0x24C1989D0](v45, -1, -1);

    v55 = v151;
    v56 = *(v150 + 8);
    v56(v148, v151);
  }

  else
  {

    sub_24603053C(v18, type metadata accessor for PhotogrammetrySession.Configuration);
    v55 = v151;
    v56 = *(v150 + 8);
    v56(v148, v151);
    v53 = v152;
    v52 = v153;
  }

  v57 = sub_245FD4634(v40);
  v58 = v149;
  if ((v57 & 1) == 0)
  {
    v59 = v40;
    v60 = v142;
    v145(v142, v144, v55);
    v61 = sub_2460918D4();
    v62 = sub_246091FB4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_245F8A000, v61, v62, "Backend Session: Cannot resume from snapshot URL with non-default configuration!", v63, 2u);
      MEMORY[0x24C1989D0](v63, -1, -1);
    }

    v56(v60, v55);
    sub_245FFD204();
    swift_allocError();
    *v64 = 2;
    *(v64 + 8) = 1;
    swift_willThrow();
    v65 = v59;
    goto LABEL_20;
  }

  sub_245F8E7A4(&v40[*(v143 + 32)], v149, &qword_27EE3A498, &unk_246097EB8);
  if ((*(v52 + 48))(v58, 1, v6) == 1)
  {
    sub_245F8E744(v58, &qword_27EE3A498, &unk_246097EB8);
LABEL_19:
    sub_245FFD204();
    swift_allocError();
    *v98 = 0;
    *(v98 + 8) = 1;
    swift_willThrow();
    v65 = v40;
LABEL_20:
    sub_24603053C(v65, type metadata accessor for PhotogrammetrySession.Configuration);
LABEL_21:
    v99 = 0;
    goto LABEL_22;
  }

  (*(v52 + 32))(v53, v58, v6);
  if ((sub_2460915E4() & 1) == 0)
  {
    (*(v52 + 8))(v53, v6);
    goto LABEL_19;
  }

  v140 = v6;
  v66 = v53;
  v67 = objc_opt_self();
  v68 = [v67 defaultManager];
  sub_2460916F4();
  v69 = sub_246091BD4();

  v70 = [v68 fileExistsAtPath_];

  if (!v70)
  {
    (*(v153 + 8))(v66, v140);
    goto LABEL_19;
  }

  v71 = [v67 defaultManager];
  sub_2460916F4();
  v72 = sub_246091BD4();

  v157[0] = 0;
  v73 = [v71 contentsOfDirectoryAtPath:v72 error:v157];

  v74 = v157[0];
  v75 = v40;
  if (!v73)
  {
    v109 = v157[0];
    sub_2460915D4();

    swift_willThrow();
    sub_24603053C(v40, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v153 + 8))(v66, v140);
    goto LABEL_21;
  }

  v76 = sub_246091DD4();
  v77 = v74;

  v78 = *(v76 + 16);

  if (!v78)
  {
    sub_245FFD204();
    swift_allocError();
    *v110 = 0;
    *(v110 + 8) = 1;
    swift_willThrow();
    sub_24603053C(v40, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v153 + 8))(v152, v140);
    goto LABEL_21;
  }

  v79 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  v80 = v154;
  sub_24603046C(v40, v154 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  type metadata accessor for PGManager();
  swift_beginAccess();
  v81 = v80 + v79;
  v82 = v138;
  sub_24603046C(v81, v138, type metadata accessor for PhotogrammetrySession.Configuration);
  v83 = v139;
  v84 = sub_245FD5270(v82);
  v149 = v83;
  if (!v83)
  {
    *(v154 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) = v84;
    v111 = *(*v84 + 472);

    v111(v112, &off_2858E0260);

    v113 = v151;
    v145(v136, v144, v151);
    v114 = v153;
    v115 = v135;
    v116 = v140;
    (*(v153 + 16))(v135, v152, v140);
    v117 = sub_2460918D4();
    v118 = sub_246091FA4();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v156 = v148;
      *v119 = 141558275;
      *(v119 + 4) = 1752392040;
      *(v119 + 12) = 2081;
      sub_246030C6C(&qword_27EE3A000, MEMORY[0x277CC9260]);
      LODWORD(v147) = v118;
      v120 = sub_2460923D4();
      v121 = v115;
      v123 = v122;
      v124 = *(v114 + 8);
      v124(v121, v140);
      v125 = sub_245F8D3C0(v120, v123, &v156);

      *(v119 + 14) = v125;
      _os_log_impl(&dword_245F8A000, v117, v147, "Backend Session: initialized with snapshot URL = %{private,mask.hash}s", v119, 0x16u);
      v126 = v148;
      sub_245F8E6F4(v148);
      MEMORY[0x24C1989D0](v126, -1, -1);
      v127 = v119;
      v116 = v140;
      MEMORY[0x24C1989D0](v127, -1, -1);

      v128 = v124;
      v129 = v151;
      v130 = v136;
    }

    else
    {

      v128 = *(v114 + 8);
      v128(v115, v116);
      v130 = v136;
      v129 = v113;
    }

    v56(v130, v129);
    v133 = type metadata accessor for MemoryLogger();
    (*(v133 + 88))(0xD000000000000032, 0x80000002460A1C70);
    sub_24603053C(v40, type metadata accessor for PhotogrammetrySession.Configuration);
    v128(v152, v116);
    goto LABEL_25;
  }

  v85 = v137;
  v86 = v151;
  v145(v137, v144, v151);
  v87 = v149;
  v88 = v149;
  v89 = sub_2460918D4();
  v90 = sub_246091FB4();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v156 = v92;
    *v91 = 136446210;
    v155 = v149;
    v93 = v149;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v94 = sub_246091C54();
    v96 = sub_245F8D3C0(v94, v95, &v156);

    *(v91 + 4) = v96;
    _os_log_impl(&dword_245F8A000, v89, v90, "Backend Session: initialization error = %{public}s", v91, 0xCu);
    sub_245F8E6F4(v92);
    MEMORY[0x24C1989D0](v92, -1, -1);
    MEMORY[0x24C1989D0](v91, -1, -1);

    v97 = v137;
  }

  else
  {

    v97 = v85;
  }

  v56(v97, v86);
  v131 = v152;
  sub_245FFD204();
  swift_allocError();
  *v132 = 2;
  v99 = 1;
  *(v132 + 8) = 1;
  swift_willThrow();

  sub_24603053C(v75, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v153 + 8))(v131, v140);
LABEL_22:
  v100 = v154;
  v101 = v154[2];

  v102 = v100[3];

  if (v99)
  {
    sub_24603053C(v154 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  }

  v103 = v154;
  v104 = *(v154 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject);

  type metadata accessor for PhotogrammetrySession(0);
  v105 = *(*v103 + 48);
  v106 = *(*v103 + 52);
  swift_deallocPartialClassInstance();
LABEL_25:
  v107 = *MEMORY[0x277D85DE8];
  return v154;
}

uint64_t PhotogrammetrySession.__allocating_init(imagesURL:snapshotURL:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v24 = a1;
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v23 = *(type metadata accessor for MemoryLogger() + 88);
  v23(0xD000000000000039, 0x80000002460A1CB0);
  *v14 = 1;
  v14[2] = 0;
  *(v14 + 1) = 30000000;
  v14[16] = 3;
  *(v14 + 3) = 31;
  *(v14 + 8) = 0;
  v14[36] = 1;
  v15 = *(v8 + 40);
  (*(v3 + 56))(&v14[v15], 1, 1, v2);
  v16 = *(v8 + 44);
  v17 = v24;
  v14[v16] = 0;
  sub_245FFF298(v28, &v14[v15]);
  v18 = *(v3 + 16);
  v27 = v2;
  v18(v6, v17, v2);
  sub_24603046C(v14, v12, type metadata accessor for PhotogrammetrySession.Configuration);
  v19 = v26;
  v20 = (*(v25 + 216))(v6, v12);
  if (!v19)
  {
    v23(0xD00000000000003CLL, 0x80000002460A1CF0);
  }

  sub_245F8E744(v28, &qword_27EE3A498, &unk_246097EB8);
  (*(v3 + 8))(v17, v27);
  sub_24603053C(v14, type metadata accessor for PhotogrammetrySession.Configuration);
  return v20;
}

uint64_t PhotogrammetrySession.__allocating_init(imagesURL:configuration:)(char *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  PhotogrammetrySession.init(imagesURL:configuration:)(a1, a2);
  return v7;
}

void *PhotogrammetrySession.init(imagesURL:configuration:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v165 = a1;
  v166 = a2;
  v170[3] = *MEMORY[0x277D85DE8];
  v162 = *v2;
  v145 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v4 = *(*(v145 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v145);
  v144 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v158 = (&v143 - v7);
  v161 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v8 = *(*(v161 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v161);
  v156 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v160 = (&v143 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = &v143 - v13;
  v15 = sub_246091704();
  v167 = *(v15 - 8);
  v16 = *(v167 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v146 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v155 = &v143 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v150 = &v143 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v143 - v23;
  v25 = sub_2460918F4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v148 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v147 = &v143 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v143 - v32;
  v34 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v143 - v36;
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) = 0;
  v38 = sub_246091EB4();
  (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  sub_246091E84();
  v39 = sub_246091E74();
  v40 = swift_allocObject();
  v41 = MEMORY[0x277D85700];
  v40[2] = v39;
  v40[3] = v41;
  v40[4] = v162;
  v42 = v37;
  v43 = v167;
  sub_24602D858(0, 0, v42, &unk_246098FF8, v40);

  v44 = sub_245FA31EC();
  v163 = v26;
  v45 = *(v26 + 16);
  v152 = v44;
  v164 = v25;
  v153 = v45;
  v154 = v26 + 16;
  (v45)(v33);
  v46 = *(v43 + 16);
  v47 = v15;
  v157 = v43 + 16;
  v151 = v46;
  v46(v24, v165, v15);
  v48 = v14;
  sub_24603046C(v166, v14, type metadata accessor for PhotogrammetrySession.Configuration);
  v49 = sub_2460918D4();
  v50 = sub_246091FC4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v149 = v3;
    v52 = v51;
    v53 = swift_slowAlloc();
    v170[0] = v53;
    *v52 = 136380931;
    sub_246030C6C(&qword_27EE3A000, MEMORY[0x277CC9260]);
    v54 = sub_2460923D4();
    v55 = v47;
    v143 = v47;
    v57 = v56;
    v162 = *(v167 + 8);
    v162(v24, v55);
    v58 = sub_245F8D3C0(v54, v57, v170);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    sub_24603046C(v48, v160, type metadata accessor for PhotogrammetrySession.Configuration);
    v59 = sub_246091C54();
    v61 = v60;
    sub_24603053C(v48, type metadata accessor for PhotogrammetrySession.Configuration);
    v62 = sub_245F8D3C0(v59, v61, v170);

    *(v52 + 14) = v62;
    _os_log_impl(&dword_245F8A000, v49, v50, "Backend Session: Initializing with images URL = %{private}s and configuration = %{public}s", v52, 0x16u);
    swift_arrayDestroy();
    v63 = v53;
    v43 = v167;
    MEMORY[0x24C1989D0](v63, -1, -1);
    v64 = v52;
    v3 = v149;
    MEMORY[0x24C1989D0](v64, -1, -1);

    v65 = *(v163 + 8);
    v65(v33, v164);
    v66 = v143;
  }

  else
  {

    sub_24603053C(v48, type metadata accessor for PhotogrammetrySession.Configuration);
    v162 = *(v43 + 8);
    v162(v24, v47);
    v65 = *(v163 + 8);
    v65(v33, v164);
    v66 = v47;
  }

  v67 = v165;
  v68 = sub_2460915E4();
  v69 = v166;
  if ((v68 & 1) == 0)
  {
    goto LABEL_12;
  }

  v160 = v65;
  v70 = [objc_opt_self() defaultManager];
  sub_2460916F4();
  v71 = sub_246091BD4();

  v170[0] = 0;
  v72 = [v70 contentsOfDirectoryAtPath:v71 error:v170];

  v73 = v170[0];
  if (!v72)
  {
    v103 = v170[0];
    sub_2460915D4();

    goto LABEL_14;
  }

  v74 = sub_246091DD4();
  v75 = v73;

  v76 = *(v74 + 16);

  if (!v76)
  {
LABEL_12:
    sub_245FFD204();
    swift_allocError();
    *v102 = 1;
    *(v102 + 8) = 1;
LABEL_14:
    swift_willThrow();
    sub_24603053C(v69, type metadata accessor for PhotogrammetrySession.Configuration);
    v162(v67, v66);
    goto LABEL_15;
  }

  v77 = v158;
  sub_245F8E7A4(v69 + *(v161 + 32), v158, &qword_27EE3A498, &unk_246097EB8);
  if ((*(v43 + 48))(v77, 1, v66) != 1)
  {
    v112 = v150;
    (*(v43 + 32))(v150, v77, v66);
    v113 = v159;
    sub_246090F3C();
    if (!v113)
    {
      if (sub_246090F38(v112))
      {
        v159 = 0;
        v162(v112, v66);
        goto LABEL_9;
      }

      sub_245FFD204();
      swift_allocError();
      *v141 = 0;
      *(v141 + 8) = 1;
      swift_willThrow();
    }

    sub_24603053C(v69, type metadata accessor for PhotogrammetrySession.Configuration);
    v142 = v162;
    v162(v67, v66);
    v142(v112, v66);
LABEL_15:
    v104 = 0;
    goto LABEL_16;
  }

  sub_245F8E744(v77, &qword_27EE3A498, &unk_246097EB8);
LABEL_9:
  v78 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  sub_24603046C(v69, v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  type metadata accessor for PGManager();
  v79 = v155;
  v80 = v151;
  v151(v155, v67, v66);
  swift_beginAccess();
  v81 = v3 + v78;
  v82 = v156;
  sub_24603046C(v81, v156, type metadata accessor for PhotogrammetrySession.Configuration);
  v83 = v159;
  v84 = sub_245FD69FC(v79, v82);
  v159 = v83;
  if (!v83)
  {
    *(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) = v84;
    v114 = *(*v84 + 472);

    v114(v115, &off_2858E0260);

    v116 = v147;
    v117 = v164;
    (v153)(v147, v152, v164);
    v118 = v146;
    v80(v146, v67, v66);

    v119 = sub_2460918D4();
    v120 = sub_246091FA4();

    v121 = os_log_type_enabled(v119, v120);
    v149 = v3;
    if (v121)
    {
      v122 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v169 = v158;
      *v122 = 141558787;
      *(v122 + 4) = 1752392040;
      *(v122 + 12) = 2081;
      sub_246030C6C(&qword_27EE3A000, MEMORY[0x277CC9260]);
      LODWORD(v157) = v120;
      v123 = sub_2460923D4();
      v124 = v118;
      v125 = v123;
      v127 = v126;
      v128 = v162;
      v162(v124, v66);
      v129 = sub_245F8D3C0(v125, v127, &v169);

      *(v122 + 14) = v129;
      *(v122 + 22) = 2160;
      *(v122 + 24) = 1752392040;
      *(v122 + 32) = 2081;
      sub_245F8E7A4(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration + *(v161 + 32), v144, &qword_27EE3A498, &unk_246097EB8);
      v130 = sub_246091C54();
      v132 = sub_245F8D3C0(v130, v131, &v169);
      v133 = v128;

      *(v122 + 34) = v132;
      _os_log_impl(&dword_245F8A000, v119, v157, "Backend Session: initialized with images URL = %{private,mask.hash}s, snapshot URL = %{private,mask.hash}s", v122, 0x2Au);
      v134 = v158;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v134, -1, -1);
      v135 = v122;
      v67 = v165;
      MEMORY[0x24C1989D0](v135, -1, -1);

      v136 = v164;
      v137 = v116;
    }

    else
    {

      v139 = v118;
      v133 = v162;
      v162(v139, v66);
      v137 = v116;
      v136 = v117;
    }

    v160(v137, v136);
    v140 = type metadata accessor for MemoryLogger();
    (*(v140 + 88))(0xD000000000000041, 0x80000002460A1D30);
    sub_24603053C(v166, type metadata accessor for PhotogrammetrySession.Configuration);
    v133(v67, v66);
    v3 = v149;
    goto LABEL_19;
  }

  v85 = v164;
  v86 = v148;
  v153();
  v87 = v159;
  v88 = v159;
  v89 = sub_2460918D4();
  v90 = sub_246091FB4();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v169 = v92;
    *v91 = 136446210;
    v168 = v159;
    v93 = v159;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v94 = sub_246091C54();
    v96 = v66;
    v97 = sub_245F8D3C0(v94, v95, &v169);

    *(v91 + 4) = v97;
    v66 = v96;
    _os_log_impl(&dword_245F8A000, v89, v90, "Backend Session: initialization error = %{public}s", v91, 0xCu);
    sub_245F8E6F4(v92);
    v98 = v92;
    v67 = v165;
    MEMORY[0x24C1989D0](v98, -1, -1);
    v99 = v91;
    v69 = v166;
    MEMORY[0x24C1989D0](v99, -1, -1);

    v100 = v164;
    v101 = v86;
  }

  else
  {

    v101 = v86;
    v100 = v85;
  }

  v160(v101, v100);
  sub_245FFD204();
  swift_allocError();
  *v138 = 2;
  v104 = 1;
  *(v138 + 8) = 1;
  swift_willThrow();

  sub_24603053C(v69, type metadata accessor for PhotogrammetrySession.Configuration);
  v162(v67, v66);
LABEL_16:
  v105 = v3[2];

  v106 = v3[3];

  if (v104)
  {
    sub_24603053C(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  }

  v107 = *(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject);

  type metadata accessor for PhotogrammetrySession(0);
  v108 = *(*v3 + 48);
  v109 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
LABEL_19:
  v110 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t PhotogrammetrySession.__allocating_init(photogrammetrySamples:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  PhotogrammetrySession.init(photogrammetrySamples:configuration:)(a1, a2);
  return v7;
}

void *PhotogrammetrySession.init(photogrammetrySamples:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v98 = a1;
  v92 = *v2;
  v5 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v84 - v7;
  v8 = sub_246091704();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v8);
  v94 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v11 = *(*(v99 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v99);
  v90 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v84 - v17;
  v19 = sub_2460918F4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v89 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v84 - v24;
  v26 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v84 - v28;
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) = 0;
  v30 = sub_246091EB4();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  sub_246091E84();
  v31 = sub_246091E74();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v92;
  sub_24602D858(0, 0, v29, &unk_246099000, v32);

  v34 = sub_245FA31EC();
  v97 = v20;
  v35 = *(v20 + 16);
  v87 = v34;
  v88 = v20 + 16;
  v86 = v35;
  (v35)(v25);
  sub_24603046C(a2, v18, type metadata accessor for PhotogrammetrySession.Configuration);
  v92 = v25;
  v36 = sub_2460918D4();
  v37 = sub_246091FC4();
  v38 = os_log_type_enabled(v36, v37);
  v91 = v19;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v102 = v40;
    *v39 = 136446210;
    sub_24603046C(v18, v16, type metadata accessor for PhotogrammetrySession.Configuration);
    v41 = sub_246091C54();
    v42 = v3;
    v43 = a2;
    v45 = v44;
    sub_24603053C(v18, type metadata accessor for PhotogrammetrySession.Configuration);
    v46 = sub_245F8D3C0(v41, v45, &v102);
    a2 = v43;
    v3 = v42;

    *(v39 + 4) = v46;
    _os_log_impl(&dword_245F8A000, v36, v37, "Backend Session: Initializing with photogrammetry samples and configuration = %{public}s", v39, 0xCu);
    sub_245F8E6F4(v40);
    MEMORY[0x24C1989D0](v40, -1, -1);
    MEMORY[0x24C1989D0](v39, -1, -1);

    v47 = *(v97 + 8);
    v49 = v91;
    v48 = v92;
  }

  else
  {

    sub_24603053C(v18, type metadata accessor for PhotogrammetrySession.Configuration);
    v47 = *(v97 + 8);
    v48 = v92;
    v49 = v19;
  }

  v92 = v47;
  v47(v48, v49);
  v85 = *(type metadata accessor for MemoryLogger() + 88);
  v85(0xD00000000000004ALL, 0x80000002460A1D80);
  v50 = v93;
  sub_245F8E7A4(a2 + *(v99 + 32), v93, &qword_27EE3A498, &unk_246097EB8);
  v52 = v95;
  v51 = v96;
  v53 = (*(v95 + 48))(v50, 1, v96);
  v54 = v94;
  if (v53 == 1)
  {
    sub_245F8E744(v50, &qword_27EE3A498, &unk_246097EB8);
  }

  else
  {
    (*(v52 + 32))(v94, v50, v51);
    v72 = v100;
    sub_246090F3C();
    v100 = v72;
    if (v72)
    {

      sub_24603053C(a2, type metadata accessor for PhotogrammetrySession.Configuration);
      (*(v52 + 8))(v54, v51);
      v73 = 0;
      goto LABEL_17;
    }

    if ((sub_246090F38(v54) & 1) == 0)
    {
      sub_245FFD204();
      swift_allocError();
      *v77 = 0;
      *(v77 + 8) = 1;
      swift_willThrow();

      sub_24603053C(a2, type metadata accessor for PhotogrammetrySession.Configuration);
      (*(v52 + 8))(v54, v51);
      v73 = 0;
      goto LABEL_17;
    }

    (*(v52 + 8))(v54, v51);
  }

  v55 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  sub_24603046C(a2, v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  type metadata accessor for PGManager();
  v99 = a2;
  v103 = v98;
  swift_beginAccess();
  v56 = v90;
  sub_24603046C(v3 + v55, v90, type metadata accessor for PhotogrammetrySession.Configuration);

  v57 = sub_245F8E624(&qword_27EE3A4B0, &qword_246097ED0);
  sub_245F9218C(&qword_27EE3A8A8, &qword_27EE3A4B0, &qword_246097ED0);
  v58 = v100;
  v59 = sub_245FD826C(&v103, v56, v57);
  if (!v58)
  {
    *(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) = v59;
    v74 = *(*v59 + 472);

    v74(v75, &off_2858E0260);

    v85(0xD000000000000054, 0x80000002460A1DD0);

    sub_24603053C(v99, type metadata accessor for PhotogrammetrySession.Configuration);
    return v3;
  }

  v60 = v89;
  v61 = v91;
  v86(v89, v87, v91);
  v62 = v58;
  v63 = sub_2460918D4();
  v64 = sub_246091FB4();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v103 = v66;
    *v65 = 136446210;
    v101 = v58;
    v67 = v58;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v68 = sub_246091C54();
    v70 = sub_245F8D3C0(v68, v69, &v103);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_245F8A000, v63, v64, "Backend Session: initialization error = %{public}s", v65, 0xCu);
    sub_245F8E6F4(v66);
    MEMORY[0x24C1989D0](v66, -1, -1);
    MEMORY[0x24C1989D0](v65, -1, -1);

    v71 = v89;
  }

  else
  {

    v71 = v60;
  }

  v92(v71, v61);
  sub_245FFD204();
  swift_allocError();
  *v76 = 2;
  v73 = 1;
  *(v76 + 8) = 1;
  swift_willThrow();

  sub_24603053C(v99, type metadata accessor for PhotogrammetrySession.Configuration);
LABEL_17:
  v78 = v3[2];

  v79 = v3[3];

  if (v73)
  {
    sub_24603053C(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  }

  v80 = *(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject);

  type metadata accessor for PhotogrammetrySession(0);
  v81 = *(*v3 + 48);
  v82 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  return v3;
}

void *PhotogrammetrySession.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(type metadata accessor for MemoryLogger() + 88);
  v7(0xD00000000000001ELL, 0x80000002460A1E30);
  if (qword_27EE3CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_24600E77C();

  v8 = sub_246091EB4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_246091E84();
  v9 = sub_246091E74();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v2;
  sub_24602D858(0, 0, v6, &unk_246099018, v10);

  v7(0xD000000000000021, 0x80000002460A1E50);
  v12 = v1[2];

  v13 = v1[3];

  sub_24603053C(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  v14 = *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager);

  v15 = *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject);

  return v1;
}

uint64_t sub_24602D690()
{
  sub_246091E84();
  v0[2] = sub_246091E74();
  v2 = sub_246091E64();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_24602D724, v2, v1);
}

uint64_t sub_24602D724()
{
  if (qword_27EE3CD40 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE3CD48;
  v0[5] = qword_27EE3CD48;
  v2 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xA11D000000000000;
  v0[6] = *(*v1 + 168);
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_24602D7E8, v1, 0);
}

uint64_t sub_24602D7E8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))();

  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_246032474, v3, v4);
}

uint64_t sub_24602D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_245F8E7A4(a3, v27 - v11, &qword_27EE3A778, &qword_246098980);
  v13 = sub_246091EB4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_245F8E744(v12, &qword_27EE3A778, &qword_246098980);
  }

  else
  {
    sub_246091EA4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_246091E64();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_246091C74() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_245F8E744(a3, &qword_27EE3A778, &qword_246098980);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_245F8E744(a3, &qword_27EE3A778, &qword_246098980);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t PhotogrammetrySession.__deallocating_deinit()
{
  PhotogrammetrySession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24602DBB0(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v47 = sub_246091704();
  v43 = *(v47 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotogrammetrySession.Request(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = sub_2460918F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_245FA31EC();
  (*(v16 + 16))(v19, v20, v15);
  v21 = sub_2460918D4();
  v22 = sub_246091FC4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v2;
    v24 = v23;
    *v23 = 0;
    _os_log_impl(&dword_245F8A000, v21, v22, "Backend Session: process request(s).", v23, 2u);
    v25 = v24;
    v2 = v42;
    MEMORY[0x24C1989D0](v25, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  v26 = *(v44 + 16);
  if (!v26 || (*(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) & 1) != 0 || (*(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) & 1) != 0)
  {
    goto LABEL_28;
  }

  v42 = v2;
  v46 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v27 = v44 + v46;
  v28 = *(v41 + 72);
  v44 = v43 + 32;
  v29 = MEMORY[0x277D84F90];
  v43 += 8;
  v30 = v47;
  do
  {
    sub_24603046C(v27, v14, type metadata accessor for PhotogrammetrySession.Request);
    sub_24603046C(v14, v12, type metadata accessor for PhotogrammetrySession.Request);
    v31 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    if ((*(*(v31 - 8) + 48))(v12, 3, v31))
    {
      sub_24603053C(v12, type metadata accessor for PhotogrammetrySession.Request);
    }

    else
    {
      v34 = v45;
      (*v44)(v45, v12, v30);
      if ((sub_2460915E4() & 1) == 0)
      {
        (*v43)(v34, v30);
LABEL_8:
        sub_24603053C(v14, type metadata accessor for PhotogrammetrySession.Request);
        goto LABEL_9;
      }

      if (sub_246091654())
      {
        goto LABEL_22;
      }

      if (sub_2460915F4() == 2053403509 && v35 == 0xE400000000000000)
      {

        v34 = v45;
LABEL_22:
        (*v43)(v34, v30);
        goto LABEL_12;
      }

      LODWORD(v41) = sub_2460923E4();

      (*v43)(v45, v30);
      if ((v41 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    sub_24603046C(v14, v9, type metadata accessor for PhotogrammetrySession.Request);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_245FF7EC4(0, v29[2] + 1, 1, v29);
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v29 = sub_245FF7EC4(v32 > 1, v33 + 1, 1, v29);
    }

    sub_24603053C(v14, type metadata accessor for PhotogrammetrySession.Request);
    v29[2] = v33 + 1;
    sub_2460304D4(v9, v29 + v46 + v33 * v28, type metadata accessor for PhotogrammetrySession.Request);
    v30 = v47;
LABEL_9:
    v27 += v28;
    --v26;
  }

  while (v26);
  if (v29[2])
  {
    v36 = v42;
    swift_beginAccess();

    sub_24602FB94(v37);
    swift_endAccess();
    (*(**(v36 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) + 648))(v29);
  }

LABEL_28:
  sub_245FFD204();
  swift_allocError();
  *v39 = 3;
  *(v39 + 8) = 1;
  return swift_willThrow();
}

uint64_t sub_24602E20C()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245FA31EC();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_245F8A000, v8, v9, "Backend Session: cancel all requests.", v10, 2u);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 1;
  return (*(**(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) + 696))(v11);
}

uint64_t sub_24602E3BC()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_245FA31EC();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = sub_2460918D4();
  v13 = sub_246091FC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v11;
    v15 = v1;
    v16 = v7;
    v17 = v14;
    *v14 = 0;
    _os_log_impl(&dword_245F8A000, v12, v13, "Backend Session: close session.", v14, 2u);
    v18 = v17;
    v7 = v16;
    v1 = v15;
    v11 = v26;
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  v19 = v3[1];
  v20 = v19(v9, v2);
  if (*(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed))
  {
    v11(v7, v10, v2);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245F8A000, v21, v22, "Backend Session: session has closed.", v23, 2u);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    return v19(v7, v2);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) = 1;
    return (*(**(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) + 704))(v20);
  }
}

uint64_t sub_24602E650()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245FA31EC();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_245F8A000, v8, v9, "Backend Session: resume request.", v10, 2u);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return (*(**(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) + 720))(v11);
}

uint64_t sub_24602E8A0()
{
  v1 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject;
  if (*(v0 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject))
  {
    v2 = *(v0 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject);
  }

  else
  {
    v3 = v0;
    v4 = sub_245F8E624(&qword_27EE3A898, &unk_246098FC0);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_246091934();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_24602E92C()
{
  sub_246091E84();
  v0[2] = sub_246091E74();
  v2 = sub_246091E64();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_24602E9C0, v2, v1);
}

uint64_t sub_24602E9C0()
{
  if (qword_27EE3CD40 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE3CD48;
  v0[5] = qword_27EE3CD48;
  v2 = (*v1 + 160) & 0xFFFFFFFFFFFFLL | 0xC846000000000000;
  v0[6] = *(*v1 + 160);
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_24602EA84, v1, 0);
}

uint64_t sub_24602EA84()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))();

  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_24602EAF4, v3, v4);
}

uint64_t sub_24602EAF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24602EB54(uint64_t a1)
{
  v3 = type metadata accessor for PhotogrammetrySession.Request(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v1 + 136);
  v10 = *(v9(v6) + 16);

  for (i = 0; v10 != i; ++i)
  {
    result = v9(result);
    if (i >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v13 = i + 1;
    sub_24603046C(result + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, v8, type metadata accessor for PhotogrammetrySession.Request);

    v14 = _s6CoreOC21PhotogrammetrySessionC7RequestO2eeoiySbAE_AEtFZ_0(a1, v8);
    result = sub_24603053C(v8, type metadata accessor for PhotogrammetrySession.Request);
    if (v14)
    {
      swift_beginAccess();
      sub_24602ED24(v13 - 1, v8);
      sub_24603053C(v8, type metadata accessor for PhotogrammetrySession.Request);
      return swift_endAccess();
    }
  }

  return result;
}

size_t sub_24602ED24@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24602FCC0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2460304D4(v11, a2, type metadata accessor for PhotogrammetrySession.Request);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24602EE58(uint64_t a1)
{
  v3 = type metadata accessor for PhotogrammetrySession.Output(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Request(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24602E8A0();
  sub_246091924();

  sub_24603046C(a1, v6, type metadata accessor for PhotogrammetrySession.Output);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 8)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2460304D4(v6, v10, type metadata accessor for PhotogrammetrySession.Request);
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
      sub_2460304D4(v6, v10, type metadata accessor for PhotogrammetrySession.Request);
      sub_24603053C(&v6[v12], type metadata accessor for PhotogrammetrySession.Result);
LABEL_10:
      sub_24602EB54(v10);
      v15 = type metadata accessor for PhotogrammetrySession.Request;
      v16 = v10;
      return sub_24603053C(v16, v15);
    }

LABEL_8:
    v15 = type metadata accessor for PhotogrammetrySession.Output;
    v16 = v6;
    return sub_24603053C(v16, v15);
  }

  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload == 10)
    {
      swift_beginAccess();
      v13 = *(v1 + 16);
      *(v1 + 16) = MEMORY[0x277D84F90];

      *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 0;
      return result;
    }

    goto LABEL_8;
  }

  swift_beginAccess();
  v17 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x277D84F90];
}

uint64_t sub_24602F0C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_245F8E624(&qword_27EE3A558, &unk_2460983D0);
    v1 = sub_246092384();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_245F8E7A4(*(a1 + 56) + 32 * v11, &v23, &qword_27EE3A948, &qword_246099A98);
    sub_245F8E624(&qword_27EE3A948, &qword_246099A98);
    sub_245F8E624(&qword_27EE3A560, &qword_246099A90);
    swift_dynamicCast();
    v13 = *(v1 + 40);
    result = sub_2460924F4();
    v14 = -1 << *(v1 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v1 + 48) + 8 * v9) = v12;
    *(*(v1 + 56) + 16 * v9) = v22;
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

CoreOC::PhotogrammetrySession::Poses __swiftcall PhotogrammetrySession.Poses.init(posesBySample:intrinsicsBySample:lensDistortionDataBySample:)(Swift::OpaquePointer posesBySample, Swift::OpaquePointer intrinsicsBySample, Swift::OpaquePointer lensDistortionDataBySample)
{
  v7 = v3;
  v8 = MEMORY[0x277D84F90];
  sub_245FFC018(MEMORY[0x277D84F90]);
  v9 = sub_24603030C(v8);

  v7[1]._rawValue = intrinsicsBySample._rawValue;
  v7[2]._rawValue = v9;
  v7->_rawValue = posesBySample._rawValue;
  v10 = sub_24602F3D4(lensDistortionDataBySample._rawValue);

  v7[2]._rawValue = v10;
  result._lensDistortionDataBySample._rawValue = v13;
  result._intrinsicsBySample._rawValue = v12;
  result.posesBySample._rawValue = v11;
  return result;
}

uint64_t sub_24602F3D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_245F8E624(&qword_27EE3A940, &qword_246099A88);
    v2 = sub_246092384();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    v23 = *(*(a1 + 56) + 16 * v13);

    sub_245F8E624(&qword_27EE3A560, &qword_246099A90);
    sub_245F8E624(&qword_27EE3A948, &qword_246099A98);
    swift_dynamicCast();
    *v24 = *&v24[8];
    *&v24[16] = *&v24[24];
    v15 = *(v2 + 40);
    result = sub_2460924F4();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v14;
    v11 = (*(v2 + 56) + 32 * v10);
    *v11 = *v24;
    v11[1] = *&v24[16];
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t LensDistortionData.init(center:radialLookupTable:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

BOOL static CameraTrackingState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_24602F710(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_24602F764()
{
  type metadata accessor for MobileAssetsDownloader();
  v2 = type metadata accessor for MobileAssetProviderImpl();
  v3 = &off_2858DFAE8;
  *&v1 = sub_245F9B5FC();
  result = sub_24600D6A8(&v1);
  qword_27EE3F0A0 = result;
  return result;
}

uint64_t sub_24602F7C8()
{
  type metadata accessor for DetachedMobileAssetsDownloader();
  if (qword_27EE3CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  result = sub_24600E97C();
  qword_27EE3CD48 = result;
  return result;
}

uint64_t static PhotogrammetrySession.areAssetsAvailable.getter()
{
  if (qword_27EE3CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v0 = sub_24600D790();

  return v0 & 1;
}

uint64_t sub_24602F904()
{
  if (qword_27EE3CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 40) = qword_27EE3F0A0;

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_24602F9F4;

  return sub_24600D82C();
}

uint64_t sub_24602F9F4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24602FB30, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24602FB30()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_24602FB94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_245FF7EC4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for PhotogrammetrySession.Request(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24602FCD4()
{
  sub_246092534();
  sub_246092534();
  sub_246092534();
  return sub_246092534();
}

uint64_t _s6CoreOC21PhotogrammetrySessionC7RequestO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotogrammetrySession.Request(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245F8E624(&unk_27EE3A960, &unk_246099AC8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v45 - v16;
  v18 = &v45 + *(v15 + 56) - v16;
  sub_24603046C(a1, &v45 - v16, type metadata accessor for PhotogrammetrySession.Request);
  sub_24603046C(a2, v18, type metadata accessor for PhotogrammetrySession.Request);
  v19 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 3, v19);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(v18, 3, v19) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v20(v18, 3, v19) != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v21)
  {
    if (v20(v18, 3, v19) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v65 = v8;
  v66 = v5;
  v67 = v4;
  sub_24603046C(v17, v12, type metadata accessor for PhotogrammetrySession.Request);
  v22 = *(v19 + 48);
  v64 = v12[v22];
  v23 = *(v19 + 64);
  v24 = *&v12[v23];
  v60 = *&v12[v23 + 16];
  v61 = v24;
  v25 = *&v12[v23 + 32];
  v62 = *&v12[v23 + 48];
  v63 = v25;
  v26 = *&v12[v23 + 64];
  v56 = *&v12[v23 + 80];
  v57 = v26;
  v27 = *&v12[v23 + 96];
  v58 = *&v12[v23 + 112];
  v59 = v27;
  v28 = v12[v23 + 128];
  if (!v20(v18, 3, v19))
  {
    v30 = v64;
    v31 = v18[v22];
    v32 = *&v18[v23 + 16];
    v52 = *&v18[v23];
    v53 = v32;
    v33 = *&v18[v23 + 48];
    v54 = *&v18[v23 + 32];
    v55 = v33;
    v34 = *&v18[v23 + 80];
    v48 = *&v18[v23 + 64];
    v49 = v34;
    v35 = *&v18[v23 + 112];
    v50 = *&v18[v23 + 96];
    v51 = v35;
    v36 = v18[v23 + 128];
    v46 = v28;
    v47 = v36;
    v37 = v65;
    v38 = v66;
    v39 = v67;
    (*(v66 + 32))(v65, v18, v67);
    v40 = sub_2460916C4();
    v41 = *(v38 + 8);
    v41(v12, v39);
    if (v40)
    {
      if (v30 == v31)
      {
        v77[0] = v61;
        v77[1] = v60;
        v77[2] = v63;
        v77[3] = v62;
        v77[4] = v57;
        v77[5] = v56;
        v77[6] = v59;
        v77[7] = v58;
        v78 = v46;
        if (sub_245F97DBC(v77) == 1)
        {
          v41(v37, v67);
          v68 = v52;
          v69 = v53;
          v70 = v54;
          v71 = v55;
          v72 = v48;
          v73 = v49;
          v74 = v50;
          v75 = v51;
          v76 = v47;
          if (sub_245F97DBC(&v68) != 1)
          {
            goto LABEL_24;
          }

LABEL_11:
          sub_24603053C(v17, type metadata accessor for PhotogrammetrySession.Request);
          return 1;
        }

        v68 = v52;
        v69 = v53;
        v70 = v54;
        v71 = v55;
        v72 = v48;
        v73 = v49;
        v74 = v50;
        v75 = v51;
        v76 = v47;
        if (sub_245F97DBC(&v68) != 1 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v60, v53), vceqq_f32(v61, v52)), vandq_s8(vceqq_f32(v63, v54), vceqq_f32(v62, v55)))) & 0x80000000) != 0)
        {
          v44 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v56, v49), vceqq_f32(v57, v48)), vandq_s8(vceqq_f32(v59, v50), vceqq_f32(v58, v51))));
          v41(v37, v67);
          if ((v44 & 0x80000000) != 0)
          {
            goto LABEL_11;
          }

LABEL_24:
          sub_24603053C(v17, type metadata accessor for PhotogrammetrySession.Request);
          return 0;
        }
      }

      v42 = v37;
      v43 = v67;
    }

    else
    {
      v42 = v37;
      v43 = v39;
    }

    v41(v42, v43);
    goto LABEL_24;
  }

  (*(v66 + 8))(v12, v67);
LABEL_12:
  sub_245F8E744(v17, &unk_27EE3A960, &unk_246099AC8);
  return 0;
}

unint64_t sub_24603030C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A940, &qword_246099A88);
    v3 = sub_246092384();
    for (i = a1 + 32; ; i += 40)
    {
      sub_245F8E7A4(i, &v13, &qword_27EE3A958, &unk_246099AB8);
      v5 = v13;
      result = sub_245FFF3EC(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24603046C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2460304D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24603053C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s6CoreOC21PhotogrammetrySessionC13ConfigurationV25CustomDetailSpecificationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (qword_246099AD8[*(a1 + 8)] != qword_246099AD8[*(a2 + 8)] || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 28);
  if (*(a1 + 28))
  {
    return (*(a2 + 28) & 1) != 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    v4 = 1;
  }

  return (v4 & 1) == 0;
}

uint64_t sub_246030634(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s6CoreOC21PhotogrammetrySessionC13ConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_245F8E624(&qword_27EE3A950, &qword_246099AB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  if (a1[1] != a2[1])
  {
    goto LABEL_11;
  }

  if (a1[2] != a2[2])
  {
    goto LABEL_11;
  }

  v18 = v15;
  v19 = a1[16];
  v20 = *(a1 + 3);
  v21 = *(a1 + 8);
  v22 = a1[36];
  v42 = *(a1 + 1);
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = v22;
  v23 = a2[16];
  v24 = *(a2 + 3);
  v25 = *(a2 + 8);
  v26 = a2[36];
  v37 = *(a2 + 1);
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  if (!_s6CoreOC21PhotogrammetrySessionC13ConfigurationV25CustomDetailSpecificationV2eeoiySbAG_AGtFZ_0(&v42, &v37))
  {
    goto LABEL_11;
  }

  v35 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v27 = *(v35 + 32);
  v28 = *(v18 + 48);
  sub_245F8E7A4(&a1[v27], v17, &qword_27EE3A498, &unk_246097EB8);
  v36 = v28;
  sub_245F8E7A4(&a2[v27], &v17[v28], &qword_27EE3A498, &unk_246097EB8);
  v29 = *(v5 + 48);
  if (v29(v17, 1, v4) == 1)
  {
    if (v29(&v17[v36], 1, v4) == 1)
    {
      sub_245F8E744(v17, &qword_27EE3A498, &unk_246097EB8);
LABEL_14:
      v31 = a1[*(v35 + 36)] ^ a2[*(v35 + 36)] ^ 1;
      return v31 & 1;
    }

    goto LABEL_10;
  }

  sub_245F8E7A4(v17, v12, &qword_27EE3A498, &unk_246097EB8);
  v30 = v36;
  if (v29(&v17[v36], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_245F8E744(v17, &qword_27EE3A950, &qword_246099AB0);
    goto LABEL_11;
  }

  (*(v5 + 32))(v8, &v17[v30], v4);
  sub_246030C6C(&qword_27EE3A5E8, MEMORY[0x277CC9260]);
  v33 = sub_246091BB4();
  v34 = *(v5 + 8);
  v34(v8, v4);
  v34(v12, v4);
  sub_245F8E744(v17, &qword_27EE3A498, &unk_246097EB8);
  if (v33)
  {
    goto LABEL_14;
  }

LABEL_11:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_246030A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_246030AFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_246030B34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2460113E4;

  return sub_24602E92C();
}

uint64_t sub_246030BC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24600CD4C;

  return sub_24602E92C();
}

uint64_t sub_246030C6C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_246030CB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2460113E4;

  return sub_24602D690();
}

unint64_t sub_246030D48()
{
  result = qword_27EE3A8B0;
  if (!qword_27EE3A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8B0);
  }

  return result;
}

unint64_t sub_246030DE8()
{
  result = qword_27EE3A8C0;
  if (!qword_27EE3A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8C0);
  }

  return result;
}

unint64_t sub_246030E40()
{
  result = qword_27EE3A8C8;
  if (!qword_27EE3A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8C8);
  }

  return result;
}

unint64_t sub_246030E98()
{
  result = qword_27EE3A8D0;
  if (!qword_27EE3A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8D0);
  }

  return result;
}

unint64_t sub_246030EF0()
{
  result = qword_27EE3A8D8;
  if (!qword_27EE3A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8D8);
  }

  return result;
}

unint64_t sub_246030F48()
{
  result = qword_27EE3A8E0;
  if (!qword_27EE3A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8E0);
  }

  return result;
}

unint64_t sub_246030FA4()
{
  result = qword_27EE3A8E8;
  if (!qword_27EE3A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8E8);
  }

  return result;
}

unint64_t sub_246030FFC()
{
  result = qword_27EE3A8F0;
  if (!qword_27EE3A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8F0);
  }

  return result;
}

unint64_t sub_246031054()
{
  result = qword_27EE3A8F8;
  if (!qword_27EE3A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8F8);
  }

  return result;
}

uint64_t sub_2460310B0()
{
  result = type metadata accessor for PhotogrammetrySession.Configuration(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PhotogrammetrySession.Error(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2460313AC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2460313C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_24603140C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246031498(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_246031528()
{
  sub_246031580();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_246031580()
{
  if (!qword_27EE3A900)
  {
    sub_246091704();
    sub_245F9135C(&qword_27EE3A908, &qword_246099768);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EE3A900);
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Request.Detail(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Request.Detail(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_246031778(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageScaler.Config(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageScaler.Config(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t sub_2460317E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_246031830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_246031880()
{
  sub_246091704();
  if (v0 <= 0x3F)
  {
    type metadata accessor for simd_float4x4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_246031970()
{
  sub_246031A64();
  if (v0 <= 0x3F)
  {
    sub_246031ACC();
    if (v1 <= 0x3F)
    {
      sub_246031B3C(319, &qword_27EE3A920);
      if (v2 <= 0x3F)
      {
        sub_246031B3C(319, &qword_27EE3A928);
        if (v3 <= 0x3F)
        {
          sub_246031BA8();
          if (v4 <= 0x3F)
          {
            sub_246031C0C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_246031A64()
{
  if (!qword_27EE3A910)
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE3A910);
    }
  }
}

void sub_246031ACC()
{
  if (!qword_27EE3A918)
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    type metadata accessor for PhotogrammetrySession.Result(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE3A918);
    }
  }
}

void sub_246031B3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_246031BA8()
{
  if (!qword_27EE3A930)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE3A930);
    }
  }
}

uint64_t sub_246031C0C()
{
  result = qword_27EE3A938;
  if (!qword_27EE3A938)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27EE3A938);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PhotogrammetrySession.Output.ProgressInfo(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Output.ProgressInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 10))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 9);
  if (v3 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 7;
  if (v3 < 6)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Output.ProgressInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_246031D0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 32)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_246031DDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_246031E88()
{
  sub_246031F20();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_246031F20()
{
  if (!qword_27EE3A4C8)
  {
    sub_246091704();
    v0 = sub_2460920F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE3A4C8);
    }
  }
}

__n128 sub_246031FA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_246031FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 29))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_246031FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureMapOutputs(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureMapOutputs(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureFormat(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureFormat(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureFormat(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_24603211C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246032138(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraTrackingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraTrackingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2460322E0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2460322F4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_246032324()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24603235C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24600CD4C;

  return sub_2460106D8(a1, v5);
}

uint64_t sub_2460324A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  v12 = sub_24603282C();
  v13 = sub_245FA3174();
  v14 = *(v5 + 16);
  if ((v12 & 0x100000000) != 0)
  {
    v14(v9, v13, v4);

    v15 = sub_2460918D4();
    v16 = sub_246091FC4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_245F8D3C0(a1, a2, v30);
      _os_log_impl(&dword_245F8A000, v15, v16, "MemoryLogger: %{public}s", v17, 0xCu);
      sub_245F8E6F4(v18);
      MEMORY[0x24C1989D0](v18, -1, -1);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v14(v11, v13, v4);

    v19 = sub_2460918D4();
    v20 = sub_246091FC4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_245F8D3C0(a1, a2, v30);
      *(v21 + 12) = 2082;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D83A90];
      *(v23 + 16) = xmmword_246096460;
      v25 = MEMORY[0x277D83B08];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = v12;
      v26 = sub_246091C24();
      v28 = sub_245F8D3C0(v26, v27, v30);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_245F8A000, v19, v20, "MemoryLogger: %{public}s, memory footprint = %{public}s MB", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }

  return v12 | ((HIDWORD(v12) & 1) << 32);
}

unint64_t sub_24603282C()
{
  v30 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *task_info_out = 0u;
  v7 = 0u;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    v0 = 0;
  }

  else
  {
    v0 = task_info_outCnt >= 0x26;
  }

  v1 = !v0;
  v2 = COERCE_UNSIGNED_INT(vcvts_n_f32_u64(v15, 0x14uLL));
  if (v1)
  {
    v2 = 0;
  }

  LOBYTE(task_info_out[0]) = v1;
  v3 = *MEMORY[0x277D85DE8];
  return v2 | (v1 << 32);
}

uint64_t sub_246032A80(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 1;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_246032ABC(char a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v1 + 96))(v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = v1[2];
  result = [v9 isSmoothAutoFocusSupported];
  if (result)
  {
    v25[0] = 0;
    if ([v9 lockForConfiguration_])
    {
      v11 = v25[0];
      [v9 setSmoothAutoFocusEnabled_];
      [v9 unlockForConfiguration];
      result = 1;
      goto LABEL_10;
    }

    v12 = v25[0];
    v13 = sub_2460915D4();

    swift_willThrow();
    v14 = sub_245FA3174();
    (*(v4 + 16))(v8, v14, v3);
    v15 = v13;
    v16 = sub_2460918D4();
    v17 = sub_246091FB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = sub_246092484();
      v22 = sub_245F8D3C0(v20, v21, v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_245F8A000, v16, v17, "Camera Control: Camera failed to lock with error = %{public}s", v18, 0xCu);
      sub_245F8E6F4(v19);
      MEMORY[0x24C1989D0](v19, -1, -1);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v8, v3);
LABEL_9:
    result = 0;
  }

LABEL_10:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_246032D9C()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v0 + 96))(v4) & 1) == 0 || (v7 = v0[2], ![v7 isAutoFocusRangeRestrictionSupported]))
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v24[0] = 0;
  if (![v7 lockForConfiguration_])
  {
    v10 = v24[0];
    v11 = sub_2460915D4();

    swift_willThrow();
    v12 = sub_245FA3174();
    (*(v2 + 16))(v6, v12, v1);
    v13 = v11;
    v14 = sub_2460918D4();
    v15 = sub_246091FB4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = sub_246092484();
      v20 = sub_245F8D3C0(v18, v19, v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_245F8A000, v14, v15, "Camera Control: Camera failed to lock with error = %{public}s", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v6, v1);
    goto LABEL_9;
  }

  v8 = v24[0];
  v9 = 1;
  [v7 setAutoFocusRangeRestriction_];
  [v7 unlockForConfiguration];
LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_24603307C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_246033F04(&selRef_isFocusModeSupported_, 0, &selRef_setFocusMode_);
}

uint64_t sub_2460330E8(double a1, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2460331A0(1, a1, a2);
}

uint64_t sub_246033144(double a1, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2460331A0(2, a1, a2);
}

uint64_t sub_2460331A0(uint64_t a1, double a2, double a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v3 + 96))(v10) & 1) == 0)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v13 = v3[2];
  v29[0] = 0;
  if (![v13 lockForConfiguration_])
  {
    v16 = v29[0];
    v17 = sub_2460915D4();

    swift_willThrow();
    v18 = sub_245FA3174();
    (*(v8 + 16))(v12, v18, v7);
    v19 = v17;
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136446210;
      swift_getErrorValue();
      v24 = sub_246092484();
      v26 = sub_245F8D3C0(v24, v25, v29);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_245F8A000, v20, v21, "Camera Control: Camera failed to lock with error = %{public}s", v22, 0xCu);
      sub_245F8E6F4(v23);
      MEMORY[0x24C1989D0](v23, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v12, v7);
    goto LABEL_12;
  }

  v14 = v29[0];
  if ([v13 isFocusPointOfInterestSupported])
  {
    [v13 setFocusPointOfInterest_];
  }

  if ([v13 isFocusModeSupported_])
  {
    [v13 setFocusMode_];
  }

  [v13 unlockForConfiguration];
  result = 1;
LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2460334C0()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_246033F04(&selRef_isExposureModeSupported_, 0, &selRef_setExposureMode_);
}

uint64_t sub_24603352C(double a1, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_246033588(1, a1, a2);
}

uint64_t sub_246033588(uint64_t a1, double a2, double a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v3 + 96))(v10) & 1) == 0)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v13 = v3[2];
  v29[0] = 0;
  if (![v13 lockForConfiguration_])
  {
    v16 = v29[0];
    v17 = sub_2460915D4();

    swift_willThrow();
    v18 = sub_245FA3174();
    (*(v8 + 16))(v12, v18, v7);
    v19 = v17;
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136446210;
      swift_getErrorValue();
      v24 = sub_246092484();
      v26 = sub_245F8D3C0(v24, v25, v29);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_245F8A000, v20, v21, "Camera Control: Camera failed to lock with error = %{public}s", v22, 0xCu);
      sub_245F8E6F4(v23);
      MEMORY[0x24C1989D0](v23, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v12, v7);
    goto LABEL_12;
  }

  v14 = v29[0];
  if ([v13 isExposurePointOfInterestSupported])
  {
    [v13 setExposurePointOfInterest_];
  }

  if ([v13 isExposureModeSupported_])
  {
    [v13 setExposureMode_];
  }

  [v13 unlockForConfiguration];
  result = 1;
LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2460338A8(double a1, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_246033588(2, a1, a2);
}

uint64_t sub_246033904(double a1)
{
  v2 = v1;
  v50[3] = *MEMORY[0x277D85DE8];
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = v2[2];
  v12 = [v11 activeFormat];
  [v12 minExposureDuration];

  sub_2460920D4();
  v14 = v13;
  v15 = [v11 activeFormat];
  [v15 maxExposureDuration];

  sub_2460920D4();
  v17 = v16;
  v18 = sub_245FA3174();
  v19 = v5[2];
  v48 = v18;
  v20 = v4;
  v21 = v19;
  (v19)(v10);
  v22 = sub_2460918D4();
  v23 = sub_246091FC4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349312;
    *(v24 + 4) = v14;
    *(v24 + 12) = 2050;
    *(v24 + 14) = v17;
    _os_log_impl(&dword_245F8A000, v22, v23, "Camera Control: Camera min exposure duration = %{public}f, max exposure duration = %{public}f", v24, 0x16u);
    MEMORY[0x24C1989D0](v24, -1, -1);
  }

  v25 = v5[1];
  v26 = v25(v10, v20);
  v27 = (*(*v2 + 96))(v26);
  result = 0;
  if ((v27 & 1) != 0 && v14 <= a1 && v17 >= a1)
  {
    v29 = sub_2460920C4();
    v31 = v30;
    v33 = v32;
    if (sub_2460920B4())
    {
      v50[0] = 0;
      if ([v11 lockForConfiguration_])
      {
        v34 = v50[0];
        v50[0] = v29;
        v50[1] = v31;
        v50[2] = v33;
        [v11 setActiveMaxExposureDuration_];
        [v11 unlockForConfiguration];
        result = 1;
        goto LABEL_14;
      }

      v47 = v5 + 1;
      v35 = v50[0];
      v36 = sub_2460915D4();

      swift_willThrow();
      v37 = v49;
      v21(v49, v48, v20);
      v38 = v36;
      v39 = sub_2460918D4();
      v40 = sub_246091FB4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v50[0] = v42;
        *v41 = 136446210;
        swift_getErrorValue();
        v43 = sub_246092484();
        v45 = sub_245F8D3C0(v43, v44, v50);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_245F8A000, v39, v40, "Camera Control: Camera failed to lock with error = %{public}s", v41, 0xCu);
        sub_245F8E6F4(v42);
        MEMORY[0x24C1989D0](v42, -1, -1);
        MEMORY[0x24C1989D0](v41, -1, -1);
      }

      else
      {
      }

      v25(v37, v20);
    }

    result = 0;
  }

LABEL_14:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}