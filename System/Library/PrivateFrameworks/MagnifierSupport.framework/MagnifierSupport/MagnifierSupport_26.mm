id sub_257E2B8D8(void *a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v10[0] & 1) == 0)
  {
    sub_257ECD410();
    v7 = sub_257ECDA20();
    v8 = sub_257ECFBD0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_257BAC000, v7, v8, "_physicalButtonInteraction", v9, 2u);
      MEMORY[0x259C74820](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    result = [a1 _state];
    if (result == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (LOBYTE(v10[0]) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v10[0]) = 0;
        sub_257ECC3F0();
        return sub_257ECDD70();
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_257D465A4();
        return sub_257BE4084(v10, &unk_27F8F62F0);
      }
    }
  }

  return result;
}

uint64_t sub_257E2BB84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_257E294A0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_257E2BBC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E1F998();
}

unint64_t sub_257E2BD50()
{
  result = qword_281545C20;
  if (!qword_281545C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545C20);
  }

  return result;
}

id sub_257E2BE0C()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) setAlpha_];
  if (v1)
  {

    return [v1 setAlpha_];
  }

  return result;
}

uint64_t sub_257E2BE74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257E174E0(a1, v4, v5, v6);
}

uint64_t sub_257E2BF28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D136FC(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_257E2BF60(id result, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = result;
    v5 = a4;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t sub_257E2C07C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257E14EA8(a1, v4, v5, v6);
}

uint64_t sub_257E2C130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257E15784(a1, v4, v5, v6);
}

uint64_t objectdestroy_798Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257E2C24C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_257E2C27C()
{
  v1 = *(v0 + 16);
  [v1 setEffect_];

  return [v1 setAlpha_];
}

uint64_t sub_257E2C2E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257E2C328(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_257E2C338(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_257E2C628(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (*(v2 + 16) == 1)
  {
    return a1();
  }

  else
  {
    return a2();
  }
}

uint64_t sub_257E2C668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D34C30(a1, v4, v5, v6);
}

uint64_t sub_257E2C71C(_OWORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257BEBF50(a1, v1);
}

uint64_t sub_257E2C7B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257C6E814(a1, v1);
}

uint64_t sub_257E2C84C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257E7CAE8(a1, v1);
}

uint64_t sub_257E2C8E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257BD3DB0(a1, v1);
}

uint64_t sub_257E2C97C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257C167C4;

  return sub_257C0334C(a1, a2, v6);
}

uint64_t sub_257E2CA44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257DBCE70(a1, v1);
}

uint64_t sub_257E2CB54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257E28310(a1, v4, v5, v7, v6);
}

uint64_t sub_257E2CC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257E27EC8(a1, v4, v5, v7, v6);
}

uint64_t sub_257E2CCE8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_257BE3DE0;

  return sub_257E03AC0(v2);
}

void sub_257E2CE6C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v6 = a4;

    v7 = a2;

    v8 = a3;
  }
}

void sub_257E2CEC8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
  }
}

double sub_257E2D198()
{
  v1 = type metadata accessor for SpatialTextBlock();
  v2 = *(v0 + *(v1 + 20));
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  *&result = vsubq_f32(vsubq_f32(*(v0 + *(v1 + 36) + 48), vmulq_n_f32(vmulq_f32(*(v0 + *(v1 + 36)), v3), *&v2)), vmulq_lane_f32(vmulq_f32(*(v0 + *(v1 + 36) + 16), v3), *&v2, 1)).u64[0];
  return result;
}

float sub_257E2D218(uint64_t a1, char a2, float a3, float a4, float a5)
{
  v6 = v5;
  v12 = type metadata accessor for SpatialTextBlock();
  v67 = *(v5 + v12[7]);
  v73 = *(v5 + v12[8]);
  type metadata accessor for LineSegment();
  inited = swift_initStackObject();
  *(inited + 16) = v67;
  *(inited + 32) = v73;
  v71 = *(a1 + v12[6]);
  *&v14 = sub_257E2D198();
  v63 = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = v71;
  *(v15 + 32) = v63;
  v16 = sub_257D743BC(v15);
  v61 = *(v5 + v12[6]);
  *&v17 = sub_257E2D198();
  v64 = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = v61;
  *(v18 + 32) = v64;
  v65 = *(a1 + v12[7]);
  v59 = *(a1 + v12[8]);
  v19 = swift_initStackObject();
  *(v19 + 16) = v65;
  *(v19 + 32) = v59;
  v20 = sub_257D743BC(v19);
  v21 = swift_initStackObject();
  *(v21 + 16) = v61;
  *(v21 + 32) = v67;
  *&v22 = sub_257E2D198();
  v68 = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = v68;
  *(v23 + 32) = v59;
  v24 = sub_257D743BC(v23);
  *&v25 = sub_257E2D198();
  v69 = v25;
  v26 = swift_initStackObject();
  *(v26 + 16) = v69;
  *(v26 + 32) = v73;
  v27 = swift_initStackObject();
  *(v27 + 16) = v71;
  *(v27 + 32) = v65;
  v28 = sub_257D743BC(v27);
  if ((a2 & 1) == 0)
  {
    if (v16 >= v20)
    {
      if (v24 >= v20)
      {
        if (v28 >= v20)
        {
          v28 = v20;
        }

        goto LABEL_21;
      }
    }

    else if (v24 >= v16)
    {
      if (v28 >= v16)
      {
        v28 = v16;
      }

LABEL_21:
      v29 = 1.0;
      goto LABEL_22;
    }

    if (v28 >= v24)
    {
      v28 = v24;
    }

    goto LABEL_21;
  }

  v29 = a5 / ((*(v5 + v12[10]) + *(a1 + v12[10])) * 0.5);
  if (v16 >= v20)
  {
    v30 = v20;
  }

  else
  {
    v30 = v16;
  }

  if (v24 < v30)
  {
    v30 = v24;
  }

  if (v28 >= v30)
  {
    v28 = v30;
  }

LABEL_22:
  v31 = v28 * v29;
  v32 = v12[9];
  v75 = *(v6 + v32);
  v66 = v75.columns[0];
  v70 = v75.columns[1];
  v74 = v75.columns[3];
  *v33.i64 = simd_quaternion(v75);
  v34 = vmulq_f32(v33, v33);
  *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
  v34.i32[0] = vadd_f32(*v34.i8, vdup_lane_s32(*v34.i8, 1)).u32[0];
  v35 = vrecpe_f32(v34.u32[0]);
  v36 = vmul_f32(v35, vrecps_f32(v34.u32[0], v35));
  v37 = vmulq_n_f32(vmulq_f32(v33, xmmword_257EEBEA0), vmul_f32(v36, vrecps_f32(v34.u32[0], v36)).f32[0]);
  v76.columns[0] = *(a1 + v32);
  v76.columns[1] = *(a1 + v32 + 16);
  v58 = v37;
  v60 = v76.columns[0];
  v62 = v76.columns[1];
  v76.columns[2] = *(a1 + v32 + 32);
  v76.columns[3] = *(a1 + v32 + 48);
  v72 = v76.columns[3];
  *v38.i64 = simd_quaternion(v76);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vrev64q_s32(v38);
  v41.i32[0] = v39.i32[1];
  v41.i32[3] = v39.i32[2];
  v42 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v38, v58, 3), v41, v58, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v39, 8uLL), *v58.f32, 1), vextq_s8(v40, v40, 8uLL), v58.f32[0]));
  v43 = vmulq_f32(v42, v42);
  v44 = atan2f(sqrtf(v43.f32[2] + vaddv_f32(*v43.f32)), v42.f32[3]);
  v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vnegq_f32(v66)), v70, vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL));
  v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
  v47 = vmulq_f32(v45, v45);
  *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
  v49 = vrsqrte_f32(v48);
  v50 = vmul_f32(v49, vrsqrts_f32(v48, vmul_f32(v49, v49)));
  v51 = vmulq_n_f32(v46, vmul_f32(v50, vrsqrts_f32(v48, vmul_f32(v50, v50))).f32[0]);
  v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), vnegq_f32(v60)), v62, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
  v53 = vmulq_f32(v52, v52);
  v47.f32[0] = v53.f32[1] + (v53.f32[2] + v53.f32[0]);
  v54 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
  *v52.f32 = vrsqrte_f32(v47.u32[0]);
  *v52.f32 = vmul_f32(*v52.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v52.f32, *v52.f32)));
  v55 = vmulq_n_f32(v54, vmul_f32(*v52.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v52.f32, *v52.f32))).f32[0]);
  v53.i64[0] = vextq_s8(v74, v74, 8uLL).u64[0];
  v56 = vextq_s8(v72, v72, 8uLL).u64[0];
  return (v31 + (((v44 + v44) * (v44 + v44)) * a3)) + ((vaddv_f32(vabs_f32(vadd_f32(vmul_f32(vsub_f32(vzip1_s32(v56, *v53.f32), vzip1_s32(*v53.f32, v56)), *&vzip2q_s32(v51, v55)), vadd_f32(vmul_f32(vsub_f32(vzip1_s32(*v72.i8, *v74.i8), vzip1_s32(*v74.i8, *v72.i8)), vzip1_s32(*v51.i8, *v55.i8)), vmul_f32(vsub_f32(vzip2_s32(*v72.i8, *v74.i8), vzip2_s32(*v74.i8, *v72.i8)), vzip2_s32(*v51.i8, *v55.i8)))))) * a4) * 0.5);
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

void sub_257E2D98C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BE0;
  v3 = objc_opt_self();
  *(inited + 32) = [v3 systemYellowColor];
  v4 = [v3 systemYellowColor];
  v5 = sub_257C1C70C();

  *(inited + 40) = v5;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_257ECF4C0();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

  v21 = v1;
  [v1 setAnimationDuration_];
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v12 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
  do
  {
    v13 = v10;
    while ((inited & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x259C72E20](v13, inited);
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_3:

LABEL_4:
      if (++v13 == 2)
      {
        goto LABEL_15;
      }
    }

    if (v13 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v14 = *(inited + 32 + 8 * v13);
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = [v9 _flatImageWithColor_];

    if (!v15)
    {
      goto LABEL_4;
    }

    MEMORY[0x259C72300]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    v10 = v13 + 1;
    sub_257ECF860();
    v11 = v22;
  }

  while (v13 != 1);
LABEL_15:
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_257E2DDD8();
  v16 = sub_257ECF7F0();

  v12 = v21;
  [v21 setAnimationImages_];

  v17 = [v21 animationImages];
  if (!v17)
  {
    v20 = 0;
    goto LABEL_27;
  }

  v18 = v17;
  v11 = sub_257ECF810();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_25:
    v20 = 0;
LABEL_26:

LABEL_27:
    [v12 setImage_];

    return;
  }

LABEL_24:
  if (!sub_257ED0210())
  {
    goto LABEL_25;
  }

LABEL_18:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x259C72E20](0, v11);
    goto LABEL_21;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v11 + 32);
LABEL_21:
    v20 = v19;
    goto LABEL_26;
  }

  __break(1u);
}

id sub_257E2DD80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusReticleImage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_257E2DDD8()
{
  result = qword_281543DF0;
  if (!qword_281543DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543DF0);
  }

  return result;
}

uint64_t sub_257E2DE24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_257E2DE6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257E2DEC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_257E2DF24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_257E2DFA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_257ECE5B0();
  sub_257E2E028(a1, a2, v10);
  v7 = v11;
  result = v10[0];
  v9 = v10[1];
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = result;
  *(a3 + 40) = v9;
  *(a3 + 56) = v7;
  return result;
}

uint64_t sub_257E2E028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (a2)
  {
    sub_257BDAB08();
    swift_retain_n();

    v5 = sub_257ECEAF0();
    v7 = v6;
    v9 = v8;
    v11 = v10 & 1;
    sub_257BD1B90(v5, v6, v10 & 1);
  }

  else
  {
    swift_retain_n();
    v5 = 0;
    v7 = 0;
    v11 = 0;
    v9 = 0;
  }

  sub_257ECC3F0();
  sub_257E2F054(v5, v7, v11, v9);

  sub_257E2F098(v5, v7, v11, v9);
  *a3 = a1;
  a3[1] = v5;
  a3[2] = v7;
  a3[3] = v11;
  a3[4] = v9;
  sub_257E2F098(v5, v7, v11, v9);
}

uint64_t sub_257E2E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  v3 = sub_257ECE1D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  v15 = *v2;
  v11 = *(v2 + 2);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF988], v3);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F80);
  v13 = sub_257BD2D4C(&qword_27F8F9F88, &qword_27F8F9F80);
  sub_257ECEBA0();
  (*(v4 + 8))(v6, v3);
  v18 = v15;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F90);
  v20 = v12;
  v21 = v13;
  swift_getOpaqueTypeConformance2();
  sub_257BD2D4C(&qword_27F8F9F98, &qword_27F8F9F90);
  sub_257ECECA0();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_257E2E3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EF8);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  if (a3)
  {
    sub_257ECE9A0();
  }

  else
  {
    sub_257ECEA30();
  }

  sub_257ECE9F0();
  v11 = sub_257ECEA50();

  KeyPath = swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F00);
  (*(*(v13 - 8) + 16))(v10, a1, v13);
  v14 = &v10[*(v8 + 36)];
  *v14 = KeyPath;
  v14[1] = v11;
  if (a2)
  {
    sub_257C0DACC();
    sub_257ECC3F0();
    v15 = sub_257ECFEF0();
    v20[0] = 0.0;
    [v15 getWhite:v20 alpha:0];

    if (v20[0] <= 0.5)
    {
      v16 = sub_257ECED90();
    }

    else
    {
      v16 = sub_257ECED70();
    }

    a2 = v16;
  }

  v17 = swift_getKeyPath();
  sub_257E2E98C(v10, a4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F08);
  v19 = (a4 + *(result + 36));
  *v19 = v17;
  v19[1] = a2;
  return result;
}

uint64_t sub_257E2E5FC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_257ECE750();
  v3 = *(v2 - 8);
  v20 = v2;
  v21 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F10);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F18);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v25 = v1[3];
  v14 = swift_allocObject();
  v15 = *(v1 + 1);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v1 + 2);
  *(v14 + 64) = v1[6];
  v23 = v1;
  sub_257ECC3F0();

  sub_257E2EA70(&v25, v24);
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F20);
  sub_257E2EAE0();
  sub_257ECEEA0();
  v16 = &v8[*(v6 + 36)];
  *v16 = v12;
  *(v16 + 1) = v11;
  *(v16 + 2) = v13;
  v24[0] = v11;
  v24[1] = v13;
  sub_257E2EBC0();
  sub_257BDAB08();
  sub_257ECC3F0();

  sub_257ECEBF0();
  sub_257BE4084(v8, &qword_27F8F9F10);
  sub_257ECE740();
  sub_257E2ECCC();
  sub_257E2ED88(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  v17 = v20;
  sub_257ECEB60();
  (*(v21 + 8))(v5, v17);
  return sub_257BE4084(v10, &qword_27F8F9F18);
}

uint64_t sub_257E2E98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E2EA24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  sub_257ECC3F0();

  return sub_257ECC3F0();
}

uint64_t sub_257E2EA70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_257E2EAE0()
{
  result = qword_27F8F9F28;
  if (!qword_27F8F9F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F20);
    sub_257E2EB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F28);
  }

  return result;
}

unint64_t sub_257E2EB6C()
{
  result = qword_27F8F9F30;
  if (!qword_27F8F9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F30);
  }

  return result;
}

unint64_t sub_257E2EBC0()
{
  result = qword_27F8F9F38;
  if (!qword_27F8F9F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F10);
    sub_257BD2D4C(&qword_27F8F9F40, &qword_27F8F9F48);
    sub_257E2EC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F38);
  }

  return result;
}

unint64_t sub_257E2EC78()
{
  result = qword_27F8F9F50;
  if (!qword_27F8F9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F50);
  }

  return result;
}

unint64_t sub_257E2ECCC()
{
  result = qword_27F8F9F58;
  if (!qword_27F8F9F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F18);
    sub_257E2EBC0();
    sub_257E2ED88(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F58);
  }

  return result;
}

uint64_t sub_257E2ED88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257E2EDD0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_257E2EE2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_257E2EE90()
{
  result = qword_27F8F9F60;
  if (!qword_27F8F9F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F08);
    sub_257E2EF48();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F60);
  }

  return result;
}

unint64_t sub_257E2EF48()
{
  result = qword_27F8F9F68;
  if (!qword_27F8F9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9EF8);
    sub_257BD2D4C(&qword_27F8F9F70, &qword_27F8F9F00);
    sub_257BD2D4C(&qword_27F8F7BC8, &qword_27F8F7BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F68);
  }

  return result;
}

uint64_t sub_257E2F054(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_257BD1B90(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_257E2F098(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_257C0300C(result, a2, a3 & 1);
  }

  return result;
}

id static CompositionRoot.clarityUIRootView.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F8F46C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27F8F9FA8;
  *a1 = qword_27F8F9FA8;

  return v2;
}

id sub_257E2F1B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
  if (qword_27F8F46C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F8F9FA0;
  v2 = qword_281544FE0;
  sub_257ECC3F0();
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = xmmword_281548330;
  v5 = qword_281548340;
  v6 = qword_281548348;
  v7 = qword_281548350;
  v8 = qword_281548358;
  objc_allocWithZone(type metadata accessor for MAGCaptureService());
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  result = MAGCaptureService.init(captureSession:eventHandler:environment:)(v0, v1, &v4);
  qword_27F8F9FA8 = result;
  return result;
}

uint64_t sub_257E2F320()
{
  if (qword_27F8F46C8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8F9FA8;
  v1 = type metadata accessor for MagnifierStillImageStore();
  swift_allocObject();
  result = MagnifierStillImageStore.init(captureService:)(v0);
  qword_27F8F9FC8 = v1;
  unk_27F8F9FD0 = &protocol witness table for MagnifierStillImageStore;
  qword_27F8F9FB0 = result;
  return result;
}

uint64_t static CompositionRoot.stillImageStore.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F8F46D0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_257C024BC(&qword_27F8F9FB0, v2);
}

uint64_t sub_257E2F450(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  if (qword_27F8F46D0 != -1)
  {
    swift_once();
  }

  sub_257C024BC(&qword_27F8F9FB0, v10);
  type metadata accessor for ImageCache();
  v7 = swift_allocObject();
  sub_257C024BC(v10, v7 + 24);
  *(v7 + 16) = a2;
  v8 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v7 + 64) = v8;
  [v8 setTotalCostLimit_];
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  *a4 = v7;
  return result;
}

uint64_t sub_257E2F528()
{
  type metadata accessor for MAGFeatures();
  v0 = swift_allocObject();
  if (qword_27F8F4870 != -1)
  {
    swift_once();
  }

  v1 = qword_27F913518;
  sub_257E32D54();
  v2 = v1;
  result = sub_257ECDEF0();
  *(v0 + 16) = result;
  off_27F8F9FD8 = v0;
  return result;
}

