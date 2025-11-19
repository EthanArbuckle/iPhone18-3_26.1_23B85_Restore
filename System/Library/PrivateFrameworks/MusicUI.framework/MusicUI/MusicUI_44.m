uint64_t sub_216B04424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B044E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_217006DE4();
  v4[16] = v5;
  OUTLINED_FUNCTION_2(v5);
  v4[17] = v6;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = sub_217006E04();
  v4[20] = v7;
  OUTLINED_FUNCTION_2(v7);
  v4[21] = v8;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = sub_217006E24();
  v4[25] = v9;
  OUTLINED_FUNCTION_2(v9);
  v4[26] = v10;
  v4[27] = swift_task_alloc();
  v11 = sub_217006BF4();
  v4[28] = v11;
  OUTLINED_FUNCTION_2(v11);
  v4[29] = v12;
  v4[30] = swift_task_alloc();
  type metadata accessor for PlayLibraryArtistAction();
  v4[31] = swift_task_alloc();
  sub_21700EA34();
  v4[32] = sub_21700EA24();
  v14 = sub_21700E9B4();
  v4[33] = v14;
  v4[34] = v13;

  return MEMORY[0x2822009F8](sub_216B04724, v14, v13);
}

uint64_t sub_216B04724()
{
  v31 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216EAE9B0();
  v2 = v27;
  v1 = v28;
  v4 = v29;
  v3 = v30;
  v0[35] = v28;
  v0[36] = v4;
  v0[37] = v3;
  if (qword_27CAB5D40 != -1)
  {
    swift_once();
  }

  v5 = v0[31];
  v6 = v0[13];
  v7 = sub_217007CA4();
  v0[38] = __swift_project_value_buffer(v7, qword_27CAC2958);
  sub_216B05B3C(v6, v5);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[31];
  if (v10)
  {
    v24 = v2;
    v12 = swift_slowAlloc();
    v26 = v4;
    v27 = swift_slowAlloc();
    v13 = v27;
    *v12 = 136446210;
    sub_21700C384();
    sub_216B05BFC(&unk_27CAC2978, MEMORY[0x277CD8428]);
    v14 = sub_21700F784();
    v16 = v15;
    sub_216B05BA0(v11);
    v17 = sub_2166A85FC(v14, v16, &v27);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_216679000, v8, v9, "Playing library artist from %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v4 = v26;
    OUTLINED_FUNCTION_6();
    v2 = v24;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    sub_216B05BA0(v11);
  }

  v18 = v0[5];
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
  v0[7] = v2;
  v0[8] = v1;
  v0[9] = v4;
  v0[10] = v3;
  v20 = *(v19 + 80);
  sub_21700DF14();
  sub_21677A3F0(v4, v3);
  v25 = (v20 + *v20);
  v21 = swift_task_alloc();
  v0[39] = v21;
  *v21 = v0;
  v21[1] = sub_216B04A84;
  v22 = v0[13];

  return (v25)(v22, v0 + 7, v18, v19);
}

uint64_t sub_216B04A84()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  v3[40] = v0;

  sub_21677A4C0(v3[7], v2[8], v2[9], v2[10]);
  v5 = v3[33];
  v6 = v3[34];
  if (v0)
  {
    v7 = sub_216B04D10;
  }

  else
  {
    v7 = sub_216B04BE0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_216B04BE0()
{

  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if (v4())
  {
    OUTLINED_FUNCTION_12_50();
  }

  OUTLINED_FUNCTION_2_102();
  sub_21677A510(v3, v1);
  v5 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v6 + 104))(v0, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216B04D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = *(v12 + 320);
  *(v12 + 88) = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_8();
  if (swift_dynamicCast())
  {
    if ((*(*(v12 + 232) + 88))(*(v12 + 240), *(v12 + 224)) == *MEMORY[0x277D2A8C8])
    {
      v16 = *(v12 + 232);
      v15 = *(v12 + 240);
      v18 = *(v12 + 216);
      v17 = *(v12 + 224);
      v19 = *(v12 + 200);
      v20 = *(v12 + 208);

      (*(v16 + 96))(v15, v17);
      (*(v20 + 32))(v18, v15, v19);
      v21 = sub_217007C84();
      v22 = sub_21700EDA4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_216679000, v21, v22, "Presenting dialog...", v23, 2u);
        OUTLINED_FUNCTION_6();
      }

      v24 = swift_task_alloc();
      *(v12 + 328) = v24;
      *v24 = v12;
      v24[1] = sub_216B04FCC;
      OUTLINED_FUNCTION_7_3();

      return v28(v25, v26, v27, v28, v29, v30, v31, v32, sub_2167A8E30, a10, a11, a12);
    }

    v37 = *(v12 + 232);
    v36 = *(v12 + 240);
    v38 = *(v12 + 224);

    v39 = OUTLINED_FUNCTION_8();
    sub_21677A510(v39, v40);

    (*(v37 + 8))(v36, v38);
  }

  else
  {

    v34 = OUTLINED_FUNCTION_8();
    sub_21677A510(v34, v35);
  }

  OUTLINED_FUNCTION_0_148();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_216B04FCC()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 264);
  if (v0)
  {
    v7 = sub_216B05714;
  }

  else
  {
    v7 = sub_216B05100;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216B05100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v57 = v16;
  v17 = *(v16 + 192);
  v18 = *(v16 + 176);
  v19 = *(v16 + 160);
  v20 = *(*(v16 + 168) + 16);
  v20(*(v16 + 184), v17, v19);
  v20(v18, v17, v19);
  v21 = sub_217007C84();
  v22 = sub_21700EDA4();
  v23 = os_log_type_enabled(v21, v22);
  v25 = *(v16 + 176);
  v24 = *(v16 + 184);
  v27 = *(v16 + 160);
  v26 = *(v16 + 168);
  if (v23)
  {
    v55 = v22;
    v28 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v28 = 136446466;
    v29 = sub_217006DC4();
    v31 = v30;
    v32 = *(v26 + 8);
    v32(v24, v27);
    v33 = sub_2166A85FC(v29, v31, &v56);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    sub_217006DF4();
    v34 = sub_21700E594();
    v36 = v35;
    v32(v25, v27);
    v37 = sub_2166A85FC(v34, v36, &v56);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_216679000, v21, v55, "Performing dialog action %{public}s with kind %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v32 = *(v26 + 8);
    v32(v25, v27);
    v32(v24, v27);
  }

  *(v16 + 344) = v32;
  v39 = *(v16 + 144);
  v38 = *(v16 + 152);
  v40 = *(v16 + 128);
  v41 = *(v16 + 136);
  sub_217006DF4();
  (*(v41 + 104))(v39, *MEMORY[0x277D2A928], v40);
  *(v16 + 376) = sub_217006DD4() & 1;
  v42 = *(v41 + 8);
  v42(v39, v40);
  v42(v38, v40);
  v43 = *(v16 + 40);
  v44 = *(v16 + 48);
  __swift_project_boxed_opaque_existential_1((v16 + 16), v43);
  *(v16 + 352) = (*(v44 + 112))(v43, v44);
  v45 = swift_task_alloc();
  *(v16 + 360) = v45;
  *v45 = v16;
  v45[1] = sub_216B05444;
  v53 = *(v16 + 192);

  return MEMORY[0x282189CE0](v53, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216B05444()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 264);
  if (v0)
  {
    v7 = sub_216B05800;
  }

  else
  {
    v7 = sub_216B05594;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216B05594()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 160);

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = *(v0 + 376);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if ((v8() & 1) != 0 && (v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_50();
  }

  OUTLINED_FUNCTION_2_102();
  sub_21677A510(v6, v5);
  v9 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v10 + 104))(v7, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_216B05714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v14 = v12[26];
  v13 = v12[27];
  v15 = v12[25];

  v16 = OUTLINED_FUNCTION_8();
  sub_21677A510(v16, v17);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_0_148();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 2));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216B05800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v29 = v12[43];
  v14 = v12[26];
  v13 = v12[27];
  v16 = v12[24];
  v15 = v12[25];
  v17 = v12[20];

  v18 = OUTLINED_FUNCTION_8();
  sub_21677A510(v18, v19);
  v29(v16, v17);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_0_148();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 2));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_216B05914()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2958);
  __swift_project_value_buffer(v0, qword_27CAC2958);
  return sub_217007C94();
}

uint64_t sub_216B05994()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_21677A0BC;

  return sub_216B044E8(v7, v5, v3, v8);
}

unint64_t sub_216B05A48(uint64_t a1)
{
  result = sub_2166E0978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B05A70(uint64_t a1)
{
  result = sub_216B05A98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B05A98()
{
  result = qword_27CAC2970;
  if (!qword_27CAC2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2970);
  }

  return result;
}

uint64_t sub_216B05B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayLibraryArtistAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B05BA0(uint64_t a1)
{
  v2 = type metadata accessor for PlayLibraryArtistAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B05BFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RadioShowContextMenu()
{
  result = qword_280E3BB80;
  if (!qword_280E3BB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B05CB8()
{
  sub_21700C994();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_2167B83B4();
      if (v2 <= 0x3F)
      {
        sub_2167B84AC();
        if (v3 <= 0x3F)
        {
          sub_2167EE974();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216B05F48()
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_280E73D20);
  oslog = sub_217007C84();
  v1 = sub_21700EDA4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_2166A85FC(0xD000000000000029, 0x8000000217088AA0, &v5);
    _os_log_impl(&dword_216679000, oslog, v1, "💬 %{public}s Dismissing the AMSUIEngagementViewController", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }
}

void sub_216B060C4(uint64_t a1, void *a2, void *a3)
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E73D20);
  v6 = a2;
  v7 = a3;
  oslog = sub_217007C84();
  v8 = sub_21700EDA4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_2166A85FC(0xD000000000000031, 0x8000000217088A60, &v16);
    *(v9 + 12) = 2114;
    *(v9 + 14) = v6;
    *v10 = v6;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v11 = v6;
    v12 = sub_21700F884();
    v14 = sub_2166A85FC(v12, v13, &v16);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_216679000, oslog, v8, "💬 %{public}s Finished action with result: %{public}@, error: %{public}s", v9, 0x20u);
    sub_2166ADB8C(v10);
    OUTLINED_FUNCTION_6();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }
}

uint64_t sub_216B06358()
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_280E73D20);
  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_2166A85FC(0xD00000000000004ALL, 0x8000000217088A10, &v6);
    _os_log_impl(&dword_216679000, v1, v2, "💬 %{public}s Successfully presented the AMSUIEngagementViewController", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return 1;
}

id sub_216B06508()
{
  v2.receiver = v0;
  v2.super_class = _s32EngagementViewControllerDelegateCMa();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_216B06560()
{
  v2.receiver = v0;
  v2.super_class = _s32EngagementViewControllerDelegateCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_216B06600()
{
  sub_216B066F8();
  if (v0 <= 0x3F)
  {
    sub_216A7FAA4(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2169109EC(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216B066F8()
{
  if (!qword_280E45810)
  {
    type metadata accessor for VerticalVideoLockup();
    sub_2166D88EC(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
    sub_2166D88EC(&qword_280E3CD78, type metadata accessor for VerticalVideoLockup);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_280E45810);
    }
  }
}

uint64_t sub_216B067F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA020);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = sub_217009D24();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  sub_217009D14();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_217009D04();
  sub_216697664(v13, &qword_27CABA020);
  v16 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680) + 36);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F0);
  v18 = v16 + *(v17 + 36);
  sub_217009374();
  *(v18 + *(type metadata accessor for InsettableConcentricRectangle() + 20)) = 0;
  v19 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E0) + 36);
  sub_216B0A8EC();
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E8) + 36)) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  OUTLINED_FUNCTION_34();
  (*(v20 + 16))(a4, v5);
  *v16 = a1;
  *(v16 + 8) = a2 & 1;
  *(v16 + 16) = a3;
  v21 = v16 + *(v17 + 40);
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
}

uint64_t sub_216B06A48@<X0>(uint64_t a1@<X8>)
{
  v173 = a1;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2A28);
  OUTLINED_FUNCTION_1();
  v169 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2A30);
  OUTLINED_FUNCTION_1();
  v170 = v6;
  v171 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v8);
  v9 = type metadata accessor for VerticalVideoLockupView(0);
  v156 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v157 = v10;
  OUTLINED_FUNCTION_70(&v139[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v178 = v15;
  v179 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_70(&v139[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47_1();
  v175 = v22;
  v164 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  v174 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &v139[-v31];
  v33 = type metadata accessor for VerticalVideoLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  v149 = &v139[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36);
  v147 = &v139[-v37];
  MEMORY[0x28223BE20](v38);
  v40 = &v139[-v39];
  MEMORY[0x28223BE20](v41);
  v43 = &v139[-v42];
  MEMORY[0x28223BE20](v44);
  v46 = &v139[-v45];
  MEMORY[0x28223BE20](v47);
  v49 = &v139[-v48];
  MEMORY[0x28223BE20](v50);
  v52 = &v139[-v51];
  v151 = type metadata accessor for VerticalVideoLockupContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v53);
  v55 = &v139[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2A38);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v57);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2A40);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v59);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2A48);
  OUTLINED_FUNCTION_1();
  v162 = v60;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_105();
  v177 = v62;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2A50);
  OUTLINED_FUNCTION_1();
  v160 = v63;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v65);
  v165 = v1;
  v66 = *v1;
  sub_2167B596C();
  sub_216DE8FE8();
  v67 = *&v52[v33[7]];
  sub_21700DF14();
  OUTLINED_FUNCTION_1_127();
  sub_216B0AB94(v52, v68);
  if (v67)
  {
    v146 = sub_216B80C28(v67);
    v145 = v69;
  }

  else
  {
    v146 = 0;
    v145 = 0;
  }

  sub_216DE8FE8();
  v70 = *&v49[v33[8]];
  sub_21700DF14();
  OUTLINED_FUNCTION_1_127();
  sub_216B0AB94(v49, v71);
  if (v70)
  {
    v144 = sub_216B80C28(v70);
    v143 = v72;
  }

  else
  {
    v144 = 0;
    v143 = 0;
  }

  sub_216DE8FE8();
  v73 = &v46[v33[9]];
  v74 = v73[1];
  v141 = *v73;
  v142 = v74;
  sub_21700DF14();
  sub_216B0AB94(v46, type metadata accessor for VerticalVideoLockup);
  sub_216DE8FE8();
  v140 = v43[v33[12]];
  sub_216B0AB94(v43, type metadata accessor for VerticalVideoLockup);
  sub_216DE8FE8();
  sub_2166A6EA4();
  sub_216B0AB94(v40, type metadata accessor for VerticalVideoLockup);
  v75 = v147;
  sub_216DE8FE8();
  v76 = v148;
  sub_2166A6EA4();
  sub_216B0AB94(v75, type metadata accessor for VerticalVideoLockup);
  v77 = type metadata accessor for ContentDescriptor();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v77);
  v152 = v32;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v76, &qword_27CAB6A00);
    v79 = 23;
  }

  else
  {
    v79 = *v76;
    sub_216B0AB94(v76, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v184[0]) = v79;
  v148 = sub_216E41068(v184, 0);
  v147 = v80;
  v81 = v149;
  sub_216DE8FE8();
  v82 = *(v81 + v33[10]);
  OUTLINED_FUNCTION_1_127();
  sub_216B0AB94(v81, v83);
  v84 = v174;
  sub_216CCB314();
  v85 = sub_216EB939C();
  v86 = v179;
  v87 = v178 + 8;
  v88 = *(v178 + 8);
  v88(v84, v179);
  v89 = v175;
  sub_216CCB314();
  v90 = v154;
  sub_216A8EA78(v154);
  v174 = v88;
  v175 = v87;
  v88(v89, v86);
  v91 = sub_217005EF4();
  v92 = __swift_getEnumTagSinglePayload(v90, 1, v91) != 1;
  sub_216697664(v90, &qword_27CABA820);
  v93 = v182;
  v94 = v181;
  *v55 = v180;
  *(v55 + 1) = v94;
  v95 = v146;
  *(v55 + 4) = v93;
  *(v55 + 5) = v95;
  v96 = v144;
  *(v55 + 6) = v145;
  *(v55 + 7) = v96;
  v97 = v141;
  *(v55 + 8) = v143;
  *(v55 + 9) = v97;
  *(v55 + 10) = v142;
  v55[88] = v140;
  v98 = v151;
  sub_2167A4788();
  v99 = &v55[v98[10]];
  v100 = v147;
  *v99 = v148;
  v99[1] = v100;
  v55[v98[11]] = v82;
  v55[v98[12]] = v85 & 1;
  v55[v98[13]] = v92;
  v101 = &v153[*(v150 + 36)];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v103 = sub_217008B34();
  __swift_project_value_buffer(v103, qword_280E73A88);
  sub_216B0A8EC();
  v101[*(v102 + 36)] = 0;
  sub_216B0A944();
  *(&v181 + 1) = v179;
  v182 = sub_2166D88EC(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(&v180);
  sub_216CCB314();
  v104 = v155;
  v105 = (v155 + *(v176 + 36));
  sub_2167B7D58(&v180, (v105 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D88EC(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v105 = sub_217008CF4();
  v105[1] = v106;
  sub_2167A4788();
  v107 = __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  v153 = v139;
  MEMORY[0x28223BE20](v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_26_1();
  sub_216B0A8EC();
  v109 = swift_allocObject();
  sub_216B0A944();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  v158 = v66;
  v111 = v110;
  v154 = type metadata accessor for ContextMenuPreview(0);
  v156 = sub_216B0A9F0();
  v157 = sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0);
  v138 = sub_2166D88EC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v112 = v176;
  sub_21700A394();

  sub_216697664(v104, &qword_27CAC2A40);
  v113 = v166;
  v114 = sub_216CCB314();
  v158 = v139;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_26_1();
  v115 = v178;
  v116 = v179;
  v117 = *(v178 + 16);
  v118 = OUTLINED_FUNCTION_16_46(&v185);
  v117(v118);
  LODWORD(v165) = (*(v115 + 88))(v109, v116) != *MEMORY[0x277D2A410];
  v174(v109, v116);
  v184[3] = v116;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v184);
  (v117)(boxed_opaque_existential_1, v113, v116);
  v120 = OUTLINED_FUNCTION_16_46(&v186);
  v117(v120);
  v121 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v122 = swift_allocObject();
  v123 = (*(v115 + 32))(v122 + v121, v109, v116);
  MEMORY[0x28223BE20](v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA000);
  *&v180 = v112;
  *(&v180 + 1) = v111;
  *&v181 = v154;
  *(&v181 + 1) = v156;
  v182 = v157;
  v183 = v138;
  *&v137 = OUTLINED_FUNCTION_12_51();
  *(&v137 + 1) = sub_21686AF54();
  v125 = v163;
  v126 = v167;
  v127 = v177;
  sub_21700AA24();

  sub_216697664(v184, &unk_27CABF7A0);
  *&v180 = v125;
  *(&v180 + 1) = v124;
  v181 = v137;
  v128 = OUTLINED_FUNCTION_12_51();
  v129 = v168;
  v130 = v172;
  sub_21700A724();
  (*(v169 + 8))(v126, v130);
  *&v180 = v130;
  *(&v180 + 1) = v128;
  OUTLINED_FUNCTION_12_51();
  v131 = v159;
  v132 = v171;
  sub_21700A8D4();
  (*(v170 + 8))(v129, v132);
  v174(v113, v179);
  (*(v162 + 8))(v127, v125);
  KeyPath = swift_getKeyPath();
  v134 = v173;
  (*(v160 + 32))(v173, v131, v161);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2A70);
  v136 = v134 + *(result + 36);
  *v136 = KeyPath;
  *(v136 + 8) = 0;
  return result;
}

uint64_t sub_216B07BE8@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v24 = a1;
  v22 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for VerticalVideoLockup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v21 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_2170067A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_216CCB314();
  sub_216DE8FE8();
  swift_storeEnumTagMultiPayload();
  sub_2168A85FC();
  sub_216B0AB94(v2, type metadata accessor for MenuContext);
  sub_216B0AB94(v5, type metadata accessor for VerticalVideoLockup);
  v16 = *(v10 + 32);
  v16(v12, v15, v9);
  sub_216B0A944();
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  v16((v18 + v17), v12, v9);
  result = sub_216B0A944();
  v20 = v24;
  *v24 = sub_21680CDC8;
  v20[1] = v18;
  return result;
}

uint64_t sub_216B07F20@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for VerticalVideoLockup();
  MEMORY[0x28223BE20](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2170067A4();
  v16 = sub_2166D88EC(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(&v14);
  sub_216CCB314();
  sub_216DE8FE8();
  sub_2166A6EA4();
  sub_216B0AB94(v4, type metadata accessor for VerticalVideoLockup);
  LOBYTE(v4) = v13 != 0;
  sub_216697664(v12, &qword_27CAB6DB0);
  v5 = type metadata accessor for ContextMenuPreview(0);
  v6 = v5[7];
  v7 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  v8 = v5[8];
  v9 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v9);
  sub_2167B8EF0(&v14, a1 + v5[6]);
  *(a1 + v5[5]) = v4;
  v10 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
}

uint64_t sub_216B080DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v27 = sub_2170075A4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VerticalVideoLockup();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE8FE8();
  sub_2166A6EA4();
  sub_216B0AB94(v12, type metadata accessor for VerticalVideoLockup);
  sub_216CCB314();
  type metadata accessor for VerticalVideoLockupView(0);
  v13 = sub_216C0C534(&v28);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v21 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2167B9BDC(&v33, v9, &v28, v5, v2, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  sub_216697664(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v27);
  sub_216697664(&v28, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_216697664(&v33, &qword_27CAB6DB0);
}

uint64_t sub_216B083D0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA020);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v42 - v2;
  v45 = sub_217009D24();
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = sub_217007474();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680);
  MEMORY[0x28223BE20](v44);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA028);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v49[3] = sub_2170067A4();
  v49[4] = sub_2166D88EC(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(v49);
  sub_216CCB314();
  sub_2167BB664(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  sub_2166A6EA4();
  v19 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_216697664(v18, &qword_27CABA028);
    sub_216697664(v15, &qword_27CABA028);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010);
    v21 = v48;
    v22 = 1;
  }

  else
  {
    sub_2166A6EA4();
    sub_217007434();
    sub_2170073E4();
    v23 = *(v5 + 8);
    v42 = v12;
    v24 = v43;
    v23(v7, v43);
    v25 = &v15[*(v19 + 20)];
    v26 = *v25;
    v27 = v25[1];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    sub_2167B8890(v26, v27);
    sub_2167C505C();
    v29 = v42;
    sub_2170073F4();

    v23(v10, v24);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v30 = qword_280E73AA0;
    v31 = byte_280E73AA8;
    v32 = qword_280E73AB0;
    v33 = v47;
    sub_217009D14();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v45);
    sub_217009D04();
    sub_216697664(v33, &qword_27CABA020);
    v34 = &v29[*(v44 + 36)];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F0);
    v36 = v29;
    v37 = &v34[*(v35 + 36)];
    sub_217009374();
    sub_216697664(v18, &qword_27CABA028);
    *&v37[*(type metadata accessor for InsettableConcentricRectangle() + 20)] = 0;
    v38 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E0) + 36)];
    sub_216B0A8EC();
    *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E8) + 36)] = 256;
    *v34 = v30;
    v34[8] = v31;
    *(v34 + 2) = v32;
    v39 = &v34[*(v35 + 40)];
    *v39 = swift_getKeyPath();
    v39[8] = 0;

    sub_216B0AB94(v15, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
    v40 = v48;
    sub_216735354();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010);
    *(v40 + *(v20 + 36)) = xmmword_21701F260;
    v21 = v40;
    v22 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
}

