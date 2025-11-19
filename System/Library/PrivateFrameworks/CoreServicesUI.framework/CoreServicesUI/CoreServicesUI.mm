uint64_t sub_2478B46C0()
{
  type metadata accessor for CSUIBindableIO();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27EE57188 = v0;
  return result;
}

uint64_t sub_2478B46FC()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t *sub_2478B4734()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  return &qword_27EE57188;
}

uint64_t sub_2478B4784()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2478B47E0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD0, &qword_2478DA8E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v17 - v3;
  v5 = sub_2478D878C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD8, &unk_2478DA8E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2478DA8C0;
  v11 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v12 = v11;
  sub_2478BC41C(inited);
  swift_setDeallocating();
  sub_2478BC610(inited + 32);
  sub_2478D885C();

  if (!v1)
  {
    v14 = v18;
    sub_2478D876C();
    (*(v6 + 8))(v9, v5);
    v15 = sub_2478D88FC();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v4, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v16 + 32))(v14, v4, v15);
    }
  }

  return result;
}

uint64_t sub_2478B4A1C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE0, &qword_2478DA8F8);
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = *(*(sub_2478D889C() - 8) + 64) + 15;
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B4B18, v2, 0);
}

uint64_t sub_2478B4B18()
{
  v1 = *(v0 + 208);
  v2 = [*(v0 + 168) bundleURL];
  sub_2478D887C();

  v3 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v4 = sub_2478BB7B4(v1, 0);
  *(v0 + 216) = v4;
  v19 = v4;
  v9 = *(v0 + 160);
  v10 = sub_2478D88DC();
  v11 = [v10 _typeRecord];
  *(v0 + 224) = v11;

  if (v11)
  {
    v12 = [objc_opt_self() defaultWorkspace];
    *(v0 + 232) = v12;
    if (v12)
    {
      v13 = v12;
      v15 = *(v0 + 192);
      v14 = *(v0 + 200);
      v16 = *(v0 + 184);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 248;
      *(v0 + 24) = sub_2478B4E74;
      swift_continuation_init();
      *(v0 + 136) = v16;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
      sub_2478D8B0C();
      (*(v15 + 32))(boxed_opaque_existential_0Tm, v14, v16);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_2478B50C4;
      *(v0 + 104) = &block_descriptor;
      [v13 setDefaultHandlerForTypeRecord:v11 toApplicationRecord:v20 completionHandler:?];
      (*(v15 + 8))(boxed_opaque_existential_0Tm, v16);
      v12 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v12);
  }

  else
  {
    type metadata accessor for CSUIError(0);
    *(v0 + 152) = 6;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
    sub_2478D87FC();
    v18 = *(v0 + 144);
    swift_willThrow();

    v6 = *(v0 + 200);
    v5 = *(v0 + 208);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2478B4E74()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_2478B502C;
  }

  else
  {
    v5 = sub_2478B4F94;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2478B4F94()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2478B502C()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  swift_willThrow();

  v5 = v0[30];
  v7 = v0[25];
  v6 = v0[26];

  v8 = v0[1];

  return v8();
}

void sub_2478B50C4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE0, &qword_2478DA8F8);
    sub_2478D8B1C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE0, &qword_2478DA8F8);
    sub_2478D8B2C();
  }
}

uint64_t sub_2478B5168(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2478B51F8, v2, 0);
}

uint64_t sub_2478B51F8()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = sub_2478D886C();
  if (v2)
  {
    v4 = [*(v0 + 96) bundleURL];
    *(v0 + 72) = sub_2478D889C();
    __swift_allocate_boxed_opaque_existential_0Tm((v0 + 48));
    sub_2478D887C();

    sub_2478BC84C((v0 + 48), (v0 + 16));
    v5 = *(v0 + 40);
    if (v5)
    {
      v6 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
      v7 = *(v5 - 8);
      v8 = *(v7 + 64) + 15;
      v9 = swift_task_alloc();
      (*(v7 + 16))(v9, v6, v5);
      v2 = sub_2478D8E4C();
      (*(v7 + 8))(v9, v5);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    }

    else
    {
      v2 = 0;
    }
  }

  sub_2478BCD34(0, &unk_27EE54CD0, 0x277CCACA8);
  v10 = sub_2478D8C0C();
  sub_2478D89EC();
  v11 = sub_2478D89BC();

  *(v0 + 80) = 0;
  v12 = [v3 setResourceValue:v2 forKey:v11 error:v0 + 80];

  swift_unknownObjectRelease();
  v13 = *(v0 + 80);
  if (v12)
  {
    v20 = *(v0 + 8);
    v14 = v13;
    v15 = *MEMORY[0x277D85DE8];
    v16 = v20;
  }

  else
  {
    v17 = v13;
    sub_2478D881C();

    swift_willThrow();
    v16 = *(v0 + 8);
    v18 = *MEMORY[0x277D85DE8];
  }

  return v16();
}

uint64_t sub_2478B54B0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2478B5554(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CSUIBindableIO();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_2478B558C(void *a1)
{
  sub_2478D8CEC();

  v2 = [a1 description];
  v3 = sub_2478D89EC();
  v5 = v4;

  MEMORY[0x24C1AD190](v3, v5);

  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return 0xD000000000000016;
}

id sub_2478B564C(uint64_t a1)
{
  v1 = [objc_opt_self() bindableWithDocumentProxy_];

  return v1;
}

id sub_2478B569C(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_2478D889C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = a5;
  v19 = [v18 URL];
  if (v19)
  {
    v30 = a4;
    v20 = a3;
    v21 = a2;
    v22 = v19;
    sub_2478D887C();

    (*(v11 + 32))(v17, v15, v10);
    sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
    LODWORD(v22) = [v18 isContentManaged];
    v23 = [v18 sourceAuditToken];
    v24 = v18;
    v25 = v23[1];
    v31[0] = *v23;
    v31[1] = v25;
    v32 = 0;
    v26 = sub_2478BF830(v17, a1, v22, v31, v21, v20, v30);
    (*(v11 + 8))(v17, v10);
  }

  else
  {

    sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;

    v26 = sub_2478C0C5C(a2, sub_2478BC894, v27);
  }

  return v26;
}

BOOL sub_2478B58FC(void *a1)
{
  v2 = sub_2478D889C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = [a1 URL];
  if (v10)
  {
    sub_2478D887C();

    (*(v3 + 32))(v9, v6, v2);
    (*(v3 + 56))(v9, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  sub_2478BC950(v9, &qword_27EE54AF8, &qword_2478DA910);
  return v10 != 0;
}

void *sub_2478B5A98(void *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v11 - v3;
  v5 = [a1 URL];
  if (v5)
  {
    v6 = v5;
    sub_2478D887C();

    v7 = sub_2478D889C();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = &unk_285981208;
  }

  else
  {
    v9 = sub_2478D889C();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v8 = &unk_285981238;
  }

  sub_2478BC950(v4, &qword_27EE54AF8, &qword_2478DA910);
  return v8;
}

char *sub_2478B5BE0(void *a1)
{
  v3 = sub_2478D889C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2478D878C();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = [a1 URL];
  if (v16)
  {
    v30 = v8;
    v17 = v16;
    sub_2478D887C();

    (*(v4 + 56))(v15, 0, 1, v3);
    sub_2478BC950(v15, &qword_27EE54AF8, &qword_2478DA910);
    result = [a1 URL];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v19 = result;
    sub_2478D887C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD8, &unk_2478DA8E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2478DA8C0;
    v21 = *MEMORY[0x277CBE8D8];
    *(inited + 32) = *MEMORY[0x277CBE8D8];
    v22 = v21;
    sub_2478BC41C(inited);
    swift_setDeallocating();
    sub_2478BC610(inited + 32);
    sub_2478D885C();
    if (v1)
    {

      (*(v4 + 8))(v7, v3);
      return v7;
    }

    (*(v4 + 8))(v7, v3);
    v7 = sub_2478D877C();
    v29 = v28;
    (*(v31 + 8))(v11, v30);
    if (v29)
    {
      return v7;
    }
  }

  else
  {
    (*(v4 + 56))(v15, 1, 1, v3);
    sub_2478BC950(v15, &qword_27EE54AF8, &qword_2478DA910);
  }

  v23 = [a1 typeIdentifier];
  if (!v23)
  {
    goto LABEL_11;
  }

  result = [a1 typeIdentifier];
  if (result)
  {
    v24 = result;
    v25 = [objc_opt_self() typeRecordWithIdentifier_];

    if (v25)
    {
      v26 = [v25 localizedDescription];

      if (v26)
      {
        v7 = sub_2478D89EC();

        return v7;
      }
    }

LABEL_11:
    type metadata accessor for CSUIError(0);
    v7 = v27;
    v32 = 5;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
    sub_2478D87FC();
    swift_willThrow();
    return v7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2478B6058(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2478D88FC();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_2478D889C();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD0, &qword_2478DA8E0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B6244, 0, 0);
}

uint64_t sub_2478B6244()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v3 + 56);
  *(v0 + 176) = v5;
  *(v0 + 184) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);
  v6 = [v4 typeIdentifier];
  if (v6)
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = v6;
    sub_2478D89EC();

    sub_2478D890C();
    sub_2478BC950(v8, &qword_27EE54AD0, &qword_2478DA8E0);
    sub_2478BC9B0(v7, v8, &qword_27EE54AD0, &qword_2478DA8E0);
  }

  v10 = [*(v0 + 40) URL];
  if (v10)
  {
    v11 = *(v0 + 120);
    v12 = v10;
    sub_2478D887C();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 152);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  (*(*(v0 + 80) + 56))(v17, v13, 1, *(v0 + 72));
  sub_2478BC9B0(v17, v16, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BDAA4(v14, v15, &qword_27EE54AD0, &qword_2478DA8E0);
  v20 = *(v19 + 48);
  *(v0 + 192) = v20;
  *(v0 + 200) = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v14) = v20(v15, 1, v18);
  sub_2478BC950(v15, &qword_27EE54AD0, &qword_2478DA8E0);
  if (v14 != 1)
  {
    goto LABEL_9;
  }

  v21 = *(v0 + 112);
  v22 = *(v0 + 72);
  v23 = *(v0 + 80);
  sub_2478BDAA4(*(v0 + 128), v21, &qword_27EE54AF8, &qword_2478DA910);
  v24 = (*(v23 + 48))(v21, 1, v22);
  v25 = *(v0 + 112);
  if (v24 == 1)
  {
    sub_2478BC950(*(v0 + 112), &qword_27EE54AF8, &qword_2478DA910);
LABEL_9:
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 136);
    v29 = *(v0 + 48);
    sub_2478BDAA4(*(v0 + 168), v28, &qword_27EE54AD0, &qword_2478DA8E0);
    if (v27(v28, 1, v29) == 1)
    {
      v30 = *(v0 + 168);
      v31 = *(v0 + 128);
      sub_2478BC950(*(v0 + 136), &qword_27EE54AD0, &qword_2478DA8E0);
      type metadata accessor for CSUIError(0);
      *(v0 + 24) = 6;
      sub_2478BC694(MEMORY[0x277D84F90]);
      sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
      sub_2478D87FC();
      v63 = *(v0 + 16);
      swift_willThrow();
      sub_2478BC950(v31, &qword_27EE54AF8, &qword_2478DA910);
      sub_2478BC950(v30, &qword_27EE54AD0, &qword_2478DA8E0);
      v33 = *(v0 + 160);
      v32 = *(v0 + 168);
      v35 = *(v0 + 144);
      v34 = *(v0 + 152);
      v37 = *(v0 + 128);
      v36 = *(v0 + 136);
      v39 = *(v0 + 112);
      v38 = *(v0 + 120);
      v40 = *(v0 + 96);
      v41 = *(v0 + 104);
      v61 = *(v0 + 88);
      v62 = *(v0 + 64);

      v42 = *(v0 + 8);

      return v42();
    }

    else
    {
      v44 = *(v0 + 128);
      v45 = *(v0 + 104);
      v46 = *(v0 + 72);
      v47 = *(v0 + 80);
      (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 136), *(v0 + 48));
      sub_2478BDAA4(v44, v45, &qword_27EE54AF8, &qword_2478DA910);
      v48 = (*(v47 + 48))(v45, 1, v46);
      v49 = *(v0 + 104);
      if (v48 == 1)
      {
        sub_2478BC950(*(v0 + 104), &qword_27EE54AF8, &qword_2478DA910);
        if (qword_27EE55260 != -1)
        {
          swift_once();
        }

        v50 = *(*qword_27EE57188 + 96);
        v64 = (v50 + *v50);
        v51 = v50[1];
        v52 = swift_task_alloc();
        *(v0 + 256) = v52;
        *v52 = v0;
        v52[1] = sub_2478B7298;
        v53 = *(v0 + 32);
        v54 = *(v0 + 64);
        v55 = v64;
      }

      else
      {
        (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 104), *(v0 + 72));
        if (qword_27EE55260 != -1)
        {
          swift_once();
        }

        v58 = *(*qword_27EE57188 + 104);
        v65 = (v58 + *v58);
        v59 = v58[1];
        v60 = swift_task_alloc();
        *(v0 + 240) = v60;
        *v60 = v0;
        v60[1] = sub_2478B7018;
        v54 = *(v0 + 88);
        v53 = 0;
        v55 = v65;
      }

      return v55(v54, v53);
    }
  }

  (*(*(v0 + 80) + 32))(*(v0 + 96), *(v0 + 112), *(v0 + 72));
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v56 = qword_27EE57188;
  *(v0 + 208) = qword_27EE57188;
  v57 = (*v56 + 88) & 0xFFFFFFFFFFFFLL | 0x8EB4000000000000;
  *(v0 + 216) = *(*v56 + 88);
  *(v0 + 224) = v57;

  return MEMORY[0x2822009F8](sub_2478B6A0C, v56, 0);
}

uint64_t sub_2478B6A0C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);
  (*(v0 + 216))(*(v0 + 96));
  *(v0 + 232) = 0;

  return MEMORY[0x2822009F8](sub_2478B6AA4, 0, 0);
}

uint64_t sub_2478B6AA4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[6];
  (*(v0[10] + 8))(v0[12], v0[9]);
  sub_2478BC950(v3, &qword_27EE54AD0, &qword_2478DA8E0);
  v2(v4, 0, 1, v5);
  sub_2478BC9B0(v4, v3, &qword_27EE54AD0, &qword_2478DA8E0);
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[17];
  v9 = v0[6];
  sub_2478BDAA4(v0[21], v8, &qword_27EE54AD0, &qword_2478DA8E0);
  if (v7(v8, 1, v9) == 1)
  {
    v10 = v0[21];
    v11 = v0[16];
    sub_2478BC950(v0[17], &qword_27EE54AD0, &qword_2478DA8E0);
    type metadata accessor for CSUIError(0);
    v0[3] = 6;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
    sub_2478D87FC();
    v41 = v0[2];
    swift_willThrow();
    sub_2478BC950(v11, &qword_27EE54AF8, &qword_2478DA910);
    sub_2478BC950(v10, &qword_27EE54AD0, &qword_2478DA8E0);
    v13 = v0[20];
    v12 = v0[21];
    v15 = v0[18];
    v14 = v0[19];
    v17 = v0[16];
    v16 = v0[17];
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[12];
    v21 = v0[13];
    v39 = v0[11];
    v40 = v0[8];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[16];
    v25 = v0[13];
    v26 = v0[9];
    v27 = v0[10];
    (*(v0[7] + 32))(v0[8], v0[17], v0[6]);
    sub_2478BDAA4(v24, v25, &qword_27EE54AF8, &qword_2478DA910);
    v28 = (*(v27 + 48))(v25, 1, v26);
    v29 = v0[13];
    if (v28 == 1)
    {
      sub_2478BC950(v0[13], &qword_27EE54AF8, &qword_2478DA910);
      if (qword_27EE55260 != -1)
      {
        swift_once();
      }

      v30 = *(*qword_27EE57188 + 96);
      v42 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      v0[32] = v32;
      *v32 = v0;
      v32[1] = sub_2478B7298;
      v33 = v0[4];
      v34 = v0[8];
      v35 = v42;
    }

    else
    {
      (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
      if (qword_27EE55260 != -1)
      {
        swift_once();
      }

      v36 = *(*qword_27EE57188 + 104);
      v43 = (v36 + *v36);
      v37 = v36[1];
      v38 = swift_task_alloc();
      v0[30] = v38;
      *v38 = v0;
      v38[1] = sub_2478B7018;
      v34 = v0[11];
      v33 = 0;
      v35 = v43;
    }

    return v35(v34, v33);
  }
}

uint64_t sub_2478B7018()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2478B7644;
  }

  else
  {
    v3 = sub_2478B712C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478B712C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v1 = *(*qword_27EE57188 + 96);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_2478B7298;
  v4 = v0[8];
  v5 = v0[4];

  return v7(v4, v5);
}