uint64_t static CompositionRoot.settings.getter()
{
  type metadata accessor for MAGSettings();

  return swift_initStaticObject();
}

id sub_257E2F644()
{
  result = [objc_allocWithZone(type metadata accessor for MAGPulseFeedbackProcessor()) init];
  qword_27F8F9FE0 = result;
  return result;
}

uint64_t static CompositionRoot.activityStore.getter()
{
  type metadata accessor for MAGActivityStore();

  return swift_initStaticObject();
}

id sub_257E2F6D0()
{
  if (qword_27F8F4750 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8FA040;
  v1 = qword_27F8F4730;
  sub_257ECC3F0();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_27F8FA020;
  v3 = qword_27F8F46C8;
  sub_257ECC3F0();
  if (v3 != -1)
  {
    swift_once();
  }

  v6 = qword_27F8F9FA8;
  type metadata accessor for MAGDocumentFramingService();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v2;
  v4[4] = v6;
  qword_27F8F9FE8 = v4;

  return v6;
}

uint64_t sub_257E2F814()
{
  if (qword_27F8F4768 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8FA058;
  type metadata accessor for MAGSpeechRecognitionService();
  swift_allocObject();
  qword_27F8F9FF0 = MAGSpeechRecognitionService.init(audioService:)(v0);

  return sub_257ECC3F0();
}

id sub_257E2F920()
{
  if (qword_27F8F4708 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8F9FF8;
  v1 = qword_27F8F46C8;
  sub_257ECC3F0();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27F8F9FA8 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue);
  v3 = objc_allocWithZone(type metadata accessor for MAGARService());
  result = MAGARService.init(eventHandler:captureSessionQueue:)(v0, v2);
  qword_27F8FA000 = result;
  return result;
}

uint64_t sub_257E2FA70()
{
  v0 = sub_257ECFD20();
  v28 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v22);
  v3 = sub_257ECF190();
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27F8F4718 != -1)
  {
    swift_once();
  }

  v4 = qword_27F8F4710;
  v27 = qword_27F8FA008;
  sub_257ECC3F0();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27F8F4758;
  v26 = qword_27F8FA000;
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_27F8F4778;
  v25 = qword_27F8FA048;
  sub_257ECC3F0();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27F8F46F0;
  v24 = qword_27F8FA068;
  sub_257ECC3F0();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_27F8F9FE0;
  type metadata accessor for MAGPointAndSpeakService();
  v9 = swift_allocObject();
  v23 = v8;
  sub_257ECCC70();
  sub_257ECCC70();
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) = MEMORY[0x277D84F90];
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = MEMORY[0x277D84F98];
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur) = 0;
  v11 = v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
  v12 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine;
  *(v9 + v12) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  v13 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager;
  type metadata accessor for RotationRateManager();
  v14 = swift_allocObject();
  *(v14 + 16) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v9 + v13) = v14;
  *(v14 + 24) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = 0;
  v21 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textQueue;
  v29 = sub_257BD52CC();
  sub_257ECF180();
  v30 = v10;
  v20[1] = sub_257E32C64();
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  v15 = *(v28 + 104);
  v15(v2, *MEMORY[0x277D85260], v0);
  *&v21[v9] = sub_257ECFD80();
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = 0;
  v28 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue;
  v21 = "coration.type.text";
  sub_257ECF160();
  v30 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v15(v2, *MEMORY[0x277D85268], v0);
  result = sub_257ECFD80();
  v17 = v27;
  *(v9 + v28) = result;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_eventHandler) = v17;
  v18 = v25;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService) = v26;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textDetectionService) = v18;
  v19 = v23;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine) = v24;
  *(v9 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseFeedbackProcessor) = v19;
  qword_27F8FA010 = v9;
  return result;
}

uint64_t sub_257E30134()
{
  if (qword_27F8F4758 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8FA048;
  v1 = qword_27F8F4710;
  sub_257ECC3F0();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_27F8FA000;
  type metadata accessor for MAGDoorDetectionService();
  swift_allocObject();
  result = MAGDoorDetectionService.init(textDetectionService:arService:)(v0, v2);
  qword_27F8FA018 = result;
  return result;
}

void sub_257E30224()
{
  if (qword_27F8F4710 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8FA000;
  type metadata accessor for MAGFrameProviderService();
  v1 = swift_allocObject();
  *(v1 + 64) = sub_257E8235C;
  *(v1 + 72) = 0;
  *(v1 + 80) = v0;
  v2 = qword_281544FE0;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = xmmword_281548330;
  v5 = qword_281548340;
  v6 = qword_281548348;
  v7 = qword_281548350;
  v8 = qword_281548358;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();

  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  qword_27F8FA020 = v1;
}

uint64_t sub_257E3037C()
{
  type metadata accessor for MAGVideoCaptioningService();
  swift_allocObject();
  result = MAGVideoCaptioningService.init()();
  qword_27F8FA028 = result;
  return result;
}

void sub_257E30438()
{
  if (qword_27F8F4710 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8F4740;
  v1 = qword_27F8FA000;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F8FA030;
  v3 = qword_27F8F46F0;
  sub_257ECC3F0();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_27F8F9FE0;
  v5 = objc_allocWithZone(type metadata accessor for MAGObjectUnderstandingService());
  v6 = v4;
  v7 = sub_257C562A8(v1, v2, v6);

  qword_27F8FA038 = v7;
}

id sub_257E3057C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t static CompositionRoot.followUpContext.getter()
{
  type metadata accessor for MAGFollowUpContext();

  return swift_initStaticObject();
}

uint64_t sub_257E30668()
{
  type metadata accessor for MAGTextDetectionService();
  swift_allocObject();
  result = MAGTextDetectionService.init()();
  qword_27F8FA048 = result;
  return result;
}

id sub_257E306CC()
{
  type metadata accessor for MAGImageCaptionService();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  qword_27F8FA050 = v0;
  return result;
}

void sub_257E30748()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedInstance];
  type metadata accessor for MAGAudioService();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CB8030];
  v3 = *MEMORY[0x277CB80A8];
  v7[0] = 0;
  if ([v0 setCategory:v2 mode:v3 options:1 error:v7])
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    v6 = sub_257ECC9F0();

    swift_willThrow();
  }

  *(v1 + 16) = v0;
  qword_27F8FA058 = v1;
}

uint64_t sub_257E308B8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  v6 = swift_allocObject();
  result = a3(MEMORY[0x277D84F90]);
  *(v6 + 16) = result;
  *a4 = v6;
  return result;
}

char *sub_257E3093C()
{
  if (qword_27F8F4768 != -1)
  {
    swift_once();
  }

  type metadata accessor for MAGOutputEngine(0);
  swift_allocObject();
  v0 = sub_257ECC3F0();
  result = MAGOutputEngine.init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)(v0, 1);
  qword_27F8FA068 = result;
  return result;
}

uint64_t sub_257E309E4(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_257ECC3F0();
}

id static CompositionRoot.magnifierExtensionViewController.getter()
{
  v0 = sub_257E30B80();
  v1 = [objc_allocWithZone(type metadata accessor for MagnifierExtensionViewController()) initWithRootViewController_];

  return v1;
}

uint64_t static CompositionRoot.magnifierLockedCameraCaptureSession.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_27F8FA070 = a1;
}

char *sub_257E30B80()
{
  v121 = sub_257ECDE70();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v122 = &v102 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v103 = &v102 - v1;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EE0);
  v107 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v104 = &v102 - v2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EE8);
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v105 = &v102 - v3;
  v4 = sub_257ECFD20();
  v145 = *(v4 - 8);
  v146 = v4;
  MEMORY[0x28223BE20](v4);
  v142 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v138);
  v140 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF190();
  MEMORY[0x28223BE20](v7 - 8);
  v144 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v102 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CA0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v102 - v15;
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  v128 = qword_27F8FA060;
  if (qword_27F8F46D0 != -1)
  {
    swift_once();
  }

  sub_257C024BC(&qword_27F8F9FB0, v154);
  if (qword_27F8F4778 != -1)
  {
    swift_once();
  }

  v127 = qword_27F8FA068;
  if (qword_27F8F46C8 != -1)
  {
    swift_once();
  }

  v126 = qword_27F8F9FA8;
  if (qword_27F8F46C0 != -1)
  {
    swift_once();
  }

  v125 = qword_27F8F9FA0;
  if (qword_27F8F4710 != -1)
  {
    swift_once();
  }

  v124 = qword_27F8FA000;
  if (qword_27F8F4708 != -1)
  {
    swift_once();
  }

  v123 = qword_27F8F9FF8;
  if (qword_27F8F4700 != -1)
  {
    swift_once();
  }

  v119 = qword_27F8F9FF0;
  if (qword_27F8F4758 != -1)
  {
    swift_once();
  }

  v118 = qword_27F8FA048;
  if (qword_27F8F4760 != -1)
  {
    swift_once();
  }

  v117 = qword_27F8FA050;
  if (qword_27F8F4750 != -1)
  {
    swift_once();
  }

  v141 = qword_27F8FA040;
  if (qword_27F8F4728 != -1)
  {
    swift_once();
  }

  v139 = qword_27F8FA018;
  if (qword_27F8F4748 != -1)
  {
    swift_once();
  }

  v137 = qword_27F8FA038;
  if (qword_27F8F4740 != -1)
  {
    swift_once();
  }

  v136 = qword_27F8FA030;
  if (qword_27F8F4720 != -1)
  {
    swift_once();
  }

  v135 = qword_27F8FA010;
  if (qword_27F8F4718 != -1)
  {
    swift_once();
  }

  v134 = qword_27F8FA008;
  if (qword_27F8F4730 != -1)
  {
    swift_once();
  }

  v133 = qword_27F8FA020;
  type metadata accessor for MAGFollowUpContext();
  inited = swift_initStaticObject();
  if (qword_27F8F46F0 != -1)
  {
    swift_once();
  }

  v132 = qword_27F8F9FE0;
  if (qword_27F8F4738 != -1)
  {
    swift_once();
  }

  v131 = qword_27F8FA028;
  v115 = type metadata accessor for AppViewController();
  v17 = objc_allocWithZone(v115);
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isControlContainerViewLoaded] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_deactivationReasons] = MEMORY[0x277D84FA0];
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning] = 0;
  v18 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedPhoto;
  *&v149 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BA0);
  sub_257ECDD20();
  (*(v14 + 32))(&v17[v18], v16, v13);
  v19 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedImage;
  *&v149 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0);
  sub_257ECDD20();
  (*(v10 + 32))(&v17[v19], v12, v9);
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionButtonInteraction] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousGestureZoomFactor] = 0xBFF0000000000000;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic] = 0;
  v20 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator;
  *&v17[v20] = sub_257DFFEAC();
  v21 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor];
  *v21 = 0;
  v21[8] = 1;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pinchStartZoomFactor] = 0x3FF0000000000000;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_setupResult] = 0;
  v114 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue;
  v143 = sub_257BD52CC();
  sub_257ECF150();
  *&v149 = MEMORY[0x277D84F90];
  v130 = sub_257E32C64();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  v22 = sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  v23 = *MEMORY[0x277D85260];
  v25 = v145 + 104;
  v24 = *(v145 + 104);
  v26 = v142;
  v24(v142, v23, v146);
  *&v17[v114] = sub_257ECFD80();
  v102 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_audioQueue;
  sub_257ECF150();
  *&v149 = MEMORY[0x277D84F90];
  v114 = v22;
  sub_257ED0180();
  v113 = v23;
  v145 = v25;
  v112 = v24;
  v24(v26, v23, v146);
  *&v17[v102] = sub_257ECFD80();
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusIndicatorFadeTime] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel] = 1;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel] = 1;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kDetectionInformationLabelPadding] = 0x4034000000000000;
  v27 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncement];
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator] = 0;
  v28 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameModeDescriptionPublisher;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  v29 = v103;
  sub_257ECDD30();
  swift_endAccess();
  swift_getKeyPath();
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
  v30 = v104;
  v31 = v108;
  sub_257ECDDC0();

  (*(v106 + 8))(v29, v31);
  sub_257BD2D4C(&qword_281544428, &qword_27F8F9EE0);
  v32 = v105;
  v33 = v110;
  sub_257ECDE10();
  (*(v107 + 8))(v30, v33);
  sub_257BD2D4C(&qword_281544360, &qword_27F8F9EE8);
  v34 = v111;
  v35 = sub_257ECDD90();
  (*(v109 + 8))(v32, v34);
  *&v17[v28] = v35;
  v36 = MEMORY[0x277D84F90];
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activeControlDescriptionPublishers] = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84FA0];
  v38 = v36 >> 62;
  v39 = MEMORY[0x277D84FA0];
  if (v36 >> 62)
  {
    if (sub_257ED0210())
    {
      v39 = sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v39 = MEMORY[0x277D84FA0];
    }
  }

  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cancellables] = v39;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_informationSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_dRotationSubscription] = 0;
  v40 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptionProvider;
  type metadata accessor for ControlSubscriptionProvider();
  swift_allocObject();
  *&v17[v40] = sub_257E3E3A4();
  v41 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_landscapeControlSubscriptionProvider;
  swift_allocObject();
  *&v17[v41] = sub_257E3E3A4();
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlRestorationSubscriptions] = 0;
  v42 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptions;
  *&v17[v42] = sub_257E2D04C();
  v43 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_landscapeControlSubscriptions;
  *&v17[v43] = sub_257E2D04C();
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensDisplayAppearanceSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cameraTypeSubscription] = 0;
  if (v38)
  {
    if (sub_257ED0210())
    {
      v44 = sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v44 = MEMORY[0x277D84FA0];
    }

    *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions] = v44;
    *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription] = 0;
    if (sub_257ED0210())
    {
      v37 = sub_257BF2CF8(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions] = v37;
    *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription] = 0;
  }

  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionSubscriptions] = v37;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_contentSizeCategorySubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleDetectionSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activityZoomPercentageSubscripton] = 0;
  v45 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_springBoardServer;
  *&v17[v45] = [objc_allocWithZone(MEMORY[0x277CE7E40]) init];
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakFeedbacksSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionFeedbacksSubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_keyboardVQASubscription] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_microphoneToggleSubscription] = 0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = objc_opt_self();
  v48 = [v47 bundleForClass_];
  v49 = sub_257ECF4C0();
  v50 = sub_257ECF4C0();
  v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

  if (!v51)
  {
    sub_257ECF500();
    v51 = sub_257ECF4C0();
  }

  v52 = [v47 bundleForClass_];
  v53 = sub_257ECF4C0();
  v54 = sub_257ECF4C0();
  v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

  if (!v55)
  {
    sub_257ECF500();
    v55 = sub_257ECF4C0();
  }

  v56 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController;
  type metadata accessor for ActivityNameOnBoardingController();
  v57 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v51 detailText:v55 icon:0];

  *&v17[v56] = v57;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton] = 0;
  v58 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName];
  *v58 = 0;
  v58[1] = 0;
  v59 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor;
  v60 = objc_allocWithZone(MEMORY[0x277CE7D68]);
  v61 = sub_257ECF4C0();
  v62 = [v60 initWithHIDTapIdentifier:v61 HIDEventTapPriority:100 systemEventTapIdentifier:0 systemEventTapPriority:0];

  *&v17[v59] = v62;
  v63 = MEMORY[0x277D84F90];
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v64 = [objc_opt_self() shared];
  }

  else
  {
    v64 = 0;
  }

  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_modelsManager] = v64;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTipScene] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastARFrame] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useSpeechFeedback] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechMaxFrameCount] = 5;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechDepthArray] = v63;
  v65 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastSpeechDate;
  v66 = sub_257ECCC80();
  (*(*(v66 - 8) + 56))(&v17[v65], 1, 1, v66);
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect] = 0;
  sub_257ECCC70();
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useDoorSpeechFeedback] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEventsTask] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_personsLabelPool] = v63;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView] = 0;
  v67 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
  type metadata accessor for DetectionLabel();
  *&v17[v67] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView] = 0;
  v68 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleSessionDispatchQueue;
  sub_257ECD2C0();
  *&v17[v68] = sub_257ECD2B0();
  v69 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousAction];
  *v69 = 0;
  v69[1] = 0xE000000000000000;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionDoorBoxLayers] = v63;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorAttributesCache] = v63;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDecorationsCache] = MEMORY[0x277D84F98];
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView] = 0;
  v70 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_engine;
  *&v17[v70] = [objc_allocWithZone(MEMORY[0x277CE6AF8]) &off_279854B78];
  v71 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_languageTranslator;
  *&v17[v71] = [objc_allocWithZone(MEMORY[0x277CE6AC8]) &off_279854B78];
  sub_257ECCC70();
  v72 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastImageDescriptionString];
  *v72 = 0;
  v72[1] = 0xE000000000000000;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastDetectedTextCheckTime] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextGroups] = v63;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback] = 0;
  v73 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement];
  *v73 = 0;
  v73[1] = 0xE000000000000000;
  sub_257ECCC70();
  sub_257ECCC70();
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncementWasUpsideDownNotification] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback] = 0;
  v74 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement];
  *v74 = 0;
  v74[1] = 0xE000000000000000;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeTooDarkToDetect] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeFlashlightDispatchItem] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerDebugLayer] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakInstructionsAlertController] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_handPoseModelNotAvailable] = 0;
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_providedTextTooCloseFeedback] = 0;
  v75 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kAXSMagnifierLaunchedNotification];
  *v75 = 0xD00000000000002ALL;
  v75[1] = 0x8000000257F07DF0;
  v76 = &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kAXSMagnifierClosedNotification];
  *v76 = 0xD000000000000028;
  v76[1] = 0x8000000257F07E20;
  v77 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiMonitor;
  (*(v120 + 104))(v122, *MEMORY[0x277CD8CA8], v121);
  sub_257ECDEB0();
  swift_allocObject();
  *&v17[v77] = sub_257ECDE90();
  v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiConnected] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController] = 0;
  v78 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerTextQueue;
  sub_257ECF170();
  *&v149 = v63;
  sub_257ED0180();
  v112(v142, v113, v146);
  *&v17[v78] = sub_257ECFD80();
  v79 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer;
  v149 = xmmword_281548330;
  v150 = qword_281548340;
  v151 = qword_281548348;
  v152 = qword_281548350;
  v153 = qword_281548358;
  objc_allocWithZone(type metadata accessor for LiveCameraLayer());
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  *&v17[v79] = sub_257DBE70C(&v149);
  v80 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer;
  *&v17[v80] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v81 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_settingsButton;
  type metadata accessor for SettingsButton();
  *&v17[v81] = [swift_getObjCClassFromMetadata() buttonWithType_];
  v82 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
  type metadata accessor for ImageWell();
  *&v17[v82] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton] = 0;
  v83 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView;
  *&v17[v83] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v84 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel;
  *&v17[v84] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogWorkItem] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionTimer] = 0;
  sub_257ECCC70();
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___freezeFrameDebugView] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButtonConstraints] = v63;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray] = 0;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionHandler] = v128;
  sub_257C024BC(v154, &v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore]);
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine] = v127;
  v85 = v126;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] = v126;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureEventHandler] = v125;
  v86 = v124;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService] = v124;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arEventHandler] = v123;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechRecognitionService] = v119;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService] = v118;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionService] = v117;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_advancedEventHandler] = v141;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionService] = v139;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService] = v137;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_ouEventHandler] = v136;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService] = v135;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakEventHandler] = v134;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_frameProviderService] = v133;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_followUpContext] = inited;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor] = v132;
  *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_videoCaptioningService] = v131;
  v148.receiver = v17;
  v148.super_class = v115;
  sub_257ECC3F0();
  sub_257ECC3F0();
  v87 = v85;
  sub_257ECC3F0();
  v88 = v86;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  v89 = v137;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  v90 = v132;
  sub_257ECC3F0();
  v91 = objc_msgSendSuper2(&v148, sel_initWithNibName_bundle_, 0, 0);
  v92 = *&v91[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionHandler];
  v93 = v91;
  v94 = [v93 description];
  v95 = sub_257ECF500();
  v97 = v96;

  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = swift_allocObject();
  *(v99 + 16) = &unk_257EEC1F8;
  *(v99 + 24) = v98;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v147 = *(v92 + 16);
  *(v92 + 16) = 0x8000000000000000;
  sub_257EC7CC4(&unk_257EE7DB0, v99, v95, v97, isUniquelyReferenced_nonNull_native);

  *(v92 + 16) = v147;
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v154);
  return v93;
}