uint64_t sub_216B08A54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for VerticalVideoLockupView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  v5[40] = 0;
  return result;
}

uint64_t sub_216B08B30(uint64_t a1)
{
  result = sub_2166D88EC(qword_280E37270, type metadata accessor for VerticalVideoLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B08B88()
{
  v0 = type metadata accessor for VerticalVideoLockupContent(0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2A98);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - v3);
  sub_2166A6EA4();
  v5 = v2[13];
  v6 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v4 + v5, 1, 1, v6);
  sub_216B0A8EC();
  v7 = swift_allocObject();
  sub_216B0A944();
  v8 = v2[14];
  *(v4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v9 = v4 + v2[15];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  v4[5] = sub_216B0B030;
  v4[6] = v7;
  v4[7] = 0;
  v4[8] = 0;
  sub_216E31760();
  return sub_216697664(v4, &qword_27CAC2A98);
}

uint64_t sub_216B08DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AA0);
  sub_216B08E44(a1, a2 + *(v4 + 44));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AA8);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_216B08E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = _s7MusicUI18ArtworkContentViewVMa_0(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v86 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  v9 = type metadata accessor for VerticalVideoLockupContent(0);
  sub_2166A6EA4();
  v10 = (a1 + v9[10]);
  v12 = *v10;
  v11 = v10[1];
  v13 = &v8[*(v4 + 28)];
  *v13 = v12;
  v13[1] = v11;
  v14 = *(v4 + 32);
  v84 = v8;
  v15 = &v8[v14];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = *(a1 + 80);
  if (v16)
  {
    v90 = *(a1 + 72);
    v88 = MEMORY[0x277D84F90];
  }

  else
  {
    v90 = 0;
    v88 = 0;
  }

  v17 = *(a1 + 88);
  if (v17 == 2)
  {
    sub_2167B8890(v12, v11);
    sub_21700DF14();
LABEL_6:
    if (qword_27CAB5D58 != -1)
    {
      swift_once();
    }

    v18 = &qword_27CAC29F8;
    goto LABEL_15;
  }

  if (v17)
  {
    sub_2167B8890(v12, v11);
    sub_21700DF14();
  }

  else
  {
    v19 = sub_21700F7D4();
    sub_2167B8890(v12, v11);
    sub_21700DF14();

    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (qword_27CAB5D48 != -1)
  {
    swift_once();
  }

  v18 = &qword_27CAC29E8;
LABEL_15:
  v87 = *v18;

  KeyPath = swift_getKeyPath();
  v85 = v16;
  if (v17 == 2)
  {
LABEL_16:
    if (qword_27CAB5D60 != -1)
    {
      swift_once();
    }

    v20 = &qword_27CAC2A00;
    goto LABEL_25;
  }

  if (v17)
  {
  }

  else
  {
    v21 = sub_21700F7D4();

    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (qword_27CAB5D50 != -1)
  {
    swift_once();
  }

  v20 = &qword_27CAC29F0;
LABEL_25:
  v82 = *v20;

  sub_21700B3B4();
  sub_2170083C4();
  v67 = v121;
  v68 = v119;
  v65 = v124;
  v66 = v123;
  v118 = 1;
  v117 = v120;
  v116 = v122;
  v22 = *(a1 + v9[11]);
  v23 = *(a1 + v9[12]);
  v24 = *(a1 + 48);
  v89 = *(a1 + 40);
  v25 = *(a1 + v9[13]);
  v26 = qword_27CAB5D68;
  sub_21700DF14();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_27CAC2A08;
  type metadata accessor for ExplicitBadgingPresenter();
  sub_2166D88EC(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);

  v29 = sub_217008CF4();
  if (!v24)
  {

    v29 = 0;
    v31 = 0;
    v89 = 0;
LABEL_35:
    v76 = 0;
    v77 = 0;
    v75 = 0;
    v78 = 0;
    goto LABEL_38;
  }

  v30 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v30 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {

    v29 = 0;
    v31 = 0;
    v89 = 0;
    v24 = 0;
    goto LABEL_35;
  }

  v31 = v28;
  if (v22)
  {
    v32 = sub_217009154();
  }

  else
  {
    v32 = sub_2170091A4();
  }

  v91[0] = v29;
  v91[1] = v31;
  v91[2] = v89;
  v91[3] = v24;
  LOBYTE(v91[4]) = v22;
  BYTE1(v91[4]) = v23;
  *(&v91[4] + 2) = v112;
  HIWORD(v91[4]) = v113;
  v91[5] = v27;
  LOBYTE(v91[6]) = v25;
  *(&v91[6] + 1) = *v111;
  HIDWORD(v91[6]) = *&v111[3];
  v91[7] = v32;
  v76 = v91[6];
  v77 = v91[4];
  v95 = v29;
  v96 = v31;
  v97 = v89;
  v98 = v24;
  LOBYTE(v99) = v22;
  BYTE1(v99) = v23;
  HIWORD(v99) = v113;
  *(&v99 + 2) = v112;
  v100 = v27;
  LOBYTE(v101) = v25;
  HIDWORD(v101) = *&v111[3];
  *(&v101 + 1) = *v111;
  v78 = v32;
  v102 = v32;
  sub_21680DAEC(v91, v93);
  sub_21680DB48(&v95);
  v75 = v27;
LABEL_38:
  v74 = swift_getKeyPath();
  v114 = 0;
  v73 = swift_getKeyPath();
  v33 = qword_27CAB5D70;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = *(a1 + 64);
  if (v34)
  {
    v71 = *(a1 + 56);
    v63 = MEMORY[0x277D84F90];
  }

  else
  {
    v71 = 0;
    v63 = 0;
  }

  v81 = v24;
  v35 = qword_27CAB5D78;
  v72 = qword_27CAC2A10;

  sub_21700DF14();
  if (v35 != -1)
  {
    swift_once();
  }

  v64 = v34;
  v79 = v31;
  v80 = v27;
  v36 = v29;
  v37 = qword_27CAC2A18;
  v38 = swift_getKeyPath();
  v39 = qword_27CAB5D80;
  v62 = v37;

  if (v39 != -1)
  {
    swift_once();
  }

  v70 = qword_27CAC2A20;
  v60 = swift_getKeyPath();
  v110 = 0;
  sub_216B0A8EC();
  v40 = v118;
  v41 = v117;
  v42 = v116;
  v43 = v69;
  sub_216B0A8EC();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AB0);
  v45 = (v43 + v44[12]);
  v46 = v85;
  *v45 = v90;
  v45[1] = v46;
  v47 = v87;
  v48 = v88;
  v45[2] = 0;
  v45[3] = v48;
  v45[4] = KeyPath;
  v45[5] = v47;
  v45[6] = v82;
  v49 = v43 + v44[16];
  *v49 = 0;
  *(v49 + 8) = v40;
  v50 = v67;
  *(v49 + 16) = v68;
  *(v49 + 24) = v41;
  *(v49 + 32) = v50;
  *(v49 + 40) = v42;
  v51 = v65;
  *(v49 + 48) = v66;
  *(v49 + 56) = v51;
  v52 = v44[20];
  v61 = v36;
  v91[0] = v36;
  v91[1] = v79;
  v91[2] = v89;
  v91[3] = v81;
  v91[4] = v77;
  v91[5] = v75;
  v91[6] = v76;
  v91[7] = v78;
  v91[8] = v74;
  v91[9] = 1;
  LOBYTE(v91[10]) = 0;
  HIDWORD(v91[10]) = *&v115[3];
  *(&v91[10] + 1) = *v115;
  v91[11] = v73;
  v91[12] = v80;
  v91[13] = v72;
  memcpy((v43 + v52), v91, 0x70uLL);
  v53 = v44[24];
  v55 = v63;
  v54 = v64;
  v92[0] = v71;
  v92[1] = v64;
  v92[2] = 0;
  v92[3] = v63;
  v92[4] = v38;
  v68 = v38;
  v56 = v62;
  v92[5] = v62;
  v92[6] = v70;
  v57 = v60;
  v92[7] = v60;
  v92[8] = 1;
  LOBYTE(v92[9]) = 0;
  memcpy((v43 + v53), v92, 0x49uLL);

  v58 = v85;
  sub_2167770D0(v90, v85, 0, v88);

  sub_2166A6EA4();
  sub_2166A6EA4();
  sub_216B0AB94(v84, _s7MusicUI18ArtworkContentViewVMa_0);
  v93[0] = v71;
  v93[1] = v54;
  v93[2] = 0;
  v93[3] = v55;
  v93[4] = v68;
  v93[5] = v56;
  v93[6] = v70;
  v93[7] = v57;
  v93[8] = 1;
  v94 = 0;
  sub_216697664(v93, &qword_27CABC6F8);
  v95 = v61;
  v96 = v79;
  v97 = v89;
  v98 = v81;
  v99 = v77;
  v100 = v75;
  v101 = v76;
  v102 = v78;
  v103 = v74;
  v104 = 1;
  v105 = 0;
  *v106 = *v115;
  *&v106[3] = *&v115[3];
  v107 = v73;
  v108 = v80;
  v109 = v72;
  sub_216697664(&v95, &qword_27CAB8C38);
  sub_2167C4DF0(v90, v58, 0, v88);

  return sub_216B0AB94(v86, _s7MusicUI18ArtworkContentViewVMa_0);
}

uint64_t sub_216B09834@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_217008B44();
  MEMORY[0x28223BE20](v32);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2170090F4();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AD0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v31 - v8);
  v10 = [objc_opt_self() tertiarySystemFillColor];
  v11 = sub_21700AC44();
  v12 = sub_21700B3B4();
  v14 = v13;
  v15 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AD8) + 36);
  sub_216B09BCC(v1, v15);
  v16 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AE0) + 36));
  *v16 = v12;
  v16[1] = v14;
  *v9 = v11;
  v17 = v1 + *(_s7MusicUI18ArtworkContentViewVMa_0(0) + 24);
  v18 = *v17;
  if ((*(v17 + 8) & 1) == 0)
  {

    sub_21700ED94();
    v19 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v18, 0);
    (*(v4 + 8))(v6, v31);
  }

  sub_216B0A5BC();
  sub_21700B3B4();
  sub_2170083C4();
  v20 = (v9 + *(v7 + 36));
  v21 = v35;
  *v20 = v34;
  v20[1] = v21;
  v20[2] = v36;
  v22 = *(v32 + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_217009294();
  (*(*(v24 - 8) + 104))(&v3[v22], v23, v24);
  __asm { FMOV            V0.2D, #7.0 }

  *v3 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  sub_216E2FF18();
  sub_216B0AB94(v3, MEMORY[0x277CDFC08]);
  return sub_216735B74(v9);
}

uint64_t sub_216B09BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_21700C444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - v17;
  v19 = sub_217007474();
  v48 = *(v19 - 8);
  v49 = v19;
  MEMORY[0x28223BE20](v19);
  v50 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v47 = &v41 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v45 = *(v23 - 8);
  v46 = v23;
  MEMORY[0x28223BE20](v23);
  v44 = &v41 - v24;
  sub_2166A6EA4();
  v25 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v15, 1, v25) == 1)
  {
    sub_216697664(v15, &qword_27CAB6D60);
    v26 = sub_21700C4B4();
    v27 = v18;
    v28 = 1;
  }

  else
  {
    v29 = sub_21700C4B4();
    v42 = v9;
    v30 = v29;
    (*(*(v29 - 8) + 16))(v18, v15, v29);
    sub_216B0AB94(v15, type metadata accessor for Artwork);
    v27 = v18;
    v28 = 0;
    v26 = v30;
    v9 = v42;
  }

  __swift_storeEnumTagSinglePayload(v27, v28, 1, v26);
  sub_216B0A1E0();
  sub_216B0A5BC();
  sub_217007434();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v25) == 1)
  {
    sub_216697664(v12, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_216697664(v5, &qword_27CAB7530);
    }
  }

  else
  {
    (*(v7 + 16))(v5, &v12[*(v25 + 20)], v6);
    sub_216B0AB94(v12, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  v31 = v47;
  v32 = v50;
  sub_2170073E4();
  (*(v7 + 8))(v9, v6);
  v33 = v49;
  v34 = *(v48 + 8);
  v34(v32, v49);
  v35 = (a1 + *(_s7MusicUI18ArtworkContentViewVMa_0(0) + 20));
  v36 = *v35;
  v37 = v35[1];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  sub_2167B8890(v36, v37);
  sub_2167C505C();
  v39 = v44;
  sub_2170073F4();

  v34(v31, v33);
  return (*(v45 + 32))(v43, v39, v46);
}

void sub_216B0A1E0()
{
  v1 = v0;
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_2166A6EA4();
  v15 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  v26 = v3;
  v27 = v2;
  v16 = *(v6 + 16);
  v16(v8, v14, v5);
  sub_216B0AB94(v14, type metadata accessor for Artwork);
  v17 = sub_21700C474();
  v18 = *(v6 + 8);
  v18(v8, v5);
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    v14 = v11;
    v3 = v26;
    v2 = v27;
LABEL_4:
    sub_216697664(v14, &qword_27CAB6D60);
    goto LABEL_5;
  }

  v16(v8, v11, v5);
  sub_216B0AB94(v11, type metadata accessor for Artwork);
  v23 = sub_21700C484();
  v18(v8, v5);
  v25 = v17 >= 1 && v23 >= 1 && v17 < v23;
  v3 = v26;
  v2 = v27;
  if (v25)
  {
    sub_216B0A5BC();
    return;
  }

LABEL_5:
  v19 = v1 + *(_s7MusicUI18ArtworkContentViewVMa_0(0) + 24);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    sub_21700ED94();
    v21 = sub_217009C34();
    sub_217007BC4();

    v22 = v28;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v20, 0);
    (*(v3 + 8))(v22, v2);
  }
}

double sub_216B0A5BC()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(_s7MusicUI18ArtworkContentViewVMa_0(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = *&v10[1];
  }

  return v7 / 1.77777778;
}

uint64_t sub_216B0A75C()
{
  result = sub_21700AD14();
  qword_27CAC29F0 = result;
  return result;
}

uint64_t sub_216B0A7B0()
{
  result = sub_21700AD34();
  qword_27CAC2A00 = result;
  return result;
}

uint64_t sub_216B0A804(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t *a4)
{
  a2();
  a3();
  v6 = sub_217009E34();

  *a4 = v6;
  return result;
}

uint64_t sub_216B0A85C()
{
  result = sub_21700AD14();
  qword_27CAC2A10 = result;
  return result;
}

uint64_t sub_216B0A87C()
{
  result = sub_217009E94();
  qword_27CAC2A18 = result;
  return result;
}

uint64_t sub_216B0A89C()
{
  result = sub_21700AD34();
  qword_27CAC2A20 = result;
  return result;
}

uint64_t sub_216B0A8EC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B0A944()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B0A99C()
{
  v0 = type metadata accessor for VerticalVideoLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216B080DC();
}

unint64_t sub_216B0A9F0()
{
  result = qword_27CAC2A58;
  if (!qword_27CAC2A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2A40);
    sub_216B0AA7C();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2A58);
  }

  return result;
}

unint64_t sub_216B0AA7C()
{
  result = qword_27CAC2A60;
  if (!qword_27CAC2A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2A38);
    sub_2166D88EC(&qword_27CAC2A68, type metadata accessor for VerticalVideoLockupContent);
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2A60);
  }

  return result;
}

uint64_t sub_216B0AB94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216B0AC14()
{
  sub_2169109EC(319, &qword_280E2A2A8, &qword_27CAB6D68, &unk_2170153A0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2166DAA70(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2166DAA70(319, &qword_27CAC2A88, &type metadata for VerticalVideoLockup.HeadlineTextStyle, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216A7FAA4(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_216B0AD90()
{
  result = qword_27CAC2A90;
  if (!qword_27CAC2A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216B0A9F0();
    sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_2166D88EC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    sub_21686AF54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2A90);
  }

  return result;
}

uint64_t sub_216B0B030@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for VerticalVideoLockupContent(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216B08DBC(v4, a1);
}

void sub_216B0B0DC()
{
  sub_216A7FAA4(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2166DAA70(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216B0B1D8()
{
  result = qword_27CAC2AF0;
  if (!qword_27CAC2AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2AE8);
    sub_216B0B290();
    sub_2166D9530(&qword_280E2A808, &qword_27CAB72E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2AF0);
  }

  return result;
}

unint64_t sub_216B0B290()
{
  result = qword_27CAC2AF8;
  if (!qword_27CAC2AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2B00);
    sub_216B0B374(&qword_27CAC2B08, &qword_27CAC2B10, &unk_217065080, sub_216B0B3F8);
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2AF8);
  }

  return result;
}

uint64_t sub_216B0B374(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216B0B3F8()
{
  result = qword_27CAC2B18;
  if (!qword_27CAC2B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2B20);
    sub_216B0B4B0();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2B18);
  }

  return result;
}

unint64_t sub_216B0B4B0()
{
  result = qword_27CAC2B28;
  if (!qword_27CAC2B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2AD0);
    sub_216B0B53C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2B28);
  }

  return result;
}

unint64_t sub_216B0B53C()
{
  result = qword_27CAC2B30;
  if (!qword_27CAC2B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2AD8);
    sub_2166D9530(&qword_27CAC2B38, &qword_27CAC2AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2B30);
  }

  return result;
}

