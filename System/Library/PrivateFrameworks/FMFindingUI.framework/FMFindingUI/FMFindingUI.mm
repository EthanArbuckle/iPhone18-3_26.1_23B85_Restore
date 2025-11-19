void sub_24A505828(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, float32x2_t *a8, float32x2_t *a9, float *a10, float *a11)
{
  v18 = (a1 * 3.1416) / 180.0;
  v19 = (a2 * 3.1416) / 180.0;
  v23 = (a3 + 0.2) + ((a3 - (a3 + 0.2)) * a4);
  v20 = vmul_n_f32(__sincosf_stret(v18 + v19), v23);
  v21 = __sincosf_stret(v18 - v19);
  *a8 = v20;
  *a9 = vmul_n_f32(v21, v23);
  if (a7)
  {
    v22 = 180.5;
  }

  else
  {
    v22 = a2;
  }

  *a10 = (a1 * -3.1416) / 180.0;
  *a11 = v22;
}

void sub_24A50592C()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v3 = *(arguments_buffer + 64);
  v2 = *(arguments_buffer + 72);
  v4 = *(arguments_buffer + 80);
  v5 = **(arguments_buffer + 16);
  v6 = **(arguments_buffer + 24);
  v7 = **(arguments_buffer + 48);
  v8 = (v5 * 3.1416) / 180.0;
  v9 = (v6 * 3.1416) / 180.0;
  v13 = (**(arguments_buffer + 32) + 0.2) + ((**(arguments_buffer + 32) - (**(arguments_buffer + 32) + 0.2)) * **(arguments_buffer + 40));
  v10 = vmul_n_f32(__sincosf_stret(v8 + v9), v13);
  v11 = __sincosf_stret(v8 - v9);
  *v1 = v10;
  *v3 = vmul_n_f32(v11, v13);
  if (v7)
  {
    v12 = 180.5;
  }

  else
  {
    v12 = v6;
  }

  *v2 = (v5 * -3.1416) / 180.0;
  *v4 = v12;
}

uint64_t sub_24A505A40()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 24);
  v2 = **(result + 16);
  *v1 = v2;
  v1[1] = v2;
  return result;
}

uint64_t sub_24A505A64(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, float *a14, _DWORD *a15, _DWORD *a16, float *a17, float *a18, float *a19, _DWORD *a20, _DWORD *a21)
{
  vfx_script_clock_delta_time();
  if (fabsf(a2) > 0.00000011921)
  {
    v29 = 1.0 / a2;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v29 * v28;
  v31 = -(v29 * v28);
  if (a7)
  {
    v31 = v30;
  }

  v32 = fminf(fmaxf(v31 + a1, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v47 = v33;
  vfx_script_texture_sample1d();
  v46 = v34;
  vfx_script_clock_delta_time();
  v36 = v29 * v35;
  v37 = -(v29 * v35);
  if (a10)
  {
    v37 = v36;
  }

  v38 = fminf(fmaxf(v37 + a3, 0.0), 1.0);
  if (v38 >= 0.5)
  {
    v39 = (((v38 * -2.0) + 4.0) * v38) + -1.0;
  }

  else
  {
    v39 = (v38 * v38) + (v38 * v38);
  }

  vfx_script_clock_delta_time();
  v41 = v40 + v40;
  if (a11)
  {
    v41 = -v41;
  }

  v42 = fminf(fmaxf(v41 + a4, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v48 = v43;
  result = vfx_script_texture_sample1d();
  *a14 = v32;
  *a15 = v47;
  *a16 = v46;
  *a17 = v39;
  *a18 = v38;
  *a19 = v42;
  *a20 = v48;
  *a21 = v45;
  return result;
}

uint64_t sub_24A505C44()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 48);
  v3 = *(arguments_buffer + 88);
  v4 = *(arguments_buffer + 96);
  v5 = *(arguments_buffer + 104);
  v6 = *(arguments_buffer + 112);
  v38 = *(arguments_buffer + 120);
  v37 = *(arguments_buffer + 128);
  v36 = *(arguments_buffer + 136);
  v35 = *(arguments_buffer + 144);
  v39 = *(arguments_buffer + 152);
  v40 = *(arguments_buffer + 160);
  v7 = **(arguments_buffer + 16);
  v8 = **(arguments_buffer + 24);
  v9 = **(arguments_buffer + 32);
  v10 = **(arguments_buffer + 56);
  v11 = **(arguments_buffer + 64);
  v12 = **(arguments_buffer + 72);
  v13 = **(arguments_buffer + 80);
  vfx_script_clock_delta_time();
  if (fabsf(v8) > 0.00000011921)
  {
    v15 = 1.0 / v8;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = v15 * v14;
  v17 = -(v15 * v14);
  if (v9)
  {
    v17 = v16;
  }

  v18 = fminf(fmaxf(v7 + v17, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v34 = v19;
  vfx_script_texture_sample1d();
  v33 = v20;
  vfx_script_clock_delta_time();
  v22 = v15 * v21;
  v23 = -(v15 * v21);
  if (v10)
  {
    v23 = v22;
  }

  v24 = fminf(fmaxf(v11 + v23, 0.0), 1.0);
  if (v24 >= 0.5)
  {
    v25 = (((v24 * -2.0) + 4.0) * v24) + -1.0;
  }

  else
  {
    v25 = (v24 * v24) + (v24 * v24);
  }

  vfx_script_clock_delta_time();
  v27 = v26 + v26;
  if (v13)
  {
    v27 = -v27;
  }

  v28 = fminf(fmaxf(v12 + v27, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v32 = v29;
  result = vfx_script_texture_sample1d();
  *v5 = v18;
  *v6 = v34;
  *v38 = v33;
  *v37 = v25;
  *v36 = v24;
  *v35 = v28;
  *v39 = v32;
  *v40 = v31;
  return result;
}

uint64_t sub_24A505E30()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 24);
  v2 = **(result + 16);
  *v1 = v2;
  v1[1] = v2;
  return result;
}

double sub_24A505E54(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, __float2 *a8, float32x2_t *a9, float32x2_t *a10, float *a11, float *a12)
{
  v22 = (a1 * 3.1416) / 180.0;
  v23 = __sincosf_stret(v22);
  v24 = (a2 * 3.1416) / 180.0;
  v29 = (a3 + 0.06) + ((a3 - (a3 + 0.06)) * a4);
  v25 = vmul_n_f32(__sincosf_stret(v22 + v24), v29);
  v26 = vmul_n_f32(__sincosf_stret(v22 - v24), v29);
  v27 = 180.5;
  if (!a7)
  {
    v27 = a2;
  }

  *a9 = v25;
  *a10 = v26;
  *a11 = (a1 * -3.1416) / 180.0;
  *a12 = v27;
  result = *&v23;
  *a8 = v23;
  return result;
}

double sub_24A505F74()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v2 = *(arguments_buffer + 64);
  v3 = *(arguments_buffer + 72);
  v4 = *(arguments_buffer + 80);
  v5 = *(arguments_buffer + 88);
  v6 = **(arguments_buffer + 16);
  v7 = **(arguments_buffer + 24);
  v8 = **(arguments_buffer + 32);
  v9 = **(arguments_buffer + 40);
  v10 = **(arguments_buffer + 48);
  v11 = (v6 * 3.1416) / 180.0;
  v12 = __sincosf_stret(v11);
  v13 = (v7 * 3.1416) / 180.0;
  v18 = (v8 + 0.06) + ((v8 - (v8 + 0.06)) * v9);
  v14 = vmul_n_f32(__sincosf_stret(v11 + v13), v18);
  v15 = vmul_n_f32(__sincosf_stret(v11 - v13), v18);
  v16 = 180.5;
  if (!v10)
  {
    v16 = v7;
  }

  *v2 = v14;
  *v3 = v15;
  *v4 = (v6 * -3.1416) / 180.0;
  *v5 = v16;
  result = *&v12;
  *v1 = v12;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FMR1InsetLabelStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMR1InsetLabelStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMR1InsetLabelStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_24A506188(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMPFSKSceneStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMPFSKSceneStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_24A506238()
{
  [v0 nativeBounds];
  Height = CGRectGetHeight(v6);
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C0E8);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = Height;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMPFVideoScaling screen height: %f", v5, 0xCu);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }
}

uint64_t sub_24A506420(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x24C21A7E0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24A506474(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A62EED4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_24A5064CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A62EEE4();
  *a1 = result;
  return result;
}

uint64_t sub_24A506514(uint64_t a1, id *a2)
{
  result = sub_24A62EBF4();
  *a2 = 0;
  return result;
}

uint64_t sub_24A50658C(uint64_t a1, id *a2)
{
  v3 = sub_24A62EC04();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24A50660C@<X0>(uint64_t *a1@<X8>)
{
  sub_24A62EC14();
  v2 = sub_24A62EBE4();

  *a1 = v2;
  return result;
}

void *sub_24A506650@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_24A506674(void *a1, uint64_t *a2)
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

uint64_t sub_24A506708@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24A62EC14();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24A506734()
{
  sub_24A5069F8(&qword_27EF4F210, type metadata accessor for TextStyle);
  sub_24A5069F8(&qword_27EF4F218, type metadata accessor for TextStyle);

  return sub_24A62F4A4();
}

uint64_t sub_24A5067F0()
{
  sub_24A5069F8(&qword_27EF4F200, _s3__C3KeyVMa_0);
  sub_24A5069F8(&qword_27EF4F208, _s3__C3KeyVMa_0);

  return sub_24A62F4A4();
}

uint64_t sub_24A5068AC()
{
  v2 = *v0;
  sub_24A5069F8(&qword_27EF4F050, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_24A5069F8(&qword_27EF4F058, type metadata accessor for UIBackgroundTaskIdentifier);
  return sub_24A62F4A4();
}

uint64_t sub_24A5069F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A506A88()
{
  sub_24A5069F8(&qword_27EF4F1C0, type metadata accessor for Key);
  sub_24A5069F8(&qword_27EF4F1C8, type metadata accessor for Key);

  return sub_24A62F4A4();
}

uint64_t sub_24A506B44()
{
  sub_24A5069F8(&qword_27EF4F1F0, type metadata accessor for CHHapticEngineOptionKey);
  sub_24A5069F8(&qword_27EF4F1F8, type metadata accessor for CHHapticEngineOptionKey);

  return sub_24A62F4A4();
}

uint64_t sub_24A506C00()
{
  sub_24A5069F8(&qword_27EF4F1E0, type metadata accessor for CHHapticPowerUsage);
  sub_24A5069F8(&qword_27EF4F1E8, type metadata accessor for CHHapticPowerUsage);

  return sub_24A62F4A4();
}

uint64_t sub_24A506CBC()
{
  sub_24A5069F8(&qword_27EF4F1D0, type metadata accessor for CHHapticUsageCategory);
  sub_24A5069F8(&qword_27EF4F1D8, type metadata accessor for CHHapticUsageCategory);

  return sub_24A62F4A4();
}

uint64_t sub_24A506D78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A62EBE4();

  *a2 = v5;
  return result;
}

uint64_t sub_24A506DC0()
{
  sub_24A5069F8(&qword_27EF4F1B0, type metadata accessor for VFXWorldLoaderOption);
  sub_24A5069F8(&qword_27EF4F1B8, type metadata accessor for VFXWorldLoaderOption);

  return sub_24A62F4A4();
}

uint64_t sub_24A506EB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24A506EF0()
{
  v1 = *v0;
  v2 = sub_24A62EC14();
  v3 = MEMORY[0x24C21A600](v2);

  return v3;
}

uint64_t sub_24A506F2C()
{
  v1 = *v0;
  sub_24A62EC14();
  sub_24A62EC74();
}

uint64_t sub_24A506F80()
{
  v1 = *v0;
  sub_24A62EC14();
  sub_24A62F714();
  sub_24A62EC74();
  v2 = sub_24A62F754();

  return v2;
}

uint64_t sub_24A506FF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24A62EC14();
  v6 = v5;
  if (v4 == sub_24A62EC14() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A62F634();
  }

  return v9 & 1;
}

uint64_t sub_24A50709C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A5070BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_24A5071FC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A50726C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A50728C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_24A5072CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_24A50795C()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D74418];
  v2 = sub_24A62EBE4();
  v3 = [v0 systemFontOfSize:v2 weight:68.0 design:v1];

  if (v3)
  {
    v4 = sub_24A62EBE4();
    v5 = [v0 systemFontOfSize:v4 weight:20.0 design:v1];

    if (v5)
    {
      v6 = [objc_opt_self() labelColor];
      *&xmmword_27EF5C070 = v3;
      *(&xmmword_27EF5C070 + 1) = v5;
      qword_27EF5C080 = v6;
      unk_27EF5C088 = xmmword_24A633800;
      qword_27EF5C098 = 0x3FE0000000000000;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_24A507A8C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_distanceLabel;
  type metadata accessor for FMR1InsetLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v1] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowVerticalStackView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowStackView;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_hintLabel;
  *&v0[v5] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityViewContainer;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityView;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_style;
  if (qword_27EF4E980 != -1)
  {
    swift_once();
  }

  v9 = &v0[v8];
  v10 = xmmword_27EF5C070;
  v11 = qword_27EF5C080;
  v12 = qword_27EF5C098;
  v13 = unk_27EF5C088;
  *v9 = xmmword_27EF5C070;
  *(v9 + 2) = v11;
  *(v9 + 24) = v13;
  *(v9 + 5) = v12;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for FMBTDistanceView();
  v14 = v10;
  v15 = *(&v10 + 1);
  v16 = v11;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A507C8C();

  return v17;
}

void sub_24A507C8C()
{
  [v0 setOverrideUserInterfaceStyle_];
  v1 = &property descriptor for FMFindingViewController.dismissedHandler;
  [v0 setAxis_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  v36 = xmmword_24A633810;
  *(inited + 16) = xmmword_24A633810;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_distanceLabel];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_hintLabel];
  *(inited + 40) = v4;
  v5 = inited & 0xC000000000000001;
  v6 = inited & 0xFFFFFFFFFFFFFF8;
  v38 = v3;
  v37 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v38; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v8 = i;
    [i setNumberOfLines_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    if (v5)
    {
      v9 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*(v6 + 16) < 2uLL)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v9 = *(inited + 40);
    }

    v10 = v9;
    [v9 setNumberOfLines_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    swift_setDeallocating();
    v11 = *(inited + 16);
    swift_arrayDestroy();
    v12 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowStackView];
    [v12 v1[144]];
    [v12 setAlignment_];
    v5 = &v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_style];
    [v12 setSpacing_];
    v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowVerticalStackView];
    [v13 v1[144]];
    [v13 setAlignment_];
    [v13 setSpacing_];
    v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityView];
    v15 = [objc_opt_self() whiteColor];
    [v14 setColor_];

    [v14 startAnimating];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    inited = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityViewContainer];
    [inited addSubview_];
    [inited setTranslatesAutoresizingMaskIntoConstraints_];
    [inited setHidden_];
    [v12 addArrangedSubview_];
    [v12 addArrangedSubview_];
    v16 = swift_initStackObject();
    *(v16 + 16) = v36;
    *(v16 + 32) = v38;
    v1 = (v16 + 32);
    *(v16 + 40) = v12;
    v6 = v16 & 0xC000000000000001;
    v17 = v12;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x24C21ACB0](0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v18 = v38;
    }

    v19 = v18;
    [v13 addArrangedSubview_];

    if (v6)
    {
      break;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v20 = *(v16 + 40);
      goto LABEL_13;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v20 = MEMORY[0x24C21ACB0](1, v16);
LABEL_13:
  v21 = v20;
  [v13 addArrangedSubview_];

  swift_setDeallocating();
  v22 = *(v16 + 16);
  swift_arrayDestroy();
  [v0 addArrangedSubview_];
  [v38 setFont_];
  [v38 setTextColor_];
  [v37 setFont_];
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24A633820;
  v25 = [inited centerXAnchor];
  v26 = [v14 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v24 + 32) = v27;
  v28 = [inited centerYAnchor];
  v29 = [v14 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 40) = v30;
  v31 = [inited widthAnchor];
  v32 = [v31 constraintEqualToConstant_];

  *(v24 + 48) = v32;
  v33 = [inited heightAnchor];
  v34 = [v33 constraintEqualToConstant_];

  *(v24 + 56) = v34;
  sub_24A509158();
  v35 = sub_24A62ED54();

  [v23 activateConstraints_];
}

void sub_24A508250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_opt_self();
  v10 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_style + 40];
  sub_24A508AE4(a2, v20);
  v11 = swift_allocObject();
  v12 = *(a1 + 32);
  *(v11 + 72) = *(a1 + 48);
  v13 = *(a1 + 80);
  *(v11 + 88) = *(a1 + 64);
  *(v11 + 104) = v13;
  v14 = *(a1 + 16);
  *(v11 + 24) = *a1;
  *(v11 + 40) = v14;
  *(v11 + 16) = v4;
  *(v11 + 117) = *(a1 + 93);
  *(v11 + 56) = v12;
  *(v11 + 128) = a3;
  *(v11 + 136) = a4;
  sub_24A508CA0(v20, v11 + 144);
  aBlock[4] = sub_24A508CB8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285D9FDC8;
  v15 = _Block_copy(aBlock);
  v16 = v4;
  sub_24A508CE4(a1, v18);

  v18[4] = nullsub_1;
  v18[5] = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_24A5A1470;
  v18[3] = &unk_285D9FDF0;
  v17 = _Block_copy(v18);
  [v9 transitionWithView:v16 duration:5242880 options:v15 animations:v17 completion:v10];
  _Block_release(v17);
  _Block_release(v15);
}