unint64_t sub_257E32C64()
{
  result = qword_281543F30;
  if (!qword_281543F30)
  {
    sub_257ECFCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543F30);
  }

  return result;
}

uint64_t sub_257E32CBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257BE3DE0;

  return sub_257D9A698(a1, v1);
}

unint64_t sub_257E32D54()
{
  result = qword_27F8FA078;
  if (!qword_27F8FA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA078);
  }

  return result;
}

uint64_t MAGActivity.id.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t MAGActivity.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_257ED02D0();

  MEMORY[0x259C72150](v1, v2);
  MEMORY[0x259C72150](23847, 0xE200000000000000);
  return 0xD000000000000013;
}

uint64_t static MAGActivity.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640();
  }
}

uint64_t MAGActivity.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECF5D0();
  return sub_257ED0800();
}

uint64_t sub_257E32EF0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_257E32EFC()
{
  sub_257ED07B0();
  sub_257ECF5D0();
  return sub_257ED0800();
}

uint64_t sub_257E32F50()
{
  sub_257ED07B0();
  sub_257ECF5D0();
  return sub_257ED0800();
}

unint64_t sub_257E32F9C()
{
  result = qword_27F8FA080;
  if (!qword_27F8FA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA080);
  }

  return result;
}

unint64_t sub_257E32FF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_257ED02D0();

  MEMORY[0x259C72150](v1, v2);
  MEMORY[0x259C72150](23847, 0xE200000000000000);
  return 0xD000000000000013;
}

uint64_t sub_257E3307C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640();
  }
}

uint64_t sub_257E330D0()
{
  v1 = 0xEB00000000646569;
  v2 = 0x6669636570736E75;
  v3 = [v0 horizontalSizeClass];
  if (v3)
  {
    v4 = 0x6E776F6E6B6E75;
    if (v3 == 1)
    {
      v4 = 0x746361706D6F63;
    }

    if (v3 == 2)
    {
      v5 = 0x72616C75676572;
    }

    else
    {
      v5 = v4;
    }

    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x6669636570736E75;
    v6 = 0xEB00000000646569;
  }

  MEMORY[0x259C72150](v5, v6);

  MEMORY[0x259C72150](544612396, 0xE400000000000000);
  v7 = [v0 verticalSizeClass];
  if (v7)
  {
    v8 = 0x6E776F6E6B6E75;
    if (v7 == 1)
    {
      v8 = 0x746361706D6F63;
    }

    if (v7 == 2)
    {
      v2 = 0x72616C75676572;
    }

    else
    {
      v2 = v8;
    }

    v1 = 0xE700000000000000;
  }

  MEMORY[0x259C72150](v2, v1);

  MEMORY[0x259C72150](125, 0xE100000000000000);
  return 2123899;
}

uint64_t sub_257E33264(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_257E332AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257E33318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA090);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13[-v10];
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0A0);
  sub_257BD2D4C(&qword_27F8FA0A8, &qword_27F8FA0A0);
  sub_257ECEA80();
  sub_257ECE550();
  sub_257BD2D4C(&qword_27F8FA098, &qword_27F8FA090);
  sub_257ECEBC0();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_257E33514@<X0>(void (*a1)(void, void, void)@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v37 = a2;
  v36 = a1;
  v42 = a5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0B0);
  v49 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v35 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0B8);
  v48 = *(v39 - 8);
  v12 = MEMORY[0x28223BE20](v39);
  v45 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v35 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0C0);
  v47 = *(v38 - 8);
  v15 = MEMORY[0x28223BE20](v38);
  v43 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v35 - v17;
  sub_257ECE550();
  v59 = a1;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0C8);
  sub_257E34E48(&qword_27F8FA0D0, &qword_27F8FA0C8);
  sub_257ECEFB0();
  sub_257ECE550();
  v19 = v36;
  v20 = v37;
  v55 = v36;
  v56 = v37;
  v57 = v18;
  v58 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0D8);
  sub_257E34DAC();
  sub_257ECEFB0();
  sub_257ECE550();
  v51 = v19;
  v52 = v20;
  v53 = v18;
  v54 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0F8);
  sub_257BD2D4C(&qword_27F8FA100, &qword_27F8FA0F8);
  v21 = v46;
  sub_257ECEFB0();
  v35 = *(v47 + 16);
  v22 = v43;
  v23 = v38;
  v35(v43, v44, v38);
  v37 = *(v48 + 16);
  v24 = v45;
  v25 = v39;
  v37(v45, v50, v39);
  v36 = *(v49 + 16);
  v26 = v40;
  v27 = v21;
  v28 = v41;
  v36(v40, v27, v41);
  v29 = v42;
  v35(v42, v22, v23);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA108);
  v37(&v29[*(v30 + 48)], v24, v25);
  v36(&v29[*(v30 + 64)], v26, v28);
  v31 = *(v49 + 8);
  v31(v46, v28);
  v32 = *(v48 + 8);
  v32(v50, v25);
  v33 = *(v47 + 8);
  v33(v44, v23);
  v31(v26, v28);
  v32(v45, v25);
  return (v33)(v43, v23);
}

uint64_t sub_257E33B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_257ECC3F0();
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98);
  sub_257BD2D4C(&qword_27F8FA138, &qword_27F8FA130);
  sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98);
  sub_257E350D0();
  return sub_257ECEF90();
}

uint64_t sub_257E33CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MAGSoundEffect.rawValue.getter();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  sub_257BDAB08();
  sub_257ECC3F0();

  sub_257ECC3F0();
  return sub_257ECEED0();
}

uint64_t sub_257E33DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_257ECC3F0();
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0F0);
  sub_257BD2D4C(&qword_27F8FA138, &qword_27F8FA130);
  sub_257E34E48(&qword_27F8FA0E8, &qword_27F8FA0F0);
  sub_257E350D0();
  return sub_257ECEF90();
}

uint64_t sub_257E33F1C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  sub_257ECC3F0();
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98);
  sub_257BD2D4C(&qword_27F8FA148, &qword_27F8F7F00);
  sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98);
  sub_257E35134();
  return sub_257ECEF90();
}

uint64_t sub_257E34094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_257ECE540();
  MEMORY[0x28223BE20](v10 - 8);
  sub_257ECE530();
  sub_257ECE520();
  MAGSoundEffect.rawValue.getter();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  sub_257ECC3F0();
  sub_257ECC3F0();

  return sub_257ECEEC0();
}

uint64_t sub_257E343F0()
{
  v0 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v2, &v5[v3[5]]);
  v5[v3[6]] = 0;
  v5[v3[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v2, type metadata accessor for MAGOutputEvent.EventType);
  *&v5[v3[8]] = v6;
  sub_257CBBC80(v5);
  return sub_257C15F24(v5, type metadata accessor for MAGOutputEvent);
}

uint64_t sub_257E34580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v42 = a1;
  v52 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v41 = &v39 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA110) - 8;
  v10 = MEMORY[0x28223BE20](v48);
  v49 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v47 = &v39 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA118);
  v44 = *(v46 - 8);
  v15 = MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v40 = &v39 - v17;
  sub_257ECE550();
  v56 = a2;
  v57 = a3;
  v58 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE80();
  sub_257ECF0C0();
  sub_257ECE550();
  v18 = swift_allocObject();
  v18[2] = v42;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v19 = v41;
  sub_257ECEEC0();
  v53 = a2;
  v54 = a3;
  v55 = a4;
  sub_257ECEE60();
  v21 = v56;
  v20 = v57;

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 == 0;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v45;
  (*(v50 + 32))(v45, v19, v51);
  v27 = v47;
  v28 = (v26 + *(v48 + 44));
  *v28 = KeyPath;
  v28[1] = sub_257E34F64;
  v28[2] = v25;
  sub_257E34F7C(v26, v27);
  v30 = v43;
  v29 = v44;
  v31 = *(v44 + 16);
  v32 = v40;
  v33 = v46;
  v31(v43, v40, v46);
  v34 = v49;
  sub_257E34FEC(v27, v49);
  v35 = v52;
  v31(v52, v30, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA128);
  sub_257E34FEC(v34, &v35[*(v36 + 48)]);
  sub_257E3505C(v27);
  v37 = *(v29 + 8);
  v37(v32, v33);
  sub_257E3505C(v34);
  return (v37)(v30, v33);
}

uint64_t sub_257E34A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE60();
  v13 = v18;
  *v9 = v17;
  v9[1] = v13;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v9, &v12[v10[5]]);
  v12[v10[6]] = 0;
  v12[v10[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v9, type metadata accessor for MAGOutputEvent.EventType);
  *&v12[v10[8]] = v14;
  sub_257CBBC80(v12);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_257ECEE70();
  sub_257C15F24(v12, type metadata accessor for MAGOutputEvent);
}

uint64_t sub_257E34C88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA090);
  sub_257BD2D4C(&qword_27F8FA098, &qword_27F8FA090);
  swift_getOpaqueTypeConformance2();
  return sub_257ECE250();
}

unint64_t sub_257E34DAC()
{
  result = qword_27F8FA0E0;
  if (!qword_27F8FA0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA0D8);
    sub_257E34E48(&qword_27F8FA0E8, &qword_27F8FA0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA0E0);
  }

  return result;
}

uint64_t sub_257E34E48(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257E34EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257ECE460();
  *a1 = result & 1;
  return result;
}

uint64_t sub_257E34F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E34FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E3505C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257E350D0()
{
  result = qword_27F8FA140;
  if (!qword_27F8FA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA140);
  }

  return result;
}

unint64_t sub_257E35134()
{
  result = qword_27F8FA150;
  if (!qword_27F8FA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA150);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{

  return swift_deallocObject();
}

uint64_t sub_257E35224()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

id sub_257E35298@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoZoomFactor];
  *a2 = v4;
  return result;
}

uint64_t sub_257E352E0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257E35360(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257E353D8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62)
  {
    v14 = *a1;
    if (sub_257ED0210())
    {
      v5 = sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v5 = MEMORY[0x277D84FA0];
    }

    v3 = v14;
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v15 = v5;
  switch(v3)
  {
    case 0:
      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !a2)
      {
        return v15;
      }

      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        return sub_257E35950(a2, result);
      }

      __break(1u);
      goto LABEL_55;
    case 1:
      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !a2)
      {
        return v15;
      }

      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_57;
      }

      v9 = sub_257E3EB90(a2, result);
      goto LABEL_38;
    case 2:
      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !a2)
      {
        return v15;
      }

      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_56;
      }

      v9 = sub_257E40450(a2, result);
LABEL_38:
      v15 = v9;
      sub_257E3FBC4(a2);
      sub_257ECDCB0();

      return v15;
    case 3:
      type metadata accessor for ScrubberButton();
      if (!swift_dynamicCastClass())
      {
        return v15;
      }

      if (v4 && sub_257ED0210())
      {
        return sub_257BF2CF8(MEMORY[0x277D84F90]);
      }

      else
      {
        return MEMORY[0x277D84FA0];
      }

    case 4:
      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !a2)
      {
        return v15;
      }

      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {

        return sub_257E378D4(a2, result);
      }

      else
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      return result;
    case 5:
      type metadata accessor for ToggleButton();
      if (swift_dynamicCastClass())
      {
        goto LABEL_21;
      }

      return v15;
    case 6:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v15;
      }

      v10 = swift_dynamicCastClassUnconditional();
      return sub_257E37218(v10);
    case 7:
      type metadata accessor for MenuButton();
      if (!swift_dynamicCastClass())
      {
        return v15;
      }

      v11 = swift_dynamicCastClassUnconditional();

      return sub_257E3E750(v11);
    case 8:
      type metadata accessor for SegmentedButton();
      if (!swift_dynamicCastClass())
      {
        return v15;
      }

      v13 = swift_dynamicCastClassUnconditional();
      return sub_257E42018(v13);
    case 9:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v15;
      }

      v12 = swift_dynamicCastClassUnconditional();
      return sub_257E415D0(v12);
    case 10:
      type metadata accessor for ToggleButton();
      if (swift_dynamicCastClass())
      {
        goto LABEL_21;
      }

      return v15;
    case 12:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v15;
      }

      v8 = swift_dynamicCastClassUnconditional();
      return sub_257E41AF4(v8);
    case 13:
      type metadata accessor for ToggleButton();
      if (swift_dynamicCastClass())
      {
        goto LABEL_21;
      }

      return v15;
    case 14:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v15;
      }

LABEL_21:

      swift_dynamicCastClassUnconditional();
      return sub_257E41484();
    default:
      return v15;
  }
}

unint64_t sub_257E35950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v143 = a2;
  v5 = *v3;
  v121 = v3;
  v151 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v138 = *(v6 - 8);
  v139 = v6;
  MEMORY[0x28223BE20](v6);
  v137 = v90 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v141 = *(v8 - 8);
  v142 = v8;
  MEMORY[0x28223BE20](v8);
  v140 = v90 - v9;
  v130 = sub_257ECF130();
  v126 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v123 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_257ECFD10();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v129 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v122 = v90 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97F8);
  v128 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v124 = v90 - v13;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1D8);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = v90 - v14;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1E0);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = v90 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1E8);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = v90 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1F0);
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v90 - v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1F8);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = v90 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA200);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = v90 - v19;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA208);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = v90 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740);
  MEMORY[0x28223BE20](v21 - 8);
  v102 = v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v90 - v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA210);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v27 = v90 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA218);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = v90 - v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA220);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = v90 - v29;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v30 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  v156 = v30;
  v31 = sub_257D49140();
  v152 = a1;
  v153 = v31;
  v32 = v31;
  v154 = 4096;
  sub_257D4BC14();
  v33 = sub_257ECDD90();

  v153 = v33;
  v149 = objc_opt_self();
  v34 = [v149 mainRunLoop];
  v155 = v34;
  v148 = sub_257ED0080();
  v35 = *(v148 - 8);
  v36 = *(v35 + 56);
  v146 = v35 + 56;
  v147 = v36;
  v36(v25, 1, 1, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
  v145 = sub_257BD2C2C(0, &unk_281543D40);
  v95 = MEMORY[0x277CBCD90];
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
  v144 = sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  v150 = v25;
  sub_257ECDDF0();
  sub_257BE4084(v25, &unk_27F8F4DB0);

  sub_257BD2D4C(&unk_281544258, &qword_27F8FA210);
  v37 = v96;
  v38 = v94;
  sub_257ECDDD0();
  (*(v93 + 8))(v27, v38);
  v153 = v121[2];
  v39 = v153;
  v93 = sub_257ECFCF0();
  v40 = *(v93 - 8);
  v92 = *(v40 + 56);
  v94 = v40 + 56;
  v41 = v102;
  v92(v102, 1, 1, v93);
  v90[1] = sub_257BD2C2C(0, &qword_281543F10);
  sub_257BD2D4C(&qword_281544398, &qword_27F8FA218);
  v42 = sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v91 = v39;
  v43 = v99;
  v44 = v98;
  v45 = v42;
  sub_257ECDDF0();
  sub_257BE4084(v41, &unk_27F8F8740);
  (*(v97 + 8))(v37, v44);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v48 = v151;
  *(v47 + 16) = v46;
  *(v47 + 24) = v48;
  sub_257BD2D4C(&qword_2815441F8, &qword_27F8FA220);
  v49 = v101;
  sub_257ECDE50();

  (*(v100 + 8))(v43, v49);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9108);
  v50 = v103;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2C2C(0, &qword_281543F70);
  sub_257BD2D4C(&qword_281544130, &qword_27F8FA1E0);
  v51 = v106;
  v52 = v105;
  sub_257ECDDA0();
  (*(v104 + 8))(v50, v52);
  sub_257ECDCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360);
  sub_257BD2D4C(&qword_281544478, &qword_27F8FA1E8);
  sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360);
  v53 = v107;
  v54 = v110;
  sub_257ECDE60();
  (*(v108 + 8))(v51, v54);
  sub_257BD2D4C(&qword_2815442F8, &qword_27F8FA1F0);
  v55 = v112;
  v56 = v111;
  sub_257ECDDE0();
  (*(v109 + 8))(v53, v56);
  v57 = v91;
  v153 = v91;
  v92(v41, 1, 1, v93);
  sub_257BD2D4C(&qword_281544320, &qword_27F8FA1F8);
  v58 = v115;
  v59 = v114;
  v121 = v45;
  sub_257ECDE20();
  sub_257BE4084(v41, &unk_27F8F8740);

  (*(v113 + 8))(v55, v59);
  v60 = [v149 mainRunLoop];
  v153 = v60;
  v61 = v150;
  v147(v150, 1, 1, v148);
  sub_257BD2D4C(&qword_2815443F8, &qword_27F8FA200);
  v62 = v118;
  v63 = v61;
  v64 = v117;
  sub_257ECDDF0();
  sub_257BE4084(v63, &unk_27F8F4DB0);

  (*(v116 + 8))(v58, v64);
  v65 = swift_allocObject();
  v66 = v143;
  *(v65 + 24) = v143;
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  v68 = v151;
  *(v67 + 16) = v65;
  *(v67 + 24) = v68;
  sub_257BD2D4C(&unk_281544220, &qword_27F8FA208);
  v69 = v120;
  sub_257ECDE50();

  (*(v119 + 8))(v62, v69);
  sub_257ECDCB0();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v70 = v122;
  sub_257ECDD30();
  swift_endAccess();

  v71 = v129;
  sub_257ECFD00();
  v72 = v126;
  v73 = v123;
  v74 = v130;
  (*(v126 + 104))(v123, *MEMORY[0x277D851C0], v130);
  v75 = sub_257ECFD90();
  (*(v72 + 8))(v73, v74);
  v153 = v75;
  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
  v76 = v124;
  v77 = v127;
  sub_257ECDE00();

  (*(v132 + 8))(v71, v133);
  (*(v125 + 8))(v70, v77);
  sub_257BD2D4C(&qword_2815442D8, &qword_27F8F97F8);
  v78 = v134;
  v79 = v131;
  sub_257ECDDE0();
  (*(v128 + 8))(v76, v79);
  v80 = swift_allocObject();
  *(v80 + 24) = v66;
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v68;
  sub_257BD2D4C(&unk_281544308, &qword_27F8FA1D8);
  v82 = v136;
  sub_257ECDE50();

  (*(v135 + 8))(v78, v82);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v83 = v137;
  sub_257ECDD30();
  swift_endAccess();
  v84 = [v149 mainRunLoop];
  v153 = v84;
  v85 = v150;
  v147(v150, 1, 1, v148);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  v86 = v139;
  v87 = v140;
  sub_257ECDDF0();
  sub_257BE4084(v85, &unk_27F8F4DB0);

  (*(v138 + 8))(v83, v86);
  *(swift_allocObject() + 24) = v66;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v88 = v142;
  sub_257ECDE50();

  (*(v141 + 8))(v87, v88);
  sub_257ECDCB0();

  return v156;
}