uint64_t sub_2478B7298()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_2478B77B0;
  }

  else
  {
    v3 = sub_2478B73AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478B73AC()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_2478BC950(v6, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BC950(v1, &qword_27EE54AD0, &qword_2478DA8E0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2478B74F4()
{
  v1 = v0[21];
  v2 = v0[16];
  (*(v0[10] + 8))(v0[12], v0[9]);
  sub_2478BC950(v2, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BC950(v1, &qword_27EE54AD0, &qword_2478DA8E0);
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[29];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2478B7644()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v5 + 8))(v3, v4);
  sub_2478BC950(v2, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BC950(v1, &qword_27EE54AD0, &qword_2478DA8E0);
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  v18 = v0[11];
  v19 = v0[8];
  v20 = v0[31];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2478B77B0()
{
  v1 = v0[21];
  v2 = v0[16];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_2478BC950(v2, &qword_27EE54AF8, &qword_2478DA910);
  sub_2478BC950(v1, &qword_27EE54AD0, &qword_2478DA8E0);
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[33];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2478B7900(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2478D889C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B79CC, 0, 0);
}

uint64_t sub_2478B79CC()
{
  v1 = [*(v0 + 40) URL];
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = v1;
    sub_2478D887C();

    (*(v5 + 32))(v3, v2, v4);
    if (qword_27EE55260 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 32);
    v8 = *(*qword_27EE57188 + 104);
    v17 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_2478B7C4C;
    v11 = *(v0 + 72);

    return v17(v11, v7);
  }

  else
  {
    type metadata accessor for CSUIError(0);
    *(v0 + 24) = 3;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
    sub_2478D87FC();
    v13 = *(v0 + 16);
    swift_willThrow();
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_2478B7C4C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2478B7DE8;
  }

  else
  {
    v3 = sub_2478B7D60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478B7D60()
{
  v1 = v0[8];
  (*(v0[7] + 8))(v0[9], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2478B7DE8()
{
  (*(v0[7] + 8))(v0[9], v0[6]);
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

id sub_2478B7E6C()
{
  v1 = [objc_opt_self() bindableWithDocumentProxy_];

  return v1;
}

BOOL sub_2478B7EBC()
{
  v1 = sub_2478D889C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v11 - v7;
  v9 = [*v0 URL];
  if (v9)
  {
    sub_2478D887C();

    (*(v2 + 32))(v8, v5, v1);
    (*(v2 + 56))(v8, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v8, 1, 1, v1);
  }

  sub_2478BC950(v8, &qword_27EE54AF8, &qword_2478DA910);
  return v9 != 0;
}

void *sub_2478B805C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = [*v0 URL];
  if (v5)
  {
    v6 = v5;
    sub_2478D887C();

    v7 = sub_2478D889C();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = &unk_285981208;
  }

  else
  {
    v9 = sub_2478D889C();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v8 = &unk_285981238;
  }

  sub_2478BC950(v4, &qword_27EE54AF8, &qword_2478DA910);
  return v8;
}

uint64_t sub_2478B81BC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2478BDB0C;

  return sub_2478B6058(a1, v4);
}

uint64_t sub_2478B8258(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2478BDB0C;

  return sub_2478B7900(a1, v4);
}

unint64_t sub_2478B82F4()
{
  v1 = *v0;
  sub_2478D8CEC();

  v2 = [v1 description];
  v3 = sub_2478D89EC();
  v5 = v4;

  MEMORY[0x24C1AD190](v3, v5);

  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_2478B83E8(uint64_t a1, uint64_t a2)
{
  sub_2478D8CEC();

  MEMORY[0x24C1AD190](a1, a2);
  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return 0xD000000000000017;
}

id sub_2478B8478()
{
  v0 = sub_2478D89BC();
  v1 = [objc_opt_self() bindableWithTypeIdentifier_];

  return v1;
}

id sub_2478B84CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_2478C0C5C(a2, sub_2478BCA18, v7);

  return v8;
}

void sub_2478B8578(void (*a1)())
{
  type metadata accessor for CSUIError(0);
  sub_2478BC694(MEMORY[0x277D84F90]);
  sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
  sub_2478D87FC();
  a1();
}

uint64_t sub_2478B864C()
{
  v0 = sub_2478D89BC();
  v1 = [objc_opt_self() typeRecordWithIdentifier_];

  if (v1 && (v2 = [v1 localizedDescription], v1, v2))
  {
    v3 = sub_2478D89EC();

    return v3;
  }

  else
  {
    type metadata accessor for CSUIError(0);
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
    sub_2478D87FC();
    return swift_willThrow();
  }
}

uint64_t sub_2478B877C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD0, &qword_2478DA8E0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = sub_2478D88FC();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B8878, 0, 0);
}

uint64_t sub_2478B8878()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  sub_2478D890C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2478BC950(v0[7], &qword_27EE54AD0, &qword_2478DA8E0);
    type metadata accessor for CSUIError(0);
    v0[3] = 6;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
    sub_2478D87FC();
    v6 = v0[2];
    swift_willThrow();
    v7 = v0[10];
    v8 = v0[7];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    if (qword_27EE55260 != -1)
    {
      swift_once();
    }

    v11 = *(*qword_27EE57188 + 96);
    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_2478B8B24;
    v14 = v0[10];
    v15 = v0[4];

    return v16(v14, v15);
  }
}

uint64_t sub_2478B8B24()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2478B8CC0;
  }

  else
  {
    v3 = sub_2478B8C38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478B8C38()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2478B8CC0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2478B8D64()
{
  type metadata accessor for CSUIError(0);
  v0[3] = 3;
  sub_2478BC694(MEMORY[0x277D84F90]);
  sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
  sub_2478D87FC();
  v1 = v0[2];
  swift_willThrow();
  v2 = v0[1];

  return v2();
}

id sub_2478B8E48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_2478D89BC();
  v4 = [objc_opt_self() bindableWithTypeIdentifier_];

  return v4;
}

id sub_2478B8EA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_2478C0C5C(a2, sub_2478BDB28, v7);

  return v8;
}

uint64_t sub_2478B8F58()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2478B864C();
}

uint64_t sub_2478B8F74(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2478BDB0C;

  return sub_2478B877C(a1, v5, v4);
}

unint64_t sub_2478B901C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2478D8CEC();

  MEMORY[0x24C1AD190](v1, v2);
  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_2478B90A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2478D889C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2478B9110()
{
  strcpy(v2, "URLBindable(");
  sub_2478D889C();
  sub_2478BCA20(&qword_27EE54DE0, 255, MEMORY[0x277CC9260]);
  v0 = sub_2478D8E1C();
  MEMORY[0x24C1AD190](v0);

  MEMORY[0x24C1AD190](41, 0xE100000000000000);
  return v2[0];
}

id sub_2478B91CC()
{
  v0 = sub_2478D886C();
  v1 = [objc_opt_self() bindableWithURL_];

  return v1;
}

id sub_2478B9220(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = type metadata accessor for URLBindable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_2478D884C();
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  if (v12)
  {
    memset(v18, 0, sizeof(v18));
    v19 = 1;
    return sub_2478BF830(v4, a1, 0, v18, a2, a3, a4);
  }

  else
  {
    sub_2478BCAB4(v4, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v15 = swift_allocObject();
    sub_2478BCB1C(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = a3;
    v16[1] = a4;

    v17 = sub_2478C0C5C(a2, sub_2478BCB80, v15);

    return v17;
  }
}

void sub_2478B93D0(uint64_t a1, void (*a2)(void *))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_self() defaultWorkspace];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = sub_2478D886C();
  v12[0] = 0;
  v6 = [v4 openURL:v5 configuration:0 error:v12];

  if (v6)
  {
    v7 = v12[0];

    a2(0);
  }

  else
  {
    v8 = v12[0];
    v9 = sub_2478D881C();

    swift_willThrow();
    v10 = v9;
    a2(v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void *sub_2478B9518()
{
  if (sub_2478D884C())
  {
    return &unk_2859812B0;
  }

  else
  {
    return &unk_2859812E0;
  }
}

uint64_t sub_2478B9548()
{
  v2 = sub_2478D878C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AD8, &unk_2478DA8E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2478DA8C0;
  v8 = *MEMORY[0x277CBE8D8];
  *(inited + 32) = *MEMORY[0x277CBE8D8];
  v9 = v8;
  sub_2478BC41C(inited);
  swift_setDeallocating();
  sub_2478BC610(inited + 32);
  sub_2478D885C();

  if (!v1)
  {
    v0 = sub_2478D877C();
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    if (!v11)
    {
      type metadata accessor for CSUIError(0);
      v0 = v13;
      v14[1] = 5;
      sub_2478BC694(MEMORY[0x277D84F90]);
      sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
      sub_2478D87FC();
      swift_willThrow();
    }
  }

  return v0;
}

uint64_t sub_2478B9740(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2478D88FC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478B9800, 0, 0);
}

uint64_t sub_2478B9800()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE57188;
  v0[7] = qword_27EE57188;
  v2 = (*v1 + 88) & 0xFFFFFFFFFFFFLL | 0x8EB4000000000000;
  v0[8] = *(*v1 + 88);
  v0[9] = v2;

  return MEMORY[0x2822009F8](sub_2478B98B4, v1, 0);
}

uint64_t sub_2478B98B4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  (*(v0 + 64))(*(v0 + 24));
  *(v0 + 80) = 0;
  v4 = *(**(v0 + 56) + 96);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_2478B9A34;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);

  return v11(v7, v9);
}

uint64_t sub_2478B9A34()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2478B9E38, 0, 0);
  }

  else
  {
    v4 = *(**(v3 + 56) + 104);
    v10 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v3 + 104) = v6;
    *v6 = v3;
    v6[1] = sub_2478B9C40;
    v7 = *(v3 + 56);
    v8 = *(v3 + 24);

    return (v10)(v8, 0);
  }
}

uint64_t sub_2478B9C40()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2478B9EB4;
  }

  else
  {
    v3 = sub_2478B9D54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478B9D54()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2478B9DD4()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2478B9E38()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2478B9EB4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[14];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2478B9F30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2478B9F50, 0, 0);
}

uint64_t sub_2478B9F50()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = *(*qword_27EE57188 + 104);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2478BA0B0;
  v5 = v0[3];

  return v7(v5, v1);
}

uint64_t sub_2478BA0B0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2478BA1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2478D889C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

id sub_2478BA210(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = sub_2478D884C();
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  if (v12)
  {
    memset(v18, 0, sizeof(v18));
    v19 = 1;
    return sub_2478BF830(v5, a1, 0, v18, a2, a3, a4);
  }

  else
  {
    sub_2478BCAB4(v5, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v15 = swift_allocObject();
    sub_2478BCB1C(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = a3;
    v16[1] = a4;

    v17 = sub_2478C0C5C(a2, sub_2478BDB20, v15);

    return v17;
  }
}

void *sub_2478BA3B8()
{
  if (sub_2478D884C())
  {
    return &unk_285981308;
  }

  else
  {
    return &unk_285981338;
  }
}

uint64_t sub_2478BA400(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2478BA494;

  return sub_2478B9740(a1);
}

uint64_t sub_2478BA494()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2478BA588(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2478BA5A8, 0, 0);
}

uint64_t sub_2478BA5A8()
{
  if (qword_27EE55260 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = *(*qword_27EE57188 + 104);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2478BDB10;
  v5 = v0[3];

  return v7(v5, v1);
}

id sub_2478BA708(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDocumentProxy_];

  return v2;
}

id sub_2478BA750(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___CSUIBindable_rawBindable];
  *&v1[OBJC_IVAR___CSUIBindable_rawBindable + 24] = &type metadata for DocumentProxyBindable;
  *(v3 + 4) = sub_2478BCB84();
  *v3 = a1;
  v5.receiver = v1;
  v5.super_class = CSUIBindable;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_2478BA870(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2478D88CC();
  v6 = v5;
  v7 = &v2[OBJC_IVAR___CSUIBindable_rawBindable];
  *&v2[OBJC_IVAR___CSUIBindable_rawBindable + 24] = &type metadata for TypeIdentifierBindable;
  v7[4] = sub_2478BCBD8();
  *v7 = v4;
  v7[1] = v6;
  v11.receiver = v2;
  v11.super_class = CSUIBindable;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_2478D88FC();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id sub_2478BAA7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CSUIBindable(a1);
  *a2 = v4;

  return v4;
}

id sub_2478BAB00(uint64_t a1, uint64_t (*a2)(void), SEL *a3, uint64_t (*a4)(void))
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = a2();
  v10 = [v8 *a3];

  v11 = a4(0);
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_2478BABB4(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___CSUIBindable_rawBindable];
  v3[3] = type metadata accessor for URLBindable();
  v3[4] = sub_2478BCA20(&qword_27EE54B18, 255, type metadata accessor for URLBindable);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v3);
  v5 = sub_2478D889C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(boxed_opaque_existential_0Tm, a1, v5);
  v9.receiver = v1;
  v9.super_class = CSUIBindable;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t CSUIBindable.description.getter()
{
  v1 = v0;
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0x6E6942495553433CLL, 0xEF203A656C626164);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR___CSUIBindable_rawBindable), *(v1 + OBJC_IVAR___CSUIBindable_rawBindable + 24));
  v3 = *(v2 + 8);
  sub_2478D8E3C();
  MEMORY[0x24C1AD190](62, 0xE100000000000000);
  return 0;
}

void __swiftcall CSUIBindable.init()(CSUIBindable *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2478BB094()
{
  v1 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), v1);
  return (*(v2 + 16))(v1, v2);
}