id sub_24A508444(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_distanceLabel);
  if ((*(a2 + 24) | 0x2000000u) >> 25 == 3)
  {
    v11 = 0;
  }

  else
  {
    v12 = *(a2 + 100);
    v51 = a2[2];
    v52 = a2[3];
    v53 = a2[4];
    v54 = a2[5];
    v49 = *a2;
    v50 = a2[1];
    sub_24A508D40();
    v11 = sub_24A62EBE4();
  }

  [v10 setText_];

  v13 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_hintLabel);
  v14 = sub_24A508868();
  [v13 setTextColor_];

  if (a4)
  {

    sub_24A5D2200(0xD000000000000016, 0x800000024A63D1B0);
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_24A633830;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_24A508FEC();
    *(v15 + 32) = a3;
    *(v15 + 40) = a4;
    sub_24A62EC24();

LABEL_6:
    v16 = sub_24A62EBE4();

    goto LABEL_9;
  }

  v17 = *(a2 + 24);
  if ((v17 | 0x2000000u) >> 25 != 3)
  {
    *(a2 + 100);
    v44 = a2[2];
    v45 = a2[3];
    v46 = a2[4];
    v47 = a2[5];
    v42 = *a2;
    v43 = a2[1];
    LOWORD(v48) = *(a2 + 24);
    BYTE2(v48) = BYTE2(*(a2 + 24));
    sub_24A508E80(SHIBYTE(v17), a5);
    goto LABEL_6;
  }

  v16 = 0;
LABEL_9:
  [v13 setText_];

  v18 = [v10 text];
  v19 = &property descriptor for FMFindingViewController.dismissedHandler;
  if (!v18)
  {
    if ([v10 isHidden])
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v20 = v18;
  v21 = sub_24A62EC14();
  v23 = v22;

  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v19 = &property descriptor for FMFindingViewController.dismissedHandler;
  if ([v10 &selRef_constraintEqualToConstant_] != (v24 == 0))
  {
    if (v24)
    {
      v25 = 0;
      v26 = 1.0;
LABEL_18:
      [v10 setAlpha_];
      [v10 v19[139]];
      goto LABEL_19;
    }

LABEL_17:
    v26 = 0.0;
    v25 = 1;
    goto LABEL_18;
  }

LABEL_19:
  v27 = [v13 text];
  if (v27)
  {
    v28 = v27;
    v29 = sub_24A62EC14();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowStackView);
  if (v33 != [v34 isHidden])
  {
    v35 = 1.0;
    if (v33)
    {
      v35 = 0.0;
    }

    [v34 setAlpha_];
    [v34 v19[139]];
  }

  v36 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityViewContainer);
  result = [v36 isHidden];
  if ((a4 == 0) != result)
  {
    v38 = a4 == 0;
    v39 = a4 == 0;
    v40 = 1.0;
    if (v38)
    {
      v40 = 0.0;
    }

    [v36 setAlpha_];
    v41 = v19[139];

    return [v36 v41];
  }

  return result;
}

id sub_24A508868()
{
  v1 = *(v0 + 96);
  if ((v1 | 0x2000000) >> 25 == 3)
  {
    v2 = &selRef_clearColor;
  }

  else
  {
    v2 = off_278FE4EC8[((v1 | (*(v0 + 100) << 32)) << 40) >> 56];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

id sub_24A508918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBTDistanceView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_24A508A2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24A508A40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24A508A88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24A508AE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A508B48()
{
  v1 = *(v0 + 120);
  if ((v1 | 0x2000000u) >> 25 != 3)
  {
    *(v0 + 124);
    sub_24A508BE4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), v1, SBYTE2(v1));
  }

  v2 = *(v0 + 136);

  sub_24A508C54((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

void sub_24A508BE4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14)
{
  if (a14 == 4)
  {
    sub_24A508C10(a1, a2, a3, a4);
  }
}

void sub_24A508C10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_24A508C54(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24A508CA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24A508CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A508D40()
{
  sub_24A62F384();

  strcpy(v12, "BT_DIRECTION_");
  HIWORD(v12[1]) = -4864;
  v1 = 0xE300000000000000;
  v2 = 5390662;
  v3 = *(v0 + 98);
  v4 = 0xE400000000000000;
  v5 = 1163019592;
  v6 = 0xE500000000000000;
  v7 = 0x444E554F46;
  if (v3 != 3)
  {
    v7 = 0x4E574F4E4B4E55;
    v6 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*(v0 + 98))
  {
    v2 = 1380009294;
    v1 = 0xE400000000000000;
  }

  if (*(v0 + 98) <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v5;
  }

  if (*(v0 + 98) <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C21A5D0](v8, v9);

  MEMORY[0x24C21A5D0](0x315F544E49485FLL, 0xE700000000000000);
  v10 = sub_24A5D2200(v12[0], v12[1]);

  return v10;
}

uint64_t sub_24A508E80(char a1, void *a2)
{
  v4 = 0x4953414552434544;
  if (a1 == 1)
  {
    v5 = v2;
    v4 = 0x4953414552434E49;
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v5 = v2;
LABEL_5:

    MEMORY[0x24C21A5D0](v4, 0xEA0000000000474ELL);
    swift_bridgeObjectRelease_n();
    v7 = 95;
    v6 = 0xE100000000000000;
    v2 = v5;
    goto LABEL_7;
  }

  v7 = 0;
  v6 = 0xE000000000000000;
LABEL_7:
  if (*(v2 + 98) == 1)
  {
    v14 = sub_24A509040();
    v15 = v8;
    MEMORY[0x24C21A5D0](v7, v6);

    v9 = v14;
    v10 = v15;
  }

  else
  {

    v9 = sub_24A509040();
    v10 = v11;
  }

  v12 = sub_24A604220(v9, v10, a2);

  return v12;
}

uint64_t sub_24A508FA4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24A508FEC()
{
  result = qword_27EF50230;
  if (!qword_27EF50230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50230);
  }

  return result;
}

uint64_t sub_24A509040()
{
  sub_24A62F384();

  strcpy(v11, "BT_DIRECTION_");
  HIWORD(v11[1]) = -4864;
  v1 = 0xE300000000000000;
  v2 = 5390662;
  v3 = *(v0 + 98);
  v4 = 0xE400000000000000;
  v5 = 1163019592;
  v6 = 0xE500000000000000;
  v7 = 0x444E554F46;
  if (v3 != 3)
  {
    v7 = 0x4E574F4E4B4E55;
    v6 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*(v0 + 98))
  {
    v2 = 1380009294;
    v1 = 0xE400000000000000;
  }

  if (*(v0 + 98) <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v5;
  }

  if (*(v0 + 98) <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C21A5D0](v8, v9);

  MEMORY[0x24C21A5D0](0x325F544E49485FLL, 0xE700000000000000);
  return v11[0];
}

unint64_t sub_24A509158()
{
  result = qword_27EF4F378;
  if (!qword_27EF4F378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF4F378);
  }

  return result;
}

void sub_24A5091A4()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_distanceLabel;
  type metadata accessor for FMR1InsetLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowVerticalStackView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowStackView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_hintLabel;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityViewContainer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_style;
  if (qword_27EF4E980 != -1)
  {
    swift_once();
  }

  v9 = v0 + v8;
  v10 = qword_27EF5C080;
  v11 = qword_27EF5C098;
  v12 = unk_27EF5C088;
  *v9 = xmmword_27EF5C070;
  *(v9 + 16) = v10;
  *(v9 + 24) = v12;
  *(v9 + 40) = v11;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A509348()
{
  sub_24A62F714();
  MEMORY[0x24C21B040](0);
  return sub_24A62F754();
}

uint64_t sub_24A5093B4()
{
  sub_24A62F714();
  MEMORY[0x24C21B040](0);
  return sub_24A62F754();
}

id sub_24A509448(uint64_t a1, char *a2)
{
  v27 = sub_24A62E214();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    HIDWORD(v24) = *a2;
    v26 = v2;
    v32 = MEMORY[0x277D84F90];
    sub_24A58D888(0, v10, 0);
    v11 = v32;
    v25 = a1;
    v12 = a1 + 32;
    v13 = (v5 + 8);
    do
    {
      sub_24A508AE4(v12, v29);
      v14 = v30;
      v15 = v31;
      sub_24A50A204(v29, v30);
      (*(v15 + 16))(v14, v15);
      v16 = sub_24A62E1C4();
      v18 = v17;
      (*v13)(v8, v27);
      sub_24A508C54(v29);
      v32 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_24A58D888((v19 > 1), v20 + 1, 1);
        v11 = v32;
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v12 += 40;
      --v10;
    }

    while (v10);
    a1 = v25;
    v2 = v26;
    v9 = BYTE4(v24);
  }

  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers] = v11;
  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables] = a1;
  v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_connectionContext] = v9;
  v22 = type metadata accessor for FMConnectionManager();
  v28.receiver = v2;
  v28.super_class = v22;
  return objc_msgSendSuper2(&v28, sel_init);
}

id FMConnectionManager.__deallocating_deinit()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMConnectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A5097AC()
{
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C0E8);
  v1 = sub_24A62EF44();
  log = sub_24A62E2F4();
  if (os_log_type_enabled(log, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_24A509BA8(0xD000000000000047, 0x800000024A63D270, &v5);
    _os_log_impl(&dword_24A503000, log, v1, "%s", v2, 0xCu);
    sub_24A508C54(v3);
    MEMORY[0x24C21BBE0](v3, -1, -1);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }
}

void sub_24A5098F0()
{
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C0E8);
  v1 = sub_24A62EF44();
  log = sub_24A62E2F4();
  if (os_log_type_enabled(log, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_24A509BA8(0xD00000000000004ALL, 0x800000024A63D2C0, &v5);
    _os_log_impl(&dword_24A503000, log, v1, "%s", v2, 0xCu);
    sub_24A508C54(v3);
    MEMORY[0x24C21BBE0](v3, -1, -1);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }
}

id FMConnectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24A509AC8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_24A509B14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24A509B4C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24A509BA8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_24A509BA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A509D28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24A50A248(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_24A508C54(v11);
  return v7;
}

unint64_t sub_24A509D28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24A509E34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24A62F3D4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24A509E34(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A509E80(a1, a2);
  sub_24A509FB0(&unk_285D9E908);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24A509E80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24A50A09C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24A62F3D4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24A62ECC4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A50A09C(v10, 0);
        result = sub_24A62F374();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24A509FB0(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24A50A110(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24A50A09C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A508FA4(&qword_27EF4F398, &qword_24A633918);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24A50A110(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF4F398, &qword_24A633918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_24A50A204(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24A50A248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for FMConnectionManagerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FMConnectionManagerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24A50A394()
{
  result = qword_27EF4F3A0;
  if (!qword_27EF4F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F3A0);
  }

  return result;
}

id sub_24A50A480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_effectBackground;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v1[v3] = v5;
  v6 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_containerStackView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v8 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v9 = &v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  sub_24A50D0EC(v22);
  v10 = v22[3];
  *(v9 + 2) = v22[2];
  *(v9 + 3) = v10;
  *(v9 + 8) = v23;
  v11 = v22[1];
  *v9 = v22[0];
  *(v9 + 1) = v11;
  v12 = &v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *&v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_findables] = a1;
  if (*(a1 + 16))
  {
    sub_24A508AE4(a1 + 32, v20);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  swift_beginAccess();
  sub_24A50D1D4(v20, v12);
  swift_endAccess();
  v19.receiver = v1;
  v19.super_class = type metadata accessor for FMFindingGenericPartPickerView();
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A50A82C();
  sub_24A50A988();
  sub_24A50A6DC(v14);
  v15 = [v13 contextMenuInteraction];
  if (v15)
  {
    v16 = v15;
    [v13 setShowsMenuAsPrimaryAction_];
    v17 = v16;
    [v13 addInteraction_];
  }

  return v13;
}

void sub_24A50A6DC(double a1)
{
  LODWORD(a1) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:a1];
  v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel];
  v3 = sub_24A50AFF0();
  [v2 setAttributedText_];

  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView];
  v5 = sub_24A62EBE4();
  v6 = [objc_opt_self() systemImageNamed_];

  if (v6)
  {
    v7 = [objc_opt_self() whiteColor];
    v8 = [v6 imageWithTintColor:v7 renderingMode:1];
  }

  else
  {
    v8 = 0;
  }

  [v4 setImage_];
}

id sub_24A50A82C()
{
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_containerStackView];
  [v0 addSubview_];
  v2 = [v0 layer];
  [v2 setMasksToBounds_];

  v3 = [v0 layer];
  v4 = &v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  [v3 setCornerRadius_];

  [v1 setAxis_];
  [v1 setSpacing_];
  [v1 setLayoutMarginsRelativeArrangement_];
  [v1 setLayoutMargins_];
  [v1 addArrangedSubview_];
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView];

  return [v1 addArrangedSubview_];
}

void sub_24A50A988()
{
  v1 = v0;
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633820;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_effectBackground];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel];
  *(inited + 40) = v4;
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_containerStackView];
  *(inited + 48) = v5;
  v6 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView];
  *(inited + 56) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v54 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v8; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v12 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];

    if (v7)
    {
      v13 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v13 = *(inited + 40);
    }

    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];

    if (v7)
    {
      v15 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v15 = *(inited + 48);
    }

    v16 = v15;
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];

    if (v7)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v17 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v17 = MEMORY[0x24C21ACB0](3, inited);