uint64_t sub_216B0B620@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v120 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v113 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  v111 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v110 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v109 = v19;
  OUTLINED_FUNCTION_3_1();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v105 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v105 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v105 - v27;
  sub_21700D7A4();
  OUTLINED_FUNCTION_5_75();
  sub_21700CE04();
  v115 = v6;
  v29 = *(v6 + 16);
  v119 = v4;
  v116 = v29;
  v117 = v6 + 16;
  v29(v9, v124, v4);
  v112 = v28;
  v30 = v118;
  v114 = v9;
  sub_21700D734();
  v31 = 25705;
  v32 = 0xE200000000000000;
  v121 = a1;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v37 = *(v11 + 8);
  v36 = v11 + 8;
  v38 = v26;
  v39 = v37;
  v37(v38, v30);
  if (!v35)
  {
    goto LABEL_4;
  }

  v105 = v33;
  v32 = 0x8000000217081C10;
  sub_21700CE04();
  v40 = sub_21700CD24();
  v41 = v39;
  v43 = v42;
  v41(v23, v30);
  v44 = v30;
  if (v43)
  {

    v39 = v41;
    v31 = 0xD000000000000014;
LABEL_4:
    v45 = sub_21700E2E4();
    sub_2166D7ECC(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v47 = v46;
    v48 = type metadata accessor for SuperHeroLockup();
    *v47 = v31;
    v47[1] = v32;
    v47[2] = v48;
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    v49 = OUTLINED_FUNCTION_25_34();
    v50(v49);
    v39(v121, v30);
    return sub_216697664(v120, &qword_27CAB6D58);
  }

  v52 = type metadata accessor for SuperHeroLockup();
  v108 = v36;
  v53 = v52;
  *&v122 = v105;
  *(&v122 + 1) = v35;
  v54 = v120;
  sub_21700F364();
  v106 = v41;
  v107 = v53;
  *(v54 + *(v53 + 52)) = v40;
  v55 = v41;
  v56 = v112;
  sub_21700CE04();
  v57 = v124;
  sub_21700D2E4();
  v55(v56, v44);
  type metadata accessor for Artwork();
  sub_21700CE04();
  v58 = v114;
  v59 = v116;
  v116(v114, v57, v119);
  sub_2166D7ECC(&qword_280E2BF60, type metadata accessor for Artwork);
  sub_21700D734();
  sub_21700CE04();
  v60 = v58;
  v59(v58, v57, v119);
  sub_21700D734();
  type metadata accessor for VideoArtwork();
  OUTLINED_FUNCTION_16_47();
  sub_21700CE04();
  v61 = v124;
  v62 = v119;
  v59(v58, v124, v119);
  v63 = v107;
  v105 = sub_2166D7ECC(qword_280E44448, type metadata accessor for VideoArtwork);
  v64 = v120;
  sub_21700D734();
  OUTLINED_FUNCTION_16_47();
  sub_21700CE04();
  v116(v60, v61, v62);
  sub_21700D734();
  sub_21700CE04();
  sub_21700CDB4();
  v65 = OUTLINED_FUNCTION_4_83();
  v66 = v118;
  v67 = v106;
  v106(v65, v118);
  v68 = v107;
  v69 = (v64 + v107[7]);
  *v69 = v63;
  v69[1] = v56;
  sub_21700CE04();
  sub_21700CDB4();
  v70 = OUTLINED_FUNCTION_4_83();
  v67(v70, v66);
  v71 = (v64 + v68[8]);
  *v71 = v63;
  v71[1] = v56;
  sub_21700CE04();
  sub_21700CDB4();
  v72 = OUTLINED_FUNCTION_4_83();
  v73 = v118;
  v67(v72, v118);
  v74 = (v64 + v68[9]);
  *v74 = v63;
  v74[1] = v56;
  sub_21700CE04();
  sub_21700CDB4();
  v75 = OUTLINED_FUNCTION_4_83();
  v67(v75, v73);
  v76 = (v64 + v68[10]);
  *v76 = v63;
  v76[1] = v56;
  sub_21700CE04();
  sub_21700CDB4();
  v77 = OUTLINED_FUNCTION_4_83();
  v67(v77, v73);
  v78 = (v64 + v68[11]);
  *v78 = v63;
  v78[1] = v56;
  v79 = v109;
  sub_21700CE04();
  LOBYTE(v63) = sub_21700CD44();
  v80 = v79;
  v81 = v73;
  v67(v80, v73);
  *(v64 + v68[12]) = v63 & 1;
  OUTLINED_FUNCTION_5_75();
  v82 = v110;
  v83 = v121;
  sub_21700CE04();
  LOBYTE(v63) = sub_21700CD44();
  v67(v82, v81);
  *(v64 + v68[18]) = v63 & 1;
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_5_75();
  sub_21700CE04();
  v116(v114, v124, v119);
  sub_2166D7ECC(qword_280E40390, type metadata accessor for ContentDescriptor);
  sub_21700D734();
  sub_21700CE04();
  sub_21700D2E4();
  v84 = v118;
  v85 = v106;
  v106(v56, v118);
  OUTLINED_FUNCTION_5_75();
  v86 = v111;
  v87 = v83;
  sub_21700CE04();
  v88 = sub_21700CD44();
  v85(v86, v84);
  v89 = v68;
  v90 = v68[19];
  v91 = v120;
  *(v120 + v90) = v88 & 1;
  OUTLINED_FUNCTION_5_75();
  sub_21700CE04();
  sub_21700CDB4();
  v92 = OUTLINED_FUNCTION_4_83();
  v85(v92, v84);
  v93 = (v91 + v89[20]);
  *v93 = v88;
  v93[1] = v56;
  sub_21700CE04();
  v94 = v114;
  v116(v114, v124, v119);
  sub_21691E81C();
  sub_21700D734();
  v95 = v123;
  v96 = v91 + v89[21];
  *v96 = v122;
  *(v96 + 16) = v95;
  sub_21700CE04();
  v97 = v56;
  sub_21700CDB4();
  v98 = OUTLINED_FUNCTION_4_83();
  v99 = v84;
  v85(v98, v84);
  v100 = v85;
  v101 = (v91 + v89[25]);
  *v101 = v94;
  v101[1] = v97;
  OUTLINED_FUNCTION_5_75();
  v102 = v113;
  sub_21700CE04();
  LOBYTE(v94) = sub_21700CD44();
  v103 = OUTLINED_FUNCTION_25_34();
  v104(v103);
  v100(v87, v99);
  result = (v100)(v102, v99);
  *(v91 + v89[22]) = v94 & 1;
  return result;
}

uint64_t sub_216B0C214@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AccessoryBadge();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v132 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v134 = v11;
  v12 = type metadata accessor for ContentDescriptor(0);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v133 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v138 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  v139 = &v127 - v19;
  v20 = type metadata accessor for VideoArtwork(0);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v136 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  v137 = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  v140 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  v141 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  v30 = OUTLINED_FUNCTION_36(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v144 = v31;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47_1();
  v145 = v33;
  v34 = type metadata accessor for Artwork(0);
  v35 = OUTLINED_FUNCTION_36(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v142 = v36;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  v143 = v38;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v39);
  v41 = &v127 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v127 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v46 = OUTLINED_FUNCTION_36(v45);
  MEMORY[0x28223BE20](v46);
  v48 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v127 - v50;
  if (!sub_216FD14DC())
  {

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2B48);
    sub_2167880BC();
    swift_allocError();
    *v69 = xmmword_217014E10;
    *(v69 + 16) = v68;
    swift_willThrow();
    return OUTLINED_FUNCTION_0_149();
  }

  v127 = a1;
  v135 = a2;
  v130 = v3;
  v52 = sub_216FD1388();
  v54 = v53;
  v55 = type metadata accessor for SuperHeroLockup();
  v56 = v55[5];
  v146 = v52;
  v147 = v54;
  v129 = v56;
  sub_21700F364();
  *(a3 + v55[13]) = sub_216FD37A8();
  v148 = v55;
  v57 = v55[6];
  v131 = a3;
  OUTLINED_FUNCTION_24_29(v57);
  v128 = v58;
  if (sub_216FD28C8())
  {
    sub_216FD2660();
    OUTLINED_FUNCTION_8_67();
    sub_216B0CFFC();
    v59 = v130;
    sub_216C7DA84(v41, v51);
    v60 = v59;
    if (v59)
    {
      OUTLINED_FUNCTION_1_128();
      sub_216B0D054(v44, v61);
      OUTLINED_FUNCTION_0_149();

      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = v131;
LABEL_11:
      v77 = v148;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_1_128();
    sub_216B0D054(v44, v72);
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v60 = v130;
  }

  v67 = v131;
  type metadata accessor for Artwork();
  v73 = 1;
  OUTLINED_FUNCTION_29_32(v51, v71);
  sub_2167A4788();
  if (sub_216FD3080())
  {
    v74 = v143;
    sub_216FD2D04();
    OUTLINED_FUNCTION_8_67();
    v75 = v142;
    sub_216B0CFFC();
    sub_216C7DA84(v75, v48);
    if (v60)
    {
      OUTLINED_FUNCTION_1_128();
      sub_216B0D054(v74, v76);
      OUTLINED_FUNCTION_0_149();

      v62 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v63 = 1;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_1_128();
    sub_216B0D054(v74, v78);
    v73 = 0;
  }

  v79 = 1;
  OUTLINED_FUNCTION_29_32(v48, v73);
  sub_2167A4788();
  if (sub_216FD2CA4())
  {
    v80 = v141;
    sub_216FD2928();
    OUTLINED_FUNCTION_9_66();
    v81 = v140;
    sub_216B0CFFC();
    sub_216DEFB24(v81);
    v77 = v148;
    if (v60)
    {
      OUTLINED_FUNCTION_2_103();
      sub_216B0D054(v80, v82);
      OUTLINED_FUNCTION_0_149();

      v62 = 0;
      v65 = 0;
      v66 = 0;
      v63 = 1;
      v64 = 1;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_2_103();
    sub_216B0D054(v80, v83);
    v79 = 0;
  }

  else
  {
    v77 = v148;
  }

  type metadata accessor for VideoArtwork();
  v84 = 1;
  OUTLINED_FUNCTION_29_32(v145, v79);
  sub_2167A4788();
  if (sub_216FD3348())
  {
    v85 = v137;
    sub_216FD30E0();
    OUTLINED_FUNCTION_9_66();
    v86 = v136;
    sub_216B0CFFC();
    sub_216DEFB24(v86);
    if (v60)
    {
      OUTLINED_FUNCTION_2_103();
      sub_216B0D054(v85, v87);
      OUTLINED_FUNCTION_0_149();

      v62 = 0;
      v66 = 0;
LABEL_36:
      v63 = 1;
      v64 = 1;
      v65 = 1;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_2_103();
    sub_216B0D054(v85, v88);
    v84 = 0;
  }

  OUTLINED_FUNCTION_29_32(v144, v84);
  sub_2167A4788();
  v89 = (v67 + v77[7]);
  *v89 = 0;
  v89[1] = 0;
  sub_216FD16C8();
  v90 = OUTLINED_FUNCTION_138();
  if (v92)
  {
    v90 = sub_216FD1574();
  }

  OUTLINED_FUNCTION_17_46(v90, v91, v77[8]);
  v93 = sub_216FD18B4();
  v94 = v139;
  if (v93)
  {
    v95 = sub_216FD1760();
  }

  else
  {
    v95 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_17_46(v95, v96, v77[9]);
  if (sub_216FD1AA0())
  {
    v97 = sub_216FD194C();
  }

  else
  {
    v97 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_17_46(v97, v98, v77[10]);
  if (sub_216FD1C8C())
  {
    v99 = sub_216FD1B38();
  }

  else
  {
    v99 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_17_46(v99, v100, v77[11]);
  *(v67 + v77[12]) = 0;
  *(v67 + v77[18]) = sub_216FD3A90() & 1;
  if (sub_216FD3748())
  {
    sub_216FD33A8();
    v101 = v133;
    sub_216B0CFFC();
    sub_21689C518(v101, v102, v103, v104, v105, v106, v107, v108, v127, v128, SWORD1(v128), SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
    if (v60)
    {
      OUTLINED_FUNCTION_12_52();
      OUTLINED_FUNCTION_0_149();

      v66 = 0;
      v62 = 1;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_12_52();
    v109 = 0;
  }

  else
  {
    v109 = 1;
  }

  v110 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(v94, v109, 1, v110);
  sub_2167A4788();
  OUTLINED_FUNCTION_24_29(v77[23]);
  *(v67 + v77[19]) = sub_216FD3B44() & 1;
  sub_216FD4008();
  v111 = OUTLINED_FUNCTION_138();
  if (v113)
  {
    v111 = sub_216FD3DFC();
  }

  OUTLINED_FUNCTION_17_46(v111, v112, v77[20]);
  if (!sub_216FD4458())
  {
    v118 = 0;
    v119 = 0;
    v120 = 0;
LABEL_60:
    v122 = v67 + v77[21];
    *v122 = v118;
    *(v122 + 8) = v119;
    *(v122 + 16) = v120;
    v123 = (v67 + v77[25]);
    v124 = v135;
    *v123 = v127;
    v123[1] = v124;
    v125 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v125);
    v126 = sub_216FD44B8();
    result = OUTLINED_FUNCTION_0_149();
    *(v67 + v77[22]) = v126 & 1;
    return result;
  }

  sub_216FD40D4(v134);
  v114 = v132;
  sub_216B0CFFC();
  v115 = sub_216B91BA0(v114);
  if (!v60)
  {
    v118 = v115;
    v119 = v116;
    v121 = v117;
    OUTLINED_FUNCTION_11_56();
    v120 = v121 & 1;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_0_149();
  OUTLINED_FUNCTION_11_56();
  v62 = 1;
  v63 = 1;
  v64 = 1;
  v65 = 1;
  v66 = 1;
LABEL_44:
  sub_216788110(v67 + v129);
  result = sub_216697664(v128, &qword_27CAB6DB0);
  if (v62)
  {
    OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_249();
    result = OUTLINED_FUNCTION_249();
    if (!v63)
    {
LABEL_46:
      if (!v64)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }
  }

  else if (!v63)
  {
    goto LABEL_46;
  }

  result = sub_216697664(v67 + v77[14], &qword_27CAB6D60);
  if (!v64)
  {
LABEL_47:
    if (!v65)
    {
      goto LABEL_48;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = sub_216697664(v67 + v77[15], &qword_27CAB6D60);
  if (!v65)
  {
LABEL_48:
    if (!v62)
    {
      goto LABEL_49;
    }

LABEL_55:
    result = sub_216697664(v67 + v77[17], &qword_27CABBEA8);
    if (!v66)
    {
      return result;
    }

    goto LABEL_56;
  }

LABEL_54:
  result = sub_216697664(v67 + v77[16], &qword_27CABBEA8);
  if (v62)
  {
    goto LABEL_55;
  }

LABEL_49:
  if (!v66)
  {
    return result;
  }

LABEL_56:
  OUTLINED_FUNCTION_249();
  sub_216697664(v67 + v77[23], &qword_27CAB6DB0);
  return sub_216697664(v67 + v77[24], &qword_27CAB6A00);
}

uint64_t sub_216B0CCC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_29();
  OUTLINED_FUNCTION_26_36();
  type metadata accessor for VideoArtwork();
  OUTLINED_FUNCTION_10_62();
  if (v3)
  {
    sub_2166A6EA4();
    result = OUTLINED_FUNCTION_10_62();
    if (!v3)
    {
      return sub_216697664(v0, &qword_27CABBEA8);
    }
  }

  else
  {
    sub_216B0D0AC();
    return OUTLINED_FUNCTION_27_36();
  }

  return result;
}

uint64_t sub_216B0CDC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_29();
  OUTLINED_FUNCTION_26_36();
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_10_62();
  if (v3)
  {
    sub_2166A6EA4();
    result = OUTLINED_FUNCTION_10_62();
    if (!v3)
    {
      return sub_216697664(v0, &qword_27CAB6D60);
    }
  }

  else
  {
    sub_216B0D0AC();
    return OUTLINED_FUNCTION_27_36();
  }

  return result;
}

uint64_t sub_216B0CFFC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B0D054(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B0D0AC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t View.musicPageMetrics(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicPageMetricsModifier();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B0D228(a1, v8);
  sub_21692C88C(v8, v11);
  MEMORY[0x21CE9B900](v11, a2, v9, a3);
  return sub_216B0D28C(v11);
}

uint64_t sub_216B0D228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMetrics.PageFields(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B0D28C(uint64_t a1)
{
  v2 = type metadata accessor for MusicPageMetricsModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216B0D2E8()
{
  result = qword_27CAC2B50;
  if (!qword_27CAC2B50)
  {
    type metadata accessor for MusicPageMetricsModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2B50);
  }

  return result;
}

uint64_t sub_216B0D340(uint64_t a1, char a2)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_216B0D484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2B58);
  OUTLINED_FUNCTION_1();
  v94 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v71 - v7;
  sub_21700EA74();
  OUTLINED_FUNCTION_1();
  v86 = v10;
  v87 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v84 = v11;
  v12 = *(a1 + 16);
  v85 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v95 = v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2B60);
  v91 = v12;
  v15 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v92 = v16;
  MEMORY[0x28223BE20](v17);
  v96 = v71 - v18;
  OUTLINED_FUNCTION_5_0();
  v20 = sub_2166D9530(v19, &qword_27CAC2B58);
  v97 = a1;
  v21 = *(a1 + 24);
  v22 = OUTLINED_FUNCTION_6_72(&qword_280E2AC30);
  v82 = v21;
  v102 = v21;
  v103 = v22;
  OUTLINED_FUNCTION_0_9();
  WitnessTable = swift_getWitnessTable();
  v105[0] = v4;
  v93 = v15;
  v105[1] = v15;
  v89 = v20;
  v105[2] = v20;
  v83 = WitnessTable;
  v105[3] = WitnessTable;
  v24 = sub_217008B74();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v90 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v88 = v71 - v30;
  v31 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  v36 = v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = v71 - v38;
  memcpy(v105, v2, 0xB9uLL);
  memcpy(__dst, v2, 0x78uLL);
  if (__dst[1] == 1)
  {
    goto LABEL_5;
  }

  v81 = __dst[1];
  v78 = v36;
  v79 = v33;
  v77 = v8;
  v80 = __dst[0];
  memcpy(v104, (v2 + 16), sizeof(v104));
  memcpy(v100, v2, sizeof(v100));
  v40 = v105[17];
  v41 = v105[18];
  sub_2168A5278(v100, v99);
  v42 = sub_216B0D340(v40, v41);
  if (!v42)
  {
    sub_21669987C(__dst, &qword_27CABA180);
    v36 = v78;
    v33 = v79;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v24);
    OUTLINED_FUNCTION_0_8();
    swift_getWitnessTable();
    sub_2168D4034(v36, v39);
    v68 = *(v33 + 8);
    v68(v36, v31);
    goto LABEL_6;
  }

  v72 = v105[16];
  v73 = v105[15];
  v74 = v4;
  v71[0] = v42;
  type metadata accessor for SocialBadgingViewPresenter();
  v76 = v39;
  OUTLINED_FUNCTION_3_100();
  sub_216B0EA7C(v43, v44);
  OUTLINED_FUNCTION_9_67();
  v45 = sub_2168D38EC();
  v75 = v26;
  v46 = v45;

  v73(v46);

  OUTLINED_FUNCTION_9_67();
  v47 = sub_2168D38EC();
  v71[1] = v47;

  v99[24] = v47;
  OUTLINED_FUNCTION_11_57();
  v48 = swift_allocObject();
  v49 = v91;
  v50 = v82;
  v48[2] = v91;
  v48[3] = v50;
  memcpy(v48 + 4, v105, 0xB9uLL);
  v51 = v81;
  v48[28] = v80;
  v48[29] = v51;
  memcpy(v48 + 30, v104, 0x68uLL);
  v52 = v71[0];
  v48[43] = v71[0];
  sub_216B0E958(__dst, v99);
  v53 = *(v97 - 8);
  v72 = *(v53 + 16);
  v73 = (v53 + 16);
  v72(v99, v105, v97);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9D8);
  sub_216B0E9C8();
  v54 = v84;
  sub_21700EA44();
  v55 = v95;
  sub_21700A984();

  (*(v86 + 8))(v54, v87);

  (*(v85 + 8))(v55, v49);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1A78);
  v56 = v77;
  sub_217007DB4();
  swift_endAccess();
  OUTLINED_FUNCTION_11_57();
  v57 = swift_allocObject();
  v57[2] = v49;
  v57[3] = v50;
  v58 = v81;
  v57[4] = v80;
  v57[5] = v58;
  memcpy(v57 + 6, v104, 0x68uLL);
  memcpy(v57 + 19, v105, 0xB9uLL);
  v57[43] = v52;
  v72(v99, v105, v97);

  v59 = v90;
  v60 = v93;
  v61 = v74;
  v62 = v96;
  sub_21700ABE4();

  (*(v94 + 8))(v56, v61);
  (*(v92 + 8))(v62, v60);
  OUTLINED_FUNCTION_0_8();
  v63 = swift_getWitnessTable();
  v64 = v88;
  sub_2166C24DC(v59, v24, v63);
  v65 = v75;
  v66 = *(v75 + 8);
  v66(v59, v24);
  sub_2166C24DC(v64, v24, v63);
  v66(v64, v24);
  v67 = v78;
  (*(v65 + 32))(v78, v59, v24);
  __swift_storeEnumTagSinglePayload(v67, 0, 1, v24);
  v39 = v76;
  sub_2168D4034(v67, v76);
  v68 = *(v79 + 8);
  v68(v67, v31);
LABEL_6:
  OUTLINED_FUNCTION_0_8();
  v101 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_76();
  v69 = swift_getWitnessTable();
  sub_2166C24DC(v39, v31, v69);
  return (v68)(v39, v31);
}

uint64_t sub_216B0DDA8(const void *a1, const void *a2, uint64_t a3)
{
  v3[41] = sub_21700EA34();
  v3[42] = sub_21700EA24();
  memcpy(v3 + 2, a1, 0xB9uLL);
  memcpy(v3 + 26, a2, 0x78uLL);
  v7 = swift_task_alloc();
  v3[43] = v7;
  type metadata accessor for SocialBadgingView();
  *v7 = v3;
  v7[1] = sub_216B0DEB4;

  return sub_216B0E03C(v3 + 26, a3);
}

uint64_t sub_216B0DEB4()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v4 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B0DFE4, v4, v3);
}

uint64_t sub_216B0DFE4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216B0E03C(void *__src, uint64_t a2)
{
  *(v3 + 136) = a2;
  memcpy((v3 + 16), __src, 0x78uLL);
  *(v3 + 144) = *(v2 + 168);
  *(v3 + 200) = *(v2 + 184);
  sub_21700EA34();
  *(v3 + 160) = sub_21700EA24();
  v5 = sub_21700E9B4();
  *(v3 + 168) = v5;
  *(v3 + 176) = v4;

  return MEMORY[0x2822009F8](sub_216B0E0F8, v5, v4);
}

uint64_t sub_216B0E0F8()
{
  type metadata accessor for SocialBadgingViewPresenter();
  OUTLINED_FUNCTION_3_100();
  sub_216B0EA7C(v1, v2);
  v0[23] = sub_2170081B4();
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_216B0E1F0;
  v4 = v0[17];

  return sub_2168D39D0(v4, v0 + 2);
}

uint64_t sub_216B0E1F0()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_216B0E32C, v5, v4);
}