void *sub_2478BB0F0(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v2 = [objc_opt_self() claimBindingsWithConfiguration:a1 error:v25];
  v3 = v25[0];
  if (!v2)
  {
    v20 = v25[0];
    sub_2478D881C();

    swift_willThrow();
    goto LABEL_16;
  }

  v4 = v2;
  sub_2478BCD34(0, &qword_27EE54B20, 0x277CC1E98);
  v5 = sub_2478D8ABC();
  v6 = v3;

  if (v5 >> 62)
  {
    v7 = sub_2478D8DAC();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_15:

    v3 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v25[0] = MEMORY[0x277D84F90];
  sub_2478BC2DC(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
  }

  v8 = 0;
  v9 = v5;
  v23 = v1;
  v24 = v5 & 0xC000000000000001;
  v3 = v25[0];
  v10 = v5;
  v11 = v7;
  do
  {
    if (v24)
    {
      v12 = MEMORY[0x24C1AD450](v8, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = [v12 bundleRecord];
    v15 = [v13 provenance];
    v16 = [v13 claimRecord];

    v25[0] = v3;
    v18 = v3[2];
    v17 = v3[3];
    if (v18 >= v17 >> 1)
    {
      sub_2478BC2DC((v17 > 1), v18 + 1, 1);
      v3 = v25[0];
    }

    ++v8;
    v3[2] = v18 + 1;
    v19 = &v3[3 * v18];
    v19[4] = v14;
    v19[5] = v15;
    v19[6] = v16;
    v9 = v10;
  }

  while (v11 != v8);

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2478BB358()
{
  v1 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_2478BB3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v10 = *(v4 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v4 + OBJC_IVAR___CSUIBindable_rawBindable), v9);
  return (*(v10 + 32))(a1, a2, a3, a4, v9, v10);
}

uint64_t sub_2478BB444()
{
  v1 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_2478BB4A0()
{
  v1 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 24);
  v2 = *(v0 + OBJC_IVAR___CSUIBindable_rawBindable + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR___CSUIBindable_rawBindable), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_2478BB504(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2478BB524, 0, 0);
}

uint64_t sub_2478BB524()
{
  v1 = (v0[3] + OBJC_IVAR___CSUIBindable_rawBindable);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(v3 + 56);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_2478BDB10;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_2478BB65C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2478BB67C, 0, 0);
}

uint64_t sub_2478BB67C()
{
  v1 = (v0[3] + OBJC_IVAR___CSUIBindable_rawBindable);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(v3 + 64);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_2478BDB10;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

id sub_2478BB7B4(uint64_t a1, char a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2478D886C();
  v16[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_2478D889C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_2478D881C();

    swift_willThrow();
    v13 = sub_2478D889C();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2478BB908(uint64_t a1, id *a2)
{
  result = sub_2478D89CC();
  *a2 = 0;
  return result;
}

uint64_t sub_2478BB980(uint64_t a1, id *a2)
{
  v3 = sub_2478D89DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2478BBA00@<X0>(uint64_t *a1@<X8>)
{
  sub_2478D89EC();
  v2 = sub_2478D89BC();

  *a1 = v2;
  return result;
}

uint64_t sub_2478BBA44()
{
  v1 = *v0;
  v2 = sub_2478D89EC();
  v3 = MEMORY[0x24C1AD1B0](v2);

  return v3;
}

uint64_t sub_2478BBA80()
{
  v1 = *v0;
  sub_2478D89EC();
  sub_2478D8A3C();
}

uint64_t sub_2478BBAD4()
{
  v1 = *v0;
  sub_2478D89EC();
  sub_2478D8ECC();
  sub_2478D8A3C();
  v2 = sub_2478D8EDC();

  return v2;
}

uint64_t sub_2478BBB48(uint64_t a1)
{
  v2 = sub_2478BCA20(&unk_27EE54D30, 255, type metadata accessor for CSUIError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2478BBBB8(uint64_t a1)
{
  v2 = sub_2478BCA20(&unk_27EE54D30, 255, type metadata accessor for CSUIError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2478BBC2C(uint64_t a1)
{
  v2 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2478BBCAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2478D89EC();
  v6 = v5;
  if (v4 == sub_2478D89EC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2478D8E5C();
  }

  return v9 & 1;
}

uint64_t sub_2478BBD44(uint64_t a1)
{
  v2 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2478BBDB4(uint64_t a1)
{
  v2 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2478BBE24(void *a1, uint64_t a2)
{
  v4 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2478BBEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2478BBF5C()
{
  v2 = *v0;
  sub_2478D8ECC();
  sub_2478D897C();
  return sub_2478D8EDC();
}

void *sub_2478BBFBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2478BBFD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2478D89BC();

  *a2 = v5;
  return result;
}

uint64_t sub_2478BC020@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2478D89EC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2478BC04C(uint64_t a1)
{
  v2 = sub_2478BCA20(&qword_27EE54BD0, 255, type metadata accessor for URLResourceKey);
  v3 = sub_2478BCA20(&qword_27EE54BD8, 255, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2478BC110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_2478BC1AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2478D8ECC();
  sub_2478D8A3C();
  v6 = sub_2478D8EDC();

  return sub_2478BC224(a1, a2, v6);
}

unint64_t sub_2478BC224(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2478D8E5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2478BC2DC(char *a1, int64_t a2, char a3)
{
  result = sub_2478BC2FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2478BC2FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54BE0, &qword_2478DBBB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2478BC41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54BE8, &unk_2478DAE90);
    v3 = sub_2478D8CCC();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_2478D89EC();
      sub_2478D8ECC();
      v29 = v7;
      sub_2478D8A3C();
      v9 = sub_2478D8EDC();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_2478D89EC();
        v20 = v19;
        if (v18 == sub_2478D89EC() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_2478D8E5C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2478BC610(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2478BC694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE55130, &unk_2478DAE80);
    v3 = sub_2478D8DEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2478BDAA4(v4, &v13, &unk_27EE54FA0, &qword_2478DB1C0);
      v5 = v13;
      v6 = v14;
      result = sub_2478BC1AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2478BC84C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2478BC7D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2478BC84C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2478BC85C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2478BC894()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for CSUIError(0);
  sub_2478BC694(MEMORY[0x277D84F90]);
  sub_2478BCA20(&qword_27EE54EC0, 255, type metadata accessor for CSUIError);
  sub_2478D87FC();
  v2();
}

uint64_t sub_2478BC950(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2478BC9B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2478BCA20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for URLBindable()
{
  result = qword_27EE55670;
  if (!qword_27EE55670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2478BCAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLBindable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2478BCB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLBindable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2478BCB84()
{
  result = qword_27EE54B08;
  if (!qword_27EE54B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54B08);
  }

  return result;
}

unint64_t sub_2478BCBD8()
{
  result = qword_27EE54B10;
  if (!qword_27EE54B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54B10);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2478BCD34(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_2478BCDE8(uint64_t a1)
{
  result = sub_2478BCE10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2478BCE10()
{
  result = qword_27EE54B30;
  if (!qword_27EE54B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54B30);
  }

  return result;
}

unint64_t sub_2478BCE64(uint64_t a1)
{
  result = sub_2478BCE8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2478BCE8C()
{
  result = qword_27EE54B38;
  if (!qword_27EE54B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54B38);
  }

  return result;
}

uint64_t sub_2478BCEE0(uint64_t a1)
{
  result = sub_2478BCA20(&qword_27EE54B40, 255, type metadata accessor for URLBindable);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2478BCF50(uint64_t *a1, int a2)
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

uint64_t sub_2478BCF98(uint64_t result, int a2, int a3)
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

uint64_t sub_2478BD060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2478BA494;

  return v11(a1, a2, a3);
}

uint64_t sub_2478BD188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2478BDB0C;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2478BD2CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2478BD314(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2478BD374(uint64_t a1, uint64_t a2)
{
  v4 = sub_2478D889C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2478BD3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2478D889C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2478BD464()
{
  result = sub_2478D889C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2478BD7A4(uint64_t a1, unint64_t *a2)
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

unint64_t sub_2478BD840()
{
  result = qword_27EE550B0;
  if (!qword_27EE550B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE550B0);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(type metadata accessor for URLBindable() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_2478D889C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

void sub_2478BDA10()
{
  v1 = *(type metadata accessor for URLBindable() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_2478B93D0(v0 + v2, v4);
}

uint64_t sub_2478BDAA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_2478BDBA0(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_2478BDBB8(result, a2, a3 & 1);
  }

  return result;
}

id sub_2478BDBB8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2478BDBC8(uint64_t a1, uint64_t a2, char a3)
{
  sub_2478BDC0C(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

void sub_2478BDC0C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    sub_2478BDC24(a1, a2, a3 & 1);
  }
}

void sub_2478BDC24(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2478BDC54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C00, &unk_2478DAF00);
  result = swift_allocObject();
  *(result + 36) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  return result;
}

void *sub_2478BDC98()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32);
  if (v2 <= 0xFD)
  {
    v3 = *(v1 + 16);
    sub_2478BDBB8(v3, *(v1 + 24), v2 & 1);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((v1 + 36));
  return v3;
}

BOOL sub_2478BDD7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32) == 254;
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

BOOL sub_2478BDE20()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32) < 0xFEu;
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

void sub_2478BDE68()
{
  v1 = v0;
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = v0;
  swift_getKeyPath();
  sub_2478D882C();
  v7 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v7 + 36));
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v10 = *(v7 + 32);
  *(v7 + 32) = -2;
  sub_2478BDC0C(v8, v9, v10);
  os_unfair_lock_unlock((v7 + 36));
  aBlock[0] = v1;
  swift_getKeyPath();
  sub_2478D883C();
  v11 = sub_2478C3DA4();
  (*(v3 + 16))(v6, v11, v2);
  v12 = v1;
  v13 = sub_2478D891C();
  v14 = sub_2478D8B9C();

  v15 = &unk_27EE55000;
  v16 = &unk_27EE55000;
  if (os_log_type_enabled(v13, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315394;
    sub_2478D889C();
    sub_2478C25B4(&qword_27EE54DE0, MEMORY[0x277CC9260]);
    v19 = sub_2478D8E1C();
    v21 = sub_2478C0DB0(v19, v20, aBlock);
    v15 = &unk_27EE55000;

    *(v17 + 4) = v21;
    v16 = &unk_27EE55000;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2478C0DB0(*&v12[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID], *&v12[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID + 8], aBlock);
    _os_log_impl(&dword_2478B3000, v13, v14, "#GetFPStringForOpen Get FP string for %s, target %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1ADC70](v18, -1, -1);
    MEMORY[0x24C1ADC70](v17, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v22 = &v12[v15[450]];
  v23 = sub_2478D886C();
  v24 = &v12[v16[451]];
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = sub_2478D89BC();
  v28 = swift_allocObject();
  *(v28 + 16) = v12;
  aBlock[4] = sub_2478C25AC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2478BE60C;
  aBlock[3] = &block_descriptor_56;
  v29 = _Block_copy(aBlock);
  v30 = v12;

  FPExtendBookmarkForDocumentURL();
  _Block_release(v29);
}

id sub_2478BE20C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExecuting];
  *a2 = result;
  return result;
}

void sub_2478BE240(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2478D893C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2478C3DA4();
  (*(v7 + 16))(v10, v11, v6);
  v12 = a2;
  v13 = a1;
  v14 = sub_2478D891C();
  v15 = sub_2478D8BBC();

  if (os_log_type_enabled(v14, v15))
  {
    v35 = a3;
    v36 = v12;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v17 = a1;
    *(v16 + 12) = 2112;
    if (a2)
    {
      type metadata accessor for CFError(0);
      v34 = a1;
      sub_2478C25B4(&qword_27EE54D00, type metadata accessor for CFError);
      v33 = swift_allocError();
      v18 = v6;
      v19 = a2;
      v20 = v36;
      *v21 = v36;
      v22 = v13;
      v23 = v20;
      a2 = v19;
      v6 = v18;
      a1 = v34;
      v24 = _swift_stdlib_bridgeErrorToNSError();
    }

    else
    {
      v25 = v13;
      v24 = 0;
    }

    *(v16 + 14) = v24;
    v17[1] = v24;
    _os_log_impl(&dword_2478B3000, v14, v15, "#GetFPStringForOpen FP string get complete %@ %@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C30, &qword_2478DAF10);
    swift_arrayDestroy();
    MEMORY[0x24C1ADC70](v17, -1, -1);
    MEMORY[0x24C1ADC70](v16, -1, -1);
    v12 = v36;
  }

  (*(v7 + 8))(v10, v6);
  if (a2)
  {
    type metadata accessor for CFError(0);
    sub_2478C25B4(&qword_27EE54D00, type metadata accessor for CFError);
    v26 = swift_allocError();
    *v27 = v12;
    v28 = v26;
    a1 = 0;
  }

  else
  {
    if (a1)
    {
      v26 = sub_2478D89EC();
      a1 = v30;

      v29 = 0;
      goto LABEL_11;
    }

    type metadata accessor for CSUIError(0);
    v37 = 7;
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478C25B4(&qword_27EE54EC0, type metadata accessor for CSUIError);
    sub_2478D87FC();
    v26 = v38;
    v32 = v38;
  }

  v29 = 1;
LABEL_11:
  v31 = v12;
  sub_2478BE900(v26, a1, v29);
  sub_2478BDC24(v26, a1, v29);
  sub_2478BDC24(v26, a1, v29);
}

void sub_2478BE60C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2478BE698()
{
  v1 = v0;
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2478C3DA4();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2478D891C();
  v9 = sub_2478D8BBC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2478B3000, v8, v9, "#GetFPStringForOpen noting cancellation", v10, 2u);
    MEMORY[0x24C1ADC70](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = v1;
  swift_getKeyPath();
  sub_2478D882C();
  v14 = v1;
  swift_getKeyPath();
  sub_2478D882C();
  v11 = *(v1 + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  os_unfair_lock_lock((v11 + 36));
  sub_2478BDC0C(*(v11 + 16), *(v11 + 24), *(v11 + 32));
  *(v11 + 16) = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA5B8] code:89 userInfo:0];
  *(v11 + 24) = 0;
  *(v11 + 32) = 1;
  os_unfair_lock_unlock((v11 + 36));
  v14 = v1;
  swift_getKeyPath();
  sub_2478D883C();
  v14 = v1;
  swift_getKeyPath();
  return sub_2478D883C();
}

id sub_2478BE8CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

uint64_t sub_2478BE900(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v8 = sub_2478D893C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2478C3DA4();
  (*(v9 + 16))(v12, v13, v8);
  v14 = v5 & 1;
  sub_2478BDBB8(a1, a2, v5 & 1);
  v15 = sub_2478D891C();
  v16 = sub_2478D8B8C();
  sub_2478BDC24(a1, a2, v5 & 1);
  v17 = os_log_type_enabled(v15, v16);
  v33 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v32 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v5;
    v5 = v20;
    v37 = v20;
    *v19 = 136315138;
    v34 = a1;
    v35 = a2;
    v36 = v14;
    sub_2478BDBB8(a1, a2, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54CA8, &qword_2478DB1A8);
    v21 = sub_2478D8A1C();
    v23 = sub_2478C0DB0(v21, v22, &v37);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2478B3000, v15, v16, "#GetFPStringForOpen finishing with result %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    v24 = v5;
    LOBYTE(v5) = v31;
    MEMORY[0x24C1ADC70](v24, -1, -1);
    v25 = v19;
    v4 = v32;
    MEMORY[0x24C1ADC70](v25, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  if ([v4 isCancelled])
  {
    return sub_2478BE698();
  }

  v34 = v4;
  swift_getKeyPath();
  sub_2478D882C();
  v34 = v4;
  swift_getKeyPath();
  v27 = sub_2478D882C();
  v28 = *&v4[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState];
  MEMORY[0x28223BE20](v27);
  v29 = v33;
  *&v30[-32] = a1;
  *&v30[-24] = v29;
  v30[-16] = v5 & 1;
  os_unfair_lock_lock(v28 + 9);
  sub_2478C225C(&v28[4]);
  os_unfair_lock_unlock(v28 + 9);
  v34 = v4;
  swift_getKeyPath();
  sub_2478D883C();
  v34 = v4;
  swift_getKeyPath();
  return sub_2478D883C();
}

void sub_2478BEC24()
{
  v1 = v0;
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2478C3DA4();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2478D891C();
  v9 = sub_2478D8B8C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2478B3000, v8, v9, "#GetFPStringForOpen begin", v10, 2u);
    MEMORY[0x24C1ADC70](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  if ([v1 isCancelled])
  {
    sub_2478BE698();
  }

  else
  {
    sub_2478BDE68();
  }
}

id sub_2478BEDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C00, &unk_2478DAF00);
  v9 = swift_allocObject();
  *(v9 + 36) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = -1;
  *&v7[v8] = v9;
  v10 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_url;
  v11 = sub_2478D889C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v7[v10], a1, v11);
  v13 = &v7[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID];
  *v13 = a2;
  *(v13 + 1) = a3;
  v16.receiver = v7;
  v16.super_class = v3;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v12 + 8))(a1, v11);
  return v14;
}

id sub_2478BEF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C00, &unk_2478DAF00);
  v8 = swift_allocObject();
  *(v8 + 36) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = -1;
  *&v3[v7] = v8;
  v9 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_url;
  v10 = sub_2478D889C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a1, v10);
  v12 = &v3[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID];
  *v12 = a2;
  *(v12 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for GetFileProviderStringOperation();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v11 + 8))(a1, v10);
  return v13;
}

id sub_2478BF048()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2478BF0DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetFileProviderStringOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2478BF1A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion);
  v2 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion + 8);

  return v1;
}

id sub_2478BF1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion];
  *v8 = a2;
  *(v8 + 1) = a3;
  *&v7[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue] = a1;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2478BF260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion];
  *v8 = a2;
  *(v8 + 1) = a3;
  *&v3[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue] = a1;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_2478BF2D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_2478BF450()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2478BF4D8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v10);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v19);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    (*(v8 + 8))(v12, a3);
    result = a1(0);
  }

  else
  {
    v21 = (*(v15 + 32))(v18, v12, v14);
    MEMORY[0x28223BE20](v21);
    v24[-4] = v14;
    v24[-3] = a4;
    v24[-2] = a1;
    v24[-1] = a2;
    sub_2478BF754(v18, sub_2478C1934, &v24[-6], v14, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v22);
    result = (*(v15 + 8))(v18, v14);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2478BF754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

id sub_2478BF830(uint64_t a1, void *a2, int a3, uint64_t *a4, id a5, uint64_t a6, void *a7)
{
  v104 = a7;
  v102 = a4;
  LODWORD(v103) = a3;
  v101 = sub_2478D893C();
  v11 = *(v101 - 8);
  v12 = *(v11 + 64);
  (MEMORY[0x28223BE20])();
  v99 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2478D889C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = (MEMORY[0x28223BE20])();
  v95 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  v100 = v11;
  v98 = a2;
  v105 = a5;
  v107 = a6;
  v97 = a1;
  if (!a2)
  {
    v25 = &v92 - v18;
    v26 = 0;
    v106 = 0;
    v27 = 0;
    goto LABEL_17;
  }

  v20 = a2;
  v21 = [v20 bundleIdentifier];
  if (v21)
  {
    v22 = a1;
    v23 = v21;
    v96 = sub_2478D89EC();
    v106 = v24;

    a1 = v22;
  }

  else
  {

    v96 = 0;
    v106 = 0;
  }

  if (![v20 supportsOpenInPlace])
  {
    v25 = v19;
LABEL_15:
    v27 = 0;
LABEL_16:
    v26 = v96;
    goto LABEL_17;
  }

  v28 = [v20 bundleIdentifier];
  if (!v28)
  {
    v25 = v19;
    sub_2478BC950(&unk_285981730, &unk_27EE54CF0, &qword_2478DB1D8);
    goto LABEL_15;
  }

  v29 = v28;
  v30 = sub_2478D89EC();
  v32 = v31;

  v33 = [v20 SDKVersion];
  if (!v33)
  {
    v25 = v19;

    sub_2478BC950(&unk_285981730, &unk_27EE54CF0, &qword_2478DB1D8);
    v27 = 0;
    a1 = v97;
    a5 = v105;
    goto LABEL_16;
  }

  v34 = v33;
  MEMORY[0x24C1AD6A0](&aBlock);

  v35 = [v20 platform];
  v36 = v35;
  if (v30 == 0xD000000000000019 && v32 == 0x80000002478D9DE0)
  {
    a1 = v97;
    v37 = v96;
    if (v35 != 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v83 = sub_2478D8E5C();
    a1 = v97;
    v37 = v96;
    if ((v83 & 1) == 0 || v36 != 2)
    {
      goto LABEL_28;
    }
  }

  _LSVersionNumberMakeWithDYLDVersion();
  v113 = aBlock;
  v114 = v110;
  if (_LSVersionNumberCompare() == -1)
  {
    v25 = v19;
    sub_2478BC950(&unk_285981730, &unk_27EE54CF0, &qword_2478DB1D8);

    goto LABEL_32;
  }

LABEL_28:
  sub_2478BC950(&unk_285981730, &unk_27EE54CF0, &qword_2478DB1D8);

  if (!v106)
  {
    v25 = v19;
    v106 = 0;
LABEL_32:
    v27 = 0;
    goto LABEL_33;
  }

  v96 = *(v15 + 16);
  v84 = v106;
  (v96)(v19, a1, v14);
  FileProviderStringOperation = type metadata accessor for GetFileProviderStringOperation();
  v86 = objc_allocWithZone(FileProviderStringOperation);
  v87 = OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C00, &unk_2478DAF00);
  v88 = swift_allocObject();
  *(v88 + 36) = 0;
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  *(v88 + 32) = -1;
  *&v86[v87] = v88;
  (v96)(&v86[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_url], v19, v14);
  v89 = &v86[OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_targetBundleID];
  *v89 = v37;
  v89[1] = v84;
  v108.receiver = v86;
  v108.super_class = FileProviderStringOperation;
  a1 = v97;
  v106 = v84;

  v90 = objc_msgSendSuper2(&v108, sel_init);
  v25 = v19;
  (*(v15 + 8))(v19, v14);
  v27 = v90;
  v91 = v90;
LABEL_33:
  a5 = v105;
  v26 = v37;
LABEL_17:
  v38 = *(v15 + 16);
  v39 = v25;
  v94 = v15 + 16;
  v93 = v38;
  v38(v25, a1, v14);
  v40 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v41 = swift_allocObject();
  v42 = v107;
  *(v41 + 2) = a5;
  *(v41 + 3) = v42;
  *(v41 + 4) = v104;
  *(v41 + 5) = v27;
  v96 = v15;
  v43 = *(v15 + 32);
  v107 = v14;
  v43(&v41[v40], v39, v14);
  v44 = &v41[(v40 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL];
  v45 = v102;
  v46 = *(v102 + 1);
  *v44 = *v102;
  *(v44 + 1) = v46;
  v44[32] = *(v45 + 32);
  v47 = &v41[(v40 + v16 + 43) & 0xFFFFFFFFFFFFFFF8];
  v48 = v106;
  *v47 = v26;
  *(v47 + 1) = v48;
  v47[16] = v103 & 1;
  v111 = sub_2478C1A50;
  v112 = v41;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v110 = sub_2478BF2D4;
  *(&v110 + 1) = &block_descriptor_0;
  v49 = _Block_copy(&aBlock);
  v50 = objc_opt_self();
  v51 = v27;
  v52 = v105;

  v53 = [v50 blockOperationWithBlock_];
  _Block_release(v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54C20, &qword_2478DB850);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_2478DAEE0;
  *(v54 + 32) = v53;
  *&v113 = v54;
  v55 = v53;
  v56 = v55;
  if (v27)
  {
    v104 = v55;
    v105 = v50;
    v106 = &v110;
    v57 = sub_2478C3DA4();
    v58 = v100;
    v59 = v99;
    v60 = v101;
    (*(v100 + 16))(v99, v57, v101);
    v61 = v95;
    v93(v95, v97, v107);
    v62 = v98;
    v63 = sub_2478D891C();
    v64 = sub_2478D8B9C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v103 = v51;
      v66 = v65;
      v67 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&aBlock = v102;
      *v66 = 136315394;
      sub_2478C25B4(&qword_27EE54DE0, MEMORY[0x277CC9260]);
      v68 = v107;
      v69 = sub_2478D8E1C();
      v70 = v52;
      v72 = v71;
      (*(v96 + 8))(v61, v68);
      v73 = sub_2478C0DB0(v69, v72, &aBlock);
      v52 = v70;

      *(v66 + 4) = v73;
      *(v66 + 12) = 2112;
      *(v66 + 14) = v62;
      *v67 = v98;
      v74 = v62;
      _os_log_impl(&dword_2478B3000, v63, v64, "have FP string operation for open of %s with %@", v66, 0x16u);
      sub_2478BC950(v67, &qword_27EE54C30, &qword_2478DAF10);
      MEMORY[0x24C1ADC70](v67, -1, -1);
      v75 = v102;
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      MEMORY[0x24C1ADC70](v75, -1, -1);
      v76 = v66;
      v51 = v103;
      MEMORY[0x24C1ADC70](v76, -1, -1);

      (*(v100 + 8))(v99, v101);
    }

    else
    {

      (*(v96 + 8))(v61, v107);
      (*(v58 + 8))(v59, v60);
    }

    v77 = v51;
    v56 = v104;
    [v104 addDependency_];
    sub_2478C1CD0(0, 0, v77);

    v54 = v113;
    v50 = v105;
  }

  v78 = swift_allocObject();
  *(v78 + 16) = v52;
  *(v78 + 24) = v54;
  v111 = sub_2478C1B28;
  v112 = v78;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v110 = sub_2478BF2D4;
  *(&v110 + 1) = &block_descriptor_7;
  v79 = _Block_copy(&aBlock);
  v80 = v52;
  v81 = [v50 blockOperationWithBlock_];

  _Block_release(v79);

  return v81;
}

void sub_2478C0338(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8, char a9)
{
  v85 = a8;
  v77 = a7;
  v86 = a5;
  v92 = *MEMORY[0x277D85DE8];
  v13 = *a6;
  v76 = a6[1];
  v83 = a6;
  v75 = v13;
  v14 = sub_2478D889C();
  v82 = *(v14 - 8);
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2478D893C();
  v87 = *(v84 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20]();
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OpenResourceOperationCompletionAdapter();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion];
  *v23 = a2;
  *(v23 + 1) = a3;
  *&v22[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue] = a1;
  v88.receiver = v22;
  v88.super_class = v21;

  v24 = a1;
  v81 = objc_msgSendSuper2(&v88, sel_init);
  if (a4)
  {
    v25 = (*((*MEMORY[0x277D85000] & *a4) + 0x68))();
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v29 = 255;
  }

  v30 = sub_2478C3DA4();
  v31 = v20;
  v32 = v84;
  (*(v87 + 16))(v20, v30, v84);
  v33 = v82;
  (*(v82 + 16))(v17, v86, v14);
  sub_2478C22D4(v25, v27, v29);
  v34 = sub_2478D891C();
  v35 = sub_2478D8B8C();
  sub_2478C22EC(v25, v27, v29);
  v74 = v35;
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v73 = v31;
    v71 = v34;
    v37 = v36;
    v72 = swift_slowAlloc();
    v89 = v72;
    *v37 = 136315394;
    sub_2478C25B4(&qword_27EE54DE0, MEMORY[0x277CC9260]);
    v38 = sub_2478D8E1C();
    v40 = v39;
    (*(v33 + 8))(v17, v14);
    v41 = sub_2478C0DB0(v38, v40, &v89);
    v42 = v29;

    *(v37 + 4) = v41;
    *(v37 + 12) = 2082;
    *&v90 = v25;
    *(&v90 + 1) = v27;
    LOBYTE(v91) = v29;
    sub_2478C22D4(v25, v27, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54CE0, &unk_2478DB1C8);
    v43 = sub_2478D8A1C();
    v45 = sub_2478C0DB0(v43, v44, &v89);

    *(v37 + 14) = v45;
    v46 = v71;
    _os_log_impl(&dword_2478B3000, v71, v74, "initiating open of %s fpString result %{public}s", v37, 0x16u);
    v47 = v72;
    swift_arrayDestroy();
    MEMORY[0x24C1ADC70](v47, -1, -1);
    MEMORY[0x24C1ADC70](v37, -1, -1);

    (*(v87 + 8))(v73, v84);
  }

  else
  {

    (*(v33 + 8))(v17, v14);
    (*(v87 + 8))(v31, v32);
    v42 = v29;
  }

  if (v42 == 0xFF || (v42 & 1) != 0)
  {
    sub_2478C2304(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54CC0, &qword_2478DB1B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2478DAEF0;
    v49 = *MEMORY[0x277CC1E28];
    *(inited + 32) = sub_2478D89EC();
    *(inited + 40) = v50;
    v51 = sub_2478BCD34(0, &qword_27EE54CC8, 0x277CCABB0);
    sub_2478BDBB8(v25, v27, 0);
    v52 = sub_2478D8BDC();
    *(inited + 72) = v51;
    *(inited + 48) = v52;
    v53 = *MEMORY[0x277CC1DF8];
    *(inited + 80) = sub_2478D89EC();
    *(inited + 88) = v54;
    v55 = sub_2478D89BC();
    sub_2478C22EC(v25, v27, v42);
    *(inited + 120) = sub_2478BCD34(0, &unk_27EE54CD0, 0x277CCACA8);
    *(inited + 96) = v55;
    sub_2478C2304(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FA0, &qword_2478DB1C0);
    swift_arrayDestroy();
  }

  v56 = *(v83 + 32);
  v80 = v25;
  v79 = v27;
  v78 = v42;
  if (v56)
  {
    v57 = [objc_opt_self() defaultWorkspace];
    if (v57)
    {
      v58 = v57;
      v59 = sub_2478D886C();
      if (v85)
      {
        v60 = sub_2478D89BC();
      }

      else
      {
        v60 = 0;
      }

      sub_2478C2304(MEMORY[0x277D84F90]);
      v63 = sub_2478D894C();

      v64 = sub_2478D894C();
      v65 = v81;
      v66 = [v58 operationToOpenResource:v59 usingApplication:v60 uniqueDocumentIdentifier:0 isContentManaged:a9 & 1 sourceAuditToken:0 userInfo:v63 options:v64 delegate:v81];

      if (v66)
      {
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v90 = v75;
  v91 = v76;
  v61 = [objc_opt_self() defaultWorkspace];
  if (!v61)
  {
    goto LABEL_25;
  }

  v58 = v61;
  v59 = sub_2478D886C();
  if (v85)
  {
    v62 = sub_2478D89BC();
    goto LABEL_22;
  }

LABEL_21:
  v62 = 0;
LABEL_22:
  sub_2478C2304(MEMORY[0x277D84F90]);
  v67 = sub_2478D894C();

  v68 = sub_2478D894C();
  v65 = v81;
  v66 = [v58 operationToOpenResource:v59 usingApplication:v62 uniqueDocumentIdentifier:0 isContentManaged:a9 & 1 sourceAuditToken:&v90 userInfo:v67 options:v68 delegate:v81];

  if (v66)
  {
LABEL_23:

    v69 = v80;
    [v66 start];
    sub_2478C22EC(v69, v79, v78);

    v70 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_26:
  __break(1u);
}

id sub_2478C0C5C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v12[4] = sub_2478C1DFC;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2478BF2D4;
  v12[3] = &block_descriptor_13;
  v7 = _Block_copy(v12);
  v8 = objc_opt_self();
  v9 = a1;

  v10 = [v8 blockOperationWithBlock_];
  _Block_release(v7);

  return v10;
}

uint64_t type metadata accessor for GetFileProviderStringOperation()
{
  result = qword_27EE55E20;
  if (!qword_27EE55E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2478C0DB0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2478C0E7C(v11, 0, 0, 1, a1, a2);
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
    sub_2478BC7D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2478C0E7C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2478C0F88(a5, a6);
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
    result = sub_2478D8D2C();
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

uint64_t sub_2478C0F88(uint64_t a1, unint64_t a2)
{
  v4 = sub_2478C0FD4(a1, a2);
  sub_2478C1104(&unk_2859816E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2478C0FD4(uint64_t a1, unint64_t a2)
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

  v6 = sub_2478C11F0(v5, 0);
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

  result = sub_2478D8D2C();
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
        v10 = sub_2478D8A5C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2478C11F0(v10, 0);
        result = sub_2478D8CDC();
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

uint64_t sub_2478C1104(uint64_t result)
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

  result = sub_2478C1264(result, v12, 1, v3);
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

void *sub_2478C11F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54CB0, &qword_2478DB1B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2478C1264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54CB0, &qword_2478DB1B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_2478C1358(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2478D8DAC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2478D8D1C();
  *v1 = result;
  return result;
}

uint64_t sub_2478C13F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_2478D8ECC();
  sub_2478D8A3C();
  v7 = sub_2478D8EDC();

  return a3(a1, a2, v7);
}

void sub_2478C147C()
{
  v1 = v0;
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2478C3DA4();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2478D891C();
  v9 = sub_2478D8B9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2478B3000, v8, v9, "open resource operation completed", v10, 2u);
    MEMORY[0x24C1ADC70](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *&v1[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  aBlock[4] = sub_2478C2570;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2478BF2D4;
  aBlock[3] = &block_descriptor_50;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  [v11 addOperationWithBlock_];
  _Block_release(v13);
}

void sub_2478C1690(void *a1)
{
  v2 = v1;
  v4 = sub_2478D893C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2478C3DA4();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2478D891C();
  v12 = sub_2478D8B9C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    if (a1)
    {
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 4) = v16;
    *v14 = v17;
    _os_log_impl(&dword_2478B3000, v11, v12, "open resource operation failed: %@", v13, 0xCu);
    sub_2478BC950(v14, &qword_27EE54C30, &qword_2478DAF10);
    MEMORY[0x24C1ADC70](v14, -1, -1);
    MEMORY[0x24C1ADC70](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v18 = *&v2[OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completionQueue];
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = a1;
  aBlock[4] = sub_2478C2500;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2478BF2D4;
  aBlock[3] = &block_descriptor_44;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  v22 = v2;

  [v18 addOperationWithBlock_];
  _Block_release(v20);
}

uint64_t sub_2478C1934()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_2478C1964()
{
  v1 = sub_2478D889C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 43) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

void sub_2478C1A50()
{
  v1 = *(sub_2478D889C() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_2478C0338(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, (v0 + ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL)), *(v0 + ((v3 + 43) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 43) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 43) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2478C1B28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  v3 = sub_2478D8AAC();
  [v1 addOperations:v3 waitUntilFinished:0];
}

char *sub_2478C1BA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_2478BCD34(0, &qword_27EE54AF0, 0x277CCABD0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_2478D8DAC();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_2478D8DAC();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_2478C1CD0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2478D8DAC();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_2478D8DAC();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_2478C1358(result);

  return sub_2478C1BA4(v6, v5, 1, v3);
}

uint64_t sub_2478C1DBC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2478C1DFC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v7[4] = v1;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2478BF2D4;
  v7[3] = &block_descriptor_38;
  v4 = _Block_copy(v7);
  v5 = objc_opt_self();

  v6 = [v5 blockOperationWithBlock_];
  _Block_release(v4);

  [v2 addOperation_];
}

uint64_t sub_2478C1EEC()
{
  result = sub_2478D889C();
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

uint64_t get_enum_tag_for_layout_string_14CoreServicesUI30GetFileProviderStringOperationC12MutableStateV0hJ0O(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2478C1FC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = (v4 ^ 0xFF) - 2;
  if (v3 <= 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_2478C2020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_2478C2078(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2478C20C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_2478C210C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2478C217C(uint64_t a1, int a2)
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

uint64_t sub_2478C219C(uint64_t result, int a2, int a3)
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

uint64_t sub_2478C21E8(uint64_t a1, int a2)
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

uint64_t sub_2478C2208(uint64_t result, int a2, int a3)
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

void sub_2478C225C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_2478BDBB8(v3, v4, v5);
  sub_2478BDC0C(v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

id sub_2478C22D4(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2478BDBB8(result, a2, a3 & 1);
  }

  return result;
}

void sub_2478C22EC(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2478BDC24(a1, a2, a3 & 1);
  }
}

unint64_t sub_2478C2304(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE55130, &unk_2478DAE80);
    v3 = sub_2478D8DEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2478C2428(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2478C13F8(v13, v14, sub_2478BC224);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2478BC84C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2478C2428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FA0, &qword_2478DB1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2478C2500()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion;
  v3 = *(v2 + 8);
  return (*v2)(v1);
}

uint64_t sub_2478C2538()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2478C2570()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter_completion;
  v2 = *(v1 + 8);
  return (*v1)(0);
}

uint64_t sub_2478C25B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2478C261C(uint64_t a1, int a2)
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

uint64_t sub_2478C263C(uint64_t result, int a2, int a3)
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

uint64_t sub_2478C2970@<X0>(uint64_t a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = sub_2478BBFBC;
  *(result + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = sub_2478C38E0;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

BOOL sub_2478C2A2C(void *a1, uint64_t *a2)
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

void *sub_2478C2A5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2478C2A88@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2478C2B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2478C3CEC(a1);

  *a2 = v3;
  return result;
}

void *sub_2478C2BB4()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *sub_2478C2BE4()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_2478C2C14()
{
  v1 = [*v0 URL];
  sub_2478D887C();
}

uint64_t sub_2478C2C74()
{
  v1 = [*v0 localizedName];
  v2 = sub_2478D89EC();

  return v2;
}

uint64_t sub_2478C2CE4(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2478D89EC();

  return v4;
}

double sub_2478C2D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54DD0, &qword_2478DB358);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_2478DB330;
  *(v0 + 32) = sel_localizedName;
  *(v0 + 40) = sel_bundleIdentifier;
  *(v0 + 48) = sel_URL;
  *(v0 + 56) = sel_bundleVersion;
  *(v0 + 64) = sel_localizedShortName;
  return result;
}

id sub_2478C2DC0(void *a1)
{
  v2 = sub_2478D889C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() imageDescriptorNamed_];
  v8 = [a1 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];
  }

  else
  {
    v11 = [a1 URL];
    sub_2478D887C();

    v12 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v13 = sub_2478D886C();
    v10 = [v12 initWithURL_];

    (*(v3 + 8))(v6, v2);
  }

  v14 = [v10 imageForDescriptor_];
  v15 = v14;
  if (v14)
  {
    if ([v14 placeholder])
    {
      v16 = [v10 prepareImageForDescriptor_];
      if (v16)
      {
        v17 = v16;

        v15 = v17;
      }
    }

    v15 = v15;
  }

  v18 = [v15 CGImage];

  return v18;
}

uint64_t sub_2478C3004@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id sub_2478C3014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo;
  v3 = *(v1 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  v5 = v4;
  v6 = *(v2 + 24);
  *(a1 + 24) = v6;
  v10 = v6;
  v7 = v3;
  v8 = v5;

  return v10;
}

id sub_2478C3084(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 4) = *(a1 + 32);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2478C30E4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 4) = *(a1 + 32);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_2478C3268()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo) URL];
  sub_2478D887C();
}

id sub_2478C32F4(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_2478D89EC();

    v8 = sub_2478D89BC();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

uint64_t sub_2478C33A4(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2478D89EC();

  return v4;
}

uint64_t sub_2478C34A4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo) localizedName];
  v2 = sub_2478D89EC();

  return v2;
}

id sub_2478C3568()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo + 24);
  if (v1)
  {
    return [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2478C3624()
{
  v1 = sub_2478D889C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 60;
  v15[1] = 0xE100000000000000;
  swift_getObjectType();
  v6 = sub_2478D8EFC();
  MEMORY[0x24C1AD190](v6);

  MEMORY[0x24C1AD190](8250, 0xE200000000000000);
  v7 = *(v0 + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo);
  v8 = [v7 localizedName];
  v9 = sub_2478D89EC();
  v11 = v10;

  MEMORY[0x24C1AD190](v9, v11);

  MEMORY[0x24C1AD190](2113568, 0xE300000000000000);
  v12 = [v7 URL];
  sub_2478D887C();

  sub_2478C3974();
  v13 = sub_2478D8E1C();
  MEMORY[0x24C1AD190](v13);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C1AD190](62, 0xE100000000000000);
  return v15[0];
}

uint64_t sub_2478C38A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2478C38E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v5 = *result;
  v6 = *(result + 8);
  if (*(result + 9) == 1)
  {
    *(result + 9) = 0;
  }

  else if (result[1])
  {
    v6 = 1;
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v11 = v5;
    v9 = a2;
    v10 = result;
    result = v7(&v12, &v11);
    a2 = v9;
    v5 = v12;
    v6 = v13;
    *v10 = v12;
    *(v10 + 8) = v6;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

unint64_t sub_2478C3974()
{
  result = qword_27EE54DE0;
  if (!qword_27EE54DE0)
  {
    sub_2478D889C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54DE0);
  }

  return result;
}

unint64_t sub_2478C39D0()
{
  result = qword_27EE55160;
  if (!qword_27EE55160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE55160);
  }

  return result;
}

unint64_t sub_2478C3A28()
{
  result = qword_27EE54DF0;
  if (!qword_27EE54DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54DF0);
  }

  return result;
}

unint64_t sub_2478C3A80()
{
  result = qword_27EE54DF8;
  if (!qword_27EE54DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54DF8);
  }

  return result;
}

unint64_t sub_2478C3AD8()
{
  result = qword_27EE54E00;
  if (!qword_27EE54E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54E00);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2478C3B40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2478C3B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2478C3C18()
{
  result = qword_27EE54E70;
  if (!qword_27EE54E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE54E78, qword_2478DB578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE54E70);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2478C3CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2478C3D28()
{
  v0 = sub_2478D893C();
  __swift_allocate_value_buffer(v0, qword_27EE57190);
  __swift_project_value_buffer(v0, qword_27EE57190);
  return sub_2478D892C();
}

uint64_t sub_2478C3DA4()
{
  if (qword_27EE56540 != -1)
  {
    swift_once();
  }

  v0 = sub_2478D893C();

  return __swift_project_value_buffer(v0, qword_27EE57190);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2478C3E40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE56540 != -1)
  {
    swift_once();
  }

  v2 = sub_2478D893C();
  v3 = __swift_project_value_buffer(v2, qword_27EE57190);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_2478C3F4C()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_2478C3FA8()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_2478C3FE8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2478C4034;
}

uint64_t sub_2478C4034(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2478C4084@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_2478C40C4()
{
  v2[0] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54EA0, &qword_2478DB610);
  v0 = swift_allocObject();
  *(v0 + 32) = 0;
  sub_2478C413C(v2, v0 + 16);
  sub_2478C4174(v2);
  return v0;
}

id sub_2478C41A4(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBindable_];

  return v2;
}

char *sub_2478C41EC(void *a1)
{
  v3 = OBJC_IVAR___CSUIOpenWithFlow_mutableState;
  v14[0] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54EA0, &qword_2478DB610);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  sub_2478C413C(v14, v4 + 16);
  sub_2478C4174(v14);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR___CSUIOpenWithFlow_bindable] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 defaultConfigurationForContextualApplicationSelection];
  v8 = [objc_allocWithZone(CSUIOpenWithMenuConstructor) initWithConfiguration_];

  *&v1[OBJC_IVAR___CSUIOpenWithFlow_constructor] = v8;
  v13.receiver = v1;
  v13.super_class = CSUIOpenWithFlow;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = *&v9[OBJC_IVAR___CSUIOpenWithFlow_constructor];
  v11 = v9;
  [v10 setDelegate_];

  return v11;
}