LABEL_13:
  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  v53 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24A633820;
  v21 = [v10 leadingAnchor];
  v22 = [v1 &selRef_initWithFrame_ + 1];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [v10 trailingAnchor];
  v25 = [v1 &selRef_sharedApplication + 4];
  v26 = [v24 constraintEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [v10 topAnchor];
  v28 = [v1 &selRef_description];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v30 = [v10 bottomAnchor];
  v31 = [v1 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v20 + 56) = v32;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v33 = sub_24A62ED54();

  [v53 activateConstraints_];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_24A633820;
  v35 = [v8 leadingAnchor];
  v36 = [v1 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [v8 trailingAnchor];
  v39 = [v1 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v34 + 40) = v40;
  v41 = [v8 topAnchor];
  v42 = [v1 topAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v34 + 48) = v43;
  v44 = [v8 bottomAnchor];
  v45 = [v1 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v34 + 56) = v46;
  v47 = sub_24A62ED54();

  [v53 activateConstraints_];

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_24A6339F0;
  v49 = [v54 heightAnchor];
  v50 = [v54 widthAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v48 + 32) = v51;
  v52 = sub_24A62ED54();

  [v53 activateConstraints_];
}

uint64_t sub_24A50AFF0()
{
  v89 = sub_24A62E214();
  v1 = *(v89 - 8);
  v2 = *(v1 + 64);
  (MEMORY[0x28223BE20])();
  v74 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  v4 = (*(*(v82 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  *&v88 = &v72 - v5;
  v6 = *(*(sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0) - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v72 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v72 - v11;
  v72 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_findables];
  v14 = *(v13 + 16);
  v83 = v0;
  v80 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
  swift_beginAccess();
  v84 = v13;
  v79 = v14;
  if (v14)
  {
    v15 = 0;
    result = v13 + 32;
    v86 = (v1 + 56);
    v73 = (v1 + 32);
    v76 = (v1 + 8);
    v77 = (v1 + 48);
    v78 = v12;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      v87 = result;
      sub_24A508AE4(result, v93);
      v20 = v94;
      v19 = v95;
      sub_24A50A204(v93, v94);
      (*(v19 + 16))(v20, v19);
      v21 = *v86;
      (*v86)(v12, 0, 1, v89);
      sub_24A50D63C(&v83[v80], v90, &unk_27EF522E0, qword_24A637660);
      v22 = v91;
      if (v91)
      {
        v23 = v92;
        v24 = sub_24A50A204(v90, v91);
        v25 = *(v22 - 8);
        v26 = *(v25 + 64);
        MEMORY[0x28223BE20](v24);
        v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v28);
        sub_24A50D6A4(v90, &unk_27EF522E0, qword_24A637660);
        v29 = *(v23 + 16);
        v30 = v23;
        v31 = v85;
        v29(v22, v30);
        (*(v25 + 8))(v28, v22);
        v21(v31, 0, 1, v89);
      }

      else
      {
        sub_24A50D6A4(v90, &unk_27EF522E0, qword_24A637660);
        v31 = v85;
        v21(v85, 1, 1, v89);
      }

      v32 = v82[12];
      v33 = v78;
      v34 = v88;
      sub_24A50D63C(v78, v88, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D63C(v31, v34 + v32, &unk_27EF4FEE0, &qword_24A6369F0);
      v35 = *v77;
      if ((*v77)(v34, 1, v89) == 1)
      {
        break;
      }

      v17 = v33;
      v36 = v88;
      sub_24A50D63C(v88, v81, &unk_27EF4FEE0, &qword_24A6369F0);
      if (v35(v36 + v32, 1, v89) == 1)
      {
        sub_24A50D6A4(v31, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A50D6A4(v17, &unk_27EF4FEE0, &qword_24A6369F0);
        (*v76)(v81, v89);
        v13 = v84;
LABEL_4:
        sub_24A50D6A4(v88, &unk_27EF52480, &unk_24A633B20);
        sub_24A508C54(v93);
        goto LABEL_5;
      }

      v37 = v74;
      v38 = v88;
      v39 = v89;
      (*v73)(v74, v88 + v32, v89);
      sub_24A50D73C(&qword_27EF501E0, MEMORY[0x277CC95F0]);
      v40 = v81;
      v75 = sub_24A62EBD4();
      v41 = *v76;
      (*v76)(v37, v39);
      sub_24A50D6A4(v85, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v17, &unk_27EF4FEE0, &qword_24A6369F0);
      v41(v40, v39);
      sub_24A50D6A4(v38, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A508C54(v93);
      v13 = v84;
      if (v75)
      {
        goto LABEL_16;
      }

LABEL_5:
      ++v15;
      result = (v87 + 40);
      v12 = v17;
      if (v79 == v15)
      {
        goto LABEL_15;
      }
    }

    sub_24A50D6A4(v31, &unk_27EF4FEE0, &qword_24A6369F0);
    v17 = v33;
    sub_24A50D6A4(v33, &unk_27EF4FEE0, &qword_24A6369F0);
    v18 = v35(v88 + v32, 1, v89);
    v13 = v84;
    if (v18 == 1)
    {
      sub_24A50D6A4(v88, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A508C54(v93);
      goto LABEL_16;
    }

    goto LABEL_4;
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  v90[0] = v15 + 1;
  v93[0] = sub_24A62F614();
  v93[1] = v42;
  MEMORY[0x24C21A5D0](32, 0xE100000000000000);
  v81 = v93[0];
  v89 = sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
  inited = swift_initStackObject();
  v88 = xmmword_24A633A00;
  *(inited + 16) = xmmword_24A633A00;
  v44 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v45 = *&v83[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  v46 = &v83[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  v87 = &v83[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  v47 = sub_24A508FA4(&qword_27EF4F410, &qword_24A633B38);
  v86 = v47;
  *(inited + 40) = v45;
  v48 = *MEMORY[0x277D740C0];
  *(inited + 64) = v47;
  *(inited + 72) = v48;
  v49 = *(v46 + 6);
  v85 = sub_24A50D7EC(0, &qword_27EF4F418, 0x277D75348);
  *(inited + 104) = v85;
  *(inited + 80) = v49;
  v50 = v45;
  v51 = v48;
  v52 = v44;
  v53 = v50;
  v83 = v51;
  v54 = v49;
  v82 = v52;
  sub_24A59C378(inited);
  swift_setDeallocating();
  sub_24A508FA4(&qword_27EF4F420, qword_24A633B40);
  swift_arrayDestroy();
  v55 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v56 = sub_24A62EBE4();

  _s3__C3KeyVMa_0(0);
  sub_24A50D73C(&qword_27EF4F200, _s3__C3KeyVMa_0);
  v57 = sub_24A62EB74();

  v58 = [v55 initWithString:v56 attributes:v57];

  sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63D4E0);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_24A633830;
  v60 = *(v84 + 16);
  v61 = sub_24A62EEB4();
  *(v59 + 56) = sub_24A50D7EC(0, &qword_27EF4F428, 0x277CCABB0);
  *(v59 + 64) = sub_24A50D784();
  *(v59 + 32) = v61;
  sub_24A62EC24();

  v62 = swift_initStackObject();
  *(v62 + 16) = v88;
  *(v62 + 32) = v82;
  *(v62 + 40) = v45;
  v63 = v85;
  v64 = v83;
  *(v62 + 64) = v86;
  *(v62 + 72) = v64;
  v65 = *(v87 + 7);
  *(v62 + 104) = v63;
  *(v62 + 80) = v65;
  v66 = v65;
  sub_24A59C378(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  v67 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v68 = sub_24A62EBE4();

  v69 = sub_24A62EB74();

  v70 = [v67 initWithString:v68 attributes:v69];

  v71 = v72;
  [v72 appendAttributedString_];
  [v71 appendAttributedString_];

  return v71;
}

id sub_24A50BAA0()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel];
  v2 = sub_24A50AFF0();
  [v1 setAttributedText_];

  result = [v0 contextMenuInteraction];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24A50D330;
    *(v6 + 24) = v5;
    v10[4] = sub_24A50D714;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_24A50BC40;
    v10[3] = &unk_285DA0058;
    v7 = _Block_copy(v10);
    v8 = v0;

    [v4 updateVisibleMenuWithBlock_];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_24A50BC40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_24A50BC94()
{
  v57 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  v1 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v3 = &v48 - v2;
  v4 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = sub_24A62E214();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v60 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = swift_allocObject();
  *(v58 + 16) = v0;
  v16 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_findables];
  v17 = *(v16 + 16);
  if (v17)
  {
    v75 = MEMORY[0x277D84F90];
    v18 = v0;
    sub_24A62F404();
    v54 = sub_24A50D7EC(0, &qword_27EF4F3F8, 0x277D750C8);
    v55 = v18;
    v53 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
    swift_beginAccess();
    v19 = v16 + 32;
    v62 = (v13 + 8);
    v51 = (v13 + 56);
    v49 = (v13 + 32);
    v50 = v11;
    v52 = (v13 + 48);
    while (1)
    {
      v66 = v19;
      v67 = v17;
      sub_24A508AE4(v19, v72);
      v21 = v73;
      v22 = v74;
      sub_24A50A204(v72, v73);
      v23 = (*(v22 + 8))(v21, v22);
      v64 = v24;
      v65 = v23;
      v25 = v73;
      v26 = v74;
      sub_24A50A204(v72, v73);
      v27 = v60;
      (*(v26 + 16))(v25, v26);
      sub_24A62E1C4();
      v61 = *v62;
      v61(v27, v12);
      v63 = sub_24A62EBE4();

      v28 = v73;
      v29 = v74;
      sub_24A50A204(v72, v73);
      (*(v29 + 16))(v28, v29);
      v30 = *v51;
      (*v51)(v11, 0, 1, v12);
      sub_24A50D63C(&v55[v53], v69, &unk_27EF522E0, qword_24A637660);
      v31 = v70;
      if (v70)
      {
        v32 = v71;
        v33 = sub_24A50A204(v69, v70);
        v59 = &v48;
        v34 = v68;
        v35 = v3;
        v36 = *(v31 - 8);
        v37 = *(v36 + 64);
        MEMORY[0x28223BE20](v33);
        v39 = &v48 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v36 + 16))(v39);
        sub_24A50D6A4(v69, &unk_27EF522E0, qword_24A637660);
        (*(v32 + 16))(v31, v32);
        (*(v36 + 8))(v39, v31);
        v3 = v35;
        v30(v34, 0, 1, v12);
        v11 = v50;
      }

      else
      {
        sub_24A50D6A4(v69, &unk_27EF522E0, qword_24A637660);
        v30(v68, 1, 1, v12);
      }

      v40 = *(v57 + 48);
      sub_24A50D63C(v11, v3, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D63C(v68, &v3[v40], &unk_27EF4FEE0, &qword_24A6369F0);
      v41 = *v52;
      if ((*v52)(v3, 1, v12) == 1)
      {
        sub_24A50D6A4(v68, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A50D6A4(v11, &unk_27EF4FEE0, &qword_24A6369F0);
        if (v41(&v3[v40], 1, v12) == 1)
        {
          sub_24A50D6A4(v3, &unk_27EF4FEE0, &qword_24A6369F0);
          goto LABEL_5;
        }
      }

      else
      {
        sub_24A50D63C(v3, v56, &unk_27EF4FEE0, &qword_24A6369F0);
        if (v41(&v3[v40], 1, v12) != 1)
        {
          v42 = v60;
          (*v49)(v60, &v3[v40], v12);
          sub_24A50D73C(&qword_27EF501E0, MEMORY[0x277CC95F0]);
          v43 = v56;
          sub_24A62EBD4();
          v44 = v61;
          v61(v42, v12);
          sub_24A50D6A4(v68, &unk_27EF4FEE0, &qword_24A6369F0);
          sub_24A50D6A4(v11, &unk_27EF4FEE0, &qword_24A6369F0);
          v44(v43, v12);
          sub_24A50D6A4(v3, &unk_27EF4FEE0, &qword_24A6369F0);
          goto LABEL_5;
        }

        sub_24A50D6A4(v68, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A50D6A4(v11, &unk_27EF4FEE0, &qword_24A6369F0);
        v61(v56, v12);
      }

      sub_24A50D6A4(v3, &unk_27EF52480, &unk_24A633B20);
LABEL_5:

      sub_24A62F184();
      sub_24A508C54(v72);
      sub_24A62F3E4();
      v20 = *(v75 + 16);
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
      v19 = v66 + 40;
      v17 = v67 - 1;
      if (v67 == 1)
      {
        if (!(v75 >> 62))
        {
          goto LABEL_15;
        }

LABEL_18:
        sub_24A50D7EC(0, &qword_27EF4F3E8, 0x277D75720);

        sub_24A62F454();

        goto LABEL_16;
      }
    }
  }

  v47 = v0;
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_18;
  }

LABEL_15:

  sub_24A62F644();
  sub_24A50D7EC(0, &qword_27EF4F3E8, 0x277D75720);
LABEL_16:

  sub_24A50D7EC(0, &qword_27EF4F400, 0x277D75710);
  v45 = sub_24A62F114();

  return v45;
}

uint64_t sub_24A50C5E4(void *a1, char *a2)
{
  v30 = a1;
  v29 = sub_24A62E214();
  v3 = *(*(v29 - 8) + 64);
  result = MEMORY[0x28223BE20](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v8 = *&a2[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_findables];
  v28 = *(v8 + 16);
  if (v28)
  {
    v9 = 0;
    v10 = v8 + 32;
    v11 = (v5 + 8);
    while (v9 < *(v8 + 16))
    {
      sub_24A508AE4(v10, &v32);
      v12 = v33;
      v13 = v34;
      sub_24A50A204(&v32, v33);
      (*(v13 + 16))(v12, v13);
      v14 = sub_24A62E1C4();
      v16 = v15;
      (*v11)(v7, v29);
      v17 = [v30 identifier];
      v18 = sub_24A62EC14();
      v20 = v19;

      if (v14 == v18 && v16 == v20)
      {

LABEL_12:
        sub_24A508CA0(&v32, v31);
        sub_24A508CA0(v31, &v32);
        sub_24A508AE4(&v32, v31);
        v23 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
        v24 = v27;
        swift_beginAccess();
        sub_24A50D244(v31, v24 + v23);
        v25 = swift_endAccess();
        sub_24A50BAA0(v25);
        sub_24A50D6A4(v31, &unk_27EF522E0, qword_24A637660);
        [v24 sendActionsForControlEvents_];
        return sub_24A508C54(&v32);
      }

      v22 = sub_24A62F634();

      if (v22)
      {
        goto LABEL_12;
      }

      ++v9;
      result = sub_24A508C54(&v32);
      v10 += 40;
      if (v28 == v9)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_24A50C8A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingGenericPartPickerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A50C9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
  swift_beginAccess();
  return sub_24A50D63C(v1 + v3, a1, &unk_27EF522E0, qword_24A637660);
}

uint64_t sub_24A50CA18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
  swift_beginAccess();
  sub_24A50D244(a1, v1 + v3);
  swift_endAccess();
  sub_24A50BAA0();
  return sub_24A50D6A4(a1, &unk_27EF522E0, qword_24A637660);
}

id sub_24A50CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_24A50CE4C;
  v16 = &unk_285D9FFB8;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_24A50CE9C;
  v16 = &unk_285D9FF90;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_24A50D354(a4);
  sub_24A50D354(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

__n128 sub_24A50CD80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24A50CDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A50CDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24A50CE4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_24A50CE9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A50D7EC(0, &qword_27EF4F3E8, 0x277D75720);
  v3 = sub_24A62ED64();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_24A50CF2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_24A508AE4(i, v17);
    sub_24A508AE4(v17, &v11);
    sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
    sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_24A508CA0(v9, v14);
    v3 = v15;
    v4 = v16;
    sub_24A50A204(v14, v15);
    (*(v4 + 24))(&v11, v3, v4);
    sub_24A508C54(v17);
    v5 = v12;
    if (!v12 || (v6 = v13, v7 = v11, , sub_24A50D2B4(v7, v5), !v6))
    {
      sub_24A508C54(v14);
      return type metadata accessor for FMFindingGenericPartPickerView();
    }

    sub_24A508C54(v14);
    if (!--v1)
    {
      return type metadata accessor for FMFindingSymbolBasedPartPickerView();
    }
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_24A508C54(v17);
  sub_24A50D6A4(v9, &unk_27EF50520, &unk_24A633B10);
  return type metadata accessor for FMFindingGenericPartPickerView();
}

double sub_24A50D0EC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v3 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  *a1 = v2;
  result = 6.0;
  *(a1 + 8) = xmmword_24A633A10;
  *(a1 + 24) = xmmword_24A633A10;
  *(a1 + 40) = 0x4024000000000000;
  *(a1 + 48) = v4;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0x4028000000000000;
  return result;
}

uint64_t sub_24A50D1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A50D244(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A50D2B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A50D2F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A50D354(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A50D364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24A50D37C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_effectBackground;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_containerStackView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v7 = v0 + OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style;
  sub_24A50D0EC(v11);
  v8 = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = v8;
  *(v7 + 64) = v12;
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  sub_24A62F444();
  __break(1u);
}

id sub_24A50D4E8()
{
  v1 = [objc_opt_self() defaultStyle];
  [v0 frame];
  v2 = CGRectGetMinY(v6) + *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style + 64];
  [v0 frame];
  [v1 setPreferredEdgeInsets_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A6339F0;
  *(v3 + 32) = [objc_opt_self() effectWithStyle_];
  sub_24A50D7EC(0, &qword_27EF4F3F0, 0x277D75D58);
  v4 = sub_24A62ED54();

  [v1 setPreferredBackgroundEffects_];

  return v1;
}

uint64_t sub_24A50D63C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A508FA4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A50D6A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24A508FA4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24A50D714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A50D73C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A50D784()
{
  result = qword_27EF4F430;
  if (!qword_27EF4F430)
  {
    sub_24A50D7EC(255, &qword_27EF4F428, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F430);
  }

  return result;
}

uint64_t sub_24A50D7EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24A50D878(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_24A50D8D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24A50D954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24A62E9C4();
  v37 = v7;
  v38 = v6;
  type metadata accessor for VFXManager(0);
  sub_24A50E0A8(&qword_27EF4F438, type metadata accessor for VFXManager);
  v36 = sub_24A62E474();
  v9 = v8;
  type metadata accessor for PFAnimationCoordinator();
  sub_24A50E0A8(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
  v10 = sub_24A62E474();
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v55.origin.x = v16;
  v55.origin.y = v18;
  v55.size.width = v20;
  v55.size.height = v22;
  CGRectGetWidth(v55);
  v23 = [v13 mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v56.origin.x = v25;
  v56.origin.y = v27;
  v56.size.width = v29;
  v56.size.height = v31;
  CGRectGetHeight(v56);
  sub_24A62E9C4();
  sub_24A62E434();
  v32 = sub_24A62E424();
  LOBYTE(v14) = sub_24A62E684();
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = a2;
  v33[4] = a3;
  v33[5] = a4;
  *&v42 = v38;
  *(&v42 + 1) = v37;
  *&v43 = v36;
  *(&v43 + 1) = v9;
  *&v44 = v10;
  *(&v44 + 1) = v12;
  *&v52 = v32;
  BYTE8(v52) = v14;
  *&v53 = sub_24A50E0F4;
  *(&v53 + 1) = v33;
  v54 = 0uLL;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    swift_retain_n();
    sub_24A62E354();

    v34 = swift_allocObject();
    v34[2] = a1;
    v34[3] = a2;
    v34[4] = a3;
    v34[5] = a4;

    sub_24A508FA4(&qword_27EF4F448, &qword_24A633C60);
    sub_24A50E154();
    sub_24A50E3A4();
    sub_24A62E7F4();

    v41[10] = v52;
    v41[11] = v53;
    v41[12] = v54;
    v41[6] = v48;
    v41[7] = v49;
    v41[8] = v50;
    v41[9] = v51;
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v47;
    v41[0] = v42;
    v41[1] = v43;
    return sub_24A50E3F8(v41);
  }

  else
  {

    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A50DD84(uint64_t a1)
{
  if (a1)
  {

    sub_24A5833C4(0);
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A50E0A8(&qword_27EF4F438, type metadata accessor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

void sub_24A50DE20(uint64_t a1)
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v3 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (a1)
    {
      v6 = v5;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();

      v7 = sub_24A62EC44();
      v9 = sub_24A509BA8(v7, v8, &v11);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_24A503000, oslog, v3, "PFContentView: VFX State Updated: %s", v4, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v4, -1, -1);
    }

    else
    {
      type metadata accessor for VFXManager(0);
      sub_24A50E0A8(&qword_27EF4F438, type metadata accessor for VFXManager);
      sub_24A62E454();
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_24A50E0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A50E0F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_24A50DD84(v0[2]);
}

uint64_t sub_24A50E108()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24A50E148()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_24A50DE20(v0[2]);
}

unint64_t sub_24A50E154()
{
  result = qword_27EF4F450;
  if (!qword_27EF4F450)
  {
    sub_24A50E1E0(&qword_27EF4F448, &qword_24A633C60);
    sub_24A50E228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F450);
  }

  return result;
}

uint64_t sub_24A50E1E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24A50E228()
{
  result = qword_27EF4F458;
  if (!qword_27EF4F458)
  {
    sub_24A50E1E0(&qword_27EF4F460, &qword_24A633C68);
    sub_24A50E2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F458);
  }

  return result;
}

unint64_t sub_24A50E2B4()
{
  result = qword_27EF4F468;
  if (!qword_27EF4F468)
  {
    sub_24A50E1E0(&qword_27EF4F470, &qword_24A633C70);
    sub_24A50E340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F468);
  }

  return result;
}

unint64_t sub_24A50E340()
{
  result = qword_27EF4F478;
  if (!qword_27EF4F478)
  {
    sub_24A50E1E0(&qword_27EF4F480, &qword_24A633C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F478);
  }

  return result;
}

unint64_t sub_24A50E3A4()
{
  result = qword_27EF4F488;
  if (!qword_27EF4F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F488);
  }

  return result;
}

uint64_t sub_24A50E3F8(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF4F448, &qword_24A633C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A50E460()
{
  sub_24A50E1E0(&qword_27EF4F448, &qword_24A633C60);
  sub_24A50E154();
  sub_24A50E3A4();
  return swift_getOpaqueTypeConformance2();
}

id sub_24A50E56C(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = sub_24A62EBE4();
    v7 = [v3 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_24A50E644(void *a1)
{
  v2 = objc_opt_self();
  v6 = a1;
  v3 = [v2 sharedInstance];
  [v3 isInternalBuild];

  v4 = sub_24A62EDB4();
  v5 = sub_24A62EBE4();
  [v6 setValue:v4 forKey:v5];
}

id sub_24A50E720(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = sub_24A62EBE4();
    v7 = [v3 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_24A50E7E0(void *a1)
{
  v2 = objc_opt_self();
  v6 = a1;
  v3 = [v2 sharedInstance];
  [v3 isInternalBuild];

  v4 = sub_24A62EDB4();
  v5 = sub_24A62EBE4();
  [v6 setValue:v4 forKey:v5];
}

id sub_24A50E924(void *a1)
{
  v1 = a1;
  v2 = sub_24A50E958();

  return v2;
}

id sub_24A50E958()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (qword_27EF4EA10 != -1)
  {
    swift_once();
  }

  v3 = xmmword_27EF5C240;
  if (v2)
  {
    v4 = sub_24A62EBE4();
    v5 = [v0 valueForKey_];

    if (v5)
    {
      sub_24A62F234();
      swift_unknownObjectRelease();
      sub_24A50EC28(v8);
      v6 = sub_24A62EBE4();
      v3 = [v0 integerForKey_];
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      sub_24A50EC28(v8);
    }
  }

  return v3;
}

void sub_24A50EAB8(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 sharedInstance];
  [v4 isInternalBuild];

  if (qword_27EF4EA10 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62EEB4();
  v6 = sub_24A62EBE4();
  [v3 setValue:v5 forKey:v6];
}

void sub_24A50EBD8()
{
  v0 = sub_24A62EBE4();
  v1 = MGGetBoolAnswer();

  byte_27EF5C0A0 = v1;
}

uint64_t sub_24A50EC28(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF50780, &qword_24A638470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FindingViewController.init(session:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFindingViewState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24A508FA4(&unk_27EF52410, &qword_24A633C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v71 - v9;
  v10 = type metadata accessor for FMFindingSessionState();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  v17 = &v1[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *&v2[v18] = swift_initStaticObject();
  v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_minAcceptableARLightIntensity] = 0x407F400000000000;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_insufficientFeaturesARTrackingErrorCount] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_maxErrorAlertCount] = 3;
  v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying] = 2;
  v19 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler];
  *v23 = 0;
  v23[1] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session] = a1;
  v24 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v78 = v24;
  sub_24A518CB8(a1 + v24, v16, type metadata accessor for FMFindingSessionState);
  v25 = type metadata accessor for FMFindingStateTransitionCoordinator();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v74 = v16;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_stateTransitionCoordinator] = sub_24A6099C0(v16);
  v28 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType;
  v29 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v30 = (v29 >> 13) & 3;
  if (!v30)
  {
    goto LABEL_4;
  }

  if (v30 == 1)
  {
    LOBYTE(v30) = 2;
LABEL_4:
    v31 = v78;
    goto LABEL_8;
  }

  v31 = v78;
  if ((v29 & 0x80000000) != 0)
  {
    LOBYTE(v30) = (v29 & 1) == 0;
  }

  else
  {
    LOBYTE(v30) = 2;
  }

LABEL_8:
  sub_24A518CB8(a1 + v31, v14, type metadata accessor for FMFindingSessionState);
  v32 = *(v14 + 1);
  if (*(v32 + 16) && (v33 = sub_24A515AC8(&v14[*(v10 + 36)]), (v34 & 1) != 0))
  {
    sub_24A508AE4(*(v32 + 56) + 40 * v33, &v81);
    sub_24A508CA0(&v81, v79);
    sub_24A518A04(v14, type metadata accessor for FMFindingSessionState);
    LOBYTE(v81) = v30;
    v35 = objc_allocWithZone(type metadata accessor for FMR1InstructionsController());
    *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController] = sub_24A5FF084(v79, &v81);
    v36 = type metadata accessor for FindingViewController();
    v80.receiver = v2;
    v80.super_class = v36;
    v37 = objc_msgSendSuper2(&v80, sel_initWithNibName_bundle_, 0, 0);
    v38 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController;
    *(*&v37[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController] + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_delegate + 8) = &off_285DA02D8;
    swift_unknownObjectWeakAssign();
    v39 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_stateTransitionCoordinator;
    v40 = *&v37[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_stateTransitionCoordinator];
    *(*&v37[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate + 8) = &off_285DAB1A0;
    swift_unknownObjectWeakAssign();
    *(*&v37[v39] + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate + 8) = &off_285DA02B0;
    swift_unknownObjectWeakAssign();
    if ((*(a1 + v28) & 0x6000) != 0)
    {
      sub_24A515B88();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v71 = v38;
      v73 = v28;
      type metadata accessor for ActionsManager();
      v41 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v41 + 112) = MEMORY[0x277D84F98];
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = sub_24A62EE24();
      v44 = *(*(v43 - 8) + 56);
      v45 = v76;
      v44(v76, 1, 1, v43);
      v46 = v44;
      v47 = swift_allocObject();
      *(v47 + 16) = 0;
      *(v47 + 24) = 0;
      *(v47 + 32) = v41;
      *(v47 + 40) = 3;
      *(v47 + 48) = sub_24A515C14;
      *(v47 + 56) = v42;

      sub_24A51556C(0, 0, v45, &unk_24A633C98, v47);

      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = a1;
      v46(v45, 1, 1, v43);
      v49 = v46;
      v50 = swift_allocObject();
      *(v50 + 16) = 0;
      *(v50 + 24) = 0;
      *(v50 + 32) = v41;
      *(v50 + 40) = 2;
      *(v50 + 48) = sub_24A515D24;
      *(v50 + 56) = v48;

      sub_24A51556C(0, 0, v45, &unk_24A633CA0, v50);

      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46(v45, 1, 1, v43);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      *(v52 + 32) = v41;
      *(v52 + 40) = 0;
      *(v52 + 48) = sub_24A515D5C;
      *(v52 + 56) = v51;

      sub_24A51556C(0, 0, v45, &unk_24A633CA8, v52);

      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = v72;
      v49(v45, 1, 1, v43);
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      *(v55 + 32) = v41;
      *(v55 + 40) = 1;
      *(v55 + 48) = sub_24A515F50;
      *(v55 + 56) = v53;

      sub_24A51556C(0, 0, v45, &unk_24A633CB0, v55);

      v84 = *(v54 + v73);
      sub_24A60F2CC(&v81);
      v56 = v82;
      v57 = v83;
      sub_24A50A204(&v81, v82);
      (*(v57 + 40))(v79, v56, v57);
      v58 = objc_allocWithZone(type metadata accessor for PrecisionVFXViewController());

      v59 = v77;
      v60 = sub_24A52399C(&v84, v79, 0, v41);
      if (v59)
      {

        sub_24A508C54(&v81);
      }

      else
      {
        v61 = v60;
        sub_24A508C54(&v81);
        v62 = &v37[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
        v63 = *&v37[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
        *v62 = v61;
        v62[1] = &off_285DA1540;

        v64 = *v62;
        if (*v62)
        {
          v65 = v74;
          sub_24A518CB8(v54 + v78, v74, type metadata accessor for FMFindingSessionState);
          v66 = v64;
          sub_24A5ABC04();
          sub_24A518A04(v65, type metadata accessor for FMFindingSessionState);
          off_285DA1568();
        }

        else
        {

          v65 = v74;
        }

        v67 = *&v37[v71];
        sub_24A518CB8(v54 + v78, v65, type metadata accessor for FMFindingSessionState);
        v68 = v67;
        v69 = v75;
        sub_24A626F08(v65, 10, v75);
        sub_24A5FD8E0(v69);

        sub_24A518A04(v69, type metadata accessor for FMFindingViewState);
      }
    }

    return v37;
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

void sub_24A50F9B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    aBlock[4] = sub_24A519228;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA0CB0;
    v4 = _Block_copy(aBlock);

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

void sub_24A50FAA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_sleepPreventer);
    sub_24A598DB4();
    v3 = &v1[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler];
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 1);

      v4(v6);

      sub_24A50D354(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_24A50FB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A62EA94();
  v18 = *(v6 - 8);
  v7 = *(v18 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A62EAD4();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v17);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v14 = sub_24A62F014();
  aBlock[4] = a2;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v13, v9, v15);
  _Block_release(v15);

  (*(v18 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v17);
}

void sub_24A50FE34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler;
    v2 = Strong;
    swift_beginAccess();
    v3 = *v1;
    v4 = *(v1 + 8);
    sub_24A5173CC(v3);

    if (v3)
    {
      v3(1, 0, 0, 0);
      sub_24A50D354(v3);
    }
  }
}

void sub_24A50FEE4(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);

      v10 = v8(a2 & 1);
      v12 = v11;
      sub_24A50D354(v8);
      v13 = *&v6[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
      if (v12)
      {
        if (!v13)
        {
          sub_24A51909C(v10, 1);
          goto LABEL_10;
        }

        v14 = v13;
        sub_24A526D74(a3 & 1);
        sub_24A51909C(v10, 1);
        goto LABEL_8;
      }

      if (v13)
      {
        v14 = v13;
        sub_24A526D74(a2 & 1);
LABEL_8:
      }
    }

LABEL_10:
  }
}

id FindingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_24A5100E8()
{
  v0 = sub_24A62F784();
  v2 = sub_24A516B88(6, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x24C21A580](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x24C21A5D0](v9, v11);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](62, 0xE100000000000000);
  v12 = sub_24A62EC24();

  return v12;
}

id FindingViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "FindingViewController deinit", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for FindingViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_24A510414()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for FindingViewController();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
  if (v1)
  {
    v2 = v1;
    [v0 addChildViewController_];
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
        v7 = [v2 view];
        if (v7)
        {
          v8 = v7;
          [v7 setTranslatesAutoresizingMaskIntoConstraints_];

          sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_24A633820;
          v10 = [v2 view];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 topAnchor];

            v13 = [v0 view];
            if (v13)
            {
              v14 = v13;
              v15 = [v13 topAnchor];

              v16 = [v12 constraintEqualToAnchor_];
              *(v9 + 32) = v16;
              v17 = [v2 view];
              if (v17)
              {
                v18 = v17;
                v19 = [v17 bottomAnchor];

                v20 = [v0 view];
                if (v20)
                {
                  v21 = v20;
                  v22 = [v20 bottomAnchor];

                  v23 = [v19 constraintEqualToAnchor_];
                  *(v9 + 40) = v23;
                  v24 = [v2 view];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = [v24 leadingAnchor];

                    v27 = [v0 view];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = [v27 leadingAnchor];

                      v30 = [v26 constraintEqualToAnchor_];
                      *(v9 + 48) = v30;
                      v31 = [v2 view];
                      if (v31)
                      {
                        v32 = v31;
                        v33 = [v31 trailingAnchor];

                        v34 = [v0 view];
                        if (v34)
                        {
                          v35 = v34;
                          v36 = objc_opt_self();
                          v37 = [v35 trailingAnchor];

                          v38 = [v33 constraintEqualToAnchor_];
                          *(v9 + 56) = v38;
                          sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
                          v39 = sub_24A62ED54();

                          [v36 activateConstraints_];

                          return;
                        }

LABEL_25:
                        __break(1u);
                        return;
                      }

LABEL_24:
                      __break(1u);
                      goto LABEL_25;
                    }

LABEL_23:
                    __break(1u);
                    goto LABEL_24;
                  }

LABEL_22:
                  __break(1u);
                  goto LABEL_23;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

id sub_24A510890(char a1)
{
  v2 = v1;
  result = [v1 view];
  if (result)
  {
    v5 = result;
    [result layoutSubviews];

    v6 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session];
    sub_24A60FBF0();
    sub_24A510984();
    v7 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_sleepPreventer];
    sub_24A598770();
    v8 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler];
    swift_beginAccess();
    v9 = *v8;
    if (*v8)
    {
      v10 = *(v8 + 1);

      v9(v11);
      sub_24A50D354(v9);
    }

    v12.receiver = v2;
    v12.super_class = type metadata accessor for FindingViewController();
    return objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A510984()
{
  v1 = *(*&v0[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
  if (!v1)
  {
    return;
  }

  v2 = objc_allocWithZone(type metadata accessor for FMPFARTrackingConfiguration());
  v3 = v1;
  v4 = [v2 init];
  [v4 setLightEstimationEnabled_];
  [v4 setDisableFrontCamera_];
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 isInternalBuild];

  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = sub_24A62EBE4();
  v9 = [v5 BOOLForKey_];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v15 = v4;
    goto LABEL_8;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CE5340]) initWithBaseConfiguration:v4 fileURL:0];

  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A633830;
  *(v11 + 56) = type metadata accessor for FindingViewController();
  *(v11 + 64) = sub_24A519230(&qword_27EF4F690, v12, type metadata accessor for FindingViewController);
  *(v11 + 32) = v0;
  sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
  v16 = v10;
  v13 = v0;
  v14 = sub_24A62F1A4();
  sub_24A62EF64();
  sub_24A62E2D4();

  [v16 startRecording];
  v15 = v16;
LABEL_8:
  v17 = v15;
  [v3 runWithConfiguration_options_];
}

id sub_24A510CB4(char a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);

    v5(v7);
    sub_24A50D354(v5);
  }

  v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session];
  sub_24A60FDA0();
  sub_24A510D64();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FindingViewController();
  return objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1 & 1);
}

void sub_24A510D64()
{
  v1 = *(*&v0[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 configuration];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        sub_24A508FA4(&qword_27EF50530, qword_24A636270);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_24A633830;
        *(v7 + 56) = type metadata accessor for FindingViewController();
        *(v7 + 64) = sub_24A519230(&qword_27EF4F690, v8, type metadata accessor for FindingViewController);
        *(v7 + 32) = v0;
        sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
        v9 = v0;
        v10 = sub_24A62F1A4();
        sub_24A62EF64();
        sub_24A62E2D4();

        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        v14[4] = sub_24A519094;
        v14[5] = v11;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 1107296256;
        v14[2] = sub_24A5F4428;
        v14[3] = &unk_285DA0BE8;
        v12 = _Block_copy(v14);
        v13 = v9;

        [v6 finishRecordingWithHandler_];
        _Block_release(v12);
      }
    }

    [v2 pause];
  }
}

