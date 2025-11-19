_OWORD *sub_258AC8BC0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_258AD5508(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_258A99AA0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_258A99268(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_258AD5508(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_258B03484();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_258A2D784(a1, v23);
  }

  else
  {
    sub_258AC8D10(v11, a2, a3, a1, v22);

    return sub_258B003E4();
  }
}

_OWORD *sub_258AC8D10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_258A2D784(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_258AC8D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v42 = a1;
  v45[27] = *MEMORY[0x277D85DE8];
  v41 = sub_258AFFE44();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v41);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v40 = [objc_allocWithZone(MEMORY[0x277CD71F0]) initWithDevice_];
  sub_258AC9620();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2F370;
  v12 = *MEMORY[0x277CD71C0];
  *(inited + 32) = *MEMORY[0x277CD71C0];
  v13 = MEMORY[0x277D83E88];
  *(inited + 40) = 1;
  v14 = *MEMORY[0x277CD71B8];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 80) = 2;
  v15 = *MEMORY[0x277CD71A0];
  *(inited + 104) = v13;
  *(inited + 112) = v15;
  v16 = MEMORY[0x277D839B0];
  *(inited + 120) = 1;
  v17 = *MEMORY[0x277CD7198];
  *(inited + 144) = v16;
  *(inited + 152) = v17;
  v18 = *MEMORY[0x277CD7190];
  type metadata accessor for CubeLayout(0);
  *(inited + 184) = v19;
  *(inited + 160) = v18;
  v20 = v12;
  v21 = v14;
  v22 = v15;
  v23 = v17;
  v24 = v18;
  sub_258AD61CC(inited);
  swift_setDeallocating();
  sub_258AC9678();
  swift_arrayDestroy();
  type metadata accessor for ChamomileRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_258B02AD4();
  v28 = [v26 URLForResource:v27 withExtension:0];

  if (!v28)
  {
    __break(1u);
  }

  sub_258AFFE24();

  v29 = v41;
  (*(v4 + 32))(v10, v8, v41);
  v30 = sub_258AFFE14();
  type metadata accessor for Option(0);
  sub_258AC96E4();
  v31 = sub_258B029E4();
  v45[0] = 0;
  v32 = v40;
  v33 = [v40 newTextureWithContentsOfURL:v30 options:v31 error:v45];

  if (v33)
  {
    v34 = *(v4 + 8);
    v35 = v45[0];
    v34(v10, v29);

    v36 = *MEMORY[0x277D85DE8];
    return v33;
  }

  else
  {
    v38 = v45[0];
    v39 = sub_258AFFDC4();

    swift_willThrow();
    (*(v4 + 8))(v10, v29);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_258B031B4();
    MEMORY[0x259C931B0](0xD000000000000032, 0x8000000258B39190);
    v44 = v39;
    sub_2589F3AFC();
    sub_258B03274();
    result = sub_258B03294();
    __break(1u);
  }

  return result;
}

uint64_t sub_258AC921C()
{
  v0 = sub_258B03324();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_258AC9268()
{
  v0 = sub_258B03324();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_258AC92B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v3 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling;
    v5 = v4 * *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling);
    [v2 bounds];
    [v2 setDrawableSize_];
  }

  if (!*(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode))
  {

    sub_258AC3580();
  }
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

unint64_t sub_258AC938C()
{
  result = qword_27F971180;
  if (!qword_27F971180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971180);
  }

  return result;
}

unint64_t sub_258AC93E0()
{
  result = qword_27F971188;
  if (!qword_27F971188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971188);
  }

  return result;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  v5 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0);
  _simd_slerp_internal(a1, vbslq_s8(v5, vnegq_f32(a2), a2), *v5.i32);
}

void sub_258AC9620()
{
  if (!qword_27F9711A0)
  {
    sub_258AC9678();
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9711A0);
    }
  }
}

void sub_258AC9678()
{
  if (!qword_27F9711A8)
  {
    type metadata accessor for Option(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9711A8);
    }
  }
}

unint64_t sub_258AC96E4()
{
  result = qword_27F9711B0;
  if (!qword_27F9711B0)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9711B0);
  }

  return result;
}

uint64_t MTLRegionMake2D@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

void sub_258AC9750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258AC97A0()
{
  result = qword_27F9711B8;
  if (!qword_27F9711B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F9711B8);
  }

  return result;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v4 = vsubq_f32(a1, a2);
  v5 = vmulq_f32(v4, v4);
  v6 = vaddq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))));
  v9 = v8 + v8;
  if ((v8 + v8) != 0.0)
  {
    sinf(v9);
  }

  if ((v9 * 0.9) != 0.0)
  {
    sinf(v9 * 0.9);
  }

  v10 = v9 * 0.1;
  if (v10 != 0.0)
  {
    sinf(v10);
  }
}

uint64_t sub_258AC9984@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v3 = sub_258AFFD94();
    v59 = v4;
    v60 = v3;
    v58 = sub_258AFFD94();
    v6 = v5;
    sub_258ACA040();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_258B2F370;
    v8 = sub_258AFFD94();
    v10 = v9;
    v11 = sub_258AFFD94();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    *(v7 + 48) = v11;
    *(v7 + 56) = v12;
    v13 = sub_258AFFD94();
    v15 = v14;
    v16 = sub_258AFFD94();
    *(v7 + 64) = v13;
    *(v7 + 72) = v15;
    *(v7 + 80) = v16;
    *(v7 + 88) = v17;
    v18 = sub_258AFFD94();
    v20 = v19;
    v21 = sub_258AFFD94();
    *(v7 + 96) = v18;
    *(v7 + 104) = v20;
    *(v7 + 112) = v21;
    *(v7 + 120) = v22;
    v23 = sub_258AFFD94();
    v25 = v24;
    v26 = sub_258AFFD94();
    *(v7 + 128) = v23;
    *(v7 + 136) = v25;
    *(v7 + 144) = v26;
    *(v7 + 152) = v27;
  }

  else
  {
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v28 = sub_258AFFD94();
    v59 = v29;
    v60 = v28;
    v58 = sub_258AFFD94();
    v6 = v30;
    sub_258ACA040();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_258B34350;
    v31 = sub_258AFFD94();
    v33 = v32;
    v34 = sub_258AFFD94();
    *(v7 + 32) = v31;
    *(v7 + 40) = v33;
    *(v7 + 48) = v34;
    *(v7 + 56) = v35;
    v36 = sub_258AFFD94();
    v38 = v37;
    v39 = sub_258AFFD94();
    *(v7 + 64) = v36;
    *(v7 + 72) = v38;
    *(v7 + 80) = v39;
    *(v7 + 88) = v40;
    v41 = sub_258AFFD94();
    v43 = v42;
    v44 = sub_258AFFD94();
    *(v7 + 96) = v41;
    *(v7 + 104) = v43;
    *(v7 + 112) = v44;
    *(v7 + 120) = v45;
    v46 = sub_258AFFD94();
    v48 = v47;
    v49 = sub_258AFFD94();
    *(v7 + 128) = v46;
    *(v7 + 136) = v48;
    *(v7 + 144) = v49;
    *(v7 + 152) = v50;
    v51 = sub_258AFFD94();
    v53 = v52;
    v54 = sub_258AFFD94();
    *(v7 + 160) = v51;
    *(v7 + 168) = v53;
    *(v7 + 176) = v54;
    *(v7 + 184) = v55;
  }

  result = sub_258AFFD94();
  *a1 = v60;
  a1[1] = v59;
  a1[2] = v58;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = result;
  a1[6] = v57;
  return result;
}

void sub_258ACA040()
{
  if (!qword_27F9711C0)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9711C0);
    }
  }
}

uint64_t sub_258ACA0A0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_258B03514();
  sub_258B02B74();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_258ACA108()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_258B02B74();

  return sub_258B02B74();
}

uint64_t sub_258ACA158()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_258B03514();
  sub_258B02B74();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_258ACA1BC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_258B03454(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_258B03454();
    }
  }

  return result;
}

unint64_t sub_258ACA264()
{
  result = qword_27F9711C8;
  if (!qword_27F9711C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9711C8);
  }

  return result;
}