uint64_t sub_2478C43C8()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  os_unfair_lock_lock(v1 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 8);
  return Strong;
}

uint64_t sub_2478C448C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  os_unfair_lock_lock(v1 + 8);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v1 + 8);

  return swift_unknownObjectRelease();
}

void sub_2478C44E8()
{
  v2 = v0;
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_bindable);
  if ((sub_2478BB358() & 1) == 0)
  {
    type metadata accessor for CSUIError(0);
    sub_2478BC694(MEMORY[0x277D84F90]);
    sub_2478C6144(&qword_27EE54EC0, type metadata accessor for CSUIError);
    sub_2478D87FC();
LABEL_7:
    swift_willThrow();
    goto LABEL_8;
  }

  v4 = *(v2 + OBJC_IVAR___CSUIOpenWithFlow_constructor);
  v12[0] = 0;
  v5 = [v4 prepareMenuForBindable:v3 error:v12];
  v6 = v12[0];
  if (!v5)
  {
    v10 = v12[0];
    sub_2478D881C();

    goto LABEL_7;
  }

  v7 = v5;
  v8 = *(v2 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  MEMORY[0x28223BE20](v5);
  v9 = v6;
  os_unfair_lock_lock((v8 + 32));
  sub_2478C5A10((v8 + 16));
  if (!v1)
  {
    os_unfair_lock_unlock((v8 + 32));

LABEL_8:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  os_unfair_lock_unlock((v8 + 32));
  __break(1u);
}

BOOL sub_2478C4784()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16) != 0;
  os_unfair_lock_unlock((v1 + 32));
  return v2;
}