uint64_t sub_24A5110D0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 2;
  }

  else
  {
    return 26;
  }
}

void sub_24A51113C(uint64_t a1, __int16 *a2)
{
  v3 = v2;
  v89 = a1;
  v5 = type metadata accessor for FMFindingViewState();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FindingEstimate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController;
  v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
  if (v13)
  {
    v14 = (a2 + v5[6]);
    v90 = v3;
    v15 = *v14;
    v16 = v14[1];
    v88 = v12;
    v17 = off_285DA1568;
    type metadata accessor for PrecisionVFXViewController();
    v18 = v13;
    v3 = v90;
    v17();
    v19 = v88;

    v20 = *(v3 + v91);
    if (v20)
    {
      v21 = a2 + v5[8];
      *(&v94[4] + 13) = *(v21 + 93);
      v22 = *(v21 + 5);
      v94[3] = *(v21 + 4);
      v94[4] = v22;
      v23 = *(v21 + 1);
      v93 = *v21;
      v94[0] = v23;
      v24 = *(v21 + 3);
      v94[1] = *(v21 + 2);
      v94[2] = v24;
      v25 = &v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState];
      v26 = *&v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState];
      v27 = *&v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 32];
      v96 = *&v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 16];
      v97 = v27;
      v95 = v26;
      v28 = *&v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 48];
      v29 = *&v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 64];
      v30 = *&v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 80];
      *(v100 + 13) = *&v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 93];
      v99 = v29;
      v100[0] = v30;
      v98 = v28;
      memmove(&v20[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState], v21, 0x65uLL);
      v31 = v20;
      sub_24A508CE4(&v93, v101);
      sub_24A517ABC(&v95);
      v32 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_estimate;
      swift_beginAccess();
      sub_24A518CB8(&v31[v32], v19, type metadata accessor for FindingEstimate);
      v34 = *(v25 + 1);
      v33 = *(v25 + 2);
      v101[0] = *v25;
      v101[1] = v34;
      v101[2] = v33;
      v36 = *(v25 + 4);
      v35 = *(v25 + 5);
      v37 = *(v25 + 3);
      *&v102[13] = *(v25 + 93);
      v101[4] = v36;
      *v102 = v35;
      v101[3] = v37;
      sub_24A508CE4(v101, v92);
      sub_24A524D30(v19, v101);
      sub_24A517ABC(v101);

      v3 = v90;
      sub_24A518A04(v19, type metadata accessor for FindingEstimate);
    }
  }

  v38 = *(v3 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController);
  v39 = *a2;
  v40 = v5[5];
  v41 = sub_24A62E214();
  (*(*(v41 - 8) + 16))(v8 + v40, a2 + v40, v41);
  v42 = (a2 + v5[6]);
  v44 = *v42;
  v43 = v42[1];
  LOBYTE(v42) = *(a2 + v5[7]);
  v45 = a2 + v5[8];
  *(v100 + 13) = *(v45 + 93);
  v46 = *(v45 + 3);
  v47 = *(v45 + 5);
  v99 = *(v45 + 4);
  v48 = v99;
  v100[0] = v47;
  v49 = *(v45 + 1);
  v50 = *(v45 + 3);
  v97 = *(v45 + 2);
  v51 = v97;
  v98 = v50;
  v52 = *(v45 + 1);
  v53 = *(a2 + v5[10]);
  v54 = *(a2 + v5[11]);
  v55 = v5[13];
  v56 = *(a2 + v5[12]);
  v95 = *v45;
  v57 = v95;
  v96 = v52;
  v58 = v5[14];
  v59 = (v8 + v5[15]);
  *v59 = 0;
  v59[1] = 0;
  *v8 = v39;
  v60 = (v8 + v5[6]);
  *v60 = v44;
  v60[1] = v43;
  *(v8 + v5[7]) = v42;
  v61 = v8 + v5[8];
  v62 = *(v45 + 5);
  *(v61 + 4) = v48;
  *(v61 + 5) = v62;
  LOBYTE(v44) = *(a2 + v55);
  LOBYTE(v55) = *(a2 + v58);
  *v61 = v57;
  *(v61 + 1) = v49;
  *(v61 + 93) = *(v45 + 93);
  *(v61 + 2) = v51;
  *(v61 + 3) = v46;
  *(v8 + v5[9]) = 4;
  *(v8 + v5[10]) = v53;
  *(v8 + v5[11]) = v54;
  *(v8 + v5[12]) = v56;
  *(v8 + v5[13]) = v44;
  *(v8 + v5[14]) = v55;

  sub_24A508CE4(&v95, &v93);
  sub_24A5FD8E0(v8);
  sub_24A518A04(v8, type metadata accessor for FMFindingViewState);
  v63 = *(v45 + 24);
  if ((v63 & 0xFC000000 | 0x2000000) == 0x6000000)
  {
    v64 = 0;
    v65 = 1;
    v66 = v91;
    v67 = *(v3 + v91);
    if (!v67)
    {
      goto LABEL_21;
    }

LABEL_13:
    v73 = v67;
    v74 = sub_24A5270B8();

    goto LABEL_22;
  }

  v68 = v63 | (v45[100] << 32);
  v66 = v91;
  if ((v68 & 0xFF0000) == 0x40000)
  {
    v69 = *(v45 + 2);
    if (v69 == 1)
    {
      v93 = *v45;
      v65 = 1;
      *(&v94[1] + 8) = *(v45 + 40);
      *(&v94[2] + 8) = *(v45 + 56);
      *(&v94[3] + 8) = *(v45 + 72);
      v70 = *(v45 + 11);
      *&v94[0] = 1;
      *(&v94[4] + 1) = v70;
      *(v94 + 8) = *(v45 + 24);
      LODWORD(v94[5]) = v68;
      BYTE4(v94[5]) = BYTE4(v68);
      sub_24A50D63C(&v93, v92, &qword_27EF4F670, &qword_24A634D70);
      v64 = 0;
      v67 = *(v3 + v66);
      if (!v67)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v93 = *v45;
    *(&v94[1] + 8) = *(v45 + 40);
    *(&v94[2] + 8) = *(v45 + 56);
    *(&v94[3] + 8) = *(v45 + 72);
    v71 = *(v45 + 11);
    *&v94[0] = v69;
    *(&v94[4] + 1) = v71;
    *(v94 + 8) = *(v45 + 24);
    LOWORD(v94[5]) = v68;
    sub_24A51A858();
    if ((v72 & 0xFF00000000) != 0x200000000)
    {
      v65 = 0;
      v75 = *a2;
      if (v75)
      {
        v76 = v72;
      }

      else
      {
        v76 = 1;
      }

      if (v75 >> 14 <= 2)
      {
        v77 = v72;
      }

      else
      {
        v77 = v76;
      }

      v64 = v77;
      v67 = *(v3 + v66);
      if (!v67)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }
  }

  v64 = 0;
  v65 = 1;
  v67 = *(v3 + v66);
  if (v67)
  {
    goto LABEL_13;
  }

LABEL_21:
  v74 = 0;
LABEL_22:
  v92[0] = v65;
  v78 = sub_24A5FDD70(v64 | (v65 << 32), 0, v74 & 1);
  if (v78)
  {
    v79 = v78;
    v80 = [v78 string];

    v81 = sub_24A62EC14();
    v83 = v82;

    v84 = *(v3 + v66);
    if (!v84)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v81 = 0;
  v83 = 0;
  v84 = *(v3 + v66);
  if (v84)
  {
LABEL_24:
    v85 = v84;
    sub_24A527248(v81, v83);
  }

LABEL_25:

  v86 = *(v3 + v66);
  if (v86)
  {
    v87 = v86;
    sub_24A5275E8(v89, a2);
  }
}

void sub_24A51176C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v176 = *(v4 - 8);
  v177 = v4;
  v5 = *(v176 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v173 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v174 = &v168 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v172 = &v168 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v168 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v171 = &v168 - v16;
  MEMORY[0x28223BE20](v15);
  v175 = &v168 - v17;
  v18 = type metadata accessor for FMFindingSession.Error(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v178 = (&v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v23 = &v168 - v22;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v24 = sub_24A62E314();
  sub_24A506EB8(v24, qword_27EF5C118);
  sub_24A518CB8(a1, v23, type metadata accessor for FMFindingSession.Error);
  v25 = sub_24A62E2F4();
  v26 = sub_24A62EF64();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v170 = v1;
    v28 = v27;
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136315138;
    sub_24A519230(&qword_27EF4F668, 255, type metadata accessor for FMFindingSession.Error);
    v30 = sub_24A62F6A4();
    v169 = a1;
    v31 = v14;
    v33 = v32;
    sub_24A518A04(v23, type metadata accessor for FMFindingSession.Error);
    v34 = sub_24A509BA8(v30, v33, &aBlock);
    v14 = v31;
    a1 = v169;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_24A503000, v25, v26, "🧭 FindingViewController: Encountered error: %s.", v28, 0xCu);
    sub_24A508C54(v29);
    MEMORY[0x24C21BBE0](v29, -1, -1);
    v35 = v28;
    v2 = v170;
    MEMORY[0x24C21BBE0](v35, -1, -1);
  }

  else
  {

    sub_24A518A04(v23, type metadata accessor for FMFindingSession.Error);
  }

  v36 = a1;
  v37 = v178;
  sub_24A518CB8(v36, v178, type metadata accessor for FMFindingSession.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return;
      }

      v75 = sub_24A62E2F4();
      v76 = sub_24A62EF64();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_24A503000, v75, v76, "🧭 FindingViewController: Showing low battery alert.", v77, 2u);
        MEMORY[0x24C21BBE0](v77, -1, -1);
      }

      sub_24A5D2200(0xD000000000000014, 0x800000024A63DCF0);
      sub_24A5D2200(0xD000000000000026, 0x800000024A63DD10);
      v78 = swift_allocObject();
      *(v78 + 16) = v2;
      v79 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v79 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v79 + 1;
        v80 = v2;
        v81 = sub_24A62EBE4();

        v82 = sub_24A62EBE4();

        v69 = [objc_opt_self() alertControllerWithTitle:v81 message:v82 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v83 = swift_allocObject();
        v83[2] = v80;
        v83[3] = sub_24A517D34;
        v83[4] = v78;
        v71 = v80;

        v72 = sub_24A62EBE4();

        v184 = sub_24A5193D0;
        v185 = v83;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA0738;
        v73 = _Block_copy(&aBlock);

        v74 = [objc_opt_self() actionWithTitle:v72 style:0 handler:v73];
        goto LABEL_36;
      }

      v145 = v2;

      v150 = swift_allocObject();
      *(v150 + 16) = v145;
      v184 = sub_24A519370;
      v185 = v150;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v147 = &unk_285DA06E8;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v99 = sub_24A62E2F4();
      v100 = sub_24A62EF64();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_24A503000, v99, v100, "🧭 FindingViewController: Showing switch to precise finding required error alert.", v101, 2u);
        MEMORY[0x24C21BBE0](v101, -1, -1);
      }

      sub_24A5D2200(0xD00000000000002ALL, 0x800000024A63DC90);
      sub_24A5D2200(0xD00000000000002CLL, 0x800000024A63DCC0);
      v102 = swift_allocObject();
      *(v102 + 16) = v2;
      v103 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v103 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v103 + 1;
        v104 = v2;
        v105 = sub_24A62EBE4();

        v106 = sub_24A62EBE4();

        v69 = [objc_opt_self() alertControllerWithTitle:v105 message:v106 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v107 = swift_allocObject();
        v107[2] = v104;
        v107[3] = sub_24A517CD4;
        v107[4] = v102;
        v71 = v104;

        v72 = sub_24A62EBE4();

        v184 = sub_24A5193D0;
        v185 = v107;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA0670;
        v73 = _Block_copy(&aBlock);

        v74 = [objc_opt_self() actionWithTitle:v72 style:0 handler:v73];
        goto LABEL_36;
      }

      v145 = v2;

      v146 = swift_allocObject();
      *(v146 + 16) = v145;
      v184 = sub_24A517D14;
      v185 = v146;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v147 = &unk_285DA0620;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v61 = sub_24A62E2F4();
      v62 = sub_24A62EF64();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_24A503000, v61, v62, "🧭 FindingViewController: Showing person no longer friend.", v63, 2u);
        MEMORY[0x24C21BBE0](v63, -1, -1);
      }

      sub_24A5D22F4(0xD000000000000019, 0x800000024A63DC10);
      sub_24A5D22F4(0xD00000000000001BLL, 0x800000024A63DC30);
      v64 = swift_allocObject();
      *(v64 + 16) = v2;
      v65 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v65 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v65 + 1;
        v66 = v2;
        v67 = sub_24A62EBE4();

        v68 = sub_24A62EBE4();

        v69 = [objc_opt_self() alertControllerWithTitle:v67 message:v68 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v70 = swift_allocObject();
        v70[2] = v66;
        v70[3] = sub_24A517C1C;
        v70[4] = v64;
        v71 = v66;

        v72 = sub_24A62EBE4();

        v184 = sub_24A5193D0;
        v185 = v70;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA04E0;
        v73 = _Block_copy(&aBlock);

        v74 = [objc_opt_self() actionWithTitle:v72 style:0 handler:v73];
LABEL_36:
        v124 = v74;
        _Block_release(v73);

        [v69 addAction_];
        v71[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown] = 1;
        [v71 presentViewController:v69 animated:1 completion:0];

LABEL_48:

        return;
      }

      v145 = v2;

      v148 = swift_allocObject();
      *(v148 + 16) = v145;
      v184 = sub_24A519370;
      v185 = v148;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v147 = &unk_285DA0490;
    }

    else
    {
      sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DB80);
      sub_24A5D2200(0xD000000000000020, 0x800000024A63DBA0);
      v118 = swift_allocObject();
      *(v118 + 16) = v2;
      v119 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v119 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v119 + 1;
        v120 = v2;
        v121 = sub_24A62EBE4();

        v122 = sub_24A62EBE4();

        v69 = [objc_opt_self() alertControllerWithTitle:v121 message:v122 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v123 = swift_allocObject();
        v123[2] = v120;
        v123[3] = sub_24A517BC0;
        v123[4] = v118;
        v71 = v120;

        v72 = sub_24A62EBE4();

        v184 = sub_24A517C18;
        v185 = v123;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA0418;
        v73 = _Block_copy(&aBlock);

        v74 = [objc_opt_self() actionWithTitle:v72 style:0 handler:v73];
        goto LABEL_36;
      }

      v145 = v2;

      v149 = swift_allocObject();
      *(v149 + 16) = v145;
      v184 = sub_24A519370;
      v185 = v149;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v147 = &unk_285DA03C8;
    }

    v182 = sub_24A5A8458;
    v183 = v147;
    v151 = _Block_copy(&aBlock);
    v152 = v145;

    [v152 dismissViewControllerAnimated:1 completion:v151];
    _Block_release(v151);

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v125 = v2;
      v126 = v175;
      v127 = v176;
      v128 = v177;
      (*(v176 + 32))(v175, v37, v177);
      v129 = v171;
      (*(v127 + 16))(v171, v126, v128);
      v130 = sub_24A62E2F4();
      v131 = sub_24A62EF64();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = v129;
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        aBlock = v134;
        *v133 = 136315138;
        sub_24A519230(&qword_27EF4F660, 255, MEMORY[0x277CC95F0]);
        v135 = v177;
        v136 = sub_24A62F614();
        v138 = v137;
        v139 = v132;
        v140 = *(v176 + 8);
        v140(v139, v135);
        v141 = sub_24A509BA8(v136, v138, &aBlock);

        *(v133 + 4) = v141;
        _os_log_impl(&dword_24A503000, v130, v131, "🧭 FindingViewController: Showing item in use alert for %s.", v133, 0xCu);
        sub_24A508C54(v134);
        MEMORY[0x24C21BBE0](v134, -1, -1);
        MEMORY[0x24C21BBE0](v133, -1, -1);
      }

      else
      {

        v140 = *(v176 + 8);
        v140(v129, v177);
      }

      sub_24A5D2200(0xD00000000000001BLL, 0x800000024A63DC50);
      sub_24A5D2200(0xD00000000000001DLL, 0x800000024A63DC70);
      v153 = swift_allocObject();
      *(v153 + 16) = v125;
      v154 = *&v125[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v154 >= 3)
      {
        v164 = v125;

        v165 = swift_allocObject();
        *(v165 + 16) = v164;
        v184 = sub_24A519370;
        v185 = v165;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5A8458;
        v183 = &unk_285DA0558;
        v166 = _Block_copy(&aBlock);
        v167 = v164;

        [v167 dismissViewControllerAnimated:1 completion:v166];
        _Block_release(v166);
      }

      else
      {
        *&v125[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v154 + 1;
        v155 = v125;
        v156 = sub_24A62EBE4();

        v157 = sub_24A62EBE4();

        v158 = [objc_opt_self() alertControllerWithTitle:v156 message:v157 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v159 = swift_allocObject();
        v159[2] = v155;
        v159[3] = sub_24A517C5C;
        v159[4] = v153;
        v160 = v155;

        v161 = sub_24A62EBE4();

        v184 = sub_24A5193D0;
        v185 = v159;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA05A8;
        v162 = _Block_copy(&aBlock);

        v163 = [objc_opt_self() actionWithTitle:v161 style:0 handler:v162];
        _Block_release(v162);

        [v158 addAction_];
        v160[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown] = 1;
        [v160 presentViewController:v158 animated:1 completion:0];
      }

      v140(v175, v177);
    }

    else
    {
      sub_24A518A04(v37, type metadata accessor for FMFindingSession.Error);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v85 = v176;
      v84 = v177;
      (*(v176 + 32))(v14, v37, v177);
      v86 = v172;
      (*(v85 + 16))(v172, v14, v84);
      v87 = v14;
      v88 = sub_24A62E2F4();
      v89 = sub_24A62EF64();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v90 = 136315138;
        sub_24A519230(&qword_27EF4F660, 255, MEMORY[0x277CC95F0]);
        v92 = v177;
        v93 = sub_24A62F614();
        v95 = v94;
        v96 = v86;
        v97 = *(v176 + 8);
        v97(v96, v92);
        v98 = sub_24A509BA8(v93, v95, &aBlock);

        *(v90 + 4) = v98;
        _os_log_impl(&dword_24A503000, v88, v89, "🧭 FindingViewController: localizer state error for %s.", v90, 0xCu);
        sub_24A508C54(v91);
        MEMORY[0x24C21BBE0](v91, -1, -1);
        MEMORY[0x24C21BBE0](v90, -1, -1);

        v97(v87, v92);
        return;
      }

      v142 = v177;
      v143 = *(v176 + 8);
      v143(v86, v177);
      v144 = v14;
      goto LABEL_42;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v39 = *(v37 + *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48));
      v40 = v176;
      v41 = v174;
      v42 = v37;
      v43 = v177;
      (*(v176 + 32))(v174, v42, v177);
      v44 = v173;
      (*(v40 + 16))(v173, v41, v43);
      v45 = v39;
      v46 = sub_24A62E2F4();
      v47 = sub_24A62EF64();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock = v49;
        *v48 = 136315394;
        sub_24A519230(&qword_27EF4F660, 255, MEMORY[0x277CC95F0]);
        v50 = v177;
        v51 = sub_24A62F614();
        v52 = v44;
        v54 = v53;
        v55 = *(v176 + 8);
        v55(v52, v50);
        v56 = sub_24A509BA8(v51, v54, &aBlock);

        *(v48 + 4) = v56;
        *(v48 + 12) = 2080;
        v179 = v39;
        v57 = v39;
        sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
        v58 = sub_24A62EC44();
        v60 = sub_24A509BA8(v58, v59, &aBlock);

        *(v48 + 14) = v60;
        _os_log_impl(&dword_24A503000, v46, v47, "🧭 FindingViewController: precision finding config error for %s: %s.", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v49, -1, -1);
        MEMORY[0x24C21BBE0](v48, -1, -1);

        v55(v174, v50);
        return;
      }

      v142 = v177;
      v143 = *(v176 + 8);
      v143(v44, v177);
      v144 = v41;