uint64_t sub_216B0E32C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216B0E384(uint64_t *a1, void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19[-v13];
  result = sub_216CE1310(a2, *a1);
  if (result)
  {
    v16 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a5;
    v17[5] = a6;
    memcpy(v17 + 6, a3, 0xB9uLL);
    memcpy(v17 + 30, a2, 0x78uLL);
    v17[45] = a4;
    v18 = type metadata accessor for SocialBadgingView();
    (*(*(v18 - 8) + 16))(v19, a3, v18);
    sub_2168A5278(a2, v19);

    sub_216888C34(0, 0, v14, &unk_217044918, v17);

    return sub_21669987C(v14, &unk_27CABFAC0);
  }

  return result;
}

uint64_t sub_216B0E530(int a1, int a2, int a3, void *__src, const void *a5, uint64_t a6)
{
  memcpy(v6 + 2, __src, 0xB9uLL);
  memcpy(v6 + 26, a5, 0x78uLL);
  v9 = swift_task_alloc();
  v6[41] = v9;
  type metadata accessor for SocialBadgingView();
  *v9 = v6;
  v9[1] = sub_216B0E618;

  return sub_216B0E03C(v6 + 26, a6);
}

uint64_t sub_216B0E618()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216B0E6FC()
{
  type metadata accessor for SocialBadgingViewPresenter();
  swift_allocObject();
  return sub_2168D3EFC();
}

uint64_t sub_216B0E734()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216B0E790(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 185))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216B0E7D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216B0E8A4()
{
  v2 = v0[43];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_216A523A8;

  return sub_216B0DDA8(v0 + 4, v0 + 28, v2);
}

uint64_t sub_216B0E958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B0E9C8()
{
  result = qword_280E2A040;
  if (!qword_280E2A040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9D8);
    sub_216B0EA7C(&unk_280E4A410, MEMORY[0x277D2AB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A040);
  }

  return result;
}

uint64_t sub_216B0EA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B0EAD8(int a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[45];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2169D1708;

  return sub_216B0E530(a1, v4, v5, v1 + 6, v1 + 30, v6);
}

uint64_t type metadata accessor for SearchQueryContextMenu()
{
  result = qword_27CAC2B68;
  if (!qword_27CAC2B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B0EC24()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_2167EE974();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MenuConfiguration(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216B0ECE4()
{
  v1 = v0;
  v2 = sub_2170075A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    ContextMenu = type metadata accessor for SearchQueryContextMenu();
    v7 = (v0 + *(ContextMenu + 24));
    v8 = v7[1];
    v9 = v7[2];
    v21 = *v7;
    v22 = v8;
    v23 = v9;

    sub_21700DF14();
    v10 = sub_21700DF14();
    sub_216C0C548(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    v18 = sub_216C64FF8(&v21, v5, v1 + *(ContextMenu + 28));

    (*(v3 + 8))(v5, v2);

    type metadata accessor for MenuBuilder();
    sub_216C647A0(v18);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

BOOL sub_216B0EE98(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_216B0EEBC(uint64_t a1, int a2)
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

uint64_t sub_216B0EF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a7;
  v8[53] = a8;
  v8[50] = a5;
  v8[51] = a6;
  v8[48] = a3;
  v8[49] = a4;
  v8[46] = a1;
  v8[47] = a2;
  v13 = sub_217006DE4();
  v8[54] = v13;
  OUTLINED_FUNCTION_2(v13);
  v8[55] = v14;
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v15 = sub_217006E04();
  v8[58] = v15;
  OUTLINED_FUNCTION_2(v15);
  v8[59] = v16;
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v17 = sub_217006E24();
  v8[63] = v17;
  OUTLINED_FUNCTION_2(v17);
  v8[64] = v18;
  v8[65] = OUTLINED_FUNCTION_80();
  v19 = sub_217006BF4();
  v8[66] = v19;
  OUTLINED_FUNCTION_2(v19);
  v8[67] = v20;
  v8[68] = OUTLINED_FUNCTION_80();
  v8[69] = *(a5 - 8);
  v8[70] = OUTLINED_FUNCTION_80();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v8[71] = v21;
  OUTLINED_FUNCTION_2(v21);
  v8[72] = v22;
  v8[73] = OUTLINED_FUNCTION_80();
  v23 = sub_21700D2A4();
  v8[74] = v23;
  OUTLINED_FUNCTION_2(v23);
  v8[75] = v24;
  v8[76] = OUTLINED_FUNCTION_80();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v8[77] = v25;
  OUTLINED_FUNCTION_2(v25);
  v8[78] = v26;
  v8[79] = OUTLINED_FUNCTION_80();
  v8[80] = *(a6 - 8);
  v8[81] = OUTLINED_FUNCTION_80();
  v8[27] = a5;
  v8[28] = a6;
  v8[29] = a7;
  v8[30] = a8;
  v27 = type metadata accessor for PlayMusicContainerItemAction();
  v8[82] = v27;
  OUTLINED_FUNCTION_2(v27);
  v8[83] = v28;
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v29 = sub_21700BAB4();
  v8[89] = v29;
  OUTLINED_FUNCTION_2(v29);
  v8[90] = v30;
  v8[91] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[92] = sub_21700EA24();
  v32 = sub_21700E9B4();
  v8[93] = v32;
  v8[94] = v31;

  return MEMORY[0x2822009F8](sub_216B0F3A0, v32, v31);
}

uint64_t sub_216B0F3A0()
{
  v54 = v0;
  v2 = *(v0 + 656);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  *(v0 + 760) = type metadata accessor for ObjectGraph();
  sub_21700E094();
  WitnessTable = swift_getWitnessTable();
  sub_2169FC06C(v3, v2, WitnessTable, v53);
  v7 = v53[1];
  *(v0 + 768) = v53[0];
  *(v0 + 784) = v7;
  OUTLINED_FUNCTION_16_3();
  if (((*(*(v0 + 48) + 8))() & 1) == 0)
  {
    if (qword_27CAB5D88 != -1)
    {
      OUTLINED_FUNCTION_5_77();
    }

    v15 = OUTLINED_FUNCTION_29_33();
    v16 = __swift_project_value_buffer(v15, qword_27CAC2B78);
    v17 = OUTLINED_FUNCTION_9_68(v16);
    v1(v17);
    v18 = OUTLINED_FUNCTION_17_47();
    v1(v18);
    v19 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_42_26();
    os_log_type_enabled(v19, v20);
    OUTLINED_FUNCTION_51_11();
    if (v21)
    {
      v52 = *(v0 + 560);
      v56 = v19;
      v51 = *(v0 + 400);
      OUTLINED_FUNCTION_115_0();
      *&v53[0] = OUTLINED_FUNCTION_27_37();
      v22 = OUTLINED_FUNCTION_41_21(4.8752e-34);
      v23(v22);
      OUTLINED_FUNCTION_69();
      sub_21700E594();
      OUTLINED_FUNCTION_38_26();
      v24 = *(v3 + 8);
      v25 = OUTLINED_FUNCTION_31_1();
      v24(v25);
      v26 = OUTLINED_FUNCTION_69();
      v29 = sub_2166A85FC(v26, v27, v28);

      *(v4 + 4) = v29;
      OUTLINED_FUNCTION_12_53();
      v38 = OUTLINED_FUNCTION_35_30(v30, v31, v32, v33, v34, v35, v36, v37, v51, v52);
      v39(v38);
      OUTLINED_FUNCTION_69();
      sub_21700E594();
      OUTLINED_FUNCTION_38_26();
      v40 = OUTLINED_FUNCTION_39();
      v24(v40);
      v41 = OUTLINED_FUNCTION_69();
      v5 = sub_2166A85FC(v41, v42, v43);

      *(v4 + 14) = v5;
      v44 = v56;
      OUTLINED_FUNCTION_28_30(&dword_216679000, v45, v4, "Playing %{public}s from %{public}s");
      OUTLINED_FUNCTION_53_17();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_26_4();
    }

    else
    {

      v24 = *(v3 + 8);
      v46 = OUTLINED_FUNCTION_39();
      v24(v46);
      v47 = OUTLINED_FUNCTION_31_1();
      v24(v47);
    }

    v56 = OUTLINED_FUNCTION_11_58();
    sub_21700DF14();
    sub_21677A3F0(v5, v24);
    v48 = swift_task_alloc();
    *(v0 + 864) = v48;
    *v48 = v0;
    OUTLINED_FUNCTION_7_73(v48);
    OUTLINED_FUNCTION_37_32(v49);

    __asm { BRAA            X8, X16 }
  }

  v8 = *(v0 + 656);
  v9 = *(v0 + 376);
  sub_21694EF28((v0 + 16), *(v0 + 408), *(v0 + 424));
  v10 = *(v8 + 60);
  v11 = swift_task_alloc();
  *(v0 + 800) = v11;
  *v11 = v0;
  v11[1] = sub_216B0F7C4;
  v12 = *(v0 + 728);
  v13 = *(v0 + 384);

  return sub_21694EFA0(v0 + 96, v12, v13, v9 + v10);
}

uint64_t sub_216B0F7C4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 808) = v0;

  v5 = *(v2 + 752);
  v6 = *(v2 + 744);
  if (v0)
  {
    v7 = sub_216B106B0;
  }

  else
  {
    v7 = sub_216B0F8F8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216B0F8F8()
{
  sub_2167AD8C0(v0 + 96, v0 + 136);
  if (!*(v0 + 160))
  {
    v22 = *(v0 + 728);
    v23 = *(v0 + 720);
    v24 = *(v0 + 712);
    sub_2167AD91C(v0 + 96);
    v26 = *(v23 + 8);
    v25 = v23 + 8;
    v26(v22, v24);
    if (qword_27CAB5D88 != -1)
    {
      OUTLINED_FUNCTION_5_77();
    }

    v27 = OUTLINED_FUNCTION_29_33();
    v28 = __swift_project_value_buffer(v27, qword_27CAC2B78);
    v29 = OUTLINED_FUNCTION_9_68(v28);
    v2(v29);
    v30 = OUTLINED_FUNCTION_17_47();
    v2(v30);
    v31 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_42_26();
    os_log_type_enabled(v31, v32);
    OUTLINED_FUNCTION_51_11();
    if (v33)
    {
      v71 = *(v0 + 400);
      v72 = *(v0 + 560);
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_27_37();
      v34 = OUTLINED_FUNCTION_41_21(4.8752e-34);
      v35(v34);
      OUTLINED_FUNCTION_69();
      sub_21700E594();
      OUTLINED_FUNCTION_38_26();
      v36 = *(v24 + 8);
      v37 = OUTLINED_FUNCTION_31_1();
      v36(v37);
      v38 = OUTLINED_FUNCTION_69();
      v41 = sub_2166A85FC(v38, v39, v40);

      *(v25 + 4) = v41;
      OUTLINED_FUNCTION_12_53();
      v50 = OUTLINED_FUNCTION_35_30(v42, v43, v44, v45, v46, v47, v48, v49, v71, v72);
      v51(v50);
      OUTLINED_FUNCTION_69();
      sub_21700E594();
      OUTLINED_FUNCTION_38_26();
      v52 = OUTLINED_FUNCTION_39();
      v36(v52);
      v53 = OUTLINED_FUNCTION_69();
      v1 = sub_2166A85FC(v53, v54, v55);

      *(v25 + 14) = v1;
      OUTLINED_FUNCTION_28_30(&dword_216679000, v56, v25, "Playing %{public}s from %{public}s");
      OUTLINED_FUNCTION_53_17();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_26_4();
    }

    else
    {

      v36 = *(v24 + 8);
      v65 = OUTLINED_FUNCTION_39();
      v36(v65);
      v66 = OUTLINED_FUNCTION_31_1();
      v36(v66);
    }

    OUTLINED_FUNCTION_11_58();
    sub_21700DF14();
    sub_21677A3F0(v1, v36);
    v67 = swift_task_alloc();
    *(v0 + 864) = v67;
    *v67 = v0;
    OUTLINED_FUNCTION_7_73(v67);
    OUTLINED_FUNCTION_37_32(v68);

    __asm { BRAA            X8, X16 }
  }

  sub_2166A0F18((v0 + 136), v0 + 176);
  if (qword_27CAB5D88 != -1)
  {
    OUTLINED_FUNCTION_5_77();
  }

  v3 = *(v0 + 704);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 376);
  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_27CAC2B78);
  (*(v4 + 16))(v3, v6, v5);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 704);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);
  if (v10)
  {
    v14 = *(v0 + 648);
    v73 = v9;
    v15 = *(v0 + 640);
    v16 = *(v0 + 408);
    v17 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v17 = 136446210;
    (*(v15 + 16))(v14, v11, v16);
    OUTLINED_FUNCTION_69();
    sub_21700E594();
    OUTLINED_FUNCTION_38_26();
    (*(v12 + 8))(v11, v13);
    v18 = OUTLINED_FUNCTION_69();
    v21 = sub_2166A85FC(v18, v19, v20);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_216679000, v8, v73, "Item %{public}s not eligible for playback", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_26_4();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v57 = *(v0 + 584);
  v58 = *(v0 + 576);
  v59 = *(v0 + 568);
  sub_21700E094();
  (*(v58 + 104))(v57, *MEMORY[0x277D21E18], v59);
  v60 = swift_task_alloc();
  *(v0 + 816) = v60;
  *v60 = v0;
  v60[1] = sub_216B0FE80;
  v61 = *(v0 + 616);
  v62 = *(v0 + 608);
  v63 = *(v0 + 584);
  v64 = *(v0 + 384);

  return MEMORY[0x28217F468](v62, v0 + 176, v63, v64, v61);
}

uint64_t sub_216B0FE80()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  v2[103] = v0;

  v6 = OUTLINED_FUNCTION_115();
  v7(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_46_21();
    v10 = sub_216B107D4;
  }

  else
  {
    (*(v2[75] + 8))(v2[76], v2[74]);
    OUTLINED_FUNCTION_46_21();
    v10 = sub_216B10000;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_216B10000()
{
  OUTLINED_FUNCTION_6_73();
  OUTLINED_FUNCTION_36_29();
  v6 = v0[75];
  v14 = v0[74];
  v12 = v7;
  v13 = v0[46];

  v8 = OUTLINED_FUNCTION_8();
  sub_21677A510(v8, v9);
  (*(v5 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 22));
  sub_2167AD91C((v0 + 12));
  (*(v4 + 8))(v12, v1);
  (*(v6 + 104))(v13, *MEMORY[0x277D21CA8], v14);
  OUTLINED_FUNCTION_1_129();

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_216B101C4()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  v3[109] = v0;

  sub_21677A4C0(v3[31], v2[32], v2[33], v2[34]);
  v5 = v3[94];
  v6 = v3[93];
  if (v0)
  {
    v7 = sub_216B1091C;
  }

  else
  {
    v7 = sub_216B10328;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216B106B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  OUTLINED_FUNCTION_6_73();

  v22 = OUTLINED_FUNCTION_8();
  sub_21677A510(v22, v23);
  v24 = OUTLINED_FUNCTION_108();
  v25(v24);
  OUTLINED_FUNCTION_0_150();
  OUTLINED_FUNCTION_2_104();

  OUTLINED_FUNCTION_8_68();
  OUTLINED_FUNCTION_31_4();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216B107D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  OUTLINED_FUNCTION_6_73();
  OUTLINED_FUNCTION_36_29();

  v26 = OUTLINED_FUNCTION_8();
  sub_21677A510(v26, v27);
  (*(v25 + 8))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v22 + 176);
  sub_2167AD91C(v22 + 96);
  v28 = OUTLINED_FUNCTION_108();
  v29(v28);
  OUTLINED_FUNCTION_0_150();
  OUTLINED_FUNCTION_2_104();

  OUTLINED_FUNCTION_8_68();
  OUTLINED_FUNCTION_31_4();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216B1091C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_14();
  v25 = *(v24 + 872);
  *(v24 + 344) = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  if (swift_dynamicCast())
  {
    if ((*(*(v24 + 536) + 88))(*(v24 + 544), *(v24 + 528)) == *MEMORY[0x277D2A8C8])
    {
      v27 = *(v24 + 544);
      v28 = *(v24 + 520);
      v29 = *(v24 + 504);
      v30 = *(v24 + 512);

      v31 = OUTLINED_FUNCTION_115();
      v32(v31);
      (*(v30 + 32))(v28, v27, v29);
      v33 = sub_217007C84();
      sub_21700EDA4();
      OUTLINED_FUNCTION_42_26();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_216679000, v33, v27, "Presenting dialog...", v35, 2u);
        OUTLINED_FUNCTION_6();
      }

      v63 = *(v24 + 416);
      v65 = *(v24 + 400);

      v36 = swift_task_alloc();
      *(v24 + 880) = v36;
      *(v24 + 280) = v65;
      *(v24 + 296) = v63;
      type metadata accessor for PlayMusicContainerItemActionImplementation();
      OUTLINED_FUNCTION_3_101();
      swift_getWitnessTable();
      *v36 = v24;
      v36[1] = sub_216B10C84;
      OUTLINED_FUNCTION_237();

      return sub_2169C6750();
    }

    OUTLINED_FUNCTION_13_48();

    v41 = OUTLINED_FUNCTION_8();
    sub_21677A510(v41, v42);

    v43 = OUTLINED_FUNCTION_108();
    v44(v43);
  }

  else
  {
    OUTLINED_FUNCTION_13_48();

    v39 = OUTLINED_FUNCTION_8();
    sub_21677A510(v39, v40);
  }

  OUTLINED_FUNCTION_0_150();
  v55 = v46;
  v56 = v45;
  v57 = *(v24 + 544);
  v58 = *(v24 + 520);
  v59 = *(v24 + 496);
  v60 = *(v24 + 488);
  v61 = *(v24 + 480);
  v62 = *(v24 + 456);
  v64 = *(v24 + 448);
  __swift_destroy_boxed_opaque_existential_1Tm(v24 + 16);

  OUTLINED_FUNCTION_8_68();
  OUTLINED_FUNCTION_237();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v64, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_216B10C84()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v2 + 888) = v0;

  OUTLINED_FUNCTION_46_21();
  if (v0)
  {
    v8 = sub_216B115EC;
  }

  else
  {
    v8 = sub_216B10D88;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216B10D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v58 = v16;
  v17 = *(v16 + 496);
  v18 = *(v16 + 480);
  v19 = *(v16 + 464);
  v20 = *(*(v16 + 472) + 16);
  v20(*(v16 + 488), v17, v19);
  v20(v18, v17, v19);
  v21 = sub_217007C84();
  v22 = sub_21700EDA4();
  v23 = os_log_type_enabled(v21, v22);
  v25 = *(v16 + 480);
  v24 = *(v16 + 488);
  v27 = *(v16 + 464);
  v26 = *(v16 + 472);
  if (v23)
  {
    v56 = v22;
    v28 = OUTLINED_FUNCTION_115_0();
    v57 = swift_slowAlloc();
    *v28 = 136446466;
    sub_217006DC4();
    v29 = *(v26 + 8);
    v29(v24, v27);
    v30 = OUTLINED_FUNCTION_31_1();
    v33 = sub_2166A85FC(v30, v31, v32);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    sub_217006DF4();
    v34 = sub_21700E594();
    v36 = v35;
    v29(v25, v27);
    v37 = sub_2166A85FC(v34, v36, &v57);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_216679000, v21, v56, "Performing dialog action %{public}s with kind %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v29 = *(v26 + 8);
    v29(v25, v27);
    v29(v24, v27);
  }

  *(v16 + 896) = v29;
  v39 = *(v16 + 448);
  v38 = *(v16 + 456);
  v40 = *(v16 + 432);
  v41 = *(v16 + 440);
  sub_217006DF4();
  (*(v41 + 104))(v39, *MEMORY[0x277D2A928], v40);
  *(v16 + 928) = sub_217006DD4() & 1;
  v42 = *(v41 + 8);
  v43 = OUTLINED_FUNCTION_115();
  v42(v43);
  (v42)(v38, v40);
  v44 = *(v16 + 40);
  v45 = *(v16 + 48);
  __swift_project_boxed_opaque_existential_1((v16 + 16), v44);
  *(v16 + 904) = (*(v45 + 112))(v44, v45);
  v46 = swift_task_alloc();
  *(v16 + 912) = v46;
  *v46 = v16;
  v46[1] = sub_216B110BC;
  v54 = *(v16 + 496);

  return MEMORY[0x282189CE0](v54, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216B110BC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 920) = v0;

  v5 = *(v2 + 752);
  v6 = *(v2 + 744);
  if (v0)
  {
    v7 = sub_216B11714;
  }

  else
  {
    v7 = sub_216B1120C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216B115EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  OUTLINED_FUNCTION_6_73();

  v23 = OUTLINED_FUNCTION_8();
  sub_21677A510(v23, v24);
  v25 = OUTLINED_FUNCTION_108();
  v26(v25);

  OUTLINED_FUNCTION_0_150();
  OUTLINED_FUNCTION_2_104();

  OUTLINED_FUNCTION_8_68();
  OUTLINED_FUNCTION_31_4();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216B11714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v38 = *(v22 + 896);
  OUTLINED_FUNCTION_6_73();
  v23 = *(v22 + 496);
  v24 = *(v22 + 464);

  v25 = OUTLINED_FUNCTION_8();
  sub_21677A510(v25, v26);
  v38(v23, v24);
  v27 = OUTLINED_FUNCTION_108();
  v28(v27);

  OUTLINED_FUNCTION_0_150();
  OUTLINED_FUNCTION_2_104();

  OUTLINED_FUNCTION_8_68();
  OUTLINED_FUNCTION_31_4();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v38, a20, a21, a22);
}

uint64_t sub_216B11868(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = a4[2];
  v13 = a4[3];
  v14 = a4[4];
  v15 = a4[5];
  *v11 = v5;
  v11[1] = sub_2166F2728;

  return sub_216B0EF00(a1, a2, a3, v10, v12, v13, v14, v15);
}

uint64_t sub_216B11934(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B11970(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B119C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216B11A34()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2B78);
  __swift_project_value_buffer(v0, qword_27CAC2B78);
  return sub_217007C94();
}

uint64_t sub_216B11AB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  [*(v0 + 40) resignActive];
  v9 = OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationDidBecomeActiveEventSubscription;
  swift_beginAccess();
  sub_21681A570(v0 + v9, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  result = __swift_getEnumTagSinglePayload(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_21700CC24();

    v12 = *(*(v10 - 8) + 8);
    v12(v8, v10);
    v13 = OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationWillResignActiveEventSubscription;
    swift_beginAccess();
    sub_21681A570(v0 + v13, v4);
    result = __swift_getEnumTagSinglePayload(v4, 1, v10);
    if (result != 1)
    {

      sub_21700CC24();

      v12(v4, v10);
      v14 = [objc_opt_self() defaultCenter];
      [v14 removeObserver_];

      sub_21681A5E0(v1 + v9);
      sub_21681A5E0(v1 + v13);

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216B11D14()
{
  sub_216B11AB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216B11D74()
{
  v1 = *(v0 + 40);
  [v1 becomeActive];
  sub_216B11DE4([v1 isCloudLibraryEnabled]);
  v2 = (sub_2166B5258() & 1) == 0;

  return sub_216B11DF4(v2);
}

uint64_t sub_216B11DE4(char a1)
{
  v2 = *(v1 + 25);
  *(v1 + 25) = a1;
  return sub_216B11E40(v2);
}

uint64_t sub_216B11DF4(char a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  return sub_216B11E04(v2);
}

uint64_t sub_216B11E04(uint64_t result)
{
  if (*(v1 + 24) != (result & 1))
  {
    return sub_21700CC34();
  }

  return result;
}

uint64_t sub_216B11E40(uint64_t result)
{
  if (*(v1 + 25) != (result & 1))
  {
    return sub_21700CC34();
  }

  return result;
}

uint64_t sub_216B11E7C()
{
  v1 = [*(v0 + 40) isCloudLibraryEnabled];

  return sub_216B11DE4(v1);
}

uint64_t sub_216B11EC8()
{
  v0 = (sub_2166B5258() & 1) == 0;

  return sub_216B11DF4(v0);
}

uint64_t sub_216B11F20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_217005974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005934();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_216B12018(uint64_t a1)
{
  result = sub_216B12040();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B12040()
{
  result = qword_27CAC2B90;
  if (!qword_27CAC2B90)
  {
    type metadata accessor for CloudLibraryStatusController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2B90);
  }

  return result;
}

uint64_t sub_216B12098@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v53 - v7;
  v56 = sub_217006224();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_216983738(52);
  v60 = v12;
  v61 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
  v13 = (_s6ActionVMa() - 8);
  v14 = *v13;
  v57 = *(*v13 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v59 = v16;
  *(v16 + 16) = xmmword_217013D90;
  v17 = (v16 + v15);
  v18 = sub_216983738(50);
  v20 = v19;
  *(&__src[3] + 1) = type metadata accessor for ClearRecentSearchesAction();
  *&__src[4] = sub_216B126A4(&qword_280E35B38, type metadata accessor for ClearRecentSearchesAction);
  __swift_allocate_boxed_opaque_existential_1(&__src[2]);
  sub_21700D234();
  sub_217006214();
  v21 = sub_2170061F4();
  v23 = v22;
  v24 = *(v8 + 8);
  v25 = v56;
  v24(v10, v56);
  *&__src[0] = v21;
  *(&__src[0] + 1) = v23;
  *&__src[1] = v18;
  *(&__src[1] + 1) = v20;
  v26 = v58;
  sub_217007ED4();
  sub_217007F04();
  OUTLINED_FUNCTION_0_152();
  v27 = sub_2170061F4();
  v29 = v28;
  v24(v10, v25);
  v30 = &v17[v13[8]];
  *v30 = v27;
  v30[1] = v29;
  memcpy(v17, __src, 0x48uLL);
  sub_2168D36D4(v26, &v17[v13[7]]);
  v31 = &v17[v57];
  v57 = sub_216983738(43);
  v55 = v32;
  sub_217006214();
  v54 = sub_2170061F4();
  v34 = v33;
  v24(v10, v25);
  sub_217007EF4();
  OUTLINED_FUNCTION_0_152();
  v35 = sub_2170061F4();
  v37 = v36;
  v24(v10, v25);
  v38 = &v31[v13[8]];
  *v38 = v35;
  v38[1] = v37;
  *v31 = v54;
  *(v31 + 1) = v34;
  v40 = v62;
  v39 = v63;
  v41 = v55;
  *(v31 + 2) = v57;
  *(v31 + 3) = v41;
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *(v31 + 8) = 0;
  sub_2168D36D4(v26, &v31[v13[7]]);
  v42 = sub_216983738(51);
  sub_216933384(v61, v60, v59, v42, v43, __src);
  sub_2169270E4(v64, v40);
  v44 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v40, 1, v44) == 1)
  {
    goto LABEL_5;
  }

  v45 = v53;
  sub_2169270E4(v40, v53);
  v46 = *(v44 - 8);
  if ((*(v46 + 88))(v45, v44) != *MEMORY[0x277CE0558])
  {
    (*(v46 + 8))(v45, v44);
LABEL_5:
    v47 = type metadata accessor for PresentAlertAction();
    v39[3] = v47;
    v49 = sub_216B126A4(qword_280E3EB18, type metadata accessor for PresentAlertAction);
    v48 = v39;
    goto LABEL_6;
  }

  v47 = type metadata accessor for PresentConfirmationDialogAction();
  v48 = v39;
  v39[3] = v47;
  v49 = sub_216B126A4(qword_280E30130, type metadata accessor for PresentConfirmationDialogAction);
LABEL_6:
  v48[4] = v49;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_21700D234();
  v51 = boxed_opaque_existential_1 + *(v47 + 20);
  *v51 = __src[0];
  *(v51 + 1) = __src[1];
  *(v51 + 4) = *&__src[2];
  return sub_216B1263C(v40);
}

uint64_t sub_216B1263C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B126A4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_216B12724(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  v7 = &v3[*(v6 + 104)];
  *v7 = 0;
  v7[8] = 1;
  OUTLINED_FUNCTION_0_1();
  *&v3[*(v8 + 112)] = 0;
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v10 + 80) - 8) + 32))(&v3[*(v9 + 96)]);
  *v7 = a2;
  v7[8] = a3 & 1;
  return v3;
}