void sub_258ACA300()
{
  sub_2589C0D10();
  if (v0 <= 0x3F)
  {
    sub_258ACA460();
    if (v1 <= 0x3F)
    {
      sub_258ACEFBC(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_258ACA4AC(319, &qword_27F9711E0, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_258ACBBDC(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_258ACA460()
{
  result = qword_27F970870;
  if (!qword_27F970870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F970870);
  }

  return result;
}

void sub_258ACA4AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258ACEFBC(255, a3, a4, MEMORY[0x277D83D88]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_258ACA544()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258ACBB54(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0 + *(type metadata accessor for NotificationsNextButtonView(0) + 40);
  sub_258AC1B5C(v5);
  LODWORD(v10) = _UISolariumEnabled();
  sub_258ACE1A4(v5, type metadata accessor for NotificationsSetupPhaseSpecs);
  if (v10)
  {
    v11 = 0x4024000000000000;
  }

  else
  {
    v11 = 0x4014000000000000;
  }

  *v9 = sub_258B01194();
  *(v9 + 1) = v11;
  v9[16] = 0;
  sub_258ACD61C();
  sub_258ACA77C(v1, &v9[*(v12 + 44)]);
  v13 = *(v1 + 56);
  v17 = *(v1 + 48);
  v18 = v13;
  sub_258ACEFBC(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v16 = v1;
  sub_258ACF188(&qword_27F971228, sub_258ACBB54);
  sub_258B01E64();

  return sub_258ACE1A4(v9, sub_258ACBB54);
}

uint64_t sub_258ACA77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  sub_258ACBBDC(0, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
  v84 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v67 - v5;
  v79 = type metadata accessor for SkipButton(0);
  v7 = *(*(v79 - 1) + 64);
  v8 = MEMORY[0x28223BE20](v79);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - v10;
  sub_258ACD6F4(0, &qword_27F971230, MEMORY[0x277CE0330]);
  v82 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v83 = &v67 - v14;
  ButtonView = type metadata accessor for NotificationsNextButtonView(0);
  v16 = *(ButtonView - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](ButtonView - 8);
  v81 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  v86 = type metadata accessor for CompleteNotificationsSetupButton(0);
  v21 = *(*(v86 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v86);
  v78 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v67 - v24;
  v26 = *(a1 + 24);
  v27 = [v26 hasEverEnabledAStateOfMindReminderNotification];
  sub_258ACD810(a1, v20, type metadata accessor for NotificationsNextButtonView);
  v28 = *(v16 + 80);
  v29 = (v28 + 16) & ~v28;
  v30 = v29 + v17;
  if (v27)
  {
    v80 = swift_allocObject();
    sub_258ACDE5C(v20, v80 + v29, type metadata accessor for NotificationsNextButtonView);
    v31 = *a1;
    v32 = *(a1 + 72);
    v90 = *(a1 + 64);
    v91 = v32;
    sub_258ACA4AC(0, &qword_27F9711E0, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE10B8]);
    v79 = v26;
    sub_258B02144();
    v78 = v87;
    v76 = v88;
    LODWORD(v75) = v89;
    v33 = *(a1 + 56);
    v90 = *(a1 + 48);
    v91 = v33;
    sub_258ACEFBC(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02144();
    v34 = v87;
    v35 = v88;
    v36 = v89;
    v37 = v81;
    sub_258ACD810(a1, v81, type metadata accessor for NotificationsNextButtonView);
    v38 = swift_allocObject();
    sub_258ACDE5C(v37, v38 + ((v28 + 16) & ~v28), type metadata accessor for NotificationsNextButtonView);
    v39 = v79;
    v40 = v80;
    *v25 = sub_258ACF42C;
    *(v25 + 1) = v40;
    *(v25 + 2) = v39;
    *(v25 + 3) = v31;
    v25[32] = 1;
    v41 = v76;
    *(v25 + 5) = v78;
    *(v25 + 6) = v41;
    v25[56] = v75;
    *(v25 + 8) = v34;
    *(v25 + 9) = v35;
    v25[80] = v36;
    *(v25 + 11) = sub_258ACDB98;
    *(v25 + 12) = v38;
    v42 = *(v86 + 44);
    *&v25[v42] = swift_getKeyPath();
    sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_258ACD810(v25, v83, type metadata accessor for CompleteNotificationsSetupButton);
    swift_storeEnumTagMultiPayload();
    sub_258ACF188(&qword_27F971210, type metadata accessor for CompleteNotificationsSetupButton);
    sub_258ACBD80();
    sub_258B012A4();
  }

  else
  {
    v77 = v30;
    v73 = swift_allocObject();
    v75 = type metadata accessor for NotificationsNextButtonView;
    sub_258ACDE5C(v20, v73 + v29, type metadata accessor for NotificationsNextButtonView);
    v43 = *a1;
    v44 = *(a1 + 72);
    v90 = *(a1 + 64);
    v91 = v44;
    sub_258ACA4AC(0, &qword_27F9711E0, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE10B8]);
    v74 = v6;
    v76 = v26;
    sub_258B02144();
    v72 = v87;
    v71 = v88;
    v70 = v89;
    v45 = *(a1 + 56);
    v90 = *(a1 + 48);
    v91 = v45;
    sub_258ACEFBC(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02144();
    v69 = v87;
    v68 = v88;
    v46 = v11;
    v47 = v89;
    v48 = v81;
    sub_258ACD810(a1, v81, type metadata accessor for NotificationsNextButtonView);
    v49 = swift_allocObject();
    sub_258ACDE5C(v48, v49 + v29, v75);
    v50 = v73;
    *v25 = sub_258ACF42C;
    *(v25 + 1) = v50;
    *(v25 + 2) = v76;
    *(v25 + 3) = v43;
    v25[32] = 0;
    v51 = v71;
    *(v25 + 5) = v72;
    *(v25 + 6) = v51;
    v25[56] = v70;
    v52 = v68;
    *(v25 + 8) = v69;
    *(v25 + 9) = v52;
    v25[80] = v47;
    *(v25 + 11) = sub_258ACF430;
    *(v25 + 12) = v49;
    v53 = *(v86 + 44);
    *&v25[v53] = swift_getKeyPath();
    sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
    v73 = v54;
    swift_storeEnumTagMultiPayload();
    sub_258ACD810(a1, v20, type metadata accessor for NotificationsNextButtonView);
    v55 = swift_allocObject();
    v56 = v20;
    v57 = v75;
    sub_258ACDE5C(v56, v55 + v29, v75);
    sub_258ACD810(a1, v48, type metadata accessor for NotificationsNextButtonView);
    v58 = swift_allocObject();
    sub_258ACDE5C(v48, v58 + v29, v57);
    *v46 = sub_258ACF42C;
    v46[1] = v55;
    v59 = v76;
    v46[2] = v76;
    v46[3] = sub_258ACF430;
    v46[4] = v58;
    v60 = v79[7];
    *(v46 + v60) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v61 = v78;
    sub_258ACD810(v25, v78, type metadata accessor for CompleteNotificationsSetupButton);
    v62 = v80;
    sub_258ACD810(v46, v80, type metadata accessor for SkipButton);
    v63 = v74;
    sub_258ACD810(v61, v74, type metadata accessor for CompleteNotificationsSetupButton);
    sub_258ACBC40();
    sub_258ACD810(v62, v63 + *(v64 + 48), type metadata accessor for SkipButton);
    v65 = v59;
    sub_258ACE1A4(v62, type metadata accessor for SkipButton);
    sub_258ACE1A4(v61, type metadata accessor for CompleteNotificationsSetupButton);
    sub_258ACD878(v63, v83);
    swift_storeEnumTagMultiPayload();
    sub_258ACF188(&qword_27F971210, type metadata accessor for CompleteNotificationsSetupButton);
    sub_258ACBD80();
    sub_258B012A4();
    sub_258ACD90C(v63);
    sub_258ACE1A4(v46, type metadata accessor for SkipButton);
  }

  return sub_258ACE1A4(v25, type metadata accessor for CompleteNotificationsSetupButton);
}

uint64_t sub_258ACB188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 72);
  v16 = *(a1 + 64);
  v17 = v9;
  sub_258ACA4AC(0, &qword_27F9711E0, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v15 != 2)
  {
    return sub_258ACB37C(v15 & 1, a2);
  }

  sub_258B00364();
  v11 = sub_258B00374();
  v12 = sub_258B02E94();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2589A1000, v11, v12, "Notifications Disabled alert has been requested without specifying the associated notification bundle.", v13, 2u);
    MEMORY[0x259C945C0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  result = sub_258B03294();
  __break(1u);
  return result;
}

uint64_t sub_258ACB37C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v64 = a2;
  ButtonView = type metadata accessor for NotificationsNextButtonView(0);
  v58 = *(ButtonView - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](ButtonView - 8);
  v60 = v5;
  v61 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B01F64();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v63 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = v51 - v10;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v11 = sub_258AFFD94();
  v13 = v12;
  v56 = sub_258AFFD94();
  v57 = v14;
  if (a1)
  {
    v15 = sub_258AFFD94();
    v17 = v16;
    v18 = sub_258AFFD94();
    v20 = v19;
    v65 = v15;
    v66 = v17;
    sub_2589BFF58();
    v21 = sub_258B01B44();
    v54 = v22;
    v55 = v21;
    v52 = v23;
    v53 = v24;
    v65 = v18;
    v66 = v20;
  }

  else
  {
    v40 = sub_258AFFD94();
    v42 = v41;
    v43 = sub_258AFFD94();
    v45 = v44;
    v65 = v40;
    v66 = v42;
    sub_2589BFF58();
    v46 = sub_258B01B44();
    v54 = v47;
    v55 = v46;
    v52 = v48;
    v53 = v49;
    v65 = v43;
    v66 = v45;
  }

  v51[3] = sub_258B01B44();
  v51[2] = v25;
  v51[1] = v26;
  v65 = v11;
  v66 = v13;
  v27 = sub_258B01B44();
  v29 = v28;
  v31 = v30;
  sub_258B01F54();
  sub_2589BFFAC(v27, v29, v31 & 1);

  v65 = v56;
  v66 = v57;
  v32 = sub_258B01B44();
  v34 = v33;
  v36 = v35;
  v37 = v61;
  sub_258ACD810(v59, v61, type metadata accessor for NotificationsNextButtonView);
  v38 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v39 = swift_allocObject();
  sub_258ACDE5C(v37, v39 + v38, type metadata accessor for NotificationsNextButtonView);
  sub_258B01F44();
  sub_2589BFFAC(v32, v34, v36 & 1);

  return sub_258B01F34();
}

void sub_258ACB9D8()
{
  v0 = sub_258AFFE44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    v7 = HKMHMindfulnessSettingsURL();
    if (v7)
    {
      v8 = v7;
      sub_258AFFE24();

      v9 = sub_258AFFE14();
      (*(v1 + 8))(v4, v0);
    }

    else
    {
      v9 = 0;
    }

    sub_258AD6068(MEMORY[0x277D84F90]);
    v10 = sub_258B029E4();

    [v6 openSensitiveURL:v9 withOptions:v10];
  }
}

void sub_258ACBBDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258ACBC40()
{
  if (!qword_27F971200)
  {
    type metadata accessor for CompleteNotificationsSetupButton(255);
    type metadata accessor for SkipButton(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971200);
    }
  }
}

unint64_t sub_258ACBCD0()
{
  result = qword_27F971208;
  if (!qword_27F971208)
  {
    sub_258ACBB9C(255);
    sub_258ACF188(&qword_27F971210, type metadata accessor for CompleteNotificationsSetupButton);
    sub_258ACBD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971208);
  }

  return result;
}

unint64_t sub_258ACBD80()
{
  result = qword_27F971218;
  if (!qword_27F971218)
  {
    sub_258ACBBDC(255, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971218);
  }

  return result;
}

void sub_258ACBE08(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v36 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CompleteNotificationsSetupButton(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v11 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  sub_258ACEF50(0, &qword_27F971260, sub_2589DE338);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v35[0] = v35 - v16;
  v17 = *(v2 + 24);
  v44[3] = v3;
  v44[4] = &off_2869D92E8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v35[1] = *(v7 + 52);
  sub_258AC1B5C(boxed_opaque_existential_1);
  sub_258ACD810(v2, v13, type metadata accessor for CompleteNotificationsSetupButton);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_258ACDE5C(v13, v20 + v19, type metadata accessor for CompleteNotificationsSetupButton);
  sub_258ACD810(v2, v11, type metadata accessor for CompleteNotificationsSetupButton);
  v21 = swift_allocObject();
  sub_258ACDE5C(v11, v21 + v19, type metadata accessor for CompleteNotificationsSetupButton);
  v38 = v17;
  v39 = 0;
  sub_258ACEFBC(0, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  sub_258B02354();
  v45 = v40;
  v46 = v41;
  v47 = v42;
  v43[0] = sub_258ACDEC4;
  v43[1] = v20;
  v48 = sub_258ACE134;
  v49 = v21;
  *&v40 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D59D8);
  sub_258ACEFBC(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D59F8);
  sub_2589DE338();
  sub_258ACF188(&qword_27F96D2C0, sub_2589DE338);
  v22 = v35[0];
  sub_258B01DD4();

  sub_258ACE1A4(v43, sub_2589DE338);
  LOBYTE(v11) = sub_258B01884();
  v23 = v36;
  sub_258AC1B5C(v36);
  _UISolariumEnabled();
  sub_258ACE1A4(v23, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B00654();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v37;
  sub_258ACE204(v22, v37);
  sub_258ACE284();
  v34 = v32 + *(v33 + 36);
  *v34 = v11;
  *(v34 + 8) = v25;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v31;
  *(v34 + 40) = 0;
}

uint64_t sub_258ACC2C8(uint64_t a1)
{
  v2 = type metadata accessor for CompleteNotificationsSetupButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258ACBBDC(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31[-v8];
  v10 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v11 = [v10 notificationSettings];
  v12 = [v11 authorizationStatus];

  if (v12 == 2)
  {
    if (*(a1 + 32))
    {
      if ([*(a1 + 16) hasAnyStateOfMindReminderEnabled])
      {
        v13 = *(a1 + 96);
        (*(a1 + 88))(9, 4);
      }
    }

    else
    {
      v18 = sub_258B02D44();
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      sub_258ACD810(a1, &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CompleteNotificationsSetupButton);
      sub_258B02D24();
      v19 = sub_258B02D14();
      v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D85700];
      *(v21 + 16) = v19;
      *(v21 + 24) = v22;
      sub_258ACDE5C(v5, v21 + v20, type metadata accessor for CompleteNotificationsSetupButton);
      sub_258A8F090(0, 0, v9, &unk_258B345D0, v21);
    }

    v23 = [objc_opt_self() sharedInstance];
    v24 = [v23 getActivePairedDevice];

    if (!v24 || (v24, sub_258A56DE0()))
    {
      v25 = *(a1 + 8);
      return (*a1)();
    }

    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v33 = *(a1 + 40);
    v34 = v27;
    v35 = v28;
    v32 = 1;
    sub_258ACA4AC(0, &qword_27F971258, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE11F8]);
    sub_258B02314();
    v29 = *(a1 + 72);
    v30 = *(a1 + 80);
    v33 = *(a1 + 64);
    v34 = v29;
    v35 = v30;
    v32 = 1;
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v33 = *(a1 + 40);
    v34 = v14;
    v35 = v15;
    v32 = 0;
    sub_258ACA4AC(0, &qword_27F971258, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE11F8]);
    sub_258B02314();
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v33 = *(a1 + 64);
    v34 = v16;
    v35 = v17;
    v32 = 1;
  }

  sub_258ACEFBC(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

uint64_t sub_258ACC6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_258B02D24();
  *(v4 + 24) = sub_258B02D14();
  v6 = sub_258B02CE4();

  return MEMORY[0x2822009F8](sub_258ACC784, v6, v5);
}

uint64_t sub_258ACC784()
{
  v2 = v0[2];
  v1 = v0[3];

  [*(v2 + 16) setReminders_];
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  v3(9, 4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_258ACC80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    if (qword_27F96C240 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27F96C240 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_258AFFD94();
  sub_2589BFF58();
  result = sub_258B01B44();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_258ACC948(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SkipButton(0);
  v7 = *(v6 - 8);
  v42 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_258ACE3F0(0);
  v10 = v9;
  v11 = *(v9 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ACE580();
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v38 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  sub_258ACD810(v2, &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SkipButton);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_258ACDE5C(&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SkipButton);
  sub_258ACE4B8(0);
  sub_258ACE544();
  sub_258B02174();
  sub_258B024C4();
  v45 = v2;
  sub_258ACE6E4(0, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
  v22 = v21;
  sub_258ACE4E0(0, &qword_27F9712B8, sub_258ACE8BC);
  v24 = v23;
  v25 = sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
  v26 = sub_258ACE9C0();
  v36 = sub_258ACECB8();
  sub_258B01F04();
  (*(v11 + 8))(v14, v10);
  v46 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5A08);
  sub_258ACEFBC(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5A28);
  v46 = v10;
  v47 = MEMORY[0x277CE1350];
  v48 = v22;
  v49 = v24;
  v50 = v25;
  v51 = MEMORY[0x277CE1340];
  v52 = v26;
  v53 = v36;
  swift_getOpaqueTypeConformance2();
  v27 = v43;
  v28 = v40;
  v29 = v38;
  sub_258B01DD4();

  (*(v41 + 8))(v29, v28);
  sub_258B02034();
  v30 = v39 + *(v42 + 36);
  v31 = v44;
  sub_258AC1B5C(v44);
  sub_258ACE1A4(v31, type metadata accessor for NotificationsSetupPhaseSpecs);
  v32 = sub_258B02024();

  KeyPath = swift_getKeyPath();
  sub_258ACEEA0();
  v35 = (v27 + *(v34 + 36));
  *v35 = KeyPath;
  v35[1] = v32;
}

__n128 sub_258ACCEC8@<Q0>(uint64_t a1@<X8>)
{
  v28 = a1;
  sub_2589C5144();
  v2 = v1;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  *&v29 = sub_258AFFD94();
  *(&v29 + 1) = v6;
  sub_2589BFF58();
  v7 = sub_258B01B44();
  v9 = v8;
  v11 = v10;
  v12 = sub_258B01AD4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2589BFFAC(v7, v9, v11 & 1);

  v19 = *(v2 + 36);
  v20 = *MEMORY[0x277CE13D8];
  v21 = sub_258B02554();
  (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
  *v5 = v12;
  *(v5 + 1) = v14;
  v5[16] = v16 & 1;
  *(v5 + 3) = v18;
  sub_258B024F4();
  sub_258B00C94();
  v22 = v28;
  sub_258ACDE5C(v5, v28, sub_2589C5144);
  sub_258ACE4B8(0);
  v24 = v22 + *(v23 + 36);
  v25 = v34;
  *(v24 + 64) = v33;
  *(v24 + 80) = v25;
  *(v24 + 96) = v35;
  v26 = v30;
  *v24 = v29;
  *(v24 + 16) = v26;
  result = v32;
  *(v24 + 32) = v31;
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_258ACD128@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_258B00BB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00BA4();
  sub_258ACE3F0(0);
  sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
  sub_258ACF188(&qword_27F9712B0, MEMORY[0x277CDDA98]);
  sub_258B01BD4();
  (*(v3 + 8))(v6, v2);
  sub_258ACE77C(0);
  v8 = (a1 + *(v7 + 36));
  v9 = MEMORY[0x277CE0860];
  sub_258ACBBDC(0, &qword_27F96F028, MEMORY[0x277CDDBB8], MEMORY[0x277CE0860]);
  v11 = v8 + *(v10 + 28);
  sub_258B00CB4();
  *v8 = swift_getKeyPath();
  v12 = MEMORY[0x277CDF450];
  sub_258ACE6E4(0, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
  v14 = (a1 + *(v13 + 36));
  sub_258ACBBDC(0, &qword_27F96F030, v12, v9);
  v16 = *(v15 + 28);
  v17 = *MEMORY[0x277CDF420];
  v18 = sub_258B006C4();
  (*(*(v18 - 8) + 104))(v14 + v16, v17, v18);
  result = swift_getKeyPath();
  *v14 = result;
  return result;
}

double sub_258ACD3BC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B00C14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00C04();
  sub_258ACE3F0(0);
  sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
  sub_258ACF188(&qword_27F96D410, MEMORY[0x277CDDB18]);
  sub_258B01BD4();
  (*(v9 + 8))(v12, v8);
  v13 = a1 + *(type metadata accessor for SkipButton(0) + 28);
  sub_258AC1B5C(v7);
  sub_258ACE1A4(v7, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  sub_258ACE4E0(0, &qword_27F9712B8, sub_258ACE8BC);
  v15 = (a2 + *(v14 + 36));
  v16 = v18[1];
  *v15 = v18[0];
  v15[1] = v16;
  result = *&v19;
  v15[2] = v19;
  return result;
}

void sub_258ACD61C()
{
  if (!qword_27F971220)
  {
    sub_258ACBB9C(255);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971220);
    }
  }
}

uint64_t sub_258ACD690()
{
  v1 = *(type metadata accessor for NotificationsNextButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 16);
  return (*(v2 + 8))();
}

void sub_258ACD6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CompleteNotificationsSetupButton(255);
    sub_258ACBBDC(255, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258ACD794(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NotificationsNextButtonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + 40);
  return (*(v6 + 32))(a1, a2);
}

uint64_t sub_258ACD810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ACD878(uint64_t a1, uint64_t a2)
{
  sub_258ACBBDC(0, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ACD90C(uint64_t a1)
{
  sub_258ACBBDC(0, &qword_27F9711F8, sub_258ACBC40, MEMORY[0x277CE14B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_23()
{
  v1 = (type metadata accessor for NotificationsNextButtonView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 16);

  v5 = *(v3 + 40);

  v6 = *(v3 + 56);

  v7 = *(v3 + 72);

  v8 = (v3 + v1[12]);
  sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *v8;
  }

  return swift_deallocObject();
}

void sub_258ACDBC4()
{
  sub_2589C0D10();
  if (v0 <= 0x3F)
  {
    sub_258ACA460();
    if (v1 <= 0x3F)
    {
      sub_258ACBBDC(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258ACDCBC()
{
  sub_2589C0D10();
  if (v0 <= 0x3F)
  {
    sub_258ACA460();
    if (v1 <= 0x3F)
    {
      sub_258ACA4AC(319, &qword_27F971258, &qword_27F96DD28, &type metadata for NotificationAppBundle, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_258ACEFBC(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_258ACBBDC(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258ACDE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ACDEC4()
{
  v1 = *(type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258ACC2C8(v2);
}

uint64_t objectdestroy_44Tm()
{
  v1 = (type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 40);

  v6 = *(v3 + 48);

  v7 = *(v3 + 64);

  v8 = *(v3 + 72);

  v9 = *(v3 + 96);

  v10 = (v3 + v1[13]);
  sub_258ACBBDC(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B01504();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v10, 1, v11))
    {
      (*(v12 + 8))(v10, v11);
    }

    v13 = *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
    v14 = sub_258B00AA4();
    (*(*(v14 - 8) + 8))(&v10[v13], v14);
  }

  else
  {
    v15 = *v10;
  }

  return swift_deallocObject();
}

uint64_t sub_258ACE134@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258ACC80C(v4, a1);
}

uint64_t sub_258ACE1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258ACE204(uint64_t a1, uint64_t a2)
{
  sub_258ACEF50(0, &qword_27F971260, sub_2589DE338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258ACE284()
{
  if (!qword_27F971268)
  {
    sub_258ACEF50(255, &qword_27F971260, sub_2589DE338);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971268);
    }
  }
}

uint64_t sub_258ACE300(uint64_t a1)
{
  v4 = *(type metadata accessor for CompleteNotificationsSetupButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2589EEE18;

  return sub_258ACC6EC(a1, v6, v7, v1 + v5);
}

void sub_258ACE438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258ACE4E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258ACE580()
{
  if (!qword_27F971288)
  {
    sub_258ACE3F0(255);
    sub_258ACE6E4(255, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_258ACE4E0(255, &qword_27F9712B8, sub_258ACE8BC);
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
    sub_258ACE9C0();
    sub_258ACECB8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971288);
    }
  }
}

void sub_258ACE6E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258ACBBDC(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258ACE7B8()
{
  if (!qword_27F9712A0)
  {
    sub_258ACE3F0(255);
    sub_258B00BB4();
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
    sub_258ACF188(&qword_27F9712B0, MEMORY[0x277CDDA98]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9712A0);
    }
  }
}

void sub_258ACE8BC()
{
  if (!qword_27F9712C0)
  {
    sub_258ACE3F0(255);
    sub_258B00C14();
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
    sub_258ACF188(&qword_27F96D410, MEMORY[0x277CDDB18]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9712C0);
    }
  }
}

unint64_t sub_258ACE9C0()
{
  result = qword_27F9712C8;
  if (!qword_27F9712C8)
  {
    sub_258ACE6E4(255, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_258ACEA78();
    sub_258ACEC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9712C8);
  }

  return result;
}

unint64_t sub_258ACEA78()
{
  result = qword_27F9712D0;
  if (!qword_27F9712D0)
  {
    sub_258ACE77C(255);
    sub_258ACE3F0(255);
    sub_258B00BB4();
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
    sub_258ACF188(&qword_27F9712B0, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_258ACEBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9712D0);
  }

  return result;
}

unint64_t sub_258ACEBA8()
{
  result = qword_27F96F098;
  if (!qword_27F96F098)
  {
    sub_258ACBBDC(255, &qword_27F96F028, MEMORY[0x277CDDBB8], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F098);
  }

  return result;
}

unint64_t sub_258ACEC30()
{
  result = qword_27F96F0A0;
  if (!qword_27F96F0A0)
  {
    sub_258ACBBDC(255, &qword_27F96F030, MEMORY[0x277CDF450], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F0A0);
  }

  return result;
}

unint64_t sub_258ACECB8()
{
  result = qword_27F9712D8;
  if (!qword_27F9712D8)
  {
    sub_258ACE4E0(255, &qword_27F9712B8, sub_258ACE8BC);
    sub_258ACE3F0(255);
    sub_258B00C14();
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
    sub_258ACF188(&qword_27F96D410, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9712D8);
  }

  return result;
}

uint64_t sub_258ACEE0C()
{
  v1 = *(type metadata accessor for SkipButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  [*(v2 + 16) setReminders_];
  v3 = *(v2 + 32);
  v4 = (*(v2 + 24))(9, 5);
  v5 = *(v2 + 8);
  return (*v2)(v4);
}

void sub_258ACEEA0()
{
  if (!qword_27F9712E0)
  {
    sub_258ACEF50(255, &qword_27F9712E8, sub_258ACE580);
    sub_258ACA4AC(255, &qword_27F96CF48, &qword_27F96CF50, MEMORY[0x277CE0F78], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9712E0);
    }
  }
}

void sub_258ACEF50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258ACEFBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258ACF00C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258ACF08C()
{
  result = qword_27F9712F8;
  if (!qword_27F9712F8)
  {
    sub_258ACEF50(255, &qword_27F971260, sub_2589DE338);
    sub_258ACF188(&qword_27F96D2C0, sub_2589DE338);
    sub_258ACF188(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9712F8);
  }

  return result;
}

uint64_t sub_258ACF188(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258ACF1D0()
{
  result = qword_27F971300;
  if (!qword_27F971300)
  {
    sub_258ACEEA0();
    sub_258ACF250();
    sub_2589D6238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971300);
  }

  return result;
}

unint64_t sub_258ACF250()
{
  result = qword_27F971308;
  if (!qword_27F971308)
  {
    sub_258ACEF50(255, &qword_27F9712E8, sub_258ACE580);
    sub_258ACE3F0(255);
    sub_258ACE6E4(255, &qword_27F971290, sub_258ACE77C, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_258ACE4E0(255, &qword_27F9712B8, sub_258ACE8BC);
    sub_258ACF188(&qword_27F9712A8, sub_258ACE3F0);
    sub_258ACE9C0();
    sub_258ACECB8();
    swift_getOpaqueTypeConformance2();
    sub_258ACF188(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971308);
  }

  return result;
}

uint64_t sub_258ACF434(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_258ACF47C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258ACF4CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_258ACF548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258ACF638();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258ACF5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258ACF638();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258ACF610()
{
  sub_258ACF638();
  sub_258B01794();
  __break(1u);
}

unint64_t sub_258ACF638()
{
  result = qword_27F971310[0];
  if (!qword_27F971310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F971310);
  }

  return result;
}

uint64_t sub_258ACF68C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_258ACF700(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_258ACF748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258ACF7FC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_258B02584();
}

uint64_t sub_258ACF9CC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = v1;
  v7 = v2;
  sub_258AD11A4(0, &qword_27F9713A8, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v4);
  return v4;
}

uint64_t sub_258ACFA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_258B006C4();
  v106 = *(v3 - 8);
  v107 = v3;
  v4 = *(v106 + 64);
  MEMORY[0x28223BE20](v3);
  v105 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B00CC4();
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = *(v103 + 64);
  MEMORY[0x28223BE20](v6);
  v102 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a1;
  v9 = *(a1 + 24);
  v94 = *(a1 + 16);
  v97 = v9;
  *&v123 = v94;
  *(&v123 + 1) = v9;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  v93 = sub_258B021D4();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_258B021B4();
  v100 = *(v10 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = &v78 - v12;
  v13 = sub_258B015E4();
  v101 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_258AD1108(&qword_27F971398, MEMORY[0x277CDE340]);
  *&v123 = v10;
  *(&v123 + 1) = v13;
  *&v124 = v14;
  *(&v124 + 1) = v15;
  v16 = v14;
  v82 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = OpaqueTypeMetadata2;
  v18 = sub_258B016D4();
  v19 = sub_258AD1108(&qword_27F9713A0, MEMORY[0x277CDE400]);
  *&v123 = v10;
  *(&v123 + 1) = v18;
  *&v124 = v14;
  *(&v124 + 1) = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  *&v123 = v10;
  *(&v123 + 1) = v101;
  *&v124 = v14;
  *(&v124 + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v123 = v10;
  *(&v123 + 1) = v18;
  *&v124 = v16;
  *(&v124 + 1) = v19;
  v22 = swift_getOpaqueTypeConformance2();
  *&v123 = v10;
  *(&v123 + 1) = MEMORY[0x277CE1350];
  *&v124 = OpaqueTypeMetadata2;
  *(&v124 + 1) = v20;
  *&v125 = v16;
  *(&v125 + 1) = MEMORY[0x277CE1340];
  *&v126 = OpaqueTypeConformance2;
  *(&v126 + 1) = v22;
  v23 = OpaqueTypeConformance2;
  v85 = MEMORY[0x277CE0E60];
  v83 = swift_getOpaqueTypeMetadata2();
  v87 = *(v83 - 8);
  v24 = *(v87 + 64);
  MEMORY[0x28223BE20](v83);
  v26 = &v78 - v25;
  v88 = MEMORY[0x277CDDBB8];
  sub_258AD1150(255, &qword_27F96F028, MEMORY[0x277CDDBB8]);
  v84 = sub_258B00B04();
  v90 = *(v84 - 8);
  v27 = *(v90 + 64);
  MEMORY[0x28223BE20](v84);
  v80 = &v78 - v28;
  sub_258AD1150(255, &qword_27F96F030, MEMORY[0x277CDF450]);
  v29 = sub_258B00B04();
  v99 = *(v29 - 8);
  v30 = *(v99 + 64);
  MEMORY[0x28223BE20](v29);
  v79 = &v78 - v31;
  sub_258AD11A4(255, &qword_27F96D710, &qword_27F96D718, MEMORY[0x277CDF6A8], MEMORY[0x277CE0860]);
  v101 = v29;
  v86 = sub_258B00B04();
  v98 = *(v86 - 8);
  v32 = *(v98 + 64);
  v33 = MEMORY[0x28223BE20](v86);
  v95 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v96 = &v78 - v35;
  v36 = v109;
  (*(*(v89 - 8) + 16))(&v123, v109);
  v37 = swift_allocObject();
  v38 = v94;
  v39 = v97;
  *(v37 + 16) = v94;
  *(v37 + 24) = v39;
  v40 = v128;
  *(v37 + 96) = v127;
  *(v37 + 112) = v40;
  *(v37 + 128) = v129;
  v41 = v124;
  *(v37 + 32) = v123;
  *(v37 + 48) = v41;
  v42 = v126;
  *(v37 + 64) = v125;
  *(v37 + 80) = v42;
  v114 = v38;
  v115 = v39;
  v43 = v38;
  v44 = v39;
  v116 = v36;
  v45 = v91;
  sub_258B02174();
  sub_258B024C4();
  v112 = v43;
  v113 = v44;
  v110 = v43;
  v111 = v44;
  v46 = swift_checkMetadataState();
  v47 = swift_checkMetadataState();
  v48 = v82;
  v49 = v26;
  sub_258B01F04();
  (*(v100 + 8))(v45, v10);
  v50 = v102;
  sub_258B00CB4();
  *&v123 = v10;
  v51 = v79;
  *(&v123 + 1) = MEMORY[0x277CE1350];
  *&v124 = v46;
  *(&v124 + 1) = v47;
  *&v125 = v48;
  *(&v125 + 1) = MEMORY[0x277CE1340];
  *&v126 = v23;
  *(&v126 + 1) = v22;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v80;
  v54 = v83;
  sub_258B01CE4();
  (*(v103 + 8))(v50, v104);
  (*(v87 + 8))(v49, v54);
  v56 = v105;
  v55 = v106;
  v57 = v107;
  (*(v106 + 104))(v105, *MEMORY[0x277CDF420], v107);
  v58 = sub_258AD1250(&qword_27F96F098, &qword_27F96F028, v88);
  v121 = v52;
  v122 = v58;
  v59 = v84;
  v60 = swift_getWitnessTable();
  sub_258B01BE4();
  (*(v55 + 8))(v56, v57);
  (*(v90 + 8))(v53, v59);
  v61 = sub_258ACF9CC();
  if (v62)
  {
    v63 = sub_258B01FC4();
  }

  else
  {
    v64 = fmax(fmin(*&v61, 1.0), -1.0);
    swift_getKeyPath();
    v65 = sub_258A84538(v64);
    v67 = v66;

    sub_258A848C0(v65, v65, v67);
    v63 = sub_258B01F74();
  }

  *&v123 = v63;
  v68 = sub_258AD1250(&qword_27F96F0A0, &qword_27F96F030, MEMORY[0x277CDF450]);
  v119 = v60;
  v120 = v68;
  v69 = v101;
  v70 = swift_getWitnessTable();
  v71 = v95;
  sub_258B01E54();

  (*(v99 + 8))(v51, v69);
  v72 = sub_258AD12A0();
  v117 = v70;
  v118 = v72;
  v73 = v86;
  v74 = swift_getWitnessTable();
  v75 = v96;
  sub_258A4DFD4(v71, v73, v74);
  v76 = *(v98 + 8);
  v76(v71, v73);
  sub_258A4DFD4(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_258AD0584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  v6 = sub_258B021D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-v12];
  v18 = a2;
  v19 = a3;
  v20 = a1;
  sub_258B01004();
  sub_258B021C4();
  WitnessTable = swift_getWitnessTable();
  sub_258A4DFD4(v11, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v11, v6);
  sub_258A4DFD4(v13, v6, WitnessTable);
  return (v15)(v13, v6);
}

uint64_t sub_258AD07A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v27[0] = a4;
  v7 = *(a2 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v11;
  v34 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v27 - v20;
  v22 = *(a1 + 88);
  v23 = *(a1 + 96);
  v22(v19);
  sub_258B01E44();
  (*(v7 + 8))(v10, a2);
  v33 = a2;
  v34 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_258A4DFD4(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v25 = *(v14 + 8);
  v25(v18, OpaqueTypeMetadata2);
  v31 = 0;
  v32 = 1;
  v33 = &v31;
  (*(v14 + 16))(v18, v21, OpaqueTypeMetadata2);
  v29 = 0;
  v30 = 1;
  v34 = v18;
  v35 = &v29;
  v28[0] = MEMORY[0x277CE1180];
  v28[1] = OpaqueTypeMetadata2;
  v28[2] = MEMORY[0x277CE1180];
  v27[1] = MEMORY[0x277CE1170];
  v27[2] = OpaqueTypeConformance2;
  v27[3] = MEMORY[0x277CE1170];
  sub_258ACF7FC(&v33, 3uLL, v28);
  v25(v21, OpaqueTypeMetadata2);
  return (v25)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_258AD0A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a1;
  v27 = a4;
  v6 = sub_258B015E4();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v29 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  sub_258B021D4();
  swift_getWitnessTable();
  v10 = sub_258B021B4();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_258AD1108(&qword_27F971398, MEMORY[0x277CDE340]);
  v28 = v10;
  v29 = v6;
  v30 = WitnessTable;
  v31 = v12;
  v25[0] = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - v19;
  sub_258B015D4();
  v21 = swift_checkMetadataState();
  sub_258B01BD4();
  (*(v26 + 8))(v9, v6);
  v28 = v21;
  v29 = v6;
  v30 = WitnessTable;
  v31 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_258A4DFD4(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v14 + 8);
  v23(v18, OpaqueTypeMetadata2);
  sub_258A4DFD4(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_258AD0DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a1;
  v27 = a4;
  v6 = sub_258B016D4();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v29 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_258B02574();
  swift_getWitnessTable();
  sub_258B021D4();
  swift_getWitnessTable();
  v10 = sub_258B021B4();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_258AD1108(&qword_27F9713A0, MEMORY[0x277CDE400]);
  v28 = v10;
  v29 = v6;
  v30 = WitnessTable;
  v31 = v12;
  v25[0] = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - v19;
  sub_258B016C4();
  v21 = swift_checkMetadataState();
  sub_258B01BD4();
  (*(v26 + 8))(v9, v6);
  v28 = v21;
  v29 = v6;
  v30 = WitnessTable;
  v31 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_258A4DFD4(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v14 + 8);
  v23(v18, OpaqueTypeMetadata2);
  sub_258A4DFD4(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_258AD1108(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258AD1150(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B017C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AD11A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258AD1324(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_258AD120C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_258AD1250(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258AD1150(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AD12A0()
{
  result = qword_27F96D730;
  if (!qword_27F96D730)
  {
    sub_258AD11A4(255, &qword_27F96D710, &qword_27F96D718, MEMORY[0x277CDF6A8], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D730);
  }

  return result;
}

void sub_258AD1324(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_258B030C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

MentalHealthUI::Route_optional __swiftcall Route.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Route.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 963733616;
  if (v1 != 6)
  {
    v3 = 929325415;
  }

  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x47646E4139716870;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    v2 = 0x6574617453676F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_258AD1520(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006D6F6F52;
  v4 = 0x79726F6765746163;
  v5 = 0xE400000000000000;
  v6 = 963733616;
  if (v2 != 6)
  {
    v6 = 929325415;
    v5 = 0xE400000000000000;
  }

  v7 = 0x8000000258B36410;
  v8 = 0xD000000000000016;
  if (v2 != 4)
  {
    v8 = 0x47646E4139716870;
    v7 = 0xEB00000000376461;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000011;
  v10 = 0x8000000258B363F0;
  if (v2 != 2)
  {
    v9 = 0x736E6F6974706FLL;
    v10 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6574617453676F6CLL;
    v3 = 0xEE00646E694D664FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_258AD1638(unsigned __int8 a1)
{
  v19 = 0;
  v20 = 0xE000000000000000;
  v18[0] = 46;
  v18[1] = 0xE100000000000000;
  v17[2] = v18;
  v2 = sub_2589BBCF8(1, 1, sub_258AD7088, v17, 0xD000000000000022, 0x8000000258B396C0, "SKIP_BUTTON_TITLE");
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    sub_258B003E4();

    v7 = MEMORY[0x259C93160](v3, v4, v5, v6);
    v9 = v8;

    MEMORY[0x259C931B0](v7, v9);

    MEMORY[0x259C931B0](46, 0xE100000000000000);
    v10 = 0xE700000000000000;
    v11 = 0x6E6F6973726576;
    v12 = 0xE500000000000000;
    v13 = 0x6574756F72;
    if (a1 != 2)
    {
      v13 = 0x72756769666E6F63;
      v12 = 0xED00006E6F697461;
    }

    if (a1)
    {
      v11 = 0xD000000000000014;
      v10 = 0x8000000258B39730;
    }

    if (a1 <= 1u)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    if (a1 <= 1u)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    MEMORY[0x259C931B0](v14, v15);

    return v19;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t NSUserActivity.presentWithAnimation.getter()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_258B029F4();

  *&v9 = sub_258AD1638(1u);
  *(&v9 + 1) = v4;
  sub_258B03154();
  if (!*(v3 + 16) || (v5 = sub_258AD57B4(v8), (v6 & 1) == 0))
  {

    sub_258A97AF8(v8);
LABEL_9:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_10;
  }

  sub_2589F44D0(*(v3 + 56) + 32 * v5, &v9);
  sub_258A97AF8(v8);

  if (!*(&v10 + 1))
  {
LABEL_10:
    sub_258AD6834(&v9, sub_258A3F06C);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v8[0];
  }

  else
  {
    return 2;
  }
}

void NSUserActivity.presentWithAnimation.setter(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = [v1 userInfo];
    if (v3)
    {
      v4 = v3;
      v5 = sub_258B029F4();

      v12 = v5;
      sub_258AD1638(1u);
      sub_258B03154();
      sub_258AD1B8C(v11, v13);
      sub_258A97AF8(v11);
      sub_258AD6834(v13, sub_258A3F06C);
      if (v12)
      {
        v6 = sub_258B029E4();
      }

      else
      {
        v6 = 0;
      }

      [v2 setUserInfo_];
    }

    else
    {
      [v1 setUserInfo_];
      memset(v13, 0, sizeof(v13));
      sub_258AD6834(v13, sub_258A3F06C);
    }
  }

  else
  {
    sub_258AD57F8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    v11[0] = sub_258AD1638(1u);
    v11[1] = v9;
    sub_258B03154();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = a1 & 1;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v10 = sub_258B029E4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

double sub_258AD1B8C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_258AD57B4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258A99ED4();
      v11 = v13;
    }

    sub_258A97AF8(*(v11 + 48) + 40 * v8);
    sub_258A2D784((*(v11 + 56) + 32 * v8), a2);
    sub_258AC889C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void (*NSUserActivity.presentWithAnimation.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = NSUserActivity.presentWithAnimation.getter();
  return sub_258AD1C78;
}

MentalHealthUI::Route NSUserActivity.route.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 userInfo];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_258B029F4();

  sub_258AD1638(2u);
  sub_258B03154();
  if (!*(v5 + 16) || (v6 = sub_258AD57B4(v9), (v7 & 1) == 0))
  {

    sub_258A97AF8(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_2589F44D0(*(v5 + 56) + 32 * v6, &v10);
  sub_258A97AF8(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    result = sub_258AD6834(&v10, sub_258A3F06C);
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return Route.init(rawValue:)(v9[0]).value;
  }

LABEL_10:
  *a1 = 8;
  return result;
}

void NSUserActivity.route.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (v3 == 8)
  {
    v4 = [v1 userInfo];
    if (!v4)
    {
      [v1 setUserInfo_];
      memset(v15, 0, sizeof(v15));
      sub_258AD6834(v15, sub_258A3F06C);
      return;
    }

    v5 = v4;
    v6 = sub_258B029F4();

    v14 = v6;
    sub_258AD1638(2u);
    sub_258B03154();
    sub_258AD1B8C(v13, v15);
    sub_258A97AF8(v13);
    sub_258AD6834(v15, sub_258A3F06C);
    if (v14)
    {
      v7 = sub_258B029E4();
    }

    else
    {
      v7 = 0;
    }

    [v2 setUserInfo_];
  }

  else
  {
    sub_258AD57F8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    v13[0] = sub_258AD1638(2u);
    v13[1] = v9;
    v10 = MEMORY[0x277D837D0];
    sub_258B03154();
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        v11 = 0xE400000000000000;
        if (v3 == 6)
        {
          v12 = 963733616;
        }

        else
        {
          v12 = 929325415;
        }
      }

      else if (v3 == 4)
      {
        v11 = 0x8000000258B36410;
        v12 = 0xD000000000000016;
      }

      else
      {
        v11 = 0xEB00000000376461;
        v12 = 0x47646E4139716870;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        v12 = 0xD000000000000011;
        v11 = 0x8000000258B363F0;
      }

      else
      {
        v11 = 0xE700000000000000;
        v12 = 0x736E6F6974706FLL;
      }
    }

    else if (v3)
    {
      v11 = 0xEE00646E694D664FLL;
      v12 = 0x6574617453676F6CLL;
    }

    else
    {
      v11 = 0xEC0000006D6F6F52;
      v12 = 0x79726F6765746163;
    }

    *(inited + 96) = v10;
    *(inited + 72) = v12;
    *(inited + 80) = v11;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v7 = sub_258B029E4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

void (*NSUserActivity.route.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  NSUserActivity.route.getter((a1 + 8));
  return sub_258AD218C;
}

void sub_258AD218C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  NSUserActivity.route.setter(v4);
}

uint64_t NSUserActivity.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - v5;
  v7 = [v1 userInfo];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = sub_258B029F4();

  v23[1] = sub_258AD1638(3u);
  v23[2] = v10;
  sub_258B03154();
  if (!*(v9 + 16) || (v11 = sub_258AD57B4(&v24), (v12 & 1) == 0))
  {

    sub_258A97AF8(&v24);
LABEL_9:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_10;
  }

  sub_2589F44D0(*(v9 + 56) + 32 * v11, &v25);
  sub_258A97AF8(&v24);

  if (!*(&v26 + 1))
  {
LABEL_10:
    sub_258AD6834(&v25, sub_258A3F06C);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v13 = sub_258AFFE54();
    v15 = v14;

    if (v15 >> 60 != 15)
    {
      v16 = sub_258AFFB54();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_258AFFB44();
      v19 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
      sub_258AD6FD8(&qword_27F9713D0, type metadata accessor for StateOfMindEntryModel.Configuration);
      sub_258AFFB34();
      sub_258AD6768(v13, v15);

      v21 = *(*(v19 - 8) + 56);
      v21(v6, 0, 1, v19);
      sub_258AD67D0(v6, a1);
      return (v21)(a1, 0, 1, v19);
    }
  }

LABEL_11:
  v20 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
}

uint64_t sub_258AD2570(uint64_t a1, uint64_t *a2)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_258AD6AEC(a1, &v10 - v6, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v8 = *a2;
  return NSUserActivity.configuration.setter(v7);
}

uint64_t NSUserActivity.configuration.setter(uint64_t a1)
{
  v2 = v1;
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33[-v6];
  v8 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AD6AEC(a1, v7, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_258AD67D0(v7, v12);
    v18 = sub_258AFFB84();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_258AFFB74();
    sub_258AD6FD8(&unk_27F9713D8, type metadata accessor for StateOfMindEntryModel.Configuration);
    v21 = sub_258AFFB64();
    v23 = v22;

    sub_258AD57F8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    v36[0] = sub_258AD1638(3u);
    v36[1] = v25;
    v26 = MEMORY[0x277D837D0];
    sub_258B03154();
    v27 = sub_258AFFE64();
    *(inited + 96) = v26;
    *(inited + 72) = v27;
    *(inited + 80) = v28;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v29 = sub_258B029E4();

    [v2 addUserInfoEntriesFromDictionary_];

    sub_258AD677C(v21, v23);
    sub_258AD6A6C(a1, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
    v30 = type metadata accessor for StateOfMindEntryModel.Configuration;
    v31 = v12;
    return sub_258AD6834(v31, v30);
  }

  sub_258AD6A6C(v7, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
  v13 = [v2 userInfo];
  if (!v13)
  {
    [v2 setUserInfo_];
    sub_258AD6A6C(a1, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
    memset(v38, 0, sizeof(v38));
    v30 = sub_258A3F06C;
    v31 = v38;
    return sub_258AD6834(v31, v30);
  }

  v14 = v13;
  v15 = sub_258B029F4();

  v37 = v15;
  v34 = sub_258AD1638(3u);
  v35 = v16;
  sub_258B03154();
  sub_258AD1B8C(v36, v38);
  sub_258A97AF8(v36);
  sub_258AD6834(v38, sub_258A3F06C);
  if (v37)
  {
    v17 = sub_258B029E4();
  }

  else
  {
    v17 = 0;
  }

  [v2 setUserInfo_];

  return sub_258AD6A6C(a1, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
}

void (*NSUserActivity.configuration.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  NSUserActivity.configuration.getter(v5);
  return sub_258AD2C20;
}

uint64_t NSUserActivity.version.getter()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_258B029F4();

  *&v9 = sub_258AD1638(0);
  *(&v9 + 1) = v4;
  sub_258B03154();
  if (!*(v3 + 16) || (v5 = sub_258AD57B4(v8), (v6 & 1) == 0))
  {

    sub_258A97AF8(v8);
LABEL_10:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_11;
  }

  sub_2589F44D0(*(v3 + 56) + 32 * v5, &v9);
  sub_258A97AF8(v8);

  if (!*(&v10 + 1))
  {
LABEL_11:
    sub_258AD6834(&v9, sub_258A3F06C);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v8[0];
  }

  else
  {
    return 0;
  }
}

void NSUserActivity.version.setter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_258AD57F8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    sub_258AD1638(0);
    sub_258B03154();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = a1;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v5 = sub_258B029E4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

void (*NSUserActivity.version.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x108uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 256) = v1;
  *(v3 + 240) = NSUserActivity.version.getter();
  *(v4 + 248) = v5 & 1;
  return sub_258AD2F14;
}

void sub_258AD2F14(uint64_t a1, char a2)
{
  v2 = *a1;
  if ((*(*a1 + 248) & 1) == 0)
  {
    if (a2)
    {
      v3 = 27;
    }

    else
    {
      v3 = 29;
    }

    if (a2)
    {
      v4 = 26;
    }

    else
    {
      v4 = 28;
    }

    v5 = v2[32];
    v6 = v2[30];
    sub_258AD57F8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    v2[v4] = sub_258AD1638(0);
    v2[v3] = v8;
    sub_258B03154();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = v6;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v9 = sub_258B029E4();

    [v5 addUserInfoEntriesFromDictionary_];
  }

  free(v2);
}

uint64_t static URL.stateOfMind(route:presentWithAnimation:configuration:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  sub_258AD6714(0, &qword_280DF8F90, MEMORY[0x277CC9260]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = sub_258AFFCA4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_258B00294();
  LOBYTE(v26) = a1;
  URLComponents.route.setter(&v26);
  URLComponents.presentWithAnimation.setter(a2);
  sub_258AD6AEC(a3, v14, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  URLComponents.initialConfiguration.setter(v14);
  sub_258AFFC74();
  v20 = sub_258AFFE44();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) == 1)
  {
    sub_258AD6A6C(v10, &qword_280DF8F90, MEMORY[0x277CC9260], sub_258AD6714);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_258B031B4();

    v26 = 0xD00000000000001ALL;
    v27 = 0x8000000258B39710;
    sub_258AD6FD8(&qword_27F9713E8, MEMORY[0x277CC8958]);
    v23 = sub_258B03414();
    MEMORY[0x259C931B0](v23);

    result = sub_258B03294();
    __break(1u);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    return (*(v21 + 32))(v25, v10, v20);
  }

  return result;
}

void URLComponents.route.setter(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 3)
  {
    v10 = 0xEC0000006D6F6F52;
    v11 = 0x79726F6765746163;
    v12 = 0xD000000000000011;
    v13 = 0x8000000258B363F0;
    if (v1 != 2)
    {
      v12 = 0x736E6F6974706FLL;
      v13 = 0xE700000000000000;
    }

    if (*a1)
    {
      v11 = 0x6574617453676F6CLL;
      v10 = 0xEE00646E694D664FLL;
    }

    if (*a1 <= 1u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v12;
    }

    if (v1 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v13;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 963733616;
    v4 = 0xE400000000000000;
    v5 = 929325415;
    if (v1 != 7)
    {
      v5 = 0;
      v4 = 0xE000000000000000;
    }

    if (v1 != 6)
    {
      v3 = v5;
      v2 = v4;
    }

    v6 = 0x8000000258B36410;
    v7 = 0xD000000000000016;
    if (v1 != 4)
    {
      v7 = 0x47646E4139716870;
      v6 = 0xEB00000000376461;
    }

    if (*a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v1 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }
  }

  MEMORY[0x259C931B0](v8, v9);

  JUMPOUT(0x259C90290);
}

uint64_t URLComponents.presentWithAnimation.setter(int a1)
{
  v3 = sub_258AFFC34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v37 = &v31[-v10];
  MEMORY[0x28223BE20](v9);
  v12 = &v31[-v11];
  v13 = sub_258AFFC44();
  if (v13)
  {
    v14 = v13;
    v32 = a1;
    v33 = v8;
    v34 = v1;
    v40 = *(v13 + 16);
    if (v40)
    {
      v15 = 0;
      v39 = v4 + 16;
      v41 = 0x8000000258B39730;
      v36 = (v4 + 32);
      v8 = (v4 + 8);
      v38 = MEMORY[0x277D84F90];
      v35 = v3;
      while (1)
      {
        if (v15 >= *(v14 + 16))
        {
          __break(1u);
LABEL_26:
          v38 = sub_258A755D0(0, v38[2] + 1, 1, v38);
LABEL_21:
          v28 = v38[2];
          v27 = v38[3];
          if (v28 >= v27 >> 1)
          {
            v38 = sub_258A755D0(v27 > 1, v28 + 1, 1, v38);
          }

          v29 = v38;
          v38[2] = v28 + 1;
          (*(v4 + 32))(v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v8, v3);
          return sub_258AFFC54();
        }

        v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v17 = *(v4 + 72);
        (*(v4 + 16))(v12, v14 + v16 + v17 * v15, v3);
        if (sub_258AFFC14() == 0xD000000000000014 && v41 == v18)
        {
        }

        else
        {
          v19 = sub_258B03454();

          if ((v19 & 1) == 0)
          {
            v20 = *v36;
            (*v36)(v37, v12, v3);
            v21 = v38;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_258AA932C(0, v21[2] + 1, 1);
              v21 = v42;
            }

            v23 = v21;
            v25 = v21[2];
            v24 = v21[3];
            if (v25 >= v24 >> 1)
            {
              v38 = v20;
              sub_258AA932C(v24 > 1, v25 + 1, 1);
              v20 = v38;
              v23 = v42;
            }

            v23[2] = v25 + 1;
            v38 = v23;
            v26 = v23 + v16 + v25 * v17;
            v3 = v35;
            (v20)(v26, v37, v35);
            goto LABEL_6;
          }
        }

        (*v8)(v12, v3);
LABEL_6:
        if (v40 == ++v15)
        {
          goto LABEL_18;
        }
      }
    }

    v38 = MEMORY[0x277D84F90];
LABEL_18:

    v8 = v33;
    LOBYTE(a1) = v32;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  if (a1 != 2)
  {
    sub_258AFFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  return sub_258AFFC54();
}

uint64_t URLComponents.initialConfiguration.setter(uint64_t a1)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v39 - v5;
  v45 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258AFFC34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v49 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = sub_258AFFC44();
  if (v19)
  {
    v20 = v19;
    v39 = v14;
    v40 = v8;
    v41 = v1;
    v42 = a1;
    v52 = *(v19 + 16);
    if (v52)
    {
      v8 = 0;
      v51 = v10 + 16;
      v48 = (v10 + 32);
      v14 = (v10 + 8);
      v50 = MEMORY[0x277D84F90];
      v46 = v10;
      v47 = v9;
      while (1)
      {
        if (v8 >= *(v20 + 16))
        {
          __break(1u);
LABEL_28:
          v34 = sub_258A755D0(0, v50[2] + 1, 1, v50);
          goto LABEL_23;
        }

        v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        a1 = *(v10 + 72);
        (*(v10 + 16))(v18, v20 + v21 + a1 * v8, v9);
        v1 = v18;
        if (sub_258AFFC14() == 0x72756769666E6F63 && v22 == 0xED00006E6F697461)
        {
        }

        else
        {
          v1 = v22;
          v23 = sub_258B03454();

          if ((v23 & 1) == 0)
          {
            v24 = *v48;
            (*v48)(v49, v18, v9);
            v1 = v50;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v53 = v1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_258AA932C(0, v1[2] + 1, 1);
              v1 = v53;
            }

            v27 = v1[2];
            v26 = v1[3];
            if (v27 >= v26 >> 1)
            {
              sub_258AA932C(v26 > 1, v27 + 1, 1);
              v1 = v53;
            }

            v1[2] = v27 + 1;
            v50 = v1;
            v28 = v1 + v21 + v27 * a1;
            v9 = v47;
            v24(v28, v49, v47);
            v10 = v46;
            goto LABEL_6;
          }
        }

        (*v14)(v18, v9);
LABEL_6:
        if (v52 == ++v8)
        {
          goto LABEL_18;
        }
      }
    }

    v50 = MEMORY[0x277D84F90];
LABEL_18:

    a1 = v42;
    v14 = v39;
    v8 = v40;
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  v29 = v44;
  sub_258AD6AEC(a1, v44, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  if ((*(v43 + 48))(v29, 1, v45) == 1)
  {
    sub_258AD6A6C(v29, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
  }

  else
  {
    sub_258AD67D0(v29, v8);
    v30 = sub_258AFFB84();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_258AFFB74();
    sub_258AD6FD8(&unk_27F9713D8, type metadata accessor for StateOfMindEntryModel.Configuration);
    v18 = sub_258AFFB64();
    v1 = v33;

    sub_258AFFE64();
    sub_258AFFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_28;
    }

    v34 = v50;
LABEL_23:
    v36 = v34[2];
    v35 = v34[3];
    v50 = v34;
    if (v36 >= v35 >> 1)
    {
      v50 = sub_258A755D0(v35 > 1, v36 + 1, 1, v50);
    }

    sub_258AD677C(v18, v1);
    sub_258AD6834(v8, type metadata accessor for StateOfMindEntryModel.Configuration);
    v37 = v50;
    v50[2] = v36 + 1;
    (*(v10 + 32))(v37 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v36, v14, v9);
  }

  sub_258AFFC54();
  return sub_258AD6A6C(a1, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
}

uint64_t URL.route.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_258AD6714(0, &qword_27F9713F0, MEMORY[0x277CC8958]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_258AFFC64();
  v6 = sub_258AFFCA4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_258AD6A6C(v5, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    *a1 = 8;
  }

  else
  {
    URLComponents.route.getter(a1);
    return (*(v7 + 8))(v5, v6);
  }

  return result;
}

MentalHealthUI::Route_optional URLComponents.route.getter@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_258AFFC84();
  v15[0] = 47;
  v15[1] = 0xE100000000000000;
  v14[2] = v15;
  v4 = sub_2589BBCF8(0x7FFFFFFFFFFFFFFFLL, 1, sub_258AD6ACC, v14, v2, v3, v15);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
    sub_258B003E4();

    v9 = MEMORY[0x259C93160](v5, v6, v7, v8);
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    return Route.init(rawValue:)(v12);
  }

  else
  {

    *a1 = 8;
  }

  return result;
}

uint64_t URL.presentWithAnimation.getter()
{
  sub_258AD6714(0, &qword_27F9713F0, MEMORY[0x277CC8958]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  sub_258AFFC64();
  v4 = sub_258AFFCA4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_258AD6A6C(v3, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    return 2;
  }

  else
  {
    v7 = URLComponents.presentWithAnimation.getter();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t URLComponents.presentWithAnimation.getter()
{
  v0 = sub_258AFFC34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  result = sub_258AFFC44();
  if (!result)
  {
    return 2;
  }

  v9 = result;
  v19[0] = v7;
  v10 = *(result + 16);
  if (!v10)
  {
LABEL_9:

    return 2;
  }

  v11 = 0;
  v19[1] = v1 + 16;
  while (1)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v5, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v0);
    if (sub_258AFFC14() == 0xD000000000000014 && 0x8000000258B39730 == v12)
    {
      break;
    }

    v13 = sub_258B03454();

    if (v13)
    {
      goto LABEL_11;
    }

    ++v11;
    result = (*(v1 + 8))(v5, v0);
    if (v10 == v11)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  v14 = v19[0];
  (*(v1 + 32))(v19[0], v5, v0);
  v15 = sub_258AFFC24();
  v17 = v16;
  (*(v1 + 8))(v14, v0);
  if (!v17)
  {
    return 2;
  }

  if (v15 == 48 && v17 == 0xE100000000000000 || (sub_258B03454() & 1) != 0)
  {

    return 0;
  }

  if (v15 == 49 && v17 == 0xE100000000000000)
  {
  }

  else
  {
    v18 = sub_258B03454();

    if ((v18 & 1) == 0)
    {
      return 2;
    }
  }

  return 1;
}

void *URL.userActivity.getter()
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v37 - v2;
  v3 = MEMORY[0x277CC8958];
  sub_258AD6714(0, &qword_27F9713F0, MEMORY[0x277CC8958]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  sub_258AFFC64();
  v16 = _sSo14NSUserActivityC14MentalHealthUIE6pluginABvgZ_0();
  sub_258AD6AEC(v15, v13, &qword_27F9713F0, v3);
  v17 = sub_258AFFCA4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v13, 1, v17) == 1)
  {
    sub_258AD6A6C(v13, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    v20 = 8;
    v21 = v40;
  }

  else
  {
    v22 = sub_258AFFC84();
    v42[0] = 47;
    v42[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v22);
    *(&v37 - 2) = v42;
    v25 = sub_2589BBCF8(0x7FFFFFFFFFFFFFFFLL, 1, sub_258AD7088, (&v37 - 4), v23, v24, &v37);
    if (v25[2])
    {
      v38 = v25[4];
      v39 = v19;
      v26 = v25[5];
      v37 = v25[6];
      v27 = v25[7];
      sub_258B003E4();

      v28 = MEMORY[0x259C93160](v38, v26, v37, v27);
      v30 = v29;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      v19 = v39;
      Route.init(rawValue:)(v31);
      v20 = v42[0];
    }

    else
    {

      v20 = 8;
      LOBYTE(v42[0]) = 8;
    }

    v21 = v40;
    (*(v18 + 8))(v13, v17);
  }

  LOBYTE(v42[0]) = v20;
  NSUserActivity.route.setter(v42);
  sub_258AD6AEC(v15, v10, &qword_27F9713F0, MEMORY[0x277CC8958]);
  if (v19(v10, 1, v17) == 1)
  {
    sub_258AD6A6C(v10, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    v32 = 2;
  }

  else
  {
    v33 = URLComponents.presentWithAnimation.getter();
    (*(v18 + 8))(v10, v17);
    v32 = v33;
  }

  v34 = v41;
  NSUserActivity.presentWithAnimation.setter(v32);
  sub_258AD6AEC(v15, v21, &qword_27F9713F0, MEMORY[0x277CC8958]);
  if (v19(v21, 1, v17) == 1)
  {
    sub_258AD6A6C(v21, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
    v35 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  }

  else
  {
    URLComponents.initialConfiguration.getter(v34);
    (*(v18 + 8))(v21, v17);
  }

  NSUserActivity.configuration.setter(v34);
  [v16 setEligibleForHandoff_];
  sub_258AD6A6C(v15, &qword_27F9713F0, MEMORY[0x277CC8958], sub_258AD6714);
  return v16;
}

uint64_t URLComponents.initialConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_258AFFC34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  result = sub_258AFFC44();
  if (result)
  {
    v15 = result;
    v36 = v13;
    v37 = v5;
    v16 = *(result + 16);
    v38 = a1;
    v39 = v16;
    if (v16)
    {
      v17 = 0;
      v18 = 0x72756769666E6F63;
      while (1)
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v7 + 16))(v11, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
        if (sub_258AFFC14() == v18 && v19 == 0xED00006E6F697461)
        {
          break;
        }

        v20 = v18;
        v21 = sub_258B03454();

        if (v21)
        {
          goto LABEL_11;
        }

        ++v17;
        result = (*(v7 + 8))(v11, v6);
        v18 = v20;
        if (v39 == v17)
        {
          goto LABEL_9;
        }
      }

LABEL_11:

      v22 = v36;
      (*(v7 + 32))(v36, v11, v6);
      sub_258AFFC24();
      v24 = v23;
      (*(v7 + 8))(v22, v6);
      v25 = v37;
      a1 = v38;
      if (v24)
      {
        v26 = sub_258AFFE54();
        v28 = v27;

        if (v28 >> 60 != 15)
        {
          v30 = sub_258AFFB54();
          v31 = *(v30 + 48);
          v32 = *(v30 + 52);
          swift_allocObject();
          sub_258AFFB44();
          v33 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
          sub_258AD6FD8(&qword_27F9713D0, type metadata accessor for StateOfMindEntryModel.Configuration);
          sub_258AFFB34();
          sub_258AD6768(v26, v28);

          v34 = *(*(v33 - 8) + 56);
          v34(v25, 0, 1, v33);
          sub_258AD67D0(v25, a1);
          return (v34)(a1, 0, 1, v33);
        }
      }
    }

    else
    {
LABEL_9:

      a1 = v38;
    }
  }

  v29 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
}

void (*URLComponents.route.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = sub_258AFFC84();
  *a1 = 47;
  *(a1 + 8) = 0xE100000000000000;
  v15[2] = a1;
  v5 = sub_2589BBCF8(0x7FFFFFFFFFFFFFFFLL, 1, sub_258AD7088, v15, v3, v4, 0x2FuLL);
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    sub_258B003E4();

    v10 = MEMORY[0x259C93160](v6, v7, v8, v9);
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    Route.init(rawValue:)(v13);
  }

  else
  {

    *(a1 + 24) = 8;
  }

  return sub_258AD51EC;
}

void sub_258AD51EC(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (a2)
  {
    v5 = *(a1 + 24);
    v4 = &v5;
  }

  else
  {
    v6 = *(a1 + 24);
    v4 = &v6;
  }

  URLComponents.route.setter(v4);
}

uint64_t (*URLComponents.presentWithAnimation.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = URLComponents.presentWithAnimation.getter();
  return sub_258AD527C;
}

uint64_t sub_258AD52A4(uint64_t a1)
{
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_258AD6AEC(a1, &v7 - v4, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  return URLComponents.initialConfiguration.setter(v5);
}

void (*URLComponents.initialConfiguration.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_258AD6714(0, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  URLComponents.initialConfiguration.getter(v5);
  return sub_258AD5428;
}

void sub_258AD5440(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    sub_258AD6AEC(a1[2], v4, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration);
    a3(v4);
    sub_258AD6A6C(v5, qword_280DF8F38, type metadata accessor for StateOfMindEntryModel.Configuration, sub_258AD6714);
  }

  else
  {
    a3(a1[2]);
  }

  free(v5);

  free(v4);
}

unint64_t sub_258AD5508(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_258B03514();
  sub_258B02B74();
  v6 = sub_258B03554();

  return sub_258AD58F8(a1, a2, v6);
}

unint64_t sub_258AD5580(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_258B03514();
  sub_258B02B74();

  v4 = sub_258B03554();

  return sub_258AD59B0(a1, v4);
}

unint64_t sub_258AD5660(char a1)
{
  v3 = *(v1 + 40);
  sub_258B03514();
  sub_258B02B74();

  v4 = sub_258B03554();

  return sub_258AD5B64(a1, v4);
}

unint64_t sub_258AD5720(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_258B02B14();
  sub_258B03514();
  sub_258B02B74();
  v4 = sub_258B03554();

  return sub_258AD5CDC(a1, v4);
}

unint64_t sub_258AD57B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_258B03134();

  return sub_258AD5DE0(a1, v5);
}

void sub_258AD57F8()
{
  if (!qword_27F9713B8)
  {
    sub_258AD6D6C(255, &unk_27F9713C0);
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9713B8);
    }
  }
}

unint64_t sub_258AD5860(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_258B029C4();
  sub_258AD6FD8(&qword_27F9706A0, MEMORY[0x277CCB6A8]);
  v5 = sub_258B02A14();

  return sub_258AD5EA8(a1, v5);
}

unint64_t sub_258AD58F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_258B03454())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_258AD59B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0x6F65675F64617571;
        v8 = 0xED0000797274656DLL;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000013;
          v8 = 0x8000000258B362F0;
        }

        v9 = a1;
        if (!a1)
        {
LABEL_16:
          v11 = 0x8000000258B362D0;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0xD000000000000012;
        v8 = 0x8000000258B362D0;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD000000000000013;
      }

      else
      {
        v10 = 0x6F65675F64617571;
      }

      if (v9 == 1)
      {
        v11 = 0x8000000258B362F0;
      }

      else
      {
        v11 = 0xED0000797274656DLL;
      }

      if (v7 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_18:
      v12 = sub_258B03454();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_258AD5B64(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000017;
      v6 = 0xD000000000000014;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "compute_final_composite";
      }

      else
      {
        v6 = 0xD000000000000011;
        v7 = "compute_bg_composite";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000017;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ont";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000011;
        v10 = a1 == 1 ? "compute_final_composite" : "compute_bg_composite";
      }

      else
      {
        v10 = "ont";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_258B03454();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_258AD5CDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_258B02B14();
      v9 = v8;
      if (v7 == sub_258B02B14() && v9 == v10)
      {
        break;
      }

      v12 = sub_258B03454();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_258AD5DE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_258A9A3FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C93740](v9, a1);
      sub_258A97AF8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_258AD5EA8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_258B029C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_258AD6FD8(&qword_27F9702C0, MEMORY[0x277CCB6A8]);
      v16 = sub_258B02AA4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_258AD6068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258A9A3A0(0, &qword_27F970700);
    v3 = sub_258B032E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_258AD6D00(v4, &v13, &qword_27F971408);
      v5 = v13;
      v6 = v14;
      result = sub_258AD5508(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_258A2D784(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_258AD61CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258AD6F38();
    v3 = sub_258B032E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_258AD7020(v4, &v11, sub_258AC9678);
      v5 = v11;
      result = sub_258AD5720(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_258A2D784(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_258AD62DC(uint64_t a1)
{
  sub_258AD6DD0();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_258AD6E8C();
    v9 = sub_258B032E4();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_258AD7020(v11, v7, sub_258AD6DD0);
      result = sub_258AD5860(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_258B029C4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_258AD64DC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_258B032E4();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 8);
      v9 = *i;
      swift_unknownObjectRetain();
      result = a3(v8);
      if (v11)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + result) = v8;
      *(v6[7] + 8 * result) = v9;
      v12 = v6[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v6[2] = v14;
      if (!--v3)
      {

        return v6;
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

unint64_t sub_258AD65D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258A9A3A0(0, &qword_27F970708);
    v3 = sub_258B032E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_258AD6D00(v4, v13, &unk_27F9713C0);
      result = sub_258AD57B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_258A2D784(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_258AD6714(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258AD6768(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258AD677C(a1, a2);
  }

  return a1;
}

uint64_t sub_258AD677C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_258AD67D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AD6834(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo14NSUserActivityC14MentalHealthUIE6pluginABvgZ_0()
{
  v11 = 46;
  v12 = 0xE100000000000000;
  v10[2] = &v11;
  v0 = sub_2589BBCF8(1, 1, sub_258AD7088, v10, 0xD000000000000022, 0x8000000258B396C0, "SKIP_BUTTON_TITLE");
  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[7];
    sub_258B003E4();

    MEMORY[0x259C93160](v1, v2, v3, v4);

    v5 = sub_258B00284();

    sub_258AD57F8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    v11 = sub_258AD1638(0);
    v12 = v7;
    sub_258B03154();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = 1;
    sub_258AD65D0(inited);
    swift_setDeallocating();
    sub_258AD6A6C(inited + 32, &unk_27F9713C0, MEMORY[0x277D84030], sub_258AD6D6C);
    v8 = sub_258B029E4();

    [v5 addUserInfoEntriesFromDictionary_];

    return v5;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_258AD6A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_258AD6AEC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_258AD6714(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_258AD6B5C()
{
  result = qword_27F9713F8;
  if (!qword_27F9713F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9713F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Route(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Route(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258AD6D00(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_258AD6D6C(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258AD6D6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258AD6DD0()
{
  if (!qword_27F971410)
  {
    sub_258B029C4();
    sub_258AD6E40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971410);
    }
  }
}

unint64_t sub_258AD6E40()
{
  result = qword_27F970690;
  if (!qword_27F970690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F970690);
  }

  return result;
}

void sub_258AD6E8C()
{
  if (!qword_27F971420)
  {
    sub_258B029C4();
    sub_258AD6E40();
    sub_258AD6FD8(&qword_27F9706A0, MEMORY[0x277CCB6A8]);
    v0 = sub_258B032F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971420);
    }
  }
}

void sub_258AD6F38()
{
  if (!qword_27F971428)
  {
    type metadata accessor for Option(255);
    sub_258AD6FD8(&qword_27F9711B0, type metadata accessor for Option);
    v0 = sub_258B032F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971428);
    }
  }
}

uint64_t sub_258AD6FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258AD7020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id StateOfMindCalendarViewController.__allocating_init(healthStore:dateToFocusOn:verticalSizeClass:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_258ADCEE8(a1, a2, a3);

  return v8;
}

id sub_258AD70FC()
{
  v1 = qword_27F971458;
  v2 = *(v0 + qword_27F971458);
  if (v2)
  {
    v3 = *(v0 + qword_27F971458);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_258AD7170()
{
  v1 = qword_27F971460;
  v2 = *(v0 + qword_27F971460);
  if (v2)
  {
    v3 = *(v0 + qword_27F971460);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = HKDateFormatterFromTemplate();
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_258AD71E4()
{
  v1 = v0 + qword_27F97AC38;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_258AD7234(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F97AC38;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_258AD72A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F97AC38;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_258AD7340;
}

void sub_258AD7340(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id StateOfMindCalendarViewController.init(healthStore:dateToFocusOn:verticalSizeClass:)(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_258ADCEE8(a1, a2, a3);

  return v4;
}

double sub_258AD73F8()
{
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v5 scaledValueForValue_];
  v7 = v6;

  v8 = v7 + 71.0;
  sub_258B00364();
  v9 = sub_258B00374();
  v10 = sub_258B02EA4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446466;
    v13 = sub_258B035A4();
    v15 = sub_2589F1F78(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v8;
    _os_log_impl(&dword_2589A1000, v9, v10, "[%{public}s] calculated cell height: %f", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C945C0](v12, -1, -1);
    MEMORY[0x259C945C0](v11, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v8;
}

id StateOfMindCalendarViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StateOfMindCalendarViewController.init(coder:)()
{
  v1 = qword_27F971450;
  v2 = sub_258B00084();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + qword_27F971458) = 0;
  *(v0 + qword_27F971460) = 0;
  *(v0 + qword_27F97AC38 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_258B03294();
  __break(1u);
}

void sub_258AD7728(uint64_t a1)
{
  v2 = qword_27F971450;
  v3 = sub_258B00084();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + qword_27F971458) = 0;
  *(a1 + qword_27F971460) = 0;
  *(a1 + qword_27F97AC38 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_258B03294();
  __break(1u);
}

void sub_258AD7804()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x277D83D88];
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v90 - v6;
  v96 = sub_258B00084();
  v8 = *(v96 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v96);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ADD9F4(0, &unk_27F971470, sub_258A98A64, v3);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v92 = &v90 - v14;
  v15 = sub_258B00384();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v20 = sub_258B00374();
  v21 = sub_258B02EA4();
  v22 = os_log_type_enabled(v20, v21);
  v94 = v7;
  v95 = v8;
  v93 = v11;
  v91 = ObjectType;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v97 = v24;
    *v23 = 136446210;
    v25 = sub_258B035A4();
    v27 = sub_2589F1F78(v25, v26, &v97);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2589A1000, v20, v21, "[%{public}s] View did load", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x259C945C0](v24, -1, -1);
    MEMORY[0x259C945C0](v23, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  v28 = type metadata accessor for StateOfMindCalendarViewController();
  v100.receiver = v1;
  v100.super_class = v28;
  objc_msgSendSuper2(&v100, sel_viewDidLoad);
  [v1 setClearsSelectionOnViewWillAppear_];
  v29 = [v1 collectionView];
  if (!v29)
  {
    __break(1u);
    goto LABEL_25;
  }

  v30 = v29;
  v31 = objc_opt_self();
  v32 = [v31 systemBackgroundColor];
  [v30 setBackgroundColor_];

  v33 = [v1 collectionView];
  if (!v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = v33;
  [v33 setShowsVerticalScrollIndicator_];

  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v35;
  v37 = sub_258B02874();
  [v36 setDataSource_];

  v38 = [v1 collectionView];
  if (!v38)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = v38;
  if (HKUICalendarLocaleIsRightToLeft())
  {
    v40 = 4;
  }

  else
  {
    v40 = 3;
  }

  [v39 setSemanticContentAttribute_];

  v41 = [v1 collectionView];
  if (!v41)
  {
    goto LABEL_28;
  }

  v42 = v41;
  v90 = v28;
  type metadata accessor for StateOfMindCalendarDayCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = sub_258B02AD4();
  [v42 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v44];

  v45 = [v1 collectionView];
  if (!v45)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v46 = v45;
  sub_258B02854();
  v47 = swift_getObjCClassFromMetadata();
  v48 = *MEMORY[0x277D767D8];
  sub_258B02844();
  v49 = sub_258B02AD4();

  [v46 registerClass:v47 forSupplementaryViewOfKind:v48 withReuseIdentifier:v49];

  v50 = [v1 collectionView];
  if (!v50)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v51 = v50;
  type metadata accessor for StateOfMindCalendarSpacerCell();
  v52 = swift_getObjCClassFromMetadata();
  v53 = sub_258B02AD4();
  [v51 registerClass:v52 forCellWithReuseIdentifier:v53];

  v99 = 0;
  sub_258B02114();
  sub_258ADDAA4();
  v55 = objc_allocWithZone(v54);
  v56 = sub_258B011C4();
  v57 = [v56 view];

  if (!v57)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v58 = [v31 clearColor];
  [v57 setBackgroundColor_];

  v59 = [v1 navigationItem];
  [v59 setTitleView_];

  v60 = sub_258B02894();
  sub_258B02714();

  v61 = [v1 navigationItem];
  [objc_opt_self() preferredHeight];
  v63 = [objc_allocWithZone(MEMORY[0x277D12B40]) initWithFrame:HKUICalendarLocaleIsRightToLeft() shouldSupportRTL:{0.0, 0.0, 0.0, v62}];
  [v63 layoutMargins];
  [v63 setLayoutMargins_];
  [v63 layoutMargins];
  [v63 setLayoutMargins_];
  v64 = [objc_allocWithZone(MEMORY[0x277D76118]) initWithContentView_];

  [v61 _setBottomPalette_];
  v65 = [v1 navigationItem];
  v66 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v1 action:sel_dismissViewController];
  [v65 setLeftBarButtonItem_];

  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  v98 = v90;
  v97 = v1;
  v67 = v1;
  v68 = sub_258B02AD4();

  v69 = v98;
  if (v98)
  {
    v70 = __swift_project_boxed_opaque_existential_1Tm(&v97, v98);
    v71 = *(v69 - 8);
    v72 = *(v71 + 64);
    MEMORY[0x28223BE20](v70);
    v74 = &v90 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v71 + 16))(v74);
    v75 = sub_258B03444();
    (*(v71 + 8))(v74, v69);
    __swift_destroy_boxed_opaque_existential_1(&v97);
  }

  else
  {
    v75 = 0;
  }

  v76 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v68 style:0 target:v75 action:sel_todayButtonTapped];

  swift_unknownObjectRelease();
  v77 = [v67 navigationItem];
  [v77 setRightBarButtonItem_];

  v78 = *&v67[qword_27F971498];
  v97 = sub_258B02774();
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  v81 = v91;
  *(v80 + 16) = v79;
  *(v80 + 24) = v81;
  sub_258ADDB5C();
  sub_258ADEAB8(&qword_27F9714A8, sub_258ADDB5C);
  sub_258B005D4();

  swift_beginAccess();
  sub_258B004C4();
  swift_endAccess();

  v82 = qword_27F971450;
  swift_beginAccess();
  v83 = v94;
  sub_258ADE864(&v67[v82], v94, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v85 = v95;
  v84 = v96;
  v86 = *(v95 + 48);
  if (v86(v83, 1, v96) == 1)
  {
    v87 = v93;
    sub_258B00074();
    if (v86(v83, 1, v84) != 1)
    {
      sub_258ADE8E4(v83, &qword_27F96EBF0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    v87 = v93;
    (*(v85 + 32))(v93, v83, v84);
  }

  v88 = v92;
  sub_258AD8E38(v87);
  (*(v85 + 8))(v87, v84);
  sub_258A98A64();
  (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
  sub_258B02764();
  [*&v67[qword_27F9714B8] registerObserver_];
}

void sub_258AD84A0(uint64_t a1)
{
  sub_258A98A64();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B00384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v30 = v7;
    sub_258B00364();
    sub_258ADE954(a1, v6, sub_258A98A64);
    v14 = sub_258B00374();
    v15 = sub_258B02EA4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = a1;
      v17 = v16;
      v28 = swift_slowAlloc();
      v33 = v28;
      *v17 = 136446466;
      v18 = sub_258B035A4();
      v20 = sub_2589F1F78(v18, v19, &v33);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_258B029C4();
      sub_258B03274();
      MEMORY[0x259C931B0](3943982, 0xE300000000000000);
      v21 = *(v3 + 36);
      sub_258B03274();
      v22 = v31;
      v23 = v32;
      sub_258ADE9BC(v6, sub_258A98A64);
      v24 = sub_2589F1F78(v22, v23, &v33);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_2589A1000, v14, v15, "[%{public}s] Received days updated: %s", v17, 0x16u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v25, -1, -1);
      v26 = v17;
      a1 = v29;
      MEMORY[0x259C945C0](v26, -1, -1);
    }

    else
    {

      sub_258ADE9BC(v6, sub_258A98A64);
    }

    (*(v8 + 8))(v11, v30);
    sub_258AD87EC(a1);
  }
}

uint64_t sub_258AD87EC(uint64_t a1)
{
  sub_258A82830();
  v60 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v47 - v6;
  sub_258A98A64();
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_258B00274();
  v63 = *(v61 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258B029C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v62 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v57 = v8;
  v22 = *(v8 + 36);
  v56 = sub_258ADEAB8(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
  sub_258B030E4();
  v23 = v70;
  v24 = MEMORY[0x277D84F90];
  if (v70)
  {
    v70 = MEMORY[0x277D84F90];
    sub_258AA934C(0, v23 & ~(v23 >> 63), 0);
    v68 = v70;
    v52 = *(v16 + 16);
    v53 = v16 + 16;
    result = v52(v21, a1, v15);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v54 = v63 + 32;
      v55 = v22;
      v67 = (v16 + 32);
      v27 = v62;
      v50 = v14;
      v49 = v21;
      v48 = v23;
      v47 = a1;
      v51 = (v16 + 8);
      v66 = v11;
      while (!__OFADD__(v26, 1))
      {
        v64 = v26 + 1;
        v65 = v26;
        result = sub_258B02874();
        if (!result)
        {
          goto LABEL_19;
        }

        v28 = result;
        sub_258B02804();

        v29 = v68;
        v70 = v68;
        v31 = *(v68 + 16);
        v30 = *(v68 + 24);
        v32 = v21;
        if (v31 >= v30 >> 1)
        {
          sub_258AA934C(v30 > 1, v31 + 1, 1);
          v29 = v70;
        }

        *(v29 + 16) = v31 + 1;
        v33 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v68 = v29;
        (*(v63 + 32))(v29 + v33 + *(v63 + 72) * v31, v14, v61);
        v34 = *v67;
        (*v67)(v27, v32, v15);
        sub_258ADEAB8(&qword_27F971480, MEMORY[0x277CCB6A8]);
        v35 = v55;
        result = sub_258B02A74();
        if ((result & 1) == 0)
        {
          goto LABEL_15;
        }

        v36 = v58;
        v37 = a1;
        v38 = a1;
        v39 = v52;
        v52(v58, v37, v15);
        v40 = v60;
        v39(v36 + *(v60 + 48), v38 + v35, v15);
        v41 = v59;
        sub_258ADE954(v36, v59, sub_258A82830);
        v42 = *(v40 + 48);
        v34(v66, v41, v15);
        v43 = *v51;
        (*v51)(v41 + v42, v15);
        sub_258ADE7FC(v36, v41, sub_258A82830);
        v44 = *(v40 + 48);
        v45 = v66;
        v27 = v62;
        v34(&v66[*(v57 + 36)], (v41 + v44), v15);
        v43(v41, v15);
        result = sub_258B02A74();
        if ((result & 1) == 0)
        {
          goto LABEL_16;
        }

        v46 = sub_258B02A54();
        result = sub_258ADE9BC(v45, sub_258A98A64);
        if ((v46 & 1) == 0)
        {
          goto LABEL_17;
        }

        v69 = 1;
        v21 = v49;
        sub_258B030D4();
        result = (v43)(v27, v15);
        v26 = v65 + 1;
        a1 = v47;
        v14 = v50;
        if (v64 == v48)
        {
          v43(v21, v15);
          v24 = v68;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_13:
    sub_258ADCB24(v24);
  }

  return result;
}

uint64_t sub_258AD8E38(uint64_t a1)
{
  v3 = sub_258B00224();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_258B00084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B029C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  v15 = [*(v1 + qword_27F9714B8) calendar];
  sub_258B001A4();

  sub_258B02964();
  v16 = sub_258B02894();
  sub_258B02724();

  sub_258B02914();
  return (*(v11 + 8))(v14, v10);
}

void sub_258AD904C(void *a1)
{
  v1 = a1;
  sub_258AD7804();
}

id sub_258AD9094()
{
  v1 = v0;
  v2 = sub_258B00274();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC9578];
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = sub_258B00084();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StateOfMindCalendarViewController();
  v27.receiver = v0;
  v27.super_class = v19;
  objc_msgSendSuper2(&v27, sel_viewDidLayoutSubviews);
  v20 = qword_27F971450;
  swift_beginAccess();
  sub_258ADE864(v0 + v20, v13, &qword_27F96EBF0, v6);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_258ADE8E4(v13, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  }

  (*(v15 + 32))(v18, v13, v14);
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v22 = result;
  result = sub_258B02874();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v23 = result;
  sub_258B027F4();

  v24 = sub_258B00244();
  (*(v25 + 8))(v5, v26);
  [v22 scrollToItemAtIndexPath:v24 atScrollPosition:2 animated:0];

  (*(v15 + 8))(v18, v14);
  (*(v15 + 56))(v11, 1, 1, v14);
  swift_beginAccess();
  sub_258ADDBC4(v11, v1 + v20);
  return swift_endAccess();
}

void sub_258AD9414(void *a1)
{
  v1 = a1;
  sub_258AD9094();
}

id sub_258AD945C()
{
  sub_258AD94FC();
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result indexPathsForVisibleItems];

    sub_258B00274();
    v4 = sub_258B02C74();

    sub_258ADCB24(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_258AD94FC()
{
  sub_258A82830();
  v126 = v1;
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v124 = &v123 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_258ADD9F4(0, &unk_27F971470, sub_258A98A64, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v127 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v123 - v12;
  v13 = sub_258B029C4();
  v130 = *(v13 - 8);
  v14 = *(v130 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v129 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v131 = &v123 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v133 = &v123 - v20;
  MEMORY[0x28223BE20](v19);
  v132 = &v123 - v21;
  v22 = sub_258B00274();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v135 = &v123 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v146 = &v123 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v145 = &v123 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v144 = &v123 - v35;
  MEMORY[0x28223BE20](v34);
  v161 = &v123 - v36;
  sub_258ADD9F4(0, &qword_27F971568, MEMORY[0x277CC9AF8], v7);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v152 = &v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v136 = &v123 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v143 = &v123 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v142 = &v123 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v141 = &v123 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v140 = &v123 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v123 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = *(v23 + 56);
  v159 = &v123 - v55;
  v54();
  v154 = v23 + 56;
  v155 = v53;
  v153 = v54;
  (v54)(v53, 1, 1, v22);
  v56 = v0;
  v57 = [v0 collectionView];
  if (!v57)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = v57;
  v59 = [v57 preparedCells];

  if (!v59)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v160 = v22;
  sub_2589F4488(0, &qword_27F971570, 0x277D752A8);
  v60 = sub_258B02C74();

  v137 = v23;
  v128 = v13;
  v123 = v5;
  v134 = v27;
  if (v60 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258B032B4())
  {
    v62 = v152;
    v63 = v60;
    v64 = v56;
    v65 = v155;
    if (!i)
    {
      break;
    }

    v56 = 0;
    v150 = v60 & 0xFFFFFFFFFFFFFF8;
    v151 = v60 & 0xC000000000000001;
    v157 = (v137 + 32);
    v66 = (v137 + 48);
    v147 = (v137 + 8);
    v148 = (v137 + 16);
    v149 = i;
    v139 = v64;
    v138 = v60;
    while (1)
    {
      if (v151)
      {
        v67 = MEMORY[0x259C937C0](v56, v63);
      }

      else
      {
        if (v56 >= *(v150 + 16))
        {
          goto LABEL_43;
        }

        v67 = *(v63 + 8 * v56 + 32);
      }

      v68 = v67;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      v158 = (v56 + 1);
      v69 = [v64 collectionView];
      if (!v69)
      {
        goto LABEL_46;
      }

      v60 = v69;
      v70 = [v69 indexPathForCell_];

      v71 = v160;
      if (v70)
      {
        v72 = v144;
        sub_258B00254();

        v73 = *v157;
        (*v157)(v161, v72, v71);
        v74 = v141;
        sub_258ADE864(v159, v141, &qword_27F971568, MEMORY[0x277CC9AF8]);
        v75 = *v66;
        v76 = (*v66)(v74, 1, v71);
        v77 = v145;
        v156 = v73;
        if (v76 == 1)
        {
          (*v148)(v145, v161, v71);
          if (v75(v74, 1, v71) != 1)
          {
            sub_258ADE8E4(v74, &qword_27F971568, MEMORY[0x277CC9AF8]);
          }
        }

        else
        {
          v73(v145, v74, v71);
        }

        sub_258ADEAB8(&qword_27F971578, MEMORY[0x277CC9AF8]);
        v78 = v161;
        v79 = v77;
        v80 = sub_258B02A54();
        sub_258ADE8E4(v159, &qword_27F971568, MEMORY[0x277CC9AF8]);
        if (v80)
        {
          (*v147)(v79, v71);
          v81 = v140;
          (*v148)(v140, v78, v71);
        }

        else
        {
          v81 = v140;
          v156(v140, v79, v71);
        }

        (v153)(v81, 0, 1, v71);
        sub_258ADE768(v81, v159);
        v82 = v143;
        sub_258ADE864(v155, v143, &qword_27F971568, MEMORY[0x277CC9AF8]);
        if (v75(v82, 1, v71) == 1)
        {
          v83 = v146;
          (*v148)(v146, v161, v160);
          v84 = v75(v82, 1, v160);
          v71 = v160;
          v85 = v83;
          if (v84 != 1)
          {
            sub_258ADE8E4(v82, &qword_27F971568, MEMORY[0x277CC9AF8]);
          }
        }

        else
        {
          v85 = v146;
          v156(v146, v82, v71);
        }

        v86 = v161;
        v87 = sub_258B02A64();

        v88 = v85;
        v65 = v155;
        sub_258ADE8E4(v155, &qword_27F971568, MEMORY[0x277CC9AF8]);
        if (v87)
        {
          v89 = v88;
        }

        else
        {
          v89 = v86;
        }

        if (v87)
        {
          v88 = v86;
        }

        (*v147)(v89, v71);
        v60 = v142;
        v156(v142, v88, v71);
        (v153)(v60, 0, 1, v71);
        sub_258ADE768(v60, v65);
        v64 = v139;
        v63 = v138;
      }

      else
      {
      }

      ++v56;
      v62 = v152;
      if (v158 == v149)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_33:

  v90 = v159;
  v91 = v136;
  sub_258ADE864(v159, v136, &qword_27F971568, MEMORY[0x277CC9AF8]);
  v92 = v137;
  v93 = *(v137 + 48);
  v94 = v160;
  if (v93(v91, 1, v160) == 1)
  {
    sub_258ADE8E4(v65, &qword_27F971568, MEMORY[0x277CC9AF8]);
    v95 = v90;
LABEL_41:
    v122 = MEMORY[0x277CC9AF8];
    sub_258ADE8E4(v95, &qword_27F971568, MEMORY[0x277CC9AF8]);
    sub_258ADE8E4(v91, &qword_27F971568, v122);
    return;
  }

  v96 = v91;
  v97 = *(v92 + 32);
  v98 = v135;
  v97(v135, v96, v94);
  sub_258ADE864(v65, v62, &qword_27F971568, MEMORY[0x277CC9AF8]);
  if (v93(v62, 1, v94) == 1)
  {
    (*(v92 + 8))(v98, v94);
    sub_258ADE8E4(v65, &qword_27F971568, MEMORY[0x277CC9AF8]);
    v95 = v159;
    v91 = v62;
    goto LABEL_41;
  }

  v97(v134, v62, v94);
  v99 = sub_258B02874();
  if (!v99)
  {
    goto LABEL_49;
  }

  v100 = v99;
  v101 = v132;
  sub_258B027E4();

  v102 = sub_258B02874();
  v103 = v128;
  v104 = v131;
  if (v102)
  {
    v105 = v102;
    sub_258B027E4();

    v106 = v129;
    sub_258B02924();
    sub_258B02944();
    v107 = v130;
    v108 = *(v130 + 8);
    v158 = (v130 + 8);
    v161 = v108;
    (v108)(v106, v103);
    sub_258ADEAB8(&qword_27F971480, MEMORY[0x277CCB6A8]);
    if (sub_258B02A74())
    {
      v109 = v124;
      (*(v107 + 16))(v124, v101, v103);
      v110 = v126;
      v111 = *(v107 + 32);
      v111(v109 + *(v126 + 48), v104, v103);
      v112 = v123;
      sub_258ADE954(v109, v123, sub_258A82830);
      v113 = *(v110 + 48);
      v114 = v125;
      v111(v125, v112, v103);
      (v161)(v112 + v113, v103);
      sub_258ADE7FC(v109, v112, sub_258A82830);
      v115 = *(v110 + 48);
      sub_258A98A64();
      v117 = v116;
      v111(v114 + *(v116 + 36), (v112 + v115), v103);
      v118 = v161;
      (v161)(v112, v103);
      (*(*(v117 - 8) + 56))(v114, 0, 1, v117);
      v119 = *&v64[qword_27F971498];
      sub_258ADE864(v114, v127, &unk_27F971470, sub_258A98A64);
      sub_258B02764();
      sub_258ADE8E4(v114, &unk_27F971470, sub_258A98A64);
      (v118)(v133, v103);
      (v118)(v132, v103);
      v120 = *(v137 + 8);
      v121 = v160;
      v120(v134, v160);
      v120(v135, v121);
      v91 = v159;
      v95 = v155;
      goto LABEL_41;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_50:
  __break(1u);
}

void sub_258ADA4D0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v7 = sub_258B00374();
  v8 = sub_258B02EA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v11 = sub_258B035A4();
    v17 = v2;
    v13 = sub_2589F1F78(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2589A1000, v7, v8, "[%{public}s] preferred content size changed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C945C0](v10, -1, -1);
    MEMORY[0x259C945C0](v9, -1, -1);

    (*(v3 + 8))(v6, v17);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v14 = sub_258B02894();
  sub_258AD73F8();
  sub_258B02704();

  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    [v15 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_258ADA6F8(void *a1)
{
  v1 = a1;
  sub_258ADA4D0();
}

void sub_258ADA740()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_258B00084();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B00274();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258B00384();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v15 = sub_258B00374();
  v16 = sub_258B02EA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v37 = v2;
    v20 = v19;
    v41 = v19;
    *v18 = 136446210;
    v21 = sub_258B035A4();
    ObjectType = v6;
    v23 = sub_2589F1F78(v21, v22, &v41);
    v35 = v11;
    v24 = v8;
    v25 = v23;
    v6 = ObjectType;

    *(v18 + 4) = v25;
    v8 = v24;
    _os_log_impl(&dword_2589A1000, v15, v16, "[%{public}s] scrolling to today's date", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v26 = v20;
    v2 = v37;
    MEMORY[0x259C945C0](v26, -1, -1);
    v27 = v18;
    v1 = v36;
    MEMORY[0x259C945C0](v27, -1, -1);

    (*(v40 + 8))(v14, v35);
  }

  else
  {

    (*(v40 + 8))(v14, v11);
  }

  v28 = [v1 collectionView];
  if (v28)
  {
    v29 = v28;
    v30 = sub_258B02874();
    if (v30)
    {
      v31 = v30;
      sub_258B00074();
      v32 = v39;
      sub_258B027F4();

      (*(v3 + 8))(v6, v2);
      v33 = sub_258B00244();
      (*(v8 + 8))(v32, v7);
      [v29 scrollToItemAtIndexPath:v33 atScrollPosition:2 animated:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_258ADAAEC(void *a1)
{
  v1 = a1;
  sub_258ADA740();
}

id StateOfMindCalendarViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id StateOfMindCalendarViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_258B02AD4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_258ADACC4()
{
  sub_258ADE8E4(v0 + qword_27F971450, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v1 = *(v0 + qword_27F971498);

  v2 = *(v0 + qword_27F9714B0);

  v3 = qword_27F9714C0;
  v4 = sub_258B029C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = v0 + qword_27F97AC38;

  return sub_258A105B0(v5);
}

id StateOfMindCalendarViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindCalendarViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258ADADF0(uint64_t a1)
{
  sub_258ADE8E4(a1 + qword_27F971450, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v2 = *(a1 + qword_27F971498);

  v3 = *(a1 + qword_27F9714B0);

  v4 = qword_27F9714C0;
  v5 = sub_258B029C4();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = a1 + qword_27F97AC38;

  return sub_258A105B0(v6);
}

id StateOfMindCalendarViewController.calendarDataSource(_:spacerCellForItemIn:indexPath:)(uint64_t a1, void *a2)
{
  v3 = sub_258B02AD4();
  v4 = sub_258B00244();
  v5 = [a2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  return v5;
}

id sub_258ADAFA8(uint64_t a1, void *a2)
{
  v3 = sub_258B02AD4();
  v4 = sub_258B00244();
  v5 = [a2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  return v5;
}

void StateOfMindCalendarViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for StateOfMindCalendarDayCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a2;
    sub_258ADB0CC(v6, a3);
  }
}

void sub_258ADB0CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_258B00204();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_258B00224();
  v78 = *(v88 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v88);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_258B00084();
  v76 = *(v77 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v86 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_258B029C4();
  v85 = *(v81 - 8);
  v15 = v85[8];
  v16 = MEMORY[0x28223BE20](v81);
  v74 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = v70 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v83 = v70 - v21;
  MEMORY[0x28223BE20](v20);
  v84 = v70 - v22;
  sub_258ADD9F4(0, &unk_27F971540, type metadata accessor for StateOfMindCalendarDay, MEMORY[0x277D83D88]);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v87 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v70 - v27;
  v29 = type metadata accessor for StateOfMindCalendarDay();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a2;
  v34 = sub_258ADCCDC();
  if (v34)
  {
    v82 = v34;
    v35 = OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day;
    swift_beginAccess();
    sub_258ADE864(a1 + v35, v28, &unk_27F971540, type metadata accessor for StateOfMindCalendarDay);
    v72 = v30;
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      v70[0] = v29;
      v70[1] = a1;
      sub_258ADE8E4(v28, &unk_27F971540, type metadata accessor for StateOfMindCalendarDay);
      [v82 dayIndex];
      v36 = v84;
      sub_258B02924();
      v71 = v3;
      v37 = *(v3 + qword_27F9714B8);
      v38 = [v37 calendar];
      sub_258B001A4();

      sub_258B029B4();
      v78 = *(v78 + 8);
      (v78)(v12, v88);
      v39 = [v37 calendar];
      sub_258B001A4();

      v41 = v79;
      v40 = v80;
      (*(v79 + 104))(v9, *MEMORY[0x277CC9968], v80);
      v42 = sub_258B00214();
      (*(v41 + 8))(v9, v40);
      (v78)(v12, v88);
      v43 = v85[2];
      v44 = v36;
      v45 = v71;
      v46 = v81;
      v43(v83, v36, v81);
      v47 = sub_258AD70FC();
      v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v49 = [v47 stringFromNumber_];

      if (!v49)
      {
        __break(1u);
        return;
      }

      v50 = sub_258B02B14();
      v52 = v51;

      v43(v73, v44, v46);
      v53 = qword_27F9714C0;
      swift_beginAccess();
      v43(v74, (v45 + v53), v46);
      LOBYTE(v53) = sub_258B002B4();
      v54 = sub_258B00264();
      v55 = MEMORY[0x277D84F90];
      *v33 = 0;
      *(v33 + 1) = v55;
      *(v33 + 2) = v50;
      *(v33 + 3) = v52;
      v56 = v70[0];
      v57 = v83;
      v43(&v33[*(v70[0] + 28)], v83, v46);
      v33[v56[8]] = v53;
      *&v33[v56[9]] = v54;
      v90 = 0x7865646E49796144;
      v91 = 0xE90000000000003ALL;
      v89 = sub_258B02984();
      v58 = sub_258B03414();
      MEMORY[0x259C931B0](v58);

      v60 = v90;
      v59 = v91;
      v61 = v85[1];
      v61(v57, v46);
      (*(v76 + 8))(v86, v77);
      v61(v84, v46);
      v29 = v56;
      v62 = &v33[v56[10]];
      *v62 = v60;
      *(v62 + 1) = v59;
      v63 = &v33[v56[11]];
      *v63 = v60;
      *(v63 + 1) = v59;
      sub_258B003E4();
    }

    else
    {
      sub_258ADE7FC(v28, v33, type metadata accessor for StateOfMindCalendarDay);
    }

    v64 = v82;
    v65 = [v82 dailyStateOfMind];

    *v33 = v65;
    sub_258A767F0();
    v66 = [v64 momentaryStatesOfMind];
    sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
    v67 = sub_258B02C74();

    v68 = *(v33 + 1);

    *(v33 + 1) = v67;
    sub_258A767F0();
    v69 = v87;
    sub_258ADE954(v33, v87, type metadata accessor for StateOfMindCalendarDay);
    (*(v72 + 56))(v69, 0, 1, v29);
    sub_258ABCF78(v69);

    sub_258ADE9BC(v33, type metadata accessor for StateOfMindCalendarDay);
  }
}

uint64_t sub_258ADB9D0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_258B00274();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00254();
  type metadata accessor for StateOfMindCalendarDayCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a4;
    v14 = a1;
    sub_258ADB0CC(v12, v10);
  }

  return (*(v7 + 8))(v10, v6);
}

void StateOfMindCalendarViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v108 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_258B00384();
  v106 = *(v5 - 8);
  v107 = v5;
  v6 = *(v106 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v101 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v92 - v10;
  MEMORY[0x28223BE20](v9);
  v94 = &v92 - v11;
  v12 = sub_258B00224();
  v97 = *(v12 - 8);
  v98 = v12;
  v13 = *(v97 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v96 = &v92 - v18;
  v102 = sub_258B00084();
  v95 = *(v102 - 8);
  v19 = *(v95 + 64);
  v20 = MEMORY[0x28223BE20](v102);
  v92 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v92 - v23;
  MEMORY[0x28223BE20](v22);
  v99 = &v92 - v25;
  v26 = sub_258B029C4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v92 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v92 - v35;
  v37 = sub_258B02874();
  if (v37)
  {
    v38 = v37;
    v105 = a2;
    sub_258B027E4();

    v103 = v36;
    v104 = v27;
    v39 = *(v27 + 16);
    v39(v34, v36, v26);
    v40 = qword_27F9714C0;
    swift_beginAccess();
    v39(v31, (v3 + v40), v26);
    sub_258B002B4();
    v41 = v26;
    if (sub_258B002A4())
    {
      v42 = v101;
      sub_258B00364();
      v43 = sub_258B00374();
      v44 = sub_258B02EA4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v109[0] = v46;
        *v45 = 136446210;
        v47 = sub_258B035A4();
        v49 = sub_2589F1F78(v47, v48, v109);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_2589A1000, v43, v44, "[%{public}s] Ignoring date tapped in the future", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x259C945C0](v46, -1, -1);
        MEMORY[0x259C945C0](v45, -1, -1);
      }

      (*(v106 + 8))(v42, v107);
      (*(v104 + 8))(v103, v41);
LABEL_17:
      v91 = sub_258B00244();
      [v108 deselectItemAtIndexPath:v91 animated:1];

      return;
    }

    v50 = v3;
    v101 = v41;
    v51 = [*(v3 + qword_27F9714B8) calendar];
    sub_258B001A4();
    v52 = sub_258B02874();
    if (v52)
    {
      v53 = v52;

      sub_258B02814();
      v54 = v96;
      sub_258B00174();
      v55 = v95;
      v56 = *(v95 + 8);
      v57 = v102;
      v56(v24, v102);
      (*(v97 + 8))(v15, v98);
      if ((*(v55 + 48))(v54, 1, v57) == 1)
      {
        sub_258ADE8E4(v54, &qword_27F96EBF0, MEMORY[0x277CC9578]);
        v58 = v93;
        sub_258B00364();
        v59 = sub_258B00374();
        v60 = sub_258B02E84();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v109[0] = v62;
          *v61 = 136446210;
          v63 = sub_258B035A4();
          v65 = sub_2589F1F78(v63, v64, v109);

          *(v61 + 4) = v65;
          _os_log_impl(&dword_2589A1000, v59, v60, "[%{public}s] Unable to determine tapped date", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v62);
          MEMORY[0x259C945C0](v62, -1, -1);
          MEMORY[0x259C945C0](v61, -1, -1);
        }

        (*(v106 + 8))(v58, v107);
        (*(v104 + 8))(v103, v101);
      }

      else
      {
        v98 = v56;
        v66 = v99;
        (*(v55 + 32))(v99, v54, v57);
        v67 = v94;
        sub_258B00364();
        v68 = v92;
        (*(v55 + 16))(v92, v66, v57);
        v69 = sub_258B00374();
        v70 = sub_258B02EA4();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v109[0] = v72;
          *v71 = 136446466;
          v73 = sub_258B035A4();
          v75 = sub_2589F1F78(v73, v74, v109);

          *(v71 + 4) = v75;
          *(v71 + 12) = 2082;
          sub_258ADEAB8(&qword_27F96D970, MEMORY[0x277CC9578]);
          v76 = sub_258B03414();
          v78 = v77;
          v79 = v68;
          v80 = v98;
          v98(v79, v102);
          v81 = sub_2589F1F78(v76, v78, v109);

          *(v71 + 14) = v81;
          _os_log_impl(&dword_2589A1000, v69, v70, "[%{public}s] Tapped cell for date: %{public}s", v71, 0x16u);
          swift_arrayDestroy();
          v82 = v72;
          v57 = v102;
          MEMORY[0x259C945C0](v82, -1, -1);
          MEMORY[0x259C945C0](v71, -1, -1);

          (*(v106 + 8))(v94, v107);
        }

        else
        {

          v83 = v68;
          v80 = v98;
          v98(v83, v57);
          (*(v106 + 8))(v67, v107);
        }

        v84 = v101;
        v85 = v103;
        v86 = v50 + qword_27F97AC38;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v88 = v99;
        if (Strong)
        {
          v89 = *(v86 + 8);
          v90 = swift_getObjectType();
          (*(v89 + 8))(v50, v88, v90, v89);
          swift_unknownObjectRelease();
        }

        v80(v88, v57);
        (*(v104 + 8))(v85, v84);
      }

      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_258ADC4E4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_258B00274();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00254();
  v10 = a3;
  v11 = a1;
  StateOfMindCalendarViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  return (*(v6 + 8))(v9, v5);
}

void StateOfMindCalendarViewController.dateCacheDidUpdate(_:on:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B00224();
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B029C4();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v45 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258B00384();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v19 = sub_258B00374();
  v20 = sub_258B02EA4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v2;
    v22 = v21;
    v39 = swift_slowAlloc();
    v40 = v4;
    v49 = v39;
    *v22 = 136446210;
    v23 = sub_258B035A4();
    ObjectType = a1;
    v25 = v12;
    v26 = v9;
    v27 = v8;
    v28 = v5;
    v29 = sub_2589F1F78(v23, v24, &v49);
    a1 = ObjectType;

    *(v22 + 4) = v29;
    v5 = v28;
    v8 = v27;
    v9 = v26;
    v12 = v25;
    _os_log_impl(&dword_2589A1000, v19, v20, "[%{public}s] date cache did update", v22, 0xCu);
    v30 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v4 = v40;
    MEMORY[0x259C945C0](v30, -1, -1);
    v31 = v22;
    v2 = v41;
    MEMORY[0x259C945C0](v31, -1, -1);
  }

  (*(v43 + 8))(v18, v44);
  v32 = [a1 calendar];
  v33 = v46;
  sub_258B001A4();

  sub_258B00074();
  v34 = v45;
  sub_258B00164();
  (*(v5 + 8))(v8, v4);
  (*(v48 + 8))(v33, v9);
  v35 = qword_27F9714C0;
  swift_beginAccess();
  (*(v47 + 40))(&v2[v35], v34, v12);
  swift_endAccess();
  v36 = [v2 collectionView];
  if (v36)
  {
    v37 = v36;
    [v36 reloadData];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258ADCA2C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_258AFFBF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFFBD4();
  v10 = a3;
  v11 = a1;
  StateOfMindCalendarViewController.dateCacheDidUpdate(_:on:)(v10);

  return (*(v6 + 8))(v9, v5);
}

id sub_258ADCB24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_258B00274();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v18[0] = *(v7 + 16);
    v18[1] = v7 + 16;
    v11 = (v7 + 8);
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    (v18[0])(v9, v12, v4);
    while (1)
    {
      result = [v2 collectionView];
      if (!result)
      {
        break;
      }

      v14 = result;
      v15 = sub_258B00244();
      v16 = [v14 cellForItemAtIndexPath_];

      if (v16)
      {
        type metadata accessor for StateOfMindCalendarDayCell();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          sub_258ADB0CC(v17, v9);
        }
      }

      result = (*v11)(v9, v4);
      v12 += v13;
      if (!--v10)
      {
        return result;
      }

      (v18[0])(v9, v12, v4);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258ADCCDC()
{
  v1 = v0;
  sub_258ADEA1C(0, &qword_27F971550, MEMORY[0x277D126B0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16 - v6;
  v8 = sub_258B029C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_258B02874();
  if (result)
  {
    v14 = result;
    sub_258B027E4();

    v15 = *(v1 + qword_27F971498);
    sub_258B02784();
    (*(v9 + 8))(v12, v8);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D126A8])
    {
      (*(v4 + 96))(v7, v3);
      return *v7;
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258ADCEE8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v96 = a3;
  v107 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_258B00084();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v103 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_258B029C4();
  *&v99 = *(v100 - 1);
  v11 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v97 = &v87 - v16;
  sub_258ADD9F4(0, &qword_27F9702D0, MEMORY[0x277CC9788], v13);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v87 - v19;
  v21 = sub_258B000F4();
  v91 = *(v21 - 8);
  v22 = *(v91 + 64);
  MEMORY[0x28223BE20](v21);
  v90 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_258B00224();
  v104 = *(v24 - 8);
  v105 = v24;
  v25 = *(v104 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v101 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v102 = &v87 - v28;
  v89 = sub_258B00384();
  v29 = *(v89 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v89);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v8;
  v33 = *(v8 + 56);
  v94 = qword_27F971450;
  v106 = v7;
  v93 = v8 + 56;
  v92 = v33;
  v33(&v4[qword_27F971450], 1, 1, v7);
  *&v4[qword_27F971458] = 0;
  *&v4[qword_27F971460] = 0;
  *&v4[qword_27F97AC38 + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_258B00364();
  v34 = sub_258B00374();
  v35 = sub_258B02EA4();
  v36 = os_log_type_enabled(v34, v35);
  v95 = ObjectType;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v88 = a1;
    v38 = v37;
    v39 = swift_slowAlloc();
    v87 = v20;
    v40 = v39;
    v110[0] = v39;
    *v38 = 136446210;
    v41 = sub_258B035A4();
    v43 = sub_2589F1F78(v41, v42, v110);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_2589A1000, v34, v35, "[%{public}s] initializing", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v44 = v40;
    v20 = v87;
    MEMORY[0x259C945C0](v44, -1, -1);
    v45 = v38;
    a1 = v88;
    MEMORY[0x259C945C0](v45, -1, -1);
  }

  (*(v29 + 8))(v32, v89);
  v46 = v91;
  v47 = v90;
  (*(v91 + 104))(v90, *MEMORY[0x277CC9830], v21);
  v48 = v102;
  sub_258B00104();
  (*(v46 + 8))(v47, v21);
  sub_258B000D4();
  v49 = sub_258B000E4();
  (*(*(v49 - 8) + 56))(v20, 0, 1, v49);
  sub_258B001D4();
  v50 = 45;
  if (v96 == 2)
  {
    v50 = 70;
  }

  v90 = v50;
  v91 = *(v104 + 16);
  v51 = v101;
  v52 = v105;
  (v91)(v101, v48, v105);
  v53 = type metadata accessor for StateOfMindCalendarDataSource();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = a1;
  v57 = sub_258A9A458(v56, v51);

  v58 = objc_allocWithZone(MEMORY[0x277D12820]);
  v59 = sub_258B00194();
  v60 = [v58 initWithCalendar_];

  *&v4[qword_27F9714B8] = v60;
  v61 = v108;
  v62 = v97;
  v63 = v106;
  (*(v108 + 16))(v97, v107, v106);
  v92(v62, 0, 1, v63);
  v64 = v94;
  swift_beginAccess();
  sub_258ADDBC4(v62, &v4[v64]);
  swift_endAccess();
  v96 = v57;
  v110[0] = v57;
  sub_258ADEA1C(0, &qword_27F971580, MEMORY[0x277D126B8]);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();

  *&v4[qword_27F971498] = sub_258B02754();
  *&v4[qword_27F9714B0] = MEMORY[0x277D84FA0];
  v68 = v103;
  sub_258B00074();
  v69 = v98;
  sub_258B00164();
  v70 = *(v61 + 8);
  v108 = v61 + 8;
  v97 = v70;
  (v70)(v68, v63);
  (*(v99 + 32))(&v4[qword_27F9714C0], v69, v100);
  v71 = v91;
  (v91)(v51, v48, v52);
  v100 = MEMORY[0x277D84560];
  sub_258ADD9F4(0, &qword_27F971588, MEMORY[0x277D126C0], MEMORY[0x277D84560]);
  v72 = *(sub_258B027A4() - 8);
  v73 = *(v72 + 72);
  v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v75 = swift_allocObject();
  v99 = xmmword_258B2C470;
  *(v75 + 16) = xmmword_258B2C470;
  sub_258B02794();
  sub_258AD73F8();
  v76 = objc_allocWithZone(sub_258B02744());
  v77 = sub_258B02734();
  v78 = type metadata accessor for StateOfMindCalendarViewController();
  v109.receiver = v4;
  v109.super_class = v78;
  v79 = objc_msgSendSuper2(&v109, sel_initWithCollectionViewLayout_, v77);
  sub_258B02824();
  sub_258ADEAB8(&qword_27F971590, type metadata accessor for StateOfMindCalendarViewController);
  v80 = v105;
  v71(v51, v48, v105);
  v81 = v79;
  sub_258B00074();
  v82 = sub_258B027D4();
  sub_258B02884();
  sub_258ADD9F4(0, &qword_27F971598, sub_258ADEB00, v100);
  v83 = swift_allocObject();
  *(v83 + 16) = v99;
  v84 = sub_258B00394();
  v85 = MEMORY[0x277D74DB8];
  *(v83 + 32) = v84;
  *(v83 + 40) = v85;
  MEMORY[0x259C934D0](v83, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  (v97)(v107, v106);
  (*(v104 + 8))(v48, v80);
  return v81;
}

void sub_258ADD9F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for StateOfMindCalendarViewController()
{
  result = qword_27F9714D0;
  if (!qword_27F9714D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258ADDAA4()
{
  if (!qword_27F971488)
  {
    sub_258ADDB00();
    v0 = sub_258B011D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971488);
    }
  }
}

unint64_t sub_258ADDB00()
{
  result = qword_27F971490;
  if (!qword_27F971490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971490);
  }

  return result;
}

void sub_258ADDB54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_258AD84A0(a1);
}

void sub_258ADDB5C()
{
  if (!qword_27F9714A0)
  {
    sub_258A98A64();
    v0 = sub_258B004F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9714A0);
    }
  }
}

uint64_t sub_258ADDBC4(uint64_t a1, uint64_t a2)
{
  sub_258ADD9F4(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_258ADDC58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v74 = a1;
  sub_258ADD9F4(0, &unk_27F971540, type metadata accessor for StateOfMindCalendarDay, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v66 - v8;
  sub_258ADEA1C(0, &qword_27F971550, MEMORY[0x277D126B0]);
  v10 = v9;
  v71 = *(v9 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = (&v66 - v12);
  v13 = type metadata accessor for StateOfMindCalendarDay();
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258B029C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v69 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v66 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v77 = &v66 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v66 - v27;
  v78 = v4;
  v29 = sub_258B02874();
  if (!v29)
  {
    __break(1u);
    goto LABEL_11;
  }

  v30 = v29;
  v68 = v10;
  sub_258B027E4();

  v67 = v18;
  v31 = *(v18 + 16);
  v31(v77, v28, v17);
  v32 = sub_258AD70FC();
  v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v34 = v28;
  v35 = a4;
  v36 = [v33 initWithInteger_];
  v37 = [v32 stringFromNumber_];

  if (!v37)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v38 = sub_258B02B14();
  v40 = v39;

  v31(v24, v34, v17);
  v41 = qword_27F9714C0;
  v66 = v34;
  v42 = v78;
  swift_beginAccess();
  v31(v69, (v42 + v41), v17);
  v43 = sub_258B002B4();
  v76 = v35;
  v44 = sub_258B00264();
  v45 = MEMORY[0x277D84F90];
  *v16 = 0;
  *(v16 + 1) = v45;
  *(v16 + 2) = v38;
  *(v16 + 3) = v40;
  v46 = v73;
  v47 = v77;
  v31(&v16[v73[7]], v77, v17);
  v16[v46[8]] = v43;
  *&v16[v46[9]] = v44;
  v80 = 0x7865646E49796144;
  v81 = 0xE90000000000003ALL;
  v79 = sub_258B02984();
  v48 = sub_258B03414();
  MEMORY[0x259C931B0](v48);

  v50 = v80;
  v49 = v81;
  v51 = *(v67 + 8);
  v51(v47, v17);
  v52 = &v16[v46[10]];
  *v52 = v50;
  v52[1] = v49;
  v53 = &v16[v46[11]];
  *v53 = v50;
  v53[1] = v49;
  v54 = *(v42 + qword_27F971498);
  sub_258B003E4();
  v55 = v70;
  v56 = v66;
  sub_258B02784();
  v57 = v71;
  v58 = v68;
  if ((*(v71 + 88))(v55, v68) == *MEMORY[0x277D126A8])
  {
    (*(v57 + 96))(v55, v58);
    v59 = *v55;
  }

  else
  {
    (*(v57 + 8))(v55, v58);
    v59 = 0;
  }

  *v16 = [v59 dailyStateOfMind];
  sub_258A767F0();
  if (v59)
  {
    v60 = [v59 momentaryStatesOfMind];
    sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
    v61 = sub_258B02C74();
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

  *(v16 + 1) = v61;
  sub_258A767F0();
  v62 = sub_258B02AD4();
  v63 = sub_258B00244();
  v64 = [v74 dequeueReusableCellWithReuseIdentifier:v62 forIndexPath:v63];

  type metadata accessor for StateOfMindCalendarDayCell();
  swift_dynamicCastClassUnconditional();
  v65 = v75;
  sub_258ADE954(v16, v75, type metadata accessor for StateOfMindCalendarDay);
  (*(v72 + 56))(v65, 0, 1, v46);
  sub_258ABCF78(v65);

  v51(v56, v17);
  sub_258ADE9BC(v16, type metadata accessor for StateOfMindCalendarDay);
}

uint64_t sub_258ADE33C(void *a1)
{
  v2 = *MEMORY[0x277D767D8];
  sub_258B02854();
  v3 = v2;
  sub_258B02844();
  v4 = sub_258B02AD4();

  v5 = sub_258B00244();
  v6 = [a1 dequeueReusableSupplementaryViewOfKind:v3 withReuseIdentifier:v4 forIndexPath:v5];

  v7 = swift_dynamicCastClassUnconditional();
  v8 = sub_258AD7170();
  v9 = sub_258B00014();
  v10 = [v8 stringFromDate_];

  sub_258B02B14();
  sub_258B02834();

  return v7;
}

void sub_258ADE4AC()
{
  sub_258ADD9F4(319, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_258B029C4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_258ADE768(uint64_t a1, uint64_t a2)
{
  sub_258ADD9F4(0, &qword_27F971568, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ADE7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ADE864(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258ADD9F4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258ADE8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258ADD9F4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258ADE954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ADE9BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258ADEA1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StateOfMindCalendarDataSource();
    v7 = sub_258ADEAB8(&qword_27F971558, type metadata accessor for StateOfMindCalendarDataSource);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258ADEAB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258ADEB00()
{
  result = qword_27F9715A0;
  if (!qword_27F9715A0)
  {
    sub_258ADEB48();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F9715A0);
  }

  return result;
}

unint64_t sub_258ADEB48()
{
  result = qword_27F9715A8;
  if (!qword_27F9715A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F9715A8);
  }

  return result;
}

void sub_258ADEBAC(void *a1, void *a2, char a3)
{
  v6 = [objc_opt_self() stateOfMindType];
  v7 = [a1 displayTypeController];
  v8 = [v7 displayTypeForObjectType_];

  if (v8)
  {
    sub_258B026F4();
    v9 = [a1 unitController];
    v10 = MEMORY[0x259C92CE0](v8, v9);

    if (a3)
    {
      v11 = [v10 yAxis];
      if (v11)
      {

        v12 = [v8 localization];
        v13 = [v12 shortenedDisplayName];

        if (!v13)
        {
          sub_258B02B14();
          v13 = sub_258B02AD4();
        }

        [objc_opt_self() setStackedSeriesLegend:v10 title:v13];
      }
    }

    v14 = objc_allocWithZone(type metadata accessor for StateOfMindChartTapOutFormatter());
    v15 = v10;
    v16 = v8;
    v17 = [v14 init];
    v18 = [v16 sampleType];
    v19 = [v18 code];

    v20 = objc_allocWithZone(MEMORY[0x277D128F0]);
    v21 = v15;
    [v20 initWithGraphSeries:v21 baseDisplayType:v16 valueFormatter:v17 dataTypeCode:v19];

    v22 = [objc_allocWithZone(MEMORY[0x277D127C0]) init];
    v23 = sub_258ADEE68(v16, a1, a2);
    [v22 setChartCache_];
    [v21 setDataSource_];
  }

  else
  {
    __break(1u);
  }
}

id sub_258ADEE68(void *a1, void *a2, void *a3)
{
  v6 = sub_258B00384();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v72 = a2;
  v14 = [a2 chartDataCacheController];
  v71 = a1;
  v15 = [v14 findCustomCachesForDisplayType_];

  v73 = v11;
  if (!v15)
  {
LABEL_36:
    sub_258B00364();
    v48 = a3;
    v49 = sub_258B00374();
    v50 = sub_258B02EA4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v78 = v52;
      *v51 = 136446467;
      v53 = sub_258B035A4();
      v55 = sub_2589F1F78(v53, v54, &v78);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2081;
      v77 = a3;
      sub_258ADF578();
      v56 = v48;
      v57 = sub_258B02B34();
      v59 = sub_2589F1F78(v57, v58, &v78);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_2589A1000, v49, v50, "[%{public}s] Creating cache for state of mind predicate: %{private}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v52, -1, -1);
      MEMORY[0x259C945C0](v51, -1, -1);

      (*(v7 + 8))(v73, v6);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    v60 = v72;
    v61 = [v72 healthStore];
    objc_allocWithZone(sub_258B028C4());
    v62 = v48;
    v63 = v71;
    v64 = sub_258B028A4();
    v38 = [objc_allocWithZone(MEMORY[0x277D127C8]) init];
    [v38 setDataSource_];
    v65 = [objc_opt_self() sharedOperationManager];
    [v38 setOperationManager_];

    v66 = [v60 chartDataCacheController];
    [v66 addCustomChartCache:v38 forDisplayType:v63];

    return v38;
  }

  v68 = v13;
  v69 = v7;
  sub_2589F4488(0, &qword_27F9715B8, 0x277D127C8);
  v16 = sub_258B02C74();

  v70 = v6;
  if (v16 >> 62)
  {
LABEL_34:
    v17 = sub_258B032B4();
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_35:

    v7 = v69;
    v6 = v70;
    v11 = v73;
    goto LABEL_36;
  }

LABEL_4:
  v18 = 0;
  v19 = v16 & 0xC000000000000001;
  v74 = v16;
  v75 = v16 & 0xFFFFFFFFFFFFFF8;
  v20 = &property descriptor for StateOfMindEntryModel.valence;
  while (1)
  {
    if (v19)
    {
      v21 = MEMORY[0x259C937C0](v18, v16);
    }

    else
    {
      if (v18 >= *(v75 + 16))
      {
        goto LABEL_33;
      }

      v21 = *(v16 + 8 * v18 + 32);
    }

    v22 = v21;
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v24 = [v21 dataSource];
    sub_258B028C4();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    v76 = v22;
    v25 = sub_258B028B4();
    if (v25)
    {
      v26 = v25;
      v27 = [v25 v20[437]];

      if (!a3)
      {
        if (!v27)
        {
          break;
        }

        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (!a3)
    {
      break;
    }

    v27 = 0;
    v20 = &property descriptor for StateOfMindEntryModel.valence;
LABEL_18:
    v28 = a3;
    v29 = [a3 v20[437]];
    v30 = v29;
    if (v27)
    {
      if (!v29)
      {
        a3 = v28;
        v16 = v74;
LABEL_26:
        swift_unknownObjectRelease();

        v20 = &property descriptor for StateOfMindEntryModel.valence;
        goto LABEL_6;
      }

      sub_2589F4488(0, &qword_27F9715C0, 0x277CCAC30);
      v31 = sub_258B030B4();

      swift_unknownObjectRelease();
      if (v31)
      {
        goto LABEL_29;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      if (!v30)
      {
        goto LABEL_29;
      }
    }

    a3 = v28;
    v16 = v74;
    v20 = &property descriptor for StateOfMindEntryModel.valence;
LABEL_6:
    ++v18;
    if (v23 == v17)
    {
      goto LABEL_35;
    }
  }

  v28 = a3;
  swift_unknownObjectRelease();
LABEL_29:

  v32 = v68;
  sub_258B00364();
  v33 = v28;
  v34 = v28;
  v35 = sub_258B00374();
  v36 = sub_258B02EA4();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v76;
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v78 = v40;
    *v39 = 136446467;
    v41 = sub_258B035A4();
    v43 = sub_2589F1F78(v41, v42, &v78);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2081;
    v77 = v33;
    sub_258ADF578();
    v44 = v34;
    v45 = sub_258B02B34();
    v47 = sub_2589F1F78(v45, v46, &v78);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_2589A1000, v35, v36, "[%{public}s] Found cache for state of mind predicate: %{private}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v40, -1, -1);
    MEMORY[0x259C945C0](v39, -1, -1);
  }

  (*(v69 + 8))(v32, v70);
  return v38;
}

void sub_258ADF578()
{
  if (!qword_27F9715B0)
  {
    sub_2589F4488(255, &unk_27F970A60, 0x277D12900);
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9715B0);
    }
  }
}

uint64_t Color.init(valenceClassification:variant:colorScheme:)(CGColor *GenericRGB, char *a2, uint64_t a3)
{
  sub_258AE00E8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 72);
  v10[8] = *a2;
  v12 = sub_258B006A4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v10[v11], a3, v12);
  if (v10[8] > 1u)
  {
    if (v10[8] == 2)
    {
      if (GenericRGB > 4)
      {
        if (GenericRGB == 5)
        {
          v16 = 0.431372549;
          v17 = 0.694117647;
          v18 = 0.0;
          goto LABEL_88;
        }

        if (GenericRGB == 6)
        {
          v17 = 0.603921569;
          v22 = 0x3F88181818181818;
          goto LABEL_67;
        }

        if (GenericRGB == 7)
        {
          v16 = 0.984313725;
          v17 = 0.454901961;
          v18 = 0.262745098;
          goto LABEL_88;
        }
      }

      else
      {
        if (GenericRGB == 1)
        {
          v16 = 0.207843137;
          v17 = 0.121568627;
          v18 = 0.462745098;
          goto LABEL_88;
        }

        if (GenericRGB == 2)
        {
          v16 = 0.235294118;
          v17 = 0.298039216;
          v18 = 0.760784314;
          goto LABEL_88;
        }

        if (GenericRGB == 3)
        {
          v16 = 0.133333333;
          v17 = 0.392156863;
          v18 = 0.749019608;
          goto LABEL_88;
        }
      }

      v16 = 0.42745098;
      v17 = 0.682352941;
      v23 = 0x3838383838383838;
    }

    else
    {
      if (GenericRGB > 4)
      {
        goto LABEL_43;
      }

      if (GenericRGB != 1)
      {
        if (GenericRGB == 2)
        {
          v16 = 0.556862745;
          v17 = 0.674509804;
          v18 = 0.996078431;
          goto LABEL_88;
        }

        if (GenericRGB == 3)
        {
          v16 = 0.635294118;
          v17 = 0.811764706;
          v18 = 1.0;
          goto LABEL_88;
        }

LABEL_63:
        v16 = 0.796078431;
        v17 = 0.878431373;
        v18 = 0.909803922;
        goto LABEL_88;
      }

      v16 = 0.611764706;
      v17 = 0.423529412;
      v23 = 0x7878787878787878;
    }

    *&v18 = v23 & 0xFFFFFFFFFFFFLL | 0x3FE8000000000000;
    goto LABEL_88;
  }

  v14 = MEMORY[0x277CDF3D0];
  if (!v10[8])
  {
    v15 = (*(v13 + 88))(&v10[v11], v12);
    if (v15 == *v14)
    {
      if (GenericRGB <= 4)
      {
        if (GenericRGB != 1)
        {
          if (GenericRGB == 2)
          {
            v16 = 0.666666667;
            v17 = 0.709803922;
            goto LABEL_84;
          }

          if (GenericRGB == 3)
          {
            v16 = 0.68627451;
            v17 = 0.752941176;
LABEL_84:
            v18 = 0.878431373;
            goto LABEL_88;
          }

          goto LABEL_51;
        }

LABEL_79:
        v16 = 0.623529412;
        v17 = 0.588235294;
        v18 = 0.733333333;
        goto LABEL_88;
      }

      if (GenericRGB == 5)
      {
        v16 = 0.682352941;
        v17 = 0.788235294;
        v18 = 0.501960784;
        goto LABEL_88;
      }

      if (GenericRGB == 6)
      {
        v16 = 0.956862745;
        v17 = 0.819607843;
        v18 = 0.619607843;
        goto LABEL_88;
      }

      if (GenericRGB != 7)
      {
        goto LABEL_51;
      }

      v16 = 0.996078431;
      v17 = 0.737254902;
LABEL_69:
      v18 = 0.392156863;
      goto LABEL_88;
    }

    if (v15 != *MEMORY[0x277CDF3C0])
    {
LABEL_51:
      v16 = 0.741176471;
      v17 = 0.82745098;
      v18 = 0.839215686;
      goto LABEL_88;
    }

    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
LABEL_88:
    CGColorCreateGenericRGB(v16, v17, v18, 1.0);
LABEL_89:
    v25 = sub_258B01F74();
    v26 = *(v13 + 8);
    v26(a3, v12);
    v26(&v10[v11], v12);
    return v25;
  }

  v19 = (*(v13 + 88))(&v10[v11], v12);
  if (v19 == *v14)
  {
    if (GenericRGB <= 4)
    {
      if (GenericRGB == 1)
      {
        v16 = 0.815686275;
        v17 = 0.776470588;
        v18 = 0.941176471;
        goto LABEL_88;
      }

      if (GenericRGB == 2)
      {
        v16 = 0.874509804;
        v17 = 0.898039216;
        v18 = 1.0;
        goto LABEL_88;
      }

      if (GenericRGB == 3)
      {
        v16 = 0.807843137;
        v17 = 0.847058824;
        v18 = 0.905882353;
        goto LABEL_88;
      }

LABEL_56:
      v16 = 0.858823529;
      v17 = 0.882352941;
      v18 = 0.88627451;
      goto LABEL_88;
    }

    if (GenericRGB == 5)
    {
      v16 = 0.807843137;
      v17 = 0.901960784;
      v18 = 0.643137255;
      goto LABEL_88;
    }

    if (GenericRGB == 6)
    {
      v16 = 0.964705882;
      v17 = 0.831372549;
      v18 = 0.635294118;
      goto LABEL_88;
    }

    if (GenericRGB != 7)
    {
      goto LABEL_56;
    }

    v17 = 0.917647059;
    v22 = 0x3FEC3C3C3C3C3C3CLL;
LABEL_67:
    v18 = *&v22;
    v16 = 1.0;
    goto LABEL_88;
  }

  if (v19 != *MEMORY[0x277CDF3C0])
  {
    goto LABEL_56;
  }

  if (GenericRGB > 4)
  {
    if (GenericRGB != 5)
    {
      if (GenericRGB == 6)
      {
        goto LABEL_114;
      }

      if (GenericRGB == 7)
      {
        GenericRGB = CGColorCreateGenericRGB(0.996078431, 0.737254902, 0.392156863, 1.0);
        if (CGColorGetNumberOfComponents(GenericRGB) != 4)
        {
          goto LABEL_89;
        }

        result = sub_258B02E04();
        if (!result)
        {
          goto LABEL_89;
        }

        v24 = *(result + 16);
        if (v24)
        {
          if (v24 != 1)
          {
            if (v24 < 3)
            {
              __break(1u);
              goto LABEL_79;
            }

            goto LABEL_119;
          }

          goto LABEL_131;
        }

        goto LABEL_124;
      }

LABEL_102:
      GenericRGB = CGColorCreateGenericRGB(0.741176471, 0.82745098, 0.839215686, 1.0);
      if (CGColorGetNumberOfComponents(GenericRGB) != 4)
      {
        goto LABEL_89;
      }

      result = sub_258B02E04();
      if (!result)
      {
        goto LABEL_89;
      }

      v29 = *(result + 16);
      if (v29)
      {
        if (v29 == 1)
        {
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v29 >= 3)
        {
          goto LABEL_119;
        }

        __break(1u);
        goto LABEL_108;
      }

LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    goto LABEL_96;
  }

  if (GenericRGB == 1)
  {
    GenericRGB = CGColorCreateGenericRGB(0.623529412, 0.588235294, 0.733333333, 1.0);
    if (CGColorGetNumberOfComponents(GenericRGB) != 4)
    {
      goto LABEL_89;
    }

    result = sub_258B02E04();
    if (!result)
    {
      goto LABEL_89;
    }

    v27 = *(result + 16);
    if (!v27)
    {
      __break(1u);
      goto LABEL_121;
    }

    if (v27 == 1)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v27 >= 3)
    {
      goto LABEL_119;
    }

    __break(1u);
LABEL_96:
    GenericRGB = CGColorCreateGenericRGB(0.682352941, 0.788235294, 0.501960784, 1.0);
    if (CGColorGetNumberOfComponents(GenericRGB) != 4)
    {
      goto LABEL_89;
    }

    result = sub_258B02E04();
    if (!result)
    {
      goto LABEL_89;
    }

    v28 = *(result + 16);
    if (v28)
    {
      if (v28 == 1)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v28 >= 3)
      {
        goto LABEL_119;
      }

      __break(1u);
      goto LABEL_102;
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (GenericRGB != 2)
  {
    if (GenericRGB == 3)
    {
      GenericRGB = CGColorCreateGenericRGB(0.68627451, 0.752941176, 0.878431373, 1.0);
      if (CGColorGetNumberOfComponents(GenericRGB) != 4)
      {
        goto LABEL_89;
      }

      result = sub_258B02E04();
      if (!result)
      {
        goto LABEL_89;
      }

      v21 = *(result + 16);
      if (v21)
      {
        if (v21 != 1)
        {
          if (v21 < 3)
          {
            __break(1u);
LABEL_43:
            if (GenericRGB == 5)
            {
              v16 = 0.71372549;
              v17 = 0.858823529;
              v18 = 0.274509804;
              goto LABEL_88;
            }

            if (GenericRGB == 6)
            {
              v16 = 0.996078431;
              v17 = 0.823529412;
              goto LABEL_69;
            }

            if (GenericRGB == 7)
            {
              v16 = 0.988235294;
              v17 = 0.745098039;
              v18 = 0.474509804;
              goto LABEL_88;
            }

            goto LABEL_63;
          }

LABEL_119:
          v32 = *(result + 32) * 0.5;
          v33 = *(result + 40) * 0.5;
          v34 = *(result + 48);

          CGColorCreateGenericRGB(v32, v33, v34 * 0.5, 1.0);

          goto LABEL_89;
        }

        goto LABEL_130;
      }

      goto LABEL_123;
    }

    goto LABEL_102;
  }

LABEL_108:
  GenericRGB = CGColorCreateGenericRGB(0.666666667, 0.709803922, 0.878431373, 1.0);
  if (CGColorGetNumberOfComponents(GenericRGB) != 4)
  {
    goto LABEL_89;
  }

  result = sub_258B02E04();
  if (!result)
  {
    goto LABEL_89;
  }

  v30 = *(result + 16);
  if (!v30)
  {
    goto LABEL_125;
  }

  if (v30 == 1)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v30 >= 3)
  {
    goto LABEL_119;
  }

  __break(1u);
LABEL_114:
  GenericRGB = CGColorCreateGenericRGB(0.956862745, 0.819607843, 0.619607843, 1.0);
  if (CGColorGetNumberOfComponents(GenericRGB) != 4)
  {
    goto LABEL_89;
  }

  result = sub_258B02E04();
  if (!result)
  {
    goto LABEL_89;
  }

  v31 = *(result + 16);
  if (!v31)
  {
    goto LABEL_126;
  }

  if (v31 == 1)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v31 >= 3)
  {
    goto LABEL_119;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t Color.init(valence:variant:colorScheme:)(unsigned __int8 *a1, uint64_t a2, double a3)
{
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fmax(fmin(a3, 1.0), -1.0);
  if (*a1 <= 1u)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CDF3C0], v6);
    sub_258B00694();
    (*(v7 + 8))(v10, v6);
  }

  swift_getKeyPath();
  sub_258A84538(v11);

  v12 = sub_258B01F74();
  (*(v7 + 8))(a2, v6);
  return v12;
}

void sub_258AE00E8()
{
  if (!qword_27F9715C8)
  {
    type metadata accessor for ValenceClassification(255);
    sub_258B006A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F9715C8);
    }
  }
}

CGColorRef sub_258AE0160@<X0>(_BYTE *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        v4 = 0.235294118;
        v5 = 0.298039216;
        v6 = 0.760784314;
      }

      else
      {
        v4 = 0.133333333;
        v5 = 0.392156863;
        v6 = 0.749019608;
      }
    }

    else
    {
      v4 = 0.207843137;
      v5 = 0.121568627;
      v6 = 0.462745098;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v5 = 0.603921569;
      v6 = 0.0117647059;
      v4 = 1.0;
    }

    else
    {
      v4 = 0.984313725;
      v5 = 0.454901961;
      v6 = 0.262745098;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0.42745098;
    v5 = 0.682352941;
    v6 = 0.756862745;
  }

  else
  {
    v4 = 0.431372549;
    v5 = 0.694117647;
    v6 = 0.0;
  }

  result = CGColorCreateGenericRGB(v4, v5, v6, 1.0);
  *a2 = result;
  return result;
}

CGColorRef sub_258AE028C@<X0>(_BYTE *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        v4 = 0.556862745;
        v5 = 0.674509804;
        v6 = 0.996078431;
      }

      else
      {
        v4 = 0.635294118;
        v5 = 0.811764706;
        v6 = 1.0;
      }
    }

    else
    {
      v4 = 0.611764706;
      v5 = 0.423529412;
      v6 = 0.764705882;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = 0.996078431;
      v5 = 0.823529412;
      v6 = 0.392156863;
    }

    else
    {
      v4 = 0.988235294;
      v5 = 0.745098039;
      v6 = 0.474509804;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0.796078431;
    v5 = 0.878431373;
    v6 = 0.909803922;
  }

  else
  {
    v4 = 0.71372549;
    v5 = 0.858823529;
    v6 = 0.274509804;
  }

  result = CGColorCreateGenericRGB(v4, v5, v6, 1.0);
  *a2 = result;
  return result;
}

uint64_t ValenceClassificationColorVariant.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

unint64_t sub_258AE0438()
{
  result = qword_27F9715D0;
  if (!qword_27F9715D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9715D0);
  }

  return result;
}

uint64_t type metadata accessor for IntroPhaseSpecs()
{
  result = qword_27F9715D8;
  if (!qword_27F9715D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258AE0510@<X0>(uint64_t a1@<X8>)
{
  sub_258B00E34();
  v2 = a1 + *(type metadata accessor for IntroPhaseSpecs() + 20);
  return sub_258B00D84();
}

uint64_t _s17EntryDayEmptyViewVMa()
{
  result = qword_27F9715E8;
  if (!qword_27F9715E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AE05BC()
{
  sub_258AE186C(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589DB8A8(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258AE06B0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_258B01634();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE1368();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE15AC(0, &qword_27F971628, sub_258AE1368);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  sub_258AE1610();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = sub_258B01194();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_258AE17D4();
  sub_258AE0AAC(v28, &v8[*(v20 + 44)]);
  sub_258B024F4();
  sub_258B00C94();
  sub_258AE18D0(v8, v13, sub_258AE1368);
  v21 = &v13[*(v10 + 36)];
  v22 = v40;
  *(v21 + 4) = v39;
  *(v21 + 5) = v22;
  *(v21 + 6) = v41;
  v23 = v36;
  *v21 = v35;
  *(v21 + 1) = v23;
  v24 = v38;
  *(v21 + 2) = v37;
  *(v21 + 3) = v24;
  sub_258B01614();
  v25 = sub_258AE16B8();
  sub_258B01D84();
  (*(v1 + 8))(v4, v29);
  sub_258AE1B10(v13, &qword_27F971628, sub_258AE1368);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v33 = sub_258AFFD94();
  v34 = v26;
  v31 = v10;
  v32 = v25;
  swift_getOpaqueTypeConformance2();
  sub_2589BFF58();
  sub_258B01D34();

  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_258AE0AAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v89 = a2;
  v84 = sub_258B019F4();
  v83 = *(v84 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE14A8();
  v86 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v88 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v80 - v9;
  v10 = _s6StylesV5EmptyVMa(0);
  v11 = *(v10 - 8);
  v90 = (v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v91 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v80 - v20;
  v22 = _s21StateOfMindSymbolViewVMa();
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AE15AC(0, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v85 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v80 - v33;
  MEMORY[0x28223BE20](v32);
  v92 = &v80 - v35;
  *v26 = swift_getKeyPath();
  v36 = MEMORY[0x277CDF458];
  sub_258AE186C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v37 = *(v23 + 28);
  *(v26 + v37) = swift_getKeyPath();
  sub_258AE186C(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v36);
  swift_storeEnumTagMultiPayload();
  *(v26 + *(v23 + 32)) = 0;
  sub_258AC1060(v21);
  sub_258AE1A48(&v21[*(v16 + 60)], v14, _s6StylesV5EmptyVMa);
  sub_258AE1AB0(v21, type metadata accessor for StateOfMindTimeline.Styles);
  LODWORD(v23) = v14[*(v90 + 8)];
  sub_258AE1AB0(v14, _s6StylesV5EmptyVMa);
  sub_258B024F4();
  sub_258B00854();
  sub_258AE18D0(v26, v34, _s21StateOfMindSymbolViewVMa);
  v38 = &v34[*(v28 + 44)];
  v39 = v94;
  *v38 = v93;
  *(v38 + 1) = v39;
  *(v38 + 2) = v95;
  sub_258AE1938(v34, v92);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v96 = sub_258AFFD94();
  v97 = v40;
  sub_2589BFF58();
  v81 = sub_258B01B44();
  v42 = v41;
  v44 = v43;
  v45 = v91;
  sub_258AC1060(v91);
  v90 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258AE1AB0(v45, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B019C4();
  sub_258B01994();
  sub_258B019E4();

  v46 = v83;
  v47 = v82;
  v48 = v84;
  (*(v83 + 104))(v82, *MEMORY[0x277CE0A10], v84);
  sub_258B01A14();

  (*(v46 + 8))(v47, v48);
  v49 = v81;
  v50 = sub_258B01AE4();
  v52 = v51;
  LOBYTE(v48) = v53;
  v84 = v54;
  sub_2589BFFAC(v49, v42, v44 & 1);

  sub_258AC1060(v45);
  sub_258AE1AB0(v45, v90);
  v55 = [objc_opt_self() tertiaryLabelColor];
  v96 = sub_258B01F94();
  v56 = sub_258B01AB4();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_2589BFFAC(v50, v52, v48 & 1);

  KeyPath = swift_getKeyPath();
  v96 = v56;
  v97 = v58;
  v98 = v60 & 1;
  v99 = v62;
  v100 = KeyPath;
  v101 = 1;
  v64 = _s17EntryDayEmptyViewVMa();
  v65 = v87;
  sub_2589D73B8(*(a1 + *(v64 + 20)), 0x7974706D45, 0xE500000000000000);
  sub_2589BFFAC(v56, v58, v60 & 1);

  LOBYTE(v62) = sub_258B01864();
  v66 = v91;
  sub_258AC1060(v91);
  sub_258AE1AB0(v66, v90);
  sub_258B00654();
  v67 = v65 + *(v86 + 36);
  *v67 = v62;
  *(v67 + 8) = v68;
  *(v67 + 16) = v69;
  *(v67 + 24) = v70;
  *(v67 + 32) = v71;
  *(v67 + 40) = 0;
  v72 = v92;
  v73 = v85;
  sub_258AE19C0(v92, v85);
  v74 = v88;
  sub_258AE1A48(v65, v88, sub_258AE14A8);
  v75 = v89;
  *v89 = 0;
  *(v75 + 8) = 1;
  sub_258AE13FC();
  v77 = v76;
  sub_258AE19C0(v73, v75 + *(v76 + 48));
  sub_258AE1A48(v74, v75 + *(v77 + 64), sub_258AE14A8);
  v78 = v75 + *(v77 + 80);
  *v78 = 0;
  v78[8] = 1;
  sub_258AE1AB0(v65, sub_258AE14A8);
  sub_258AE1B10(v72, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
  sub_258AE1AB0(v74, sub_258AE14A8);
  return sub_258AE1B10(v73, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
}

void sub_258AE1368()
{
  if (!qword_27F9715F8)
  {
    sub_258AE186C(255, &qword_27F971600, sub_258AE13FC, MEMORY[0x277CE14B8]);
    sub_258AE1524();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9715F8);
    }
  }
}

void sub_258AE13FC()
{
  if (!qword_27F971608)
  {
    sub_258AE15AC(255, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
    sub_258AE14A8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F971608);
    }
  }
}

void sub_258AE14A8()
{
  if (!qword_27F971610)
  {
    sub_258AE1C8C(255, &qword_27F971618, sub_2589BFBAC);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971610);
    }
  }
}

unint64_t sub_258AE1524()
{
  result = qword_27F971620;
  if (!qword_27F971620)
  {
    sub_258AE186C(255, &qword_27F971600, sub_258AE13FC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971620);
  }

  return result;
}

void sub_258AE15AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AE1610()
{
  if (!qword_27F971630)
  {
    sub_258AE15AC(255, &qword_27F971628, sub_258AE1368);
    sub_258AE16B8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971630);
    }
  }
}

unint64_t sub_258AE16B8()
{
  result = qword_27F971638;
  if (!qword_27F971638)
  {
    sub_258AE15AC(255, &qword_27F971628, sub_258AE1368);
    sub_258AE178C(&qword_27F971640, sub_258AE1368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971638);
  }

  return result;
}

uint64_t sub_258AE178C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258AE17D4()
{
  if (!qword_27F971648)
  {
    sub_258AE186C(255, &qword_27F971600, sub_258AE13FC, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971648);
    }
  }
}

void sub_258AE186C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258AE18D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AE1938(uint64_t a1, uint64_t a2)
{
  sub_258AE15AC(0, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AE19C0(uint64_t a1, uint64_t a2)
{
  sub_258AE15AC(0, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AE1A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AE1AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AE1B10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_258AE15AC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_258AE1B6C()
{
  result = qword_27F971650;
  if (!qword_27F971650)
  {
    sub_258AE1C8C(255, &qword_27F971658, sub_258AE1610);
    sub_258AE15AC(255, &qword_27F971628, sub_258AE1368);
    sub_258AE16B8();
    swift_getOpaqueTypeConformance2();
    sub_258AE178C(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971650);
  }

  return result;
}

void sub_258AE1C8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258AE1D08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}