LABEL_42:
      v143(v144, v142);
      return;
    }

    v108 = *v37;
    v109 = *v37;
    v110 = sub_24A62E2F4();
    v111 = sub_24A62EF64();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v179 = v108;
      aBlock = v113;
      *v112 = 136315138;
      v114 = v108;
      sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
      v115 = sub_24A62EC44();
      v117 = sub_24A509BA8(v115, v116, &aBlock);

      *(v112 + 4) = v117;
      _os_log_impl(&dword_24A503000, v110, v111, "🧭 FindingViewController: precision finding AR error: %s.", v112, 0xCu);
      sub_24A508C54(v113);
      MEMORY[0x24C21BBE0](v113, -1, -1);
      MEMORY[0x24C21BBE0](v112, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24A513258(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v10[4] = a3;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A5A8458;
  v10[3] = a4;
  v8 = _Block_copy(v10);
  v9 = a1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_24A513324(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_sleepPreventer);
  sub_24A598DB4();
  v3 = a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler;
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(v7);
    return sub_24A50D354(v5);
  }

  return result;
}

void sub_24A5133AC(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    if (a1 != 2 && (a1 & 1) != 0)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v10 = sub_24A62E314();
      sub_24A506EB8(v10, qword_27EF5C118);
      v6 = sub_24A62E2F4();
      v7 = sub_24A62EF64();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_16;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "🧭 FindingViewController: Done playing ranging sound";
      goto LABEL_15;
    }
  }

  else if (a1 == 2 || (a1 & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "🧭 FindingViewController: Now playing ranging sound";
LABEL_15:
    _os_log_impl(&dword_24A503000, v6, v7, v9, v8, 2u);
    MEMORY[0x24C21BBE0](v8, -1, -1);
LABEL_16:
  }
}