char *sub_216B127F4()
{
  v1 = *v0;
  sub_21667E91C(*(v0 + 2));
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  OUTLINED_FUNCTION_0_1();

  return v0;
}

void sub_216B12888(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = aBlock - v5;
  (*(v7 + 136))(v4);
  v8 = &v1[*(*v1 + 104)];
  if (v8[1])
  {
    v9 = *(v1 + 2);
    if (v9)
    {
      (*(v3 + 16))(v6, &v1[*(*v1 + 96)], v2);

      v9(v6);
      sub_21667E91C(v9);
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    v10 = *v8;
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v12;
    aBlock[4] = sub_216B1362C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169443F0;
    aBlock[3] = &block_descriptor_24;
    v14 = _Block_copy(aBlock);

    v15 = [v11 scheduledTimerWithTimeInterval:0 repeats:v14 block:v10];
    _Block_release(v14);
    OUTLINED_FUNCTION_0_1();
    v17 = *(v16 + 112);
    v18 = *&v1[v17];
    *&v1[v17] = v15;
  }
}

uint64_t sub_216B12B40()
{
  OUTLINED_FUNCTION_0_1();
  type metadata accessor for AnyInvalidationObserver();
  type metadata accessor for AbstractInvalidationObserver();
  OUTLINED_FUNCTION_0_153();
  swift_getWitnessTable();
  v1 = sub_216B12C38(v0);

  return v1;
}

uint64_t sub_216B12BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyProtoRequestConvertibleIntent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_216B12C38(uint64_t a1)
{
  OUTLINED_FUNCTION_65_3();
  v2 = swift_allocObject();
  sub_216B130B4(a1);
  return v2;
}

uint64_t sub_216B12C88@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PageEventTrigger();
  type metadata accessor for ExpirationDateObserver();
  OUTLINED_FUNCTION_0_153();
  swift_getWitnessTable();
  type metadata accessor for SpecializedInvalidationObserverBox();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + 16) + *(**(v2 + 16) + 280);

    return sub_2168CF10C(v3, a1);
  }

  else
  {
    v5 = sub_2170061E4();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }
}

uint64_t sub_216B12E9C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_216B13024()
{
  v0 = sub_216B13004();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_216B130B4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SpecializedInvalidationObserverBox();
  *(v2 + 16) = sub_216B12E9C(a1);
  return v2;
}

uint64_t sub_216B131B8()
{
  sub_2168D88D8();
  v0 = OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216B13294()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_216B133BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 2);
    if (v8)
    {
      (*(v4 + 16))(v6, &result[*(*result + 96)], a3);

      v8(v6);
      sub_21667E91C(v8);

      return (*(v4 + 8))(v6, a3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_216B13514()
{

  sub_216B12888(v0);
}

uint64_t sub_216B13550()
{
  sub_216B127F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216B1365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v30 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v33 = v14;
  v34 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v29 = v15;
  MEMORY[0x28223BE20](v16);
  v17 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v28 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_21700CE04();
  v22 = v7;
  v23 = *(v7 + 16);
  v35 = v5;
  v23(v12, a2, v5);
  v24 = v32;
  sub_21700D224();
  if (v24)
  {
    (*(v22 + 8))(a2, v35);
    return (*(v33 + 8))(v36, v34);
  }

  else
  {
    v32 = *(type metadata accessor for NewPlaylistAction() + 20);
    (*(v28 + 32))(v31, v21, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E18);
    sub_21700CE04();
    v26 = v35;
    v23(v30, a2, v35);
    sub_216B139C4();
    sub_21700D734();
    (*(v22 + 8))(a2, v26);
    result = (*(v33 + 8))(v36, v34);
    *(v31 + v32) = v37;
  }

  return result;
}

unint64_t sub_216B139C4()
{
  result = qword_27CAC2B98;
  if (!qword_27CAC2B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8E18);
    sub_2167788C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2B98);
  }

  return result;
}

void sub_216B13A70()
{
  if (!qword_280E29EF0)
  {
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29EF0);
    }
  }
}

uint64_t sub_216B13AC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216B13B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216B13B54@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v42 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  sub_21700D7A4();
  sub_21700CE04();
  v38 = v6;
  v17 = *(v6 + 16);
  v35 = v4;
  v32 = v17;
  v17(v9, v39, v4);
  v34 = type metadata accessor for AnimatedTextListItem();
  v31 = *(v34 + 20);
  sub_21700D734();
  v33 = a1;
  sub_21700CE04();
  v18 = sub_21700CDB4();
  v20 = v19;
  v21 = *(v12 + 8);
  v36 = v10;
  v37 = v12 + 8;
  v21(v16, v10);
  if (v20)
  {
    v40 = v18;
    v41 = v20;
    v22 = v42;
    sub_21700F364();
    v23 = v33;
    sub_21700CE04();
    v24 = v39;
    v25 = v35;
    v32(v9, v39, v35);
    sub_216B1470C();
    v26 = sub_21700E944();
    (*(v38 + 8))(v24, v25);
    result = (v21)(v23, v36);
    *(v22 + *(v34 + 24)) = v26;
  }

  else
  {
    v28 = sub_21700E2E4();
    sub_216B146C4(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v29 = 25705;
    v30 = v34;
    v29[1] = 0xE200000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    (*(v38 + 8))(v39, v35);
    v21(v33, v36);
    return sub_2167B0250(v42 + v31);
  }

  return result;
}

uint64_t sub_216B13F44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656B72614D7369 && a2 == 0xE800000000000000;
    if (v6 || (sub_21700F7D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x776F6C477369 && a2 == 0xE600000000000000;
      if (v7 || (sub_21700F7D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74696361704F7369 && a2 == 0xE900000000000079)
      {

        return 3;
      }

      else
      {
        v9 = sub_21700F7D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_216B140A4(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x64656B72614D7369;
      break;
    case 2:
      result = 0x776F6C477369;
      break;
    case 3:
      result = 0x74696361704F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216B14124(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2BB8);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216B14760();
  sub_21700F974();
  v18 = 0;
  sub_21700F724();
  if (!v4)
  {
    v17 = 1;
    OUTLINED_FUNCTION_3_103();
    v16 = 2;
    OUTLINED_FUNCTION_3_103();
    v15 = 3;
    OUTLINED_FUNCTION_3_103();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_216B142BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2BA8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216B14760();
  sub_21700F964();
  if (!v1)
  {
    OUTLINED_FUNCTION_1_131();
    v4 = sub_21700F664();
    OUTLINED_FUNCTION_1_131();
    sub_21700F674();
    OUTLINED_FUNCTION_1_131();
    sub_21700F674();
    OUTLINED_FUNCTION_1_131();
    sub_21700F674();
    v6 = OUTLINED_FUNCTION_2_105();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t sub_216B144CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216B13F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216B144F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216B1409C();
  *a1 = result;
  return result;
}

uint64_t sub_216B1451C(uint64_t a1)
{
  v2 = sub_216B14760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216B14558(uint64_t a1)
{
  v2 = sub_216B14760();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216B14594(uint64_t a1@<X8>)
{
  sub_216E29FC8();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 17) = BYTE1(v5) & 1;
    *(a1 + 18) = BYTE2(v5) & 1;
  }
}

uint64_t sub_216B145D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_216B142BC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = BYTE1(v6) & 1;
    *(a2 + 18) = BYTE2(v6) & 1;
  }

  return result;
}

uint64_t sub_216B1461C(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 16);
  if (*(v1 + 18))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_216B14124(a1, *v1, *(v1 + 8), v3 | v4);
}

uint64_t sub_216B146C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216B1470C()
{
  result = qword_27CAC2BA0;
  if (!qword_27CAC2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2BA0);
  }

  return result;
}

unint64_t sub_216B14760()
{
  result = qword_27CAC2BB0;
  if (!qword_27CAC2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2BB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnimatedTextListItem.AttributedTextFragment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216B14894()
{
  result = qword_27CAC2BC0;
  if (!qword_27CAC2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2BC0);
  }

  return result;
}

unint64_t sub_216B148EC()
{
  result = qword_27CAC2BC8;
  if (!qword_27CAC2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2BC8);
  }

  return result;
}

unint64_t sub_216B14944()
{
  result = qword_27CAC2BD0;
  if (!qword_27CAC2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2BD0);
  }

  return result;
}

uint64_t static MusicFriendsInviteDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static SocialProfileDescriptor.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicFriendsInviteDescriptor(0);
  OUTLINED_FUNCTION_6_9();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_9();
  if (v10)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_5_78(v9);
      v13 = v7 && v11 == v12;
      if (v13 || (sub_21700F7D4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t static SocialProfileDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC4E8);
  OUTLINED_FUNCTION_36(v15);
  OUTLINED_FUNCTION_29();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = *(v17 + 56);
  sub_2168282D4(a1, &v46 - v18, &qword_27CABF770);
  sub_2168282D4(a2, &v19[v20], &qword_27CABF770);
  OUTLINED_FUNCTION_31_2(v19, 1, v4);
  if (!v21)
  {
    sub_2168282D4(v19, v14, &qword_27CABF770);
    OUTLINED_FUNCTION_31_2(&v19[v20], 1, v4);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v19[v20], v4);
      OUTLINED_FUNCTION_4_84();
      sub_216B159A4(v24, v25);
      v26 = sub_21700E494();
      v27 = *(v6 + 8);
      v27(v10, v4);
      v27(v14, v4);
      sub_216697664(v19, &qword_27CABF770);
      if ((v26 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_216697664(v19, &qword_27CABC4E8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_2(&v19[v20], 1, v4);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_216697664(v19, &qword_27CABF770);
LABEL_13:
  v28 = type metadata accessor for SocialProfileDescriptor(0);
  v29 = v28[5];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v30 == *v32 && v31 == v32[1];
  if (!v33 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_9();
  if (v36)
  {
    if (!v34)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5_78(v35);
    v39 = v21 && v37 == v38;
    if (!v39 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v34)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_9();
  if (v42)
  {
    if (!v40)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5_78(v41);
    v45 = v21 && v43 == v44;
    if (!v45 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v40)
  {
    goto LABEL_10;
  }

  if ((sub_217005E54() & 1) != 0 && *(a1 + v28[9]) == *(a2 + v28[9]))
  {
    v22 = *(a1 + v28[10]) ^ *(a2 + v28[10]) ^ 1;
    return v22 & 1;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_216B14DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_217006F94();
  OUTLINED_FUNCTION_31_2(v7, 1, v8);
  if (v20)
  {
    sub_217006FE4();
    OUTLINED_FUNCTION_34();
    (*(v21 + 8))(a1);
    sub_216697664(v7, &qword_27CABA820);
    v33 = 1;
  }

  else
  {
    (*(v10 + 32))(v14, v7, v8);
    (*(v10 + 16))(v19 + v15[8], v14, v8);
    v22 = sub_217006F84();
    v23 = (v19 + v15[5]);
    *v23 = v22;
    v23[1] = v24;
    v25 = sub_217006FB4();
    v26 = (v19 + v15[6]);
    *v26 = v25;
    v26[1] = v27;
    sub_217006FC4();
    v28 = sub_217006FA4();
    v29 = (v19 + v15[7]);
    *v29 = v28;
    v29[1] = v30;
    *(v19 + v15[10]) = sub_217006FD4() & 1;
    v31 = sub_217006F74();
    sub_217006FE4();
    OUTLINED_FUNCTION_34();
    (*(v32 + 8))(a1);
    (*(v10 + 8))(v14, v8);
    *(v19 + v15[9]) = (v31 & 1) == 0;
    sub_216B15D78(v19, a2);
    v33 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v33, 1, v15);
}

uint64_t SocialProfileDescriptor.musicItemID.getter()
{
  type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_8_69();
  return OUTLINED_FUNCTION_8();
}

uint64_t SocialProfileDescriptor.name.getter()
{
  type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_8_69();
  return OUTLINED_FUNCTION_8();
}

uint64_t SocialProfileDescriptor.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfileDescriptor(0) + 32);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216B151C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v76 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v74 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  v16 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v75 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v73 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v23 = type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = type metadata accessor for SocialProfileDetailHeaderLockup();
  v29 = a1 + *(v28 + 24);
  if (!*(v29 + 32))
  {
    OUTLINED_FUNCTION_0_154();
    v41 = a1;
    goto LABEL_10;
  }

  v30 = v28;
  v72 = v9;
  v31 = a1;
  v32 = *(v29 + 24);
  v33 = type metadata accessor for ContentDescriptor();
  sub_2168282D4(v29 + *(v33 + 24), v15, &qword_27CABA820);
  OUTLINED_FUNCTION_31_2(v15, 1, v16);
  if (v34)
  {
    sub_21700DF14();
    sub_216697664(v15, &qword_27CABA820);
    v44 = v31;
    v35 = (v31 + v30[8]);
    v36 = v35[1];
    if (v36)
    {
      v37 = *v35;
      v78 = 0;
      v79 = 0xE000000000000000;
      sub_21700F3B4();

      v78 = 0xD000000000000020;
      v79 = 0x8000000217087320;
      MEMORY[0x21CE9F490](v37, v36);
      v38 = v74;
      sub_217005ED4();

      OUTLINED_FUNCTION_31_2(v38, 1, v16);
      if (!v34)
      {
        v71 = v32;
        v47 = *(v75 + 32);
        v47(v73, v38, v16);
        v48 = OUTLINED_FUNCTION_14_49();
        (v47)(v48);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_154();
      sub_216B15DDC(v44, v39);
      sub_216697664(v38, &qword_27CABA820);
LABEL_11:
      v45 = 1;
      v46 = v77;
      return __swift_storeEnumTagSinglePayload(v46, v45, 1, v23);
    }

    OUTLINED_FUNCTION_0_154();
    v41 = v31;
LABEL_10:
    sub_216B15DDC(v41, v40);
    goto LABEL_11;
  }

  v71 = v32;
  v42 = *(v75 + 32);
  v42(v22, v15, v16);
  v43 = OUTLINED_FUNCTION_14_49();
  (v42)(v43);
  sub_21700DF14();
  v44 = v31;
LABEL_12:
  v49 = sub_21700BA64();
  v50 = (v27 + v23[5]);
  *v50 = v49;
  v50[1] = v51;
  v52 = v76;
  sub_2168282D4(v44 + v30[11], v76, &qword_27CAB6D60);
  v53 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_31_2(v52, 1, v53);
  v54 = v72;
  if (v34)
  {
    sub_216697664(v52, &qword_27CAB6D60);
    v59 = sub_21700C4B4();
    v57 = v54;
    v58 = 1;
  }

  else
  {
    v55 = sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v56 + 16))(v54, v52, v55);
    sub_216B15DDC(v52, type metadata accessor for Artwork);
    v57 = v54;
    v58 = 0;
    v59 = v55;
  }

  __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);
  sub_216A699BC(v54, v27);
  v60 = (v44 + v30[8]);
  v61 = *v60;
  v62 = v60[1];
  v63 = (v27 + v23[6]);
  *v63 = v61;
  v63[1] = v62;
  v64 = (v44 + v30[7]);
  v66 = *v64;
  v65 = v64[1];
  v67 = (v27 + v23[7]);
  *v67 = v66;
  v67[1] = v65;
  *(v27 + v23[10]) = *(v44 + v30[9]);
  sub_21700DF14();
  sub_21700DF14();
  OUTLINED_FUNCTION_0_154();
  sub_216B15DDC(v44, v68);
  *(v27 + v23[9]) = 1;
  v46 = v77;
  sub_216B15D78(v27, v77);
  v45 = 0;
  return __swift_storeEnumTagSinglePayload(v46, v45, 1, v23);
}

uint64_t SocialProfileDescriptor.hash(into:)()
{
  v1 = v0;
  v2 = sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  sub_2168282D4(v1, &v18 - v11, &qword_27CABF770);
  OUTLINED_FUNCTION_31_2(v12, 1, v2);
  if (v13)
  {
    OUTLINED_FUNCTION_14_14();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_21700F914();
    OUTLINED_FUNCTION_4_84();
    sub_216B159A4(v14, v15);
    sub_21700E434();
    (*(v4 + 8))(v8, v2);
  }

  v16 = type metadata accessor for SocialProfileDescriptor(0);
  sub_21700E614();
  if (*(v1 + *(v16 + 24) + 8))
  {
    OUTLINED_FUNCTION_11_59();
    OUTLINED_FUNCTION_12_54();
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }

  if (*(v1 + *(v16 + 28) + 8))
  {
    OUTLINED_FUNCTION_11_59();
    OUTLINED_FUNCTION_12_54();
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }

  sub_217005EF4();
  sub_216B159A4(&qword_27CACA4D0, MEMORY[0x277CC9260]);
  sub_21700E434();
  sub_21700F914();
  return sub_21700F914();
}

uint64_t sub_216B159A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B15A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicFriendsInviteDescriptor.recipientEmail.getter()
{
  type metadata accessor for MusicFriendsInviteDescriptor(0);
  OUTLINED_FUNCTION_8_69();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216B15AE0(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_8_69();
  return OUTLINED_FUNCTION_8();
}

uint64_t MusicFriendsInviteDescriptor.hash(into:)()
{
  SocialProfileDescriptor.hash(into:)();
  v1 = type metadata accessor for MusicFriendsInviteDescriptor(0);
  if (*(v0 + *(v1 + 20) + 8))
  {
    OUTLINED_FUNCTION_11_59();
    OUTLINED_FUNCTION_12_54();
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }

  if (!*(v0 + *(v1 + 24) + 8))
  {
    return OUTLINED_FUNCTION_14_14();
  }

  sub_21700F914();

  return sub_21700E614();
}

uint64_t sub_216B15BE8(void (*a1)(_BYTE *))
{
  sub_21700F8F4();
  a1(v3);
  return sub_21700F944();
}

uint64_t sub_216B15C54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21700F8F4();
  a4(v6);
  return sub_21700F944();
}

uint64_t sub_216B15D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B15DDC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B15E44()
{
  OUTLINED_FUNCTION_33();
  v0[2] = v1;
  v0[3] = v2;
  sub_21700EA34();
  v0[4] = sub_21700EA24();
  v4 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B15ED8, v4, v3);
}

uint64_t sub_216B15ED8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);

  sub_217006A04();
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216B15F88()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167CCCD0;

  return sub_216B15E44();
}

unint64_t sub_216B16024(uint64_t a1)
{
  result = sub_2167B3D90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B16050()
{
  result = qword_280E35B38;
  if (!qword_280E35B38)
  {
    type metadata accessor for ClearRecentSearchesAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35B38);
  }

  return result;
}

uint64_t sub_216B160F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for PlaybackPresenter();
  sub_216B18A4C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  *(a2 + 8) = sub_217008CF4();
  *(a2 + 16) = v3;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  v4 = *(type metadata accessor for PlaylistTrackLockupView() + 32);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  sub_2167CD8D8();
  sub_2170082B4();
  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_4_85();
  return OUTLINED_FUNCTION_4_85();
}