id sub_2478C4848()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  os_unfair_lock_lock((v1 + 32));
  v2 = [*(v1 + 16) representativeBundle];
  os_unfair_lock_unlock((v1 + 32));
  return v2;
}

void sub_2478C48A0()
{
  v1 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2478D893C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([v1 isPrepared] & 1) == 0)
  {
    v7 = sub_2478C3DA4();
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_2478D891C();
    v9 = sub_2478D8BAC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2478B3000, v8, v9, "#CSUIOpenWithFlow Open-with flow building menu without being prepared!", v10, 2u);
      MEMORY[0x24C1ADC70](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v22[0] = 0;
    v11 = [v1 prepareAndReturnError_];
    v12 = v22[0];
    if (!v11)
    {
      goto LABEL_9;
    }

    v13 = v22[0];
  }

  v14 = *&v1[OBJC_IVAR___CSUIOpenWithFlow_constructor];
  v15 = *&v1[OBJC_IVAR___CSUIOpenWithFlow_mutableState];
  os_unfair_lock_lock((v15 + 32));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v16;
    os_unfair_lock_unlock((v15 + 32));
    v22[0] = 0;
    v18 = [v14 buildUIMenuForPreparedMenu:v17 withError:v22];

    v12 = v22[0];
    if (v18)
    {
      v19 = v22[0];
LABEL_10:
      v21 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_9:
    v20 = v12;
    sub_2478D881C();

    swift_willThrow();
    goto LABEL_10;
  }

  __break(1u);
}

void __swiftcall CSUIOpenWithFlow.init()(CSUIOpenWithFlow *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_2478C4D10()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setMaxConcurrentOperationCount_];
  v1 = sub_2478D89BC();
  [v0 setName_];

  qword_27EE571A8 = v0;
}

uint64_t *sub_2478C4D98()
{
  if (qword_27EE56550 != -1)
  {
    swift_once();
  }

  return &qword_27EE571A8;
}

id sub_2478C4DE8()
{
  if (qword_27EE56550 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE571A8;

  return v0;
}

void sub_2478C4E4C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2478D893C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2478C3DA4();
  (*(v7 + 16))(v10, v11, v6);
  v12 = a1;
  v13 = sub_2478D891C();
  v14 = sub_2478D8BBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = a2;
    v18 = v17;
    v31 = a1;
    v32 = v17;
    *v16 = 136315138;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54F90, qword_2478DB7D0);
    v20 = sub_2478D8A1C();
    v22 = sub_2478C0DB0(v20, v21, &v32);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_2478B3000, v13, v14, "#CSUIOpenWithFlow open complete, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v23 = v18;
    a2 = v29;
    MEMORY[0x24C1ADC70](v23, -1, -1);
    v24 = v16;
    a3 = v30;
    MEMORY[0x24C1ADC70](v24, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v25 = [a2 delegate];
  if (v25)
  {
    v26 = v25;
    if (a1)
    {
      if ([v25 respondsToSelector_])
      {
        v27 = a1;
        swift_unknownObjectRetain();
        v28 = sub_2478D880C();
        [v26 openWithFlow:a2 didFailToOpenUsingBoundBundle:a3 withError:v28];
        swift_unknownObjectRelease_n();

        return;
      }
    }

    else if ([v25 respondsToSelector_])
    {
      [v26 openWithFlow:a2 didOpenUsingBoundBundle:a3];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CSUIOpenWithFlow.openWithMenuDidSelectAppStoreItem(from:)(CSUIOpenWithMenuConstructor *from)
{
  if (qword_27EE56550 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE571A8;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_2478C5FD4;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2478BF2D4;
  v6[3] = &block_descriptor_1;
  v4 = _Block_copy(v6);
  v5 = v1;

  [v2 addOperationWithBlock_];
  _Block_release(v4);
}

void sub_2478C530C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AF8, &qword_2478DA910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    sub_2478D888C();
    v8 = sub_2478D889C();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      v10 = sub_2478D886C();
      (*(v9 + 8))(v5, v8);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    aBlock[4] = sub_2478C63CC;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2478C57DC;
    aBlock[3] = &block_descriptor_18;
    v12 = _Block_copy(aBlock);
    v13 = a1;

    [v7 openURL:v10 configuration:0 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_2478C551C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_2478D893C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2478C3DA4();
  (*(v7 + 16))(v10, v11, v6);

  v12 = a2;
  v13 = sub_2478D891C();
  v14 = sub_2478D8BBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = a1 != 0;

    *(v15 + 8) = 2112;
    if (a2)
    {
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v15 + 10) = v18;
    *v16 = v19;
    _os_log_impl(&dword_2478B3000, v13, v14, "#CSUIOpenWithFlow opened app store: %{BOOL}d, %@", v15, 0x12u);
    sub_2478C63D4(v16);
    MEMORY[0x24C1ADC70](v16, -1, -1);
    MEMORY[0x24C1ADC70](v15, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
  v20 = [a3 delegate];
  if (v20)
  {
    v21 = v20;
    if (a1)
    {
      if ([v20 respondsToSelector_])
      {
        [v21 openWithFlowDidOpenAppStore_];
      }

      goto LABEL_14;
    }

    if (([v20 respondsToSelector_] & 1) == 0)
    {
LABEL_14:
      swift_unknownObjectRelease();
      return;
    }

    if (a2)
    {
      swift_unknownObjectRetain();
      v22 = sub_2478D880C();
      [v21 openWithFlow:a3 didFailToOpenAppStoreWithError:v22];
      swift_unknownObjectRelease_n();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2478C57DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2478D895C();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_2478C5A10(void **a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = v3;

  *a1 = v3;
}

void sub_2478C5A54(void *a1)
{
  v3 = sub_2478D889C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2478D893C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = sub_2478C3DA4();
  v15 = *(v8 + 16);
  v55 = v14;
  v56 = v8 + 16;
  v54 = v15;
  v15(v13);
  v16 = v1;
  swift_unknownObjectRetain();
  v17 = sub_2478D891C();
  v18 = sub_2478D8BBC();
  swift_unknownObjectRelease();

  v19 = os_log_type_enabled(v17, v18);
  v53 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v52 = v7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v51 = v8;
    v23 = v22;
    v50 = swift_slowAlloc();
    v58 = v50;
    *v21 = 138412546;
    v24 = *&v16[OBJC_IVAR___CSUIOpenWithFlow_bindable];
    *(v21 + 4) = v24;
    *v23 = v24;
    *(v21 + 12) = 2080;
    v25 = v24;
    v26 = [a1 description];
    v27 = v6;
    v28 = a1;
    v29 = sub_2478D89EC();
    v31 = v30;

    v32 = sub_2478C0DB0(v29, v31, &v58);

    *(v21 + 14) = v32;
    a1 = v28;
    v6 = v27;
    _os_log_impl(&dword_2478B3000, v17, v18, "#CSUIOpenWithFlow begin open of %@ with %s", v21, 0x16u);
    sub_2478C63D4(v23);
    v33 = v23;
    v8 = v51;
    MEMORY[0x24C1ADC70](v33, -1, -1);
    v34 = v50;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x24C1ADC70](v34, -1, -1);
    v35 = v21;
    v7 = v52;
    MEMORY[0x24C1ADC70](v35, -1, -1);
  }

  (*(v8 + 8))(v13, v7);
  v36 = a1;
  v37 = [a1 bundleURL];
  sub_2478D887C();

  v38 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v39 = sub_2478BB7B4(v6, 0);
  v40 = v36;
  v41 = v53;
  v42 = *&v53[OBJC_IVAR___CSUIOpenWithFlow_bindable];
  v43 = qword_27EE56550;
  v44 = v39;
  v45 = v39;
  if (v43 != -1)
  {
    swift_once();
  }

  v46 = qword_27EE571A8;
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  *(v47 + 24) = v40;
  v48 = v41;
  swift_unknownObjectRetain();
  v49 = sub_2478BB3B8(v44, v46, sub_2478C647C, v47);

  [v45 detach];

  [v46 addOperation_];
}

uint64_t sub_2478C5F9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2478C5FF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2478C6050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for CSUIOpenWithFlow()
{
  result = qword_27EE56558[0];
  if (!qword_27EE56558[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27EE56558);
  }

  return result;
}

uint64_t sub_2478C6144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2478C63D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54C30, &qword_2478DAF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2478C643C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2478C64A4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  return a1;
}

uint64_t sub_2478C65FC(char a1, char a2, char a3, char a4)
{
  if (a2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | a1 & 1;
  if (a3)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  return v5 | v6 | v7;
}

uint64_t sub_2478C669C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C675C(char a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_2478C681C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 17);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C68DC(char a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 17) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_2478C699C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 19);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C6A5C(char a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 19) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_2478C6B1C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C6BDC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 24) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_2478C6C9C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 32);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t sub_2478C6D5C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  *(v3 + 32) = a1;
  os_unfair_lock_unlock((v3 + 40));
}

char *sub_2478C6E40()
{
  v0 = [objc_allocWithZone(CSUIOpenWithMenuConfiguration) init];
  v1 = *&v0[OBJC_IVAR___CSUIOpenWithMenuConfiguration_state];

  os_unfair_lock_lock((v1 + 40));
  *(v1 + 16) = 16843008;
  *(v1 + 24) = xmmword_2478DB800;
  os_unfair_lock_unlock((v1 + 40));

  return v0;
}

char *sub_2478C6EC4()
{
  v0 = [objc_allocWithZone(CSUIOpenWithMenuConfiguration) init];
  v1 = *&v0[OBJC_IVAR___CSUIOpenWithMenuConfiguration_state];

  os_unfair_lock_lock((v1 + 40));
  *(v1 + 16) = 16843008;
  *(v1 + 24) = xmmword_2478DB800;
  os_unfair_lock_unlock((v1 + 40));

  return v0;
}

uint64_t sub_2478C6F54@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);

  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 16);
  v5 = *(v3 + 17);
  v6 = *(v3 + 18);
  v7 = *(v3 + 19);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  os_unfair_lock_unlock((v3 + 40));

  v10 = [objc_allocWithZone(CSUIOpenWithMenuConfiguration) init];
  v11 = *&v10[OBJC_IVAR___CSUIOpenWithMenuConfiguration_state];

  os_unfair_lock_lock((v11 + 40));
  *(v11 + 16) = v4;
  *(v11 + 17) = v5;
  *(v11 + 18) = v6;
  *(v11 + 19) = v7;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  os_unfair_lock_unlock((v11 + 40));

  result = type metadata accessor for CSUIOpenWithMenuConfiguration(v12);
  a1[3] = result;
  *a1 = v10;
  return result;
}