uint64_t sub_24A51356C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24A5135B0(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_24A5133AC(v4);
}

void (*sub_24A513608(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24A51369C;
}

void sub_24A51369C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_24A5133AC(v5);

  free(v1);
}

uint64_t sub_24A5136E4@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A517E5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A513784(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A517E50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A5138EC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A5193D4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A51398C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A519364;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A513AF4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A5193D4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A513B94(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A519364;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A513CFC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A517E48;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A513D9C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A517E40;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A513F08@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A517E38;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A513FA8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A517E30;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A514090(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_24A514118(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id FindingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A62EBE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void (*sub_24A5142B4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24A513608(v2);
  return sub_24A514324;
}

void sub_24A514324(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24A5144EC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t sub_24A514574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

void sub_24A5145F8()
{
  v0 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v0)
  {
    v1 = v0;
    if ([v0 hasTorch])
    {
      v2 = [v1 isTorchAvailable];
      v3 = [v1 torchMode];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        sub_24A51470C(v2, v3 == 1);
      }

      goto LABEL_8;
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return;
  }

  v1 = v6;
  sub_24A51470C(0, 0);
LABEL_8:
}

uint64_t sub_24A51470C(char a1, char a2)
{
  v4 = sub_24A62EA94();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A62EAD4();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v12 = sub_24A62F014();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 17) = a2;
  *(v14 + 24) = v13;
  aBlock[4] = sub_24A518AB4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA0AD0;
  v15 = _Block_copy(aBlock);

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v11, v7, v15);
  _Block_release(v15);

  (*(v18 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v17);
}

uint64_t sub_24A514A50(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_24A62EA94();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A62EAA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
  v16 = sub_24A62F054();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = v21;
  v18 = _Block_copy(aBlock);

  sub_24A62EAB4();
  v25 = MEMORY[0x277D84F90];
  sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v10, v6, v18);
  _Block_release(v18);

  (*(v24 + 8))(v6, v3);
  (*(v22 + 8))(v10, v23);
}

void sub_24A514E0C()
{
  v0 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v0)
  {
    v1 = v0;
    if ([v0 hasTorch] && objc_msgSend(v1, sel_isTorchAvailable))
    {
      v2 = [v1 torchMode];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        sub_24A51470C(2, v2 == 1);
      }

      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v1 = v5;
  sub_24A51470C(0, 0);
LABEL_9:
}

void sub_24A514F20(char a1, char a2)
{
  if (a1 != 2)
  {
    if (a1)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v15 = sub_24A62E314();
      sub_24A506EB8(v15, qword_27EF5C118);
      v16 = sub_24A62E2F4();
      v17 = sub_24A62EF64();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v42[0] = v19;
        *v18 = 136315138;
        if (a2)
        {
          v20 = 28271;
        }

        else
        {
          v20 = 6710895;
        }

        if (a2)
        {
          v21 = 0xE200000000000000;
        }

        else
        {
          v21 = 0xE300000000000000;
        }

        v22 = sub_24A509BA8(v20, v21, v42);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_24A503000, v16, v17, "🧭 FindingViewCtrl: Updated torch button (light is %s)", v18, 0xCu);
        sub_24A508C54(v19);
        MEMORY[0x24C21BBE0](v19, -1, -1);
        MEMORY[0x24C21BBE0](v18, -1, -1);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = *(Strong + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
        v25 = Strong;
        v26 = v24;

        if (v24)
        {
          sub_24A526D74(a2 & 1);
        }
      }

      swift_beginAccess();
      v27 = swift_unknownObjectWeakLoadStrong();
      if (!v27)
      {
        return;
      }

      v28 = *(v27 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
      v29 = v27;
      v14 = v28;

      if (!v28)
      {
        return;
      }

      v30 = off_285DA1590;
      type metadata accessor for PrecisionVFXViewController();
    }

    else
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v31 = sub_24A62E314();
      sub_24A506EB8(v31, qword_27EF5C118);
      v32 = sub_24A62E2F4();
      v33 = sub_24A62EF64();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_24A503000, v32, v33, "🧭 FindingViewCtrl: Torch is not available at the moment", v34, 2u);
        MEMORY[0x24C21BBE0](v34, -1, -1);
      }

      swift_beginAccess();
      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = *(v35 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
        v37 = v35;
        v38 = v36;

        if (v36)
        {
          sub_24A526D74(0);
        }
      }

      swift_beginAccess();
      v39 = swift_unknownObjectWeakLoadStrong();
      if (!v39)
      {
        return;
      }

      v40 = *(v39 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
      v41 = v39;
      v14 = v40;

      if (!v40)
      {
        return;
      }

      v30 = off_285DA1590;
      type metadata accessor for PrecisionVFXViewController();
    }

    v30();
    goto LABEL_43;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315138;
    if (a2)
    {
      v8 = 28271;
    }

    else
    {
      v8 = 6710895;
    }

    if (a2)
    {
      v9 = 0xE200000000000000;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    v10 = sub_24A509BA8(v8, v9, v42);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24A503000, v4, v5, "🧭 FindingViewCtrl: Updated torch button (light is %s)", v6, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
    v13 = v11;
    v14 = v12;

    if (v12)
    {
      sub_24A526D74(a2 & 1);
LABEL_43:
    }
  }
}

void sub_24A515440(uint64_t a1, void *a2)
{
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A633830;
  *(v3 + 56) = type metadata accessor for FindingViewController();
  *(v3 + 64) = sub_24A519230(&qword_27EF4F690, v4, type metadata accessor for FindingViewController);
  *(v3 + 32) = a2;
  sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
  v5 = a2;
  v6 = sub_24A62F1A4();
  sub_24A62EF64();
  sub_24A62E2D4();
}

uint64_t sub_24A51556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A508FA4(&unk_27EF52410, &qword_24A633C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24A50D63C(a3, v27 - v11, &unk_27EF52410, &qword_24A633C90);
  v13 = sub_24A62EE24();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24A50D6A4(v12, &unk_27EF52410, &qword_24A633C90);
  }

  else
  {
    sub_24A62EE14();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24A62EDC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24A62EC54() + 32;
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

      sub_24A50D6A4(a3, &unk_27EF52410, &qword_24A633C90);

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

  sub_24A50D6A4(a3, &unk_27EF52410, &qword_24A633C90);
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

uint64_t sub_24A51586C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A515964;

  return v7(a1);
}

uint64_t sub_24A515964()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_24A515A5C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24A62F714();
  sub_24A576E74();
  v4 = sub_24A62F754();

  return sub_24A516178(a1, v4);
}

unint64_t sub_24A515AC8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24A62E214();
  sub_24A519230(&qword_27EF52310, 255, MEMORY[0x277CC95F0]);
  v5 = sub_24A62EBB4();

  return sub_24A5166D0(a1, v5);
}

unint64_t sub_24A515B88()
{
  result = qword_27EF4F638;
  if (!qword_27EF4F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F638);
  }

  return result;
}

uint64_t sub_24A515BDC()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A515C4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A51935C;

  return sub_24A51D1DC(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_24A515D84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A515E5C;

  return sub_24A51D1DC(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_24A515E5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24A515F74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_24A515FC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24A62EC14();
  sub_24A62F714();
  sub_24A62EC74();
  v4 = sub_24A62F754();

  return sub_24A516A84(a1, v4);
}

unint64_t sub_24A516050(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24A62F714();
  sub_24A62EC74();
  v6 = sub_24A62F754();

  return sub_24A516894(a1, a2, v6);
}

unint64_t sub_24A5160C8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_24A62F714();
  MEMORY[0x24C21B040](a1);
  v4 = sub_24A62F754();

  return sub_24A51694C(a1, v4);
}

unint64_t sub_24A516134(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24A62F324();

  return sub_24A5169BC(a1, v5);
}

unint64_t sub_24A516178(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v2 + 48) + 104 * v4;
      v7 = *(v6 + 32);
      v8 = *v6;
      v73 = *(v6 + 16);
      v10 = *(v6 + 64);
      v9 = *(v6 + 80);
      v11 = *(v6 + 48);
      *&v77[13] = *(v6 + 93);
      v72 = v8;
      v74 = v7;
      v75 = v11;
      v76 = v10;
      *v77 = v9;
      v12 = v73;
      v13 = *&v77[16] | (v77[20] << 32);
      v14 = (((*&v77[16] & 0xFF000000) - 0x4000000) >> 24);
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if ((*(a1 + 96) & 0xFE000000) == 0x6000000)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v14 == 3)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!(((*&v77[16] & 0xFF000000) - 0x4000000) >> 24))
        {
          if (*(a1 + 99) << 24 == 0x4000000)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v14 == 1)
        {
          if (*(a1 + 99) << 24 == 83886080)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      v15 = *(a1 + 96);
      if ((v15 | 0x2000000) >> 25 != 3)
      {
        v16 = v15 | (*(a1 + 100) << 32);
        v17 = BYTE2(v15);
        if (v77[18] <= 1u)
        {
          if (v77[18])
          {
            if (v17 != 1)
            {
              goto LABEL_4;
            }
          }

          else if (v17)
          {
            goto LABEL_4;
          }
        }

        else if (v77[18] == 2)
        {
          if (v17 != 2)
          {
            goto LABEL_4;
          }
        }

        else if (v77[18] == 3)
        {
          if (v17 != 3)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v17 != 4)
          {
            goto LABEL_4;
          }

          v18 = *(a1 + 16);
          v71 = *v6;
          v19 = *(v6 + 40);
          v20 = *(v6 + 72);
          v68 = *(v6 + 56);
          v69 = v20;
          v70 = *(v6 + 88);
          v66 = *(v6 + 24);
          v67 = v19;
          *&v65[6] = *a1;
          v31 = v4;
          if (v73 == 1)
          {
            if (v18 != 1)
            {
              goto LABEL_39;
            }

            v41 = v71;
            v42 = 1;
            v44 = v67;
            v45 = v68;
            v46 = v69;
            v47 = v70;
            v43 = v66;
            v48 = *&v77[16];
            v29 = a1;
            sub_24A508CE4(&v72, &v49);
            sub_24A508CE4(v29, &v49);
            sub_24A50D6A4(&v41, &qword_27EF4F650, &unk_24A633E00);
            a1 = v29;
            v4 = v31;
          }

          else
          {
            v40 = *v6;
            v21 = *(v6 + 40);
            v22 = *(v6 + 72);
            v37 = *(v6 + 56);
            v38 = v22;
            v39 = *(v6 + 88);
            v35 = *(v6 + 24);
            v36 = v21;
            if (v18 == 1)
            {
LABEL_39:
              v49 = v71;
              v50 = v73;
              v52 = v67;
              v53 = v68;
              v54 = v69;
              v55 = v70;
              v51 = v66;
              v56 = *&v77[16];
              *&v57[14] = *&v65[14];
              *v57 = *v65;
              v58 = v18;
              v23 = *(a1 + 24);
              v63 = *(a1 + 88);
              v24 = *(a1 + 72);
              v61 = *(a1 + 56);
              v62 = v24;
              v25 = *(a1 + 40);
              v59 = v23;
              v60 = v25;
              v64 = v16;
              v26 = a1;
              sub_24A508CE4(&v72, &v41);
              sub_24A508CE4(v26, &v41);
              sub_24A50D6A4(&v49, &qword_27EF4F648, &qword_24A633DF8);
              a1 = v26;
              v4 = v31;
              goto LABEL_4;
            }

            v32 = *a1;
            *v33 = v18;
            *&v33[8] = *(a1 + 24);
            *&v33[24] = *(a1 + 40);
            *&v33[72] = *(a1 + 88);
            *&v33[56] = *(a1 + 72);
            *&v33[40] = *(a1 + 56);
            v34 = v16;
            v86[0] = v32;
            v86[1] = *v33;
            v87 = v16;
            v86[4] = *&v33[48];
            v86[5] = *&v33[64];
            v86[2] = *&v33[16];
            v86[3] = *&v33[32];
            v78 = v40;
            v80 = v35;
            v84 = v39;
            v83 = v38;
            v82 = v37;
            v81 = v36;
            v79 = v73;
            v85 = *&v77[16];
            v30 = a1;
            sub_24A508CE4(&v72, &v49);
            sub_24A508CE4(&v72, &v49);
            sub_24A508CE4(v30, &v49);
            v28 = sub_24A51B4E4(&v78, v86);
            sub_24A517ABC(&v72);
            sub_24A50D6A4(&v32, &qword_27EF4F650, &unk_24A633E00);
            v41 = v71;
            v42 = v12;
            v44 = v67;
            v45 = v68;
            v46 = v69;
            v47 = v70;
            v43 = v66;
            v48 = v13;
            sub_24A50D6A4(&v41, &qword_27EF4F650, &unk_24A633E00);
            a1 = v30;
            v4 = v31;
            if ((v28 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        if (((v16 ^ v13) & 0xFF000000) == 0)
        {
          if (HIDWORD(v13) == 3)
          {
            if (BYTE4(v16) == 3)
            {
              return v4;
            }
          }

          else if (BYTE4(v16) != 3)
          {
            if (HIDWORD(v13) == 2)
            {
              if (BYTE4(v16) == 2)
              {
                return v4;
              }
            }

            else if (BYTE4(v16) != 2 && ((BYTE4(v16) ^ HIDWORD(v13)) & 1) == 0)
            {
              return v4;
            }
          }
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A5166D0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24A62E214();
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
      sub_24A519230(&qword_27EF501E0, 255, MEMORY[0x277CC95F0]);
      v16 = sub_24A62EBD4();
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

unint64_t sub_24A516894(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24A62F634())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24A51694C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24A5169BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A517B10(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C21AC50](v9, a1);
      sub_24A517B6C(v9);
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

unint64_t sub_24A516A84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24A62EC14();
      v9 = v8;
      if (v7 == sub_24A62EC14() && v9 == v10)
      {
        break;
      }

      v12 = sub_24A62F634();

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

uint64_t sub_24A516B88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = sub_24A62EC94();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return MEMORY[0x2821FBFB0]();
}

void sub_24A516C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
  if (v5)
  {
    v19[0] = a4;
    v19[1] = a1;
    v19[2] = a2;

    v6 = v5;

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_3:
    v9 = &v19[2 * v7];
    while (++v7 != 3)
    {
      v10 = v9 + 2;
      v11 = *v9;
      v9 += 2;
      if (v11)
      {
        v12 = *(v10 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24A617710(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_24A617710((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        v15 = &v8[16 * v14];
        *(v15 + 4) = v12;
        *(v15 + 5) = v11;
        goto LABEL_3;
      }
    }

    sub_24A508FA4(&qword_27EF4F678, &qword_24A633E20);
    swift_arrayDestroy();
    sub_24A508FA4(&qword_27EF4F680, &qword_24A633E28);
    sub_24A518A6C(&qword_27EF4F688, &qword_27EF4F680, &qword_24A633E28);
    v16 = sub_24A62EBC4();
    v18 = v17;

    sub_24A527234(v16, v18);
  }
}

void sub_24A516E1C(__int16 *a1, uint64_t a2)
{
  v5 = sub_24A62EA94();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62EAD4();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMFindingViewState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  if ([objc_opt_self() isMainThread])
  {

    sub_24A51113C(a2, a1);
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v30 = v5;
    v20 = v2;
    v31 = sub_24A62F014();
    sub_24A518CB8(a2, v19, type metadata accessor for FMFindingViewState);
    sub_24A518CB8(a1, v17, type metadata accessor for FMFindingViewState);
    v21 = *(v14 + 80);
    v22 = (v21 + 24) & ~v21;
    v23 = (v15 + v21 + v22) & ~v21;
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    sub_24A518F38(v19, v24 + v22, type metadata accessor for FMFindingViewState);
    sub_24A518F38(v17, v24 + v23, type metadata accessor for FMFindingViewState);
    aBlock[4] = sub_24A518FA0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA0B98;
    v25 = _Block_copy(aBlock);
    v26 = v20;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
    v27 = v30;
    sub_24A62F254();
    v28 = v31;
    MEMORY[0x24C21A950](0, v12, v8, v25);
    _Block_release(v25);

    (*(v34 + 8))(v8, v27);
    (*(v32 + 8))(v12, v33);
  }
}

void _s11FMFindingUI21FindingViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *(v0 + v2) = swift_initStaticObject();
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_minAcceptableARLightIntensity) = 0x407F400000000000;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_insufficientFeaturesARTrackingErrorCount) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_maxErrorAlertCount) = 3;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying) = 2;
  v3 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler);
  *v7 = 0;
  v7[1] = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5173CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A5173DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24A517434(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_24A5133AC(v5);
}

uint64_t sub_24A51751C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 100);
  v5 = *(a3 + 48);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v7 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v7;
  v8 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v8;
  v12 = v4;
  v11 = v3;
  return v5(v10);
}

unint64_t sub_24A517A68()
{
  result = qword_27EF4F640;
  if (!qword_27EF4F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F640);
  }

  return result;
}