uint64_t sub_216B16244@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  sub_217008C74();
  OUTLINED_FUNCTION_1();
  v72 = v4;
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v71 = v6 - v5;
  v64 = sub_217008844();
  OUTLINED_FUNCTION_1();
  v63 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v61 = type metadata accessor for PlaylistTrackLockupView();
  OUTLINED_FUNCTION_1();
  v60 = v12;
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for PlaylistTrackLockup();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2BE8) - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = (&v59 - v20);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2BF0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v65 = &v59 - v23;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2BF8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C00);
  OUTLINED_FUNCTION_1();
  v69 = v28;
  v70 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v68 = &v59 - v30;
  v66 = *v1;
  sub_2168ABF7C();
  sub_2166A6EA4();
  OUTLINED_FUNCTION_3_104();
  sub_216B1872C(v17, v31);
  v32 = v18[13];
  v33 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v21 + v32, 1, 1, v33);
  sub_216B186D4();
  v34 = swift_allocObject();
  sub_216B1867C();
  v35 = v18[14];
  *(v21 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v36 = v21 + v18[15];
  KeyPath = swift_getKeyPath();
  *v36 = KeyPath;
  v36[40] = 0;
  v21[5] = sub_216B18370;
  v21[6] = v34;
  v21[7] = 0;
  v21[8] = 0;
  sub_216C0C570(KeyPath, v38, v39, v40, v41, v42, v43, v44, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  LOBYTE(v34) = sub_217008834();
  (*(v63 + 8))(v11, v64);
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v45 = v65;
  sub_2167A4788();
  v46 = (v45 + *(v62 + 36));
  v47 = v77;
  *v46 = v76;
  v46[1] = v47;
  v46[2] = v78;
  v48 = v71;
  sub_217008C54();
  if (sub_216B17B58())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    v49 = *v75 + 58.0;
  }

  else
  {
    v49 = 58.0;
  }

  v50 = &v26[*(v67 + 36)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8);
  (*(v72 + 32))(&v50[*(v51 + 40)], v48, v73);
  *v50 = v49;
  v50[8] = 0;
  v52 = sub_2167A4788();
  MEMORY[0x28223BE20](v52);
  *(&v59 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0C0);
  sub_216B183F0();
  sub_2168AE57C();
  v53 = v68;
  sub_21700A3B4();
  sub_216697664(v26, &qword_27CAC2BF8);
  v75[3] = sub_21700C894();
  v75[4] = MEMORY[0x277CD8558];
  __swift_allocate_boxed_opaque_existential_1(v75);
  sub_2168C045C();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C20);
  v55 = v74;
  v56 = (v74 + *(v54 + 36));
  sub_2167B7D58(v75, (v56 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216B18A4C(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v56 = sub_217008CF4();
  v56[1] = v57;
  (*(v69 + 32))(v55, v53, v70);
  return __swift_destroy_boxed_opaque_existential_1Tm(v75);
}

uint64_t sub_216B169BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C28);
  return sub_216B16A10(a1, a2 + *(v4 + 44));
}

uint64_t sub_216B16A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v98 = type metadata accessor for PlaylistTrackLockupView();
  v108 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v109 = v3;
  v110 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB128);
  MEMORY[0x28223BE20](v111);
  v115 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v114 = (&v92 - v6);
  v105 = type metadata accessor for StackedTrackTitlesView();
  MEMORY[0x28223BE20](v105);
  v96 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C30);
  MEMORY[0x28223BE20](v102);
  v104 = &v92 - v8;
  v103 = type metadata accessor for TwoColumnTrackTitlesView();
  MEMORY[0x28223BE20](v103);
  v95 = (&v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v97 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB1D8);
  MEMORY[0x28223BE20](v12 - 8);
  v113 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v107 = &v92 - v15;
  v16 = type metadata accessor for PlaylistTrackArtworkView();
  MEMORY[0x28223BE20](v16 - 8);
  v112 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v118 = &v92 - v19;
  v20 = type metadata accessor for PlaylistTrackLockup();
  MEMORY[0x28223BE20](v20);
  v94 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v93 = &v92 - v23;
  MEMORY[0x28223BE20](v24);
  v92 = &v92 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v92 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v92 - v30;
  v32 = sub_21700C894();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TrackBadgeView();
  MEMORY[0x28223BE20](v36);
  v106 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v92 - v39;
  v100 = a1;
  sub_2168C045C();
  (*(v33 + 8))(v35, v32);
  sub_2168ABF7C();
  LOBYTE(v35) = v31[*(v20 + 48)];
  sub_216B1872C(v31, type metadata accessor for PlaylistTrackLockup);
  *v40 = 0;
  v40[1] = v35;
  v126[0] = 0x4036000000000000;
  v41 = sub_2167CD8D8();
  v117 = v40;
  v101 = v41;
  sub_2170082B4();
  sub_2168ABF7C();
  sub_2166A6EA4();
  sub_216B1872C(v31, type metadata accessor for PlaylistTrackLockup);
  sub_2168ABF7C();
  v99 = v20;
  v42 = &v28[*(v20 + 56)];
  v44 = *v42;
  v43 = v42[1];
  sub_21700DF14();
  sub_216B1872C(v28, type metadata accessor for PlaylistTrackLockup);
  if (v43)
  {
    v45 = sub_2170093B4();
    v124[0] = 1;
    v46 = v100;
    sub_216B1796C(v44, v43, v126);
    memcpy(v120, v126, sizeof(v120));
    memcpy(v121, v126, sizeof(v121));
    sub_2166A6EA4();
    sub_216697664(v121, &qword_27CAC2C60);

    memcpy(&v119[7], v120, 0x68uLL);
    v47 = v124[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    sub_21700B3B4();
    sub_2170083C4();
    *v125 = v45;
    *&v125[8] = 0;
    v125[16] = v47;
    memcpy(&v125[17], v119, 0x6FuLL);
    sub_216B18784(v125);
    memcpy(v124, v125, 0xB1uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BB8);
    sub_216B1856C();
    sub_21680CF4C();
    sub_217009554();
  }

  else
  {
    sub_21700B3B4();
    sub_2170083C4();
    LOBYTE(v120[0]) = 1;
    LOBYTE(v122) = v121[8];
    v124[184] = v121[24];
    *v125 = 0;
    v125[8] = 1;
    *&v125[16] = *v121;
    v125[24] = v121[8];
    *&v125[32] = *&v121[16];
    v125[40] = v121[24];
    *&v125[48] = *&v121[32];
    sub_216B18560(v125);
    memcpy(v124, v125, 0xB1uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BB8);
    sub_216B1856C();
    sub_21680CF4C();
    sub_217009554();
    v46 = v100;
  }

  if (*(v46 + 8))
  {

    v48 = sub_216C6D724();

    if (sub_216B17B58())
    {
      v49 = v48;
      v50 = v92;
      sub_2168ABF7C();
      v51 = v99;
      v52 = (v50 + *(v99 + 28));
      v54 = *v52;
      v53 = v52[1];
      sub_21700DF14();
      sub_216B1872C(v50, type metadata accessor for PlaylistTrackLockup);
      if (v53)
      {
        v55 = v53;
      }

      else
      {
        v54 = 41154;
        v55 = 0xA200000000000000;
      }

      v56 = v93;
      sub_2168ABF7C();
      v57 = *(v56 + *(v51 + 32));
      sub_21700DF14();
      sub_216B1872C(v56, type metadata accessor for PlaylistTrackLockup);
      if (v57)
      {
        v58 = sub_216B80C28(v57);
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      v74 = v49;
      v75 = sub_216B1804C() * 0.7;
      v76 = sub_216B1804C();
      v77 = v95;
      *v95 = v54;
      v77[1] = v55;
      v77[2] = v58;
      v77[3] = v60;
      *(v77 + 32) = 0;
      *(v77 + 33) = v74 & 1;
      *(v77 + 5) = v75;
      *(v77 + 6) = v76 * 0.3 + -16.0;
      v78 = *(v103 + 40);
      *(v77 + v78) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
      swift_storeEnumTagMultiPayload();
      v79 = v97;
      sub_216B1867C();
      sub_216B186D4();
      swift_storeEnumTagMultiPayload();
      sub_216B18A4C(&qword_27CABB168, type metadata accessor for TwoColumnTrackTitlesView);
      sub_216B18A4C(&qword_27CAC2C58, type metadata accessor for StackedTrackTitlesView);
      v71 = v107;
      sub_217009554();
      v72 = type metadata accessor for TwoColumnTrackTitlesView;
      v73 = v79;
    }

    else
    {
      sub_2168ABF7C();
      v61 = v99;
      v62 = &v31[*(v99 + 28)];
      v63 = *(v62 + 1);
      v100 = *v62;
      sub_21700DF14();
      sub_216B1872C(v31, type metadata accessor for PlaylistTrackLockup);
      v64 = sub_216B17CA8();
      v66 = v65;
      v67 = v94;
      sub_2168ABF7C();
      v68 = *(v67 + *(v61 + 44));
      sub_216B1872C(v67, type metadata accessor for PlaylistTrackLockup);
      v69 = v96;
      *v96 = v100;
      v69[1] = v63;
      v69[2] = v64;
      v69[3] = v66;
      *(v69 + 32) = v68;
      *(v69 + 33) = v48 & 1;
      v70 = *(v105 + 32);
      *(v69 + v70) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
      swift_storeEnumTagMultiPayload();
      sub_216B186D4();
      swift_storeEnumTagMultiPayload();
      sub_216B18A4C(&qword_27CABB168, type metadata accessor for TwoColumnTrackTitlesView);
      sub_216B18A4C(&qword_27CAC2C58, type metadata accessor for StackedTrackTitlesView);
      v71 = v107;
      sub_217009554();
      v72 = type metadata accessor for StackedTrackTitlesView;
      v73 = v69;
    }

    sub_216B1872C(v73, v72);
    v80 = sub_216B17DB4();
    v82 = v81;
    sub_216B186D4();
    v83 = swift_allocObject();
    sub_216B1867C();
    v84 = v114;
    *v114 = v80;
    v84[1] = v82;
    v84[2] = sub_216B18624;
    v84[3] = v83;
    *v125 = 0x4050400000000000;
    sub_2170082B4();
    v85 = v106;
    sub_216B186D4();
    v120[0] = v85;
    v86 = v118;
    v87 = v112;
    sub_216B186D4();
    v120[1] = v87;
    memcpy(v124, v126, 0xB1uLL);
    v120[2] = v124;
    v88 = v71;
    v89 = v113;
    sub_2166A6EA4();
    v122 = 0;
    v123 = 1;
    v120[3] = v89;
    v120[4] = &v122;
    v90 = v115;
    sub_2166A6EA4();
    v120[5] = v90;
    sub_2168AABB4(v120);
    sub_216697664(v84, &qword_27CABB128);
    sub_216697664(v88, &qword_27CABB1D8);
    sub_216B1872C(v86, type metadata accessor for PlaylistTrackArtworkView);
    sub_216B1872C(v117, type metadata accessor for TrackBadgeView);
    sub_216697664(v90, &qword_27CABB128);
    sub_216697664(v89, &qword_27CABB1D8);
    memcpy(v125, v124, sizeof(v125));
    sub_216697664(v125, &qword_27CABB1E0);
    sub_216B1872C(v87, type metadata accessor for PlaylistTrackArtworkView);
    return sub_216B1872C(v85, type metadata accessor for TrackBadgeView);
  }

  else
  {
    type metadata accessor for PlaybackPresenter();
    sub_216B18A4C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216B1796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2168AE7E0();
  sub_21700DF14();
  sub_21700F074();
  v14 = sub_217009EC4();
  KeyPath = swift_getKeyPath();
  v12 = sub_21700AD14();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if ((sub_216B17B58() & 1) == 0)
  {
    v10 = sub_217009E94();
    v9 = swift_getKeyPath();

    v8 = MEMORY[0x277D84F90];
    v7 = 0xA200000000000000;
    v6 = 41154;
  }

  sub_2167770D0(a1, a2, 0, MEMORY[0x277D84F90]);

  sub_2168757E0(v6, v7, 0, v8, v9);
  sub_21687582C(v6, v7, 0, v8, v9);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = MEMORY[0x277D84F90];
  a3[4] = KeyPath;
  a3[5] = v14;
  a3[6] = v12;
  a3[7] = v6;
  a3[8] = v7;
  a3[9] = 0;
  a3[10] = v8;
  a3[11] = v9;
  a3[12] = v10;
  sub_21687582C(v6, v7, 0, v8, v9);
  sub_2167C4DF0(a1, a2, 0, MEMORY[0x277D84F90]);
}

uint64_t sub_216B17B58()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_21700ED94();
    v6 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return (0xFCu >> v5) & 1;
}

uint64_t sub_216B17CA8()
{
  v0 = type metadata accessor for PlaylistTrackLockup();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168ABF7C();
  v4 = *&v3[*(v1 + 40)];
  sub_21700DF14();
  sub_216B1872C(v3, type metadata accessor for PlaylistTrackLockup);
  if (v4)
  {
    sub_216CE09CC(v4, &v7);

    if (v7.n128_u64[1])
    {
      v4 = v8;
      sub_21700DF14();
      sub_2167ADC98(&v7);
    }

    else
    {
      sub_216697664(&v7, &qword_27CAB8100);
      return 0;
    }
  }

  return v4;
}

uint64_t sub_216B17DB4()
{
  v0 = type metadata accessor for PlaylistTrackLockup();
  MEMORY[0x28223BE20](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_216B17B58() & 1) == 0)
  {
    return 0;
  }

  sub_2168ABF7C();
  v3 = v2[*(v0 + 40) + 8];
  sub_216B1872C(v2, type metadata accessor for PlaylistTrackLockup);
  if (v3)
  {
    return 0;
  }

  if (qword_27CAB5B60 != -1)
  {
    swift_once();
  }

  v5 = [qword_27CABEAF8 stringFromSeconds_];
  v4 = sub_21700E514();

  return v4;
}

uint64_t sub_216B17EFC()
{
  v0 = type metadata accessor for PlaylistTrackLockup();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v3 = v2 - v1;
  v4 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  sub_2168C045C();
  sub_2168ABF7C();
  sub_21700DF14();
  OUTLINED_FUNCTION_3_104();
  sub_216B1872C(v3, v11);
  sub_2169BCA3C();

  return (*(v6 + 8))(v10, v4);
}

double sub_216B1804C()
{
  v1 = v0;
  v2 = type metadata accessor for PlaylistTrackLockup();
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2170090F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v10 = *(v1 + 24);
  }

  else
  {

    sub_21700ED94();
    v11 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v9, 0);
    (*(v6 + 8))(v8, v5);
    v10 = v18;
  }

  sub_2168ABF7C();
  v12 = *&v4[*(v2 + 56) + 8];
  sub_21700DF14();
  sub_216B1872C(v4, type metadata accessor for PlaylistTrackLockup);
  if (v12)
  {

    type metadata accessor for PlaylistTrackLockupView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    v13 = v18 + 48.0;
  }

  else
  {
    v13 = 60.0;
  }

  type metadata accessor for PlaylistTrackLockupView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  v14 = v18;
  if (sub_216B17B58())
  {
    sub_2170082C4();
    v15 = v18 + 58.0;
  }

  else
  {
    v15 = 58.0;
  }

  return v10 - (v13 + v14 + v15);
}

uint64_t type metadata accessor for PlaylistTrackLockupView()
{
  result = qword_27CAC2C68;
  if (!qword_27CAC2C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B18370()
{
  v0 = *(type metadata accessor for PlaylistTrackLockupView() - 8);
  v1 = OUTLINED_FUNCTION_8_44(*(v0 + 80));

  return sub_216B169BC(v1, v2);
}

unint64_t sub_216B183F0()
{
  result = qword_27CAC2C08;
  if (!qword_27CAC2C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2BF8);
    sub_216B184A8();
    sub_2166D9530(&qword_280E2A818, &qword_27CAB8AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2C08);
  }

  return result;
}

unint64_t sub_216B184A8()
{
  result = qword_27CAC2C10;
  if (!qword_27CAC2C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2BF0);
    sub_2166D9530(&qword_27CAC2C18, &qword_27CAC2BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2C10);
  }

  return result;
}

unint64_t sub_216B1856C()
{
  result = qword_27CAC2C40;
  if (!qword_27CAC2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2C38);
    sub_2166D9530(&qword_27CAC2C48, &qword_27CAC2C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2C40);
  }

  return result;
}

uint64_t sub_216B18624()
{
  v0 = *(type metadata accessor for PlaylistTrackLockupView() - 8);
  OUTLINED_FUNCTION_8_44(*(v0 + 80));
  return sub_216B17EFC();
}