unint64_t sub_257E37218(uint64_t a1)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA240);
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA248);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v12 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v34 = v12;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257ECDC50();
  v13 = [objc_opt_self() mainRunLoop];
  v32 = v13;
  v14 = sub_257ED0080();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&qword_27F8FA250, &qword_27F8FA240);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  v15 = v27;
  sub_257ECDDF0();
  sub_257BE4084(v3, &unk_27F8F4DB0);

  (*(v6 + 8))(v8, v15);
  v16 = swift_allocObject();
  v17 = v31;
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v30;
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_257E43B88;
  *(v21 + 24) = v20;
  sub_257BD2D4C(&qword_27F8FA258, &qword_27F8FA248);
  v22 = v29;
  sub_257ECDE50();

  (*(v28 + 8))(v11, v22);
  sub_257ECDCB0();

  v32 = v19;
  v33 = 4096;
  sub_257D4BC14();
  v32 = sub_257ECDD90();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v17;
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
  sub_257ECDE50();

  sub_257ECDCB0();

  return v34;
}

unint64_t sub_257E378D4(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v91 = sub_257ECF130();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_257ECFD10();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CD0);
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CD8);
  v95 = *(v7 - 8);
  v96 = v7;
  MEMORY[0x28223BE20](v7);
  v90 = v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CE0);
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9);
  v98 = v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = v69 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D98);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v14 = v69 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA0);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v16 = v69 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA8);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = v69 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v18 = MEMORY[0x28223BE20](v79);
  v78 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v103 = v69 - v21;
  MEMORY[0x28223BE20](v20);
  v102 = v69 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA260);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = v69 - v23;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA268);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v25 = v69 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA168);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v69 - v28;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v30 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  v108 = v30;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v31 = sub_257ECF4C0();
  v32 = MGGetBoolAnswer();

  if (v32)
  {
    v33 = sub_257D49140();
    v106 = v33;
    v107 = 4096;
    sub_257D4BC14();
    v34 = sub_257ECDD90();

    v106 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
    v70 = v25;
    v80 = a1;
    v69[2] = MEMORY[0x277CBCD90];
    sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
    sub_257ECDDA0();

    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 24) = v104;
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    sub_257BD2D4C(&unk_281544480, &qword_27F8FA168);
    sub_257ECDE50();

    (*(v27 + 8))(v29, v26);
    sub_257ECDCB0();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
    sub_257ECDD30();
    swift_endAccess();
    swift_beginAccess();
    sub_257ECDD30();
    swift_endAccess();
    v69[3] = xmmword_281548330;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08);
    sub_257ECDD30();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DC0);
    v69[1] = MEMORY[0x277CBCEC8];
    sub_257BD2D4C(&qword_281544128, &qword_27F8F9D98);
    v38 = v73;
    sub_257ECDDA0();
    (*(v71 + 8))(v14, v38);
    v39 = sub_257BD2D4C(&qword_281544470, &qword_27F8F9DA0);
    v40 = sub_257BD2D4C(&qword_281543DA8, &qword_27F8F9DC0);
    v41 = v72;
    v42 = v76;
    MEMORY[0x259C70960](v76, v39, v40);
    (*(v74 + 8))(v16, v42);
    sub_257BD2D4C(&qword_2815443F0, &qword_27F8F9DA8);
    v43 = v77;
    v44 = sub_257ECDD90();
    (*(v75 + 8))(v41, v43);
    v105 = v44;
    swift_beginAccess();
    sub_257ECDD30();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8);
    sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
    sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8);
    v45 = v81;
    sub_257ECDC60();
    v46 = [objc_opt_self() mainRunLoop];
    v106 = v46;
    v47 = sub_257ED0080();
    v48 = v86;
    (*(*(v47 - 8) + 56))(v86, 1, 1, v47);
    sub_257BD2C2C(0, &unk_281543D40);
    sub_257BD2D4C(&qword_27F8FA270, &qword_27F8FA260);
    sub_257CA64A0(&qword_281543D50, &unk_281543D40);
    v49 = v70;
    v50 = v83;
    sub_257ECDDF0();
    sub_257BE4084(v48, &unk_27F8F4DB0);

    (*(v82 + 8))(v45, v50);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v53 = v104;
    *(v52 + 24) = v104;
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    *(v54 + 16) = v51;
    *(v54 + 24) = v52;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_257E43BE0;
    *(v55 + 24) = v54;
    sub_257BD2D4C(&qword_27F8FA278, &qword_27F8FA268);
    v56 = v85;
    sub_257ECDE50();

    (*(v84 + 8))(v49, v56);
    sub_257ECDCB0();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00);
    v57 = v88;
    sub_257ECDD30();
    swift_endAccess();
    v58 = v94;
    sub_257ECFD00();
    sub_257BD2C2C(0, &qword_281543F10);
    v59 = v89;
    v60 = v87;
    v61 = v91;
    (*(v89 + 104))(v87, *MEMORY[0x277D851C0], v91);
    v62 = sub_257ECFD90();
    (*(v59 + 8))(v60, v61);
    v106 = v62;
    sub_257BD2D4C(&qword_27F8F9D70, &qword_27F8F9CD0);
    sub_257CA64A0(&qword_281543F20, &qword_281543F10);
    v63 = v90;
    v64 = v93;
    sub_257ECDE00();

    (*(v97 + 8))(v58, v99);
    (*(v92 + 8))(v57, v64);
    sub_257BD2D4C(&qword_27F8F9D78, &qword_27F8F9CD8);
    v65 = v98;
    v66 = v96;
    sub_257ECDDD0();
    (*(v95 + 8))(v63, v66);
    *(swift_allocObject() + 24) = v53;
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_27F8F9D80, &unk_27F8F9CE0);
    v67 = v101;
    sub_257ECDE50();

    (*(v100 + 8))(v65, v67);
    sub_257ECDCB0();

    return v108;
  }

  return v30;
}

void sub_257E38B58(char a1, char a2)
{
  v2 = 1;
  if ((a1 & 1) == 0 && (a2 & 1) == 0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v2 = v6;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v5 = sub_257D49140();
      [v5 setUserInteractionEnabled_];

      v4 = v5;
    }
  }
}

double sub_257E38C7C@<D0>(double *a1@<X8>)
{
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() value];
  result = v2;
  *a1 = result;
  return result;
}

void sub_257E38CD8(double *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v7 = v6 * v6;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v13) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = v7;
      sub_257ECC3F0();
      sub_257ECDD70();
LABEL_10:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v8 = v13;
    if (v13 == 0.0)
    {
      goto LABEL_10;
    }

    sub_257D337D8(0, v7);
    v9 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage;
    swift_beginAccess();
    v12 = v7;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v10 = sub_257ECF110();
    MEMORY[0x28223BE20](v10);
    *(&v11 - 2) = &v12;
    *(&v11 - 1) = v9;
    sub_257ECFD40();
    (*(v3 + 8))(v5, v2);
    swift_endAccess();
  }
}

id sub_257E38FF4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_257E39000@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EC0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9ED0);
  v10 = *(v9 - 8);
  v19 = v9;
  v20 = v10;
  MEMORY[0x28223BE20](v9);
  v18 = &v17 - v11;
  swift_getKeyPath();
  sub_257ECCA50();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_257BD2D4C(&unk_281543DB0, &unk_27F8F9EC0);
  sub_257ECDDD0();

  (*(v2 + 8))(v4, v1);
  sub_257BD2D4C(&qword_281544390, &unk_27F8F9330);
  v12 = sub_257ECDD90();
  (*(v6 + 8))(v8, v5);
  v22 = v12;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360);
  sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360);
  v13 = v18;
  sub_257ECDDD0();

  sub_257BD2D4C(&qword_2815443B0, &unk_27F8F9ED0);
  v14 = v19;
  v15 = sub_257ECDD90();
  result = (*(v20 + 8))(v13, v14);
  *v21 = v15;
  return result;
}