id sub_2478C70EC()
{
  v2.receiver = v0;
  v2.super_class = _s23BoundBundlesObjcWrapperCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2478C71F8()
{
  if (*(v0 + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex + 8))
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex);
  result = type metadata accessor for CSUIBoundBundle();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v0 + OBJC_IVAR___CSUIOpenWithPreparedMenu_boundBundles);
  if (v2 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = v3 + 40 * v2;
  v9 = *(v4 + 32);
  v5 = *(v4 + 56);
  v10 = *(v4 + 40);
  v11 = v5;
  v6 = v5;
  v7 = v9;
  v8 = v10;
  return sub_2478C3084(&v9);
}

uint64_t sub_2478C72C0()
{
  result = *(v0 + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex);
  v2 = *(v0 + OBJC_IVAR___CSUIOpenWithPreparedMenu_representativeBundleIndex + 8);
  return result;
}

void sub_2478C73D8(void *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v7 = a3(v3);
  [v7 setRequireOpenInPlace_];
  if ((a2 & 1) == 0)
  {
    [v7 setIgnoreStrongBindingPreferences_];
  }

  type metadata accessor for CSUIBindable(0);
  sub_2478BB0F0(v7);
  if (!v4)
  {

    return;
  }

  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
  sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v9 = [v16 domain];
  v10 = sub_2478D89EC();
  v12 = v11;

  v13 = *MEMORY[0x277CCA590];
  if (v10 == sub_2478D89EC() && v12 == v14)
  {

    goto LABEL_10;
  }

  v15 = sub_2478D8E5C();

  if (v15)
  {
LABEL_10:
    if ([v16 code] == -10814)
    {

      return;
    }
  }

  swift_willThrow();
LABEL_13:
}

id sub_2478C75E4(void *a1)
{
  v2 = [a1 requireOpenInPlace];

  return [v1 setRequireOpenInPlace_];
}

uint64_t sub_2478C7634(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2478C7674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2478C7738(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  result = sub_2478D8ADC();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2478C77D8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  v12 = a1[2];
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1[5] != 2)
  {
    return (*(*v1 + 112))(a1);
  }

  if (v12 == 1 || a1[8] != 3)
  {
    result = (*(*v1 + 104))(v9);
    if (!v2)
    {
      v16 = sub_2478D152C(a1, result);

      return v16;
    }
  }

  else
  {
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2478DAEF0;
    *(v14 + 32) = *sub_2478C2950();
    *(v14 + 40) = *sub_2478C295C();
    sub_2478C2970(v11);
    *&v11[*(v13 + 36)] = v12 - 2;
    v18 = v14;
    sub_2478D18A4(v11, v8);
    sub_2478CB940(v8);
    sub_2478BC950(v11, &qword_27EE54FD8, &qword_2478DB818);
    return v18;
  }

  return result;
}

uint64_t sub_2478C7A14()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2478C7A54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_2478BB094();
  v5 = [objc_allocWithZone(MEMORY[0x277CC1EA8]) initWithBindable_];

  [v5 setRequireOpenInPlace_];
  [v5 setIgnoreStrongBindingPreferences_];
  type metadata accessor for CSUIBindable(0);
  sub_2478BB0F0(v5);
  if (!v1)
  {

    return;
  }

  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
  sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = [v14 domain];
  v8 = sub_2478D89EC();
  v10 = v9;

  v11 = *MEMORY[0x277CCA590];
  if (v8 == sub_2478D89EC() && v10 == v12)
  {

    goto LABEL_8;
  }

  v13 = sub_2478D8E5C();

  if (v13)
  {
LABEL_8:
    if ([v14 code] == -10814)
    {

      return;
    }
  }

  swift_willThrow();
LABEL_11:
}

uint64_t sub_2478C7C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2478DA8C0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2478DAEF0;
  *(v10 + 32) = *sub_2478C295C();
  *(v10 + 40) = *sub_2478C2950();
  v13 = v10;
  sub_2478C3A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FF0, &qword_2478DB828);
  sub_2478D1914();
  sub_2478D8C8C();
  *(v9 + 32) = v14;
  result = sub_2478C2970(v8);
  v12 = *(a1 + 16);
  if (v12)
  {
    *&v8[*(v2 + 36)] = v12 - 1;
    v14 = v9;
    sub_2478D18A4(v8, v6);
    sub_2478CB940(v6);
    sub_2478BC950(v8, &qword_27EE54FD8, &qword_2478DB818);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2478C7E4C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = objc_opt_self();
  v5 = sub_2478BB094();
  v6 = [v4 oneTapOpenClaimBindingConfigurationForBindable_];

  [v6 setRequireOpenInPlace_];
  [v6 setIgnoreStrongBindingPreferences_];
  type metadata accessor for CSUIBindable(0);
  sub_2478BB0F0(v6);
  if (!v1)
  {

    return;
  }

  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
  sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = [v15 domain];
  v9 = sub_2478D89EC();
  v11 = v10;

  v12 = *MEMORY[0x277CCA590];
  if (v9 == sub_2478D89EC() && v11 == v13)
  {

    goto LABEL_8;
  }

  v14 = sub_2478D8E5C();

  if (v14)
  {
LABEL_8:
    if ([v15 code] == -10814)
    {

      return;
    }
  }

  swift_willThrow();
LABEL_11:
}