uint64_t sub_216B1867C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B186D4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B1872C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216B187B4()
{
  sub_216A853FC();
  if (v0 <= 0x3F)
  {
    sub_2167B84AC();
    if (v1 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480);
      if (v2 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488);
        if (v3 <= 0x3F)
        {
          sub_216833F44();
          if (v4 <= 0x3F)
          {
            sub_2167D1C30();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_216B188BC()
{
  result = qword_27CAC2C78;
  if (!qword_27CAC2C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2BF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0);
    sub_216B183F0();
    sub_2168AE57C();
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2C78);
  }

  return result;
}

uint64_t sub_216B189F4(uint64_t a1)
{
  result = sub_216B18A4C(&qword_27CABDC40, type metadata accessor for PlaylistTrackLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B18A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B18ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

uint64_t sub_216B18D64@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v38 = v18;
  v39 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_21700CE04();
  (*(v7 + 16))(v10, a2, v5);
  v21 = v40;
  sub_21700D224();
  if (v21)
  {
    (*(v7 + 8))(a2, v5);
    return (*(v12 + 8))(v42, v41);
  }

  else
  {
    v40 = a2;
    v23 = v37;
    (*(v38 + 32))(v37, v20, v39);
    sub_21700CE04();
    v24 = sub_21700CDB4();
    v26 = v25;
    v27 = *(v12 + 8);
    v28 = v15;
    v29 = v41;
    v27(v28, v41);
    if (v26)
    {
      (*(v7 + 8))(v40, v5);
      v27(v42, v29);
      result = type metadata accessor for RemoveAppWithAccessAction();
      v30 = (v23 + *(result + 20));
      *v30 = v24;
      v30[1] = v26;
    }

    else
    {
      v31 = sub_21700E2E4();
      sub_2167B1EA4();
      swift_allocError();
      v32 = v23;
      v34 = v33;
      v35 = type metadata accessor for RemoveAppWithAccessAction();
      *v34 = 0x4449707061;
      v34[1] = 0xE500000000000000;
      v34[2] = v35;
      (*(*(v31 - 8) + 104))(v34, *MEMORY[0x277D22530], v31);
      swift_willThrow();
      (*(v7 + 8))(v40, v5);
      v27(v42, v29);
      return (*(v38 + 8))(v32, v39);
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UpdateNotificationSettingsIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216B19288(_BYTE *a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_21700CDF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-v8];
  v10 = 0x8000000217088CD0;
  v11 = 0xD00000000000001CLL;
  sub_21700CE04();
  v22 = sub_21700CD44();
  v12 = v22;
  v13 = *(v4 + 8);
  v13(v9, v3);
  if (v12 == 2)
  {
    v14 = a1;
  }

  else
  {
    v10 = 0x8000000217088CF0;
    sub_21700CE04();
    v15 = sub_21700CD44();
    v13(v6, v3);
    v14 = a1;
    v11 = 0xD000000000000014;
    if (v15 != 2)
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v19 + 8))(v23);
      v13(a1, v3);
      return v22 & 1 | ((v15 & 1) << 8);
    }
  }

  v16 = sub_21700E2E4();
  sub_216B197B8(&qword_280E2A0F8, MEMORY[0x277D22548]);
  swift_allocError();
  *v17 = v11;
  v17[1] = v10;
  v17[2] = &type metadata for UpdateNotificationSettingsIntent;
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D22530], v16);
  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v18 + 8))(v23);
  return (v13)(v14, v3);
}

id sub_216B1957C(uint64_t a1, unsigned int a2)
{
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    sub_2166F1F64([v4 valueWithBool:a2 & 1 inContext:a1]);
    sub_2166F1F64([v4 valueWithBool:(a2 >> 8) & 1 inContext:a1]);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216B1966C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216B19288(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
    a3[1] = BYTE1(result) & 1;
  }

  return result;
}

id sub_216B196A4(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_216B1957C(a1, v2 | *v1);
}

unint64_t sub_216B196E0()
{
  result = qword_27CAC2C80;
  if (!qword_27CAC2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2C80);
  }

  return result;
}

unint64_t sub_216B19734(uint64_t a1)
{
  *(a1 + 8) = sub_216ABE9E4();
  result = sub_216B19764();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216B19764()
{
  result = qword_27CAC2C88;
  if (!qword_27CAC2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2C88);
  }

  return result;
}

uint64_t sub_216B197B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B19800()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216B19854(char a1)
{
  if (a1)
  {
    return 0x79616C706572;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_216B198AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216B19800();
  *a1 = result;
  return result;
}

uint64_t sub_216B198DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B19854(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216B19908@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_217005AB4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B19C08(a1 & 1);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v23 = &qword_27CABA820;
    v24 = v16;
LABEL_5:
    sub_21669987C(v24, v23);
    return __swift_storeEnumTagSinglePayload(v30, 1, 1, v17);
  }

  (*(v19 + 32))(v22, v16, v17);
  sub_2170059E4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v19 + 8))(v22, v17);
    v23 = &qword_27CAB6BD0;
    v24 = v7;
    goto LABEL_5;
  }

  (*(v10 + 32))(v13, v7, v8);
  v26 = v29;
  sub_21700DF14();
  MEMORY[0x21CE96840](v28, v26);
  sub_2170059F4();
  (*(v10 + 8))(v13, v8);
  return (*(v19 + 8))(v22, v17);
}

uint64_t sub_216B19C08(char a1)
{
  v2 = sub_217005AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_21700F3B4();
  MEMORY[0x21CE9F490](0xD000000000000019, 0x8000000217088D10);
  v14[15] = a1 & 1;
  sub_21700F544();
  v10 = sub_21700E4D4();

  sub_21700DFC4();

  sub_21700DFA4();
  (*(v7 + 8))(v9, v6);
  v11 = v15;
  v12 = v16;
  sub_217005AA4();
  sub_217005A84();
  MEMORY[0x21CE96830](v11, v12);
  sub_2170059F4();
  return (*(v3 + 8))(v5, v2);
}

_BYTE *_s14SwiftMusicHostOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216B19F70()
{
  result = qword_27CAC2CA0;
  if (!qword_27CAC2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2CA0);
  }

  return result;
}

uint64_t sub_216B19FEC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v102 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF8);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v85 - v5;
  v91 = type metadata accessor for LockupArtwork();
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  v92 = (&v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v99 = v15;
  MEMORY[0x28223BE20](v16);
  v90 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v94 = &v85 - v19;
  MEMORY[0x28223BE20](v20);
  v95 = &v85 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v85 - v26;
  sub_21700D7A4();
  sub_21700CE04();
  v96 = v10;
  v97 = v8;
  v28 = v8;
  v29 = v14;
  v30 = v99;
  v87 = *(v10 + 16);
  v88 = v10 + 16;
  v87(v13, v98, v28);
  v86 = v27;
  v89 = v13;
  sub_21700D734();
  v31 = a1;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v33 = *(v30 + 8);
  v34 = v24;
  v36 = v35;
  v33(v34, v29);
  v99 = v30 + 8;
  if (v36)
  {
    v37 = type metadata accessor for SuggestionItem();
    v38 = v36;
    v39 = v37;
    v100 = v32;
    v101 = v38;
    v85 = v38;
    sub_21700F364();
    v40 = v95;
    sub_21700CE04();
    v41 = sub_21700CDB4();
    v43 = v42;
    v33(v40, v29);
    if (v43)
    {
      v44 = (v102 + v39[7]);
      *v44 = v41;
      v44[1] = v43;
      v45 = v94;
      sub_21700CE04();
      v46 = sub_21700CDB4();
      v48 = v47;
      v33(v45, v29);
      if (v48)
      {
        v49 = (v102 + v39[9]);
        *v49 = v46;
        v49[1] = v48;
        v50 = v86;
        sub_21700CE04();
        v51 = v98;
        sub_21700D2E4();
        v33(v50, v29);
        sub_21700CE04();
        v52 = sub_21700CDB4();
        v54 = v53;
        v94 = v33;
        v95 = v29;
        v33(v50, v29);
        v85 = v39;
        v55 = v102;
        v56 = (v102 + v39[8]);
        *v56 = v52;
        v56[1] = v54;
        sub_21700CE04();
        v87(v89, v51, v97);
        sub_2166D80C0(&qword_280E43D58, type metadata accessor for LockupArtwork);
        v57 = v93;
        v58 = v91;
        sub_21700D734();
        v59 = v31;
        if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
        {
          v60 = v92;
          *v92 = 0;
          v60[1] = 0;
          swift_storeEnumTagMultiPayload();
          if (__swift_getEnumTagSinglePayload(v57, 1, v58) != 1)
          {
            sub_216699820(v57, &qword_27CAC1BF8);
          }
        }

        else
        {
          v60 = v92;
          sub_216B1A8D0(v57, v92);
        }

        v80 = v85;
        sub_216B1A8D0(v60, v55 + v85[10]);
        v81 = v90;
        sub_21700CE04();
        v82 = sub_21700CD44();
        (*(v96 + 8))(v98, v97);
        v84 = v94;
        v83 = v95;
        (v94)(v59, v95);
        result = v84(v81, v83);
        *(v55 + v80[11]) = v82 & 1;
        return result;
      }

      v61 = v29;
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_155();
      sub_2166D80C0(v73, v74);
      swift_allocError();
      *v75 = 0xD000000000000012;
      v75[1] = 0x8000000217088D70;
      v75[2] = v39;
      OUTLINED_FUNCTION_50();
      (*(v76 + 104))();
      v68 = 1;
    }

    else
    {
      v61 = v29;
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_155();
      sub_2166D80C0(v69, v70);
      OUTLINED_FUNCTION_4();
      *v71 = 0x656C746974;
      v71[1] = 0xE500000000000000;
      v71[2] = v39;
      OUTLINED_FUNCTION_50();
      (*(v72 + 104))();
      v68 = 0;
    }

    v36 = v85;
  }

  else
  {
    v61 = v29;
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_155();
    sub_2166D80C0(v62, v63);
    OUTLINED_FUNCTION_4();
    v65 = v64;
    v66 = type metadata accessor for SuggestionItem();
    *v65 = 25705;
    v65[1] = 0xE200000000000000;
    v65[2] = v66;
    OUTLINED_FUNCTION_50();
    (*(v67 + 104))(v65);
    v68 = 0;
  }

  swift_willThrow();
  (*(v96 + 8))(v98, v97);
  v33(v31, v61);
  v77 = v102;
  result = sub_216699820(v102, &qword_27CAB6D58);
  if (v36)
  {
    v79 = type metadata accessor for SuggestionItem();
    result = sub_216788110(v77 + *(v79 + 20));
  }

  if (v68)
  {
    type metadata accessor for SuggestionItem();
  }

  return result;
}

uint64_t sub_216B1A8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PlaylistDetailRecommendedShelvesIntent()
{
  result = qword_27CAC2CA8;
  if (!qword_27CAC2CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B1B348(void (*a1)(void), uint64_t *a2)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return OUTLINED_FUNCTION_0_156();
}

uint64_t sub_216B1B398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for PlaylistDetailRecommendedShelvesIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216B1B728(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for PlaylistDetailRecommendedShelvesIntent();
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216B1B934(uint64_t a1)
{
  result = sub_2166CE624(&qword_27CAC2CB8, type metadata accessor for PlaylistDetailRecommendedShelvesIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B1B9D4(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE624(&qword_27CAC2CB8, type metadata accessor for PlaylistDetailRecommendedShelvesIntent);
  result = sub_2166CE624(&qword_27CAC2CC0, type metadata accessor for PlaylistDetailRecommendedShelvesIntent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216B1BA6C()
{
  result = qword_280E32468;
  if (!qword_280E32468)
  {
    type metadata accessor for FindFriendsBatchFollowAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E32468);
  }

  return result;
}

uint64_t sub_216B1BAC4(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v6 = v11[1];
  if (*(a1 + *(type metadata accessor for FindFriendsBatchFollowAction() + 20)))
  {
    v7 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingFriendIDsToRequest;
    swift_beginAccess();
    if (!*(*&v6[v7] + 16))
    {
      v8 = sub_21700DF14();
      *&v6[v7] = sub_216E64354(v8);
    }
  }

  sub_216CAE644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  v9 = sub_21700E1F4();

  return v9;
}

uint64_t MusicNotice.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

unint64_t sub_216B1BCF8()
{
  result = qword_27CAC2E68;
  if (!qword_27CAC2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2E68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicNotice(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216B1BE18()
{
  result = sub_216B1BE38();
  qword_27CB229B0 = result;
  return result;
}

uint64_t sub_216B1BE38()
{
  v0 = sub_217005EF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  MEMORY[0x28223BE20](v9);
  v46 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = [objc_opt_self() sharedStoreArtworkDataSource];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() defaultManager];
    v20 = [v19 URLsForDirectory:13 inDomains:1];

    sub_21700E824();
    sub_216CE0C14();

    sub_2167DE934(v16, v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v0) == 1)
    {
      sub_216846CF0(v13);
      if (qword_27CAB5D98 != -1)
      {
        swift_once();
      }

      v21 = sub_217007CA4();
      __swift_project_value_buffer(v21, qword_27CAC2E70);
      v22 = sub_217007C84();
      v23 = sub_21700ED84();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_216679000, v22, v23, "Error finding caches directory.  Artwork will not be cached on disk", v24, 2u);
        MEMORY[0x21CEA1440](v24, -1, -1);
      }
    }

    else
    {
      v25 = v46;
      (*(v1 + 32))(v46, v13, v0);
      v26 = [objc_opt_self() mainBundle];
      sub_2166E2BA8(v26);
      if (v27)
      {
        sub_217005E14();
        sub_217005E14();
        v44 = v8;
        v45 = v18;
        v43 = v16;
        v28 = *(v1 + 8);
        v28(v3, v0);
        sub_217005E14();

        sub_217005E14();
        v28(v3, v0);
        v16 = v43;
        v8 = v44;
        v18 = v45;
        v29 = v25;
      }

      else
      {
        if (qword_27CAB5D98 != -1)
        {
          swift_once();
        }

        v30 = sub_217007CA4();
        __swift_project_value_buffer(v30, qword_27CAC2E70);
        v31 = sub_217007C84();
        v32 = sub_21700ED84();
        v33 = os_log_type_enabled(v31, v32);
        v29 = v46;
        if (v33)
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_216679000, v31, v32, "Error getting bundle identifier, falling back to caches root directory", v34, 2u);
          MEMORY[0x21CEA1440](v34, -1, -1);
        }

        sub_217005E14();
        sub_217005E14();
      }

      v35 = v18;
      v36 = sub_217005EA4();
      sub_216B1C4EC(0, v36, v37, v35);
      v38 = v47;
      v39 = sub_217005E04();
      [v35 setVideoArtworkCacheURL_];

      v40 = *(v1 + 8);
      v40(v38, v0);
      v40(v8, v0);
      v40(v29, v0);
    }

    sub_216846CF0(v16);
    return v18;
  }

  else
  {
    result = sub_21700F584();
    __break(1u);
  }

  return result;
}

uint64_t sub_216B1C46C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2E70);
  __swift_project_value_buffer(v0, qword_27CAC2E70);
  return sub_217007C94();
}

void sub_216B1C4EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21700E4D4();

  [a4 updateURLSessionWithCachePolicy:a1 cachePath:v6];
}

uint64_t sub_216B1C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_21700EA34();
  v4[5] = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B1C614, v6, v5);
}

uint64_t sub_216B1C614()
{
  v1 = *(v0 + 16);

  type metadata accessor for AddRecentSearchTermAction();
  sub_2170069B4();
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216B1C6E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2166DFAC0;

  return sub_216B1C578(a1, a2, v7, v6);
}

unint64_t sub_216B1C794(uint64_t a1)
{
  result = sub_2167B3D3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B1C7C0()
{
  result = qword_280E35CE0[0];
  if (!qword_280E35CE0[0])
  {
    type metadata accessor for AddRecentSearchTermAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35CE0);
  }

  return result;
}

uint64_t sub_216B1C820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_21700EE74();
  OUTLINED_FUNCTION_1();
  v28 = v5;
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v27 = v7 - v6;
  sub_21700EE44();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v9 = sub_21700B5E4();
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EC0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController__onboardedContacts;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2E90);
  sub_217007DA4();
  v18 = *(v13 + 32);
  v18(v2 + v17, v16, v11);
  v19 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController__nonOnboardedContacts;
  v32 = 0;
  sub_217007DA4();
  v18(v2 + v19, v16, v11);
  *(v2 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends) = 0;
  *(v2 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_isUpdating) = 0;
  v26 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_aggregationQueue;
  sub_216685F4C(0, &qword_280E29CD0);
  sub_21700B5C4();
  v32 = MEMORY[0x277D84F90];
  sub_216B20784(&qword_280E29CE0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810);
  sub_216913234(&qword_280E29E10, &qword_27CABA810);
  sub_21700F214();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  *(v2 + v26) = sub_21700EEA4();
  *(v2 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortOnboardedFriends) = 0;
  *(v2 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortNonOnboardedFriends) = 0;
  v20 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  sub_216B207CC();
  *(v3 + v20) = sub_21700E384();
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_needsFriendsAggregation) = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController____lazy_storage___contactStore) = 0;
  v21 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_2169FB0B8(0xD000000000000042, 0x8000000217088FF0, v21);
  [v21 setQualityOfService_];
  v22 = v30;
  [v21 setMaxConcurrentOperationCount_];
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_operationQueue) = v21;
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_sources) = v22;
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_objectGraph) = v31;
  v23 = v21;

  sub_216B1CC98(0);

  return v3;
}

uint64_t sub_216B1CC98(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_sources);
    sub_21700DF14();
  }

  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  v50 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_objectGraph;
  v45 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_operationQueue;
  v9 = (v5 + 63) >> 6;
  sub_21700DF14();
  v10 = 0;
  v47 = v3 + 56;
  v48 = v3;
  v49 = v9;
  v46 = v8;
  if (v7)
  {
LABEL_11:
    while (1)
    {
      v12 = *(*(v3 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
      swift_beginAccess();
      v13 = *(v2 + v8);
      if (!*(v13 + 16))
      {
        break;
      }

      v14 = v12;
      v15 = sub_216E68334();
      if ((v16 & 1) == 0)
      {
        swift_endAccess();
        goto LABEL_17;
      }

      v17 = *(v13 + 56) + 24 * v15;
      v52 = *(v17 + 8);
      v53 = *v17;
      v18 = *(v17 + 16);
      swift_endAccess();
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }

      v51 = 1;
      sub_216B24330(v53, v52, 1);
      sub_21700DF14();
LABEL_18:
      v20 = *(v2 + v50);
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v12;
      v22 = objc_allocWithZone(type metadata accessor for SocialOnboardingContactsMatchingRequestOperation());
      v23 = v12;

      v24 = sub_216999134(v23, v20);
      v25 = swift_allocObject();
      v25[2] = sub_216B24304;
      v25[3] = v21;
      v25[4] = v23;
      v26 = v23;

      sub_2169993F8(sub_216B2430C, v25);

      swift_beginAccess();
      v27 = v26;
      v14 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v2 + v8);
      *(v2 + v8) = 0x8000000000000000;
      v29 = sub_216E68334();
      if (__OFADD__(v28[2], (v30 & 1) == 0))
      {
        goto LABEL_31;
      }

      v31 = v29;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2ED0);
      if (sub_21700F554())
      {
        v33 = sub_216E68334();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_33;
        }

        v31 = v33;
      }

      v9 = v49;
      if (v32)
      {
        v35 = v28[7] + 24 * v31;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v39 = v53;
        *v35 = v53;
        *(v35 + 8) = v14;
        *(v35 + 16) = 0;
        sub_21693B50C(v36, v37, v38);
      }

      else
      {
        v28[(v31 >> 6) + 8] |= 1 << v31;
        *(v28[6] + 8 * v31) = v27;
        v40 = v28[7] + 24 * v31;
        v39 = v53;
        *v40 = v53;
        *(v40 + 8) = v14;
        *(v40 + 16) = 0;
        v41 = v28[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_32;
        }

        v28[2] = v43;
      }

      v8 = v46;
      *(v2 + v46) = v28;
      swift_endAccess();
      [*(v2 + v45) addOperation_];

      sub_216B24318(v39, v52, v51);
      v4 = v47;
      v3 = v48;
LABEL_27:
      v7 &= v7 - 1;

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    swift_endAccess();
    v19 = v12;
LABEL_17:
    v52 = 0;
    v53 = 0;
    v51 = -1;
    goto LABEL_18;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return sub_216B1E3FC();
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216B1D0C8()
{
  v1 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_operationQueue;
  [*(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_operationQueue) cancelAllOperations];
  v2 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController__onboardedContacts;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EC0);
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  v5(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController__nonOnboardedContacts, v3);

  return v0;
}

uint64_t sub_216B1D1DC()
{
  sub_216B1D0C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216B1D25C()
{
  sub_216B1D334();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216B1D334()
{
  if (!qword_280E48398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CAC2E90);
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48398);
    }
  }
}