uint64_t sub_257E39414()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v2)
  {
    v0 = 0;
  }

  else
  {
    v0 = *(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_257E394EC(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_257D49140();
    v5 = [v4 isTracking];

    if (v5)
    {
      return swift_unknownObjectRelease();
    }

    v6 = fabs(sqrt(v1));
    if (v1 == -INFINITY)
    {
      v6 = INFINITY;
    }

    v7 = v6;
    v8 = sub_257D49140();
    *&v9 = v7;
    [v8 setValue:1 animated:v9];

    [*(v3 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
    v11 = v10;
    sub_257D15920();
    v13 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
    *(v3 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v11 != v12;
    sub_257D47D78(v13);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = qword_2815447E0;

    if (v14 != -1)
    {
      v15 = swift_once();
    }

    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    if (!v22)
    {
      return swift_unknownObjectRelease();
    }

    v16 = swift_beginAccess();
    MEMORY[0x28223BE20](v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    if (*(v23 + 16))
    {
      v17 = sub_257C03F6C(v21, v22);
      v19 = v18;

      if (v19)
      {
        v20 = *(*(v23 + 56) + 296 * v17 + 8);

        if (v20 != v1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_257E398B8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  return (*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) & 1) == 0;
}

uint64_t sub_257E3991C(double *a1, uint64_t a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v22 = v5;
    v23 = v8;
    v15 = *(a2 + 24);
    v16 = fabs(sqrt(v12));
    if (v12 == -INFINITY)
    {
      v17 = INFINITY;
    }

    else
    {
      v17 = v16;
    }

    sub_257BD2C2C(0, &qword_281543F10);
    v21 = sub_257ECFD30();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v15;
    *(v18 + 32) = v17;
    aBlock[4] = sub_257E43990;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_104_1;
    v19 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v20 = v21;
    MEMORY[0x259C72880](0, v11, v7, v19);
    _Block_release(v19);
    swift_unknownObjectRelease();

    (*(v22 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v23);
  }

  return result;
}

void sub_257E39C7C(uint64_t a1, double a2)
{
  v4 = sub_257D49140();
  v5 = [v4 isTracking];

  if ((v5 & 1) == 0)
  {
    v7 = sub_257D49140();
    v6 = a2;
    *&v8 = v6;
    [v7 setValue:1 animated:v8];

    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
    v10 = v9;
    sub_257D15920();
    v12 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v10 != v11;
    sub_257D47D78(v12);
  }
}

uint64_t sub_257E39D88()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257E39EA8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

BOOL sub_257E39F54()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return (v1 & 1) == 0;
}

uint64_t sub_257E3A008(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_257ECF120();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECF190();
  v25 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v24 = v13;
    v19 = *(a2 + 24);
    sub_257BD2C2C(0, &qword_281543F10);
    v23 = sub_257ECFD30();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    *(v20 + 32) = v16;
    aBlock[4] = a4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = a5;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v22 = v23;
    MEMORY[0x259C72880](0, v15, v12, v21);
    _Block_release(v21);
    swift_unknownObjectRelease();

    (*(v10 + 8))(v12, v9);
    return (*(v25 + 8))(v15, v24);
  }

  return result;
}

void sub_257E3A334(uint64_t a1, float a2)
{
  v4 = sub_257D49140();
  v5 = [v4 isTracking];

  if ((v5 & 1) == 0)
  {
    v6 = sub_257D49140();
    *&v7 = a2;
    [v6 setValue:1 animated:v7];

    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
    v9 = v8;
    sub_257D15920();
    v11 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v9 != v10;
    sub_257D47D78(v11);
  }
}

uint64_t sub_257E3A414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      if ((*(v8 + 8))(ObjectType, v8))
      {
        v9 = 0.2;
      }

      else
      {
        v9 = 0.0;
      }

      v10 = objc_opt_self();
      aBlock[4] = a3;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = a4;
      v11 = _Block_copy(aBlock);
      [v10 animateWithDuration:v11 animations:0 completion:v9];
      _Block_release(v11);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_257E3A554(float *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v7 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v15 == 1)
  {
    result = [objc_opt_self() defaultDeviceWithMediaType_];
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v15)
    {
      return result;
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_unknownObjectRelease();
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v9 = v14;
    if (!v14)
    {
      return result;
    }
  }

  sub_257D32D68(v6);

  v10 = v7 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
  swift_beginAccess();
  v13 = v6;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECF110();
  MEMORY[0x28223BE20](v11);
  *&v12[-16] = &v13;
  *&v12[-8] = v10;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

uint64_t sub_257E3A8C4(char a1, char a2, char a3, char a4)
{
  v4 = a1 & a3 ^ 1 | a2 | a4;
  if (v4)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (aBlock)
      {
        sub_257D32D68(0.0);
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_257D49140();
      [v7 setValue:0 animated:0.0];

      [*(v6 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
      v9 = v8;
      LOBYTE(aBlock) = *(v6 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control);
      sub_257D15920();
      v11 = *(v6 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
      *(v6 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v9 != v10;
      sub_257D47D78(v11);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    v12 = &qword_281544000;
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v13 = aBlock;
      if (aBlock)
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v14 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
        swift_beginAccess();
        v15 = *(v14 + 8);
        v16 = *(v14 + 16);
        aBlock = *v14;
        v45 = v15;
        LODWORD(v46) = v16;
        v17 = qword_2815447E0;

        if (v17 != -1)
        {
          v18 = swift_once();
        }

        MEMORY[0x28223BE20](v18);
        sub_257ECFD50();

        sub_257D32D68(v50);

        v12 = &qword_281544000;
      }
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v21 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
      swift_beginAccess();
      v22 = *(v21 + 8);
      v23 = *(v21 + 16);
      aBlock = *v21;
      v45 = v22;
      LODWORD(v46) = v23;
      v24 = v12[252];

      if (v24 != -1)
      {
        v25 = swift_once();
      }

      MEMORY[0x28223BE20](v25);
      sub_257ECFD50();

      v26 = sub_257D49140();
      *&v27 = v50;
      [v26 setValue:0 animated:v27];

      [*(v20 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
      v29 = v28;
      LOBYTE(aBlock) = *(v20 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control);
      sub_257D15920();
      v31 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
      *(v20 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v29 != v30;
      sub_257D47D78(v31);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = sub_257D49140();
      swift_unknownObjectRelease();
      [v32 sendActionsForControlEvents_];
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (v4)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v33 = aBlock;
    }

    else
    {
      v33 = 1;
    }

    v34 = sub_257D49140();
    [v34 setUserInteractionEnabled_];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = result;
    ObjectType = swift_getObjectType();
    v38 = swift_conformsToProtocol2();
    if (v38)
    {
      v39 = v38;
      if ((*(v38 + 8))(ObjectType, v38))
      {
        v40 = 0.2;
      }

      else
      {
        v40 = 0.0;
      }

      v41 = objc_opt_self();
      v42 = swift_allocObject();
      *(v42 + 16) = v36;
      *(v42 + 24) = v39;
      *(v42 + 32) = (v4 ^ 1) & 1;
      v48 = sub_257E43C38;
      v49 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_257D231C0;
      v47 = &block_descriptor_237;
      v43 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v41 animateWithDuration:v43 animations:0 completion:v40];
      _Block_release(v43);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_257E3B018(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(0, ObjectType, a2);
    v6 = 1;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v7 = swift_getObjectType();
    (*(a2 + 40))((v10 & 1) == 0, v7, a2);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v9;
  }

  return [a1 setUserInteractionEnabled_];
}

uint64_t sub_257E3B1C4(int *a1, uint64_t a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(a2 + 24);
    sub_257BD2C2C(0, &qword_281543F10);
    v38 = sub_257ECFD30();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    *(v16 + 32) = v12;
    v48 = sub_257E43C2C;
    v49 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_257D231C0;
    v47 = &block_descriptor_223;
    v17 = _Block_copy(&aBlock);
    v37 = v8;
    v18 = v17;
    v39 = v14;
    swift_unknownObjectRetain();

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v19 = v38;
    MEMORY[0x259C72880](0, v11, v7, v18);
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v37);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v20 = qword_281548348;
    swift_beginAccess();
    v21 = v20[16];
    v22 = v20[17];
    v23 = v20[18];
    aBlock = v20[15];
    v45 = v21;
    v46 = v22;
    v47 = v23;
    v24 = qword_2815447E0;

    if (v24 != -1)
    {
      v25 = swift_once();
    }

    MEMORY[0x28223BE20](v25);
    *(&v36 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    v26 = v41;
    if (v41)
    {
      v27 = v40;
      v28 = swift_beginAccess();
      v29 = v20[12];
      v30 = v20[13];
      v40 = v20[11];
      v41 = v29;
      v42 = v30;
      MEMORY[0x28223BE20](v28);
      *(&v36 - 2) = &v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
      sub_257ECFD50();

      v31 = v43;
      if (*(v43 + 16))
      {
        v32 = sub_257C03F6C(v27, v26);
        v34 = v33;

        if (v34)
        {
          v35 = *(*(v31 + 56) + 296 * v32 + 48);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          if (v35 != *&v40)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v40) = 1;
            sub_257ECC3F0();
            sub_257ECDD70();
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257E3B7EC(uint64_t a1, float a2)
{
  v4 = sub_257D49140();
  v5 = [v4 isTracking];

  if ((v5 & 1) == 0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v13 & 1) == 0)
    {
      v6 = sub_257D49140();
      *&v7 = a2;
      [v6 setValue:1 animated:v7];

      [*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
      v9 = v8;
      sub_257D15920();
      v11 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
      *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v9 != v10;
      sub_257D47D78(v11);
      v12 = sub_257D49140();
      [v12 sendActionsForControlEvents_];
    }
  }
}

void sub_257E3B96C()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v11 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v10) == 1)
    {
      sub_257ECD480();
      v7 = sub_257ECDA20();
      v8 = sub_257ECFBD0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        _os_log_impl(&dword_257BAC000, v7, v8, "Setting peopleDetection to %{BOOL}d", v9, 8u);
        MEMORY[0x259C74820](v9, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v10) != v6)
    {
      sub_257D71A04(v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = v6;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E3BCB4()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v11 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v10) == 1)
    {
      sub_257ECD450();
      v7 = sub_257ECDA20();
      v8 = sub_257ECFBD0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        _os_log_impl(&dword_257BAC000, v7, v8, "Setting doorDetection to %{BOOL}d", v9, 8u);
        MEMORY[0x259C74820](v9, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v10) != v6)
    {
      sub_257D71A24(v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = v6;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E3BFFC()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v11 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v10) == 1)
    {
      sub_257ECD440();
      v7 = sub_257ECDA20();
      v8 = sub_257ECFBD0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        _os_log_impl(&dword_257BAC000, v7, v8, "Setting detectionModeOn to %{BOOL}d", v9, 8u);
        MEMORY[0x259C74820](v9, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v10) != v6)
    {
      sub_257D719E4(v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = v6;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E3C344(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v1 ^ 1;
    v4 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    v5 = Strong;
    swift_beginAccess();
    if (v5[v4])
    {
      v6 = 0.2;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v3;
    v11[4] = sub_257E43CAC;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_257D231C0;
    v11[3] = &block_descriptor_247;
    v9 = _Block_copy(v11);
    v10 = v5;

    [v7 animateWithDuration:v9 animations:0 completion:v6];
    _Block_release(v9);
  }
}

void sub_257E3C4AC()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v11 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v10) == 1)
    {
      sub_257ECD440();
      v7 = sub_257ECDA20();
      v8 = sub_257ECFBD0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        _os_log_impl(&dword_257BAC000, v7, v8, "Setting imageCaption to %{BOOL}d", v9, 8u);
        MEMORY[0x259C74820](v9, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v10) != v6)
    {
      sub_257D71A84(v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = v6;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E3C7F4()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v11 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v10) == 1)
    {
      sub_257ECD3E0();
      v7 = sub_257ECDA20();
      v8 = sub_257ECFBD0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        _os_log_impl(&dword_257BAC000, v7, v8, "Setting pointSpeakEnabled to %{BOOL}d", v9, 8u);
        MEMORY[0x259C74820](v9, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v10) != v6)
    {
      sub_257D71A44(v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = v6;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E3CB3C()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v11 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v10) == 1)
    {
      sub_257ECD3E0();
      v7 = sub_257ECDA20();
      v8 = sub_257ECFBD0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        _os_log_impl(&dword_257BAC000, v7, v8, "Setting textDetectionEnabled to %{BOOL}d", v9, 8u);
        MEMORY[0x259C74820](v9, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v10) != v6)
    {
      sub_257D71A64(v5[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v10) = v6;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E3CE84(char *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    *(Strong + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed) = v10;
    sub_257DBA418();
    if (v10)
    {
    }

    else
    {
      sub_257BD2C2C(0, &qword_281543F10);
      v18 = sub_257ECFD30();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      aBlock[4] = sub_257E43D74;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_275;
      v16 = _Block_copy(aBlock);
      v17 = v12;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
      sub_257ED0180();
      v14 = v16;
      v15 = v18;
      MEMORY[0x259C72880](0, v9, v5, v16);
      _Block_release(v14);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_257E3D1D4(uint64_t a1, void *a2)
{
  v3 = sub_257ECF120();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v9 = sub_257ECFD30();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  aBlock[4] = sub_257E43D50;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_263;
  v11 = _Block_copy(aBlock);
  v12 = a2;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v5, v11);
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_257E3D4C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_257DB9C8C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v4 = sub_257DB86A4(v7, a2);
  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v4;
  }

  [v3 setSelectedSegmentIndex_];
}

void sub_257E3D5B0(char *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *a3) = v6;
    v8 = Strong;
    a4();
  }
}

void sub_257E3D628(char a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v7)
    {
      if ((a1 & 1) != 0 || (a2 & 1) != 0 && ([v7 isSmoothAutoFocusSupported] & 1) == 0)
      {
        sub_257D34520();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECC3F0();
        sub_257ECDD70();
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        *(Strong + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed) = v4;
        sub_257CA1814();
      }
    }
  }
}

void sub_257E3D7CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];

    if (v1)
    {
      goto LABEL_6;
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v9 == 1)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v9)
    {
      sub_257D34228();
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v9) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_257ECF4C0();
    v5 = sub_257ECF4C0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v9)
    {
      sub_257D34520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v9) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    type metadata accessor for MAGUtilities();
    v7 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_257ECF4C0();
    v5 = sub_257ECF4C0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
  }

  v8 = v6;

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

uint64_t sub_257E3DBA8(uint64_t a1, char a2)
{
  if (a2 != 6)
  {
    return 1;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v5)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (!v4)
  {
    return 0;
  }

  v2 = [v4 isRunning];

  return v2;
}

id sub_257E3DCE8@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v3 = result;
  if (result)
  {
    result = [result value];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 4) = v3 == 0;
  return result;
}

uint64_t sub_257E3DD54(uint64_t a1, unsigned __int8 a2)
{
  result = 1;
  if (a2 > 0xBu)
  {
    switch(a2)
    {
      case 0xCu:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v11;
      case 0xDu:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v7;
      case 0xEu:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v8;
    }
  }

  else
  {
    switch(a2)
    {
      case 4u:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v6)
        {
          return 0;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v5)
        {
          return 0;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (!v4)
        {
          return 0;
        }

        else
        {
          v3 = [v4 isRunning];

          return v3;
        }

      case 9u:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v10;
      case 0xAu:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v9;
    }
  }

  return result;
}

uint64_t sub_257E3E19C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport27ControlSubscriptionProvider__captureDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9108);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlSubscriptionProvider()
{
  result = qword_281544578;
  if (!qword_281544578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257E3E2A0()
{
  sub_257E3E340();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257E3E340()
{
  if (!qword_2815440B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9178);
    v0 = sub_257ECDD80();
    if (!v1)
    {
      atomic_store(v0, &qword_2815440B0);
    }
  }
}

uint64_t sub_257E3E3A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9108);
  v15 = *(v0 - 8);
  v16 = v0;
  MEMORY[0x28223BE20](v0);
  v13 = &v12 - v1;
  v12 = sub_257ECFD20();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v5);
  v6 = sub_257ECF190();
  MEMORY[0x28223BE20](v6 - 8);
  sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF150();
  v17 = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281543F30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v12);
  v7 = sub_257ECFD80();
  v8 = v14;
  *(v14 + 16) = v7;
  v9 = OBJC_IVAR____TtC16MagnifierSupport27ControlSubscriptionProvider__captureDevice;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9178);
  v10 = v13;
  sub_257ECDD20();
  (*(v15 + 32))(v8 + v9, v10, v16);
  return v8;
}

void sub_257E3E6F8(uint64_t a1@<X0>, float *a2@<X8>)
{
  v4 = sub_257D139CC(*(a1 + 16));
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_257E3E750(uint64_t a1)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v17 = *(v8 - 8);
  v18 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v11 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v21 = v11;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v12 = [objc_opt_self() mainRunLoop];
  v20 = v12;
  v13 = sub_257ED0080();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  sub_257ECDDF0();
  sub_257BE4084(v3, &unk_27F8F4DB0);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v14 = v18;
  sub_257ECDE50();

  (*(v17 + 8))(v10, v14);
  sub_257ECDCB0();

  return v21;
}

unint64_t sub_257E3EB90(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v98 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v58 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v58 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v58 - v5;
  v91 = sub_257ECF130();
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_257ECFD10();
  v96 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v95 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v10 = &v58 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97F8);
  v94 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v58 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1D8);
  v92 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v74 = &v58 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA228);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA168);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v18 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v101 = v18;
  v19 = sub_257D49140();
  v99 = v19;
  v100 = 4096;
  sub_257D4BC14();
  v20 = sub_257ECDD90();

  v99 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
  sub_257ECDDA0();

  sub_257BD2D4C(&unk_281544480, &qword_27F8FA168);
  sub_257ECDE50();
  (*(v15 + 8))(v17, v14);
  sub_257ECDCB0();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v21 = v10;
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECFD00();
  v22 = sub_257BD2C2C(0, &qword_281543F10);
  v71 = *MEMORY[0x277D851C0];
  v23 = v93;
  v24 = *(v93 + 104);
  v69 = v93 + 104;
  v70 = v24;
  v25 = v90;
  v26 = v91;
  v24(v90);
  v62 = v22;
  v27 = sub_257ECFD90();
  v28 = *(v23 + 8);
  v93 = v23 + 8;
  v68 = v28;
  v28(v25, v26);
  v99 = v27;
  v73 = MEMORY[0x277CBCEC8];
  v66 = sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
  v67 = sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v29 = v86;
  v30 = v89;
  sub_257ECDE00();

  v31 = *(v96 + 8);
  v96 += 8;
  v65 = v31;
  v32 = v8;
  v31(v8, v85);
  v33 = *(v95 + 8);
  v95 += 8;
  v64 = v33;
  v33(v21, v30);
  v63 = sub_257BD2D4C(&qword_2815442D8, &qword_27F8F97F8);
  v34 = v74;
  v35 = v88;
  sub_257ECDDE0();
  v36 = *(v94 + 8);
  v94 += 8;
  v61 = v36;
  v36(v29, v35);
  v60 = sub_257BD2D4C(&unk_281544308, &qword_27F8FA1D8);
  v37 = v75;
  v38 = v87;
  sub_257ECDDA0();
  v39 = *(v92 + 8);
  v92 += 8;
  v59 = v39;
  v39(v34, v38);
  *(swift_allocObject() + 24) = v97;
  swift_unknownObjectWeakInit();
  v58 = sub_257BD2D4C(&qword_281544450, &qword_27F8FA228);
  v40 = v77;
  sub_257ECDE50();

  v76 = *(v76 + 8);
  (v76)(v37, v40);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  v41 = v21;
  sub_257ECDD30();
  swift_endAccess();

  v42 = v32;
  sub_257ECFD00();
  v44 = v90;
  v43 = v91;
  v70(v90, v71, v91);
  v45 = sub_257ECFD90();
  v68(v44, v43);
  v99 = v45;
  v46 = v86;
  v47 = v89;
  sub_257ECDE00();

  v65(v42, v85);
  v64(v41, v47);
  v48 = v88;
  sub_257ECDDE0();
  v61(v46, v48);
  v49 = v87;
  sub_257ECDDA0();
  v59(v34, v49);
  *(swift_allocObject() + 24) = v97;
  swift_unknownObjectWeakInit();
  sub_257ECDE50();

  (v76)(v37, v40);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v50 = v78;
  sub_257ECDD30();
  swift_endAccess();
  v51 = [objc_opt_self() mainRunLoop];
  v99 = v51;
  v52 = sub_257ED0080();
  v53 = v80;
  (*(*(v52 - 8) + 56))(v80, 1, 1, v52);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  v54 = v82;
  v55 = v81;
  sub_257ECDDF0();
  sub_257BE4084(v53, &unk_27F8F4DB0);

  (*(v79 + 8))(v50, v55);
  *(swift_allocObject() + 24) = v97;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v56 = v84;
  sub_257ECDE50();

  (*(v83 + 8))(v54, v56);
  sub_257ECDCB0();

  return v101;
}

uint64_t sub_257E3FBC4(uint64_t a1)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v33 - v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  MEMORY[0x28223BE20](v41);
  v38 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA8);
  v10 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA230);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v37 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA238);
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15);
  v42 = &v33 - v16;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08);
  sub_257ECDD30();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DC0);
  sub_257BD2D4C(&qword_281544128, &qword_27F8F9D98);
  sub_257ECDDA0();
  (*(v5 + 8))(v7, v4);
  v17 = sub_257BD2D4C(&qword_281544470, &qword_27F8F9DA0);
  v18 = sub_257BD2D4C(&qword_281543DA8, &qword_27F8F9DC0);
  v19 = v36;
  MEMORY[0x259C70960](v36, v17, v18);
  (*(v34 + 8))(v9, v19);
  sub_257BD2D4C(&qword_2815443F0, &qword_27F8F9DA8);
  v20 = v35;
  v21 = sub_257ECDD90();
  (*(v10 + 8))(v12, v20);
  v47 = v21;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8);
  sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  v22 = v37;
  sub_257ECDC50();
  v23 = [objc_opt_self() mainRunLoop];
  v48 = v23;
  v24 = sub_257ED0080();
  v25 = v45;
  (*(*(v24 - 8) + 56))(v45, 1, 1, v24);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&qword_2815444A8, &qword_27F8FA230);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  v26 = v42;
  v27 = v40;
  sub_257ECDDF0();
  sub_257BE4084(v25, &unk_27F8F4DB0);

  (*(v39 + 8))(v22, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_257E43A74;
  *(v29 + 24) = v28;
  sub_257BD2D4C(&qword_281544218, &qword_27F8FA238);
  v30 = v44;
  v31 = sub_257ECDE50();

  (*(v43 + 8))(v26, v30);
  return v31;
}

unint64_t sub_257E40450(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v98 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v58 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v58 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v58 - v5;
  v91 = sub_257ECF130();
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_257ECFD10();
  v96 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v95 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v10 = &v58 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97F8);
  v94 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v58 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1D8);
  v92 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v74 = &v58 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA228);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA168);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v18 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v101 = v18;
  v19 = sub_257D49140();
  v99 = v19;
  v100 = 4096;
  sub_257D4BC14();
  v20 = sub_257ECDD90();

  v99 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
  sub_257ECDDA0();

  sub_257BD2D4C(&unk_281544480, &qword_27F8FA168);
  sub_257ECDE50();
  (*(v15 + 8))(v17, v14);
  sub_257ECDCB0();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v21 = v10;
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECFD00();
  v22 = sub_257BD2C2C(0, &qword_281543F10);
  v71 = *MEMORY[0x277D851C0];
  v23 = v93;
  v24 = *(v93 + 104);
  v69 = v93 + 104;
  v70 = v24;
  v25 = v90;
  v26 = v91;
  v24(v90);
  v62 = v22;
  v27 = sub_257ECFD90();
  v28 = *(v23 + 8);
  v93 = v23 + 8;
  v68 = v28;
  v28(v25, v26);
  v99 = v27;
  v73 = MEMORY[0x277CBCEC8];
  v66 = sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
  v67 = sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v29 = v86;
  v30 = v89;
  sub_257ECDE00();

  v31 = *(v96 + 8);
  v96 += 8;
  v65 = v31;
  v32 = v8;
  v31(v8, v85);
  v33 = *(v95 + 8);
  v95 += 8;
  v64 = v33;
  v33(v21, v30);
  v63 = sub_257BD2D4C(&qword_2815442D8, &qword_27F8F97F8);
  v34 = v74;
  v35 = v88;
  sub_257ECDDE0();
  v36 = *(v94 + 8);
  v94 += 8;
  v61 = v36;
  v36(v29, v35);
  v60 = sub_257BD2D4C(&unk_281544308, &qword_27F8FA1D8);
  v37 = v75;
  v38 = v87;
  sub_257ECDDA0();
  v39 = *(v92 + 8);
  v92 += 8;
  v59 = v39;
  v39(v34, v38);
  *(swift_allocObject() + 24) = v97;
  swift_unknownObjectWeakInit();
  v58 = sub_257BD2D4C(&qword_281544450, &qword_27F8FA228);
  v40 = v77;
  sub_257ECDE50();

  v76 = *(v76 + 8);
  (v76)(v37, v40);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  v41 = v21;
  sub_257ECDD30();
  swift_endAccess();

  v42 = v32;
  sub_257ECFD00();
  v44 = v90;
  v43 = v91;
  v70(v90, v71, v91);
  v45 = sub_257ECFD90();
  v68(v44, v43);
  v99 = v45;
  v46 = v86;
  v47 = v89;
  sub_257ECDE00();

  v65(v42, v85);
  v64(v41, v47);
  v48 = v88;
  sub_257ECDDE0();
  v61(v46, v48);
  v49 = v87;
  sub_257ECDDA0();
  v59(v34, v49);
  *(swift_allocObject() + 24) = v97;
  swift_unknownObjectWeakInit();
  sub_257ECDE50();

  (v76)(v37, v40);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v50 = v78;
  sub_257ECDD30();
  swift_endAccess();
  v51 = [objc_opt_self() mainRunLoop];
  v99 = v51;
  v52 = sub_257ED0080();
  v53 = v80;
  (*(*(v52 - 8) + 56))(v80, 1, 1, v52);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  v54 = v82;
  v55 = v81;
  sub_257ECDDF0();
  sub_257BE4084(v53, &unk_27F8F4DB0);

  (*(v79 + 8))(v50, v55);
  *(swift_allocObject() + 24) = v97;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v56 = v84;
  sub_257ECDE50();

  (*(v83 + 8))(v54, v56);
  sub_257ECDCB0();

  return v101;
}

unint64_t sub_257E41484()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v0 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v0 = MEMORY[0x277D84FA0];
  }

  v2 = v0;
  sub_257D4BC14();
  sub_257ECDD90();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
  sub_257ECDE50();

  sub_257ECDCB0();

  return v2;
}

unint64_t sub_257E415D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v12 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v22 = v12;
  v20 = a1;
  v21 = 4096;
  sub_257D4BC14();
  v20 = sub_257ECDD90();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
  v17[1] = a1;
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
  sub_257ECDE50();

  sub_257ECDCB0();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v13 = [objc_opt_self() mainRunLoop];
  v20 = v13;
  v14 = sub_257ED0080();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  sub_257ECDDF0();
  sub_257BE4084(v4, &unk_27F8F4DB0);

  (*(v6 + 8))(v8, v5);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v15 = v19;
  sub_257ECDE50();

  (*(v18 + 8))(v11, v15);
  sub_257ECDCB0();

  return v22;
}

unint64_t sub_257E41AF4(uint64_t a1)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v18 = *(v8 - 8);
  v19 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v11 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v23 = v11;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v12 = [objc_opt_self() mainRunLoop];
  v21 = v12;
  v13 = sub_257ED0080();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  sub_257ECDDF0();
  sub_257BE4084(v3, &unk_27F8F4DB0);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  v14 = v20;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v15 = v19;
  sub_257ECDE50();

  (*(v18 + 8))(v10, v15);
  sub_257ECDCB0();

  v21 = v14;
  v22 = 4096;
  sub_257D4BC14();
  v21 = sub_257ECDD90();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
  sub_257ECDE50();

  sub_257ECDCB0();

  return v23;
}