uint64_t sub_24A517C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A517C9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A517D74()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A517DBC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  *(v2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown) = 0;
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24A517DF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A517E64(uint64_t a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFindingSession.Error(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if ([objc_opt_self() isMainThread])
  {

    sub_24A51176C(a1);
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v23 = v8;
    v15 = v1;
    v22 = sub_24A62F014();
    sub_24A518CB8(a1, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFindingSession.Error);
    v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_24A518F38(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FMFindingSession.Error);
    aBlock[4] = sub_24A518C54;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA0B48;
    v18 = _Block_copy(aBlock);
    v19 = v15;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
    sub_24A62F254();
    v20 = v22;
    MEMORY[0x24C21A950](0, v11, v7, v18);
    _Block_release(v18);

    (*(v4 + 8))(v7, v3);
    (*(v24 + 8))(v11, v23);
  }
}

uint64_t sub_24A518270(uint64_t a1)
{
  v3 = type metadata accessor for FindingEstimate(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = MEMORY[0x28223BE20](v5);
  v10 = &v20[-v9 - 8];
  v11 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
  if (v11)
  {
    sub_24A518CB8(a1, &v20[-v9 - 8], type metadata accessor for FindingEstimate);
    v12 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_estimate;
    swift_beginAccess();
    v13 = v11;
    sub_24A519030(v10, v11 + v12);
    swift_endAccess();
    sub_24A518CB8(v11 + v12, v7, type metadata accessor for FindingEstimate);
    v15 = *&v13[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 16];
    v14 = *&v13[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 32];
    v21[0] = *&v13[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState];
    v21[1] = v15;
    v21[2] = v14;
    v17 = *&v13[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 64];
    v16 = *&v13[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 80];
    v18 = *&v13[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 48];
    *(v22 + 13) = *&v13[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 93];
    v21[4] = v17;
    v22[0] = v16;
    v21[3] = v18;
    sub_24A508CE4(v21, v20);
    sub_24A524D30(v7, v21);
    sub_24A517ABC(v21);

    sub_24A518A04(v7, type metadata accessor for FindingEstimate);
    return sub_24A518A04(v10, type metadata accessor for FindingEstimate);
  }

  return result;
}

id sub_24A518418(void *a1)
{
  v2 = type metadata accessor for FMFindingSessionState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFindingViewState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24A62F124();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = sub_24A62F134();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  v25 = [a1 camera];
  sub_24A62F144();

  sub_24A518CB8(v24, v22, MEMORY[0x277D82DB0]);
  result = (*(v11 + 48))(v22, 2, v10);
  if (result)
  {
    if (result != 1)
    {
      v27 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount;
      v28 = v48;
      v29 = *(v48 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (!v30)
      {
        *(v48 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount) = v31;
        if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v31 + 0x888888888888888, 1) <= 0x888888888888888uLL)
        {
          *(v28 + v27) = 0;
          sub_24A514A50(sub_24A518A64, &unk_285DA0A80);
        }

        return sub_24A518A04(v24, MEMORY[0x277D82DB0]);
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    return sub_24A518A04(v24, MEMORY[0x277D82DB0]);
  }

  (*(v11 + 32))(v17, v22, v10);
  v32 = *(v48 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session);
  v33 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A518CB8(v32 + v33, v5, type metadata accessor for FMFindingSessionState);
  sub_24A626F08(v5, 10, v9);
  v34 = sub_24A62715C();
  if (v34 <= 1)
  {
    if (!v34)
    {

      goto LABEL_13;
    }
  }

  else if (v34 != 2 && v34 != 3)
  {
    goto LABEL_13;
  }

  v35 = sub_24A62F634();

  if ((v35 & 1) == 0)
  {
LABEL_22:
    sub_24A518A04(v9, type metadata accessor for FMFindingViewState);
    (*(v11 + 8))(v17, v10);
    return sub_24A518A04(v24, MEMORY[0x277D82DB0]);
  }

LABEL_13:
  (*(v11 + 16))(v15, v17, v10);
  v36 = (*(v11 + 88))(v15, v10);
  if (v36 == *MEMORY[0x277D82D90] || v36 == *MEMORY[0x277D82DA0])
  {
    goto LABEL_22;
  }

  if (v36 == *MEMORY[0x277D82DA8])
  {
    v37 = [a1 lightEstimate];
    if (v37)
    {
      v38 = v37;
      result = [v37 ambientIntensity];
      v39 = v48;
      if (v40 <= 500.0)
      {
        v41 = *(v48 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_insufficientFeaturesARTrackingErrorCount);
        v30 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v30)
        {
          goto LABEL_28;
        }

        *(v48 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_insufficientFeaturesARTrackingErrorCount) = v42;
        if (v42 >= 2)
        {
          v43 = *(v39 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController);
          v44 = *(v43 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
          *(v43 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState) = 6;
          sub_24A5FFD04(v44);
          sub_24A514A50(sub_24A518AC4, &unk_285DA0AF8);
        }
      }
    }

    goto LABEL_22;
  }

  v45 = *MEMORY[0x277D82D98];
  v46 = v36;
  sub_24A518A04(v9, type metadata accessor for FMFindingViewState);
  v47 = *(v11 + 8);
  v47(v17, v10);
  result = sub_24A518A04(v24, MEMORY[0x277D82DB0]);
  if (v46 != v45)
  {
    return (v47)(v15, v10);
  }

  return result;
}

uint64_t sub_24A518A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A518A6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A518ACC()
{
  v1 = *(type metadata accessor for FMFindingSession.Error(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

LABEL_8:
    v7 = sub_24A62E214();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      goto LABEL_8;
    case 3:
      v9 = sub_24A62E214();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v8 = *(v5 + *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48));
      goto LABEL_11;
    case 4:
LABEL_9:
      v8 = *v5;
LABEL_11:

      break;
  }

LABEL_12:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_24A518C54()
{
  v1 = *(type metadata accessor for FMFindingSession.Error(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_24A51176C(v2);
}

uint64_t sub_24A518CB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A518D20()
{
  v1 = type metadata accessor for FMFindingViewState();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = v0 + v4;
  v7 = v1[5];
  v8 = sub_24A62E214();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v10 = *(v6 + v1[6] + 8);

  v11 = v6 + v1[8];
  v12 = *(v11 + 96);
  if ((v12 | 0x2000000u) >> 25 != 3)
  {
    *(v11 + 100);
    sub_24A508BE4(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80), *(v11 + 88), v12, SBYTE2(v12));
  }

  v13 = *(v6 + v1[15] + 8);

  v9(v0 + v5 + v1[5], v8);
  v14 = *(v0 + v5 + v1[6] + 8);

  v15 = v0 + v5 + v1[8];
  v16 = *(v15 + 96);
  if ((v16 | 0x2000000u) >> 25 != 3)
  {
    *(v15 + 100);
    sub_24A508BE4(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), v16, SBYTE2(v16));
  }

  v17 = *(v0 + v5 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_24A518F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24A518FA0()
{
  v1 = *(type metadata accessor for FMFindingViewState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v0 + v3;
  v5 = (v0 + ((*(v1 + 64) + v2 + v3) & ~v2));
  v6 = *(v0 + 16);
  sub_24A51113C(v4, v5);
}

uint64_t sub_24A519030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FindingEstimate(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24A51909C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_24A5190B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A51935C;

  return sub_24A51586C(a1, v5);
}

uint64_t sub_24A519168(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A515E5C;

  return sub_24A51586C(a1, v5);
}

uint64_t sub_24A519230(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_24A5193E8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A519414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 98))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24A519470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24A51950C(int a1)
{
  if (a1 <= 63)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          return 1952867692;
        case 16:
          return 0x7468676972;
        case 32:
          return 0x646E69686562;
        default:
          return 0x6E776F6E6B6E75;
      }
    }

    else
    {
      if (a1 == 1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (a1 != 2)
      {
        if (a1 == 4)
        {
          return 0x6461656861;
        }

        return 0x6E776F6E6B6E75;
      }

      return 0x746E6F7266;
    }
  }

  else if (a1 <= 511)
  {
    switch(a1)
    {
      case 64:
        return 0x42724F65766F6261;
      case 128:
        return 0x65766F6261;
      case 256:
        return 0x776F6C6562;
      default:
        return 0x6E776F6E6B6E75;
    }
  }

  else if (a1 > 2047)
  {
    if (a1 != 2048)
    {
      if (a1 == 4096)
      {
        return 0x79627261656ELL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x65736F6C63;
  }

  else
  {
    if (a1 != 512)
    {
      if (a1 == 1024)
      {
        return 1918985582;
      }

      return 0x6E776F6E6B6E75;
    }

    return 7496038;
  }
}

BOOL sub_24A5196F4(_DWORD *a1, int *a2)
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

_DWORD *sub_24A519724@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24A519750@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_24A51983C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24A51986C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_24A51B710(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24A5198F8()
{
  if (*v0)
  {
    result = 0x656C706F6570;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_24A519930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_24A62F634() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C706F6570 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A62F634();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24A519A14(uint64_t a1)
{
  v2 = sub_24A51CA4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A519A50(uint64_t a1)
{
  v2 = sub_24A51CA4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A519A8C(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_24A508FA4(&qword_27EF4F710, &qword_24A634298);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = sub_24A508FA4(&qword_27EF4F718, &qword_24A6342A0);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = sub_24A508FA4(&qword_27EF4F720, &qword_24A6342A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A51CA4C();
  sub_24A62F774();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24A51CAA0();
    sub_24A62F564();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24A51CAF4();
    sub_24A62F564();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24A519D48(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000012;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 0x6C6F687365726874;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 0x65766F62417369;
    if (a1 != 7)
    {
      v9 = 0x776F6C65427369;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736944746E616C73;
    v2 = 0x616542564F466E69;
    v3 = 0x564F466E497369;
    if (a1 != 4)
    {
      v3 = 0x636165526E497369;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x676E6972616562;
    if (a1 != 1)
    {
      v4 = 0x4264696C61567369;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A519F04(uint64_t a1)
{
  v2 = sub_24A51CAF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A519F40(uint64_t a1)
{
  v2 = sub_24A51CAF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A519F7C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24A519FB8(uint64_t a1)
{
  v2 = sub_24A51CAA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A519FF4(uint64_t a1)
{
  v2 = sub_24A51CAA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s11FMFindingUI0A4TypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24A62F714();
  MEMORY[0x24C21B040](v1);
  return sub_24A62F754();
}

uint64_t sub_24A51A078()
{
  v1 = *v0;
  sub_24A62F714();
  MEMORY[0x24C21B040](v1);
  return sub_24A62F754();
}

uint64_t sub_24A51A0D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A51B748(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_24A51A10C()
{
  result = qword_27EF4F698;
  if (!qword_27EF4F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F698);
  }

  return result;
}

uint64_t sub_24A51A160(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24A519D48(*a1);
  v5 = v4;
  if (v3 == sub_24A519D48(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A62F634();
  }

  return v8 & 1;
}

uint64_t sub_24A51A1E8()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A519D48(v1);
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A51A24C()
{
  sub_24A519D48(*v0);
  sub_24A62EC74();
}

uint64_t sub_24A51A2A0()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A519D48(v1);
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A51A300@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A51BB84();
  *a2 = result;
  return result;
}

unint64_t sub_24A51A330@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A519D48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A51A378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A51BB84();
  *a1 = result;
  return result;
}

uint64_t sub_24A51A3AC(uint64_t a1)
{
  v2 = sub_24A51C86C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A51A3E8(uint64_t a1)
{
  v2 = sub_24A51C86C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A51A424(void *a1)
{
  v3 = v1;
  v5 = sub_24A508FA4(&qword_27EF4F6F0, &qword_24A634288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A51C86C();
  sub_24A62F774();
  v24 = *v3;
  v25 = *(v3 + 8);
  v23 = 0;
  sub_24A508FA4(&qword_27EF4F6F8, &qword_24A634290);
  sub_24A51C97C();
  sub_24A62F5D4();
  if (!v2)
  {
    v11 = v3[4];
    LOBYTE(v24) = 1;
    sub_24A62F5A4();
    v12 = *(v3 + 40);
    LOBYTE(v24) = 2;
    sub_24A62F594();
    v13 = v3[6];
    LOBYTE(v24) = 3;
    sub_24A62F5A4();
    v14 = *(v3 + 56);
    LOBYTE(v24) = 4;
    sub_24A62F594();
    v15 = *(v3 + 57);
    LOBYTE(v24) = 5;
    sub_24A62F594();
    v16 = v3[8];
    LOBYTE(v24) = 6;
    sub_24A62F5A4();
    v17 = *(v3 + 72);
    LOBYTE(v24) = 7;
    sub_24A62F594();
    v18 = *(v3 + 73);
    LOBYTE(v24) = 8;
    sub_24A62F594();
    v19 = *(v3 + 74);
    LOBYTE(v24) = 9;
    sub_24A62F594();
    v20 = v3[10];
    LOBYTE(v24) = 10;
    sub_24A62F5A4();
    LOBYTE(v24) = *(v3 + 97);
    v23 = 11;
    sub_24A51C9F8();
    sub_24A62F5D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A51A740()
{
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_24A633E60;
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = MEMORY[0x277D839F8];
  v6 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v6;
  v7 = -1.0;
  if (v4)
  {
    v3 = -1.0;
  }

  *(v1 + 32) = v3;
  if (*(v0 + 40))
  {
    v7 = *(v0 + 32);
  }

  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + 56);
  v9 = sub_24A508FEC();
  v10 = 1702195828;
  if (v8)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v8)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = MEMORY[0x277D837D0];
  v2[17] = MEMORY[0x277D837D0];
  v2[18] = v9;
  v2[14] = v11;
  v2[15] = v12;
  if (*(v0 + 57))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v10 = 0x65736C6166;
    v14 = 0xE500000000000000;
  }

  v2[22] = v13;
  v2[23] = v9;
  v2[19] = v10;
  v2[20] = v14;

  return sub_24A62EC24();
}

uint64_t sub_24A51A858()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v2 = *v0;
  if (*(v0 + 97))
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 57);
    if (v2 >= 0.0)
    {
      if ((*(v0 + 56) & 1) == 0)
      {
        if ((*(v0 + 57) & 1) == 0)
        {
          v9 = *(v0 + 32);
          v10 = *(v0 + 48);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v2 = 0.0;
      if ((*(v0 + 56) & 1) == 0)
      {
        if ((*(v0 + 57) & 1) == 0)
        {
          v5 = *(v0 + 32);
          v6 = *(v0 + 48);
          if (v5 < -v6 && v6 + -180.0 >= v5 && v6 < v5)
          {
            if (v5 >= 180.0 - v6)
            {
              v2 = 0.0;
            }

            else
            {
              v2 = 0.0;
            }
          }
        }

        goto LABEL_23;
      }
    }

    *(v0 + 57);
LABEL_23:
    *(v0 + 73);
    *(v0 + 73);
    *(v0 + 72);
    return *&v2;
  }

  if (*(v0 + 56))
  {
    if (v2 < 0.0)
    {
      v2 = 0.0;
    }

    *(v0 + 57);
    goto LABEL_23;
  }

  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  if (*(v0 + 57))
  {
    goto LABEL_23;
  }

  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  return *&v2;
}

uint64_t sub_24A51AA70()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v2 = *v0;
  if (*(v0 + 97))
  {
    v3 = 3.45599309;
  }

  else
  {
    if (qword_27EF4EA90 != -1)
    {
      swift_once();
    }

    v4 = *&qword_27EF5C768;
    if (qword_27EF4EAB0 != -1)
    {
      v8 = qword_27EF5C768;
      swift_once();
      v4 = *&v8;
    }

    v3 = v4 * *&qword_27EF5C788;
  }

  v5 = (v2 - v3) / vabdd_f64(1.2192, v3);
  v6 = 1.0 - fmin(v5, 1.0);
  if (v5 < 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v6;
  }

  return *&v7;
}

uint64_t sub_24A51AB70(char a1)
{
  if (*(v1 + 8))
  {
    return 2;
  }

  v3 = *v1;
  if (*(v1 + 97) == 1)
  {
    v4 = v3 >= 2.3622;
    if (a1)
    {
      v5 = 2.267712;
    }

    else
    {
      v5 = 3.45599309;
    }
  }

  else
  {
    if (qword_27EF4EA90 != -1)
    {
      v9 = a1;
      swift_once();
      a1 = v9;
    }

    v6 = *&qword_27EF5C768;
    if (qword_27EF4EAB0 != -1)
    {
      v10 = a1;
      v11 = qword_27EF5C768;
      swift_once();
      v6 = *&v11;
      a1 = v10;
    }

    v4 = v6 * 1.25 <= v3;
    if (a1)
    {
      v7 = 1.2;
    }

    else
    {
      v7 = *&qword_27EF5C788;
    }

    v5 = v6 * v7;
  }

  if (v4)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  if (v3 >= v5)
  {
    return v8;
  }

  else
  {
    return v8 + 1;
  }
}

uint64_t sub_24A51ACB4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v6 = *(v5 + 56);
    v7 = *(v5 + 57);
LABEL_6:
    v8 = 0;
    v9 = *&result;
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = *v5;
  v6 = *(v5 + 56);
  v7 = *(v5 + 57);
  if ((v5[1] & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = 1;
  v9 = 0.0;
  if ((a3 & 0x100000000) != 0)
  {
LABEL_4:
    v10 = 1.79769313e308;
    goto LABEL_8;
  }

LABEL_7:
  v10 = *&a3 / 3.14159265 * -180.0;
LABEL_8:
  v11 = a4;
  v12 = *(v5 + 97);
  if (v8)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v14 = *&result;
  if ((v7 & 1) == 0)
  {
    if (*(v5 + 97))
    {
      v15 = 1.8898;
      goto LABEL_22;
    }

    if (qword_27EF4EA90 != -1)
    {
      v45 = v6;
      v41 = a5;
      v43 = result;
      v31 = a3;
      v29 = v9;
      v39 = *(v5 + 97);
      v37 = v10;
      v35 = v8;
      v27 = a4;
      v33 = *&result;
      swift_once();
      v14 = v33;
      v11 = v27;
      v8 = v35;
      v10 = v37;
      v12 = v39;
      v9 = v29;
      v6 = v45;
      a3 = v31;
      a5 = v41;
      result = v43;
    }

    v16 = qword_27EF5C768;
LABEL_21:
    v15 = *&v16;
    goto LABEL_22;
  }

  if ((*(v5 + 97) & 1) == 0)
  {
    if (qword_27EF4EA98 != -1)
    {
      v44 = v6;
      v40 = a5;
      v42 = result;
      v30 = a3;
      v28 = v9;
      v38 = *(v5 + 97);
      v36 = v10;
      v34 = v8;
      v26 = a4;
      v32 = *&result;
      swift_once();
      v14 = v32;
      v11 = v26;
      v8 = v34;
      v10 = v36;
      v12 = v38;
      v9 = v28;
      v6 = v44;
      a3 = v30;
      a5 = v40;
      result = v42;
    }

    v16 = qword_27EF5C770;
    goto LABEL_21;
  }

  v15 = 1.9842;
LABEL_22:
  v17 = v14;
  v13 = v15 > v17;
LABEL_23:
  v46 = v8;
  if (v11 == 2)
  {
    v18 = 1;
  }

  else
  {
    if (v11 == 5)
    {
      v18 = *(v5 + 72);
      v19 = *(v5 + 73);
      v20 = *(v5 + 74);
      goto LABEL_29;
    }

    v18 = v11 == 4;
  }

  v19 = v11 - 3 < 2;
  v20 = v11 < 2;
LABEL_29:
  v21 = (v9 + -1.0) / 9.0;
  v22 = fmin(v21, 1.0);
  v23 = v21 < 0.0;
  v24 = 0.0;
  if (!v23)
  {
    v24 = v22;
  }

  v25 = v24 * 45.0 + (1.0 - v24) * 20.0;
  *a5 = *&result;
  if (v6)
  {
    v25 = v25 * 1.1;
  }

  *(a5 + 8) = v46;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = v10;
  *(a5 + 40) = (a3 & 0x100000000) == 0;
  *(a5 + 48) = v25;
  *(a5 + 56) = fabs(v10) <= v25;
  *(a5 + 57) = v13;
  *(a5 + 64) = v9;
  *(a5 + 72) = v18;
  *(a5 + 73) = v19;
  *(a5 + 74) = v20;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 1;
  *(a5 + 97) = v12;
  return result;
}

uint64_t sub_24A51AF98()
{
  v1 = v0;
  if (*(v0 + 8) == 1)
  {
    sub_24A62F734();
    v2 = *(v0 + 2);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_24A62F734();
    v4 = *(v0 + 3);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v6 = *v0;
  sub_24A62F734();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  MEMORY[0x24C21B060](*&v7);
  v2 = *(v0 + 2);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_24A62F734();
  v3 = v2;
  sub_24A62F174();

  v4 = *(v1 + 3);
  if (v4)
  {
LABEL_4:
    sub_24A62F734();
    v5 = v4;
    sub_24A62F174();

    goto LABEL_11;
  }

LABEL_10:
  sub_24A62F734();
LABEL_11:
  v8 = v1[4];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x24C21B060](*&v8);
  v9 = *(v1 + 40);
  sub_24A62F734();
  v10 = v1[6];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x24C21B060](*&v10);
  v11 = *(v1 + 56);
  sub_24A62F734();
  v12 = *(v1 + 57);
  sub_24A62F734();
  v13 = v1[8];
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x24C21B060](*&v13);
  v14 = *(v1 + 72);
  sub_24A62F734();
  v15 = *(v1 + 73);
  sub_24A62F734();
  v16 = *(v1 + 74);
  sub_24A62F734();
  v17 = v1[10];
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x24C21B060](*&v17);
  if (*(v1 + 96) == 1)
  {
    sub_24A62F734();
  }

  else
  {
    v18 = *(v1 + 11);
    sub_24A62F734();
    MEMORY[0x24C21B040](v18);
  }

  return MEMORY[0x24C21B040](*(v1 + 97));
}

uint64_t sub_24A51B15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_24A51B4E4(v11, v13) & 1;
}

uint64_t sub_24A51B1C8()
{
  sub_24A62F714();
  sub_24A51AF98();
  return sub_24A62F754();
}

uint64_t sub_24A51B20C()
{
  sub_24A62F714();
  sub_24A51AF98();
  return sub_24A62F754();
}

__n128 sub_24A51B248@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A51C314(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_24A51B2C8()
{
  result = qword_27EF4F6A0;
  if (!qword_27EF4F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6A0);
  }

  return result;
}

unint64_t sub_24A51B320()
{
  result = qword_27EF4F6A8;
  if (!qword_27EF4F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6A8);
  }

  return result;
}

unint64_t sub_24A51B378()
{
  result = qword_27EF4F6B0;
  if (!qword_27EF4F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6B0);
  }

  return result;
}

unint64_t sub_24A51B3D0()
{
  result = qword_27EF4F6B8;
  if (!qword_27EF4F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6B8);
  }

  return result;
}

unint64_t sub_24A51B428()
{
  result = qword_27EF4F6C0;
  if (!qword_27EF4F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6C0);
  }

  return result;
}

uint64_t sub_24A51B47C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A51B4B0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A51B4E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_34;
    }

    v6 = a1;
    v7 = a2;
    sub_24A50D7EC(0, &qword_27EF4F6D0, 0x277D43C60);
    v8 = v5;
    v9 = v4;
    v10 = sub_24A62F164();

    a1 = v6;
    a2 = v7;
    if ((v10 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v5)
  {
    goto LABEL_34;
  }

  v11 = *(a1 + 24);
  v12 = *(a2 + 24);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    v13 = a1;
    v14 = a2;
    sub_24A50D7EC(0, &qword_27EF4F6C8, 0x277D43C58);
    v15 = v12;
    v16 = v11;
    v17 = sub_24A62F164();

    a1 = v13;
    a2 = v14;
    if ((v17 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v12)
  {
    goto LABEL_34;
  }

  if (*(a1 + 32) == *(a2 + 32) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0 && ((*(a1 + 57) ^ *(a2 + 57)) & 1) == 0 && *(a1 + 64) == *(a2 + 64) && ((*(a1 + 72) ^ *(a2 + 72)) & 1) == 0 && ((*(a1 + 73) ^ *(a2 + 73)) & 1) == 0 && ((*(a1 + 74) ^ *(a2 + 74)) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
  {
    v18 = *(a2 + 96);
    if (*(a1 + 96))
    {
      if (!*(a2 + 96))
      {
        return v18 & 1;
      }
    }

    else
    {
      if (*(a1 + 88) != *(a2 + 88))
      {
        v18 = 1;
      }

      if (v18)
      {
        goto LABEL_34;
      }
    }

    v18 = *(a1 + 97) ^ *(a2 + 97) ^ 1;
    return v18 & 1;
  }

LABEL_34:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_24A51B710(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24A51B748(uint64_t *a1)
{
  v29 = sub_24A508FA4(&qword_27EF4F740, &qword_24A6342B0);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = v25 - v3;
  v5 = sub_24A508FA4(&qword_27EF4F748, &qword_24A6342B8);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = sub_24A508FA4(&qword_27EF4F750, &unk_24A6342C0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A51CA4C();
  v14 = v31;
  sub_24A62F764();
  if (v14)
  {
    return sub_24A508C54(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_24A62F554();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_24A62F3C4();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_24A508FA4(&qword_27EF4F758, &qword_24A638F00) + 48);
    *v22 = &type metadata for Threshold;
    sub_24A62F4D4();
    sub_24A62F3B4();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_24A508C54(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_24A51CAA0();
    sub_24A62F4C4();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_24A51CAF4();
    sub_24A62F4C4();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_24A508C54(v31);
  return v32;
}

uint64_t sub_24A51BB84()
{
  v0 = sub_24A62F4B4();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

double sub_24A51BBD0@<D0>(double a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a2)
  {
    if (*(a5 + 16) == 1)
    {
      v12 = 0.0;
      v13 = 1;
    }

    else
    {
      v12 = *a5;
      v13 = *(a5 + 8);
    }
  }

  else
  {
    v12 = a1;
    v13 = 0;
  }

  v14 = *(a5 + 56);
  v15 = *(a5 + 57);
  v16 = a3;
  v17 = *(a5 + 74);
  v71 = v13;
  if (a3)
  {
    v18 = *(a5 + 16);
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_17:
    if (v18 == 1)
    {
      v19 = 0;
      if (v13)
      {
        v70 = 1;
        v21 = v12;
LABEL_25:
        sub_24A51C2AC(a5);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
LABEL_72:
        v27 = 0.0;
        v28 = 1.79769313e308;
        v29 = 0.0;
        goto LABEL_73;
      }

      v21 = v12;
      v30 = v12;
      v70 = 1;
      goto LABEL_34;
    }

    v70 = v14;
    v19 = *(a5 + 24);
    v22 = v19;
    v13 = v71;
    if (v16)
    {
      goto LABEL_21;
    }

LABEL_24:
    v21 = v12;
    if (v13)
    {
      goto LABEL_25;
    }

    v30 = v12;
    if ((v15 & 1) == 0)
    {
      if (a6)
      {
        v31 = a4;
        v32 = a3;
        v33 = 1.88976;
LABEL_71:
        sub_24A51C2AC(a5);

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v23 = v33 >= v30;
        goto LABEL_72;
      }

      v43 = a6;
      v60 = qword_27EF4EA90;
      v32 = a3;
      v31 = a4;
      if (v60 != -1)
      {
        swift_once();
      }

      v33 = *&qword_27EF5C768;
      goto LABEL_70;
    }

LABEL_34:
    if (a6)
    {
      v31 = a4;
      v32 = a3;
      v33 = 1.984248;
      goto LABEL_71;
    }

    v43 = a6;
    v44 = qword_27EF4EA98;
    v32 = a3;
    v31 = a4;
    if (v44 != -1)
    {
      swift_once();
    }

    v33 = *&qword_27EF5C770;
LABEL_70:
    a6 = v43;
    v21 = v12;
    goto LABEL_71;
  }

  v16 = *(a5 + 16);
  if (v16 == 1)
  {
    v16 = 0;
    v18 = *(a5 + 16);
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v16;
    v13 = v71;
    v18 = *(a5 + 16);
    if (!a4)
    {
      goto LABEL_17;
    }
  }

LABEL_8:
  if (v18 != 1)
  {
    v70 = v14;
    v19 = a4;
    if (v16)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v17 = 1;
  v15 = 1;
  v70 = 1;
  v19 = a4;
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (!v19)
  {
    goto LABEL_24;
  }

  if (v13)
  {
    sub_24A51C2AC(a5);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 1.79769313e308;
    v29 = 0.0;
    v21 = v12;
    goto LABEL_73;
  }

  v27 = v12;
  v69 = a6;
  if (a6)
  {
    v34 = qword_27EF4EAB8;
    v35 = a3;
    v36 = a4;
    v37 = v16;
    v38 = v19;
    v39 = 2.5;
    if (v34 != -1)
    {
      swift_once();
    }

    v40 = &qword_27EF5C790;
    v41 = 1.9842;
    v42 = 1.8898;
  }

  else
  {
    v45 = qword_27EF4EA90;
    v46 = a3;
    v47 = a4;
    v48 = v16;
    v49 = v19;
    if (v45 != -1)
    {
      swift_once();
    }

    v50 = *&qword_27EF5C768;
    if (qword_27EF4EA98 != -1)
    {
      swift_once();
    }

    v51 = *&qword_27EF5C770;
    if (qword_27EF4EAA0 != -1)
    {
      swift_once();
    }

    v42 = v50;
    v41 = v51;
    v39 = *&qword_27EF5C778;
    if (qword_27EF4EAA8 != -1)
    {
      swift_once();
    }

    v40 = &qword_27EF5C780;
  }

  v52 = *v40;
  v53 = calculateBearingAngleHorizontalDistanceAndVerticalDistance();
  v68 = v54;
  v55 = *&v54;
  if (v27 >= *(&v53 + 1))
  {
    v27 = *(&v53 + 1);
  }

  if (v15)
  {
    v23 = v27 < v41;
  }

  else
  {
    v23 = v27 < v42;
  }

  v29 = *&v54;
  if ([v16 verticalState] != 1)
  {
    if ([v16 verticalState] == 2)
    {
      v29 = v55;
    }

    else
    {
      v29 = 0.0;
    }
  }

  v56 = [v16 verticalState];
  v57 = fabsf(v55);
  if (!v56)
  {
    v57 = 0.0;
  }

  v58 = v57 < v39;
  if (v17)
  {
    v58 = v57 < v52;
  }

  if (v58)
  {

    sub_24A51C2AC(a5);
    v24 = 0;
    if ((v68 & 0x100000000) == 0)
    {
      v28 = 1.79769313e308;
      v25 = 0;
      v26 = 0;
      a6 = v69;
      v21 = v12;
      goto LABEL_73;
    }

    v25 = 0;
    v26 = 0;
    a6 = v69;
    v21 = v12;
  }

  else
  {
    v59 = [v16 verticalState];

    sub_24A51C2AC(a5);
    if (v59 == 2)
    {
      v26 = v55 >= 0.0;
      v25 = v55 < 0.0;
      a6 = v69;
      v21 = v12;
      if ((v68 & 0x100000000) == 0)
      {
        v24 = 0;
        v28 = 1.79769313e308;
        goto LABEL_73;
      }
    }

    else
    {
      v25 = 1;
      a6 = v69;
      v21 = v12;
      if ((v68 & 0x100000000) == 0)
      {
        v24 = 0;
        v28 = 1.79769313e308;
        v26 = 1;
        goto LABEL_73;
      }

      v26 = 1;
    }
  }

  v28 = v67 / 3.14159265 * -180.0;
  v24 = 1;
LABEL_73:
  v61 = (v27 + -1.0) / 9.0;
  v62 = fmin(v61, 1.0);
  v63 = v61 < 0.0;
  v64 = 0.0;
  if (!v63)
  {
    v64 = v62;
  }

  v65 = v64 * 45.0 + (1.0 - v64) * 20.0;
  *a7 = v21;
  if (v70)
  {
    v65 = v65 * 1.1;
  }

  *(a7 + 8) = v71 & 1;
  *(a7 + 16) = v16;
  *(a7 + 24) = v19;
  *(a7 + 32) = v28;
  *(a7 + 40) = v24;
  *(a7 + 48) = v65;
  *(a7 + 56) = fabs(v28) <= v65;
  *(a7 + 57) = v23;
  *(a7 + 64) = v27;
  *(a7 + 72) = v26;
  *(a7 + 73) = v25;
  *(a7 + 74) = !v26 && !v25;
  result = v29;
  *(a7 + 80) = v29;
  *(a7 + 88) = 0;
  *(a7 + 96) = 1;
  *(a7 + 97) = a6 & 1;
  return result;
}

uint64_t sub_24A51C2AC(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF4F650, &unk_24A633E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}