uint64_t sub_216B1D42C()
{
  sub_216688154();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    Friends = type metadata accessor for SocialFindFriendsController.Friend.Kind(319);
    if (v4 > 0x3F)
    {
      return Friends;
    }

    else
    {
      sub_2166880FC();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_216B1D520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EA0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216B1D574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EA0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_216B1D5D8(uint64_t a1)
{
  sub_216B1D690();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for SocialContactsCoordinator.Contact();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_216B1D690()
{
  if (!qword_280E34EE0)
  {
    v0 = type metadata accessor for SocialContactsCoordinator.Contact();
    if (!v1)
    {
      atomic_store(v0, &qword_280E34EE0);
    }
  }
}

uint64_t sub_216B1D714()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216B1D794()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216B1D800(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for SocialFindFriendsController.Friend(0) - 8;
  result = MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends;
  v8 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends);
  if (a1)
  {
    if (!v8)
    {
      return result;
    }

    sub_21700DF14();
    sub_2169FA550();
    v10 = v9;

    if (v10)
    {
      return result;
    }

    v8 = *(v1 + v7);
  }

  if (v8)
  {
    v11 = *(v8 + 32);
    v12 = v11 & 0x3F;
    v13 = ((1 << v11) + 63) >> 6;
    v14 = 8 * v13;
    v15 = swift_bridgeObjectRetain_n();
    if (v12 > 0xD)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v32 = &v32;
      MEMORY[0x28223BE20](v15);
      v33 = v13;
      v34 = (&v32 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_21689DB5C(0, v13, v34);
      v35 = 0;
      v16 = 0;
      v17 = 1 << *(v8 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v8 + 56);
      v20 = (v17 + 63) >> 6;
      while (v19)
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v13 = v21 | (v16 << 6);
        sub_216B24400();
        v14 = v6[32];
        sub_21699C20C(v6, type metadata accessor for SocialFindFriendsController.Friend);
        if (v14 == 1)
        {
          *(v34 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v35++, 1))
          {
            __break(1u);
LABEL_21:
            v25 = sub_216B23D98(v34, v33, v35, v8);
            goto LABEL_22;
          }
        }
      }

      v22 = v16;
      while (1)
      {
        v16 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v16 >= v20)
        {
          goto LABEL_21;
        }

        v23 = *(v8 + 56 + 8 * v16);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v19 = (v23 - 1) & v23;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_32:
      sub_21700DF14();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v31 = swift_slowAlloc();

    v25 = sub_216B24274(v31, v13, v8, sub_216B1DC7C);
    swift_bridgeObjectRelease_n();
    MEMORY[0x21CEA1440](v31, -1, -1);
LABEL_22:
    sub_216B1DC84(v25, *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortOnboardedFriends));
    if (sub_216B1D6D8() && (sub_21700DF14(), sub_216E21288(), v27 = v26, , , (v27 & 1) != 0))
    {
    }

    else
    {
      sub_216B1D794();
    }

    v28 = sub_216B1DD88(v25, v8);

    sub_216B1DC84(v28, *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortNonOnboardedFriends));

    if (sub_216B1D700() && (sub_21700DF14(), sub_216E21288(), v30 = v29, , , (v30 & 1) != 0))
    {
    }

    else
    {
      return sub_216B1D794();
    }
  }

  return result;
}

size_t sub_216B1DC84(uint64_t a1, char a2)
{
  if (a2)
  {
    v7 = sub_216A73AFC(a1);
    sub_216B20898(&v7, sub_216B21B64, sub_216B20DA0);
    v3 = v7;
  }

  else
  {
    v4 = sub_21700DF14();
    v3 = sub_216AB41C8(v4);
  }

  v5 = sub_216B1F7E4(v3);

  if ((a2 & 1) == 0)
  {
    v7 = v5;
    sub_21700DF14();
    sub_216B20898(&v7, sub_216B20FF0, sub_216B20A90);

    return v7;
  }

  return v5;
}

uint64_t sub_216B1DDDC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends);
  *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends) = a1;
  sub_216B1D800(v2);
}

void sub_216B1DE24(uint64_t a1, char a2, char a3, void *a4, uint64_t a5, void *a6)
{
  v11 = sub_21700B5A4();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700B5E4();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a6;
  *(v18 + 32) = a1;
  *(v18 + 40) = a4;
  *(v18 + 48) = a2;
  *(v18 + 49) = a3;
  v19 = objc_opt_self();
  v20 = a6;
  sub_21700DF14();
  v21 = a4;
  v22 = v20;
  sub_21700DF14();
  v41 = a4;
  v23 = a4;

  if (![v19 isMainThread])
  {
    sub_216685F4C(0, &qword_280E29CD0);
    v35 = sub_21700EE84();
    aBlock[4] = sub_216B24458;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169F0990;
    aBlock[3] = &block_descriptor_25;
    v30 = _Block_copy(aBlock);
    v36 = v22;
    v31 = v30;

    sub_21700B5C4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_216B20784(&qword_280E2A480, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
    sub_216913234(&qword_280E29E50, &unk_27CABC970);
    v32 = v40;
    sub_21700F214();
    v33 = v35;
    MEMORY[0x21CE9FCB0](0, v16, v13, v31);
    _Block_release(v31);

    (*(v39 + 8))(v13, v32);
    (*(v37 + 8))(v16, v38);

LABEL_6:

    v28 = v41;
    goto LABEL_7;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_6;
  }

  v25 = Strong;
  v26 = v22;
  v27 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  swift_beginAccess();
  sub_21700DF14();
  v28 = v41;
  v29 = v41;
  swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v25 + v27);
  sub_21693A300(a1, v28, 1, v26);
  *(v25 + v27) = v42;
  swift_endAccess();
  *(v25 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortOnboardedFriends) = a2 & 1;
  *(v25 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortNonOnboardedFriends) = a3 & 1;
  sub_216B1E3E4(1);

LABEL_7:
}

uint64_t sub_216B1E2D0(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, char a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
    swift_beginAccess();
    sub_21700DF14();
    v14 = a4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v13);
    sub_21693A300(a3, a4, 1, a2);
    *(v12 + v13) = v15;
    swift_endAccess();
    *(v12 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortOnboardedFriends) = a5 & 1;
    *(v12 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortNonOnboardedFriends) = a6 & 1;
    sub_216B1E3E4(1);
  }

  return result;
}

uint64_t sub_216B1E3E4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_needsFriendsAggregation);
  *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_needsFriendsAggregation) = a1;
  return sub_216B1EE88(v2);
}

uint64_t sub_216B1E3FC()
{
  v1 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  result = swift_beginAccess();
  v3 = 0;
  v4 = *(v0 + v1);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if ((*(*(v4 + 56) + 24 * (v10 | (v9 << 6)) + 16) & 1) == 0)
    {
      v11 = 1;
LABEL_13:
      *(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_isUpdating) = v11;
      return result;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_216B1E4EC()
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  v0 = sub_21700F944();
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return v0 == sub_21700F944();
}

uint64_t sub_216B1E55C()
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216B1E5A0()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216B1E62C(uint64_t a1, int a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v76 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = &v65 - v14;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v15 = *(Friends - 8);
  v16 = MEMORY[0x28223BE20](Friends);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v65 - v19;
  v20 = type metadata accessor for SocialContactsCoordinator.Contact();
  v79 = *(v20 - 8);
  v80 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  if (!a1 || a4)
  {
    return (a5)(0, 0, 0, a4);
  }

  v65 = v15;
  v66 = a2;
  v67 = a3;
  v68 = a6;
  v69 = a5;
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  result = sub_21700DF14();
  v32 = 0;
  v70 = MEMORY[0x277D84F90];
  v71 = a1;
  v77 = v25;
  v73 = v31;
  v74 = a1 + 56;
LABEL_8:
  v33 = v32;
  v34 = v78;
  if (!v30)
  {
    goto LABEL_10;
  }

  do
  {
    v32 = v33;
LABEL_13:
    sub_216B24400();
    sub_216B24400();
    v35 = Friends;
    v36 = *(Friends + 64);
    v37 = sub_21700C4B4();
    __swift_storeEnumTagSinglePayload(&v18[v36], 1, 1, v37);
    v38 = a1;
    v39 = v80;
    v40 = &v23[*(v80 + 48)];
    v41 = *(v40 + 1);
    if (v41)
    {
      v75 = v36;
      v42 = *v40;
      *v18 = v42;
      *(v18 + 1) = v41;
      *(v18 + 2) = v42;
      *(v18 + 3) = v41;
      v18[32] = v23[16];
      v18[33] = v23[17];
      v18[34] = v23[18];
      v43 = *&v23[*(v39 + 60)];
      swift_bridgeObjectRetain_n();
      v44 = sub_21700F224();
      if (v44 == 1 << *(v43 + 32))
      {
        v45 = 0;
        v46 = 0;
      }

      else
      {
        v45 = sub_216ABE204(v44, *(v43 + 36), 0, v43);
      }

      v27 = v74;
      *(v18 + 5) = v45;
      *(v18 + 6) = v46;
      v47 = *&v23[*(v39 + 56)];
      v48 = sub_21700F224();
      if (v48 == 1 << *(v47 + 32))
      {
        v49 = 0;
        v50 = 0;
      }

      else
      {
        v49 = sub_216ABE204(v48, *(v47 + 36), 0, v47);
        v50 = v51;
      }

      v35 = Friends;
      v52 = &v18[*(Friends + 56)];
      sub_21699C20C(v77, type metadata accessor for SocialContactsCoordinator.Contact);
      *(v18 + 7) = v49;
      *(v18 + 8) = v50;
      v53 = *(v23 + 4);
      *(v18 + 9) = *(v23 + 3);
      *(v18 + 10) = v53;
      sub_216B24400();
      v54 = v76;
      *&v18[*(v35 + 52)] = v76;
      v55 = *(v23 + 6);
      *v52 = *(v23 + 5);
      *(v52 + 1) = v55;
      *&v18[*(v35 + 60)] = *(v23 + 7);
      v56 = *(v80 + 44);
      sub_21700DF14();
      sub_21700DF14();
      v57 = v54;
      v58 = v75;
      sub_216697664(&v18[v75], &qword_27CABF770);
      sub_21690912C(&v23[v56], &v18[v58]);
      sub_21699C20C(v23, type metadata accessor for SocialContactsCoordinator.Contact);
      v34 = v78;
      sub_216B24400();
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
      sub_21699C20C(v18, type metadata accessor for SocialFindFriendsController.Friend);
      a1 = v71;
    }

    else
    {
      sub_21699C20C(v25, type metadata accessor for SocialContactsCoordinator.Contact);
      sub_21699C20C(v23, type metadata accessor for SocialContactsCoordinator.Contact);
      sub_216697664(&v18[v36], &qword_27CABF770);
      __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
      a1 = v38;
      v27 = v74;
    }

    v30 &= v30 - 1;
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
    {
      sub_216B2448C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216939020(0, *(v70 + 16) + 1, 1, v70);
        v70 = v62;
      }

      v61 = *(v70 + 16);
      v60 = *(v70 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_216939020(v60 > 1, v61 + 1, 1, v70);
        v70 = v63;
      }

      *(v70 + 16) = v61 + 1;
      result = sub_216B2448C();
      v31 = v73;
      goto LABEL_8;
    }

    result = sub_216697664(v34, &qword_27CAC1B20);
    v33 = v32;
    v25 = v77;
    v31 = v73;
  }

  while (v30);
LABEL_10:
  while (1)
  {
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v32 >= v31)
    {

      v64 = sub_216E6465C(v70);
      v69(v64);
    }

    v30 = *(v27 + 8 * v32);
    ++v33;
    if (v30)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216B1ED48()
{
  v0 = OUTLINED_FUNCTION_102();
  MEMORY[0x21CEA0720](v0);
  return sub_21700F114();
}

uint64_t sub_216B1ED78()
{
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x21CEA0720](0);
  sub_21700F114();
  return sub_21700F944();
}

uint64_t sub_216B1EDD4()
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](0);
  sub_21700F114();
  return sub_21700F944();
}

unint64_t sub_216B1EE34()
{
  result = qword_27CAC2EB0;
  if (!qword_27CAC2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2EB0);
  }

  return result;
}

uint64_t sub_216B1EE88(char a1)
{
  v3 = sub_21700B5A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700B5E4();
  result = MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_needsFriendsAggregation) == 1 && (a1 & 1) == 0)
  {
    v14 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_aggregationQueue);
    v15 = v9;
    v16 = result;
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_216B2446C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169F0990;
    aBlock[3] = &block_descriptor_34;
    v13 = _Block_copy(aBlock);

    sub_21700B5C4();
    v17 = MEMORY[0x277D84F90];
    sub_216B20784(&qword_280E2A480, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
    sub_216913234(&qword_280E29E50, &unk_27CABC970);
    sub_21700F214();
    MEMORY[0x21CE9FCB0](0, v11, v6, v13);
    _Block_release(v13);
    (*(v4 + 8))(v6, v3);
    (*(v15 + 8))(v11, v16);
  }

  return result;
}

uint64_t sub_216B1F17C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B1F1D4();
  }

  return result;
}

uint64_t sub_216B1F1D4()
{
  v1 = v0;
  v2 = sub_21700B5A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700B5E4();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700B614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_aggregationQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  v14 = sub_21700B644();
  result = (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = v5;
  v43 = v6;
  sub_216B207CC();
  v52 = sub_21700E384();
  sub_216685F4C(0, &qword_280E29CD0);
  v16 = sub_21700EE84();
  v17 = swift_allocObject();
  *(v17 + 16) = &v52;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_216B24474;
  *(v18 + 24) = v17;
  v50 = sub_216B2447C;
  v51 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_2169993D0;
  v49 = &block_descriptor_43;
  v19 = _Block_copy(&aBlock);

  dispatch_sync(v16, v19);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v40 = v3;
    v41 = v2;
    v21 = v52;
    v22 = v52 + 64;
    v23 = 1 << *(v52 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v52 + 64);
    v26 = (v23 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v27 = 0;
    v28 = MEMORY[0x277D84FA0];
    while (v25)
    {
LABEL_11:
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      result = *(*(v21 + 56) + 24 * (v30 | (v27 << 6)));
      if (result)
      {
        v31 = sub_21700DF14();
        result = sub_21699A9E0(v31, v28);
        v28 = result;
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v32 = sub_21700EE84();
        v33 = swift_allocObject();
        swift_weakInit();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v28;
        v50 = sub_216B24484;
        v51 = v34;
        aBlock = MEMORY[0x277D85DD0];
        v47 = 1107296256;
        v48 = sub_2169F0990;
        v49 = &block_descriptor_50;
        v35 = _Block_copy(&aBlock);

        v36 = v44;
        sub_21700B5C4();
        aBlock = MEMORY[0x277D84F90];
        sub_216B20784(&qword_280E2A480, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
        sub_216913234(&qword_280E29E50, &unk_27CABC970);
        v37 = v41;
        v38 = v42;
        sub_21700F214();
        MEMORY[0x21CE9FCB0](0, v36, v38, v35);
        _Block_release(v35);

        (*(v40 + 8))(v38, v37);
        (*(v45 + 8))(v36, v43);
      }

      v25 = *(v22 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_216B1F7E4(uint64_t a1)
{
  v65[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v55 - v3;
  v4 = type metadata accessor for SocialContactsCoordinator.Contact();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2ED8);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v55 - v8;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v10 = MEMORY[0x28223BE20](Friends);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v55 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - v16;
  v18 = *(a1 + 16);
  v57 = a1;
  v58 = v14;
  v56 = v15;
  if (v18)
  {
    v19 = *(v14 + 48);
    v20 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v60 = *(v15 + 72);
    v61 = v19;
    v21 = MEMORY[0x277D84F90];
    v22 = v18;
    do
    {
      sub_216B24400();
      sub_216B24400();
      sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
      sub_216B2448C();
      v23 = *v6;
      v24 = v6[1];
      sub_21700DF14();
      sub_21699C20C(v6, type metadata accessor for SocialContactsCoordinator.Contact);
      if (v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v21 = v27;
        }

        v25 = *(v21 + 16);
        if (v25 >= *(v21 + 24) >> 1)
        {
          sub_21693776C();
          v21 = v28;
        }

        *(v21 + 16) = v25 + 1;
        v26 = v21 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v24;
      }

      v20 += v60;
      --v22;
    }

    while (v22);
  }

  v29 = objc_opt_self();
  v30 = sub_21700E804();

  v31 = [v29 predicateForContactsWithIdentifiers_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21701D830;
  v33 = *MEMORY[0x277CBD158];
  *(v32 + 32) = *MEMORY[0x277CBD158];
  v34 = objc_opt_self();
  v35 = v33;
  *(v32 + 40) = [v34 descriptorForRequiredKeysForStyle_];
  v36 = sub_216B1FE88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF870);
  v37 = sub_21700E804();

  v65[0] = 0;
  v62 = v31;
  v38 = [v36 unifiedContactsMatchingPredicate:v31 keysToFetch:v37 error:v65];

  v39 = v65[0];
  if (v38)
  {
    sub_216685F4C(0, &qword_280E29B00);
    v40 = sub_21700E824();
    v41 = v39;
  }

  else
  {
    v42 = v65[0];
    v43 = sub_217005D34();

    swift_willThrow();
    v40 = 0;
  }

  v45 = v58;
  v44 = v59;
  if (v18)
  {
    v46 = v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v47 = *(v56 + 72);
    v48 = MEMORY[0x277D84F90];
    v49 = v63;
    do
    {
      sub_216B24400();
      sub_216B1FEFC(v40, v44);
      sub_21699C20C(v49, type metadata accessor for SocialFindFriendsController.Friend);
      if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
      {
        sub_216697664(v44, &qword_27CAC1B20);
      }

      else
      {
        sub_216B2448C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216939020(0, *(v48 + 16) + 1, 1, v48);
          v48 = v52;
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_216939020(v50 > 1, v51 + 1, 1, v48);
          v48 = v53;
        }

        *(v48 + 16) = v51 + 1;
        sub_216B2448C();
        v45 = v58;
        v44 = v59;
      }

      v46 += v47;
      --v18;
    }

    while (v18);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  return v48;
}

id sub_216B1FE88()
{
  v1 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_216B1FEFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SocialContactsCoordinator.Contact();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2ED8);
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for SocialFindFriendsController.Friend(0);
  sub_216B24400();
  sub_216B2448C();
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  sub_21700DF14();
  sub_216B20064(v6, v8, a2);

  return sub_21699C20C(v6, type metadata accessor for SocialContactsCoordinator.Contact);
}

id sub_216B20064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = sub_21700C4B4();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B24400();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v5);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = a1[6];
  v47 = v19;
  v44 = a2;
  if (v20)
  {
    v21 = a1[5];
    v45 = v20;
    goto LABEL_9;
  }

  sub_216B2051C(a1, v19, a2);
  if (v22)
  {
    v23 = v22;
    v21 = [objc_opt_self() stringFromContact:v22 style:0];
    if (v21)
    {
      v41 = sub_21700E514();
      v45 = v24;

      v21 = v41;
      goto LABEL_9;
    }
  }

  else
  {
    v21 = 0;
  }

  v45 = 0;
LABEL_9:
  v25 = type metadata accessor for SocialContactsCoordinator.Contact();
  sub_21690912C(a1 + *(v25 + 44), v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v5);
  sub_21700DF14();
  if (EnumTagSinglePayload != 1)
  {
    sub_216697664(v15, &qword_27CABF770);
    v36 = *(v43 + 32);
    v36(v7, v13, v5);
    v36(v15, v7, v5);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v5);
    goto LABEL_15;
  }

  sub_216697664(v13, &qword_27CABF770);
  sub_216B2051C(a1, v47, v44);
  if (!v27)
  {
    goto LABEL_15;
  }

  v28 = sub_216B24390(v27);
  if (v29 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v30 = v28;
  v31 = v29;
  sub_216685F4C(0, &qword_280E29B40);
  sub_21677A404(v30, v31);
  result = sub_216949A80(v30, v31);
  if (result)
  {
    v33 = result;
    v34 = [objc_opt_self() staticArtworkCatalogWithImage_];

    v35 = v42;
    sub_21700C3C4();
    sub_21677A510(v30, v31);
    sub_216697664(v15, &qword_27CABF770);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v5);
    sub_216A699BC(v35, v15);
LABEL_15:
    v37 = &v18[*(Friends + 56)];

    v38 = v45;
    *v37 = v21;
    *(v37 + 1) = v38;
    sub_21699BFB0(v15, &v18[*(Friends + 64)]);
    v39 = v46;
    sub_216B24400();
    __swift_storeEnumTagSinglePayload(v39, 0, 1, Friends);

    return sub_21699C20C(v18, type metadata accessor for SocialFindFriendsController.Friend);
  }

  __break(1u);
  return result;
}

void sub_216B2051C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (v3)
  {
    v6 = *a1;
    swift_beginAccess();
    v7 = *(a2 + 16);
    if (!v7)
    {
      if (a3)
      {
        v8 = sub_2166BF3C8(a3);
        for (i = 0; v8 != i; ++i)
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x21CEA0220](i, a3);
          }

          else
          {
            if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v10 = *(a3 + 8 * i + 32);
          }

          v7 = v10;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            return;
          }

          v11 = [v10 identifier];
          v12 = sub_21700E514();
          v14 = v13;

          if (v12 == v6 && v3 == v14)
          {

            goto LABEL_20;
          }

          v16 = sub_21700F7D4();

          if (v16)
          {
            goto LABEL_20;
          }
        }
      }

      v7 = 0;
LABEL_20:
      swift_beginAccess();
      v17 = *(a2 + 16);
      *(a2 + 16) = v7;
    }

    v18 = v7;
  }
}