unint64_t sub_257E42018(void *a1)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FD0);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v31 - v14;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v16 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v47 = v16;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v34 = objc_opt_self();
  v17 = [v34 mainRunLoop];
  v46 = v17;
  v18 = sub_257ED0080();
  v19 = *(v18 - 8);
  v32 = *(v19 + 56);
  v33 = v19 + 56;
  v32(v7, 1, 1, v18);
  v31[1] = sub_257BD2C2C(0, &unk_281543D40);
  v31[2] = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  v31[0] = sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  v20 = v15;
  v21 = v35;
  sub_257ECDDF0();
  sub_257BE4084(v7, &unk_27F8F4DB0);

  (*(v36 + 8))(v11, v21);
  swift_allocObject();
  v22 = v45;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v23 = v37;
  sub_257ECDE50();

  (*(v38 + 8))(v20, v23);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  v24 = v39;
  sub_257ECDD30();
  swift_endAccess();
  v25 = [v34 mainRunLoop];
  v46 = v25;
  v32(v7, 1, 1, v18);
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
  v27 = v41;
  v26 = v42;
  sub_257ECDDF0();
  sub_257BE4084(v7, &unk_27F8F4DB0);

  (*(v40 + 8))(v24, v27);
  *(swift_allocObject() + 16) = v22;
  sub_257BD2D4C(&qword_281544250, &qword_27F8F8FD0);
  v28 = v22;
  v29 = v44;
  sub_257ECDE50();

  (*(v43 + 8))(v26, v29);
  sub_257ECDCB0();

  return v47;
}

uint64_t sub_257E42730(unsigned __int8 *a1, uint64_t a2)
{
  v93 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA168);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v62 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA170);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v62 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA178);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v62 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA180);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v62 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA188);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v62 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA190);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v62 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A48);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA198);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1A0);
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1A8);
  v92 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0);
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v20 = &v62 - v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1B0);
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v22 = &v62 - v21;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1B8);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v24 = &v62 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1C0);
  v26 = MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = *a1;
  if (v30 != 7)
  {
    if (v30 == 6)
    {
      type metadata accessor for ToggleButton();
      v37 = swift_dynamicCastClass();
      if (!v37)
      {
        return 0;
      }

      v94 = v37;
      v95 = 4096;
      sub_257D4BC14();
      v94 = sub_257ECDD90();
      *(swift_allocObject() + 16) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
      sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
      v38 = v74;
      sub_257ECDDE0();

      *(swift_allocObject() + 16) = 6;
      sub_257BD2D4C(&qword_27F8FA1C8, &qword_27F8FA188);
      v39 = v75;
      v40 = v78;
      sub_257ECDDD0();

      (*(v76 + 8))(v38, v40);
      sub_257BD2D4C(&qword_27F8FA1D0, &qword_27F8FA190);
      v41 = v79;
      v36 = sub_257ECDD90();
      v42 = v77;
    }

    else
    {
      if (v30 == 3)
      {
        v31 = v27;
        v32 = v26;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
        sub_257ECDD30();
        swift_endAccess();
        swift_getKeyPath();
        sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0);
        v33 = v87;
        sub_257ECDDC0();

        (*(v84 + 8))(v20, v33);
        sub_257BD2D4C(&qword_281544430, &qword_27F8FA1B0);
        v34 = v89;
        sub_257ECDE10();
        (*(v86 + 8))(v22, v34);
        sub_257BD2D4C(&qword_281544368, &qword_27F8FA1B8);
        v35 = v90;
        sub_257ECDE30();
        (*(v88 + 8))(v24, v35);
        sub_257BD2D4C(&qword_2815443B8, &qword_27F8FA1C0);
        v36 = sub_257ECDD90();
        (*(v31 + 8))(v29, v32);
        return v36;
      }

      v52 = v93;
      swift_getObjectType();
      v36 = 0;
      if (!swift_conformsToProtocol2() || !v52)
      {
        return v36;
      }

      v53 = sub_257D49140();
      v94 = v53;
      v95 = 4096;
      sub_257D4BC14();
      v54 = sub_257ECDD90();

      v94 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
      sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
      v55 = v62;
      sub_257ECDDA0();

      sub_257BD2D4C(&unk_281544480, &qword_27F8FA168);
      v56 = v65;
      v57 = v64;
      sub_257ECDE30();
      (*(v63 + 8))(v55, v57);
      *(swift_allocObject() + 16) = v30;
      sub_257BD2D4C(&unk_2815443C8, &qword_27F8FA170);
      v58 = v68;
      v59 = v67;
      sub_257ECDDE0();

      (*(v66 + 8))(v56, v59);
      *(swift_allocObject() + 16) = v30;
      sub_257BD2D4C(&qword_281544328, &qword_27F8FA178);
      v39 = v69;
      v60 = v72;
      sub_257ECDDD0();

      (*(v70 + 8))(v58, v60);
      sub_257BD2D4C(&qword_2815443A8, &qword_27F8FA180);
      v41 = v73;
      v36 = sub_257ECDD90();
      v42 = v71;
    }

    (*(v42 + 8))(v39, v41);
    return v36;
  }

  v43 = v82;
  v44 = v83;
  v45 = v12;
  v90 = v18;
  v46 = v80;
  v47 = v81;
  v48 = v85;
  v93 = v16;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0);
  sub_257ECDD30();
  swift_endAccess();
  swift_getKeyPath();
  sub_257BD2D4C(&unk_281544180, &qword_27F8F7A48);
  sub_257ECDDC0();

  (*(v44 + 8))(v43, v48);
  sub_257BD2D4C(&unk_281544438, &qword_27F8FA198);
  v49 = v15;
  sub_257ECDE10();
  (*(v46 + 8))(v45, v47);
  sub_257BD2D4C(&unk_281544370, &qword_27F8FA1A0);
  v50 = v90;
  sub_257ECDE30();
  (*(v91 + 8))(v49, v13);
  sub_257BD2D4C(&qword_2815443C0, &qword_27F8FA1A8);
  v51 = v93;
  v36 = sub_257ECDD90();
  (*(v92 + 8))(v50, v51);
  return v36;
}

uint64_t sub_257E438AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D14A40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t objectdestroy_182Tm()
{

  return swift_deallocObject();
}

void sub_257E43C5C(float *a1@<X8>)
{
  v4 = sub_257D139CC(*(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t MAGDetectedTextView.textBlocks.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280);
  sub_257ECEE60();
  return v1;
}

uint64_t sub_257E43E7C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280);
  result = sub_257ECEE60();
  *a1 = v3;
  return result;
}

uint64_t sub_257E43ED4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280);
  return sub_257ECEE70();
}

void (*MAGDetectedTextView.textBlocks.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;
  sub_257ECC3F0();

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280);
  sub_257ECEE60();
  return sub_257E4402C;
}

void sub_257E4402C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_257ECEE70();
  }

  else
  {
    sub_257ECEE70();
  }

  free(v2);
}

uint64_t MAGDetectedTextView.$textBlocks.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280);
  sub_257ECEE80();
  return v1;
}

uint64_t MAGDetectedTextView.init(textBlocks:showingTextView:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  v8 = type metadata accessor for MAGDetectedTextView(0);
  sub_257ECE7D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970);
  result = sub_257ECEE50();
  *a4 = v11;
  a4[1] = v12;
  v10 = a4 + *(v8 + 24);
  *v10 = a1;
  *(v10 + 1) = a2;
  v10[16] = a3;
  return result;
}

uint64_t MAGDetectedTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_257ECF020();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA288);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA290);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  *v10 = sub_257ECF060();
  v10[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA298);
  sub_257E444C8(v2, v10 + *(v15 + 44));
  v16 = *(v8 + 44);
  v17 = *MEMORY[0x277CDF3C0];
  v18 = sub_257ECDF90();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10 + v16, v17, v18);
  (*(v19 + 56))(v10 + v16, 0, 1, v18);
  if (sub_257ECF030())
  {
    sub_257ECF000();
  }

  else
  {
    sub_257ECF010();
  }

  v20 = sub_257ECE930();
  v21 = &v13[*(v11 + 36)];
  (*(v4 + 32))(v21, v6, v3);
  v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2A0) + 36)] = v20;
  sub_257C0DD14(v10, v13, &qword_27F8FA288);
  v22 = v25;
  sub_257C0DD14(v13, v25, &qword_27F8FA290);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2A8);
  *(v22 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_257E444C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3E0);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4980);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  sub_257ECE910();
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3F0);
  sub_257BD2D4C(&qword_27F8FA3F8, &qword_27F8FA3F0);
  sub_257ECDF60();
  v12 = type metadata accessor for MAGDetectedTextView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2B0);
  sub_257ECE7C0();
  sub_257BD2D4C(&qword_27F8FA400, &qword_27F8FA3E8);
  v41 = v7;
  sub_257ECEC60();

  v13 = (*(v9 + 8))(v11, v8);
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_257E47D04(a1, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MAGDetectedTextView);
  sub_257ECF900();
  v16 = sub_257ECF8F0();
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_257E47D6C(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for MAGDetectedTextView);
  v20 = sub_257ECF930();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_257ECF910();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v39 = sub_257ECE1A0();
    v40 = &v38;
    v38 = *(v39 - 8);
    MEMORY[0x28223BE20](v39);
    v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_257ED02D0();

    v50 = 0xD000000000000037;
    v51 = 0x8000000257F080B0;
    v49 = 112;
    v26 = sub_257ED0600();
    MEMORY[0x259C72150](v26);

    MEMORY[0x28223BE20](v27);
    (*(v21 + 16))(&v38 - v23, &v38 - v23, v20);
    sub_257ECE190();
    (*(v21 + 8))(&v38 - v23, v20);
    v28 = v44;
    (*(v42 + 32))(v44, v41, v43);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4988);
    (*(v38 + 32))(&v28[*(v29 + 36)], v25, v39);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4990);
    v28 = v44;
    v31 = &v44[*(v30 + 36)];
    v32 = sub_257ECE100();
    (*(v21 + 32))(&v31[*(v32 + 20)], &v38 - v23, v20);
    *v31 = &unk_257EECF60;
    *(v31 + 1) = v18;
    (*(v42 + 32))(v28, v41, v43);
  }

  v33 = sub_257ECED80();
  v34 = sub_257ECE930();
  v35 = v47;
  (*(v45 + 32))(v47, v28, v46);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA408);
  v37 = v35 + *(result + 36);
  *v37 = v33;
  *(v37 + 8) = v34;
  return result;
}

uint64_t sub_257E44C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA410);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA418);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  *v15 = sub_257ECE500();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA420);
  sub_257E44F9C(a1, &v15[*(v16 + 44)]);
  v17 = sub_257ECE930();
  sub_257ECDF40();
  v18 = &v15[*(v10 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  *v8 = sub_257ECE5B0();
  *(v8 + 1) = 0x4034000000000000;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA428);
  v23 = a1[1];
  v27[2] = *a1;
  v27[3] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280);
  sub_257ECEE60();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA430);
  sub_257BD2D4C(&qword_27F8FA438, &unk_27F8F6970);
  sub_257E47F70(&qword_27F8FA440, type metadata accessor for DetectedTextBlock);
  sub_257E47FB8();
  sub_257ECEF80();
  sub_257BE401C(v15, v13, &qword_27F8FA418);
  sub_257BE401C(v8, v6, &qword_27F8FA410);
  v24 = v27[0];
  sub_257BE401C(v13, v27[0], &qword_27F8FA418);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA460);
  sub_257BE401C(v6, v24 + *(v25 + 48), &qword_27F8FA410);
  sub_257BE4084(v8, &qword_27F8FA410);
  sub_257BE4084(v15, &qword_27F8FA418);
  sub_257BE4084(v6, &qword_27F8FA410);
  return sub_257BE4084(v13, &qword_27F8FA418);
}

uint64_t sub_257E44F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v58 = a2;
  v56 = type metadata accessor for TextCollapseButton(0) - 8;
  v2 = MEMORY[0x28223BE20](v56);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v54 = (&v48 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA470);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - v8;
  v9 = sub_257ECF060();
  v11 = v10;
  sub_257E45578(&v83);
  v78 = v89;
  v79 = v90;
  v74 = v85;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v72 = v83;
  v73 = v84;
  v81[6] = v89;
  v81[7] = v90;
  v81[2] = v85;
  v81[3] = v86;
  v81[4] = v87;
  v81[5] = v88;
  v80 = v91;
  v82 = v91;
  v81[0] = v83;
  v81[1] = v84;
  sub_257BE401C(&v72, &v62, &qword_27F8FA478);
  sub_257BE4084(v81, &qword_27F8FA478);
  v69 = v78;
  v70 = v79;
  v71 = v80;
  v65 = v74;
  v66 = v75;
  v68 = v77;
  v67 = v76;
  v64 = v73;
  v63 = v72;
  *&v62 = v9;
  *(&v62 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA480);
  sub_257BD2D4C(&qword_27F8FA488, &qword_27F8FA480);
  sub_257ECEC20();
  v89 = v68;
  v90 = v69;
  v91 = v70;
  v92 = v71;
  v85 = v64;
  v86 = v65;
  v87 = v66;
  v88 = v67;
  v83 = v62;
  v84 = v63;
  sub_257BE4084(&v83, &qword_27F8FA480);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  v17 = sub_257ECF500();
  v19 = v18;

  *&v62 = v17;
  *(&v62 + 1) = v19;
  sub_257BDAB08();
  v20 = sub_257ECEAF0();
  v22 = v21;
  v24 = v23;
  sub_257ECED90();
  v49 = sub_257ECEAA0();
  v26 = v25;
  v50 = v27;
  v51 = v28;

  sub_257C0300C(v20, v22, v24 & 1);

  v29 = (v53 + *(type metadata accessor for MAGDetectedTextView(0) + 24));
  v30 = *v29;
  v31 = v29[1];
  LOBYTE(v29) = *(v29 + 16);
  *&v62 = v30;
  *(&v62 + 1) = v31;
  LOBYTE(v63) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720);
  sub_257ECEF50();
  v32 = v59;
  v33 = v60;
  v34 = v61;
  KeyPath = swift_getKeyPath();
  v36 = v54;
  *v54 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA378);
  swift_storeEnumTagMultiPayload();
  v37 = v55;
  v38 = v36 + *(v56 + 28);
  *v38 = v32;
  *(v38 + 8) = v33;
  *(v38 + 16) = v34;
  v39 = v52;
  sub_257BE401C(v52, v37, &qword_27F8FA470);
  v40 = v57;
  sub_257E47D04(v36, v57, type metadata accessor for TextCollapseButton);
  v41 = v58;
  sub_257BE401C(v37, v58, &qword_27F8FA470);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA490);
  v43 = v41;
  v44 = v41 + v42[12];
  v45 = v49;
  *v44 = v49;
  *(v44 + 8) = v26;
  LOBYTE(v41) = v50 & 1;
  *(v44 + 16) = v50 & 1;
  *(v44 + 24) = v51;
  v46 = v43 + v42[16];
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_257E47D04(v40, v43 + v42[20], type metadata accessor for TextCollapseButton);
  sub_257BD1B90(v45, v26, v41);

  sub_257E480C8(v36);
  sub_257BE4084(v39, &qword_27F8FA470);
  sub_257E480C8(v40);
  sub_257C0300C(v45, v26, v41);

  return sub_257BE4084(v37, &qword_27F8FA470);
}

uint64_t sub_257E45578@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() systemBlueColor];
  v7 = sub_257ECED30();
  v29 = v7;
  sub_257ECF060();
  sub_257ECE080();
  *&v42[3] = *&v42[27];
  *&v42[11] = *&v42[35];
  *&v42[19] = *&v42[43];
  sub_257ECEE30();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v26 = sub_257ECEE40();

  (*(v3 + 8))(v5, v2);
  sub_257ECF060();
  sub_257ECE080();
  v8 = v43;
  LOBYTE(v5) = v44;
  v9 = v45;
  v10 = v46;
  v27 = v48;
  v28 = v47;
  v11 = sub_257ECED90();
  KeyPath = swift_getKeyPath();
  *&v49[0] = v7;
  WORD4(v49[0]) = 256;
  *(v49 + 10) = *v42;
  *(&v49[1] + 10) = *&v42[8];
  *(&v49[2] + 10) = *&v42[16];
  *(&v49[3] + 1) = *&v42[23];
  *&v34[31] = v49[2];
  *&v34[39] = v49[3];
  *&v34[15] = v49[0];
  *&v34[23] = v49[1];
  v14 = v26;
  v13 = v27;
  *&v50 = v26;
  *(&v50 + 1) = v8;
  LOBYTE(v51) = v5;
  DWORD1(v51) = *&v41[3];
  *(&v51 + 1) = *v41;
  *(&v51 + 1) = v9;
  LOBYTE(v52) = v10;
  DWORD1(v52) = *&v40[3];
  v15 = *v40;
  *(&v52 + 1) = *v40;
  v16 = v28;
  *(&v52 + 1) = v28;
  *&v53 = v27;
  *(&v53 + 1) = KeyPath;
  v54 = v11;
  v39 = v11;
  v37 = v52;
  v38 = v53;
  v35 = v50;
  v36 = v51;
  v17 = v49[0];
  v18 = v49[1];
  v19 = v49[3];
  *(a1 + 32) = v49[2];
  *(a1 + 48) = v19;
  *a1 = v17;
  *(a1 + 16) = v18;
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;
  *(a1 + 128) = v39;
  *(a1 + 96) = v22;
  *(a1 + 112) = v23;
  *(a1 + 64) = v20;
  *(a1 + 80) = v21;
  v55[0] = v14;
  v55[1] = v8;
  v56 = v5;
  *v57 = *v41;
  *&v57[3] = *&v41[3];
  v58 = v9;
  v59 = v10;
  *v60 = v15;
  *&v60[3] = *&v40[3];
  v61 = v16;
  v62 = v13;
  v63 = KeyPath;
  v64 = v11;
  sub_257BE401C(v49, &v30, &qword_27F8F6830);
  sub_257BE401C(&v50, &v30, &qword_27F8FA3C8);
  sub_257BE4084(v55, &qword_27F8FA3C8);
  v30 = v29;
  v31 = 256;
  v32 = *v42;
  v33 = *&v42[8];
  *v34 = *&v42[16];
  *&v34[7] = *&v42[23];
  return sub_257BE4084(&v30, &qword_27F8F6830);
}

