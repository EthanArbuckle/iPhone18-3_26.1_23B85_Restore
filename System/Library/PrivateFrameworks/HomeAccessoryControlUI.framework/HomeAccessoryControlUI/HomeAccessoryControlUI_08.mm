uint64_t sub_2523FEDB4(uint64_t result, int a2, int a3)
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

uint64_t sub_2523FEE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523FEE68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523FEEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a3;
  v72 = a4;
  v74 = a2;
  v5 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v69 = *(v5 - 8);
  v6 = *(v69 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v62 - v10;
  v11 = type metadata accessor for AccessoryControl.ValueDestination(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  v67 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v73 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v22 = sub_2526905A0();
  __swift_project_value_buffer(v22, qword_27F4E4B18);
  sub_2523FEE00(v74, v21, type metadata accessor for AccessoryControl.WriteSpecification);
  sub_2523FEE00(a1, v16, type metadata accessor for AccessoryControl.ValueDestination);
  v23 = sub_252690580();
  v24 = sub_252692F10();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v62 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v63 = v5;
    v28 = v27;
    v75 = v27;
    *v26 = 136446466;
    v64 = v6;
    sub_2523FEE00(v21, v73, type metadata accessor for AccessoryControl.WriteSpecification);
    v29 = sub_252692C20();
    v31 = v30;
    sub_2523FEE68(v21, type metadata accessor for AccessoryControl.WriteSpecification);
    v32 = sub_2525BDA90(v29, v31, &v75);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    v33 = AccessoryControl.ValueDestination.description.getter();
    v35 = v34;
    sub_2523FEE68(v16, type metadata accessor for AccessoryControl.ValueDestination);
    v36 = sub_2525BDA90(v33, v35, &v75);

    *(v26 + 14) = v36;
    v6 = v64;
    _os_log_impl(&dword_252309000, v23, v24, "Performing write request: %{public}s destination:%{public}s", v26, 0x16u);
    swift_arrayDestroy();
    v37 = v28;
    v5 = v63;
    MEMORY[0x2530A5A40](v37, -1, -1);
    v38 = v26;
    a1 = v62;
    MEMORY[0x2530A5A40](v38, -1, -1);
  }

  else
  {

    sub_2523FEE68(v16, type metadata accessor for AccessoryControl.ValueDestination);
    sub_2523FEE68(v21, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  sub_2523FEE00(a1, v14, type metadata accessor for AccessoryControl.ValueDestination);
  v39 = v69;
  if ((*(v69 + 48))(v14, 1, v5) == 1)
  {
    v40 = sub_252692E30();
    v41 = v70;
    (*(*(v40 - 8) + 56))(v70, 1, 1, v40);
    v42 = v73;
    sub_2523FEE00(v74, v73, type metadata accessor for AccessoryControl.WriteSpecification);
    v43 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v44 = (v68 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    sub_2523FF620(v42, v45 + v43, type metadata accessor for AccessoryControl.WriteSpecification);
    v46 = (v45 + v44);
    v47 = v71;
    v48 = v72;
    *v46 = v71;
    v46[1] = v48;
    sub_25235E21C(v47);
    sub_2525738C0(0, 0, v41, &unk_252696500, v45);
  }

  else
  {
    v50 = v66;
    sub_2523FF620(v14, v66, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    v51 = sub_252692E30();
    v52 = v70;
    (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
    v53 = v65;
    sub_2523FEE00(v50, v65, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    v54 = v73;
    sub_2523FEE00(v74, v73, type metadata accessor for AccessoryControl.WriteSpecification);
    v55 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v56 = (v6 + *(v67 + 80) + v55) & ~*(v67 + 80);
    v57 = (v68 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    sub_2523FF620(v53, v58 + v55, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    sub_2523FF620(v54, v58 + v56, type metadata accessor for AccessoryControl.WriteSpecification);
    v59 = (v58 + v57);
    v60 = v71;
    v61 = v72;
    *v59 = v71;
    v59[1] = v61;
    sub_25235E21C(v60);
    sub_2525738C0(0, 0, v52, &unk_2526964F0, v58);

    return sub_2523FEE68(v50, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  }
}

uint64_t sub_2523FF620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523FF688(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2523E233C;

  return sub_2523F8138(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_2523FF818(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_252401074;

  return sub_2523F8434(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_2523FF948(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58);
  v1[8] = swift_task_alloc();
  v3 = sub_25268EE60();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_25268E710();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADF0);
  v1[19] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a1;
  v1[20] = v5;
  v1[21] = v6;

  v7 = swift_task_alloc();
  v1[22] = v7;
  *v7 = v1;
  v7[1] = sub_2523FFB80;

  return sub_2523FCABC(v5);
}

uint64_t sub_2523FFB80()
{

  return MEMORY[0x2822009F8](sub_2523FFC7C, 0, 0);
}

uint64_t sub_2523FFC7C(uint64_t a1)
{
  v73 = v1;
  v2 = 0;
  v3 = *(v1 + 168);
  v4 = *(v3 + 32);
  *(v1 + 240) = v4;
  if (1 << v4 < 64)
  {
    v5 = ~(-1 << (1 << v4));
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v3 + 64);
  if (!v6)
  {
LABEL_6:
    v8 = ((1 << *(v1 + 240)) + 63) >> 6;
    if (v8 <= (v2 + 1))
    {
      v9 = v2 + 1;
    }

    else
    {
      v9 = ((1 << *(v1 + 240)) + 63) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v63 = *(v1 + 136);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8);
        (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
        v6 = 0;
        goto LABEL_15;
      }

      v7 = *(v1 + 168);
      v6 = *(v7 + 8 * v11 + 64);
      ++v2;
      if (v6)
      {
        v2 = v11;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    return MEMORY[0x28216F7F0](a1);
  }

  while (1)
  {
    v7 = *(v1 + 168);
LABEL_14:
    v12 = *(v1 + 128);
    v13 = *(v1 + 136);
    v14 = *(v1 + 96);
    v15 = *(v1 + 104);
    v16 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = v16 | (v2 << 6);
    (*(v15 + 16))(v12, *(v7 + 48) + *(v15 + 72) * v17, v14);
    v18 = *(*(v7 + 56) + 8 * v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8);
    v20 = *(v19 + 48);
    (*(v15 + 32))(v13, v12, v14);
    *(v13 + v20) = v18;
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);

    v10 = v2;
LABEL_15:
    *(v1 + 184) = v6;
    *(v1 + 192) = v10;
    v21 = *(v1 + 144);
    sub_2523714D4(*(v1 + 136), v21, &qword_27F4DB9A0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      sub_252372288(*(v1 + 160), &qword_27F4DADF0);

      v65 = *(v1 + 8);

      return v65();
    }

    v71 = v10;
    v24 = *(v1 + 152);
    v23 = *(v1 + 160);
    v25 = *(*(v1 + 144) + *(v22 + 48));
    (*(*(v1 + 104) + 32))(*(v1 + 120));
    sub_25237153C(v23, v24, &qword_27F4DADF0);
    v26 = sub_25268F890();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 48))(v24, 1, v26);
    v29 = *(v1 + 152);
    if (v28 == 1)
    {
      v30 = *(v1 + 72);
      v31 = *(v1 + 80);
      v32 = *(v1 + 64);

      sub_252372288(v29, &qword_27F4DADF0);
      (*(v31 + 56))(v32, 1, 1, v30);
LABEL_20:
      sub_252372288(*(v1 + 64), &qword_27F4DAD58);
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v36 = *(v1 + 112);
      v37 = *(v1 + 120);
      v39 = *(v1 + 96);
      v38 = *(v1 + 104);
      v40 = sub_2526905A0();
      __swift_project_value_buffer(v40, qword_27F4E4B18);
      (*(v38 + 16))(v36, v37, v39);
      v41 = sub_252690580();
      v42 = sub_252692EF0();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v1 + 112);
      v45 = *(v1 + 120);
      v47 = *(v1 + 96);
      v46 = *(v1 + 104);
      if (v43)
      {
        v48 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v72 = v70;
        *v48 = 136446210;
        sub_252401010(&qword_27F4DB9B0, MEMORY[0x277D15980]);
        v68 = v42;
        v49 = sub_252693370();
        v69 = v45;
        v51 = v50;
        v52 = *(v46 + 8);
        v52(v44, v47);
        v53 = sub_2525BDA90(v49, v51, &v72);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_252309000, v41, v68, "AccessoryControl failed to perform write spec: Failed to find staticEndpoint for endpointPath %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x2530A5A40](v70, -1, -1);
        MEMORY[0x2530A5A40](v48, -1, -1);

        a1 = (v52)(v69, v47);
      }

      else
      {

        v54 = *(v46 + 8);
        v54(v44, v47);
        a1 = (v54)(v45, v47);
      }

      v2 = v71;
      goto LABEL_28;
    }

    v33 = *(v1 + 72);
    v34 = *(v1 + 80);
    v35 = *(v1 + 64);
    sub_25268F880();
    (*(v27 + 8))(v29, v26);
    if ((*(v34 + 48))(v35, 1, v33) == 1)
    {

      goto LABEL_20;
    }

    v55 = *(v1 + 88);
    (*(*(v1 + 80) + 32))(v55, *(v1 + 64), *(v1 + 72));
    v56 = swift_task_alloc();
    *(v56 + 16) = v55;
    v57 = sub_25236611C(sub_252401058, v56, v25);

    *(v1 + 56) = v57;

    sub_2523FD0D4((v1 + 56));

    v58 = *(v1 + 56);
    *(v1 + 200) = v58;
    v59 = *(v58 + 16);
    *(v1 + 208) = v59;
    if (v59)
    {
      break;
    }

    v61 = *(v1 + 80);
    v60 = *(v1 + 88);
    v62 = *(v1 + 72);
    (*(*(v1 + 104) + 8))(*(v1 + 120), *(v1 + 96));

    a1 = (*(v61 + 8))(v60, v62);
    v6 = *(v1 + 184);
    v2 = *(v1 + 192);
LABEL_28:
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  *(v1 + 216) = 0;
  if (!*(v58 + 16))
  {
    goto LABEL_39;
  }

  sub_2523C3820(v58 + 32, v1 + 16);
  v67 = swift_task_alloc();
  *(v1 + 224) = v67;
  *v67 = v1;
  v67[1] = sub_2524004EC;
  a1 = v1 + 16;

  return MEMORY[0x28216F7F0](a1);
}

uint64_t sub_2524004EC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  if (v0)
  {

    v3 = sub_252400E94;
  }

  else
  {
    v3 = sub_25240061C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25240061C(uint64_t a1)
{
  v73 = v1;
  v2 = *(v1 + 216) + 1;
  if (v2 != *(v1 + 208))
  {
    v62 = *(v1 + 200);
LABEL_31:
    *(v1 + 216) = v2;
    if (v2 >= *(v62 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_2523C3820(v62 + 40 * v2 + 32, v1 + 16);
      v64 = swift_task_alloc();
      *(v1 + 224) = v64;
      *v64 = v1;
      v64[1] = sub_2524004EC;
      a1 = v1 + 16;
    }

    return MEMORY[0x28216F7F0](a1);
  }

  v3 = *(v1 + 232);
LABEL_3:
  v67 = v3;
  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  v6 = *(v1 + 72);
  (*(*(v1 + 104) + 8))(*(v1 + 120), *(v1 + 96));

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 184);
  for (i = *(v1 + 192); ; i = v71)
  {
    if (!v7)
    {
      v11 = ((1 << *(v1 + 240)) + 63) >> 6;
      if (v11 <= (i + 1))
      {
        v12 = i + 1;
      }

      else
      {
        v12 = ((1 << *(v1 + 240)) + 63) >> 6;
      }

      v13 = v12 - 1;
      while (1)
      {
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          v57 = *(v1 + 136);
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8);
          (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
          v7 = 0;
          goto LABEL_17;
        }

        v10 = *(v1 + 168);
        v7 = *(v10 + 8 * v14 + 64);
        ++i;
        if (v7)
        {
          i = v14;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v10 = *(v1 + 168);
LABEL_16:
    v15 = *(v1 + 128);
    v16 = *(v1 + 136);
    v17 = *(v1 + 96);
    v18 = *(v1 + 104);
    v19 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v20 = v19 | (i << 6);
    (*(v18 + 16))(v15, *(v10 + 48) + *(v18 + 72) * v20, v17);
    v21 = *(*(v10 + 56) + 8 * v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8);
    v23 = *(v22 + 48);
    (*(v18 + 32))(v16, v15, v17);
    *(v16 + v23) = v21;
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);

    v13 = i;
LABEL_17:
    *(v1 + 184) = v7;
    *(v1 + 192) = v13;
    v24 = *(v1 + 144);
    sub_2523714D4(*(v1 + 136), v24, &qword_27F4DB9A0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      break;
    }

    v71 = v13;
    v27 = *(v1 + 152);
    v26 = *(v1 + 160);
    v28 = *(*(v1 + 144) + *(v25 + 48));
    (*(*(v1 + 104) + 32))(*(v1 + 120));
    sub_25237153C(v26, v27, &qword_27F4DADF0);
    v29 = sub_25268F890();
    v30 = *(v29 - 8);
    v31 = (*(v30 + 48))(v27, 1, v29);
    v32 = *(v1 + 152);
    if (v31 == 1)
    {
      v33 = *(v1 + 72);
      v34 = *(v1 + 80);
      v35 = *(v1 + 64);

      sub_252372288(v32, &qword_27F4DADF0);
      (*(v34 + 56))(v35, 1, 1, v33);
      goto LABEL_22;
    }

    v36 = *(v1 + 72);
    v37 = *(v1 + 80);
    v38 = *(v1 + 64);
    sub_25268F880();
    (*(v30 + 8))(v32, v29);
    if ((*(v37 + 48))(v38, 1, v36) != 1)
    {
      v59 = *(v1 + 88);
      (*(*(v1 + 80) + 32))(v59, *(v1 + 64), *(v1 + 72));
      v60 = swift_task_alloc();
      *(v60 + 16) = v59;
      v7 = v67;
      v61 = sub_25236611C(sub_252401058, v60, v28);

      *(v1 + 56) = v61;

      sub_2523FD0D4((v1 + 56));
      if (!v67)
      {

        v3 = 0;
        v62 = *(v1 + 56);
        *(v1 + 200) = v62;
        v63 = *(v62 + 16);
        *(v1 + 208) = v63;
        if (!v63)
        {
          goto LABEL_3;
        }

        v2 = 0;
        goto LABEL_31;
      }

LABEL_39:
    }

LABEL_22:
    sub_252372288(*(v1 + 64), &qword_27F4DAD58);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v39 = *(v1 + 112);
    v40 = *(v1 + 120);
    v42 = *(v1 + 96);
    v41 = *(v1 + 104);
    v43 = sub_2526905A0();
    __swift_project_value_buffer(v43, qword_27F4E4B18);
    (*(v41 + 16))(v39, v40, v42);
    v44 = sub_252690580();
    v45 = sub_252692EF0();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v1 + 112);
    v48 = *(v1 + 120);
    v50 = *(v1 + 96);
    v49 = *(v1 + 104);
    if (v46)
    {
      v51 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = v70;
      *v51 = 136446210;
      sub_252401010(&qword_27F4DB9B0, MEMORY[0x277D15980]);
      v68 = v45;
      v52 = sub_252693370();
      v69 = v48;
      v54 = v53;
      v55 = *(v49 + 8);
      v55(v47, v50);
      v56 = sub_2525BDA90(v52, v54, &v72);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_252309000, v44, v68, "AccessoryControl failed to perform write spec: Failed to find staticEndpoint for endpointPath %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x2530A5A40](v70, -1, -1);
      MEMORY[0x2530A5A40](v51, -1, -1);

      v55(v69, v50);
    }

    else
    {

      v9 = *(v49 + 8);
      v9(v47, v50);
      v9(v48, v50);
    }
  }

  sub_252372288(*(v1 + 160), &qword_27F4DADF0);

  v65 = *(v1 + 8);

  return v65();
}

uint64_t sub_252400E94()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];

  (*(v4 + 8))(v2, v3);
  sub_252372288(v1, &qword_27F4DADF0);
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252400FC8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252401010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AccessoryControlGroup.init(id:layout:label:accessibilityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for AccessoryControlGroup(0);
  v15 = (a7 + v14[7]);
  sub_252402224(a1, a7, type metadata accessor for AccessoryControl.ElementIdentifier);
  result = sub_252402224(a2, a7 + v14[5], type metadata accessor for AccessoryControlGroup.Layout);
  v17 = (a7 + v14[6]);
  *v17 = a3;
  v17[1] = a4;
  *v15 = a5;
  v15[1] = a6;
  return result;
}

Swift::Void __swiftcall AccessoryControlGroup.setControls(enabled:)(Swift::Bool enabled)
{
  v41 = enabled;
  v2 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v38 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v38 - v13;
  v15 = type metadata accessor for AccessoryControlGroup.Layout(0);
  MEMORY[0x28223BE20](v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v1 + *(type metadata accessor for AccessoryControlGroup(0) + 20));
  sub_2524035B8(v18, v17, type metadata accessor for AccessoryControlGroup.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = *v17;
      v21 = *(*v17 + 16);
      if (v21)
      {
        v39 = v18;
        v40 = v15;
        v42 = MEMORY[0x277D84F90];
        sub_252370130(0, v21, 0);
        v22 = v42;
        v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v38[1] = v20;
        v24 = v20 + v23;
        v25 = *(v6 + 72);
        v26 = v41;
        do
        {
          sub_2524035B8(v24, v9, type metadata accessor for AccessoryControl);
          v9[*(v5 + 40)] = v26;
          v42 = v22;
          v28 = *(v22 + 16);
          v27 = *(v22 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_252370130(v27 > 1, v28 + 1, 1);
            v22 = v42;
          }

          *(v22 + 16) = v28 + 1;
          sub_252402224(v9, v22 + v23 + v28 * v25, type metadata accessor for AccessoryControl);
          v24 += v25;
          --v21;
        }

        while (v21);

        v18 = v39;
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      sub_252403620(v18, type metadata accessor for AccessoryControlGroup.Layout);
      *v18 = v22;
    }

    else
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0);
      v35 = v18;
      v36 = *(v34 + 48);
      sub_252402224(v17, v14, type metadata accessor for AccessoryControl);
      sub_252402224(&v17[v36], v4, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      v14[*(v5 + 40)] = v41;
      sub_252403620(v35, type metadata accessor for AccessoryControlGroup.Layout);
      v37 = *(v34 + 48);
      sub_252402224(v14, v35, type metadata accessor for AccessoryControl);
      sub_252402224(v4, v35 + v37, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0);
    v30 = v18;
    v31 = *(v29 + 48);
    sub_252402224(v17, v14, type metadata accessor for AccessoryControl);
    sub_252402224(&v17[v31], v12, type metadata accessor for AccessoryControl);
    v32 = v41;
    v14[*(v5 + 40)] = v41;
    v12[*(v5 + 40)] = v32;
    sub_252403620(v30, type metadata accessor for AccessoryControlGroup.Layout);
    v33 = *(v29 + 48);
    sub_252402224(v14, v30, type metadata accessor for AccessoryControl);
    sub_252402224(v12, v30 + v33, type metadata accessor for AccessoryControl);
  }

  else
  {
    sub_252402224(v17, v14, type metadata accessor for AccessoryControl);
    v14[*(v5 + 40)] = v41;
    sub_252403620(v18, type metadata accessor for AccessoryControlGroup.Layout);
    sub_252402224(v14, v18, type metadata accessor for AccessoryControl);
  }

  swift_storeEnumTagMultiPayload();
}

uint64_t AccessoryControlGroup.transformControls(transform:)(void (*a1)(char *), uint64_t a2)
{
  v41 = a2;
  v42 = a1;
  v3 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for AccessoryControlGroup.Layout(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v2 + *(type metadata accessor for AccessoryControlGroup(0) + 20));
  sub_2524035B8(v19, v18, type metadata accessor for AccessoryControlGroup.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = *v18;
      v22 = *(*v18 + 16);
      if (v22)
      {
        v39 = v19;
        v40 = v16;
        v43 = MEMORY[0x277D84F90];
        sub_252370130(0, v22, 0);
        v23 = v7;
        v24 = v43;
        v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v38 = v21;
        v26 = v21 + v25;
        v27 = *(v23 + 72);
        do
        {
          sub_2524035B8(v26, v15, type metadata accessor for AccessoryControl);
          sub_2524035B8(v15, v10, type metadata accessor for AccessoryControl);
          v42(v10);
          sub_252403620(v15, type metadata accessor for AccessoryControl);
          v43 = v24;
          v29 = *(v24 + 16);
          v28 = *(v24 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_252370130(v28 > 1, v29 + 1, 1);
            v24 = v43;
          }

          *(v24 + 16) = v29 + 1;
          sub_252402224(v10, v24 + v25 + v29 * v27, type metadata accessor for AccessoryControl);
          v26 += v27;
          --v22;
        }

        while (v22);

        v19 = v39;
      }

      else
      {

        v24 = MEMORY[0x277D84F90];
      }

      sub_252403620(v19, type metadata accessor for AccessoryControlGroup.Layout);
      *v19 = v24;
    }

    else
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0);
      v35 = *(v34 + 48);
      sub_252402224(v18, v15, type metadata accessor for AccessoryControl);
      sub_252402224(&v18[v35], v5, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      v42(v15);
      sub_252403620(v19, type metadata accessor for AccessoryControlGroup.Layout);
      v36 = *(v34 + 48);
      sub_252402224(v15, v19, type metadata accessor for AccessoryControl);
      sub_252402224(v5, v19 + v36, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0);
    v31 = *(v30 + 48);
    sub_252402224(v18, v15, type metadata accessor for AccessoryControl);
    sub_252402224(&v18[v31], v13, type metadata accessor for AccessoryControl);
    v32 = v42;
    v42(v15);
    v32(v13);
    sub_252403620(v19, type metadata accessor for AccessoryControlGroup.Layout);
    v33 = *(v30 + 48);
    sub_252402224(v15, v19, type metadata accessor for AccessoryControl);
    sub_252402224(v13, v19 + v33, type metadata accessor for AccessoryControl);
  }

  else
  {
    sub_252402224(v18, v15, type metadata accessor for AccessoryControl);
    v42(v15);
    sub_252403620(v19, type metadata accessor for AccessoryControlGroup.Layout);
    sub_252402224(v15, v19, type metadata accessor for AccessoryControl);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t AccessoryControlGroup.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryControlGroup(0) + 24));

  return v1;
}

uint64_t AccessoryControlGroup.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryControlGroup(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AccessoryControlGroup.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryControlGroup(0) + 28));

  return v1;
}

uint64_t AccessoryControlGroup.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryControlGroup(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_252401ECC()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for AccessoryControlGroup.Layout(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524035B8(v1, v11, type metadata accessor for AccessoryControlGroup.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return *v11;
    }

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
    sub_252402224(v11, v8, type metadata accessor for AccessoryControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA8);
    v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252694E90;
    sub_252402224(v8, v14 + v22, type metadata accessor for AccessoryControl);
    v19 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig;
    v20 = &v11[v21];
LABEL_8:
    sub_252403620(v20, v19);
    return v14;
  }

  if (EnumCaseMultiPayload)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
    sub_252402224(v11, v8, type metadata accessor for AccessoryControl);
    sub_252402224(&v11[v15], v6, type metadata accessor for AccessoryControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA8);
    v16 = *(v3 + 72);
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252694EA0;
    v18 = v14 + v17;
    sub_2524035B8(v8, v18, type metadata accessor for AccessoryControl);
    sub_252402224(v6, v18 + v16, type metadata accessor for AccessoryControl);
    v19 = type metadata accessor for AccessoryControl;
    v20 = v8;
    goto LABEL_8;
  }

  sub_252402224(v11, v8, type metadata accessor for AccessoryControl);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA8);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_252694E90;
  sub_252402224(v8, v14 + v13, type metadata accessor for AccessoryControl);
  return v14;
}

uint64_t sub_252402224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AccessoryControlGroup.Layout.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for AccessoryControlGroup.Layout(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2524035B8(v2, v15, type metadata accessor for AccessoryControlGroup.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *v15;
      MEMORY[0x2530A4FE0](2);
      sub_2523D9BE4(a1, v17);
    }

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
    sub_252402224(v15, v12, type metadata accessor for AccessoryControl);
    sub_252402224(v15 + v21, v6, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    MEMORY[0x2530A4FE0](3);
    AccessoryControl.hash(into:)(a1);
    sub_25268F0E0();
    sub_252404074(&qword_27F4DB788, MEMORY[0x277D15DB8]);
    sub_252692B30();
    MEMORY[0x2530A4FE0](v6[*(v4 + 20)]);
    MEMORY[0x2530A4FE0](v6[*(v4 + 24)]);
    sub_252403620(v6, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_252402224(v15, v12, type metadata accessor for AccessoryControl);
    MEMORY[0x2530A4FE0](0);
    AccessoryControl.hash(into:)(a1);
LABEL_8:
    v20 = v12;
    return sub_252403620(v20, type metadata accessor for AccessoryControl);
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
  sub_252402224(v15, v12, type metadata accessor for AccessoryControl);
  sub_252402224(v15 + v19, v10, type metadata accessor for AccessoryControl);
  MEMORY[0x2530A4FE0](1);
  AccessoryControl.hash(into:)(a1);
  AccessoryControl.hash(into:)(a1);
  sub_252403620(v10, type metadata accessor for AccessoryControl);
  v20 = v12;
  return sub_252403620(v20, type metadata accessor for AccessoryControl);
}

uint64_t AccessoryControlGroup.Layout.hashValue.getter()
{
  sub_252693460();
  AccessoryControlGroup.Layout.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_252402684()
{
  sub_252693460();
  AccessoryControlGroup.Layout.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_2524026C8()
{
  sub_252693460();
  AccessoryControlGroup.Layout.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t AccessoryControlGroup.hash(into:)(__int128 *a1)
{
  AccessoryControl.ElementIdentifier.hash(into:)(a1);
  v3 = type metadata accessor for AccessoryControlGroup(0);
  AccessoryControlGroup.Layout.hash(into:)(a1);
  sub_252692C80();
  if (!*(v1 + *(v3 + 28) + 8))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_252692C80();
}

uint64_t AccessoryControlGroup.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.ElementIdentifier.hash(into:)(v3);
  v1 = type metadata accessor for AccessoryControlGroup(0);
  AccessoryControlGroup.Layout.hash(into:)(v3);
  sub_252692C80();
  if (*(v0 + *(v1 + 28) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  return sub_2526934C0();
}

uint64_t sub_252402880(uint64_t a1)
{
  sub_252693460();
  AccessoryControl.ElementIdentifier.hash(into:)(v4);
  AccessoryControlGroup.Layout.hash(into:)(v4);
  sub_252692C80();
  if (*(v1 + *(a1 + 28) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  return sub_2526934C0();
}

uint64_t sub_252402934(__int128 *a1, uint64_t a2)
{
  AccessoryControl.ElementIdentifier.hash(into:)(a1);
  AccessoryControlGroup.Layout.hash(into:)(a1);
  sub_252692C80();
  if (!*(v2 + *(a2 + 28) + 8))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_252692C80();
}

uint64_t sub_2524029E4(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  AccessoryControl.ElementIdentifier.hash(into:)(v5);
  AccessoryControlGroup.Layout.hash(into:)(v5);
  sub_252692C80();
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  return sub_2526934C0();
}

uint64_t AccessoryControlGroup.description.getter()
{
  sub_252693210();

  strcpy(v7, "group(label: ");
  HIWORD(v7[1]) = -4864;
  v1 = (v0 + *(type metadata accessor for AccessoryControlGroup(0) + 24));
  v3 = *v1;
  v2 = v1[1];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
  }

  else
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x2530A4800](v3, v2);

  MEMORY[0x2530A4800](2112041, 0xE300000000000000);
  v5 = AccessoryControlGroup.Layout.description.getter();
  MEMORY[0x2530A4800](v5);

  return v7[0];
}

unint64_t AccessoryControlGroup.Layout.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for AccessoryControlGroup.Layout(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2524035B8(v1, v13, type metadata accessor for AccessoryControlGroup.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
      sub_252402224(v13, v10, type metadata accessor for AccessoryControl);
      sub_252402224(v13 + v23, v8, type metadata accessor for AccessoryControl);
      AccessoryControl.description.getter();
      v24 = sub_2524034C0();
      v26 = v25;

      v41 = 0xD000000000000017;
      v42 = 0x80000002526AE7C0;
      MEMORY[0x2530A4800](v24, v26);

      MEMORY[0x2530A4800](0x203A32090ALL, 0xE500000000000000);

      v28 = v41;
      v27 = v42;
      AccessoryControl.description.getter();
      v29 = sub_2524034C0();
      v31 = v30;

      v41 = v28;
      v42 = v27;

      MEMORY[0x2530A4800](v29, v31);

      MEMORY[0x2530A4800](32010, 0xE200000000000000);

      v18 = v41;
      sub_252403620(v8, type metadata accessor for AccessoryControl);
      v32 = v10;
LABEL_9:
      sub_252403620(v32, type metadata accessor for AccessoryControl);
      return v18;
    }

    sub_252402224(v13, v10, type metadata accessor for AccessoryControl);
    AccessoryControl.description.getter();
    v15 = sub_2524034C0();
    v17 = v16;

    v41 = 0x7B20656C676E6973;
    v42 = 0xEA0000000000090ALL;
    MEMORY[0x2530A4800](v15, v17);

    MEMORY[0x2530A4800](32010, 0xE200000000000000);

    v18 = v41;
LABEL_8:
    v32 = v10;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
    sub_252402224(v13, v10, type metadata accessor for AccessoryControl);
    sub_252402224(v13 + v33, v4, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_252693210();

    v41 = 0x697461726F636564;
    v42 = 0xEB00000000286E6FLL;
    v34 = AccessoryControlGroup.DecorationControlConfig.description.getter();
    MEMORY[0x2530A4800](v34);

    MEMORY[0x2530A4800](0x90A7B2029, 0xE500000000000000);
    v36 = v41;
    v35 = v42;
    AccessoryControl.description.getter();
    v37 = sub_2524034C0();
    v39 = v38;

    v41 = v36;
    v42 = v35;

    MEMORY[0x2530A4800](v37, v39);

    MEMORY[0x2530A4800](32010, 0xE200000000000000);

    v18 = v41;
    sub_252403620(v4, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    goto LABEL_8;
  }

  v19 = *v13;
  v41 = 0x746E6F7A69726F68;
  v42 = 0xEB00000000206C61;
  MEMORY[0x2530A4900](v19, v5);

  v20 = sub_2524034C0();
  v22 = v21;

  MEMORY[0x2530A4800](v20, v22);

  return v41;
}

uint64_t AccessoryControlGroup.debugDescription.getter()
{
  v1 = sub_2526934F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = type metadata accessor for AccessoryControlGroup(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  sub_2524035B8(v0, boxed_opaque_existential_0, type metadata accessor for AccessoryControlGroup);
  sub_2526934D0();
  v6 = sub_2526934E0();
  (*(v2 + 8))(v4, v1);
  v17[1] = v6;
  sub_252693240();
  sub_2526932B0();
  if (*(&v26 + 1))
  {
    v7 = MEMORY[0x277D84F90];
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_252403FBC(v23, &v18);
      if (v19)
      {
        v8 = v18;
      }

      else
      {
        v8 = 0x206E776F6E6B6E55;
      }

      if (v19)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      MEMORY[0x2530A4800](v8, v9);

      MEMORY[0x2530A4800](8250, 0xE200000000000000);
      sub_252693250();
      v10 = v21;
      v11 = v22;
      sub_252372288(v23, &qword_27F4DB580);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25236880C(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_25236880C((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      sub_2526932B0();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *&v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB570);
  sub_2523E15A4();
  v15 = sub_252692B40();

  return v15;
}

uint64_t sub_2524034C0()
{
  sub_252404480();
  sub_252693160();
  v0 = sub_252692D00();
  MEMORY[0x2530A4800](v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB570);
  sub_2523E15A4();
  v1 = sub_252692B40();

  return v1;
}

uint64_t sub_2524035B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252403620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252403680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t _s22HomeAccessoryControlUI0bC5GroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (static AccessoryControl.ElementIdentifier.== infix(_:_:)(a1, a2))
  {
    v4 = type metadata accessor for AccessoryControlGroup(0);
    if (_s22HomeAccessoryControlUI0bC5GroupV6LayoutO2eeoiySbAE_AEtFZ_0(a1 + v4[5], a2 + v4[5]))
    {
      v5 = v4[6];
      v6 = *(a1 + v5);
      v7 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v6 == *v8 && v7 == v8[1];
      if (v9 || (sub_2526933B0() & 1) != 0)
      {
        v10 = v4[7];
        v11 = (a1 + v10);
        v12 = *(a1 + v10 + 8);
        v13 = (a2 + v10);
        v14 = v13[1];
        if (v12)
        {
          if (v14)
          {
            v15 = *v11 == *v13 && v12 == v14;
            if (v15 || (sub_2526933B0() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v14)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t _s22HomeAccessoryControlUI0bC5GroupV6LayoutO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v56 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  v3 = MEMORY[0x28223BE20](v56);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v61 = &v56 - v5;
  v6 = type metadata accessor for AccessoryControl(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v56 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v56 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = type metadata accessor for AccessoryControlGroup.Layout(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v56 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v56 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB868);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v56 - v31;
  v33 = (&v56 + *(v30 + 56) - v31);
  sub_2524035B8(a1, &v56 - v31, type metadata accessor for AccessoryControlGroup.Layout);
  sub_2524035B8(v63, v33, type metadata accessor for AccessoryControlGroup.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2524035B8(v32, v28, type metadata accessor for AccessoryControlGroup.Layout);
      if (swift_getEnumCaseMultiPayload())
      {
        v35 = v28;
LABEL_20:
        sub_252403620(v35, type metadata accessor for AccessoryControl);
        goto LABEL_21;
      }

      sub_252402224(v33, v16, type metadata accessor for AccessoryControl);
      v37 = static AccessoryControl.== infix(_:_:)(v28, v16);
      sub_252403620(v16, type metadata accessor for AccessoryControl);
      v43 = v28;
      goto LABEL_23;
    }

    sub_2524035B8(v32, v26, type metadata accessor for AccessoryControlGroup.Layout);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_252403620(&v26[v38], type metadata accessor for AccessoryControl);
      v35 = v26;
      goto LABEL_20;
    }

    v39 = v59;
    sub_252402224(v33, v59, type metadata accessor for AccessoryControl);
    v40 = v58;
    sub_252402224(&v26[v38], v58, type metadata accessor for AccessoryControl);
    v41 = v57;
    sub_252402224(v33 + v38, v57, type metadata accessor for AccessoryControl);
    v42 = static AccessoryControl.== infix(_:_:)(v26, v39);
    sub_252403620(v26, type metadata accessor for AccessoryControl);
    if (v42)
    {
      v37 = static AccessoryControl.== infix(_:_:)(v40, v41);
      sub_252403620(v41, type metadata accessor for AccessoryControl);
      sub_252403620(v40, type metadata accessor for AccessoryControl);
      v43 = v39;
LABEL_23:
      sub_252403620(v43, type metadata accessor for AccessoryControl);
LABEL_24:
      sub_252403620(v32, type metadata accessor for AccessoryControlGroup.Layout);
      return v37 & 1;
    }

    v52 = type metadata accessor for AccessoryControl;
    sub_252403620(v41, type metadata accessor for AccessoryControl);
    sub_252403620(v40, type metadata accessor for AccessoryControl);
    v53 = v39;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2524035B8(v32, v23, type metadata accessor for AccessoryControlGroup.Layout);
    v36 = *v23;
    if (swift_getEnumCaseMultiPayload() != 2)
    {

LABEL_21:
      sub_252372288(v32, &qword_27F4DB868);
LABEL_31:
      v37 = 0;
      return v37 & 1;
    }

    v37 = sub_2523E5634(v36, *v33);

    goto LABEL_24;
  }

  sub_2524035B8(v32, v20, type metadata accessor for AccessoryControlGroup.Layout);
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_252403620(&v20[v44], type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    v35 = v20;
    goto LABEL_20;
  }

  v45 = v60;
  sub_252402224(v33, v60, type metadata accessor for AccessoryControl);
  v46 = v61;
  sub_252402224(&v20[v44], v61, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
  v47 = v62;
  sub_252402224(v33 + v44, v62, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
  v48 = static AccessoryControl.== infix(_:_:)(v20, v45);
  sub_252403620(v20, type metadata accessor for AccessoryControl);
  if ((v48 & 1) == 0)
  {
    sub_252403620(v47, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    sub_252403620(v46, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    v54 = type metadata accessor for AccessoryControl;
    v53 = v45;
LABEL_29:
    sub_252403620(v53, v54);
    goto LABEL_30;
  }

  v49 = sub_25268EE80();
  sub_252403620(v45, type metadata accessor for AccessoryControl);
  if ((v49 & 1) == 0 || *(v46 + *(v56 + 20)) != *(v47 + *(v56 + 20)))
  {
    v52 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig;
    sub_252403620(v47, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    v53 = v46;
LABEL_28:
    v54 = v52;
    goto LABEL_29;
  }

  v50 = v56;
  v51 = *(v46 + *(v56 + 24));
  sub_252403620(v46, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
  LODWORD(v50) = *(v47 + *(v50 + 24));
  sub_252403620(v47, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
  if (v51 != v50)
  {
LABEL_30:
    sub_252403620(v32, type metadata accessor for AccessoryControlGroup.Layout);
    goto LABEL_31;
  }

  sub_252403620(v32, type metadata accessor for AccessoryControlGroup.Layout);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_252403FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252404074(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252404174()
{
  type metadata accessor for AccessoryControl.ElementIdentifier();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryControlGroup.Layout(319);
    if (v1 <= 0x3F)
    {
      sub_252404218();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252404218()
{
  if (!qword_27F4DB5E0)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DB5E0);
    }
  }
}

void sub_252404268()
{
  type metadata accessor for AccessoryControl(319);
  if (v0 <= 0x3F)
  {
    sub_252404304();
    if (v1 <= 0x3F)
    {
      sub_25240436C();
      if (v2 <= 0x3F)
      {
        sub_25240440C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_252404304()
{
  if (!qword_27F4DB9F8)
  {
    type metadata accessor for AccessoryControl(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DB9F8);
    }
  }
}

void sub_25240436C()
{
  if (!qword_27F4DBA00)
  {
    sub_2524043B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DBA00);
    }
  }
}

void sub_2524043B4()
{
  if (!qword_27F4DBA08)
  {
    type metadata accessor for AccessoryControl(255);
    v0 = sub_252692DD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DBA08);
    }
  }
}

void sub_25240440C()
{
  if (!qword_27F4DBA10)
  {
    type metadata accessor for AccessoryControl(255);
    type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DBA10);
    }
  }
}

unint64_t sub_252404480()
{
  result = qword_27F4DBA18;
  if (!qword_27F4DBA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBA18);
  }

  return result;
}

uint64_t AccessoryControlModule.init(id:groups:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AccessoryControlModule(0);
  v11 = (a5 + v10[5]);
  v12 = (a5 + v10[7]);
  *v12 = 0;
  v12[1] = 0;
  sub_252406DB8(a1, a5, type metadata accessor for AccessoryControl.ElementIdentifier);
  *(a5 + v10[6]) = a2;
  type metadata accessor for AccessoryControlModule.Layout(0);
  result = swift_storeEnumTagMultiPayload();
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t AccessoryControlModule.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryControlModule(0) + 20));

  return v1;
}

uint64_t AccessoryControlModule.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryControlModule(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AccessoryControlModule.groups.getter()
{
  v1 = type metadata accessor for AccessoryControlModule.Layout(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControlModule(0);
  sub_2524047FC(v0 + *(v4 + 24), v3, type metadata accessor for AccessoryControlModule.Layout);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v3;
  }

  sub_252406E20(v3, type metadata accessor for AccessoryControlModule.Layout);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2524047FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524048FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t AccessoryControlModule.accesibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryControlModule(0) + 28));

  return v1;
}

uint64_t AccessoryControlModule.accesibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryControlModule(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_252404AEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252404E34(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_252404AEC(a1, v4);
}

uint64_t sub_252404EF4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 24);

  return sub_252404AEC(a1, v4);
}

uint64_t sub_252404FCC(__int128 *a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for AccessoryControl(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  AccessoryControl.hash(into:)(a1);
  v15 = a2(0);
  sub_25237153C(v2 + *(v15 + 20), v14, &qword_27F4DB120);
  v16 = *(v6 + 48);
  if (v16(v14, 1, v5) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_252406DB8(v14, v8, type metadata accessor for AccessoryControl);
    sub_252693480();
    AccessoryControl.hash(into:)(a1);
    sub_252406E20(v8, type metadata accessor for AccessoryControl);
  }

  sub_25237153C(v2 + *(v15 + 24), v12, &qword_27F4DB120);
  if (v16(v12, 1, v5) == 1)
  {
    return sub_252693480();
  }

  sub_252406DB8(v12, v8, type metadata accessor for AccessoryControl);
  sub_252693480();
  AccessoryControl.hash(into:)(a1);
  return sub_252406E20(v8, type metadata accessor for AccessoryControl);
}

uint64_t sub_25240527C(void (*a1)(_BYTE *))
{
  sub_252693460();
  a1(v3);
  return sub_2526934C0();
}

uint64_t sub_2524052DC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_252405340(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t AccessoryControlModule.Layout.headerControl.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControlModule.Layout(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524047FC(v2, v9, type metadata accessor for AccessoryControlModule.Layout);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_252406DB8(v9, v6, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
    sub_25237153C(&v6[*(v4 + 20)], a1, &qword_27F4DB120);
    v10 = type metadata accessor for AccessoryControlModule.Layout.Thermostat;
    v11 = v6;
  }

  else
  {
    v12 = type metadata accessor for AccessoryControl(0);
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    v10 = type metadata accessor for AccessoryControlModule.Layout;
    v11 = v9;
  }

  return sub_252406E20(v11, v10);
}

uint64_t AccessoryControlModule.Layout.hash(into:)(__int128 *a1)
{
  v48 = a1;
  v44 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  MEMORY[0x28223BE20](v44);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AccessoryControlModule.Layout(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2524047FC(v1, v23, type metadata accessor for AccessoryControlModule.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v23;
      v26 = v48;
      MEMORY[0x2530A4FE0](1);
      sub_2523D9328(v26, v25);
    }

    sub_252406DB8(v23, v3, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
    v31 = v48;
    MEMORY[0x2530A4FE0](2);
    AccessoryControl.hash(into:)(v31);
    v32 = v44;
    sub_25237153C(&v3[*(v44 + 20)], v12, &qword_27F4DB120);
    v33 = v47;
    v34 = *(v46 + 48);
    if (v34(v12, 1, v47) == 1)
    {
      sub_252693480();
    }

    else
    {
      v40 = v12;
      v41 = v45;
      sub_252406DB8(v40, v45, type metadata accessor for AccessoryControl);
      sub_252693480();
      AccessoryControl.hash(into:)(v31);
      sub_252406E20(v41, type metadata accessor for AccessoryControl);
    }

    sub_25237153C(&v3[*(v32 + 24)], v9, &qword_27F4DB120);
    if (v34(v9, 1, v33) == 1)
    {
      sub_252693480();
    }

    else
    {
      v42 = v45;
      sub_252406DB8(v9, v45, type metadata accessor for AccessoryControl);
      sub_252693480();
      AccessoryControl.hash(into:)(v31);
      sub_252406E20(v42, type metadata accessor for AccessoryControl);
    }

    v38 = type metadata accessor for AccessoryControlModule.Layout.Thermostat;
    v39 = v3;
  }

  else
  {
    sub_252406DB8(v23, v20, type metadata accessor for AccessoryControlModule.Layout.RVC);
    v28 = v48;
    MEMORY[0x2530A4FE0](0);
    AccessoryControl.hash(into:)(v28);
    sub_25237153C(&v20[*(v18 + 20)], v17, &qword_27F4DB120);
    v29 = v47;
    v30 = *(v46 + 48);
    if (v30(v17, 1, v47) == 1)
    {
      sub_252693480();
    }

    else
    {
      v35 = v17;
      v36 = v45;
      sub_252406DB8(v35, v45, type metadata accessor for AccessoryControl);
      sub_252693480();
      AccessoryControl.hash(into:)(v28);
      sub_252406E20(v36, type metadata accessor for AccessoryControl);
    }

    sub_25237153C(&v20[*(v18 + 24)], v15, &qword_27F4DB120);
    if (v30(v15, 1, v29) == 1)
    {
      sub_252693480();
    }

    else
    {
      v37 = v45;
      sub_252406DB8(v15, v45, type metadata accessor for AccessoryControl);
      sub_252693480();
      AccessoryControl.hash(into:)(v28);
      sub_252406E20(v37, type metadata accessor for AccessoryControl);
    }

    v38 = type metadata accessor for AccessoryControlModule.Layout.RVC;
    v39 = v20;
  }

  return sub_252406E20(v39, v38);
}

uint64_t AccessoryControlModule.hash(into:)(__int128 *a1)
{
  AccessoryControl.ElementIdentifier.hash(into:)(a1);
  v3 = type metadata accessor for AccessoryControlModule(0);
  if (*(v1 + *(v3 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  AccessoryControlModule.Layout.hash(into:)(a1);
  if (!*(v1 + *(v3 + 28) + 8))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_252692C80();
}

uint64_t AccessoryControlModule.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.ElementIdentifier.hash(into:)(v3);
  v1 = type metadata accessor for AccessoryControlModule(0);
  if (*(v0 + *(v1 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  AccessoryControlModule.Layout.hash(into:)(v3);
  if (*(v0 + *(v1 + 28) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  return sub_2526934C0();
}

uint64_t sub_252405DC8(__int128 *a1, uint64_t a2)
{
  AccessoryControl.ElementIdentifier.hash(into:)(a1);
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  AccessoryControlModule.Layout.hash(into:)(a1);
  if (!*(v2 + *(a2 + 28) + 8))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_252692C80();
}

uint64_t sub_252405EB0(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  AccessoryControl.ElementIdentifier.hash(into:)(v5);
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  AccessoryControlModule.Layout.hash(into:)(v5);
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  return sub_2526934C0();
}

uint64_t AccessoryControlModule.description.getter()
{
  sub_252693210();

  strcpy(v9, "Module(label: ");
  HIBYTE(v9[1]) = -18;
  v1 = (v0 + *(type metadata accessor for AccessoryControlModule(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x2530A4800](v2, v3);

  MEMORY[0x2530A4800](47, 0xE100000000000000);
  v4 = AccessoryControl.ElementIdentifier.description.getter();
  MEMORY[0x2530A4800](v4);

  MEMORY[0x2530A4800](8233, 0xE200000000000000);
  v5 = sub_252406110();
  v7 = v6;

  MEMORY[0x2530A4800](v5, v7);

  return v9[0];
}

uint64_t sub_252406110()
{
  v1 = type metadata accessor for AccessoryControlGroup(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControlModule.Layout(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v29 - v9);
  v11 = *(type metadata accessor for AccessoryControlModule(0) + 24);
  sub_2524047FC(v0 + v11, v10, type metadata accessor for AccessoryControlModule.Layout);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
  }

  else
  {
    sub_252406E20(v10, type metadata accessor for AccessoryControlModule.Layout);
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (v13)
  {
    v34 = 91;
    v35 = 0xE100000000000000;
    sub_2524047FC(v0 + v11, v8, type metadata accessor for AccessoryControlModule.Layout);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *v8;
      v15 = *(*v8 + 16);
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_252406E20(v8, type metadata accessor for AccessoryControlModule.Layout);
      v14 = MEMORY[0x277D84F90];
      v15 = *(MEMORY[0x277D84F90] + 16);
      if (!v15)
      {
LABEL_16:

        MEMORY[0x2530A4800](23818, 0xE200000000000000);
        return v34;
      }
    }

    v16 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    v29 = v14;
    v30 = v17;
    do
    {
      sub_2524047FC(v16, v4, type metadata accessor for AccessoryControlGroup);
      v33[0] = 0;
      v33[1] = 0xE000000000000000;
      sub_252693210();

      strcpy(v33, "group(label: ");
      HIWORD(v33[1]) = -4864;
      v24 = &v4[*(v1 + 24)];
      v26 = *v24;
      v25 = v24[1];
      v27 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v27 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
      }

      else
      {
        v25 = 0xE300000000000000;
        v26 = 7104878;
      }

      MEMORY[0x2530A4800](v26, v25);

      MEMORY[0x2530A4800](2112041, 0xE300000000000000);
      v18 = AccessoryControlGroup.Layout.description.getter();
      MEMORY[0x2530A4800](v18);

      v31 = 10;
      v32 = 0xE100000000000000;
      sub_252404480();
      v19 = sub_252693160();

      v31 = v19;
      v20 = sub_252692D00();
      v33[0] = 10;
      v33[1] = 0xE100000000000000;
      MEMORY[0x2530A4800](v20);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB570);
      sub_2523E15A4();
      v21 = sub_252692B40();
      v23 = v22;

      v33[0] = 2314;
      v33[1] = 0xE200000000000000;
      MEMORY[0x2530A4800](v21, v23);

      MEMORY[0x2530A4800](v33[0], v33[1]);

      sub_252406E20(v4, type metadata accessor for AccessoryControlGroup);
      v16 += v30;
      --v15;
    }

    while (v15);
    goto LABEL_16;
  }

  return 23899;
}

uint64_t AccessoryControlModule.debugDescription.getter()
{
  v1 = sub_2526934F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = type metadata accessor for AccessoryControlModule(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  sub_2524047FC(v0, boxed_opaque_existential_0, type metadata accessor for AccessoryControlModule);
  sub_2526934D0();
  v6 = sub_2526934E0();
  (*(v2 + 8))(v4, v1);
  v17[1] = v6;
  sub_252693240();
  sub_2526932B0();
  if (*(&v26 + 1))
  {
    v7 = MEMORY[0x277D84F90];
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_25237153C(v23, &v18, &qword_27F4DB580);
      if (v19)
      {
        v8 = v18;
      }

      else
      {
        v8 = 0x206E776F6E6B6E55;
      }

      if (v19)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      MEMORY[0x2530A4800](v8, v9);

      MEMORY[0x2530A4800](8250, 0xE200000000000000);
      sub_252693250();
      v10 = v21;
      v11 = v22;
      sub_252372288(v23, &qword_27F4DB580);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25236880C(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_25236880C((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      sub_2526932B0();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *&v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB570);
  sub_2523E15A4();
  v15 = sub_252692B40();

  return v15;
}

uint64_t _s22HomeAccessoryControlUI0bC6ModuleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static AccessoryControl.ElementIdentifier.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AccessoryControlModule(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (_s22HomeAccessoryControlUI0bC6ModuleV6LayoutO2eeoiySbAE_AEtFZ_0(a1 + v4[6], a2 + v4[6]))
  {
    v11 = v4[7];
    v12 = (a1 + v11);
    v13 = *(a1 + v11 + 8);
    v14 = (a2 + v11);
    v15 = v14[1];
    if (v13)
    {
      if (v15)
      {
        v16 = *v12 == *v14 && v13 == v15;
        if (v16 || (sub_2526933B0() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s22HomeAccessoryControlUI0bC6ModuleV6LayoutO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControlModule.Layout(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v32 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBA98);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v32 - v20;
  v22 = *(v19 + 56);
  sub_2524047FC(a1, &v32 - v20, type metadata accessor for AccessoryControlModule.Layout);
  sub_2524047FC(a2, &v21[v22], type metadata accessor for AccessoryControlModule.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2524047FC(v21, v17, type metadata accessor for AccessoryControlModule.Layout);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_252406DB8(&v21[v22], v8, type metadata accessor for AccessoryControlModule.Layout.RVC);
      v25 = sub_252406EA0(v17, v8, type metadata accessor for AccessoryControlModule.Layout.RVC);
      sub_252406E20(v8, type metadata accessor for AccessoryControlModule.Layout.RVC);
      v29 = v17;
      v30 = type metadata accessor for AccessoryControlModule.Layout.RVC;
      goto LABEL_14;
    }

    v26 = type metadata accessor for AccessoryControlModule.Layout.RVC;
    v27 = v17;
LABEL_11:
    sub_252406E20(v27, v26);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2524047FC(v21, v12, type metadata accessor for AccessoryControlModule.Layout);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = v33;
      sub_252406DB8(&v21[v22], v33, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      v25 = sub_252406EA0(v12, v28, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      sub_252406E20(v28, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      v29 = v12;
      v30 = type metadata accessor for AccessoryControlModule.Layout.Thermostat;
LABEL_14:
      sub_252406E20(v29, v30);
      goto LABEL_15;
    }

    v26 = type metadata accessor for AccessoryControlModule.Layout.Thermostat;
    v27 = v12;
    goto LABEL_11;
  }

  sub_2524047FC(v21, v15, type metadata accessor for AccessoryControlModule.Layout);
  v24 = *v15;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_2523E5398(v24, *&v21[v22]);

LABEL_15:
    sub_252406E20(v21, type metadata accessor for AccessoryControlModule.Layout);
    return v25 & 1;
  }

LABEL_12:
  sub_252372288(v21, &qword_27F4DBA98);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_252406DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252406E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_252406EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v44 = a3;
  v5 = type metadata accessor for AccessoryControl(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAA0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  if ((static AccessoryControl.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v43 = v18;
  v39 = v12;
  v40 = v8;
  v21 = a2;
  v41 = v44(0);
  v42 = v15;
  v22 = *(v41 + 20);
  v23 = *(v15 + 48);
  v44 = a1;
  sub_25237153C(a1 + v22, v20, &qword_27F4DB120);
  v24 = v21 + v22;
  v25 = v21;
  sub_25237153C(v24, &v20[v23], &qword_27F4DB120);
  v26 = *(v6 + 48);
  if (v26(v20, 1, v5) != 1)
  {
    sub_25237153C(v20, v14, &qword_27F4DB120);
    if (v26(&v20[v23], 1, v5) != 1)
    {
      v28 = &v20[v23];
      v29 = v40;
      sub_252406DB8(v28, v40, type metadata accessor for AccessoryControl);
      v30 = static AccessoryControl.== infix(_:_:)(v14, v29);
      sub_252406E20(v29, type metadata accessor for AccessoryControl);
      sub_252406E20(v14, type metadata accessor for AccessoryControl);
      sub_252372288(v20, &qword_27F4DB120);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_252406E20(v14, type metadata accessor for AccessoryControl);
LABEL_7:
    v27 = v20;
LABEL_15:
    sub_252372288(v27, &qword_27F4DBAA0);
    return 0;
  }

  if (v26(&v20[v23], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_252372288(v20, &qword_27F4DB120);
LABEL_9:
  v31 = v25;
  v32 = *(v41 + 24);
  v33 = *(v42 + 48);
  v34 = v43;
  sub_25237153C(v44 + v32, v43, &qword_27F4DB120);
  sub_25237153C(v31 + v32, v34 + v33, &qword_27F4DB120);
  if (v26(v34, 1, v5) == 1)
  {
    if (v26((v34 + v33), 1, v5) == 1)
    {
      sub_252372288(v34, &qword_27F4DB120);
      return 1;
    }

    goto LABEL_14;
  }

  v35 = v39;
  sub_25237153C(v34, v39, &qword_27F4DB120);
  if (v26((v34 + v33), 1, v5) == 1)
  {
    sub_252406E20(v35, type metadata accessor for AccessoryControl);
LABEL_14:
    v27 = v34;
    goto LABEL_15;
  }

  v37 = v40;
  sub_252406DB8(v34 + v33, v40, type metadata accessor for AccessoryControl);
  v38 = static AccessoryControl.== infix(_:_:)(v35, v37);
  sub_252406E20(v37, type metadata accessor for AccessoryControl);
  sub_252406E20(v35, type metadata accessor for AccessoryControl);
  sub_252372288(v34, &qword_27F4DB120);
  return (v38 & 1) != 0;
}

uint64_t sub_25240744C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252407594()
{
  type metadata accessor for AccessoryControl.ElementIdentifier();
  if (v0 <= 0x3F)
  {
    sub_252404218();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccessoryControlModule.Layout(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252407634()
{
  type metadata accessor for AccessoryControlModule.Layout.RVC(319);
  if (v0 <= 0x3F)
  {
    sub_2524076BC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccessoryControlModule.Layout.Thermostat(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2524076BC()
{
  if (!qword_27F4DBA60)
  {
    sub_25240775C(0, &qword_27F4DBA68, type metadata accessor for AccessoryControlGroup, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DBA60);
    }
  }
}

void sub_25240775C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryControl(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_2524079EC()
{
  type metadata accessor for AccessoryControl(319);
  if (v0 <= 0x3F)
  {
    sub_25240775C(319, &qword_27F4DBA80, type metadata accessor for AccessoryControl, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_252407AAC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v9 = v1;
  sub_252409178();
  sub_25268DB30();

  v3 = v1[2];
  v9 = v1[1];
  v10 = v3;
  v4 = v1[4];
  v11 = v1[3];
  v12 = v4;
  sub_2524091D0(&v9, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

uint64_t sub_252407B48@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v10[0] = v3;
  sub_252409178();
  sub_25268DB30();

  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a2 = v3[1];
  a2[1] = v7;
  a2[2] = v3[3];
  a2[3] = v6;
  return sub_2524091D0(v10, &v9);
}

uint64_t sub_252407BE4()
{
  swift_getKeyPath();
  sub_252409178();
  sub_25268DB20();
}

uint64_t sub_252407C90(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v4;
  v5 = a2[3];
  *(a1 + 48) = a2[2];
  *(a1 + 64) = v5;
  sub_2524091D0(a2, &v7);
  return sub_252408FDC(v2, v3);
}

uint64_t sub_252407D30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = swift_allocObject();
  v23[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAD0);
  if (swift_dynamicCast())
  {
    sub_25235E1A4(&v24, v5 + 16);
    v7 = sub_252692E30();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_252692E00();
    v9 = a1;

    v10 = sub_252692DF0();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v5;
    v11[5] = v8;
    v11[6] = a1;

    sub_2525738C0(0, 0, v4, &unk_252696BE0, v11);
  }

  *&v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_252372288(&v24, &qword_27F4DBAD8);
  swift_deallocUninitializedObject();
  v21[0] = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAE0);
  if (swift_dynamicCast())
  {
    sub_25235E1A4(&v24, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_25268D770();
    if (v15)
    {

      sub_2523C3820(v23, v21);
      v16 = v22;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x28223BE20](v17);
      v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_252408DE0(v19, v16, &v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      sub_2524086B4(&v24, a1);
      sub_252408FAC(&v24);
      return __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    *&v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_252372288(&v24, &qword_27F4DBAE8);
  }

  if (qword_27F4DA9A0 != -1)
  {
    swift_once();
  }

  v24 = xmmword_27F4FB380;
  v25 = *algn_27F4FB390;
  v26 = xmmword_27F4FB3A0;
  v27 = unk_27F4FB3B0;
  return sub_2524086B4(&v24, a1);
}

uint64_t sub_252408150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  sub_252692E00();
  v6[36] = sub_252692DF0();
  v8 = sub_252692DE0();
  v6[37] = v8;
  v6[38] = v7;

  return MEMORY[0x2822009F8](sub_2524081EC, v8, v7);
}

uint64_t sub_2524081EC()
{
  v1 = *(v0 + 264);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_2524082B8;

  return MEMORY[0x282170990](v2, v3);
}

uint64_t sub_2524082B8()
{
  v1 = *v0;

  swift_endAccess();
  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_2524083E4, v3, v2);
}

uint64_t sub_2524083E4()
{
  v1 = *(v0 + 264);

  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  sub_25268D770();
  v7 = v6;
  (*(v4 + 8))(v5, v2);
  if (v7)
  {

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_9;
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    swift_beginAccess();
    v10 = *(v9 + 40);
    v11 = __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
    v12 = *(v10 - 8);
    v13 = swift_task_alloc();
    (*(v12 + 16))(v13, v11, v10);
    sub_252408DE0(v13, v10, (v0 + 80));

    sub_2524086B4(v0 + 80, v8);
    sub_252408FAC(v0 + 80);
  }

  else
  {

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_9;
    }

    if (qword_27F4DA9A0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 280);
    v16 = xmmword_27F4FB3A0;
    v15 = unk_27F4FB3B0;
    v17 = *algn_27F4FB390;
    *(v0 + 16) = xmmword_27F4FB380;
    *(v0 + 32) = v17;
    *(v0 + 48) = v16;
    *(v0 + 64) = v15;
    sub_2524086B4(v0 + 16, v14);
  }

LABEL_9:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2524086B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v26 = *a1;
  v27 = v4;
  v5 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v5;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v6 = sub_2526905A0();
  __swift_project_value_buffer(v6, qword_27F4E4B18);
  sub_252408F74(a1, v25);
  v7 = a2;
  v8 = sub_252690580();
  v9 = sub_252692F10();
  sub_252408FAC(a1);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v25[0] = v11;
    *v10 = 136446722;
    if (*(a1 + 8))
    {
      v12 = *a1;
      v13 = *(a1 + 8);
    }

    else
    {
      v12 = 1819047278;
      v13 = 0xE400000000000000;
    }

    v14 = sub_2525BDA90(v12, v13, v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = *(a1 + 24);
    if (v15)
    {
      v16 = *(a1 + 16);
      v17 = v15;
    }

    else
    {
      v16 = 1819047278;
      v17 = 0xE400000000000000;
    }

    v18 = sub_2525BDA90(v16, v17, v25);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAF8);
    v20 = sub_252692C00();
    v22 = sub_2525BDA90(v20, v21, v25);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_252309000, v8, v9, "Presenting error with title: %{public}s, description: %s, original: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v11, -1, -1);
    MEMORY[0x2530A5A40](v10, -1, -1);
  }

  v25[0] = v26;
  v25[1] = v27;
  v25[2] = v28;
  v25[3] = v29;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_252409178();
  sub_25268DB20();
}

double sub_2524089B4()
{
  *&v3 = sub_252692C40();
  *(&v3 + 1) = v0;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7[0] = v3;
  v7[1] = v0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  sub_252408F74(&v3, &v2);
  sub_252408FAC(v7);
  xmmword_27F4FB380 = v3;
  *algn_27F4FB390 = v4;
  result = *&v5;
  xmmword_27F4FB3A0 = v5;
  unk_27F4FB3B0 = v6;
  return result;
}

uint64_t sub_252408A34()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_252408A64()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_252408A94()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_252408AC4()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_252408B04()
{
  sub_252408FDC(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC22HomeAccessoryControlUI30AccessoryControlAlertViewModel___observationRegistrar;
  v2 = sub_25268DB70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryControlAlertViewModel()
{
  result = qword_27F4DBAB0;
  if (!qword_27F4DBAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252408C08()
{
  result = sub_25268DB70();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252408CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_252408D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_252408D8C()
{
  result = qword_27F4DBAC0;
  if (!qword_27F4DBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBAC0);
  }

  return result;
}

double sub_252408DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v24 = a3;
  v23 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 32))(v5);
  v7 = sub_25268D770();
  v9 = v8;
  v10 = sub_25268D760();
  v12 = v11;
  v13 = sub_25268D750();
  v15 = v14;
  v16 = sub_25268D780();
  v18 = v17;
  *&v25 = v7;
  *(&v25 + 1) = v9;
  *&v26 = v10;
  *(&v26 + 1) = v12;
  *&v27 = v13;
  *(&v27 + 1) = v15;
  *&v28 = v16;
  *(&v28 + 1) = v17;
  sub_252408F74(&v25, v29);
  (*(v23 + 8))(v5, a2);
  v29[0] = v7;
  v29[1] = v9;
  v29[2] = v10;
  v29[3] = v12;
  v29[4] = v13;
  v29[5] = v15;
  v29[6] = v16;
  v29[7] = v18;
  sub_252408FAC(v29);
  v19 = v26;
  v20 = v24;
  *v24 = v25;
  v20[1] = v19;
  result = *&v27;
  v22 = v28;
  v20[2] = v27;
  v20[3] = v22;
  return result;
}

uint64_t sub_252408FDC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_252409094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2523E233C;

  return sub_252408150(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_252409178()
{
  result = qword_27F4DBAF0;
  if (!qword_27F4DBAF0)
  {
    type metadata accessor for AccessoryControlAlertViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBAF0);
  }

  return result;
}

uint64_t sub_2524091D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AccessoryControlBearer.controlModules(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v67 = sub_25268E040();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268E8D0();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268F890();
  v10 = *(v9 - 8);
  v58 = v9;
  v59 = v10;
  MEMORY[0x28223BE20](v9);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = sub_25268DA10();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - v26;
  (*(a3 + 16))(a2, a3);
  v28 = (*(v19 + 48))(v17, 1, v18);
  v66 = a2;
  if (v28 == 1)
  {
    sub_252372288(v17, &qword_27F4DB290);
LABEL_16:
    v47 = sub_25268F610();
    (*(*(v47 - 8) + 56))(v25, 1, 1, v47);
    goto LABEL_17;
  }

  (*(v19 + 32))(v21, v17, v18);
  v29 = (*(a3 + 24))(a2, a3);
  if (v30)
  {
    goto LABEL_15;
  }

  v55 = v29;
  v56 = v3;
  sub_25268E1B0();
  v31 = sub_25268E1A0();
  v32 = sub_25268E170();

  if (*(v32 + 16))
  {
    v33 = sub_252367880(v21);
    v34 = v58;
    if (v35)
    {
      (*(v59 + 16))(v14, *(v32 + 56) + *(v59 + 72) * v33, v58);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  else
  {
    v36 = 1;
    v34 = v58;
  }

  v37 = v59;
  (*(v59 + 56))(v14, v36, 1, v34);
  if (!(*(v37 + 48))(v14, 1, v34))
  {
    v39 = v57;
    (*(v37 + 16))(v57, v14, v34);
    sub_252372288(v14, &qword_27F4DADF0);
    v40 = v37;
    v41 = sub_25268F870();
    (*(v40 + 8))(v39, v34);
    if (*(v41 + 16))
    {
      v42 = sub_252372350(v55);
      if (v43)
      {
        v44 = v42;
        v59 = *(v41 + 56);
        v45 = sub_25268F610();
        v46 = *(v45 - 8);
        (*(v46 + 16))(v25, v59 + *(v46 + 72) * v44, v45);
        (*(v19 + 8))(v21, v18);

        (*(v46 + 56))(v25, 0, 1, v45);
        goto LABEL_17;
      }
    }

LABEL_15:
    (*(v19 + 8))(v21, v18);
    goto LABEL_16;
  }

  (*(v19 + 8))(v21, v18);
  sub_252372288(v14, &qword_27F4DADF0);
  v38 = sub_25268F610();
  (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
LABEL_17:
  v48 = v66;
  sub_2523714D4(v25, v27, &qword_27F4DB070);
  sub_25268E1B0();
  v49 = sub_25268E1A0();
  v50 = v60;
  sub_25268E140();

  v51 = v63;
  sub_25268E870();
  (*(v61 + 8))(v50, v62);
  v52 = (*(a3 + 32))(v64, v27, v51, v48, a3);
  (*(v65 + 8))(v51, v67);
  sub_252372288(v27, &qword_27F4DB070);
  return v52;
}

uint64_t StaticService.homeIDForMatterSnapshotLookups.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_25268EA40();
  v5 = sub_25268E710();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_252372288(v4, &qword_27F4DB058);
    v7 = 1;
  }

  else
  {
    MEMORY[0x2530A0260]();
    (*(v6 + 8))(v4, v5);
    v7 = 0;
  }

  v8 = sub_25268DA10();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t StaticService.matterNodeID.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_25268EA40();
  v3 = sub_25268E710();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_252372288(v2, &qword_27F4DB058);
    return 0;
  }

  else
  {
    v6 = sub_25268E340();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t StaticService.controlModules(context:matterDevice:staticHome:)(uint64_t a1, uint64_t a2, char *a3)
{
  v42 = a3;
  v40 = a1;
  v5 = type metadata accessor for AccessoryControlSolver.HAP();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_25268E710();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v41 = v3;
  sub_25268EA40();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v24 = &qword_27F4DB058;
    v25 = v13;
LABEL_5:
    sub_252372288(v25, v24);
    goto LABEL_6;
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_25240ABDC(a2, v10);
  v26 = sub_25268F610();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v10, 1, v26) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v24 = &qword_27F4DB070;
    v25 = v10;
    goto LABEL_5;
  }

  v31 = sub_25268F600();
  (*(v27 + 8))(v10, v26);
  v32 = v31;
  v33 = sub_25268E320();
  if (*(v31 + 16))
  {
    v34 = sub_252367690(v33);
    if (v35)
    {
      v36 = v34;
      v39 = *(v32 + 56);
      v37 = sub_25268EE60();
      v38 = *(v37 - 8);
      (*(v38 + 16))(v21, v39 + *(v38 + 72) * v36, v37);
      (*(v15 + 8))(v17, v14);

      (*(v38 + 56))(v21, 0, 1, v37);
      goto LABEL_7;
    }
  }

  (*(v15 + 8))(v17, v14);
LABEL_6:
  v28 = sub_25268EE60();
  (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
LABEL_7:
  sub_2523714D4(v21, v23, &qword_27F4DAD58);
  sub_25240AB78(v40, v7);
  v29 = AccessoryControlSolver.HAP.controlModules(with:endpoint:staticHome:)(v41, v23, v42);
  sub_25240ACB0(v7, type metadata accessor for AccessoryControlSolver.HAP);
  sub_252372288(v23, &qword_27F4DAD58);
  return v29;
}

uint64_t sub_25240A1C0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_25268EA40();
  v5 = sub_25268E710();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_252372288(v4, &qword_27F4DB058);
    v7 = 1;
  }

  else
  {
    MEMORY[0x2530A0260]();
    (*(v6 + 8))(v4, v5);
    v7 = 0;
  }

  v8 = sub_25268DA10();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_25240A32C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_25268EA40();
  v3 = sub_25268E710();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_252372288(v2, &qword_27F4DB058);
    return 0;
  }

  else
  {
    v6 = sub_25268E340();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t StaticAccessory.homeIDForMatterSnapshotLookups.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25268EF20();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_25268F060();
    v3 = 0;
  }

  v4 = sub_25268DA10();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t StaticAccessory.controlModules(context:matterDevice:staticHome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AccessoryControlSolver.HAP();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25240AB78(a1, v9);
  v10 = AccessoryControlSolver.HAP.controlModules(with:matterDevice:staticHome:)(v3, a2, a3);
  sub_25240ACB0(v9, type metadata accessor for AccessoryControlSolver.HAP);
  return v10;
}

uint64_t sub_25240A5B0@<X0>(uint64_t a1@<X8>)
{
  sub_25268EF20();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_25268F060();
    v3 = 0;
  }

  v4 = sub_25268DA10();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t sub_25240A654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AccessoryControlSolver.HAP();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25240AB78(a1, v9);
  v10 = AccessoryControlSolver.HAP.controlModules(with:matterDevice:staticHome:)(v3, a2, a3);
  sub_25240ACB0(v9, type metadata accessor for AccessoryControlSolver.HAP);
  return v10;
}

uint64_t StaticServiceGroup.controlModules(context:matterDevice:staticHome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControlSolver.HAP();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25240AB78(a1, v8);
  v9 = AccessoryControlSolver.HAP.controlModules(with:staticHome:)(v3, a3);
  sub_25240ACB0(v8, type metadata accessor for AccessoryControlSolver.HAP);
  return v9;
}

uint64_t sub_25240A7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControlSolver.HAP();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25240AB78(a1, v8);
  v9 = AccessoryControlSolver.HAP.controlModules(with:staticHome:)(v3, a3);
  sub_25240ACB0(v8, type metadata accessor for AccessoryControlSolver.HAP);
  return v9;
}

uint64_t sub_25240A89C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25268DA10();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t StaticMatterDevice.controlModules(context:matterDevice:staticHome:)(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControlSolver.Context();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25240AB78(a1, v4);
  type metadata accessor for AccessoryControlSolver.Matter();
  v5 = swift_allocObject();
  sub_25240AC4C(v4, v5 + OBJC_IVAR____TtCC22HomeAccessoryControlUI22AccessoryControlSolver6Matter_context);
  v6 = AccessoryControlSolver.Matter.controlModules(with:)();
  swift_setDeallocating();
  sub_25240ACB0(v5 + OBJC_IVAR____TtCC22HomeAccessoryControlUI22AccessoryControlSolver6Matter_context, type metadata accessor for AccessoryControlSolver.Context);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_25240AA5C(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControlSolver.Context();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25240AB78(a1, v4);
  type metadata accessor for AccessoryControlSolver.Matter();
  v5 = swift_allocObject();
  sub_25240AC4C(v4, v5 + OBJC_IVAR____TtCC22HomeAccessoryControlUI22AccessoryControlSolver6Matter_context);
  v6 = AccessoryControlSolver.Matter.controlModules(with:)();
  swift_setDeallocating();
  sub_25240ACB0(v5 + OBJC_IVAR____TtCC22HomeAccessoryControlUI22AccessoryControlSolver6Matter_context, type metadata accessor for AccessoryControlSolver.Context);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_25240AB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlSolver.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25240ABDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25240AC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlSolver.Context();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25240ACB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25240AD10(uint64_t a1)
{
  result = sub_25240AE70(&qword_27F4DBB08, MEMORY[0x277D15AC0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25240AD68(uint64_t a1)
{
  result = sub_25240AE70(&qword_27F4DBB10, MEMORY[0x277D15D48]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25240ADC0(uint64_t a1)
{
  result = sub_25240AE70(&qword_27F4DBB18, MEMORY[0x277D164A0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25240AE18(uint64_t a1)
{
  result = sub_25240AE70(&qword_27F4DBB20, MEMORY[0x277D16410]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25240AE70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AccessoryControlSolver.Matter.Lightbulb.set(newColor:config:endpointPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v100 = a3;
  v101 = a4;
  v6 = sub_25268FF10();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v89 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v89 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v89 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  v24 = sub_25268ED20();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v31 = (&v89 - v29);
  if (*(a2 + 2) != 1)
  {
    if (*(a2 + 1))
    {
      v39 = LightbulbColor.toTemperature.getter();
      if ((v39 & 0x10000) == 0)
      {
        *v9 = v39;
        v41 = v98;
        v40 = v99;
        (*(v98 + 104))(v9, *MEMORY[0x277D16C50], v99);
        v38 = sub_2523693D4(0, 1, 1, MEMORY[0x277D84F90]);
        v43 = v38[2];
        v42 = v38[3];
        if (v43 >= v42 >> 1)
        {
          v38 = sub_2523693D4(v42 > 1, v43 + 1, 1, v38);
        }

        v38[2] = v43 + 1;
        (*(v41 + 32))(v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v43, v9, v40);
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v49 = sub_2526905A0();
    __swift_project_value_buffer(v49, qword_27F4E4B18);
    v50 = sub_252690580();
    v51 = sub_252692EF0();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_20;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_252309000, v50, v51, "Accessory does not support any Color attributes!", v52, 2u);
LABEL_19:
    MEMORY[0x2530A5A40](v52, -1, -1);
LABEL_20:

LABEL_21:
    v38 = MEMORY[0x277D84F90];
LABEL_22:
    v53 = sub_25240B994(v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
    v54 = sub_25268E710();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_252694E90;
    (*(v55 + 16))(v57 + v56, v100, v54);
    v58 = sub_25240C51C(v57);
    swift_setDeallocating();
    (*(v55 + 8))(v57 + v56, v54);
    swift_deallocClassInstance();
    result = sub_2523F648C(v53, v58, &v102);
    *v101 = v102;
    return result;
  }

  if (!*(a2 + 1))
  {
    LightbulbColor.toHSV.getter();
    if ((v44 & 1) == 0)
    {
      sub_25268FF00();
      v38 = sub_2523693D4(0, 1, 1, MEMORY[0x277D84F90]);
      v46 = v38[2];
      v45 = v38[3];
      if (v46 >= v45 >> 1)
      {
        v38 = sub_2523693D4(v45 > 1, v46 + 1, 1, v38);
      }

      v48 = v98;
      v47 = v99;
      v38[2] = v46 + 1;
      (*(v48 + 32))(v38 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v46, v12, v47);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v32 = *(a2 + 4);
  v33 = *(a2 + 6);
  v92 = *(a2 + 8);
  v93 = v32;
  v94 = *(a2 + 10);
  v95 = v33;
  v34 = v28;
  v35 = v30;
  v90 = *(v30 + 16);
  v91 = v30 + 16;
  v90(&v89 - v29, a1, v28);
  v96 = v34;
  v97 = v35;
  v36 = (*(v35 + 88))(v31, v34);
  if (v36 == *MEMORY[0x277D15B40])
  {
    LightbulbColor.toHSV.getter();
    if (v37)
    {
      v38 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_25268FF00();
      v38 = sub_2523693D4(0, 1, 1, MEMORY[0x277D84F90]);
      v66 = v38[2];
      v65 = v38[3];
      if (v66 >= v65 >> 1)
      {
        v38 = sub_2523693D4(v65 > 1, v66 + 1, 1, v38);
      }

      v68 = v98;
      v67 = v99;
      v38[2] = v66 + 1;
      (*(v68 + 32))(v38 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v66, v23, v67);
    }

    (*(v97 + 8))(v31, v96);
    goto LABEL_22;
  }

  if (v36 == *MEMORY[0x277D15B38])
  {
    LightbulbColor.toHSV.getter();
    if ((v60 & 1) == 0)
    {
      sub_25268FF00();
      v38 = sub_2523693D4(0, 1, 1, MEMORY[0x277D84F90]);
      v62 = v38[2];
      v61 = v38[3];
      if (v62 >= v61 >> 1)
      {
        v38 = sub_2523693D4(v61 > 1, v62 + 1, 1, v38);
      }

      v64 = v98;
      v63 = v99;
      v38[2] = v62 + 1;
      (*(v64 + 32))(v38 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v62, v21, v63);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v36 == *MEMORY[0x277D15B28])
  {
    (*(v97 + 96))(v31, v96);
    v69 = *v31;
    if (((v95 | v94) & 1) != 0 || (v69 >= v93 ? (v70 = v92 >= v69) : (v70 = 0), v70))
    {
      *v15 = v69;
      v82 = v98;
      v81 = v99;
      (*(v98 + 104))(v15, *MEMORY[0x277D16C50], v99);
      v38 = sub_2523693D4(0, 1, 1, MEMORY[0x277D84F90]);
      v84 = v38[2];
      v83 = v38[3];
      if (v84 >= v83 >> 1)
      {
        v38 = sub_2523693D4(v83 > 1, v84 + 1, 1, v38);
      }

      v38[2] = v84 + 1;
      (*(v82 + 32))(v38 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v84, v15, v81);
      goto LABEL_22;
    }

    LightbulbColor.toHSV.getter();
    if ((v71 & 1) == 0)
    {
      sub_25268FF00();
      v38 = sub_2523693D4(0, 1, 1, MEMORY[0x277D84F90]);
      v86 = v38[2];
      v85 = v38[3];
      if (v86 >= v85 >> 1)
      {
        v38 = sub_2523693D4(v85 > 1, v86 + 1, 1, v38);
      }

      v88 = v98;
      v87 = v99;
      v38[2] = v86 + 1;
      (*(v88 + 32))(v38 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v86, v18, v87);
      goto LABEL_22;
    }

    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v72 = sub_2526905A0();
    __swift_project_value_buffer(v72, qword_27F4E4B18);
    v73 = a1;
    v74 = v96;
    v90(v27, v73, v96);
    v50 = sub_252690580();
    v75 = sub_252692EF0();
    if (!os_log_type_enabled(v50, v75))
    {

      (*(v97 + 8))(v27, v74);
      goto LABEL_21;
    }

    v52 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v102 = v76;
    *v52 = 136446210;
    v77 = LightbulbColor.description.getter();
    v79 = v78;
    (*(v97 + 8))(v27, v74);
    v80 = sub_2525BDA90(v77, v79, &v102);

    *(v52 + 4) = v80;
    _os_log_impl(&dword_252309000, v50, v75, "Couldn't convert color temperature to Hue/Saturation %{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    MEMORY[0x2530A5A40](v76, -1, -1);
    goto LABEL_19;
  }

  if (v36 == *MEMORY[0x277D15B30])
  {
    (*(v97 + 8))(v31, v96);
    goto LABEL_21;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_25240B994(uint64_t a1)
{
  v2 = sub_25268FF10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2523703B4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2523703B4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_25240C9FC(&qword_27F4DBB58, MEMORY[0x277D16C60]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
      v9(boxed_opaque_existential_0, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_25235E1A4(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_25240BB8C(uint64_t a1)
{
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_252370544(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_252370544((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_25235E20C(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_25240BD30(uint64_t a1)
{
  v2 = sub_25268F4D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB30);
    v9 = sub_2526931F0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25240C9FC(&qword_27F4DAF28, MEMORY[0x277D16348]);
      v16 = sub_252692B20();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25240C9FC(&qword_27F4DAF30, MEMORY[0x277D16348]);
          v23 = sub_252692B70();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25240C0C8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_2526931F0();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + 8 * v5);
      sub_252693460();
      MEMORY[0x2530A4FE0](v11);
      result = sub_2526934C0();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25240C1FC(uint64_t a1)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB28);
    v9 = sub_2526931F0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25240C9FC(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
      v16 = sub_252692B20();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25240C9FC(&qword_27F4DAF90, MEMORY[0x277CC95F0]);
          v23 = sub_252692B70();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25240C51C(uint64_t a1)
{
  v2 = sub_25268E710();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB50);
    v9 = sub_2526931F0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_25240C9FC(&qword_27F4DAFD0, MEMORY[0x277D15980]);
      v16 = sub_252692B20();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_25240C9FC(&qword_27F4DAFD8, MEMORY[0x277D15980]);
          v23 = sub_252692B70();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25240C894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB38);
    v3 = sub_2526931F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_252693460();

      sub_252692C80();
      result = sub_2526934C0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2526933B0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25240C9FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25240CA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  MEMORY[0x28223BE20](v2);
  v4 = &v60 - v3;
  v71 = sub_25268DA10();
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v60 - v7;
  v8 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v60 - v12);
  MEMORY[0x28223BE20](v14);
  v73 = (&v60 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v60 - v20);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - v24;
  v26 = *(a1 + 16);
  if (v26)
  {
    v77 = a1;
    v27 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB88);
    v62 = v26;
    v28 = sub_2526931F0();
    v29 = 0;
    v76 = v28 + 56;
    v64 = v77 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v77 = *(v27 + 72);
    v68 = (v75 + 32);
    v69 = (v75 + 8);
    v72 = v2;
    v70 = v10;
    v63 = v21;
    v75 = v28;
    v66 = v25;
    while (1)
    {
      v65 = v29;
      sub_25240D380(v64 + v77 * v29, v25);
      sub_252693460();
      sub_25240D380(v25, v21);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v33 = v61;
          v34 = v21;
          v35 = v71;
          (*v68)(v61, v34, v71);
          MEMORY[0x2530A4FE0](2);
          sub_25240C9FC(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
          sub_252692B30();
          v36 = v33;
          v10 = v70;
          (*v69)(v36, v35);
        }
      }

      else
      {
        v32 = *v21;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v32);
      }

      v37 = sub_2526934C0();
      v30 = v75;
      v74 = ~(-1 << *(v75 + 32));
      v38 = v37 & v74;
      v39 = (v37 & v74) >> 6;
      v40 = *(v76 + 8 * v39);
      v41 = 1 << (v37 & v74);
      if ((v41 & v40) != 0)
      {
        break;
      }

LABEL_11:
      *(v76 + 8 * v39) = v40 | v41;
      result = sub_25240D4A8(v25, *(v30 + 48) + v38 * v77);
      v43 = *(v30 + 16);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        __break(1u);
        return result;
      }

      *(v30 + 16) = v45;
LABEL_4:
      v29 = v65 + 1;
      v21 = v63;
      if (v65 + 1 == v62)
      {
        return v30;
      }
    }

    while (1)
    {
      sub_25240D380(*(v30 + 48) + v38 * v77, v18);
      v46 = *(v2 + 48);
      sub_25240D380(v18, v4);
      sub_25240D380(v25, &v4[v46]);
      v47 = swift_getEnumCaseMultiPayload();
      if (v47)
      {
        if (v47 == 1)
        {
          sub_25240D3E4(v18);
          sub_25240D380(v4, v13);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_14;
          }

          v48 = *v13;
          v49 = *&v4[v46];
          sub_25240D3E4(v4);
          v50 = v48 == v49;
          v2 = v72;
          if (v50)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_25240D380(v4, v10);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            sub_25240D3E4(v18);
            (*v69)(v10, v71);
LABEL_14:
            sub_25240D440(v4);
            goto LABEL_15;
          }

          v53 = v67;
          v54 = v13;
          v55 = v71;
          (*v68)(v67, &v4[v46], v71);
          v56 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
          v57 = *v69;
          v58 = v53;
          v10 = v70;
          (*v69)(v58, v55);
          sub_25240D3E4(v18);
          v59 = v55;
          v13 = v54;
          v25 = v66;
          v57(v10, v59);
          v2 = v72;
          sub_25240D3E4(v4);
          if (v56)
          {
LABEL_3:
            sub_25240D3E4(v25);
            v30 = v75;
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_25240D3E4(v18);
        sub_25240D380(v4, v73);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_14;
        }

        v51 = *v73;
        v52 = *&v4[v46];
        sub_25240D3E4(v4);
        v50 = v51 == v52;
        v2 = v72;
        if (v50)
        {
          goto LABEL_3;
        }
      }

LABEL_15:
      v30 = v75;
      v38 = (v38 + 1) & v74;
      v39 = v38 >> 6;
      v40 = *(v76 + 8 * (v38 >> 6));
      v41 = 1 << v38;
      if ((v40 & (1 << v38)) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25240D0F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB80);
    v3 = sub_2526931F0();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v6 = v24 + 16 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      sub_252693460();
      MEMORY[0x2530A4FE0](v8);

      sub_2523D782C(v25, v7);
      result = sub_2526934C0();
      v10 = ~(-1 << *(v3 + 32));
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v5 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) != 0)
      {
        break;
      }

LABEL_17:
      *(v5 + 8 * v12) = v13 | v14;
      v19 = *(v3 + 48) + 16 * v11;
      *v19 = v7;
      *(v19 + 8) = v8;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    while (1)
    {
      v15 = *(v3 + 48) + 16 * v11;
      v16 = *v15;
      if (*(v15 + 8))
      {
        if (v8)
        {
          j__swift_bridgeObjectRetain();
          j__swift_bridgeObjectRetain();
          j__swift_bridgeObjectRetain();
          v17 = sub_25243965C(v16, v7);
          j__swift_bridgeObjectRelease();
          j__swift_bridgeObjectRelease();
          result = j__swift_bridgeObjectRelease();
          if (v17)
          {
            goto LABEL_3;
          }

          goto LABEL_8;
        }
      }

      else if ((v8 & 1) == 0)
      {
        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        v18 = sub_25243965C(v16, v7);
        j__swift_bridgeObjectRelease();
        j__swift_bridgeObjectRelease();
        result = j__swift_bridgeObjectRelease();
        if (v18)
        {
LABEL_3:
          j__swift_bridgeObjectRelease();
          v1 = v23;
          goto LABEL_4;
        }

        goto LABEL_8;
      }

      j__swift_bridgeObjectRetain();
      j__swift_bridgeObjectRetain();
      j__swift_bridgeObjectRelease();
      result = j__swift_bridgeObjectRelease();
LABEL_8:
      v11 = (v11 + 1) & v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v13 & (1 << v11)) == 0)
      {
        v1 = v23;
        goto LABEL_17;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25240D380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25240D3E4(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25240D440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25240D4A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_25240D50C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_252693460();
  MEMORY[0x2530A4FE0](v3);
  v4 = sub_2526934C0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_25240D5D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_252693460();
  MEMORY[0x2530A4FE0](a1);
  v4 = sub_2526934C0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_25240D6A4(uint64_t a1, uint64_t a2)
{
  v43 = sub_25268DA10();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v38 - v13);
  MEMORY[0x28223BE20](v15);
  v44 = (&v38 - v16);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v47 = v18;
  v41 = v4;
  sub_252693460();
  v21 = a1;
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)();
  v22 = sub_2526934C0();
  v23 = -1 << *(a2 + 32);
  v24 = v22 & ~v23;
  v49 = a2 + 56;
  if (((*(a2 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    return 0;
  }

  v45 = a2;
  v46 = ~v23;
  v47 = *(v47 + 72);
  v48 = v21;
  v42 = (v41 + 8);
  v38 = (v41 + 32);
  v39 = v6;
  while (1)
  {
    sub_2524193D4(*(a2 + 48) + v47 * v24, v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v25 = *(v6 + 48);
    sub_2524193D4(v20, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524193D4(v48, &v8[v25], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_2524194A4(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524193D4(v8, v44, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_5;
    }

    v27 = *v44;
    v28 = *&v8[v25];
    sub_2524194A4(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (v27 == v28)
    {
      return 1;
    }

LABEL_6:
    a2 = v45;
    v24 = (v24 + 1) & v46;
    if (((*(v49 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      return 0;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2524194A4(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524193D4(v8, v14, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v14 == *&v8[v25])
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_2524193D4(v8, v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2524194A4(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    (*v42)(v11, v43);
LABEL_5:
    sub_252372288(v8, &qword_27F4DAE50);
    goto LABEL_6;
  }

  v29 = v9;
  v30 = v14;
  v31 = v11;
  v32 = v40;
  v33 = v43;
  (*v38)(v40, &v8[v25], v43);
  LODWORD(v41) = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
  v34 = *v42;
  v35 = v32;
  v11 = v31;
  v14 = v30;
  v9 = v29;
  (*v42)(v35, v33);
  sub_2524194A4(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v36 = v33;
  v6 = v39;
  v34(v11, v36);
  if ((v41 & 1) == 0)
  {
LABEL_17:
    sub_2524194A4(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    goto LABEL_6;
  }

LABEL_20:
  sub_2524194A4(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  return 1;
}

BOOL AccessoryControl.StatusProvider.isTransitioning(for:)(uint64_t *a1)
{
  v3 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  v7 = a1[4];
  sub_2524193D4(v1, v5, type metadata accessor for AccessoryControl.StatusProvider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v9 = *v5;
      if (v9)
      {
        if (v7 != 1 && (v6 & 1) != 0)
        {
LABEL_6:
          v10 = 1;
LABEL_16:
          v11 = sub_25240D5D8(v10, v9);

          return v11;
        }

LABEL_15:
        v10 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      sub_2524194A4(v5, type metadata accessor for AccessoryControl.StatusProvider);
    }

    return 0;
  }

  v9 = *v5;
  if (!v9)
  {
    return 0;
  }

  if (!sub_25240D5D8(2, v9) && !sub_25240D5D8(3, v9))
  {
    if (v7 != 1 && (v6 & 1) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  return 1;
}

uint64_t type metadata accessor for AccessoryControl.StatusProvider()
{
  result = qword_27F4DBBA0;
  if (!qword_27F4DBBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccessoryControl.StatusProvider.status(for:)(__int128 *a1)
{
  v3 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v10 = a1[1];
  v11 = v6;
  v7 = *(a1 + 4);
  sub_2524193D4(v1, v5, type metadata accessor for AccessoryControl.StatusProvider);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    return *v5;
  }

  sub_2524194A4(v5, type metadata accessor for AccessoryControl.StatusProvider);
  v12[1] = v10;
  v12[0] = v11;
  v13 = v7;
  result = sub_25240DECC(v12);
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_25240DECC(uint64_t *a1)
{
  v3 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[4];
  sub_2524193D4(v1, v5, type metadata accessor for AccessoryControl.StatusProvider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    if ((EnumCaseMultiPayload - 8) < 2)
    {
      return sub_25268EB90();
    }

    if (EnumCaseMultiPayload == 10)
    {
      return sub_25268EA00();
    }

    if (EnumCaseMultiPayload == 11)
    {
      return sub_25268E9C0();
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (v7 != 1)
    {
      v11 = v5[8];
      if (*v5)
      {
        v12 = *v5;
      }

      else
      {
        v12 = MEMORY[0x277D84FA0];
      }

      v13 = 1 << *(v12 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v12 + 56);
      v16 = (v13 + 63) >> 6;
      v17 = (v6 & 1) == 0;

      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      if (v15)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
          goto LABEL_56;
        }

        if (v20 >= v16)
        {
          break;
        }

        v15 = *(v12 + 56 + 8 * v20);
        ++v18;
        if (v15)
        {
          v18 = v20;
          do
          {
LABEL_25:
            v21 = *(*(v12 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_252369410(0, *(v19 + 16) + 1, 1, v19);
              v19 = result;
            }

            v22 = *(v19 + 16);
            v23 = *(v19 + 24);
            v24 = v22 + 1;
            if (v22 >= v23 >> 1)
            {
              v45 = v22 + 1;
              v26 = v19;
              v27 = v22;
              result = sub_252369410((v23 > 1), v22 + 1, 1, v26);
              v22 = v27;
              v24 = v45;
              v19 = result;
            }

            *(v19 + 16) = v24;
            v25 = v19 + 32 * v22;
            *(v25 + 32) = v21;
            v15 &= v15 - 1;
            *(v25 + 40) = 0;
            *(v25 + 48) = v17;
            *(v25 + 56) = 0;
            *(v25 + 57) = v11;
          }

          while (v15);
        }
      }

      v42 = sub_25268E9F0();
LABEL_54:
      v43 = v42;

      return v43;
    }

LABEL_34:

    return 0;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (v7 != 1)
    {
      if (*v5)
      {
        v28 = *v5;
      }

      else
      {
        v28 = MEMORY[0x277D84FA0];
      }

      v29 = 1 << *(v28 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & *(v28 + 56);
      v32 = (v29 + 63) >> 6;
      v33 = (v6 & 1) == 0;

      v34 = 0;
      v35 = MEMORY[0x277D84F90];
      if (v31)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v36 >= v32)
        {

          v42 = sub_25268EA10();
          goto LABEL_54;
        }

        v31 = *(v28 + 56 + 8 * v36);
        ++v34;
        if (v31)
        {
          v34 = v36;
          do
          {
LABEL_46:
            v37 = *(*(v28 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v31)))));
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_2523693FC(0, *(v35 + 16) + 1, 1, v35);
              v35 = result;
            }

            v39 = *(v35 + 16);
            v38 = *(v35 + 24);
            v40 = v39 + 1;
            if (v39 >= v38 >> 1)
            {
              v45 = v39 + 1;
              result = sub_2523693FC((v38 > 1), v39 + 1, 1, v35);
              v40 = v45;
              v35 = result;
            }

            *(v35 + 16) = v40;
            v41 = v35 + 32 * v39;
            *(v41 + 32) = v37;
            v31 &= v31 - 1;
            *(v41 + 40) = 0;
            *(v41 + 48) = v33;
            *(v41 + 56) = 0;
          }

          while (v31);
        }
      }

LABEL_56:
      __break(1u);
      return result;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_31:
    sub_2524194A4(v5, type metadata accessor for AccessoryControl.StatusProvider);
    return 0;
  }

  if (v7 == 1)
  {
    v10 = 2;
  }

  else
  {
    v10 = v6 & 1;
  }

  return MEMORY[0x2530A04F0](v10, *v5);
}

uint64_t AccessoryControl.StatusProvider.allPossibleStatus()()
{
  v132 = sub_25268D990();
  v145 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v137 = &v124 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v131 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v135 = &v124 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB90);
  MEMORY[0x28223BE20](v5 - 8);
  v141 = (&v124 - v6);
  v148 = type metadata accessor for ControlTextModifier.Config(0);
  v144 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v8 = (&v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AccessoryControl.StatusProvider();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v124 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v124 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v124 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v124 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v146 = (&v124 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v124 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = (&v124 - v30);
  v154[0] = 1;
  v155 = 0;
  v156 = 1;
  v157 = 0;
  v158 = 0;
  LOBYTE(v149) = 1;
  v159[0] = 0;
  v160 = 0;
  v143 = 1;
  v161 = 1;
  v162 = 0;
  v163 = 0;
  sub_2524193D4(v147, &v124 - v30, type metadata accessor for AccessoryControl.StatusProvider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    if ((EnumCaseMultiPayload - 8) <= 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252694EA0;
      sub_2524193D4(v147, v29, type metadata accessor for AccessoryControl.StatusProvider);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v34 = *v29;
        v35 = v29[1];
      }

      else
      {
        sub_2524194A4(v29, type metadata accessor for AccessoryControl.StatusProvider);
        v149 = xmmword_252695730;
        v151 = 0;
        v152 = 0;
        v150 = 1;
        v99 = sub_25240DECC(&v149);
        if (!v100)
        {
          sub_252411038(v154);
          v34 = 0;
          v35 = 0xE000000000000000;
LABEL_66:
          v101 = v146;
          *(inited + 32) = v34;
          *(inited + 40) = v35;
          sub_2524193D4(v147, v101, type metadata accessor for AccessoryControl.StatusProvider);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v102 = *v101;
            v103 = v101[1];
          }

          else
          {
            v104 = v143 & 1;
            sub_2524194A4(v101, type metadata accessor for AccessoryControl.StatusProvider);
            v149 = 0uLL;
            v151 = 0;
            v152 = 0;
            v150 = v104;
            v105 = sub_25240DECC(&v149);
            if (!v106)
            {
              sub_252411038(v159);
              v102 = 0;
              v103 = 0xE000000000000000;
              goto LABEL_71;
            }

            v102 = v105;
            v103 = v106;
          }

          sub_252411038(v159);
LABEL_71:
          *(inited + 48) = v102;
          *(inited + 56) = v103;
          v107 = sub_25240C894(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          return v107;
        }

        v34 = v99;
        v35 = v100;
      }

      sub_252411038(v154);
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  v36 = v144;
  v140 = v21;
  v146 = v24;
  v37 = v145;
  v38 = v137;
  v147 = v18;
  v142 = v15;
  v133 = v12;
  v134 = v8;
  if (EnumCaseMultiPayload == 1)
  {
    v108 = *v31;
    v109 = sub_252693000();
    v110 = MEMORY[0x277D84FA0];
    *&v149 = MEMORY[0x277D84FA0];
    v111 = *(v109 + 16);
    if (v111)
    {
      v112 = 0;
      v42 = 0;
      do
      {
        if (v112 >= *(v109 + 16))
        {
          goto LABEL_101;
        }

        v153 = *(v109 + 32 + 8 * v112);
        sub_25240F498(&v149, &v153, v154, v159);
        ++v112;
      }

      while (v111 != v112);
      v110 = v149;
    }

    sub_252411038(v154);
    v153 = v110;
    v113 = v146;
    *v146 = v108;
    *(v113 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v114 = v140;
    sub_2524193D4(v113, v140, type metadata accessor for AccessoryControl.StatusProvider);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v115 = *v114;
      v116 = v114[1];
    }

    else
    {
      v120 = v143 & 1;
      sub_2524194A4(v114, type metadata accessor for AccessoryControl.StatusProvider);
      v149 = 0uLL;
      v151 = 0;
      v152 = 0;
      v150 = v120;
      v121 = sub_25240DECC(&v149);
      if (!v122)
      {
        sub_252411038(v159);
        v115 = 0;
        v116 = 0xE000000000000000;
LABEL_91:
        sub_2524194A4(v113, type metadata accessor for AccessoryControl.StatusProvider);
        sub_252413388(&v149, v115, v116);
LABEL_92:

        return v153;
      }

      v115 = v121;
      v116 = v122;
    }

    sub_252411038(v159);
    goto LABEL_91;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2524194A4(v31, type metadata accessor for AccessoryControl.StatusProvider);
    v117 = sub_252693010();
    v107 = MEMORY[0x277D84FA0];
    *&v149 = MEMORY[0x277D84FA0];
    v118 = *(v117 + 16);
    if (v118)
    {
      v119 = 0;
      v42 = 0;
      do
      {
        if (v119 >= *(v117 + 16))
        {
          goto LABEL_102;
        }

        v153 = *(v117 + 32 + 8 * v119);
        sub_25240F8E0(&v149, &v153, v154, v159);
        ++v119;
      }

      while (v118 != v119);
      v107 = v149;
    }

    sub_252411038(v154);

    sub_252411038(v159);
    return v107;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_79:
    sub_252411038(v154);
    sub_252411038(v159);
    sub_2524194A4(v31, type metadata accessor for AccessoryControl.StatusProvider);
    return MEMORY[0x277D84FA0];
  }

  sub_252411038(v154);
  sub_252411038(v159);
  sub_2524194A4(v31, type metadata accessor for AccessoryControl.StatusProvider);
  v39 = sub_252693020();
  v40 = v39;
  v153 = MEMORY[0x277D84FA0];
  v126 = *(v39 + 16);
  if (!v126)
  {

    return MEMORY[0x277D84FA0];
  }

  v41 = 0;
  v127 = v39 + 32;
  v139 = (v36 + 56);
  v128 = (v37 + 48);
  v125 = (v37 + 32);
  v130 = "light.beacon.max.fill";
  v42 = v141;
  v43 = v134;
  v44 = v133;
  v136 = v9;
  v124 = v39;
  v138 = (v36 + 48);
  while (1)
  {
    if (v41 >= *(v40 + 16))
    {
      goto LABEL_103;
    }

    v129 = v41;
    v140 = *(v127 + 8 * v41);
    v45 = sub_252693030();
    v146 = *(v45 + 16);
    if (v146)
    {
      break;
    }

LABEL_11:
    v41 = v129 + 1;
    if (v129 + 1 == v126)
    {
      goto LABEL_92;
    }
  }

  v145 = v45 + 32;
  v46 = v45;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB78);
  v47 = v46;
  v48 = 0;
  v143 = v47;
  while (v48 < *(v47 + 16))
  {
    v49 = *(v145 + 8 * v48);
    v50 = sub_2526931F0();
    v51 = v50 + 56;
    sub_252693460();
    MEMORY[0x2530A4FE0](v49);
    v52 = sub_2526934C0();
    v53 = ~(-1 << *(v50 + 32));
    v54 = v52 & v53;
    v55 = (v52 & v53) >> 6;
    v56 = *(v50 + 56 + 8 * v55);
    v57 = 1 << (v52 & v53);
    v58 = *(v50 + 48);
    if ((v57 & v56) != 0)
    {
      while (*(v58 + 8 * v54) != v49)
      {
        v54 = (v54 + 1) & v53;
        v55 = v54 >> 6;
        v56 = *(v51 + 8 * (v54 >> 6));
        v57 = 1 << v54;
        if (((1 << v54) & v56) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      *(v51 + 8 * v55) = v57 | v56;
      *(v58 + 8 * v54) = v49;
      v59 = *(v50 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_100;
      }

      *(v50 + 16) = v61;
    }

    v62 = v147;
    *v147 = v50;
    v63 = v62;
    swift_storeEnumTagMultiPayload();
    v64 = v142;
    sub_2524193D4(v63, v142, type metadata accessor for AccessoryControl.StatusProvider);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      sub_2524194A4(v64, type metadata accessor for AccessoryControl.StatusProvider);
      sub_2524193D4(v63, v44, type metadata accessor for AccessoryControl.StatusProvider);
      v66 = swift_getEnumCaseMultiPayload();
      v67 = v148;
      if (v66 == 5)
      {
        if (*v44)
        {
          v78 = *v44;
        }

        else
        {
          v78 = MEMORY[0x277D84FA0];
        }

        v79 = 1 << *(v78 + 32);
        if (v79 < 64)
        {
          v80 = ~(-1 << v79);
        }

        else
        {
          v80 = -1;
        }

        v81 = v80 & *(v78 + 56);
        v82 = (v79 + 63) >> 6;

        v83 = 0;
        v84 = MEMORY[0x277D84F90];
        if (v81)
        {
          goto LABEL_43;
        }

        while (1)
        {
          v85 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            __break(1u);
            goto LABEL_92;
          }

          if (v85 >= v82)
          {
            break;
          }

          v81 = *(v78 + 56 + 8 * v85);
          ++v83;
          if (v81)
          {
            v83 = v85;
            do
            {
LABEL_43:
              v86 = *(*(v78 + 48) + ((v83 << 9) | (8 * __clz(__rbit64(v81)))));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v84 = sub_252369424(0, *(v84 + 2) + 1, 1, v84);
              }

              v88 = *(v84 + 2);
              v87 = *(v84 + 3);
              if (v88 >= v87 >> 1)
              {
                v84 = sub_252369424((v87 > 1), v88 + 1, 1, v84);
              }

              *(v84 + 2) = v88 + 1;
              v89 = &v84[32 * v88];
              *(v89 + 4) = v86;
              v81 &= v81 - 1;
              v89[40] = 0;
              *(v89 + 6) = v140;
              v89[56] = 0;
              v42 = v141;
            }

            while (v81);
          }
        }

        v90 = sub_25268EA60();
        v92 = v91;

        sub_2524194A4(v147, type metadata accessor for AccessoryControl.StatusProvider);
        if (v92)
        {
          *v42 = v90;
          v42[1] = v92;
          v67 = v148;
          swift_storeEnumTagMultiPayload();
          (*v139)(v42, 0, 1, v67);
        }

        else
        {
          v67 = v148;
          (*v139)(v42, 1, 1, v148);
        }

        v38 = v137;
        v43 = v134;
        v44 = v133;
      }

      else if (v66 == 4)
      {
        v68 = *v44;
        v69 = *(v44 + 8);
        v70 = *(v44 + 16);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380);
        v72 = v135;
        sub_2524134D8(v44 + *(v71 + 64), v135);
        if (v68 & 1) == 0 || (v70)
        {
LABEL_31:
          v74 = sub_252692C40();
          v75 = v72;
          v77 = v76;
          sub_252372288(v75, &qword_27F4DB2D8);
          sub_2524194A4(v63, type metadata accessor for AccessoryControl.StatusProvider);
          v42 = v141;
          *v141 = v74;
          v42[1] = v77;
        }

        else
        {
          v73 = v131;
          sub_25237153C(v72, v131, &qword_27F4DB2D8);
          if ((*v128)(v73, 1, v132) == 1)
          {
            sub_252372288(v73, &qword_27F4DB2D8);
            goto LABEL_31;
          }

          sub_252372288(v72, &qword_27F4DB2D8);
          sub_2524194A4(v63, type metadata accessor for AccessoryControl.StatusProvider);
          v93 = v73;
          v94 = *v125;
          v95 = v132;
          (*v125)(v38, v93, v132);
          v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
          v97 = v95;
          v42 = v141;
          *v141 = v69;
          v94(v42 + v96, v38, v97);
        }

        swift_storeEnumTagMultiPayload();
        (*v139)(v42, 0, 1, v67);
      }

      else
      {
        sub_2524194A4(v63, type metadata accessor for AccessoryControl.StatusProvider);
        (*v139)(v42, 1, 1, v67);
        sub_2524194A4(v44, type metadata accessor for AccessoryControl.StatusProvider);
      }

      v98 = *v138;
      if ((*v138)(v42, 1, v67) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v98(v42, 1, v67) != 1)
        {
          sub_252372288(v42, &qword_27F4DBB90);
        }
      }

      else
      {
        sub_25241943C(v42, v43, type metadata accessor for ControlTextModifier.Config);
      }

      goto LABEL_60;
    }

    sub_2524194A4(v63, type metadata accessor for AccessoryControl.StatusProvider);
    v65 = v64[1];
    *v43 = *v64;
    v43[1] = v65;
    swift_storeEnumTagMultiPayload();
LABEL_60:
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_252413388(&v149, *v43, v43[1]);
    }

    else
    {
      sub_2524194A4(v43, type metadata accessor for ControlTextModifier.Config);
    }

    v47 = v143;
    if (++v48 == v146)
    {

      v40 = v124;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_25240F498(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v52 = a1;
  v45 = *a4;
  v48 = *(a4 + 1);
  v44 = a4[16];
  v7 = *(a4 + 4);
  v47 = *(a4 + 3);
  v46 = v7;
  v40 = *a3;
  v43 = *(a3 + 1);
  v39 = a3[16];
  v8 = *(a3 + 4);
  v42 = *(a3 + 3);
  v41 = v8;
  v9 = type metadata accessor for AccessoryControl.StatusProvider();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v39 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = *a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB240);
  inited = swift_initStackObject();
  v49 = xmmword_252694E90;
  *(inited + 16) = xmmword_252694E90;
  v51 = v21;
  *(inited + 32) = v21;
  v23 = sub_25240C050(inited);
  swift_setDeallocating();
  *v20 = v23;
  v20[8] = 2;
  swift_storeEnumTagMultiPayload();
  sub_2524193D4(v20, v18, type metadata accessor for AccessoryControl.StatusProvider);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v25 = *v18;
    v24 = v18[1];
  }

  else
  {
    v26 = v39 & 1;
    v27 = v40 & 1;
    sub_252419504(a3, &v53);
    sub_2524194A4(v18, type metadata accessor for AccessoryControl.StatusProvider);
    v53 = v27;
    v54 = v43;
    v55 = v26;
    v56 = v42;
    v57 = v41;
    v28 = sub_25240DECC(&v53);
    if (v29)
    {
      v25 = v28;
      v24 = v29;
      sub_252411038(a3);
    }

    else
    {
      sub_252411038(a3);
      v25 = 0;
      v24 = 0xE000000000000000;
    }
  }

  sub_2524194A4(v20, type metadata accessor for AccessoryControl.StatusProvider);
  sub_252413388(&v53, v25, v24);

  v30 = swift_initStackObject();
  *(v30 + 16) = v49;
  *(v30 + 32) = v51;
  v31 = sub_25240C050(v30);
  swift_setDeallocating();
  *v15 = v31;
  v15[8] = 2;
  swift_storeEnumTagMultiPayload();
  sub_2524193D4(v15, v12, type metadata accessor for AccessoryControl.StatusProvider);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v32 = *v12;
    v33 = v12[1];
  }

  else
  {
    v34 = v44 & 1;
    v35 = v45 & 1;
    sub_252419504(a4, &v53);
    sub_2524194A4(v12, type metadata accessor for AccessoryControl.StatusProvider);
    v53 = v35;
    v54 = v48;
    v55 = v34;
    v56 = v47;
    v57 = v46;
    v36 = sub_25240DECC(&v53);
    if (v37)
    {
      v32 = v36;
      v33 = v37;
      sub_252411038(a4);
    }

    else
    {
      sub_252411038(a4);
      v32 = 0;
      v33 = 0xE000000000000000;
    }
  }

  sub_2524194A4(v15, type metadata accessor for AccessoryControl.StatusProvider);
  sub_252413388(&v53, v32, v33);
}

uint64_t sub_25240F8E0(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v52 = a1;
  v45 = *a4;
  v48 = *(a4 + 1);
  v44 = a4[16];
  v7 = *(a4 + 4);
  v47 = *(a4 + 3);
  v46 = v7;
  v40 = *a3;
  v43 = *(a3 + 1);
  v39 = a3[16];
  v8 = *(a3 + 4);
  v42 = *(a3 + 3);
  v41 = v8;
  v9 = type metadata accessor for AccessoryControl.StatusProvider();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v39 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v39 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v39 - v19);
  v21 = *a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2C8);
  inited = swift_initStackObject();
  v49 = xmmword_252694E90;
  *(inited + 16) = xmmword_252694E90;
  v51 = v21;
  *(inited + 32) = v21;
  v23 = sub_25240C0B4(inited);
  swift_setDeallocating();
  *v20 = v23;
  swift_storeEnumTagMultiPayload();
  sub_2524193D4(v20, v18, type metadata accessor for AccessoryControl.StatusProvider);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v25 = *v18;
    v24 = v18[1];
  }

  else
  {
    v26 = v39 & 1;
    v27 = v40 & 1;
    sub_252419504(a3, &v53);
    sub_2524194A4(v18, type metadata accessor for AccessoryControl.StatusProvider);
    v53 = v27;
    v54 = v43;
    v55 = v26;
    v56 = v42;
    v57 = v41;
    v28 = sub_25240DECC(&v53);
    if (v29)
    {
      v25 = v28;
      v24 = v29;
      sub_252411038(a3);
    }

    else
    {
      sub_252411038(a3);
      v25 = 0;
      v24 = 0xE000000000000000;
    }
  }

  sub_2524194A4(v20, type metadata accessor for AccessoryControl.StatusProvider);
  sub_252413388(&v53, v25, v24);

  v30 = swift_initStackObject();
  *(v30 + 16) = v49;
  *(v30 + 32) = v51;
  v31 = sub_25240C0B4(v30);
  swift_setDeallocating();
  *v15 = v31;
  swift_storeEnumTagMultiPayload();
  sub_2524193D4(v15, v12, type metadata accessor for AccessoryControl.StatusProvider);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v32 = *v12;
    v33 = v12[1];
  }

  else
  {
    v34 = v44 & 1;
    v35 = v45 & 1;
    sub_252419504(a4, &v53);
    sub_2524194A4(v12, type metadata accessor for AccessoryControl.StatusProvider);
    v53 = v35;
    v54 = v48;
    v55 = v34;
    v56 = v47;
    v57 = v46;
    v36 = sub_25240DECC(&v53);
    if (v37)
    {
      v32 = v36;
      v33 = v37;
      sub_252411038(a4);
    }

    else
    {
      sub_252411038(a4);
      v32 = 0;
      v33 = 0xE000000000000000;
    }
  }

  sub_2524194A4(v15, type metadata accessor for AccessoryControl.StatusProvider);
  sub_252413388(&v53, v32, v33);
}

uint64_t AccessoryControl.StatusProvider.status(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v17 - v6);
  v8 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *(a1 + 8);
  sub_2524193D4(v2, v10, type metadata accessor for AccessoryControl.StatusProvider);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v13 = v10[1];
    *a2 = *v10;
    a2[1] = v13;
    type metadata accessor for ControlTextModifier.Config(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2524194A4(v10, type metadata accessor for AccessoryControl.StatusProvider);
    v17 = v11;
    v18 = v12;
    sub_252410A94(&v17, v7);
    v15 = type metadata accessor for ControlTextModifier.Config(0);
    v16 = *(*(v15 - 8) + 48);
    if (v16(v7, 1, v15) == 1)
    {
      swift_storeEnumTagMultiPayload();
      result = v16(v7, 1, v15);
      if (result != 1)
      {
        return sub_252372288(v7, &qword_27F4DBB90);
      }
    }

    else
    {
      return sub_25241943C(v7, a2, type metadata accessor for ControlTextModifier.Config);
    }
  }

  return result;
}

uint64_t AccessoryControl.StatusProvider.statusConfig(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2524193D4(v2, v10, type metadata accessor for AccessoryControl.StatusProvider);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v11 = v10[1];
    *a2 = *v10;
    a2[1] = v11;
    type metadata accessor for ControlTextModifier.Config(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2524194A4(v10, type metadata accessor for AccessoryControl.StatusProvider);
    sub_252410144(a1, v7);
    v13 = type metadata accessor for ControlTextModifier.Config(0);
    v14 = *(*(v13 - 8) + 48);
    if (v14(v7, 1, v13) == 1)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      swift_storeEnumTagMultiPayload();
      result = v14(v7, 1, v13);
      if (result != 1)
      {
        return sub_252372288(v7, &qword_27F4DBB90);
      }
    }

    else
    {
      return sub_25241943C(v7, a2, type metadata accessor for ControlTextModifier.Config);
    }
  }

  return result;
}

uint64_t sub_252410144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = sub_25268ED70();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v60 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v57 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v57 - v10);
  MEMORY[0x28223BE20](v9);
  v59 = (&v57 - v12);
  v13 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  v19 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v18, &qword_27F4DB218);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_252372288(v18, &qword_27F4DB218);
    v23 = type metadata accessor for ControlTextModifier.Config(0);
    v24 = *(*(v23 - 8) + 56);
    v25 = v64;
LABEL_31:
    v45 = 1;
    return v24(v25, v45, 1, v23);
  }

  v26 = v64;
  sub_25241943C(v18, v22, type metadata accessor for AccessoryControl.IncrementalState);
  sub_2524193D4(v63, v15, type metadata accessor for AccessoryControl.StatusProvider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    if ((EnumCaseMultiPayload - 8) < 2)
    {
      v29 = v61;
      v28 = v62;
      (*(v62 + 16))(v11, v22, v61);
      if ((*(v28 + 88))(v11, v29) == *MEMORY[0x277D15BB8])
      {
        (*(v28 + 96))(v11, v29);
        v30 = *v11;
        goto LABEL_14;
      }

      sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
      (*(v28 + 8))(v11, v29);
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 10)
    {
      v33 = v61;
      v32 = v62;
      v34 = v60;
      (*(v62 + 16))(v60, v22, v61);
      if ((*(v32 + 88))(v34, v33) == *MEMORY[0x277D15BB8])
      {
        (*(v32 + 96))(v34, v33);
        v30 = *v34;
LABEL_14:
        v35 = v26;
        if (v30 > 0.0)
        {
          sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
          *v26 = v30;
LABEL_16:
          v36 = type metadata accessor for ControlTextModifier.Config(0);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          v24 = *(*(v36 - 8) + 56);
          v25 = v35;
LABEL_37:
          v45 = 0;
          v23 = v36;
          return v24(v25, v45, 1, v23);
        }

LABEL_35:
        v50 = sub_252692C40();
        v52 = v51;
        sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
        *v35 = v50;
        v35[1] = v52;
        v36 = type metadata accessor for ControlTextModifier.Config(0);
        goto LABEL_36;
      }

      sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
      (*(v32 + 8))(v34, v33);
LABEL_30:
      v23 = type metadata accessor for ControlTextModifier.Config(0);
      v24 = *(*(v23 - 8) + 56);
      v25 = v26;
      goto LABEL_31;
    }

LABEL_27:
    sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
    v44 = type metadata accessor for ControlTextModifier.Config(0);
    (*(*(v44 - 8) + 56))(v26, 1, 1, v44);
    return sub_2524194A4(v15, type metadata accessor for AccessoryControl.StatusProvider);
  }

  if (!EnumCaseMultiPayload)
  {
    v37 = *v15;
    v39 = v61;
    v38 = v62;
    v40 = v59;
    (*(v62 + 16))(v59, v22, v61);
    if ((*(v38 + 88))(v40, v39) != *MEMORY[0x277D15BB8])
    {
      sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
      (*(v38 + 8))(v40, v39);
      goto LABEL_30;
    }

    result = (*(v38 + 96))(v40, v39);
    v42 = *v40;
    if ((v37 == 2 || (v37 & 1) == 0) && v42 > 0.0 && v42 < 100.0)
    {
      sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
      *v26 = v42;
      v36 = type metadata accessor for ControlTextModifier.Config(0);
      goto LABEL_44;
    }

    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        v53 = sub_25268EB80();
        v55 = v54;
        sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
        if (!v55)
        {
          goto LABEL_30;
        }

        *v26 = v53;
        v26[1] = v55;
        v36 = type metadata accessor for ControlTextModifier.Config(0);
LABEL_44:
        swift_storeEnumTagMultiPayload();
        v24 = *(*(v36 - 8) + 56);
        v25 = v26;
        goto LABEL_37;
      }

LABEL_50:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_27;
  }

  v31 = *v15;
  if (v31 == 2)
  {
    sub_2524194A4(v22, type metadata accessor for AccessoryControl.IncrementalState);
    goto LABEL_30;
  }

  v35 = v26;
  if ((v31 & 1) == 0)
  {
    goto LABEL_35;
  }

  v47 = v61;
  v46 = v62;
  v48 = v58;
  (*(v62 + 32))(v58, v22, v61);
  v49 = (*(v46 + 88))(v48, v47);
  if (v49 == *MEMORY[0x277D15BB8])
  {
    (*(v46 + 96))(v48, v47);
    *v35 = *v48;
    goto LABEL_16;
  }

  if (v49 == *MEMORY[0x277D15BB0])
  {
    (*(v46 + 96))(v48, v47);
    *v35 = *v48;
    v36 = type metadata accessor for ControlTextModifier.Config(0);
    goto LABEL_36;
  }

  v56 = type metadata accessor for ControlTextModifier.Config(0);
  (*(*(v56 - 8) + 56))(v35, 1, 1, v56);
  return (*(v46 + 8))(v48, v47);
}

uint64_t sub_252410A94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = sub_25268D990();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(a1 + 8);
  sub_2524193D4(v3, v17, type metadata accessor for AccessoryControl.StatusProvider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v29 = type metadata accessor for ControlTextModifier.Config(0);
      (*(*(v29 - 8) + 56))(v53, 1, 1, v29);
      return sub_2524194A4(v17, type metadata accessor for AccessoryControl.StatusProvider);
    }

    v21 = *v17;
    v22 = *(v17 + 1);
    v23 = v17[16];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380);
    sub_2524134D8(&v17[*(v24 + 64)], v14);
    if ((v21 & 1) != 0 && (v23 & 1) == 0)
    {
      sub_25237153C(v14, v12, &qword_27F4DB2D8);
      if ((*(v6 + 48))(v12, 1, v5) != 1)
      {
        sub_252372288(v14, &qword_27F4DB2D8);
        v49 = *(v6 + 32);
        v49(v8, v12, v5);
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v28 = v53;
        *v53 = v22;
        v49(v28 + v50, v8, v5);
        goto LABEL_31;
      }

      sub_252372288(v12, &qword_27F4DB2D8);
    }

    v25 = sub_252692C40();
    v27 = v26;
    sub_252372288(v14, &qword_27F4DB2D8);
    v28 = v53;
    *v53 = v25;
    v28[1] = v27;
LABEL_31:
    v51 = type metadata accessor for ControlTextModifier.Config(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v51 - 8) + 56))(v28, 0, 1, v51);
  }

  if (v19)
  {

LABEL_29:
    v48 = type metadata accessor for ControlTextModifier.Config(0);
    return (*(*(v48 - 8) + 56))(v53, 1, 1, v48);
  }

  else
  {
    if (*v17)
    {
      v31 = *v17;
    }

    else
    {
      v31 = MEMORY[0x277D84FA0];
    }

    v32 = 1 << *(v31 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v31 + 56);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    v37 = MEMORY[0x277D84F90];
    if (v34)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v38 >= v35)
      {
        break;
      }

      v34 = *(v31 + 56 + 8 * v38);
      ++v36;
      if (v34)
      {
        v36 = v38;
        do
        {
LABEL_21:
          v39 = *(*(v31 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v34)))));
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_252369424(0, *(v37 + 16) + 1, 1, v37);
            v37 = result;
          }

          v41 = *(v37 + 16);
          v40 = *(v37 + 24);
          if (v41 >= v40 >> 1)
          {
            result = sub_252369424((v40 > 1), v41 + 1, 1, v37);
            v37 = result;
          }

          *(v37 + 16) = v41 + 1;
          v42 = v37 + 32 * v41;
          *(v42 + 32) = v39;
          v34 &= v34 - 1;
          *(v42 + 40) = 0;
          *(v42 + 48) = v18;
          *(v42 + 56) = 0;
        }

        while (v34);
      }
    }

    v43 = sub_25268EA60();
    v45 = v44;

    if (!v45)
    {
      goto LABEL_29;
    }

    v46 = v53;
    *v53 = v43;
    v46[1] = v45;
    v47 = type metadata accessor for ControlTextModifier.Config(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }
}

uint64_t AccessoryControl.StatusProvider.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25268D990();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for AccessoryControl.StatusProvider();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524193D4(v2, v16, type metadata accessor for AccessoryControl.StatusProvider);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v35 = *v16;
      v36 = v16[8];
      MEMORY[0x2530A4FE0](3);
      if (v35)
      {
        sub_252693480();
        sub_2523E2EA8(a1, v35);

        if (v36 == 2)
        {
          return sub_252693480();
        }
      }

      else
      {
        sub_252693480();
        if (v36 == 2)
        {
          return sub_252693480();
        }
      }

      goto LABEL_50;
    case 2u:
      v25 = *v16;
      v26 = *(v16 + 1);
      v27 = v16[16];
      v28 = *(v16 + 3);
      v29 = v16[32];
      v30 = *(v16 + 5);
      v31 = v16[48];
      MEMORY[0x2530A4FE0](4);
      if (v25 == 2)
      {
        sub_252693480();
        if (!v27)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_252693480();
        sub_252693480();
        if (!v27)
        {
LABEL_14:
          sub_252693480();
          MEMORY[0x2530A4FE0](v26);
          if (!v29)
          {
            goto LABEL_15;
          }

          goto LABEL_44;
        }
      }

      sub_252693480();
      if (!v29)
      {
LABEL_15:
        sub_252693480();
        if ((v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = v28;
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x2530A5020](v32);
        if (!v31)
        {
          goto LABEL_45;
        }

        return sub_252693480();
      }

LABEL_44:
      sub_252693480();
      if (!v31)
      {
LABEL_45:
        sub_252693480();
        if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v30;
        }

        else
        {
          v37 = 0;
        }

        return MEMORY[0x2530A5020](v37);
      }

      return sub_252693480();
    case 3u:
      v33 = *v16;
      MEMORY[0x2530A4FE0](6);
      if (v33)
      {
        goto LABEL_27;
      }

      return sub_252693480();
    case 4u:
      v20 = *v16;
      v21 = *(v16 + 1);
      v22 = v16[16];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380);
      sub_2524134D8(&v16[*(v23 + 64)], v13);
      MEMORY[0x2530A4FE0](8);
      if (v20 == 2)
      {
        sub_252693480();
        if (!v22)
        {
          goto LABEL_6;
        }

LABEL_37:
        sub_252693480();
        goto LABEL_38;
      }

      sub_252693480();
      sub_252693480();
      if (v22)
      {
        goto LABEL_37;
      }

LABEL_6:
      sub_252693480();
      if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v24 = v21;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x2530A5020](v24);
LABEL_38:
      sub_25237153C(v13, v11, &qword_27F4DB2D8);
      if ((*(v5 + 48))(v11, 1, v4) == 1)
      {
        sub_252693480();
      }

      else
      {
        (*(v5 + 32))(v7, v11, v4);
        sub_252693480();
        sub_252419560(&qword_27F4DB768, MEMORY[0x277CC9578]);
        sub_252692B30();
        (*(v5 + 8))(v7, v4);
      }

      return sub_252372288(v13, &qword_27F4DB2D8);
    case 5u:
      v33 = *v16;
      MEMORY[0x2530A4FE0](9);
      if (!v33)
      {
        return sub_252693480();
      }

LABEL_27:
      sub_252693480();
      sub_2523E2EA8(a1, v33);

    case 6u:
      v17 = *v16;
      v18 = 10;
      goto LABEL_29;
    case 7u:
      MEMORY[0x2530A4FE0](11);
      sub_252692C80();

    case 8u:
      v19 = 0;
      return MEMORY[0x2530A4FE0](v19);
    case 9u:
      v19 = 2;
      return MEMORY[0x2530A4FE0](v19);
    case 0xAu:
      v19 = 5;
      return MEMORY[0x2530A4FE0](v19);
    case 0xBu:
      v19 = 7;
      return MEMORY[0x2530A4FE0](v19);
    case 0xCu:
      v19 = 12;
      return MEMORY[0x2530A4FE0](v19);
    default:
      v17 = *v16;
      v18 = 1;
LABEL_29:
      MEMORY[0x2530A4FE0](v18);
      if (v17 == 2)
      {
        return sub_252693480();
      }

LABEL_50:
      sub_252693480();
      return sub_252693480();
  }
}

uint64_t AccessoryControl.StatusProvider.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.StatusProvider.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_252411608()
{
  sub_252693460();
  AccessoryControl.StatusProvider.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25241164C()
{
  sub_252693460();
  AccessoryControl.StatusProvider.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_252411688@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v117 = a1;
  v116 = a2;
  v2 = sub_25268D990();
  v3 = *(v2 - 8);
  v111 = v2;
  v112 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v107 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v106 = &v101[-v7];
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v101[-v9];
  MEMORY[0x28223BE20](v8);
  v110 = &v101[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v109 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v101[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v114 = &v101[-v17];
  MEMORY[0x28223BE20](v16);
  v115 = &v101[-v18];
  v19 = type metadata accessor for AccessoryControl.StatusProvider();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v101[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v101[-v27];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v101[-v30];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v101[-v33];
  MEMORY[0x28223BE20](v32);
  v36 = &v101[-v35];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC60);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v101[-v39];
  v41 = &v101[*(v38 + 56) - v39];
  sub_2524193D4(v118, &v101[-v39], type metadata accessor for AccessoryControl.StatusProvider);
  v42 = v19;
  sub_2524193D4(v117, v41, type metadata accessor for AccessoryControl.StatusProvider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2524193D4(v40, v31, type metadata accessor for AccessoryControl.StatusProvider);
      v50 = *v31;
      if (!swift_getEnumCaseMultiPayload())
      {
        v51 = *v41;
        if (v50 != 2 && (v50 & 1) != 0)
        {
          v51 = 1;
        }

        *v116 = v51 & 1;
        goto LABEL_68;
      }

      goto LABEL_51;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_2524193D4(v40, v36, type metadata accessor for AccessoryControl.StatusProvider);
        v44 = *v36;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          if (v44)
          {
            v45 = v44;
          }

          else
          {
            v45 = MEMORY[0x277D84FA0];
          }

          if (*v41)
          {
            v46 = *v41;
          }

          else
          {
            v46 = MEMORY[0x277D84FA0];
          }

          v47 = sub_252616114(v46, v45);
          *v116 = v47;
          goto LABEL_68;
        }

        goto LABEL_49;
      }

LABEL_51:
      sub_2524193D4(v118, v116, type metadata accessor for AccessoryControl.StatusProvider);
      return sub_252372288(v40, &qword_27F4DBC60);
    }

    sub_2524193D4(v40, v34, type metadata accessor for AccessoryControl.StatusProvider);
    v62 = *v34;
    v63 = v34[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v64 = v41[8];
      if (v62)
      {
        v65 = v62;
      }

      else
      {
        v65 = MEMORY[0x277D84FA0];
      }

      if (*v41)
      {
        v66 = *v41;
      }

      else
      {
        v66 = MEMORY[0x277D84FA0];
      }

      v67 = sub_25261612C(v66, v65);
      if (v63 != 2 && (v63 & 1) != 0)
      {
        v64 = 1;
      }

      v68 = v116;
      *v116 = v67;
      v68[8] = v64 & 1;
      goto LABEL_68;
    }

LABEL_49:

    goto LABEL_51;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_2524193D4(v40, v22, type metadata accessor for AccessoryControl.StatusProvider);
        v48 = *v22;
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v49 = *v41;
          if (v48 != 2 && (v48 & 1) != 0)
          {
            v49 = 1;
          }

          *v116 = v49 & 1;
          goto LABEL_68;
        }
      }

      goto LABEL_51;
    }

    sub_2524193D4(v40, v25, type metadata accessor for AccessoryControl.StatusProvider);
    v69 = *v25;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      if (v69)
      {
        v70 = v69;
      }

      else
      {
        v70 = MEMORY[0x277D84FA0];
      }

      if (*v41)
      {
        v71 = *v41;
      }

      else
      {
        v71 = MEMORY[0x277D84FA0];
      }

      v72 = sub_252616144(v71, v70);
      *v116 = v72;
      goto LABEL_68;
    }

    goto LABEL_49;
  }

  sub_2524193D4(v40, v28, type metadata accessor for AccessoryControl.StatusProvider);
  v52 = *v28;
  v53 = v42;
  v54 = *(v28 + 1);
  LODWORD(v55) = v28[16];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380);
  v57 = *(v56 + 64);
  v117 = v53;
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_252372288(&v28[v57], &qword_27F4DB2D8);
    goto LABEL_51;
  }

  v104 = v54;
  v58 = *v41;
  v105 = *(v41 + 1);
  LODWORD(v118) = v41[16];
  v59 = v115;
  sub_2524134D8(&v28[v57], v115);
  v60 = v114;
  sub_2524134D8(&v41[v57], v114);
  if (v52 == 2)
  {
    v61 = v113;
    if (v58 != 2)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v61 = v113;
    if (v58 == 2 || ((v58 ^ v52) & 1) != 0)
    {
      goto LABEL_65;
    }
  }

  LODWORD(v113) = v55;
  v103 = v56;
  sub_25237153C(v59, v61, &qword_27F4DB2D8);
  v74 = v112;
  v75 = *(v112 + 48);
  v76 = v61;
  v55 = v61;
  v77 = v111;
  if (v75(v76, 1, v111) == 1)
  {
    sub_252372288(v55, &qword_27F4DB2D8);
    LOBYTE(v55) = v113;
  }

  else
  {
    v102 = v58;
    v78 = *(v74 + 32);
    v79 = v110;
    v78(v110, v55, v77);
    v80 = v60;
    v81 = v109;
    sub_25237153C(v80, v109, &qword_27F4DB2D8);
    if (v75(v81, 1, v77) == 1)
    {
      (*(v74 + 8))(v79, v77);
      sub_252372288(v81, &qword_27F4DB2D8);
      v60 = v114;
      v59 = v115;
      LOBYTE(v55) = v113;
    }

    else
    {
      v82 = v108;
      v109 = (v74 + 32);
      v78(v108, v81, v77);
      LOBYTE(v55) = v113;
      if (v113)
      {
        v83 = *(v112 + 8);
        v83(v82, v77);
        v83(v110, v77);
        v60 = v114;
      }

      else
      {
        v60 = v114;
        if ((v118 & 1) == 0)
        {
          v118 = v78;
          v91 = v106;
          v92 = v110;
          sub_25268D950();
          v93 = v107;
          sub_25268D950();
          sub_252419560(&qword_27F4DBC70, MEMORY[0x277CC9578]);
          LODWORD(v113) = sub_252692B50();
          v95 = v112 + 8;
          v94 = *(v112 + 8);
          v94(v93, v77);
          v94(v91, v77);
          sub_252372288(v60, &qword_27F4DB2D8);
          sub_252372288(v115, &qword_27F4DB2D8);
          if (v113)
          {
            v94(v92, v77);
            v96 = *(v103 + 64);
            v97 = v116;
            *v116 = v102;
            *(v97 + 1) = v105;
            v97[16] = 0;
            v98 = &v97[v96];
            v99 = v108;
          }

          else
          {
            v94(v108, v77);
            v100 = v104;
            v96 = *(v103 + 64);
            v97 = v116;
            *v116 = v52;
            *(v97 + 1) = v100;
            v97[16] = 0;
            v98 = &v97[v96];
            v99 = v92;
          }

          (v118)(v98, v99, v77);
          (*(v95 + 48))(&v97[v96], 0, 1, v77);
          goto LABEL_68;
        }

        v84 = *(v112 + 8);
        v85 = v110;
        v84(v82, v77);
        v84(v85, v77);
      }

      v59 = v115;
    }

    LOBYTE(v58) = v102;
  }

  v56 = v103;
  if (v52 == 2)
  {
    goto LABEL_67;
  }

LABEL_65:
  if ((v52 & 1) == 0)
  {
LABEL_67:
    sub_252372288(v59, &qword_27F4DB2D8);
    v89 = *(v56 + 64);
    v90 = v116;
    *v116 = v58;
    *(v90 + 1) = v105;
    v90[16] = v118;
    sub_2524134D8(v60, &v90[v89]);
    goto LABEL_68;
  }

  sub_252372288(v60, &qword_27F4DB2D8);
  v86 = *(v56 + 64);
  v87 = v59;
  v88 = v116;
  *v116 = v52;
  *(v88 + 1) = v104;
  v88[16] = v55;
  sub_2524134D8(v87, &v88[v86]);
LABEL_68:
  swift_storeEnumTagMultiPayload();
  return sub_2524194A4(v40, type metadata accessor for AccessoryControl.StatusProvider);
}

unint64_t HMCharacteristicValueLockMechanismState.debugDescription.getter()
{
  sub_252693210();

  v0 = sub_252693370();
  MEMORY[0x2530A4800](v0);

  return 0xD000000000000028;
}

unint64_t HMCharacteristicValueDoorState.debugDescription.getter()
{
  sub_252693210();

  v0 = sub_252693370();
  MEMORY[0x2530A4800](v0);

  return 0xD00000000000001FLL;
}

uint64_t HMCharacteristicValueTargetHumidifierDehumidifierState.debugDescription.getter()
{
  sub_252693210();
  MEMORY[0x2530A4800](0xD000000000000037, 0x80000002526AE910);
  v0 = sub_252693370();
  MEMORY[0x2530A4800](v0);

  return 0;
}

unint64_t HMCharacteristicValueCurrentSecuritySystemState.debugDescription.getter()
{
  sub_252693210();

  v0 = sub_252693370();
  MEMORY[0x2530A4800](v0);

  return 0xD000000000000030;
}

uint64_t sub_252412450(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v51 = sub_25268DA10();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = (&v42 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = (&v42 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v17);
  v43 = &v42 - v20;
  v44 = v2;
  v21 = *v2;
  sub_252693460();
  v59 = a2;
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)();
  v22 = sub_2526934C0();
  v57 = v21 + 56;
  v58 = v21;
  v23 = -1 << *(v21 + 32);
  v24 = v22 & ~v23;
  if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
LABEL_17:
    v37 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v59;
    v40 = v43;
    sub_2524193D4(v59, v43, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v60 = *v37;
    sub_252414F80(v40, v24, isUniquelyReferenced_nonNull_native);
    *v37 = v60;
    sub_25241943C(v39, v45, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    return 1;
  }

  v55 = ~v23;
  v56 = *(v10 + 72);
  v50 = (v4 + 8);
  v46 = (v4 + 32);
  v25 = v52;
  v47 = v9;
  while (1)
  {
    v26 = v56 * v24;
    sub_2524193D4(*(v58 + 48) + v56 * v24, v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v27 = *(v6 + 48);
    sub_2524193D4(v19, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524193D4(v59, &v8[v27], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_2524194A4(v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524193D4(v8, v53, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_4;
    }

    v29 = *v53;
    v30 = *&v8[v27];
    sub_2524194A4(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (v29 == v30)
    {
      goto LABEL_19;
    }

LABEL_5:
    v24 = (v24 + 1) & v55;
    if (((*(v57 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2524194A4(v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524193D4(v8, v54, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v54 == *&v8[v27])
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    goto LABEL_4;
  }

  sub_2524193D4(v8, v25, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2524194A4(v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    (*v50)(v25, v51);
LABEL_4:
    sub_252372288(v8, &qword_27F4DAE50);
    goto LABEL_5;
  }

  v31 = v48;
  v32 = v6;
  v33 = v51;
  (*v46)(v48, &v8[v27], v51);
  v49 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
  v34 = *v50;
  v35 = v31;
  v25 = v52;
  (*v50)(v35, v33);
  sub_2524194A4(v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v36 = v33;
  v6 = v32;
  v34(v25, v36);
  if ((v49 & 1) == 0)
  {
LABEL_16:
    sub_2524194A4(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    goto LABEL_5;
  }

LABEL_18:
  sub_2524194A4(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
LABEL_19:
  sub_2524194A4(v59, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  sub_2524193D4(*(v58 + 48) + v26, v45, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  return 0;
}

uint64_t sub_252412AD0(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x2530A4FB0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25241559C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252412CA8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v11 = *v5;
  sub_252693460();
  MEMORY[0x2530A4FE0](a2);
  v12 = sub_2526934C0();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_2524156C0(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252412DC8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25268F520();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_252419560(&qword_27F4DB2C0, MEMORY[0x277D163C8]);
  v33 = a2;
  v11 = sub_252692B20();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_252419560(&qword_27F4DBC48, MEMORY[0x277D163C8]);
      v21 = sub_252692B70();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_252415848(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2524130A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25268DA10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_252419560(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  v33 = a2;
  v11 = sub_252692B20();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_252419560(&qword_27F4DAF90, MEMORY[0x277CC95F0]);
      v21 = sub_252692B70();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_252415B10(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_252413388(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_252693460();
  sub_252692C80();
  v8 = sub_2526934C0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2526933B0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_252415DD8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2524134D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252413548(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  sub_252693460();
  MEMORY[0x2530A4FE0](a3 & 1);
  sub_2523D782C(v22, a2);
  v7 = sub_2526934C0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(v6 + 48) + 16 * v9;
      v12 = *v11;
      if (*(v11 + 8))
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_3;
        }

        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        v13 = sub_25243965C(v12, a2);
        j__swift_bridgeObjectRelease();
        j__swift_bridgeObjectRelease();
        j__swift_bridgeObjectRelease();
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (a3)
        {
LABEL_3:
          j__swift_bridgeObjectRetain();
          j__swift_bridgeObjectRetain();
          j__swift_bridgeObjectRelease();
          j__swift_bridgeObjectRelease();
          goto LABEL_4;
        }

        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        j__swift_bridgeObjectRetain();
        v14 = sub_25243965C(v12, a2);
        j__swift_bridgeObjectRelease();
        j__swift_bridgeObjectRelease();
        j__swift_bridgeObjectRelease();
        if (v14)
        {
LABEL_11:
          j__swift_bridgeObjectRelease();
          v15 = *(v6 + 48) + 16 * v9;
          v16 = *(v15 + 8);
          *a1 = *v15;
          *(a1 + 8) = v16;
          j__swift_bridgeObjectRetain();
          return 0;
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  v18 = a3 & 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22[0] = *v20;
  j__swift_bridgeObjectRetain();
  sub_252415F58(a2, v18, v9, isUniquelyReferenced_nonNull_native);
  *v20 = *&v22[0];
  *a1 = a2;
  *(a1 + 8) = v18;
  return 1;
}

uint64_t sub_2524137C4(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_252693460();
  MEMORY[0x2530A4FE0](a2);
  v8 = sub_2526934C0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_2524161D0(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2524138E4()
{
  v1 = v0;
  v42 = sub_25268DA10();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v46 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v45 = &v37 - v7;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB88);
  result = sub_2526931E0();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v0;
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v38 = (v2 + 8);
    v39 = (v2 + 32);
    v17 = result + 56;
    v40 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v43 + 72);
      v23 = v45;
      sub_25241943C(*(v8 + 48) + v22 * (v19 | (v11 << 6)), v45, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_252693460();
      sub_2524193D4(v23, v46, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v27 = v41;
          v26 = v42;
          (*v39)(v41, v46, v42);
          MEMORY[0x2530A4FE0](2);
          sub_252419560(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
          sub_252692B30();
          v28 = v27;
          v8 = v40;
          (*v38)(v28, v26);
        }
      }

      else
      {
        v25 = *v46;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v25);
      }

      result = sub_2526934C0();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_25241943C(v45, *(v10 + 48) + v18 * v22, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    v1 = v37;
    *(v8 + 16) = 0;
  }

  *v1 = v10;
  return result;
}

uint64_t sub_252413DB0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC30);
  result = sub_2526931E0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x2530A4FB0](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_252413FD8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2526931E0();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_252693460();
      MEMORY[0x2530A4FE0](v18);
      result = sub_2526934C0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_252414220()
{
  v1 = v0;
  v35 = sub_25268F520();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC50);
  result = sub_2526931E0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_252419560(&qword_27F4DB2C0, MEMORY[0x277D163C8]);
      result = sub_252692B20();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_25241457C()
{
  v1 = v0;
  v35 = sub_25268DA10();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB28);
  result = sub_2526931E0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_252419560(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
      result = sub_252692B20();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_2524148D8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB38);
  result = sub_2526931E0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_252693460();
      sub_252692C80();
      result = sub_2526934C0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_252414B38()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB80);
  result = sub_2526931E0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v4 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(v2 + 48) + 16 * (v12 | (v5 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      sub_252693460();
      MEMORY[0x2530A4FE0](v17);
      sub_2523D782C(v20, v16);
      sub_2526934C0();
      result = sub_2526931C0();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v18 = *(v4 + 48) + 16 * result;
      *v18 = v16;
      *(v18 + 8) = v17;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v19 = 1 << *(v2 + 32);
    if (v19 >= 64)
    {
      bzero((v2 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v19;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_252414D38(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2526931E0();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      sub_252693460();
      MEMORY[0x2530A4FE0](v18);
      result = sub_2526934C0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_252414F80(uint64_t a1, unint64_t a2, char a3)
{
  v55 = sub_25268DA10();
  v7 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = (&v47 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v57 = (&v47 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  v51 = v3;
  v50 = v13;
  if (v23 > v22 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_2524138E4();
  }

  else
  {
    if (v23 > v22)
    {
      sub_252416340();
      goto LABEL_24;
    }

    sub_252416DE4();
  }

  v24 = *v3;
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)();
  v25 = sub_2526934C0();
  v61 = v24 + 56;
  v62 = v24;
  v26 = -1 << *(v24 + 32);
  a2 = v25 & ~v26;
  if ((*(v24 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v60 = ~v26;
    v59 = *(v13 + 72);
    v54 = (v7 + 8);
    v48 = (v7 + 32);
    v27 = v56;
    v49 = v12;
    do
    {
      sub_2524193D4(*(v62 + 48) + v59 * a2, v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v28 = *(v9 + 48);
      sub_2524193D4(v21, v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_2524193D4(a1, &v11[v28], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_2524194A4(v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          sub_2524193D4(v11, v58, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_11;
          }

          v30 = *v58;
          v31 = *&v11[v28];
          sub_2524194A4(v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          if (v30 == v31)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_2524193D4(v11, v27, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            sub_2524194A4(v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
            (*v54)(v27, v55);
LABEL_11:
            sub_252372288(v11, &qword_27F4DAE50);
            goto LABEL_12;
          }

          v34 = &v11[v28];
          v35 = v52;
          v36 = v9;
          v37 = v55;
          (*v48)(v52, v34, v55);
          v53 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
          v38 = a1;
          v39 = *v54;
          (*v54)(v35, v37);
          sub_2524194A4(v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          v40 = v37;
          v9 = v36;
          v39(v56, v40);
          a1 = v38;
          v27 = v56;
          sub_2524194A4(v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          if (v53)
          {
LABEL_23:
            sub_2526933D0();
            __break(1u);
            break;
          }
        }
      }

      else
      {
        sub_2524194A4(v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        sub_2524193D4(v11, v57, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_11;
        }

        v32 = *v57;
        v33 = *&v11[v28];
        sub_2524194A4(v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        if (v32 == v33)
        {
          goto LABEL_23;
        }
      }

LABEL_12:
      a2 = (a2 + 1) & v60;
    }

    while (((*(v61 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v41 = a1;
  v42 = *v51;
  *(*v51 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_25241943C(v41, *(v42 + 48) + *(v50 + 72) * a2, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v46;
  }

  return result;
}

uint64_t sub_25241559C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252413DB0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25241654C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25241727C();
  }

  v8 = *v3;
  result = MEMORY[0x2530A4FB0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2526933D0();
  __break(1u);
  return result;
}

uint64_t sub_2524156C0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v10 = a6;
    sub_252413FD8(v8 + 1, a4);
  }

  else
  {
    if (v9 > v8)
    {
      v11 = a2;
      result = sub_25241668C(a4);
      a2 = v11;
      goto LABEL_12;
    }

    v10 = a6;
    sub_252417470(v8 + 1, a4);
  }

  v12 = *v6;
  sub_252693460();
  MEMORY[0x2530A4FE0](v7);
  result = sub_2526934C0();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    v15 = result & ~v13;
    result = v10(0);
    a2 = v15;
    while (*(*(v12 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v16 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v7;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2526933D0();
  __break(1u);
  return result;
}

uint64_t sub_252415848(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25268F520();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252414220();
  }

  else
  {
    if (v11 > v10)
    {
      sub_2524167BC(MEMORY[0x277D163C8], &qword_27F4DBC50);
      goto LABEL_12;
    }

    sub_252417688();
  }

  v12 = *v3;
  sub_252419560(&qword_27F4DB2C0, MEMORY[0x277D163C8]);
  v13 = sub_252692B20();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_252419560(&qword_27F4DBC48, MEMORY[0x277D163C8]);
      v21 = sub_252692B70();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2526933D0();
  __break(1u);
  return result;
}

uint64_t sub_252415B10(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25268DA10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25241457C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_2524167BC(MEMORY[0x277CC95F0], &qword_27F4DBB28);
      goto LABEL_12;
    }

    sub_2524179A4();
  }

  v12 = *v3;
  sub_252419560(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  v13 = sub_252692B20();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_252419560(&qword_27F4DAF90, MEMORY[0x277CC95F0]);
      v21 = sub_252692B70();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2526933D0();
  __break(1u);
  return result;
}

uint64_t sub_252415DD8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2524148D8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2524169F4();
      goto LABEL_16;
    }

    sub_252417CC0();
  }

  v10 = *v4;
  sub_252693460();
  sub_252692C80();
  result = sub_2526934C0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2526933B0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2526933D0();
  __break(1u);
  return result;
}