void sub_2478C807C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = (*(*v1 + 104))();
  v6 = v5;
  if (v2)
  {
    return;
  }

  v7 = 0;
  v8 = *(v5 + 16);
  v9 = (a1 + 48);
  do
  {
    if (v8)
    {
      if (!*(v6 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v10 = *(v9 - 2);
      v11 = *v9;
      v12 = *(v6 + 32);
      sub_2478BCD34(0, &qword_27EE55000, 0x277CC1E90);
      v13 = v11;
      v14 = v12;
      v15 = v10;
      v16 = sub_2478D8BEC();

      if (v16)
      {

        v17 = 0;
        goto LABEL_11;
      }
    }

    v9 += 3;
    ++v7;
  }

  while (v3 != v7);

  v7 = 0;
  v17 = 1;
LABEL_11:
  v18 = *sub_2478C293C();
  v19 = sub_2478D8ADC();
  *(v19 + 16) = v3;
  v20 = v19 + 32;
  if (v3 > 3)
  {
    v21 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    v22 = (v20 + 8 * (v3 & 0x7FFFFFFFFFFFFFFCLL));
    v23 = vdupq_n_s64(v18);
    v24 = (v19 + 48);
    v25 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v24[-1] = v23;
      *v24 = v23;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v3 == v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = 0;
    v22 = (v19 + 32);
  }

  v26 = v3 - v21;
  do
  {
    *v22++ = v18;
    --v26;
  }

  while (v26);
LABEL_18:
  if (v17)
  {
    return;
  }

  v27 = v19;
  v28 = sub_2478C295C();
  if (v7 < *(v27 + 16))
  {
    *(v20 + 8 * v7) = *v28;
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_2478C8254()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_2478C8294(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2478C82E0;
}

uint64_t sub_2478C82E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2478C832C()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

id sub_2478C836C(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

id sub_2478C83B4(void *a1)
{
  v2 = sub_2478D1978(a1);

  return v2;
}

uint64_t sub_2478C8488()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  return Strong;
}

uint64_t sub_2478C854C()
{
  v1 = *(v0 + OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState);
  os_unfair_lock_lock(v1 + 6);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v1 + 6);

  return swift_unknownObjectRelease();
}

uint64_t sub_2478C85A8(unint64_t a1)
{
  v3 = v2;
  v5 = sub_2478D889C();
  v221 = *(v5 - 8);
  v222 = v5;
  v6 = *(v221 + 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v199 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v199 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55010, &qword_2478DB830);
  v216 = *(v15 - 8);
  v217 = v15;
  v16 = *(v216 + 64);
  MEMORY[0x28223BE20](v15);
  v218 = &v199 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE55018, &qword_2478DB838);
  v219 = *(v18 - 1);
  v220 = v18;
  v19 = v219[8];
  MEMORY[0x28223BE20](v18);
  v211 = &v199 - v20;
  v21 = a1 >> 62;
  if (a1 >> 62)
  {
    v195 = sub_2478D8DAC();
    if (v195 >= 1)
    {
      v215 = v2;
      v3 = (a1 >> 62);
      v21 = v195;
      v196 = sub_2478D8DAC();
      if (v196)
      {
        goto LABEL_235;
      }

      __break(1u);
    }

    goto LABEL_218;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = v22;
  if (!v22)
  {
LABEL_218:
    type metadata accessor for CSUIError(0);
    v127 = 1;
    goto LABEL_219;
  }

  while (1)
  {
    v205 = a1 & 0xC000000000000001;
    v215 = v9;
    v208 = v12;
    v203 = v23;
    v206 = v21;
    v204 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = v3;
      v24 = MEMORY[0x24C1AD450](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

      v9 = v3;
      v24 = *(a1 + 32);
    }

    v3 = v24;
    v201 = v1;
    v25 = *(v1 + OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration);
    v26 = sub_2478BB094();
    v27 = [objc_allocWithZone(MEMORY[0x277CC1EA8]) initWithBindable_];

    v212 = v25;
    [v27 setRequireOpenInPlace_];
    v12 = type metadata accessor for CSUIBindable(0);
    v1 = v12;
    v28 = sub_2478BB0F0(v27);
    if (v9)
    {
      v214 = v3;
      v225 = v9;
      v29 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
      sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v30 = v224;
      v31 = [v224 domain];
      v32 = sub_2478D89EC();
      v34 = v33;

      v35 = *MEMORY[0x277CCA590];
      v36 = sub_2478D89EC();
      v1 = v37;
      if (v32 == v36 && v34 == v37)
      {
      }

      else
      {
        v38 = sub_2478D8E5C();

        if ((v38 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if ([v30 code] != -10814)
      {
LABEL_23:
        swift_willThrow();
LABEL_24:
        v50 = v214;

        return v50;
      }

      v9 = 0;
      v207 = MEMORY[0x277D84F90];
    }

    else
    {
      v207 = v28;
    }

    v39 = v207;
    v14 = v207[2];
    v21 = MEMORY[0x277D84F90];
    v202 = a1;
    v213 = v12;
    v210 = v22;
    v200 = v14;
    if (v14)
    {
      v214 = 0;
      v225 = MEMORY[0x277D84F90];
      sub_2478D09C0(0, v14, 0);
      v21 = v225;
      v40 = (v39 + 6);
      v3 = v211;
      do
      {
        v41 = *(v40 - 2);
        v42 = *(v40 - 1);
        v43 = *v40;
        v44 = &v3[*(v220 + 12)];
        v45 = *v40;
        v1 = v41;
        v46 = [v1 URL];
        sub_2478D887C();

        *v44 = v1;
        v44[1] = v42;
        v44[2] = v43;
        v225 = v21;
        v48 = *(v21 + 16);
        v47 = *(v21 + 24);
        if (v48 >= v47 >> 1)
        {
          v1 = &v225;
          sub_2478D09C0(v47 > 1, v48 + 1, 1);
          v21 = v225;
        }

        v40 += 3;
        *(v21 + 16) = v48 + 1;
        sub_2478BC9B0(v3, v21 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + v219[9] * v48, &unk_27EE55018, &qword_2478DB838);
        v14 = (v14 - 1);
      }

      while (v14);
      v12 = v213;
      v9 = v214;
    }

    if (*(v21 + 16))
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55030, &qword_2478DB840);
      v49 = sub_2478D8DEC();
    }

    else
    {
      v49 = MEMORY[0x277D84F98];
    }

    v225 = v49;

    sub_2478CC330(v51, 1, &v225);
    a1 = v9;
    if (v9)
    {
      goto LABEL_231;
    }

    v219 = v225;
    v52 = v207;
    v14 = v207[2];
    v53 = MEMORY[0x277D84F90];
    if (!v14)
    {
      goto LABEL_34;
    }

    v214 = 0;
    v225 = MEMORY[0x277D84F90];

    v1 = &v225;
    v54 = sub_2478D0980(0, v14, 0);
    v55 = 0;
    v53 = v225;
    v220 = *(v52 + 16);
    v12 = v52 + 48;
    do
    {
      v56 = v220;
      if (v220 == v55)
      {
        __break(1u);
        goto LABEL_159;
      }

      v57 = *(v12 - 16);
      v9 = *(v217 + 12);
      v1 = *v12;
      v58 = v57;
      v59 = [v58 URL];
      v3 = v218;
      sub_2478D887C();

      *&v3[v9] = v55;
      v225 = v53;
      v52 = v53[2];
      v60 = v53[3];
      v21 = v52 + 1;
      if (v52 >= v60 >> 1)
      {
        v1 = &v225;
        sub_2478D0980(v60 > 1, v52 + 1, 1);
        v3 = v218;
        v53 = v225;
      }

      ++v55;
      v53[2] = v21;
      v54 = sub_2478BC9B0(v3, v53 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v52, &qword_27EE55010, &qword_2478DB830);
      v12 += 24;
    }

    while (v14 != v55);

    v12 = v213;
    a1 = v214;
LABEL_34:
    if (v53[2])
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55038, &qword_2478DB848);
      v61 = sub_2478D8DEC();
    }

    else
    {
      v61 = MEMORY[0x277D84F98];
    }

    v225 = v61;

    sub_2478CBDE4(v62, 1, &v225);
    v9 = a1;
    if (a1)
    {
      goto LABEL_231;
    }

    v209 = v225;
    a1 = MEMORY[0x277D84F90];
    if (v200)
    {
      v214 = 0;
      v225 = MEMORY[0x277D84F90];
      v63 = v200;
      sub_2478D0960(0, v200, 0);
      v64 = v225;
      v65 = (v207 + 6);
      v3 = v204;
      do
      {
        v66 = *(v65 - 2);
        v67 = *v65;
        v68 = v66;
        v69 = [v68 URL];
        sub_2478D887C();

        v225 = v64;
        v71 = v64[2];
        v70 = v64[3];
        v21 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          sub_2478D0960(v70 > 1, v71 + 1, 1);
          v64 = v225;
        }

        v65 += 3;
        v64[2] = v21;
        (*(v221 + 4))(v64 + ((v221[80] + 32) & ~v221[80]) + *(v221 + 9) * v71, v3, v222);
        --v63;
      }

      while (v63);
      v12 = v213;
      v9 = v214;
      a1 = MEMORY[0x277D84F90];
    }

    else
    {
      v64 = MEMORY[0x277D84F90];
    }

    v216 = sub_2478D1A60(v64);

    v1 = v202;
    v72 = v210;
    if (v210 < 0)
    {
      goto LABEL_230;
    }

    v21 = v206;
    v3 = v209;
    if (v206)
    {
      if (sub_2478D8DAC() < 1)
      {
        goto LABEL_224;
      }

      v73 = sub_2478D8DAC();
    }

    else
    {
      v73 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v73)
      {
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }
    }

    if (v73 >= v72)
    {
      break;
    }

LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    swift_unexpectedError();
    __break(1u);
LABEL_232:

    v198 = v214;
LABEL_234:

    __break(1u);
LABEL_235:
    v22 = v196;
    v23 = v21;
    v21 = v3;
    v3 = v215;
  }

  if (!v205)
  {

    if (!v21)
    {
      goto LABEL_57;
    }

LABEL_60:

    v204 = sub_2478D8DBC();
    v211 = v76;
    v50 = v77;
    v72 = v78 >> 1;
    if (v77 != v78 >> 1)
    {
      goto LABEL_70;
    }

LABEL_61:
    swift_unknownObjectRelease();

    v225 = sub_2478CCDA0(v216);
    sub_2478D33E0(&v225, v3);
    v214 = v9;
    if (v9)
    {
      goto LABEL_232;
    }

    v21 = v225;
    v9 = v225[2];
    v50 = v219;
    v14 = v215;
    if (v9)
    {
      goto LABEL_63;
    }

    if (([v212 allowMenuWithNoApplications] & 1) == 0)
    {

      type metadata accessor for CSUIError(0);
      v127 = 2;
LABEL_219:
      v224 = v127;
      v50 = sub_2478BC694(MEMORY[0x277D84F90]);
      sub_2478D3868(&qword_27EE54EC0, type metadata accessor for CSUIError);
      sub_2478D87FC();
      swift_willThrow();
      return v50;
    }

    v9 = *(v21 + 16);
    if (v9)
    {
LABEL_63:
      v225 = a1;
      sub_2478BC2DC(0, v9, 0);
      v1 = v225;
      v220 = *(v221 + 2);
      v221 += 16;
      v79 = (v221[64] + 32) & ~v221[64];
      v211 = v21;
      v21 += v79;
      v80 = *(v221 + 7);
      v217 = v221 - 8;
      v218 = v80;
      v72 = 24;
      v3 = v221 - 8;
      while (1)
      {
        v81 = (v220)(v14, v21, v222);
        if (!*(v50 + 16))
        {
          break;
        }

        v82 = v1;
        v81 = sub_2478CF9E8(v14);
        if ((v83 & 1) == 0)
        {
          goto LABEL_194;
        }

        v84 = *(v50 + 56) + 24 * v81;
        v85 = *(v84 + 8);
        v86 = *(v84 + 16);
        v87 = *v3;
        v88 = *v84;
        v89 = v86;
        v87(v14, v222);
        v1 = v82;
        v225 = v82;
        v90 = v82[2];
        v91 = *(v1 + 24);
        if (v90 >= v91 >> 1)
        {
          sub_2478BC2DC((v91 > 1), v90 + 1, 1);
          v1 = v225;
        }

        *(v1 + 16) = v90 + 1;
        v92 = (v1 + 24 * v90);
        v92[4] = v88;
        v92[5] = v85;
        v92[6] = v86;
        v50 = v219;
        v21 += v218;
        --v9;
        v14 = v215;
        v72 = 24;
        if (!v9)
        {

          goto LABEL_88;
        }
      }

      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      v1 = v81;

      v185 = v1;
LABEL_201:
      v12 = 0;
      v221 = v185[2];
      a1 = (v3 + 48);
      v187 = v220;
      v219 = v185;
      while (1)
      {
        if (v187 == v12)
        {
          goto LABEL_226;
        }

        if (v221)
        {
          if (!v185[2])
          {
            goto LABEL_227;
          }

          v14 = v9;
          v188 = *(a1 - 16);
          v189 = *a1;
          v190 = v185[4];
          sub_2478BCD34(0, &qword_27EE55000, 0x277CC1E90);
          v191 = v189;
          v192 = v190;
          v193 = v188;
          v1 = sub_2478D8BEC();

          v185 = v219;
          v187 = v220;
          v9 = v14;
          v3 = v207;
          if (v1)
          {
            break;
          }
        }

        ++v12;
        a1 += 24;
        if (v187 == v12)
        {

          goto LABEL_210;
        }
      }

      v194 = sub_2478C295C();
      if (v12 >= *(v50 + 16))
      {
        goto LABEL_229;
      }

      *(v50 + 8 * v12 + 32) = *v194;
LABEL_210:
      v126 = v222;
      a1 = v218;
      if (v9)
      {
        goto LABEL_168;
      }

      goto LABEL_167;
    }

    v1 = MEMORY[0x277D84F90];
LABEL_88:
    sub_2478C2D4C();
    v220 = v111;
    a1 = *(v1 + 16);
    v222 = v1;
    if (a1)
    {
      v9 = 0;
      v12 = v1 + 32;
      v50 = *(v220 + 2);
      v221 = v220 + 32;
      while (v9 < *(v1 + 16))
      {
        v112 = (v12 + 24 * v9);
        v113 = *v112;
        v114 = v112[2];
        v21 = v113;
        if (v50)
        {
          v14 = v221;
          v72 = v50;
          do
          {
            v115 = *v14++;
            [v21 performSelector_];
            --v72;
          }

          while (v72);
        }

        ++v9;
        [v21 detach];

        v1 = v222;
        if (v9 == a1)
        {
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      v186 = sub_2478D8E5C();

      if (v186)
      {
        goto LABEL_199;
      }

      goto LABEL_212;
    }

LABEL_96:

    v116 = *(v1 + 16);
    v21 = MEMORY[0x277D84F90];
    if (v116)
    {
      v225 = MEMORY[0x277D84F90];
      sub_2478D8D5C();
      v117 = (v1 + 48);
      v118 = v116;
      v3 = v207;
      do
      {
        v119 = *(v117 - 2);
        v120 = *v117;
        v117 += 3;
        v121 = v120;
        v122 = v119;
        sub_2478C2DC0(v122);

        sub_2478D8D3C();
        v123 = v225[2];
        sub_2478D8D6C();
        sub_2478D8D7C();
        sub_2478D8D4C();
        --v118;
      }

      while (v118);
      v21 = v225;
    }

    else
    {
      v3 = v207;
    }

    v12 = v213;
    v9 = v214;
    if (v203 != 1)
    {

      v125 = sub_2478C293C();
      v50 = sub_2478C7738(*v125, v116);
      v126 = v222;
LABEL_170:
      v1 = sub_2478CA0B8(v126, v50);

      sub_2478CA2DC(v1, v21);
      v170 = v169;
      a1 = v9;

      v225 = v170;

      sub_2478CCD34(&v225);
      if (!v9)
      {

        v21 = v225;
        if (!v225[2])
        {
          goto LABEL_188;
        }

        if ([v212 representativeBundlePolicy] == 1)
        {
          v221 = *(v21 + 16);
          if (v221)
          {
            v3 = 0;
            v14 = *MEMORY[0x277CC1F20];
            v171 = (v21 + 56);
            v214 = 0;
            v220 = v21;
            while (v3 < *(v21 + 16))
            {
              a1 = *(v171 - 2);
              if (a1)
              {
                v222 = *(v171 - 1);
                v172 = *v171;
                v173 = sub_2478D89EC();
                v1 = v174;
                if (v173 == sub_2478D89EC() && v1 == v175)
                {
                  v177 = 1;
                }

                else
                {
                  v177 = sub_2478D8E5C();
                }

                v12 = v172;
                v178 = v14;
                v179 = v14;
                a1 = a1;

                if (v177)
                {
                  v180 = 0;
                  v21 = v220;
                  goto LABEL_191;
                }

                v9 = v214;
                v21 = v220;
                v14 = v178;
                if ((v222 & 0xFFFFFFFFFFFFFFFELL) == 2)
                {
                  goto LABEL_190;
                }
              }

              else if ((*(v171 - 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
              {
                goto LABEL_190;
              }

              ++v3;
              v171 += 5;
              if (v221 == v3)
              {
                goto LABEL_188;
              }
            }

            goto LABEL_223;
          }

LABEL_188:
          v3 = 0;
          v180 = 1;
        }

        else
        {
          v3 = 0;
LABEL_190:
          v180 = 0;
        }

LABEL_191:
        v181 = _s23BoundBundlesObjcWrapperCMa();
        v182 = objc_allocWithZone(v181);
        *&v182[OBJC_IVAR____TtCE14CoreServicesUICSo24CSUIOpenWithPreparedMenuP33_66079D085FF6FB5157D5A6D61FF9E78423BoundBundlesObjcWrapper_boundBundles] = v21;
        v183 = &v182[OBJC_IVAR____TtCE14CoreServicesUICSo24CSUIOpenWithPreparedMenuP33_66079D085FF6FB5157D5A6D61FF9E78423BoundBundlesObjcWrapper_representativeBundleIndex];
        *v183 = v3;
        v183[8] = v180;
        v223.receiver = v182;
        v223.super_class = v181;
        v184 = objc_msgSendSuper2(&v223, sel_init);
        v50 = [objc_allocWithZone(CSUIOpenWithPreparedMenu) initWithBoundBundlesWrapper_];

        return v50;
      }

      v198 = v9;
      goto LABEL_234;
    }

    if (v205)
    {
      v124 = MEMORY[0x24C1AD450](0, v202);
    }

    else
    {
      v124 = *(v202 + 32);
    }

    a1 = v124;
    v128 = *(v201 + OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration);
    v129 = [v128 bindingPreferenceDisplayStyle];
    if (v129 <= 2)
    {
      if (v129 != 1)
      {
        if (v129 == 2)
        {
          type metadata accessor for ClassicSeparateBindingAnnotationHelper();
          goto LABEL_120;
        }

LABEL_122:
        v133 = sub_2478C293C();
        v134 = *(v3 + 2);
        if (v134)
        {
          v12 = a1;
          v135 = *v133;
          v136 = *(v3 + 2);
          v137 = sub_2478D8ADC();
          v50 = v137;
          *(v137 + 16) = v134;
          v138 = (v137 + 32);
          if (v134 < 4)
          {
            v139 = 0;
            goto LABEL_138;
          }

          v139 = v134 & 0x7FFFFFFFFFFFFFFCLL;
          v138 += v134 & 0x7FFFFFFFFFFFFFFCLL;
          v146 = vdupq_n_s64(v135);
          v147 = (v137 + 48);
          v148 = v134 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v147[-1] = v146;
            *v147 = v146;
            v147 += 2;
            v148 -= 4;
          }

          while (v148);
          if (v134 != v139)
          {
LABEL_138:
            v149 = v134 - v139;
            do
            {
              *v138++ = v135;
              --v149;
            }

            while (v149);
          }

LABEL_140:
          v126 = v222;
          a1 = v12;
LABEL_167:
          if (v9)
          {
            goto LABEL_168;
          }

LABEL_169:

          goto LABEL_170;
        }

        v50 = MEMORY[0x277D84F90];
LABEL_166:
        v126 = v222;
        goto LABEL_167;
      }

      v12 = a1;
      v55 = *(v3 + 2);
      if (!v55)
      {
        v50 = MEMORY[0x277D84F90];
        goto LABEL_140;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2478DA8C0;
      *(v52 + 32) = *sub_2478C295C();
      v140 = sub_2478C293C();
      v1 = (v55 - 1);
      if (v55 == 1)
      {
        v54 = MEMORY[0x277D84F90];
LABEL_165:
        a1 = v12;
        v225 = v52;
        sub_2478CBCF8(v54);
        v50 = v225;
        goto LABEL_166;
      }

      v9 = *v140;
      v54 = sub_2478D8ADC();
      *(v54 + 16) = v1;
      v56 = (v54 + 32);
      if (v55 <= 4)
      {
        v150 = 0;
        goto LABEL_162;
      }

LABEL_159:
      v150 = v1 & 0xFFFFFFFFFFFFFFFCLL;
      v56 += v1 & 0xFFFFFFFFFFFFFFFCLL;
      v165 = vdupq_n_s64(v9);
      v166 = (v54 + 48);
      v167 = v1 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v166[-1] = v165;
        *v166 = v165;
        v166 += 2;
        v167 -= 4;
      }

      while (v167);
      if (v1 != v150)
      {
LABEL_162:
        v168 = &v55[~v150];
        do
        {
          *v56++ = v9;
          --v168;
        }

        while (v168);
      }

      v9 = v214;
      goto LABEL_165;
    }

    if (v129 != 3)
    {
      if (v129 != 4)
      {
        goto LABEL_122;
      }

      type metadata accessor for OneTapSeparateBindingAnnotationHelper();
LABEL_120:
      v130 = swift_allocObject();
      *(v130 + 16) = v128;
      *(v130 + 24) = a1;
      v131 = v128;
      v132 = a1;
      v50 = sub_2478C77D8(v3);

      if (v9)
      {
        goto LABEL_168;
      }

      v126 = v222;
      goto LABEL_169;
    }

    v141 = *(v3 + 2);
    if (!v141)
    {
      v50 = MEMORY[0x277D84F90];
      goto LABEL_151;
    }

    v218 = a1;
    v142 = *sub_2478C293C();
    v143 = sub_2478D8ADC();
    v50 = v143;
    *(v143 + 16) = v141;
    v1 = v143 + 32;
    if (v141 > 3)
    {
      v144 = v141 & 0x7FFFFFFFFFFFFFFCLL;
      v145 = (v1 + 8 * (v141 & 0x7FFFFFFFFFFFFFFCLL));
      v151 = vdupq_n_s64(v142);
      v152 = (v143 + 48);
      v153 = v141 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v152[-1] = v151;
        *v152 = v151;
        v152 += 2;
        v153 -= 4;
      }

      while (v153);
      if (v141 == v144)
      {
LABEL_148:
        if (*(v3 + 5) != 2)
        {
          v220 = v141;
          v14 = *(v201 + OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration);
          v156 = objc_opt_self();
          a1 = v218;
          v157 = sub_2478BB094();
          v72 = [v156 oneTapOpenClaimBindingConfigurationForBindable_];

          [v72 setRequireOpenInPlace_];
          [v72 setIgnoreStrongBindingPreferences_];
          v81 = sub_2478BB0F0(v72);
          if (!v9)
          {
            goto LABEL_195;
          }

          v225 = v9;
          v158 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
          sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
          if (swift_dynamicCast())
          {

            v9 = v224;
            v159 = [v224 domain];
            v160 = sub_2478D89EC();
            v1 = v161;

            v162 = *MEMORY[0x277CCA590];
            v163 = sub_2478D89EC();
            v14 = v164;
            if (v160 != v163 || v1 != v164)
            {
              goto LABEL_198;
            }

LABEL_199:
            if ([v9 code] == -10814)
            {

              v9 = 0;
              v185 = MEMORY[0x277D84F90];
              v3 = v207;
              goto LABEL_201;
            }

LABEL_212:
            swift_willThrow();
            v3 = v207;
          }

          v126 = v222;

          if (v9)
          {
LABEL_168:

            return v50;
          }

          goto LABEL_167;
        }

        v155 = sub_2478C2950();
        a1 = v218;
        if (*(v50 + 16))
        {
          *v1 = *v155;
LABEL_151:
          v126 = v222;
          if (v9)
          {
            goto LABEL_168;
          }

          goto LABEL_167;
        }

        goto LABEL_228;
      }
    }

    else
    {
      v144 = 0;
      v145 = (v143 + 32);
    }

    v154 = v141 - v144;
    do
    {
      *v145++ = v142;
      --v154;
    }

    while (v154);
    goto LABEL_148;
  }

  if (v72 != 1)
  {
    v74 = 1;
    do
    {
      v75 = v74 + 1;
      sub_2478D8CFC();
      v74 = v75;
    }

    while (v72 != v75);
  }

  if (v21)
  {
    goto LABEL_60;
  }

LABEL_57:
  v204 = v1 & 0xFFFFFFFFFFFFFF8;
  v211 = ((v1 & 0xFFFFFFFFFFFFFF8) + 32);
  v50 = 1;
  if (v72 == 1)
  {
    goto LABEL_61;
  }

LABEL_70:
  v206 = *MEMORY[0x277CCA590];
  v12 = (v221 + 32);
  v210 = v72;
  while (2)
  {
    if (v50 >= v72)
    {
      goto LABEL_197;
    }

    v218 = v50;
    v220 = *&v211[8 * v50];
    v93 = sub_2478BB094();
    v50 = [objc_allocWithZone(MEMORY[0x277CC1EA8]) initWithBindable_];

    [v50 setRequireOpenInPlace_];
    v94 = sub_2478BB0F0(v50);
    if (!v9)
    {
      v21 = v94;

      v102 = *(v21 + 16);
      if (v102)
      {
        goto LABEL_83;
      }

      goto LABEL_79;
    }

    v225 = v9;
    v95 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
    sub_2478BCD34(0, &qword_27EE54FD0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      v96 = v224;
      v97 = [v224 domain];
      v98 = sub_2478D89EC();
      v100 = v99;

      if (v98 == sub_2478D89EC() && v100 == v101)
      {
      }

      else
      {
        v103 = sub_2478D8E5C();

        if ((v103 & 1) == 0)
        {
          goto LABEL_108;
        }
      }

      if ([v96 code] != -10814)
      {
LABEL_108:

        swift_willThrow();

        goto LABEL_111;
      }

      v9 = 0;
      a1 = MEMORY[0x277D84F90];
      v21 = MEMORY[0x277D84F90];
      v102 = *(MEMORY[0x277D84F90] + 16);
      if (v102)
      {
LABEL_83:
        v214 = 0;
        v225 = a1;
        sub_2478D0960(0, v102, 0);
        v1 = v225;
        v217 = v21;
        v104 = (v21 + 48);
        v105 = v208;
        do
        {
          v106 = *(v104 - 2);
          v107 = *v104;
          v14 = v106;
          v108 = [v14 URL];
          sub_2478D887C();

          v225 = v1;
          v110 = *(v1 + 16);
          v109 = *(v1 + 24);
          v21 = v110 + 1;
          if (v110 >= v109 >> 1)
          {
            sub_2478D0960(v109 > 1, v110 + 1, 1);
            v1 = v225;
          }

          v104 += 3;
          *(v1 + 16) = v21;
          (*(v221 + 4))(v1 + ((v221[80] + 32) & ~v221[80]) + *(v221 + 9) * v110, v105, v222);
          --v102;
        }

        while (v102);

        v9 = v214;
        v3 = v209;
        v72 = v210;
        a1 = MEMORY[0x277D84F90];
LABEL_71:
        v50 = v218 + 1;
        v216 = sub_2478CCB94(v1, v216);

        if (v50 == v72)
        {
          goto LABEL_61;
        }

        continue;
      }

LABEL_79:

      v1 = a1;
      goto LABEL_71;
    }

    break;
  }

LABEL_111:
  swift_unknownObjectRelease();

  return v50;
}

uint64_t sub_2478CA0B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v39 = MEMORY[0x277D84F90];
  sub_2478D0940(0, v6, 0);
  result = v39;
  v31 = v5;
  v32 = v4;
  v29 = a1;
  v30 = v6;
  v28 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 48);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v33 = v6;
      v10 = *v9;
      v35 = *(v9 - 1);
      v37 = *v8;
      v40 = result;
      v12 = *(result + 16);
      v11 = *(result + 24);
      v13 = result;
      v34 = *(v9 - 2);
      v14 = v10;
      result = v13;
      if (v12 >= v11 >> 1)
      {
        sub_2478D0940((v11 > 1), v12 + 1, 1);
        result = v40;
      }

      *(result + 16) = v12 + 1;
      v15 = (result + 32 * v12);
      v15[4] = v34;
      v15[5] = v35;
      --v5;
      v15[6] = v10;
      v15[7] = v37;
      --v4;
      ++v8;
      v9 += 3;
      v6 = v33 - 1;
      if (v33 == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v17 = v31;
    v16 = v32;
    if (v32 <= v31)
    {
      return result;
    }

    v18 = v30;
    v19 = (v29 + 24 * v30 + 48);
    while (v18 < v16)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (v17 != v18)
      {
        if (v18 >= v17)
        {
          goto LABEL_25;
        }

        v21 = *v19;
        v36 = *(v28 + 32 + 8 * v18);
        v38 = *(v19 - 1);
        v41 = result;
        v22 = *(result + 16);
        v23 = *(result + 24);
        v24 = result;
        v25 = *(v19 - 2);
        v26 = v21;
        result = v24;
        if (v22 >= v23 >> 1)
        {
          sub_2478D0940((v23 > 1), v22 + 1, 1);
          result = v41;
        }

        *(result + 16) = v22 + 1;
        v27 = (result + 32 * v22);
        v27[4] = v25;
        v27[5] = v38;
        v27[6] = v21;
        v27[7] = v36;
        ++v18;
        v19 += 3;
        v17 = v31;
        v16 = v32;
        if (v20 != v32)
        {
          continue;
        }
      }

      return result;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_2478CA2DC(uint64_t a1, uint64_t a2)
{
  v28 = MEMORY[0x277D84F90];
  sub_2478D0920(0, 0, 0);
  v4 = v28;
  v23 = *(a1 + 16);
  if (v23)
  {
    v5 = 0;
    v21 = a2 + 32;
    v22 = a2;
    v6 = (a1 + 56);
    do
    {
      v7 = *(a2 + 16);
      if (v5 == v7)
      {
        break;
      }

      if (v5 >= v7)
      {
        __break(1u);
        return;
      }

      v8 = *(v6 - 3);
      v9 = *(v6 - 1);
      v24 = *v6;
      v25 = *(v6 - 2);
      v10 = *(v21 + 8 * v5);
      v11 = v10;
      v12 = v8;
      v13 = v9;
      [v12 detach];
      if (v9)
      {
        v14 = [v13 handlerRank];
      }

      else
      {
        v14 = 0;
      }

      v15 = v11;
      sub_2478C3004(v12, v14, v25, v10, v24, v26);

      v28 = v4;
      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2478D0920((v16 > 1), v17 + 1, 1);
        v4 = v28;
      }

      ++v5;
      v6 += 4;
      *(v4 + 16) = v17 + 1;
      v18 = v4 + 40 * v17;
      v19 = v26[0];
      v20 = v26[1];
      *(v18 + 64) = v27;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      a2 = v22;
    }

    while (v23 != v5);
  }
}

BOOL sub_2478CA48C(__int128 *a1, __int128 *a2)
{
  v16 = *a1;
  v17 = a1[1];
  v2 = *(a1 + 4);
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 4);
  v3 = sub_2478C2950();
  v7 = *v3;
  sub_2478C3A28();
  if (sub_2478D8C5C())
  {
    return 1;
  }

  v8 = *v3;
  if (sub_2478D8C5C())
  {
    return 0;
  }

  v5 = sub_2478C295C();
  v9 = *v5;
  if (sub_2478D8C5C())
  {
    v10 = *v5;
    if ((sub_2478D8C5C() & 1) == 0)
    {
      return 1;
    }
  }

  v11 = *v5;
  if (sub_2478D8C5C())
  {
    v12 = *v5;
    if ((sub_2478D8C5C() & 1) == 0)
    {
      return 0;
    }
  }

  sub_2478C2C74();
  sub_2478C2C74();
  sub_2478D3E64();
  v6 = sub_2478D8C3C();

  return v6 == -1;
}