uint64_t sub_257E4590C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for DetectedTextBlock();
  if (*(a1 + *(result + 20)))
  {
    MEMORY[0x28223BE20](result);
    v21[2] = a1;
    v6 = sub_257C82C5C(sub_257C31C98, v21, v5);
    v7 = sub_257E5B998(v6);

    v8 = [v7 string];

    v9 = sub_257ECF500();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA468);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED9BD0;
    v13 = sub_257ECE960();
    *(inited + 32) = v13;
    v14 = sub_257ECE980();
    *(inited + 33) = v14;
    v15 = sub_257ECE970();
    sub_257ECE970();
    if (sub_257ECE970() != v13)
    {
      v15 = sub_257ECE970();
    }

    sub_257ECE970();
    if (sub_257ECE970() != v14)
    {
      v15 = sub_257ECE970();
    }

    result = sub_257ECDF40();
    *(&v17 + 1) = v16;
    *(&v19 + 1) = v18;
    v22 = 0;
    v20 = v15;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v20 = 0;
    v17 = 0uLL;
    v19 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v17;
  *(a2 + 40) = v19;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_257E45ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a3;
  v4 = sub_257ECF120();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_257ECF190();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = *(type metadata accessor for MAGDetectedTextView(0) - 8);
  v3[16] = v6;
  v3[17] = *(v6 + 64);
  v3[18] = swift_task_alloc();
  v7 = sub_257ECF1B0();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  sub_257ECF900();
  v3[23] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E45CF4, v9, v8);
}

uint64_t sub_257E45CF4()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v13 = v0[22];
  v5 = v0[16];
  v12 = v0[15];
  v19 = v0[14];
  v20 = v0[13];
  v18 = v0[11];
  v15 = v0[12];
  v16 = v0[10];
  v6 = v0[9];

  sub_257BD52CC();
  v14 = sub_257ECFD30();
  sub_257ECF1A0();
  sub_257ECF220();
  v17 = *(v1 + 8);
  v17(v2, v3);
  sub_257E47D04(v6, v4, type metadata accessor for MAGDetectedTextView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_257E47D6C(v4, v8 + v7, type metadata accessor for MAGDetectedTextView);
  v0[6] = sub_257E47EB0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_257D231C0;
  v0[5] = &block_descriptor_58;
  v9 = _Block_copy(v0 + 2);

  sub_257ECF150();
  v0[8] = MEMORY[0x277D84F90];
  sub_257E47F70(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C727E0](v13, v12, v15, v9);
  _Block_release(v9);

  (*(v18 + 8))(v15, v16);
  (*(v19 + 8))(v12, v20);
  v17(v13, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_257E4601C()
{
  type metadata accessor for MAGDetectedTextView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2B0);
  return sub_257ECE7B0();
}

void sub_257E460A8()
{
  sub_257E46144();
  if (v0 <= 0x3F)
  {
    sub_257E461A8();
    if (v1 <= 0x3F)
    {
      sub_257E46200();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257E46144()
{
  if (!qword_27F8FA2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6970);
    v0 = sub_257ECEE90();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8FA2C8);
    }
  }
}

void sub_257E461A8()
{
  if (!qword_27F8FA2D0)
  {
    v0 = sub_257ECE7E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8FA2D0);
    }
  }
}

void sub_257E46200()
{
  if (!qword_27F8F7AE8)
  {
    v0 = sub_257ECEF60();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7AE8);
    }
  }
}

unint64_t sub_257E46250()
{
  result = qword_27F8FA2D8;
  if (!qword_27F8FA2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA2A8);
    sub_257E462DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA2D8);
  }

  return result;
}

unint64_t sub_257E462DC()
{
  result = qword_27F8FA2E0;
  if (!qword_27F8FA2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA290);
    sub_257E46394();
    sub_257BD2D4C(&qword_27F8FA310, &qword_27F8FA2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA2E0);
  }

  return result;
}

unint64_t sub_257E46394()
{
  result = qword_27F8FA2E8;
  if (!qword_27F8FA2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA288);
    sub_257BD2D4C(&qword_27F8FA2F0, &qword_27F8FA2F8);
    sub_257BD2D4C(&qword_27F8FA300, &qword_27F8FA308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA2E8);
  }

  return result;
}

void sub_257E464D0()
{
  sub_257E46554();
  if (v0 <= 0x3F)
  {
    sub_257E46200();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257E46554()
{
  if (!qword_27F8FA330)
  {
    sub_257ECE0C0();
    v0 = sub_257ECDFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8FA330);
    }
  }
}

uint64_t sub_257E465C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_257ECE750();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextCollapseButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA360);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA368);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA370);
  MEMORY[0x28223BE20](v37);
  v18 = &v36 - v17;
  sub_257E47D04(a1, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextCollapseButton);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_257E47D6C(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for TextCollapseButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA380);
  sub_257BD2D4C(&qword_27F8FA388, &qword_27F8FA380);
  sub_257ECEEA0();
  v21 = sub_257ECED80();
  v22 = sub_257ECE930();
  v23 = &v11[*(v9 + 36)];
  *v23 = v21;
  v23[8] = v22;
  sub_257E47960();
  sub_257ECEC90();
  sub_257BE4084(v11, &qword_27F8FA360);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_257ECF4C0();
  v27 = sub_257ECF4C0();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  v29 = sub_257ECF500();
  v31 = v30;

  v42 = v29;
  v43 = v31;
  sub_257BDAB08();
  sub_257ECE200();

  sub_257BE4084(v14, &qword_27F8FA368);
  v32 = v38;
  sub_257ECE740();
  sub_257E47A44();
  sub_257E47F70(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  v33 = v39;
  sub_257ECEB60();
  (*(v40 + 8))(v32, v33);
  sub_257BE4084(v16, &qword_27F8FA368);
  v34 = &v18[*(v37 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218);
  sub_257ECE310();
  *v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B28);
  sub_257E47B00();
  sub_257BD2D4C(&qword_27F8F7B38, &qword_27F8F7B28);
  sub_257ECECA0();
  return sub_257BE4084(v18, &qword_27F8FA370);
}

uint64_t sub_257E46BD8(uint64_t a1)
{
  v2 = sub_257ECE0C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for TextCollapseButton(0) + 20));
  v7 = *v6;
  v8 = v6[1];
  LOBYTE(v6) = *(v6 + 16);
  v11 = v7;
  v12 = v8;
  v13 = v6;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720);
  sub_257ECEF40();
  sub_257E6DA80(v5);
  sub_257ECE0B0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_257E46CFC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_257ECF060();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3B8);
  return sub_257E46D44(a1 + *(v3 + 44));
}

uint64_t sub_257E46D44@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v1 = sub_257ECEE20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3C0);
  v5 = *(v35 - 8);
  v6 = MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - v8;
  v9 = [objc_opt_self() grayColor];
  v33 = sub_257ECED30();
  sub_257ECF060();
  sub_257ECE080();
  *&v40[3] = *&v40[27];
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];
  sub_257ECEE30();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1);
  v10 = sub_257ECEE40();

  (*(v2 + 8))(v4, v1);
  sub_257ECF060();
  sub_257ECE080();
  v11 = v41;
  LOBYTE(v4) = v42;
  v12 = v43;
  v13 = v44;
  v14 = v45;
  v15 = v46;
  v16 = sub_257ECED90();
  KeyPath = swift_getKeyPath();
  v49[0] = v4;
  v39 = v13;
  *&v37[0] = v10;
  *(&v37[0] + 1) = v11;
  LOBYTE(v37[1]) = v4;
  *(&v37[1] + 1) = v12;
  LOBYTE(v37[2]) = v13;
  *(&v37[2] + 1) = v14;
  *&v37[3] = v15;
  *(&v37[3] + 1) = KeyPath;
  v38 = v16;
  sub_257ECE9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3C8);
  sub_257E47C44();
  v18 = v32;
  sub_257ECEB40();
  v47[2] = v37[2];
  v47[3] = v37[3];
  v48 = v38;
  v47[0] = v37[0];
  v47[1] = v37[1];
  sub_257BE4084(v47, &qword_27F8FA3C8);
  v19 = *(v5 + 16);
  v21 = v34;
  v20 = v35;
  v22 = v18;
  v19(v34, v18, v35);
  v23 = v33;
  *v49 = v33;
  *&v49[8] = 256;
  *&v49[10] = *v40;
  *&v49[26] = *&v40[8];
  *&v49[42] = *&v40[16];
  *&v49[56] = *&v40[23];
  v24 = *&v49[16];
  v25 = v36;
  *v36 = *v49;
  *(v25 + 1) = v24;
  v26 = *&v49[48];
  *(v25 + 2) = *&v49[32];
  *(v25 + 3) = v26;
  v27 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3D8);
  v19(&v27[*(v28 + 48)], v21, v20);
  sub_257BE401C(v49, v37, &qword_27F8F6830);
  v29 = *(v5 + 8);
  v29(v22, v20);
  v29(v21, v20);
  *&v37[0] = v23;
  WORD4(v37[0]) = 256;
  *(v37 + 10) = *v40;
  *(&v37[1] + 10) = *&v40[8];
  *(&v37[2] + 10) = *&v40[16];
  *(&v37[3] + 1) = *&v40[23];
  return sub_257BE4084(v37, &qword_27F8F6830);
}

__n128 sub_257E471B4@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_257ECE5B0();
  sub_257E47220(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_257E47220@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE10();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  sub_257BDAB08();
  v8 = sub_257ECEAF0();
  v10 = v9;
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  LOBYTE(v7) = v11 & 1;
  *(a1 + 24) = v11 & 1;
  *(a1 + 32) = v12;
  sub_257ECC3F0();
  sub_257BD1B90(v8, v10, v7);

  sub_257C0300C(v8, v10, v7);
}

double sub_257E473BC@<D0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  *a1 = sub_257ECE5B0();
  v2[1] = 0;
  *(v2 + 16) = 1;
  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA348) + 44);
  *v3 = sub_257ECE500();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA350);
  sub_257E465C8(v1, &v3[*(v4 + 44)]);
  LOBYTE(v2) = sub_257ECE930();
  v5 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA358) + 36)];
  *v5 = v2;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

id sub_257E47478()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  [v0 setEditable_];
  v1 = v0;
  [v1 setUserInteractionEnabled_];
  v2 = sub_257ECF4C0();
  [v1 setText_];

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  v4 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  v5 = [v1 textContainer];
  [v5 setLineBreakMode_];

  [v1 setScrollEnabled_];
  LODWORD(v6) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v6];
  [v1 setDataDetectorTypes_];
  v7 = [v1 textContainer];
  [v7 setLineFragmentPadding_];

  [v1 setTextContainerInset_];
  return v1;
}

void sub_257E47674(void *a1)
{
  v2 = sub_257ECF4C0();
  [a1 setText_];

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [a1 setFont_];
}

uint64_t sub_257E47728(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *&a1;
  }

  v6 = 1.79769313e308;
  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return *&v5;
}

uint64_t sub_257E47798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257E478E0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_257E477FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257E478E0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_257E47860()
{
  sub_257E478E0();
  sub_257ECE6C0();
  __break(1u);
}

unint64_t sub_257E4788C()
{
  result = qword_27F8FA338;
  if (!qword_27F8FA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA338);
  }

  return result;
}

unint64_t sub_257E478E0()
{
  result = qword_27F8FA340;
  if (!qword_27F8FA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA340);
  }

  return result;
}

unint64_t sub_257E47960()
{
  result = qword_27F8FA390;
  if (!qword_27F8FA390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA360);
    sub_257BD2D4C(&qword_27F8FA398, &qword_27F8FA3A0);
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA390);
  }

  return result;
}

unint64_t sub_257E47A44()
{
  result = qword_27F8FA3A8;
  if (!qword_27F8FA3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA368);
    sub_257E47960();
    sub_257E47F70(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA3A8);
  }

  return result;
}

unint64_t sub_257E47B00()
{
  result = qword_27F8FA3B0;
  if (!qword_27F8FA3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA368);
    sub_257ECE750();
    sub_257E47A44();
    sub_257E47F70(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA3B0);
  }

  return result;
}

unint64_t sub_257E47C44()
{
  result = qword_27F8FA3D0;
  if (!qword_27F8FA3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA3C8);
    sub_257C0DC34();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA3D0);
  }

  return result;
}

uint64_t sub_257E47D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257E47D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257E47DD4()
{
  v2 = *(type metadata accessor for MAGDetectedTextView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_257BE3DE0;

  return sub_257E45ADC(v4, v5, v0 + v3);
}

uint64_t sub_257E47EDC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257E47F70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257E47FB8()
{
  result = qword_27F8FA448;
  if (!qword_27F8FA448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA430);
    sub_257E4803C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA448);
  }

  return result;
}

unint64_t sub_257E4803C()
{
  result = qword_27F8FA450;
  if (!qword_27F8FA450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA458);
    sub_257E4788C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA450);
  }

  return result;
}

uint64_t sub_257E480C8(uint64_t a1)
{
  v2 = type metadata accessor for TextCollapseButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257E48124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_257E4816C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257E481E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 32);
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v3;
    sub_257ECDD60();

    if (v22)
    {
      sub_257ED0640();
    }

    v6 = sub_257ECEE10();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v22)
    {
      sub_257ED0640();
    }

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_257ECF4C0();
    v10 = sub_257ECF4C0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    v12 = sub_257ECF500();
    v14 = v13;

    v22 = v2[1];
    v15 = sub_257D42694();
    v21 = *v2;
    v16 = swift_allocObject();
    v17 = v2[1];
    v16[1] = *v2;
    v16[2] = v17;
    v16[3] = v2[2];
    *a1 = v6;
    *(a1 + 8) = v12;
    *(a1 + 16) = v14;
    *(a1 + 24) = v15;
    *(a1 + 32) = 1;
    *(a1 + 40) = sub_257E489C8;
    *(a1 + 48) = v16;
    v18 = v5;
    sub_257BE401C(&v21, v20, &qword_27F8F5E20);
    return sub_257BE401C(&v22, v20, &qword_27F8F5E28);
  }

  else
  {
    type metadata accessor for MFReaderBlockManager();
    sub_257CB92C0();
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

void sub_257E485C0(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-v7];
  v9 = *(a1 + 32);
  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_257ECDD60();

    v11 = v24[32];

    v12 = sub_257ECF930();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_257ECF900();
    v13 = v10;
    v14 = sub_257ECF8F0();
    if (!v11)
    {
      v15 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v18;
      v15[4] = v13;
      v17 = &unk_257EED118;
      goto LABEL_6;
    }

    if (v11 == 1)
    {
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v13;
      v17 = &unk_257EED120;
LABEL_6:
      sub_257C3FBD4(0, 0, v8, v17, v15);

      return;
    }

    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v14;
    v19[3] = v20;
    v19[4] = v13;
    sub_257C3FBD4(0, 0, v8, &unk_257EE2E48, v19);

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v21 = qword_281548350 + 208;
    swift_beginAccess();
    v24[0] = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v22 = sub_257ECF110();
    MEMORY[0x28223BE20](v22);
    *&v23[-16] = v24;
    *&v23[-8] = v21;
    sub_257ECFD40();
    (*(v3 + 8))(v5, v2);
    swift_endAccess();
  }

  else
  {
    type metadata accessor for MFReaderBlockManager();
    sub_257CB92C0();
    sub_257ECE320();
    __break(1u);
  }
}

uint64_t sub_257E489D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257CD4284(a1, v4, v5, v6);
}

uint64_t sub_257E48A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257CD3FE4(a1, v4, v5, v6);
}

id MFNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

uint64_t sub_257E48B7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257E48BF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_257C1C614(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257C1C614(v7, v5);
  sub_257ECC3F0();
  sub_257ECDD70();
  return sub_257BE4084(v7, &qword_27F8F5F30);
}

id MFNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id MFNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MFNavigationController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v3);
}

id MFNavigationController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MFNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id MFNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MFNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for MFNavigationController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id MFNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MFNavigationController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MFNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_257E491A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), SEL *a6)
{
  v9.receiver = a1;
  v9.super_class = a5(a4);
  return objc_msgSendSuper2(&v9, *a6, a3);
}

id sub_257E4928C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

void sub_257E493A4(void *a1)
{
  v2 = v1;
  if (!AXIsInternalInstall())
  {
LABEL_21:
    v15 = sub_257E30B80();
    v16 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];

    v17 = v16;
    [v17 setNavigationBarHidden:1 animated:0];
    v18 = [v17 navigationBar];
    v19 = [objc_opt_self() systemYellowColor];
    [v18 setTintColor_];

    v20 = [v17 navigationBar];
    v21 = [objc_opt_self() visualEffectViewAllowingBlur_];
    [v20 _setBackgroundView_];

    v22 = v17;
    [v22 setModalPresentationStyle_];
    v23 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
    if (v23)
    {
      v24 = v23;
      [v24 setRootViewController_];
    }

    v25 = v22;
    goto LABEL_29;
  }

  if (a1)
  {
    v4 = a1;
    v5 = [v4 userInfo];
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA540);
      v7 = sub_257ECF3D0();

      v28 = &type metadata for MAGAppMode;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA548);
      v8 = sub_257ECF570();
      if (*(v7 + 16))
      {
        v10 = sub_257C03F6C(v8, v9);
        v12 = v11;

        if (v12)
        {
          v13 = *(*(v7 + 56) + 8 * v10);
          swift_unknownObjectRetain();

          LOBYTE(v28) = v13;
          if ((swift_dynamicCast() & 1) != 0 && v29 < 3)
          {
            if (qword_27F8F46E8 != -1)
            {
              swift_once();
            }

            LOBYTE(v28) = v29;
            sub_257ECC3F0();
            sub_257ECDF10();
          }

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

LABEL_13:
  }

  if (qword_27F8F46E8 != -1)
  {
    swift_once();
  }

  sub_257ECC3F0();
  sub_257ECDF00();

  if (!v28)
  {
    goto LABEL_21;
  }

  if (v28 == 1)
  {
    if (qword_27F8F4770 != -1)
    {
      swift_once();
    }

    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA530);
    sub_257ECEE50();
    v14 = &unk_27F8FA538;
  }

  else
  {
    if (qword_27F8F4778 != -1)
    {
      swift_once();
    }

    sub_257ECC3F0();
    sub_257ECEE50();
    v14 = &unk_27F8FA528;
  }

  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(v14));
  v25 = sub_257ECE620();
  v27 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  if (v27)
  {
    v22 = v27;
    [v22 setRootViewController_];
LABEL_29:
  }
}

uint64_t sub_257E49A10(void *a1, int64_t a2)
{
  v139 = a2;
  v123 = a1;
  v131 = sub_257ECF120();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v128 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_257ECF190();
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v126 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_257ECF1B0();
  v124 = *(v125 - 8);
  v4 = MEMORY[0x28223BE20](v125);
  v120 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v121 = &v115 - v6;
  v133 = sub_257ECDA30();
  v132 = *(v133 - 8);
  v7 = MEMORY[0x28223BE20](v133);
  v116 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v115 - v9;
  v143 = sub_257ECCB70();
  v10 = *(v143 - 8);
  v11 = MEMORY[0x28223BE20](v143);
  v137 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v115 - v14;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v15;
  v16 = sub_257ECD990();
  j = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F45A8 == -1)
  {
    goto LABEL_2;
  }

LABEL_106:
  swift_once();