id sub_2478CA730(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54C20, &qword_2478DB850);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2478DAEE0;
  *(v3 + 32) = a1;
  type metadata accessor for CSUIBindable(0);
  v4 = a1;
  v5 = sub_2478D8AAC();

  v11[0] = 0;
  v6 = [v1 prepareMenuForBindables:v5 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2478D881C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2478CA914()
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2478CAA44(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2478D88BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2478D89AC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = *(a1 + OBJC_IVAR___CSUIOpenWithPreparedMenu_boundBundles);
  v13 = *(v12 + 2);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
LABEL_7:
    v12 = "";
    if (v14 >> 62)
    {
LABEL_16:
      if (sub_2478D8DAC())
      {
        goto LABEL_10;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      sub_2478BCD34(0, &qword_27EE55058, 0x277D75710);
      v25 = sub_2478D8BCC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54C20, &qword_2478DB850);
      v26 = swift_allocObject();
      v41 = *(v12 + 238);
      *(v26 + 16) = v41;
      *(v26 + 32) = v25;
      v42 = v26;
      v27 = *&v3[OBJC_IVAR___CSUIOpenWithMenuConstructor_configuration];
      v28 = v25;
      if ([v27 showAppStoreMenuItem])
      {
        v40 = v28;
        v29 = sub_2478D89BC();
        v30 = [objc_opt_self() _systemImageNamed_];

        sub_2478BCD34(0, &unk_27EE55060, 0x277D750C8);
        sub_2478D899C();
        sub_2478BCD34(0, &qword_27EE551C0, 0x277CCA8D8);
        sub_2478D86F8();
        sub_2478D88AC();
        sub_2478D8A0C();
        *(swift_allocObject() + 16) = v3;
        v39 = v30;
        v31 = v3;
        v32 = sub_2478D8C1C();
        v33 = swift_allocObject();
        *(v33 + 16) = v41;
        *(v33 + 32) = v32;
        v34 = v32;
        v35 = sub_2478D8BCC();
        MEMORY[0x24C1AD1E0]();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2478D8ACC();
        }

        sub_2478D8AEC();

        v28 = v40;
      }

      v36 = sub_2478D8BCC();

      return v36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54C20, &qword_2478DB850);
    v24 = swift_allocObject();
    *(v24 + 16) = *(v12 + 238);
    *(v24 + 32) = [v3 noApplicationsMenuItem];
    goto LABEL_10;
  }

  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v41 = v8;
  v46 = MEMORY[0x277D84F90];
  sub_2478D8D5C();
  v15 = 0;
  v16 = v12 + 56;
  while (1)
  {
    if (v15 >= *(v12 + 2))
    {
      __break(1u);
      goto LABEL_16;
    }

    v42 = *(v16 - 3);
    v17 = v42;
    v18 = *v16;
    v43 = *(v16 - 1);
    v44 = v18;
    v19 = v43;
    v20 = v18;
    v21 = v17;
    v22 = v19;
    sub_2478CAFA0(&v42, v3, &v45);
    if (v2)
    {
      break;
    }

    ++v15;

    sub_2478D8D3C();
    v23 = *(v46 + 16);
    sub_2478D8D6C();
    sub_2478D8D7C();
    sub_2478D8D4C();
    v16 = (v16 + 40);
    if (v13 == v15)
    {
      v14 = v46;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_2478CAFA0(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_2478D88BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2478D89AC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = a1[1];
  v25 = *a1;
  v26 = v9;
  v27 = *(a1 + 4);
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    v10 = *(&v26 + 1);
    sub_2478D8B3C();
    sub_2478D8AFC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
    v11 = 0;
  }

  v28 = *sub_2478C295C();
  v24 = v27;
  sub_2478C3A28();
  if (sub_2478D8C5C())
  {
    sub_2478D899C();
    sub_2478BCD34(0, &qword_27EE551C0, 0x277CCA8D8);
    sub_2478D86F8();
    sub_2478D88AC();
    sub_2478D8A0C();
  }

  sub_2478BCD34(0, &unk_27EE55060, 0x277D750C8);
  sub_2478C2C74();
  v28 = *(&v25 + 1);
  v12 = v25;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = v26;
  *(v13 + 24) = v25;
  *(v13 + 40) = v14;
  *(v13 + 56) = v27;
  v15 = v11;
  v16 = a2;
  v17 = v15;
  v18 = v16;
  v19 = v12;
  v20 = v22;
  sub_2478BDAA4(&v28, &v24, &qword_27EE550C8, &qword_2478DBB88);
  v21 = sub_2478D8C1C();
  v24 = *sub_2478C2950();
  if (sub_2478D8C5C())
  {
    [v21 setState_];
  }

  *a3 = v21;
}

void __swiftcall CSUIOpenWithMenuConstructor.init()(CSUIOpenWithMenuConstructor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2478CB580(uint64_t a1)
{
  v2 = sub_2478D3868(&qword_27EE55188, type metadata accessor for _LSHandlerRank);
  v3 = sub_2478D3868(&unk_27EE55190, type metadata accessor for _LSHandlerRank);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_2478CB63C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE54FE0, &qword_2478DB820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2478CB740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE550E0, &qword_2478DBB98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_2478CB844(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55110, &qword_2478DBBB8);
  v4 = *(sub_2478D889C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2478CB940(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FD8, &qword_2478DB818);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55148, &qword_2478DBBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = *v2;
  v13 = *(*v2 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v12 + 3) >> 1, v15 < v13))
  {
    v12 = sub_2478CB63C(isUniquelyReferenced_nonNull_native, v13, 1, v12);
    v15 = *(v12 + 3) >> 1;
  }

  v16 = *(v12 + 2);
  v17 = v15 - v16;
  v18 = &v12[8 * v16];
  sub_2478D18A4(a1, v7);
  v19 = sub_2478D0FEC(v11, (v18 + 32), v17);
  sub_2478BC950(a1, &qword_27EE54FD8, &qword_2478DB818);
  if (v19 < 0)
  {
    __break(1u);
LABEL_11:
    if (v4 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54FF0, &qword_2478DB828))
    {
      goto LABEL_9;
    }

    v8 = *(v8 + 36);
    v24 = *&v11[v8];
    if (!v24)
    {
      goto LABEL_9;
    }

    v17 = *(v12 + 2);
    a1 = v24 - 1;
    *&v11[v8] = v24 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55150, &qword_2478DBBE8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE55158, qword_2478DBBF0);
    swift_getAssociatedConformanceWitness();
    sub_2478D8C2C();
    if (v33)
    {
      goto LABEL_9;
    }

    v19 = v32;
    while (1)
    {
LABEL_17:
      v25 = *(v12 + 3);
      v26 = v25 >> 1;
      if ((v25 >> 1) < v17 + 1)
      {
        v12 = sub_2478CB63C((v25 > 1), v17 + 1, 1, v12);
        v26 = *(v12 + 3) >> 1;
        v27 = v17 - v26;
        if (v17 < v26)
        {
LABEL_19:
          v30 = v26;
          v31 = v17;
          v28 = 0;
          v29 = 8 * v17 + 32;
          while (1)
          {
            *&v12[v29] = v19;
            if (!(a1 + v28))
            {
              break;
            }

            *&v11[v8] = a1 + v28 - 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55150, &qword_2478DBBE8);
            swift_getOpaqueTypeConformance2();
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE55158, qword_2478DBBF0);
            swift_getAssociatedConformanceWitness();
            sub_2478D8C2C();
            if (v33)
            {
              break;
            }

            v19 = v32;
            --v28;
            v29 += 8;
            if (v27 == v28)
            {
              a1 += v28;
              v17 = v30;
              *(v12 + 2) = v30;
              goto LABEL_17;
            }
          }

          *(v12 + 2) = v31 - v28 + 1;
          goto LABEL_9;
        }
      }

      else
      {
        v27 = v17 - v26;
        if (v17 < v26)
        {
          goto LABEL_19;
        }
      }

LABEL_16:
      *(v12 + 2) = v17;
    }
  }

  if (v19)
  {
    v20 = *(v12 + 2);
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
      __break(1u);
      goto LABEL_16;
    }

    *(v12 + 2) = v22;
  }

  if (v19 == v17)
  {
    goto LABEL_11;
  }

LABEL_9:
  result = sub_2478BC950(v11, &qword_27EE55148, &qword_2478DBBE0);
  *v2 = v12;
  return result;
}

uint64_t sub_2478CBCF8(uint64_t result)
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

  result = sub_2478CB63C(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

void sub_2478CBDE4(uint64_t a1, char a2, void *a3)
{
  v7 = sub_2478D889C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE55010, &qword_2478DB830);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = v58 - v16;
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v58[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  sub_2478BDAA4(a1 + v19, v58 - v16, &qword_27EE55010, &qword_2478DB830);
  v59 = v8;
  v65 = *(v8 + 32);
  v66 = v7;
  v65(v11, v17, v7);
  v61 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_2478CF9E8(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_2478CFF90(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_2478CF9E8(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_2478D8E7C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v20;
  v34 = v22;
  sub_2478CFA80();
  v22 = v34;
  v20 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v69 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE54AE8, &unk_2478DA900);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v59 + 8))(v11, v66);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = v20;
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v60 = *(v59 + 72);
  v38 = v22;
  v65((v37 + v60 * v22), v11, v66);
  *(v36[7] + 8 * v38) = v35;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v42 = v64 + v62 + v19;
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_2478BDAA4(v42, v17, &qword_27EE55010, &qword_2478DB830);
      v65(v11, v17, v66);
      v44 = *&v17[v61];
      v45 = *a3;
      v46 = sub_2478CF9E8(v11);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v26 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v26)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_2478CFF90(v50, 1);
        v52 = *a3;
        v46 = sub_2478CF9E8(v11);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v55 = v46;
      v65((v54[6] + v60 * v46), v11, v66);
      *(v54[7] + 8 * v55) = v44;
      v56 = v54[2];
      v26 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v54[2] = v57;
      v42 += v62;
      v41 = v64;
      if (v63 == v43)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0xD00000000000001BLL, 0x80000002478DA680);
  sub_2478D8D8C();
  MEMORY[0x24C1AD190](39, 0xE100000000000000);
  sub_2478D8D9C();
  __break(1u);
}