LABEL_2:
  v20 = sub_257ECD9C0();
  __swift_project_value_buffer(v20, qword_27F8F5D90);
  sub_257ECD980();
  v21 = sub_257ECD9A0();
  v22 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v21, v22, v24, "SceneHandleURL", "", v23, 2u);
    MEMORY[0x259C74820](v23, -1, -1);
  }

  (*(j + 8))(v19, v16);
  v25 = v139;
  v135 = v139 & 0xC000000000000001;
  if ((v139 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_257ED01D0();
    sub_257BD2C2C(0, &qword_281543F58);
    sub_257E4D770(&qword_281543F50, &qword_281543F58);
    sub_257ECFAA0();
    v25 = v152;
    v16 = v153;
    v26 = v154;
    v27 = v155;
    j = v156;
  }

  else
  {
    v28 = -1 << *(v139 + 32);
    v16 = v139 + 56;
    v26 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    j = v30 & *(v139 + 56);

    v27 = 0;
  }

  v134 = v26;
  v19 = (v26 + 64) >> 6;
  v142 = (v10 + 8);
  while (1)
  {
    while (1)
    {
      v31 = v27;
      if (v25 < 0)
      {
        v35 = sub_257ED0230();
        if (!v35 || (v162 = v35, sub_257BD2C2C(0, &qword_281543F58), swift_dynamicCast(), v34 = aBlock, v10 = j, !aBlock))
        {
LABEL_26:
          sub_257C02520();
          v118 = 0;
          v141 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        v32 = v27;
        v33 = j;
        if (!j)
        {
          while (1)
          {
            v27 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v27 >= v19)
            {
              goto LABEL_26;
            }

            v33 = *(v16 + 8 * v27);
            ++v32;
            if (v33)
            {
              goto LABEL_17;
            }
          }

LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_17:
        v10 = (v33 - 1) & v33;
        v34 = *(*(v25 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v33)))));
        if (!v34)
        {
          goto LABEL_26;
        }
      }

      v136 = v31;
      v36 = v25;
      v37 = v34;
      v38 = [v34 URL];
      v39 = v138;
      sub_257ECCB20();

      v40 = sub_257ECCB30();
      v42 = v41;
      (*v142)(v39, v143);
      if (v42)
      {
        break;
      }

      v25 = v36;
      j = v10;
    }

    v141 = v37;
    if (v40 == 0x6F69746365746564 && v42 == 0xED000065646F4D6ELL)
    {
      break;
    }

    v43 = sub_257ED0640();

    v25 = v36;
    j = v10;
    if (v43)
    {
      goto LABEL_74;
    }
  }

LABEL_74:
  sub_257C02520();
  v118 = 1;
LABEL_27:
  v19 = v139;
  if (v135)
  {
    swift_unknownObjectRetain();
    sub_257ED01D0();
    sub_257BD2C2C(0, &qword_281543F58);
    sub_257E4D770(&qword_281543F50, &qword_281543F58);
    sub_257ECFAA0();
    v19 = v157;
    v16 = v158;
    v44 = v159;
    v45 = v160;
    j = v161;
  }

  else
  {
    v46 = -1 << *(v139 + 32);
    v16 = v139 + 56;
    v44 = ~v46;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    j = v48 & *(v139 + 56);

    v45 = 0;
  }

  v138 = v44;
  v49 = (v44 + 64) >> 6;
  while (1)
  {
    v10 = v45;
    if (v19 < 0)
    {
      break;
    }

    v50 = v45;
    v51 = j;
    if (!j)
    {
      while (1)
      {
        v45 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v45 >= v49)
        {
          goto LABEL_45;
        }

        v51 = *(v16 + 8 * v45);
        ++v50;
        if (v51)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_103;
    }

LABEL_39:
    j = (v51 - 1) & v51;
    v52 = *(*(v19 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v51)))));
    if (!v52)
    {
      goto LABEL_45;
    }

LABEL_43:
    v54 = [v52 URL];
    v55 = v140;
    sub_257ECCB20();

    LOBYTE(v54) = sub_257ECCA70();
    (*v142)(v55, v143);
    if (v54)
    {
      sub_257C02520();
      v56 = 0;
      goto LABEL_46;
    }
  }

  v53 = sub_257ED0230();
  if (v53)
  {
    v162 = v53;
    sub_257BD2C2C(0, &qword_281543F58);
    swift_dynamicCast();
    v52 = aBlock;
    if (aBlock)
    {
      goto LABEL_43;
    }
  }

LABEL_45:
  sub_257C02520();
  v52 = 0;
  v56 = 1;
LABEL_46:
  if (v135)
  {
    v117 = v56;
    swift_unknownObjectRetain();
    sub_257ED01D0();
    v19 = 0x277D757D8uLL;
    sub_257BD2C2C(0, &qword_281543F58);
    sub_257E4D770(&qword_281543F50, &qword_281543F58);
    sub_257ECFAA0();
    v57 = v162;
    v16 = v163;
    v58 = v164;
    v10 = v165;
    j = v166;
  }

  else
  {
    v117 = v56;
    v57 = v139;
    v59 = -1 << *(v139 + 32);
    v16 = v139 + 56;
    v58 = ~v59;
    v60 = -v59;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    j = v61 & *(v139 + 56);

    v10 = 0;
  }

  v134 = v58;
  v62 = (v58 + 64) >> 6;
  while (1)
  {
    v63 = v10;
    if (v57 < 0)
    {
      break;
    }

    v64 = v10;
    for (i = j; !i; ++v64)
    {
      v10 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_104;
      }

      if (v10 >= v62)
      {
        goto LABEL_68;
      }

      i = *(v16 + 8 * v10);
    }

    v19 = (i - 1) & i;
    v66 = *(*(v57 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(i)))));
    if (!v66)
    {
      goto LABEL_68;
    }

LABEL_63:
    v136 = j;
    v138 = v63;
    v68 = v57;
    v69 = v52;
    v70 = [v66 URL];
    v71 = v137;
    sub_257ECCB20();

    v72 = sub_257ECCB30();
    v74 = v73;
    (*v142)(v71, v143);
    if (v74)
    {
      if (v72 == 0x6F74616363617473 && v74 == 0xE800000000000000)
      {

LABEL_76:
        sub_257C02520();
        v76 = 1;
LABEL_77:
        v82 = v119;
        sub_257ECD4E0();
        v83 = sub_257ECDA20();
        v84 = sub_257ECFBC0();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_257BAC000, v83, v84, "Launched detectionMode by URL.", v85, 2u);
          MEMORY[0x259C74820](v85, -1, -1);
        }

        (*(v132 + 8))(v82, v133);
        sub_257BD2C2C(0, &qword_281543F10);
        v86 = sub_257ECFD30();
        v87 = v120;
        sub_257ECF1A0();
        v88 = v121;
        sub_257ECF220();
        v141 = *(v124 + 8);
        v10 = v125;
        (v141)(v87, v125);
        v89 = swift_allocObject();
        *(v89 + 16) = v118;
        v90 = v122;
        v91 = v123;
        *(v89 + 24) = v122;
        *(v89 + 32) = v91;
        *(v89 + 40) = v76;
        v150 = sub_257E4D7C0;
        v151 = v89;
        aBlock = MEMORY[0x277D85DD0];
        v147 = 1107296256;
        v148 = sub_257D231C0;
        v149 = &block_descriptor_51_1;
        v92 = _Block_copy(&aBlock);
        v138 = v90;
        v93 = v91;

        v94 = v126;
        sub_257ECF150();
        aBlock = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD56C0();
        v95 = v128;
        v96 = v131;
        sub_257ED0180();
        MEMORY[0x259C727E0](v88, v94, v95, v92);
        _Block_release(v92);

        (*(v130 + 8))(v95, v96);
        (*(v127 + 8))(v94, v129);
        result = (v141)(v88, v10);
        if (v117)
        {
          return result;
        }

        if (v135)
        {
          swift_unknownObjectRetain();
          sub_257ED01D0();
          sub_257BD2C2C(0, &qword_281543F58);
          sub_257E4D770(&qword_281543F50, &qword_281543F58);
          sub_257ECFAA0();
          v19 = aBlock;
          v16 = v147;
          v97 = v148;
          v98 = v149;
          v99 = v150;
        }

        else
        {
          v19 = v139;
          v100 = -1 << *(v139 + 32);
          v16 = v139 + 56;
          v97 = ~v100;
          v101 = -v100;
          if (v101 < 64)
          {
            v102 = ~(-1 << v101);
          }

          else
          {
            v102 = -1;
          }

          v99 = v102 & *(v139 + 56);

          v98 = 0;
        }

        v141 = v97;
        v103 = (v97 + 64) >> 6;
        v139 = v19;
        if (v19 < 0)
        {
          while (1)
          {
            v109 = sub_257ED0230();
            if (!v109)
            {
              break;
            }

            v144 = v109;
            sub_257BD2C2C(0, &qword_281543F58);
            swift_dynamicCast();
            v108 = v145;
            j = v98;
            v107 = v99;
            if (!v145)
            {
              break;
            }

LABEL_95:
            v110 = [v108 URL];
            v111 = v140;
            sub_257ECCB20();

            v112 = sub_257ECCA70();
            v10 = *v142;
            (*v142)(v111, v143);
            if (v112)
            {
              sub_257C02520();
              v113 = [v108 URL];
              v114 = v140;
              sub_257ECCB20();

              sub_257E4AEA8(v114);
              return (v10)(v114, v143);
            }

            v98 = j;
            v99 = v107;
            v19 = v139;
            if ((v139 & 0x8000000000000000) == 0)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
LABEL_87:
          v104 = v98;
          v105 = v99;
          for (j = v98; !v105; ++v104)
          {
            j = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              goto LABEL_105;
            }

            if (j >= v103)
            {
              return sub_257C02520();
            }

            v105 = *(v16 + 8 * j);
          }

          v106 = v19;
          v107 = (v105 - 1) & v105;
          v108 = *(*(v106 + 48) + ((j << 9) | (8 * __clz(__rbit64(v105)))));
          if (v108)
          {
            goto LABEL_95;
          }
        }

        return sub_257C02520();
      }

      v75 = sub_257ED0640();

      v52 = v69;
      v57 = v68;
      j = v19;
      if (v75)
      {
        goto LABEL_76;
      }
    }

    else
    {

      v52 = v69;
      v57 = v68;
      j = v19;
    }
  }

  v67 = sub_257ED0230();
  if (v67)
  {
    v145 = v67;
    sub_257BD2C2C(0, &qword_281543F58);
    swift_dynamicCast();
    v66 = aBlock;
    v19 = j;
    if (aBlock)
    {
      goto LABEL_63;
    }
  }

LABEL_68:
  sub_257C02520();
  if (v52 | v141)
  {
    v76 = 0;
    goto LABEL_77;
  }

  v77 = v116;
  sub_257ECD4E0();
  v78 = sub_257ECDA20();
  v79 = sub_257ECFBC0();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_257BAC000, v78, v79, "No URL provided, launching without detectionMode.", v80, 2u);
    MEMORY[0x259C74820](v80, -1, -1);
  }

  return (*(v132 + 8))(v77, v133);
}

void sub_257E4AEA8(uint64_t a1)
{
  v2 = sub_257ECDA30();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = sub_257ECCB70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  sub_257ECCB50();
  v14 = sub_257ECF4C0();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    (*(v10 + 16))(v12, a1, v9);
    v16 = objc_allocWithZone(MEMORY[0x277CCAA20]);
    v17 = sub_257E4D614(v12, 1);
    sub_257E5A374(v17);
    if (v18 >> 62)
    {
      v28 = v18;
      v29 = sub_257ED0210();
      v18 = v28;
      if (v29 >= 1)
      {
        goto LABEL_9;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_9:
      if (*(v33 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) && (v22 = v18, (v23 = [*(v33 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) rootViewController]) != 0))
      {
        v24 = v23;
        type metadata accessor for MFNavigationController();
        v25 = swift_dynamicCastClass();
        if (v25)
        {
          v26 = v25;
          v27 = swift_allocObject();
          *(v27 + 16) = v22;
          sub_257E4CBF8(v26, sub_257E4D768, v27);
        }

        else
        {
        }
      }

      else
      {
      }

      return;
    }

    sub_257ECD4E0();
    v30 = sub_257ECDA20();
    v31 = sub_257ECFBC0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_257BAC000, v30, v31, "No images within the magnifier file", v32, 2u);
      MEMORY[0x259C74820](v32, -1, -1);
    }

    (*(v34 + 8))(v8, v35);
  }

  else
  {
    sub_257ECD4E0();
    v19 = sub_257ECDA20();
    v20 = sub_257ECFBC0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_257BAC000, v19, v20, "File path provided does not exist.", v21, 2u);
      MEMORY[0x259C74820](v21, -1, -1);
    }

    (*(v34 + 8))(v6, v35);
  }
}

uint64_t sub_257E4B400(uint64_t a1, void (*a2)(void, void))
{
  v52 = a2;
  v45 = a1;
  v47 = sub_257ECDA30();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF120();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_257ECF190();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_257ECF1B0();
  v36 = *(v37 - 8);
  v7 = MEMORY[0x28223BE20](v37);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v49 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  sub_257C77614();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v15 = qword_281548340;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;
  sub_257ECC3F0();
  v48 = v15;
  result = sub_257ECDD70();
  if (v52 >> 62)
  {
    result = sub_257ED0210();
    v18 = result;
    v19 = v45;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_15:
    sub_257BD2C2C(0, &qword_281543F10);
    v26 = sub_257ECFD30();
    v27 = v34;
    sub_257ECF1A0();
    v28 = v35;
    sub_257ECF220();
    v52 = *(v36 + 8);
    v29 = v37;
    (v52)(v27, v37);
    aBlock[4] = sub_257E4BC00;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_39_2;
    v30 = _Block_copy(aBlock);
    v31 = v38;
    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    v32 = v40;
    v33 = v43;
    sub_257ED0180();
    MEMORY[0x259C727E0](v28, v31, v32, v30);
    _Block_release(v30);

    (*(v42 + 8))(v32, v33);
    (*(v39 + 8))(v31, v41);
    return (v52)(v28, v29);
  }

  v18 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = v45;
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v20 = 0;
    v51 = v52 & 0xC000000000000001;
    v46 = v2 + 8;
    *&v17 = 138412290;
    v44 = v17;
    while (1)
    {
      if (v51)
      {
        v23 = MEMORY[0x259C72E20](v20, v52);
        if (v19)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v23 = *(v52 + 8 * v20 + 32);
        if (v19)
        {
LABEL_13:
          v24 = *(v19 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore + 24);
          v25 = *(v19 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore + 32);
          __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore), v24);
          (*(v25 + 24))(v23, v24, v25);
          v21 = 0;
          goto LABEL_8;
        }
      }

      v21 = 1;
LABEL_8:
      v22 = sub_257ECCB70();
      (*(*(v22 - 8) + 56))(v14, v21, 1, v22);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257C1C614(v14, v49);
      sub_257ECC3F0();
      sub_257ECDD70();

      sub_257BE4084(v14, &qword_27F8F5F30);
      if (v18 == ++v20)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257E4BC00()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257E4BCE8(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a3;
  v4 = sub_257ECF120();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF190();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF1B0();
  v24 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_257BD2C2C(0, &qword_281543F10);
  v17 = sub_257ECFD30();
  sub_257ECF1A0();
  sub_257ECF220();
  v23 = *(v11 + 8);
  v23(v14, v10);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = a2;
  *(v18 + 24) = v19;
  aBlock[4] = sub_257E4F34C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_66_0;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C727E0](v16, v9, v6, v20);
  _Block_release(v20);

  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);
  return (v23)(v16, v24);
}

uint64_t sub_257E4C070(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v59 = a1;
  v2 = sub_257ECD9D0();
  v62 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECD990();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v68 & 1) == 0)
  {
    v58 = v2;
    v60 = v5;
    sub_257ECD440();
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = 1;
      _os_log_impl(&dword_257BAC000, v15, v16, "Setting detectionModeOn to %{BOOL}d", v17, 8u);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    v18 = *(v8 + 8);
    v18(v13, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    v68 = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257ECD440();
    v19 = sub_257ECDA20();
    v20 = sub_257ECFBD0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_257BAC000, v19, v20, "Launched Detection Mode by URL.", v21, 2u);
      MEMORY[0x259C74820](v21, -1, -1);
    }

    v18(v11, v7);
    v22 = (v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
    swift_beginAccess();
    v23 = v22[1];
    v24 = v22[2];
    v67[0] = *v22;
    v67[1] = v23;
    v67[2] = v24;
    v25 = qword_2815447E0;

    if (v25 != -1)
    {
      v26 = swift_once();
    }

    MEMORY[0x28223BE20](v26);
    *(&v56 - 2) = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
    sub_257ECFD50();

    v27 = v66[0];
    v28 = sub_257C592D0(2u, v66[0]);
    v5 = v60;
    if (v28)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_257BFD908(0, *(v27 + 2) + 1, 1, v27);
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      v57 = v4;
      if (v30 >= v29 >> 1)
      {
        v27 = sub_257BFD908((v29 > 1), v30 + 1, 1, v27);
      }

      *(v27 + 2) = v30 + 1;
      v27[v30 + 32] = 2;
      v31 = (v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
      v32 = swift_beginAccess();
      v33 = *v31;
      v34 = v31[1];
      v35 = v31[2];
      v66[0] = v33;
      v66[1] = v34;
      v66[2] = v35;
      MEMORY[0x28223BE20](v32);
      *(&v56 - 2) = v66;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
      sub_257ECFD50();

      v36 = v65[0];
      v37 = (v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
      v38 = swift_beginAccess();
      v39 = *v37;
      v40 = v37[1];
      v41 = v37[2];
      v65[0] = v39;
      v65[1] = v40;
      v65[2] = v41;
      MEMORY[0x28223BE20](v38);
      *(&v56 - 2) = v65;

      sub_257ECFD50();

      v42 = v65[3];
      v43 = sub_257D53928();
      sub_257D53B38(v27, v36, v42, v43);

      v44 = [objc_opt_self() defaultCenter];
      if (qword_27F8F4680 != -1)
      {
        swift_once();
      }

      [v44 postNotificationName:qword_27F913048 object:v59 userInfo:0];

      v4 = v57;
      v5 = v60;
    }

    v2 = v58;
  }

  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v45 = sub_257ECD9C0();
  __swift_project_value_buffer(v45, qword_27F8F5D90);
  v46 = sub_257ECD9A0();
  v47 = v64;
  sub_257ECD9E0();
  v48 = sub_257ECFDB0();
  if (sub_257ED0090())
  {
    sub_257ECC3F0();
    v49 = v61;
    sub_257ECDA10();
    v50 = v49;

    v51 = v62;
    if ((*(v62 + 88))(v50, v2) == *MEMORY[0x277D85B00])
    {
      v52 = "[Error] Interval already ended";
    }

    else
    {
      (*(v51 + 8))(v50, v2);
      v52 = "";
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v46, v48, v54, "SceneLaunchDetectMode", v52, v53, 2u);
    MEMORY[0x259C74820](v53, -1, -1);
  }

  return (*(v5 + 8))(v47, v4);
}