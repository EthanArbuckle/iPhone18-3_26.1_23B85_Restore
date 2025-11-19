uint64_t sub_2545DC938()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_2545FEA14();

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t OSSignposter.withInterval<A>(_:id:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 160) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_2545FF034();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = sub_2545FEFF4();
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545DCAF8, 0, 0);
}

uint64_t sub_2545DCAF8()
{
  v1 = *(v0 + 72);
  v2 = sub_2545FF014();
  v3 = sub_2545FF494();
  result = sub_2545FF4C4();
  if (result)
  {
    v5 = *(v0 + 40);
    if ((*(v0 + 160) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_2545FEFD4();
        _os_signpost_emit_with_name_impl(&dword_2545AB000, v2, v3, v8, v5, "", v7, 2u);
        MEMORY[0x259C12CB0](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 56);
  (*(*(v0 + 112) + 16))(*(v0 + 128), *(v0 + 48), *(v0 + 104));
  v10 = sub_2545FF064();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_2545FF054();
  v17 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_2545DCD08;
  v15 = *(v0 + 64);
  v16 = *(v0 + 32);

  return v17(v16);
}

uint64_t sub_2545DCD08()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2545DD020;
  }

  else
  {
    v3 = sub_2545DCE1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545DCE1C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  v4 = sub_2545FF014();
  sub_2545FF044();
  v5 = sub_2545FF484();
  result = sub_2545FF4C4();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 160) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 136);
        v10 = *(v0 + 88);
        v9 = *(v0 + 96);
        v11 = *(v0 + 80);
        sub_2545FE8F4();
        sub_2545FF074();
        sub_2545FEA14();
        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
          v12 = "";
        }

        v13 = *(v0 + 120);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_2545FEFD4();
        _os_signpost_emit_with_name_impl(&dword_2545AB000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x259C12CB0](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  sub_2545FEA14();

  (*(v19 + 8))(v18, v20);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2545DD020()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  sub_2545FEA14();

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t sub_2545DD0AC()
{
  v0 = sub_2545FF0A4();
  __swift_allocate_value_buffer(v0, qword_27F60ADD8);
  __swift_project_value_buffer(v0, qword_27F60ADD8);
  return sub_2545FF094();
}

uint64_t sub_2545DD134()
{
  v0 = sub_2545FF0A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2545FF024();
  __swift_allocate_value_buffer(v5, qword_27F60ADF0);
  __swift_project_value_buffer(v5, qword_27F60ADF0);
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27F60ADD8);
  (*(v1 + 16))(v4, v6, v0);
  return sub_2545FF004();
}

uint64_t Set.init(set:)(void *a1)
{
  sub_2545DD4C0();
  sub_2545DD50C();
  sub_2545FF264();
  sub_2545FF314();
  swift_getWitnessTable();
  v2 = sub_2545FF3B4();

  return v2;
}

uint64_t sub_2545DD34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2545DD564(v8, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(v6 + 56))(a3, 1, 1, a2);
  }

  (*(v6 + 8))(v10, a2);
  sub_2545DD564(a1, v13);
  v11 = swift_dynamicCast();
  return (*(v6 + 56))(a3, v11 ^ 1u, 1, a2);
}

unint64_t sub_2545DD4C0()
{
  result = qword_27F606858;
  if (!qword_27F606858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F606858);
  }

  return result;
}

unint64_t sub_2545DD50C()
{
  result = qword_27F606860;
  if (!qword_27F606860)
  {
    sub_2545DD4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606860);
  }

  return result;
}

uint64_t sub_2545DD564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2545DD5C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = *(type metadata accessor for HomeID() - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = swift_task_alloc();
  v5 = sub_2545FEB64();
  *(v1 + 48) = v5;
  v6 = *(v5 - 8);
  *(v1 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  *(v1 + 88) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = sub_2545FECE4();
  *(v1 + 120) = sub_2545FECD4();
  if (a1)
  {
    v11 = *(MEMORY[0x277D15210] + 4);
    v12 = swift_task_alloc();
    if (a1 == 1)
    {
      *(v1 + 184) = v12;
      *v12 = v1;
      v13 = sub_2545DE1A8;
    }

    else
    {
      *(v1 + 128) = v12;
      *v12 = v1;
      v13 = sub_2545DD894;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606870, &qword_254600F48);
    v14 = *(v9 + 72);
    *(v1 + 208) = *(v9 + 80);
    *(v1 + 152) = swift_allocObject();
    v15 = *(MEMORY[0x277D15210] + 4);
    v12 = swift_task_alloc();
    *(v1 + 160) = v12;
    *v12 = v1;
    v13 = sub_2545DDA24;
  }

  v12[1] = v13;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_2545DD894(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 120);
  v7 = *(*v2 + 112);
  v12 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v3;

  sub_2545DE6D4(&qword_27F6064D8, MEMORY[0x277D15960]);
  v9 = sub_2545FF334();
  if (v3)
  {
    v10 = sub_2545DE554;
  }

  else
  {
    v10 = sub_2545DDE40;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2545DDA24(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 120);
  v7 = *(*v2 + 112);
  v12 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v3;

  sub_2545DE6D4(&qword_27F6064D8, MEMORY[0x277D15960]);
  v9 = sub_2545FF334();
  if (v3)
  {
    v10 = sub_2545DE458;
  }

  else
  {
    v10 = sub_2545DDBB4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2545DDBB4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  sub_2545FEA14();
  if (*(v1 + 16))
  {
    (*(*(v0 + 56) + 16))(*(v0 + 152) + ((*(v0 + 208) + 32) & ~*(v0 + 208)), *(v0 + 168) + ((*(*(v0 + 56) + 80) + 32) & ~*(*(v0 + 56) + 80)), *(v0 + 48));
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 208);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);

  v11 = (v6 + 32) & ~v6;
  (*(v10 + 56))(v5 + v11, v3, 1, v9);
  sub_2545DE7DC(v5 + v11, v7);
  sub_2545DE84C(v7, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2545DE8BC(*(v0 + 96));
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = *(*(v0 + 56) + 32);
    v13(*(v0 + 80), *(v0 + 96), *(v0 + 48));
    v12 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2545C46DC(0, *(v12 + 2) + 1, 1, v12);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_2545C46DC(v14 > 1, v15 + 1, 1, v12);
    }

    v16 = *(v0 + 80);
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    *(v12 + 2) = v15 + 1;
    v13(&v12[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15], v16, v17);
  }

  v19 = *(v0 + 152);
  v20 = (*(v0 + 208) + 32) & ~*(v0 + 208);
  swift_setDeallocating();
  sub_2545DE8BC(v19 + v20);
  swift_deallocClassInstance();
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v25 = *(v0 + 64);
  v27 = *(v0 + 32);
  v26 = *(v0 + 40);

  v28 = *(v0 + 8);

  return v28(v12);
}

uint64_t sub_2545DDE40()
{
  v1 = v0[17];
  v2 = v0[15];
  result = sub_2545FEA14();
  v41 = *(v1 + 16);
  v42 = v1;
  if (v41)
  {
    v4 = 0;
    v5 = v0[7];
    v6 = v0[2];
    v7 = v6 + 56;
    v38 = v0[3];
    v39 = (v5 + 32);
    v40 = MEMORY[0x277D84F90];
    while (v4 < *(v42 + 16))
    {
      v10 = v0[5];
      v44 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v43 = *(v5 + 72);
      (*(v5 + 16))(v0[9], v0[17] + v44 + v43 * v4, v0[6]);
      sub_2545FEB34();
      if (!*(v6 + 16))
      {
        goto LABEL_3;
      }

      v11 = v0[5];
      v12 = *(v6 + 40);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545DE6D4(&qword_27F606430, MEMORY[0x277CC95F0]);
      sub_2545FF0C4();
      v13 = sub_2545FF864();
      v14 = -1 << *(v6 + 32);
      v15 = v13 & ~v14;
      if ((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        v17 = *(v38 + 72);
        while (1)
        {
          v18 = v0[4];
          sub_2545DE71C(*(v6 + 48) + v15 * v17, v18);
          v19 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
          sub_2545DE780(v18);
          if (v19)
          {
            break;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v21 = v0[8];
        v20 = v0[9];
        v22 = v0[6];
        sub_2545DE780(v0[5]);
        v23 = *v39;
        (*v39)(v21, v20, v22);
        v24 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2545DBDA4(0, *(v40 + 16) + 1, 1);
          v24 = v40;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2545DBDA4(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        v27 = v0[8];
        v28 = v0[6];
        *(v24 + 16) = v26 + 1;
        v40 = v24;
        result = v23(v24 + v44 + v26 * v43, v27, v28);
      }

      else
      {
LABEL_3:
        v8 = v0[9];
        v9 = v0[6];
        sub_2545DE780(v0[5]);
        result = (*(v5 + 8))(v8, v9);
      }

      if (++v4 == v41)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_18:
    v29 = v0[17];

    v31 = v0[12];
    v30 = v0[13];
    v33 = v0[9];
    v32 = v0[10];
    v34 = v0[8];
    v36 = v0[4];
    v35 = v0[5];

    v37 = v0[1];

    return v37(v40);
  }

  return result;
}

uint64_t sub_2545DE1A8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 184);
  v7 = *v2;
  v5[24] = v1;

  v8 = v5[15];
  v9 = v5[14];
  if (v3)
  {
    sub_2545DE6D4(&qword_27F6064D8, MEMORY[0x277D15960]);
    v10 = sub_2545FF334();
    v12 = v11;
    v13 = sub_2545DE614;
  }

  else
  {
    v5[25] = a1;
    sub_2545DE6D4(&qword_27F6064D8, MEMORY[0x277D15960]);
    v10 = sub_2545FF334();
    v12 = v14;
    v13 = sub_2545DE390;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_2545DE390()
{
  v1 = v0[15];
  sub_2545FEA14();
  v2 = v0[25];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v9 = v0[4];
  v8 = v0[5];

  v10 = v0[1];

  return v10(v2);
}

uint64_t sub_2545DE458()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 208);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  sub_2545FEA14();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v5 = *(v0 + 176);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2545DE554()
{
  v1 = v0[15];
  sub_2545FEA14();
  v2 = v0[18];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v9 = v0[4];
  v8 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2545DE614()
{
  v1 = v0[15];
  sub_2545FEA14();
  v2 = v0[24];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v9 = v0[4];
  v8 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2545DE6D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2545DE71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545DE780(uint64_t a1)
{
  v2 = type metadata accessor for HomeID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2545DE7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545DE84C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545DE8BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2545DE924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_2545FE974();
  qword_27F606878 = result;
  return result;
}

uint64_t static HomeXLTileEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F6063B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606878;

  return sub_2545FE8F4();
}

uint64_t sub_2545DE9F8()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606880);
  __swift_project_value_buffer(v0, qword_27F606880);
  return sub_2545FE994();
}

uint64_t static HomeXLTileEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for HomeXLTileEntity()
{
  result = qword_281533020;
  if (!qword_281533020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeXLTileEntity.item.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HomeXLTileEntity() + 24);

  return sub_2545DEC60(a1, v3);
}

uint64_t sub_2545DEC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileElementInfo();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HomeXLTileEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_2545FEA64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_2545FF134();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2545FF124();
  sub_2545FF114();
  v12 = v0 + *(type metadata accessor for HomeXLTileEntity() + 24);
  v13 = type metadata accessor for TileElementInfo();
  v14 = (v12 + *(v13 + 20));
  v15 = *v14;
  v16 = v14[1];
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v8 + 56))(v6, 1, 1, v7);
  v17 = (v12 + *(v13 + 24));
  v18 = *v17;
  v19 = v17[1];
  sub_2545FE8E4();
  sub_2545FE874();
  return sub_2545FE894();
}

uint64_t static HomeXLTileEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ElementID();
  if (qword_2546012D0[*(a1 + *(v4 + 20))] != qword_2546012D0[*(a2 + *(v4 + 20))])
  {
    return 0;
  }

  v5 = type metadata accessor for HomeXLTileEntity();
  v6 = *(v5 + 20);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t HomeXLTileEntity.hash(into:)()
{
  v1 = v0;
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_2546012D0[*(v0 + *(v2 + 20))]);
  v3 = type metadata accessor for HomeXLTileEntity();
  v4 = v0 + *(v3 + 20);
  sub_2545FF0C4();
  v5 = v1 + *(v3 + 24);
  return TileElementInfo.hash(into:)();
}

uint64_t HomeXLTileEntity.hashValue.getter()
{
  v1 = v0;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_2546012D0[*(v0 + *(v2 + 20))]);
  v3 = type metadata accessor for HomeXLTileEntity();
  v4 = v0 + *(v3 + 20);
  sub_2545FF0C4();
  v5 = v1 + *(v3 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545DF1F0@<X0>(void *a1@<X8>)
{
  if (qword_27F6063B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606878;

  return sub_2545FE8F4();
}

uint64_t sub_2545DF260(uint64_t a1)
{
  v3 = v1;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v4 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_2546012D0[*(v1 + *(v4 + 20))]);
  v5 = v1 + *(a1 + 20);
  sub_2545FF0C4();
  v6 = v3 + *(a1 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545DF350(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v5 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_2546012D0[*(v2 + *(v5 + 20))]);
  v6 = v2 + *(a2 + 20);
  sub_2545FF0C4();
  v7 = v4 + *(a2 + 24);
  return TileElementInfo.hash(into:)();
}

uint64_t sub_2545DF428(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545DFADC(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v5 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_2546012D0[*(v2 + *(v5 + 20))]);
  v6 = v2 + *(a2 + 20);
  sub_2545FF0C4();
  v7 = v4 + *(a2 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545DF514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ElementID();
  if (qword_2546012D0[*(a1 + *(v6 + 20))] != qword_2546012D0[*(a2 + *(v6 + 20))])
  {
    return 0;
  }

  v7 = *(a3 + 20);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v8, a2 + v8);
}

uint64_t sub_2545DF5BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545DF664(uint64_t a1)
{
  v2 = sub_2545DFADC(&qword_27F606678, type metadata accessor for HomeXLTileEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2545DF6E4(uint64_t a1)
{
  v2 = sub_2545DFADC(&qword_281533040, type metadata accessor for HomeXLTileEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static HomeXLTileEntity.create(id:homeID:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2545AEB50(a1, a4, type metadata accessor for ElementID);
  v7 = type metadata accessor for HomeXLTileEntity();
  sub_2545AEB50(a2, a4 + *(v7 + 20), type metadata accessor for HomeID);
  return sub_2545AEB50(a3, a4 + *(v7 + 24), type metadata accessor for TileElementInfo);
}

unint64_t sub_2545DF9D8()
{
  result = qword_27F6068A0;
  if (!qword_27F6068A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F6068A8, &qword_254601100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6068A0);
  }

  return result;
}

uint64_t sub_2545DFA84(uint64_t a1)
{
  result = sub_2545DFADC(&qword_27F606678, type metadata accessor for HomeXLTileEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2545DFADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static HomeSingleTileConfigurationIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = *aComAppleHome_1;
  sub_2545FE8E4();
  return v0;
}

uint64_t static HomeSingleTileConfigurationIntent.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aComAppleHome_1 = a1;
  *&aComAppleHome_1[8] = a2;
}

uint64_t sub_2545DFCAC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aComAppleHome_1 = v2;
  *&aComAppleHome_1[8] = v1;
  sub_2545FE8E4();
}

uint64_t sub_2545DFD10()
{
  v0 = sub_2545FEA44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2545FEB24();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2545FF154();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2545FEA64();
  __swift_allocate_value_buffer(v9, qword_27F6068C0);
  __swift_project_value_buffer(v9, qword_27F6068C0);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2545FEA74();
}

uint64_t sub_2545DFF38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2545FEA44();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2545FEB24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2545FF154();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2545FEA64();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2545FE7D4();
  __swift_allocate_value_buffer(v15, qword_27F6068D8);
  __swift_project_value_buffer(v15, qword_27F6068D8);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2545FEA74();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2545FE7E4();
}

uint64_t HomeSingleTileConfigurationIntent.init(home:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a2;
  v67 = a1;
  v74 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v68 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = v50 - v7;
  v73 = sub_2545FE914();
  v75 = *(v73 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v64 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606528, &qword_2546002E8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v72 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v65 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = v50 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v63 = v50 - v22;
  v61 = sub_2545FEA44();
  v23 = *(v61 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v61);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2545FEB24();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2545FF154();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = sub_2545FEA64();
  v55 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606550, &qword_254600330);
  sub_2545FF0F4();
  v59 = &qword_2546012D0[6];
  v50[2] = v30;
  sub_2545FEB14();
  v58 = *MEMORY[0x277CC9110];
  v36 = *(v23 + 104);
  v60 = v23 + 104;
  v62 = v36;
  v53 = v26;
  v36(v26);
  sub_2545FEA74();
  v37 = *(v34 + 56);
  v54 = v34 + 56;
  v56 = v37;
  v38 = v63;
  v37(v63, 1, 1, v33);
  v39 = type metadata accessor for SelectedHomeEntity();
  (*(*(v39 - 8) + 56))(v70, 1, 1, v39);
  v40 = sub_2545FE734();
  v41 = *(*(v40 - 8) + 56);
  v41(v71, 1, 1, v40);
  v41(v72, 1, 1, v40);
  v51 = *MEMORY[0x277CBA308];
  v42 = *(v75 + 104);
  v75 += 104;
  v52 = v42;
  v43 = v64;
  v42(v64);
  sub_2545E0CEC(&qword_27F606558, type metadata accessor for SelectedHomeEntity);
  v57 = sub_2545FE794();
  *v74 = v57;
  v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F8, &qword_254601338);
  sub_2545FF0F4();
  sub_2545FEB14();
  v62(v53, v58, v61);
  sub_2545FEA74();
  v56(v38, 1, 1, v55);
  v44 = type metadata accessor for HomeSingleTileEntity();
  v45 = v66;
  (*(*(v44 - 8) + 56))(v66, 1, 1, v44);
  v41(v71, 1, 1, v40);
  v41(v72, 1, 1, v40);
  v52(v43, v51, v73);
  sub_2545E0CEC(&qword_27F606900, type metadata accessor for HomeSingleTileEntity);
  v74[1] = sub_2545FE794();
  v46 = v67;
  v47 = v70;
  sub_2545B60C4(v67, v70, &qword_27F606520, &qword_2546002E0);
  sub_2545B60C4(v47, v65, &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  sub_2545B612C(v47, &qword_27F606520, &qword_2546002E0);
  v48 = v69;
  sub_2545B60C4(v69, v45, &qword_27F6068F0, &unk_254601310);
  sub_2545B60C4(v45, v68, &qword_27F6068F0, &unk_254601310);
  sub_2545FE764();
  sub_2545B612C(v48, &qword_27F6068F0, &unk_254601310);
  sub_2545B612C(v46, &qword_27F606520, &qword_2546002E0);
  return sub_2545B612C(v45, &qword_27F6068F0, &unk_254601310);
}

uint64_t HomeSingleTileConfigurationIntent.home.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *v1;
  sub_2545B60C4(a1, &v8 - v6, &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  return sub_2545B612C(a1, &qword_27F606520, &qword_2546002E0);
}

uint64_t HomeSingleTileConfigurationIntent.item.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 8);
  sub_2545B60C4(a1, &v8 - v6, &qword_27F6068F0, &unk_254601310);
  sub_2545FE764();
  return sub_2545B612C(a1, &qword_27F6068F0, &unk_254601310);
}

uint64_t sub_2545E0CEC(unint64_t *a1, void (*a2)(uint64_t))
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

double HomeSingleTileConfigurationIntent.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SelectedHomeEntity();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for HomeSingleTileEntity();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  HomeSingleTileConfigurationIntent.init(home:item:)(v9, v5, &v13);
  result = *&v13;
  *a1 = v13;
  return result;
}

uint64_t (*HomeSingleTileConfigurationIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2545FE744();
  return sub_2545B32E8;
}

uint64_t sub_2545E0F74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_2545B60C4(a1, &v14 - v9, &qword_27F6068F0, &unk_254601310);
  v12 = *a2;
  v11 = a2[1];
  sub_2545B60C4(v10, v8, &qword_27F6068F0, &unk_254601310);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v10, &qword_27F6068F0, &unk_254601310);
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*HomeSingleTileConfigurationIntent.item.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

uint64_t static HomeSingleTileConfigurationIntent.parameterSummary.getter()
{
  v0 = sub_2545FE9D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA3E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606908, &qword_254601368);
  sub_2545E1578();
  sub_2545B4F2C(&qword_27F606910, &qword_27F606908, &qword_254601368);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330);
  return sub_2545FEA14();
}

uint64_t sub_2545E1304()
{
  swift_getKeyPath();
  sub_2545E1578();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2546005D0;
  *(v1 + 32) = v0;
  sub_2545FE8F4();
  v2 = sub_2545FE8E4();

  sub_2545FEA14();
  return v2;
}

uint64_t sub_2545E13D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606908, &qword_254601368);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2545E1578();
  sub_2545FE904();
  v8 = sub_2545B4F2C(&qword_27F606910, &qword_27F606908, &qword_254601368);
  MEMORY[0x259C11820](v5, &type metadata for HomeSingleTileConfigurationIntent, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  MEMORY[0x259C11810](v7, &type metadata for HomeSingleTileConfigurationIntent, v0, v8);
  return (v9)(v7, v0);
}

unint64_t sub_2545E1578()
{
  result = qword_281532E68;
  if (!qword_281532E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E68);
  }

  return result;
}

uint64_t sub_2545E15CC()
{
  swift_getKeyPath();
  sub_2545E1578();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v1 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2546002D0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_2545FE8F4();
  v3 = sub_2545FE8E4();

  sub_2545FEA14();
  sub_2545FEA14();
  return v3;
}

uint64_t sub_2545E16C0()
{
  swift_beginAccess();
  v0 = *aComAppleHome_1;
  sub_2545FE8E4();
  return v0;
}

uint64_t sub_2545E1714@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FEA64();
  v3 = __swift_project_value_buffer(v2, qword_27F6068C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545E17BC()
{
  v0 = sub_2545FE9D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA3E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606908, &qword_254601368);
  sub_2545B4F2C(&qword_27F606910, &qword_27F606908, &qword_254601368);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330);
  return sub_2545FEA14();
}

uint64_t sub_2545E197C(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277CBA3A8] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2545E24FC();
  *v5 = v2;
  v5[1] = sub_2545B45FC;

  return MEMORY[0x28210C3E0](a2, v6);
}

double sub_2545E1A28@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SelectedHomeEntity();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for HomeSingleTileEntity();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  HomeSingleTileConfigurationIntent.init(home:item:)(v9, v5, &v13);
  result = *&v13;
  *a1 = v13;
  return result;
}

uint64_t sub_2545E1B88(uint64_t a1)
{
  v2 = sub_2545E1578();

  return MEMORY[0x28210B538](a1, v2);
}

double HomeSingleTileConfigurationIntent.init(item:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for HomeSingleTileEntity();
  sub_2545E1D90(a1 + *(v12 + 20), v11, type metadata accessor for HomeID);
  v13 = type metadata accessor for SelectedHomeEntity();
  v14 = &v11[*(v13 + 20)];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_2545E1D90(a1, v7, type metadata accessor for HomeSingleTileEntity);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  HomeSingleTileConfigurationIntent.init(home:item:)(v11, v7, &v16);
  sub_2545E1DF8(a1);
  result = *&v16;
  *a2 = v16;
  return result;
}

uint64_t sub_2545E1D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2545E1DF8(uint64_t a1)
{
  v2 = type metadata accessor for HomeSingleTileEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double HomeSingleTileConfigurationIntent.init(home:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = [a1 uniqueIdentifier];
  sub_2545FEAC4();

  v13 = [a1 name];
  v14 = sub_2545FF174();
  v16 = v15;

  v17 = type metadata accessor for SelectedHomeEntity();
  v18 = &v11[*(v17 + 20)];
  *v18 = v14;
  v18[1] = v16;
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  v19 = type metadata accessor for HomeSingleTileEntity();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  HomeSingleTileConfigurationIntent.init(home:item:)(v11, v7, &v21);

  result = *&v21;
  *a2 = v21;
  return result;
}

double HomeSingleTileConfigurationIntent.init(home:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  sub_2545FEB34();
  v12 = sub_2545FEB54();
  v14 = v13;
  v15 = type metadata accessor for SelectedHomeEntity();
  v16 = &v11[*(v15 + 20)];
  *v16 = v12;
  v16[1] = v14;
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  v17 = type metadata accessor for HomeSingleTileEntity();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  HomeSingleTileConfigurationIntent.init(home:item:)(v11, v7, &v20);
  v18 = sub_2545FEB64();
  (*(*(v18 - 8) + 8))(a1, v18);
  result = *&v20;
  *a2 = v20;
  return result;
}

uint64_t static HomeSingleTileConfigurationIntent.defaultIntent.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545E22D0, 0, 0);
}

uint64_t sub_2545E22D0()
{
  v10 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for SelectedHomeEntity();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = type metadata accessor for HomeSingleTileEntity();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  HomeSingleTileConfigurationIntent.init(home:item:)(v1, v2, v9);
  v5 = v9[1];
  v0[6] = v9[0];
  v0[7] = v5;
  sub_2545FE8F4();
  sub_2545FE8F4();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2545B7D90;
  v7 = v0[5];

  return static SelectedHomeEntity.selectedHome.getter(v7);
}

unint64_t sub_2545E2424()
{
  result = qword_281532E60;
  if (!qword_281532E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E60);
  }

  return result;
}

unint64_t sub_2545E247C()
{
  result = qword_281532E70;
  if (!qword_281532E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E70);
  }

  return result;
}

unint64_t sub_2545E24FC()
{
  result = qword_27F606928;
  if (!qword_27F606928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606928);
  }

  return result;
}

uint64_t HomeID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2545FEB04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeID.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2545FEB04();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2545E2634()
{
  sub_2545FF834();
  MEMORY[0x259C12730](0);
  return sub_2545FF864();
}

uint64_t sub_2545E26A0()
{
  sub_2545FF834();
  MEMORY[0x259C12730](0);
  return sub_2545FF864();
}

uint64_t sub_2545E26EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2545FF7B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2545E2778(uint64_t a1)
{
  v2 = sub_2545E2968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545E27B4(uint64_t a1)
{
  v2 = sub_2545E2968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606930, &qword_254601560);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E2968();
  sub_2545FF884();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606940, MEMORY[0x277CC95F0]);
  sub_2545FF774();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2545E2968()
{
  result = qword_27F606938;
  if (!qword_27F606938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606938);
  }

  return result;
}

uint64_t HomeID.hash(into:)()
{
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0]);

  return sub_2545FF0C4();
}

uint64_t HomeID.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  return sub_2545FF864();
}

uint64_t HomeID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_2545FEB04();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606948, &unk_254601568);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for HomeID();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E2968();
  sub_2545FF874();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_2545E3658(&qword_27F606950, MEMORY[0x277CC95F0]);
    sub_2545FF714();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_2545E2F94(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2545E2D50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2545FEB04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2545E2DB8()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  return sub_2545FF864();
}

uint64_t sub_2545E2E40()
{
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0]);

  return sub_2545FF0C4();
}

uint64_t sub_2545E2EC4()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  return sub_2545FF864();
}

uint64_t type metadata accessor for HomeID()
{
  result = qword_27F606960;
  if (!qword_27F606960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2545E2F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545E3010(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606930, &qword_254601560);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E2968();
  sub_2545FF884();
  sub_2545FEB04();
  sub_2545E3658(&qword_27F606940, MEMORY[0x277CC95F0]);
  sub_2545FF774();
  return (*(v3 + 8))(v6, v2);
}

uint64_t static HomeID.entityIdentifier(for:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_2545FEB04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2545FEA84();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2545B1088(v5);
    v11 = 1;
  }

  else
  {
    v12 = *(v7 + 32);
    v12(v10, v5, v6);
    v12(a1, v10, v6);
    v11 = 0;
  }

  v13 = type metadata accessor for HomeID();
  return (*(*(v13 - 8) + 56))(a1, v11, 1, v13);
}

uint64_t sub_2545E3354@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_2545FEB04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2545FEA84();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2545B1088(v7);
    v13 = 1;
  }

  else
  {
    v14 = *(v9 + 32);
    v14(v12, v7, v8);
    v14(a2, v12, v8);
    v13 = 0;
  }

  return (*(*(a1 - 8) + 56))(a2, v13, 1, a1);
}

uint64_t HomeID.debugDescription.getter()
{
  v0 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v0);

  return 0x3A4449656D6F48;
}

uint64_t sub_2545E356C()
{
  v0 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v0);

  return 0x3A4449656D6F48;
}

uint64_t sub_2545E3658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2545E36C8()
{
  result = sub_2545FEB04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2545E3750()
{
  result = qword_27F606970;
  if (!qword_27F606970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606970);
  }

  return result;
}

unint64_t sub_2545E37A8()
{
  result = qword_27F606978;
  if (!qword_27F606978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606978);
  }

  return result;
}

unint64_t sub_2545E3800()
{
  result = qword_27F606980;
  if (!qword_27F606980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606980);
  }

  return result;
}

uint64_t sub_2545E385C()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606988);
  __swift_project_value_buffer(v0, qword_27F606988);
  return sub_2545FE994();
}

uint64_t static RecommendedMode.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606988);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RecommendedMode.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x73656E656373;
  }

  return 0x726F737365636361;
}

uint64_t sub_2545E39DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x73656E656373;
  if (v2 != 1)
  {
    v4 = 0x726F737365636361;
    v3 = 0xEB00000000736569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656E656373;
  if (*a2 != 1)
  {
    v8 = 0x726F737365636361;
    v7 = 0xEB00000000736569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2545FF7B4();
  }

  return v11 & 1;
}

uint64_t sub_2545E3AE0()
{
  v1 = *v0;
  sub_2545FF834();
  sub_2545FF1B4();

  return sub_2545FF864();
}

uint64_t sub_2545E3B80()
{
  *v0;
  *v0;
  sub_2545FF1B4();
}

uint64_t sub_2545E3C0C()
{
  v1 = *v0;
  sub_2545FF834();
  sub_2545FF1B4();

  return sub_2545FF864();
}

uint64_t sub_2545E3CA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s17HomeWidgetIntents15RecommendedModeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_2545E3CD8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606988);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545E3D80(uint64_t a1)
{
  v2 = sub_2545B241C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2545E3DD0(uint64_t a1)
{
  v2 = sub_2545E4950();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2545E3E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069B8, &qword_254601B50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069C0, &qword_254601B58);
    v8 = sub_2545FF6A4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2545FE8F4();
    while (1)
    {
      sub_2545E4CD0(v10, v6);
      v12 = *v6;
      result = sub_2545C57BC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_2545FE8A4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        sub_2545FEA14();
        return v8;
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

unint64_t _s17HomeWidgetIntents15RecommendedModeO26caseDisplayRepresentationsSDyAC03AppC00G14RepresentationVGvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v50 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - v5;
  v49 = sub_2545FEA44();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2545FEB24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2545FF154();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = sub_2545FEA64();
  v51 = *(v41 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069B0, "f,");
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069B8, &qword_254601B50);
  v40 = v14;
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v37 = 2 * v15;
  v17 = swift_allocObject();
  v39 = v17;
  *(v17 + 16) = xmmword_254601820;
  v18 = (v17 + v16);
  v35 = *(v14 + 48);
  *v18 = 0;
  sub_2545FF0F4();
  v48 = &unk_254601AF0;
  sub_2545FEB14();
  v47 = *MEMORY[0x277CC9110];
  v19 = *(v6 + 104);
  v34 = v6 + 104;
  v44 = v19;
  v20 = v36;
  v19(v36);
  sub_2545FEA74();
  v33 = *(v51 + 56);
  v51 += 56;
  v21 = v38;
  v22 = v41;
  v33(v38, 1, 1, v41);
  v43 = sub_2545FE884();
  v23 = *(v43 - 8);
  v42 = *(v23 + 56);
  v45 = v23 + 56;
  v42(v50, 1, 1, v43);
  v46 = v18;
  sub_2545FE894();
  v24 = v40;
  v35 = *(v40 + 48);
  v18[v15] = 1;
  sub_2545FF0F4();
  sub_2545FEB14();
  v44(v20, v47, v49);
  sub_2545FEA74();
  v25 = v21;
  v26 = v22;
  v27 = v33;
  v33(v21, 1, 1, v26);
  v28 = v50;
  v42(v50, 1, 1, v43);
  sub_2545FE894();
  v29 = &v46[v37];
  v37 = *(v24 + 48);
  *v29 = 2;
  sub_2545FF0F4();
  sub_2545FEB14();
  v44(v20, v47, v49);
  sub_2545FEA74();
  v27(v25, 1, 1, v41);
  v42(v28, 1, 1, v43);
  sub_2545FE894();
  v30 = sub_2545E3E2C(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v30;
}

uint64_t _s17HomeWidgetIntents15RecommendedModeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_2545FF6B4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2545E46D8()
{
  result = qword_281532D78;
  if (!qword_281532D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D78);
  }

  return result;
}

unint64_t sub_2545E4730()
{
  result = qword_281532DB8[0];
  if (!qword_281532DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281532DB8);
  }

  return result;
}

unint64_t sub_2545E4788()
{
  result = qword_281532D90;
  if (!qword_281532D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D90);
  }

  return result;
}

unint64_t sub_2545E47E0()
{
  result = qword_281532D70;
  if (!qword_281532D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D70);
  }

  return result;
}

unint64_t sub_2545E4850()
{
  result = qword_281532DA0;
  if (!qword_281532DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532DA0);
  }

  return result;
}

unint64_t sub_2545E48A4()
{
  result = qword_281532D98;
  if (!qword_281532D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D98);
  }

  return result;
}

unint64_t sub_2545E48F8()
{
  result = qword_281532DB0;
  if (!qword_281532DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532DB0);
  }

  return result;
}

unint64_t sub_2545E4950()
{
  result = qword_281532DA8;
  if (!qword_281532DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532DA8);
  }

  return result;
}

unint64_t sub_2545E49F8()
{
  result = qword_281532D88;
  if (!qword_281532D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D88);
  }

  return result;
}

unint64_t sub_2545E4A50()
{
  result = qword_281532D68;
  if (!qword_281532D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D68);
  }

  return result;
}

unint64_t sub_2545E4AA8()
{
  result = qword_281532D80;
  if (!qword_281532D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532D80);
  }

  return result;
}

unint64_t sub_2545E4B00()
{
  result = qword_27F6069A0;
  if (!qword_27F6069A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F6069A8, &qword_254601AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6069A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecommendedMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecommendedMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2545E4CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069B8, &qword_254601B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2545E4D54(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(type metadata accessor for ElementID() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = MEMORY[0x277D84F90];
  v10 = *(v7 + 72);
  while (1)
  {
    a1(&v14, v8);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      sub_2545D8570(&v14, v16);
      sub_2545D8570(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2545C4704(0, v9[2] + 1, 1, v9);
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2545C4704((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      sub_2545D8570(&v14, &v9[5 * v12 + 4]);
    }

    else
    {
      sub_2545B612C(&v14, &qword_27F606A20, &qword_254601E08);
    }

    v8 += v10;
    if (!--v4)
    {
      return v9;
    }
  }

  return v9;
}

uint64_t TileElementInfo.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for TileElementInfo() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_2545FE8E4();
  return v2;
}

uint64_t TileElementInfo.iconSymbol.getter()
{
  v1 = (v0 + *(type metadata accessor for TileElementInfo() + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_2545FE8E4();
  return v2;
}

uint64_t TileElementInfo.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for TileElementInfo() + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_2545FE8E4();
  return v2;
}

uint64_t sub_2545E501C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A18, &qword_254601DB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v38 - v5;
  v40 = sub_2545FEFB4();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2545FEFC4();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TileElementInfo();
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2545F3D54(v19, v20, v18);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_2545FEDC4();
  v23 = &v18[v15[7]];
  *v23 = v22;
  v23[1] = v24;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545FEDE4();
  sub_2545FEF94();
  (*(v10 + 8))(v13, v39);
  v26 = sub_2545FEFA4();
  v28 = v27;
  (*(v6 + 8))(v9, v40);
  v29 = &v18[v15[8]];
  *v29 = v26;
  v29[1] = v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = sub_2545FEDD4();
  v32 = &v18[v15[9]];
  *v32 = v31;
  v32[1] = v33;
  sub_2545D850C(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606728, &qword_254601DC0);
  v34 = sub_2545FEE24();
  v35 = v41;
  v36 = swift_dynamicCast();
  LOBYTE(v26) = v36;
  (*(*(v34 - 8) + 56))(v35, v36 ^ 1u, 1, v34);
  sub_2545B612C(v35, &qword_27F606A18, &qword_254601DB8);
  v18[v15[10]] = v26;
  sub_2545EBC1C(v18, v42, type metadata accessor for TileElementInfo);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2545E53BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v96 = a3;
  v98 = a2;
  v99 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v97 = &v82 - v7;
  v8 = sub_2545FEE64();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2545FEEA4();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v11);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2545FEDA4();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = *(v91 + 64);
  MEMORY[0x28223BE20](v14);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2545FEE44();
  v88 = *(v17 - 8);
  v89 = v17;
  v18 = *(v88 + 64);
  MEMORY[0x28223BE20](v17);
  v85 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2545FEE84();
  v87 = *(v20 - 8);
  v21 = *(v87 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2545FEE24();
  v86 = *(v24 - 8);
  v25 = *(v86 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2545FEE04();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ElementID();
  v34 = a1;
  v35 = *(a1 + *(result + 20));
  if (v35 <= 3)
  {
    if (*(a1 + *(result + 20)) <= 1u)
    {
      if (*(a1 + *(result + 20)))
      {
        v59 = sub_2545FED34();
        if (*(v59 + 16))
        {
          v60 = sub_2545C563C(v34);
          if (v61)
          {
            v62 = v86;
            (*(v86 + 16))(v27, *(v59 + 56) + *(v86 + 72) * v60, v24);

            v63 = v99;
            v99[3] = v24;
            v63[4] = sub_2545EBD04(&qword_27F606A50, MEMORY[0x277D15D80]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
            return (*(v62 + 32))(boxed_opaque_existential_1, v27, v24);
          }
        }
      }

      else
      {
        v36 = sub_2545FED44();
        if (*(v36 + 16))
        {
          v37 = sub_2545C563C(v34);
          if (v38)
          {
            (*(v29 + 16))(v32, *(v36 + 56) + *(v29 + 72) * v37, v28);

            v39 = v99;
            v99[3] = v28;
            v39[4] = sub_2545EBD04(&qword_27F606A58, MEMORY[0x277D15D48]);
            v40 = __swift_allocate_boxed_opaque_existential_1(v39);
            return (*(v29 + 32))(v40, v32, v28);
          }
        }
      }

      goto LABEL_29;
    }

    if (v35 == 2)
    {
      v50 = sub_2545FED64();
      if (*(v50 + 16))
      {
        v51 = sub_2545C563C(v34);
        if (v52)
        {
          v53 = v87;
          (*(v87 + 16))(v23, *(v50 + 56) + *(v87 + 72) * v51, v20);

          v54 = v99;
          v99[3] = v20;
          v54[4] = sub_2545EBD04(&qword_27F606A48, MEMORY[0x277D16448]);
          v55 = __swift_allocate_boxed_opaque_existential_1(v54);
          return (*(v53 + 32))(v55, v23, v20);
        }
      }

      goto LABEL_29;
    }

    v68 = sub_2545FED54();
    if (*(v68 + 16))
    {
      v69 = sub_2545C563C(v34);
      if (v70)
      {
        v44 = v88;
        v46 = v89;
        v45 = v85;
        (*(v88 + 16))(v85, *(v68 + 56) + *(v88 + 72) * v69, v89);

        v47 = v99;
        v99[3] = v46;
        v48 = &unk_27F606A40;
        v49 = MEMORY[0x277D16060];
        goto LABEL_28;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  if (*(a1 + *(result + 20)) <= 5u)
  {
    if (v35 == 4)
    {
      v41 = sub_2545FED14();
      if (!*(v41 + 16))
      {
        goto LABEL_29;
      }

      v42 = sub_2545C563C(v34);
      if ((v43 & 1) == 0)
      {
        goto LABEL_29;
      }

      v45 = v90;
      v44 = v91;
      v46 = v92;
      (*(v91 + 16))(v90, *(v41 + 56) + *(v91 + 72) * v42, v92);

      v47 = v99;
      v99[3] = v46;
      v48 = &unk_27F606A38;
      v49 = MEMORY[0x277D15AC0];
    }

    else
    {
      v65 = sub_2545FED74();
      if (!*(v65 + 16))
      {
        goto LABEL_29;
      }

      v66 = sub_2545C563C(v34);
      if ((v67 & 1) == 0)
      {
        goto LABEL_29;
      }

      v45 = v93;
      v44 = v94;
      v46 = v95;
      (*(v94 + 16))(v93, *(v65 + 56) + *(v94 + 72) * v66, v95);

      v47 = v99;
      v99[3] = v46;
      v48 = &unk_27F606A30;
      v49 = MEMORY[0x277D164A0];
    }

LABEL_28:
    v47[4] = sub_2545EBD04(v48, v49);
    v71 = __swift_allocate_boxed_opaque_existential_1(v47);
    return (*(v44 + 32))(v71, v45, v46);
  }

  if (v35 == 6)
  {
    v56 = v97;
    sub_2545B60C4(v96, v97, &qword_27F606758, &unk_254601DD0);
    v57 = sub_2545FEED4();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v56, 1, v57) != 1)
    {
      v73 = sub_2545FEEB4();
      (*(v58 + 8))(v56, v57);
      if (sub_2545B1170() == 0xDEFFDEED00000000)
      {
        v74 = sub_2545B118C();
        if (!*(v73 + 16))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v74 = 0;
        if (!*(v73 + 16))
        {
          goto LABEL_29;
        }
      }

      v75 = sub_2545C56D4(v74);
      if (v76)
      {
        v78 = v82;
        v77 = v83;
        v79 = v84;
        (*(v83 + 16))(v82, *(v73 + 56) + *(v83 + 72) * v75, v84);

        v80 = v99;
        v99[3] = v79;
        v80[4] = sub_2545EBD04(&qword_27F606A28, MEMORY[0x277D16410]);
        v81 = __swift_allocate_boxed_opaque_existential_1(v80);
        return (*(v77 + 32))(v81, v78, v79);
      }

      goto LABEL_29;
    }

    result = sub_2545B612C(v56, &qword_27F606758, &unk_254601DD0);
  }

LABEL_30:
  v72 = v99;
  v99[4] = 0;
  *v72 = 0u;
  *(v72 + 1) = 0u;
  return result;
}

uint64_t sub_2545E5DC0()
{
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    type metadata accessor for IntentsService();
    v0[6] = swift_initStaticObject();
    sub_2545FF354();
    v0[7] = sub_2545FF344();
    v1 = sub_2545FF334();
    v3 = v2;
    v4 = sub_2545E6080;
  }

  else
  {
    v0[2] = sub_2545FEBD4();
    sub_2545FECE4();
    v0[3] = sub_2545FECD4();
    sub_2545EBD04(&qword_27F6064D8, MEMORY[0x277D15960]);
    v1 = sub_2545FF334();
    v3 = v5;
    v4 = sub_2545E5F04;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_2545E5F04()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_2545FEA14();
  v0[4] = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545E5F74, 0, 0);
}

uint64_t sub_2545E5F74()
{
  sub_2545FF354();
  *(v0 + 40) = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545E6008, v2, v1);
}

uint64_t sub_2545E6008()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_2545FEA14();
  v4 = MEMORY[0x259C11A70](v3);
  sub_2545FEA14();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2545E6080()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_2545FEA14();
  v3 = sub_2545B027C();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2545E60E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606868, &qword_254600F40) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545E6190, 0, 0);
}

uint64_t sub_2545E6190()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    sub_2545FECC4();
    if (sub_2545FECA4() != 7)
    {
      *(v0 + 48) = sub_2545FEBD4();
      sub_2545FECE4();
      *(v0 + 56) = sub_2545FECD4();
      sub_2545EBD04(&qword_27F6064D8, MEMORY[0x277D15960]);
      v12 = sub_2545FF334();
      v14 = v13;
      v8 = sub_2545E6378;
      v9 = v12;
      v10 = v14;

      return MEMORY[0x2822009F8](v8, v9, v10);
    }

    v7 = *(v0 + 24);
    v8 = sub_2545FACE8(0);
    if (v8 >> 62)
    {
      v15 = v8;
      v16 = sub_2545FF674();
      v8 = v15;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x259C124A0](0);
        goto LABEL_11;
      }

      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v8 + 32);
LABEL_11:
        v1 = v11;

        goto LABEL_2;
      }

      __break(1u);
      return MEMORY[0x2822009F8](v8, v9, v10);
    }

    v1 = 0;
  }

LABEL_2:
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_2545E6378()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_2545FEA14();
  v0[8] = sub_2545FEBC4();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2545E641C;

  return sub_2545DD5C0(0);
}

uint64_t sub_2545E641C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v8 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = sub_2545E67B8;
  }

  else
  {
    v6 = v3[8];
    sub_2545FEA14();
    v5 = sub_2545E6538;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2545E6538()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  if (*(v1 + 16))
  {
    v3 = sub_2545FEB64();
    v4 = *(v3 - 8);
    (*(v4 + 16))(v2, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    (*(v4 + 56))(v2, 0, 1, v3);
  }

  else
  {
    v5 = *(v0 + 80);

    v3 = sub_2545FEB64();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  }

  v6 = *(v0 + 32);
  sub_2545B60C4(*(v0 + 40), v6, &qword_27F606868, &qword_254600F40);
  sub_2545FEB64();
  v7 = *(v3 - 8);
  v8 = (*(v7 + 48))(v6, 1, v3);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  if (v8 == 1)
  {
    sub_2545B612C(*(v0 + 40), &qword_27F606868, &qword_254600F40);
    sub_2545B612C(v9, &qword_27F606868, &qword_254600F40);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 24);
    v13 = *(v0 + 32);
    v11 = sub_2545FEB44();
    sub_2545B612C(v10, &qword_27F606868, &qword_254600F40);
    (*(v7 + 8))(v9, v3);
  }

  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v16 = *(v0 + 16);

  v17 = *(v0 + 8);

  return v17(v11);
}

uint64_t sub_2545E67B8()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  sub_2545FEA14();

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_2545E6830(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2545FEB04();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(*(type metadata accessor for HomeID() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545E698C, 0, 0);
}

uint64_t sub_2545E698C()
{
  v0[10] = sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v0[21] = sub_2545FF354();
    v0[22] = sub_2545FF344();
    v1 = sub_2545FF334();
    v3 = v2;
    v4 = sub_2545E7104;
  }

  else
  {
    v0[11] = sub_2545FEBD4();
    v0[12] = sub_2545FECE4();
    v0[13] = sub_2545FECD4();
    v0[14] = sub_2545EBD04(&qword_27F6064D8, MEMORY[0x277D15960]);
    v1 = sub_2545FF334();
    v3 = v5;
    v4 = sub_2545E6AC8;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_2545E6AC8()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_2545FEA14();
  v0[15] = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545E6B3C, 0, 0);
}

uint64_t sub_2545E6B3C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = [*(v0 + 24) uniqueIdentifier];
  sub_2545FEAC4();

  *(v0 + 128) = sub_2545FECD4();
  v6 = sub_2545FF334();
  *(v0 + 136) = v6;
  *(v0 + 144) = v5;

  return MEMORY[0x2822009F8](sub_2545E6BFC, v6, v5);
}

uint64_t sub_2545E6BFC()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[9], v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v5 = sub_2545FECF4();
  sub_2545C3148(v2, v5, v6, v7, v8, v1);

  sub_2545B612C(v2, &qword_27F6064D0, &unk_2546002B0);
  v9 = *(MEMORY[0x277D15208] + 4);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_2545E6D54;
  v11 = v0[15];
  v12 = v0[8];
  v13 = v0[2];
  v14 = MEMORY[0x277D159D8];
  v15 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v13, v12, v14, v15);
}

uint64_t sub_2545E6D54()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_2545E6FEC;
  }

  else
  {
    v7 = sub_2545E6E90;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545E6E90()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[9];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545EBD4C(v3, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545E6F20, 0, 0);
}

uint64_t sub_2545E6F20()
{
  v1 = sub_2545FED84();
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  (*(*(v1 - 8) + 56))(v0[2], 0, 1, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2545E6FEC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[9];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545EBD4C(v3, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545E707C, 0, 0);
}

uint64_t sub_2545E707C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_2545E7104()
{
  v1 = v0[22];
  v2 = v0[10];
  sub_2545FEA14();
  v0[23] = sub_2545FEC94();

  return MEMORY[0x2822009F8](sub_2545E7178, 0, 0);
}

uint64_t sub_2545E7178()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);
  v3 = [*(v0 + 24) uniqueIdentifier];
  sub_2545FEAC4();

  *(v0 + 192) = sub_2545FF344();
  v5 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545E7238, v5, v4);
}

uint64_t sub_2545E7238()
{
  v2 = v0[23];
  v1 = v0[24];
  sub_2545FEA14();
  v0[25] = sub_2545FEC24();

  return MEMORY[0x2822009F8](sub_2545E72AC, 0, 0);
}

uint64_t sub_2545E72AC()
{
  v1 = v0[6];
  if (*(v0[25] + 16))
  {
    v2 = sub_2545C563C(v0[6]);
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    if (v6)
    {
      v7 = v2;
      v8 = v0[2];
      v9 = *(v0[25] + 56);
      v10 = sub_2545FED84();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, v9 + *(v11 + 72) * v7, v10);
      (*(v4 + 8))(v3, v5);

      v12 = 0;
      goto LABEL_7;
    }

    v16 = v0[25];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v13 = v0[4];
    v14 = v0[5];
    v15 = v0[25];

    (*(v14 + 8))(v1, v13);
  }

  v10 = sub_2545FED84();
  v11 = *(v10 - 8);
  v12 = 1;
LABEL_7:
  v18 = v0[8];
  v17 = v0[9];
  v20 = v0[6];
  v19 = v0[7];
  (*(v11 + 56))(v0[2], v12, 1, v10);

  v21 = v0[1];

  return v21();
}

uint64_t sub_2545E74C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2545FEB04();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545E7594, 0, 0);
}

uint64_t sub_2545E7594()
{
  v0[8] = sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v0[15] = sub_2545FF354();
    v0[16] = sub_2545FF344();
    v1 = sub_2545FF334();
    v3 = v2;
    v4 = sub_2545E7B88;
  }

  else
  {
    v0[9] = sub_2545FEBD4();
    sub_2545FECE4();
    v0[10] = sub_2545FECD4();
    sub_2545EBD04(&qword_27F6064D8, MEMORY[0x277D15960]);
    v1 = sub_2545FF334();
    v3 = v5;
    v4 = sub_2545E76C8;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_2545E76C8()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_2545FEA14();
  v0[11] = sub_2545FEBC4();
  v3 = *(MEMORY[0x277D15218] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_2545E776C;

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545E776C(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 104) = a1;

  sub_2545FEA14();
  sub_2545FEF44();
  sub_2545EBD04(&qword_27F606698, MEMORY[0x277D16AF0]);
  v6 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545E78E0, v6, v5);
}

uint64_t sub_2545E78E0()
{
  v1 = *(v0 + 104);
  *(v0 + 112) = sub_2545FEF34();
  sub_2545FEA14();

  return MEMORY[0x2822009F8](sub_2545E7954, 0, 0);
}

uint64_t sub_2545E7954()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = [*(v0 + 24) uniqueIdentifier];
  sub_2545FEAC4();

  v4 = *(v0 + 56);
  if (*(v1 + 16))
  {
    v5 = sub_2545C563C(*(v0 + 56));
    v6 = *(v0 + 56);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    if (v9)
    {
      v10 = v5;
      v11 = *(v0 + 16);
      v12 = *(*(v0 + 112) + 56);
      v13 = sub_2545FEED4();
      v14 = *(v13 - 8);
      (*(v14 + 16))(v11, v12 + *(v14 + 72) * v10, v13);
      (*(v8 + 8))(v6, v7);

      v15 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 112);

    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);
    v18 = *(v0 + 112);

    (*(v17 + 8))(v4, v16);
  }

  v13 = sub_2545FEED4();
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_7:
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  (*(v14 + 56))(*(v0 + 16), v15, 1, v13);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2545E7B88()
{
  v1 = v0[16];
  v2 = v0[8];
  sub_2545FEA14();
  v0[17] = sub_2545FEC94();

  return MEMORY[0x2822009F8](sub_2545E7BFC, 0, 0);
}

uint64_t sub_2545E7BFC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 48);
  v3 = [*(v0 + 24) uniqueIdentifier];
  sub_2545FEAC4();

  *(v0 + 144) = sub_2545FF344();
  v5 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545E7CBC, v5, v4);
}

uint64_t sub_2545E7CBC()
{
  v2 = v0[17];
  v1 = v0[18];
  sub_2545FEA14();
  v0[19] = sub_2545FEC34();

  return MEMORY[0x2822009F8](sub_2545E7D30, 0, 0);
}

uint64_t sub_2545E7D30()
{
  v1 = v0[6];
  if (*(v0[19] + 16))
  {
    v2 = sub_2545C563C(v0[6]);
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    if (v6)
    {
      v7 = v2;
      v8 = v0[2];
      v9 = *(v0[19] + 56);
      v10 = sub_2545FEED4();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, v9 + *(v11 + 72) * v7, v10);
      (*(v4 + 8))(v3, v5);

      v12 = 0;
      goto LABEL_7;
    }

    v16 = v0[19];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v13 = v0[4];
    v14 = v0[5];
    v15 = v0[19];

    (*(v14 + 8))(v1, v13);
  }

  v10 = sub_2545FEED4();
  v11 = *(v10 - 8);
  v12 = 1;
LABEL_7:
  v18 = v0[6];
  v17 = v0[7];
  (*(v11 + 56))(v0[2], v12, 1, v10);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2545E7F48()
{
  v1 = *v0;
  sub_2545FF834();
  MEMORY[0x259C12730](v1);
  return sub_2545FF864();
}

uint64_t sub_2545E7FBC()
{
  v1 = *v0;
  sub_2545FF834();
  MEMORY[0x259C12730](v1);
  return sub_2545FF864();
}

uint64_t sub_2545E8000()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x626D79536E6F6369;
  v4 = 0x656D614E6D6F6F72;
  if (v1 != 3)
  {
    v4 = 0x656E6563537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2545E809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2545EBA68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2545E80D0(uint64_t a1)
{
  v2 = sub_2545E9A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545E810C(uint64_t a1)
{
  v2 = sub_2545E9A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TileElementInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069C8, &qword_254601B60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E9A94();
  sub_2545FF884();
  v23[15] = 0;
  type metadata accessor for ElementID();
  sub_2545EBD04(&qword_27F6069D8, type metadata accessor for ElementID);
  sub_2545FF774();
  if (!v2)
  {
    v11 = type metadata accessor for TileElementInfo();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v23[14] = 1;
    sub_2545FF754();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v23[13] = 2;
    sub_2545FF754();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v23[12] = 3;
    sub_2545FF744();
    v21 = *(v3 + v11[8]);
    v23[11] = 4;
    sub_2545FF764();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TileElementInfo.hash(into:)()
{
  sub_2545FEB04();
  sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254601E28[*(v0 + *(v1 + 20))]);
  v2 = type metadata accessor for TileElementInfo();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_2545FF1B4();
  v6 = (v0 + v2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_2545FF1B4();
  v9 = (v0 + v2[7]);
  if (v9[1])
  {
    v10 = *v9;
    sub_2545FF854();
    sub_2545FF1B4();
  }

  else
  {
    sub_2545FF854();
  }

  v11 = *(v0 + v2[8]);
  return sub_2545FF854();
}

uint64_t TileElementInfo.hashValue.getter()
{
  sub_2545FF834();
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t TileElementInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for ElementID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6069E0, &qword_254601B68);
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v30 - v8;
  v10 = type metadata accessor for TileElementInfo();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545E9A94();
  v35 = v9;
  sub_2545FF874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v32;
  v16 = v13;
  v40 = 0;
  sub_2545EBD04(&qword_27F6069E8, type metadata accessor for ElementID);
  v18 = v33;
  v17 = v34;
  sub_2545FF714();
  sub_2545EBC1C(v18, v16, type metadata accessor for ElementID);
  v39 = 1;
  v19 = sub_2545FF6F4();
  v20 = (v16 + v10[5]);
  *v20 = v19;
  v20[1] = v21;
  v38 = 2;
  v22 = sub_2545FF6F4();
  v23 = (v16 + v10[6]);
  *v23 = v22;
  v23[1] = v24;
  v37 = 3;
  v25 = sub_2545FF6E4();
  v26 = (v16 + v10[7]);
  *v26 = v25;
  v26[1] = v27;
  v36 = 4;
  v28 = sub_2545FF704();
  (*(v15 + 8))(v35, v17);
  *(v16 + v10[8]) = v28 & 1;
  sub_2545E9AE8(v16, v31, type metadata accessor for TileElementInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2545EBD4C(v16, type metadata accessor for TileElementInfo);
}

uint64_t sub_2545E89B8()
{
  sub_2545FF834();
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545E89FC()
{
  sub_2545FF834();
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545E8A6C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for ElementID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v26 = &v25 - v10;
  v27 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v29 = v4;
  v13 = qword_254601E28[*(a2 + *(v4 + 20))];
  MEMORY[0x259C12730](v13);
  v14 = sub_2545FF864();
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    do
    {
      sub_2545E9AE8(*(v11 + 48) + v18 * v16, v9, type metadata accessor for ElementID);
      if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
      {
        v19 = v9[*(v29 + 20)];
        sub_2545EBD4C(v9, type metadata accessor for ElementID);
        if (qword_254601E28[v19] == v13)
        {
          sub_2545EBD4C(a2, type metadata accessor for ElementID);
          sub_2545E9AE8(*(v11 + 48) + v18 * v16, v28, type metadata accessor for ElementID);
          return 0;
        }
      }

      else
      {
        sub_2545EBD4C(v9, type metadata accessor for ElementID);
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v21 = v27;
  v22 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v26;
  sub_2545E9AE8(a2, v26, type metadata accessor for ElementID);
  v30 = *v21;
  sub_2545E90EC(v24, v16, isUniquelyReferenced_nonNull_native);
  *v21 = v30;
  sub_2545EBC1C(a2, v28, type metadata accessor for ElementID);
  return 1;
}

uint64_t sub_2545E8D78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ElementID();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A60, &unk_254601E10);
  result = sub_2545FF564();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      sub_2545EBC1C(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for ElementID);
      v25 = *(v11 + 40);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0]);
      sub_2545FF0C4();
      MEMORY[0x259C12730](qword_254601E28[v7[*(v38 + 20)]]);
      result = sub_2545FF864();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2545EBC1C(v7, *(v11 + 48) + v19 * v24, type metadata accessor for ElementID);
      ++*(v11 + 16);
      v8 = v36;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v35;
    *(v8 + 16) = 0;
  }

  result = sub_2545FEA14();
  *v2 = v11;
  return result;
}

uint64_t sub_2545E90EC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ElementID();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v27 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_2545E8D78(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2545E93C8();
      goto LABEL_15;
    }

    sub_2545E95E0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v15 = qword_254601E28[*(a1 + *(v7 + 20))];
  MEMORY[0x259C12730](v15);
  v16 = sub_2545FF864();
  v17 = -1 << *(v13 + 32);
  a2 = v16 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v28 + 72);
    do
    {
      sub_2545E9AE8(*(v13 + 48) + v19 * a2, v10, type metadata accessor for ElementID);
      if (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0())
      {
        v20 = v10[*(v7 + 20)];
        sub_2545EBD4C(v10, type metadata accessor for ElementID);
        if (qword_254601E28[v20] == v15)
        {
          sub_2545FF7C4();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_2545EBD4C(v10, type metadata accessor for ElementID);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v21 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2545EBC1C(a1, *(v21 + 48) + *(v28 + 72) * a2, type metadata accessor for ElementID);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

void *sub_2545E93C8()
{
  v1 = v0;
  v2 = type metadata accessor for ElementID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A60, &unk_254601E10);
  v7 = *v0;
  v8 = sub_2545FF554();
  v9 = v8;
  if (*(v7 + 16))
  {
    v24 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_2545E9AE8(*(v7 + 48) + v22, v6, type metadata accessor for ElementID);
        result = sub_2545EBC1C(v6, *(v9 + 48) + v22, type metadata accessor for ElementID);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        result = sub_2545FEA14();
        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_2545FEA14();
LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_2545E95E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ElementID();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A60, &unk_254601E10);
  result = sub_2545FF564();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v36 + 72);
      sub_2545E9AE8(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for ElementID);
      v25 = *(v11 + 40);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545EBD04(&qword_27F606430, MEMORY[0x277CC95F0]);
      sub_2545FF0C4();
      MEMORY[0x259C12730](qword_254601E28[v7[*(v37 + 20)]]);
      result = sub_2545FF864();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2545EBC1C(v7, *(v11 + 48) + v19 * v24, type metadata accessor for ElementID);
      ++*(v11 + 16);
      v8 = v35;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        result = sub_2545FEA14();
        v2 = v34;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    result = sub_2545FEA14();
LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v4 = type metadata accessor for ElementID();
  if (qword_254601E28[*(a1 + *(v4 + 20))] != qword_254601E28[*(a2 + *(v4 + 20))])
  {
    goto LABEL_22;
  }

  v5 = type metadata accessor for TileElementInfo();
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_2545FF7B4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v11 = v5[6];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_2545FF7B4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (v20)
    {
      v21 = *v17 == *v19 && v18 == v20;
      if (v21 || (sub_2545FF7B4() & 1) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v22 = 0;
    return v22 & 1;
  }

  if (v20)
  {
    goto LABEL_22;
  }

LABEL_20:
  v22 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  return v22 & 1;
}

uint64_t type metadata accessor for TileElementInfo()
{
  result = qword_281532D58;
  if (!qword_281532D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2545E9A94()
{
  result = qword_27F6069D0;
  if (!qword_27F6069D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6069D0);
  }

  return result;
}

uint64_t sub_2545E9AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2545E9C08()
{
  type metadata accessor for ElementID();
  if (v0 <= 0x3F)
  {
    sub_2545E9CA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2545E9CA4()
{
  if (!qword_27F6069F8)
  {
    v0 = sub_2545FF4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F6069F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for TileElementInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TileElementInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2545E9E48()
{
  result = qword_27F606A00;
  if (!qword_27F606A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A00);
  }

  return result;
}

unint64_t sub_2545E9EA0()
{
  result = qword_27F606A08;
  if (!qword_27F606A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A08);
  }

  return result;
}

unint64_t sub_2545E9EF8()
{
  result = qword_27F606A10;
  if (!qword_27F606A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A10);
  }

  return result;
}

uint64_t sub_2545E9F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElementID();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = *(v15 + 80);
  v33 = *(v15 + 72);
  v30 = (v19 + 32) & ~v19;
  v20 = a1 + v30;
  v21 = MEMORY[0x277D84F90];
  v31 = v8;
  v32 = a2;
  do
  {
    sub_2545E9AE8(v20, v17, type metadata accessor for ElementID);
    sub_2545E9AE8(v17, v11, type metadata accessor for ElementID);
    v23 = sub_2545E8A6C(v14, v11);
    sub_2545EBD4C(v14, type metadata accessor for ElementID);
    if (v23)
    {
      sub_2545EBC1C(v17, v8, type metadata accessor for ElementID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2545DBDE4(0, *(v21 + 16) + 1, 1);
        v21 = v34;
      }

      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2545DBDE4(v25 > 1, v26 + 1, 1);
        v21 = v34;
      }

      *(v21 + 16) = v26 + 1;
      v22 = v33;
      v27 = v21 + v30 + v26 * v33;
      v8 = v31;
      sub_2545EBC1C(v31, v27, type metadata accessor for ElementID);
    }

    else
    {
      sub_2545EBD4C(v17, type metadata accessor for ElementID);
      v22 = v33;
    }

    v20 += v22;
    --v18;
  }

  while (v18);
  return v21;
}

uint64_t sub_2545EA1F8(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A18, &qword_254601DB8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = sub_2545FEFB4();
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v7 = sub_2545FEFC4();
  v2[23] = v7;
  v8 = *(v7 - 8);
  v2[24] = v8;
  v9 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();
  v10 = type metadata accessor for TileElementInfo();
  v2[26] = v10;
  v11 = *(v10 - 8);
  v2[27] = v11;
  v12 = *(v11 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606758, &unk_254601DD0) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v14 = sub_2545FED84();
  v2[31] = v14;
  v15 = *(v14 - 8);
  v2[32] = v15;
  v16 = *(v15 + 64) + 15;
  v2[33] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606760, &qword_254600C40) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545EA48C, 0, 0);
}

uint64_t sub_2545EA48C()
{
  v20 = v0;
  if (*(v0[17] + 16))
  {
    v1 = swift_task_alloc();
    v0[36] = v1;
    *v1 = v0;
    v1[1] = sub_2545EA6FC;

    return sub_2545E5DA4();
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v3 = sub_2545FF0A4();
    __swift_project_value_buffer(v3, qword_27F60ADD8);
    v4 = sub_2545FF084();
    v5 = sub_2545FF454();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2545F0FB4(0xD000000000000012, 0x8000000254603C70, &v19);
      _os_log_impl(&dword_2545AB000, v4, v5, "%s no elements to build", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x259C12CB0](v7, -1, -1);
      MEMORY[0x259C12CB0](v6, -1, -1);
    }

    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[33];
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    v14 = v0[25];
    v15 = v0[22];
    v16 = v0[19];

    v17 = v0[1];
    v18 = MEMORY[0x277D84F90];

    return v17(v18);
  }
}

uint64_t sub_2545EA6FC(uint64_t a1)
{
  v3 = *(*v2 + 288);
  v4 = *v2;
  v4[37] = a1;

  if (v1)
  {
    v6 = v4[34];
    v5 = v4[35];
    v7 = v4[33];
    v9 = v4[29];
    v8 = v4[30];
    v10 = v4[28];
    v11 = v4[25];
    v12 = v4[22];
    v13 = v4[19];

    v14 = v4[1];

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2545EA8C0, 0, 0);
  }
}

uint64_t sub_2545EA8C0()
{
  v1 = v0[37];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[38] = v3;
    *v3 = v0;
    v3[1] = sub_2545EAA2C;
    v4 = v0[18];

    return sub_2545E60E8(v4, v2);
  }

  else
  {
    v7 = v0[34];
    v6 = v0[35];
    v8 = v0[33];
    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[28];
    v12 = v0[25];
    v13 = v0[22];
    v14 = v0[19];

    v15 = v0[1];
    v16 = MEMORY[0x277D84F90];

    return v15(v16);
  }
}

uint64_t sub_2545EAA2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_2545EB894;
  }

  else
  {

    v5 = sub_2545EAB48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2545EAB48()
{
  v23 = v0;
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 328) = v2;
    *v2 = v0;
    v2[1] = sub_2545EAE10;
    v3 = *(v0 + 280);

    return sub_2545E6830(v3, v1);
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v5 = sub_2545FF0A4();
    __swift_project_value_buffer(v5, qword_27F60ADD8);
    v6 = sub_2545FF084();
    v7 = sub_2545FF454();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_2545F0FB4(0xD000000000000012, 0x8000000254603C70, &v22);
      *(v8 + 12) = 2112;
      *(v8 + 14) = 0;
      *v9 = 0;
      _os_log_impl(&dword_2545AB000, v6, v7, "%s home=%@ not found, returning 0 elements", v8, 0x16u);
      sub_2545B612C(v9, &qword_27F606658, &qword_254600D70);
      MEMORY[0x259C12CB0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x259C12CB0](v10, -1, -1);
      MEMORY[0x259C12CB0](v8, -1, -1);
    }

    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 264);
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v16 = *(v0 + 224);
    v17 = *(v0 + 200);
    v18 = *(v0 + 176);
    v19 = *(v0 + 152);

    v20 = *(v0 + 8);
    v21 = MEMORY[0x277D84F90];

    return v20(v21);
  }
}

uint64_t sub_2545EAE10()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_2545EB97C;
  }

  else
  {
    v3 = sub_2545EAF24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545EAF24()
{
  v32 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_2545B60C4(*(v0 + 280), v1, &qword_27F606760, &qword_254600C40);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_2545B612C(*(v0 + 272), &qword_27F606760, &qword_254600C40);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = sub_2545FF0A4();
    __swift_project_value_buffer(v5, qword_27F60ADD8);
    v6 = v4;
    v7 = sub_2545FF084();
    v8 = sub_2545FF454();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 144);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_2545F0FB4(0xD000000000000012, 0x8000000254603C70, &v31);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v6;
      *v11 = v9;
      v13 = v6;
      _os_log_impl(&dword_2545AB000, v7, v8, "%s home=%@ not found in DataModel StateSnapshot", v10, 0x16u);
      sub_2545B612C(v11, &qword_27F606658, &qword_254600D70);
      MEMORY[0x259C12CB0](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x259C12CB0](v12, -1, -1);
      MEMORY[0x259C12CB0](v10, -1, -1);
    }

    v14 = *(v0 + 296);
    v15 = *(v0 + 280);

    sub_2545B612C(v15, &qword_27F606760, &qword_254600C40);
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v18 = *(v0 + 264);
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    v21 = *(v0 + 224);
    v22 = *(v0 + 200);
    v23 = *(v0 + 176);
    v24 = *(v0 + 152);

    v25 = *(v0 + 8);
    v26 = MEMORY[0x277D84F90];

    return v25(v26);
  }

  else
  {
    v28 = *(v0 + 312);
    (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 272), *(v0 + 248));
    v29 = swift_task_alloc();
    *(v0 + 344) = v29;
    *v29 = v0;
    v29[1] = sub_2545EB298;
    v30 = *(v0 + 240);

    return sub_2545E74C8(v30, v28);
  }
}

uint64_t sub_2545EB298()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2545EB394, 0, 0);
}

uint64_t sub_2545EB394()
{
  v69 = v0;
  v1 = v0[42];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[17];
  v67 = MEMORY[0x277D84FA0];
  v5 = sub_2545FE8E4();
  v6 = sub_2545E9F4C(v5, &v67);

  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = sub_2545E4D54(sub_2545EBC84, v7, v6);

  v9 = v8[2];
  if (v9)
  {
    v60 = v0[26];
    v61 = v0[27];
    v10 = v0[24];
    v11 = v0[21];
    v68 = MEMORY[0x277D84F90];
    sub_2545DBDC4(0, v9, 0);
    v12 = (v8 + 4);
    v59 = (v10 + 8);
    v13 = v68;
    v58 = (v11 + 8);
    do
    {
      v65 = v0[29];
      v66 = v9;
      v14 = v0[28];
      v15 = v0[25];
      v16 = v0[22];
      v62 = v0[23];
      v63 = v0[20];
      v64 = v0[19];
      sub_2545D850C(v12, (v0 + 2));
      sub_2545D850C((v0 + 2), (v0 + 7));
      v17 = v13;
      v18 = v0[10];
      v19 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v18);
      sub_2545F3D54(v18, v19, v14);
      v20 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v21 = sub_2545FEDC4();
      v22 = (v14 + v60[5]);
      *v22 = v21;
      v22[1] = v23;
      v24 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = v17;
      sub_2545FEDE4();
      sub_2545FEF94();
      (*v59)(v15, v62);
      v25 = sub_2545FEFA4();
      v27 = v26;
      (*v58)(v16, v63);
      v28 = (v14 + v60[6]);
      *v28 = v25;
      v28[1] = v27;
      v29 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v30 = sub_2545FEDD4();
      v31 = (v14 + v60[7]);
      *v31 = v30;
      v31[1] = v32;
      sub_2545D850C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606728, &qword_254601DC0);
      v33 = sub_2545FEE24();
      v34 = swift_dynamicCast();
      LOBYTE(v25) = v34;
      (*(*(v33 - 8) + 56))(v64, v34 ^ 1u, 1, v33);
      sub_2545B612C(v64, &qword_27F606A18, &qword_254601DB8);
      *(v14 + v60[8]) = v25;
      sub_2545EBC1C(v14, v65, type metadata accessor for TileElementInfo);
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v68 = v13;
      v36 = *(v13 + 16);
      v35 = *(v13 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2545DBDC4(v35 > 1, v36 + 1, 1);
        v13 = v68;
      }

      v37 = v0[29];
      *(v13 + 16) = v36 + 1;
      sub_2545EBC1C(v37, v13 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v36, type metadata accessor for TileElementInfo);
      v12 += 40;
      v9 = v66 - 1;
    }

    while (v66 != 1);
    v38 = v0[39];
    v39 = v0[37];
    sub_2545B612C(v0[35], &qword_27F606760, &qword_254600C40);
  }

  else
  {
    v40 = v0[39];
    v41 = v0[37];
    v42 = v0[35];

    sub_2545B612C(v42, &qword_27F606760, &qword_254600C40);
    v13 = MEMORY[0x277D84F90];
  }

  v44 = v0[32];
  v43 = v0[33];
  v46 = v0[30];
  v45 = v0[31];

  sub_2545B612C(v46, &qword_27F606758, &unk_254601DD0);
  (*(v44 + 8))(v43, v45);
  v48 = v0[34];
  v47 = v0[35];
  v49 = v0[33];
  v51 = v0[29];
  v50 = v0[30];
  v52 = v0[28];
  v53 = v0[25];
  v54 = v0[22];
  v55 = v0[19];

  v56 = v0[1];

  return v56(v13);
}

uint64_t sub_2545EB894()
{
  v1 = v0[40];
  v2 = v0[37];

  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[22];
  v11 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2545EB97C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);

  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2545EBA68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2545FF7B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_2545FF7B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL || (sub_2545FF7B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_2545FF7B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6563537369 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2545FF7B4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2545EBC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2545EBD04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2545EBD4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ToggleControlEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064C0, &qword_254601E70);
  swift_getKeyPath();
  result = sub_2545FE984();
  *a1 = result;
  return result;
}

uint64_t sub_2545EBE1C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_2545B3CAC(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_2545B3CAC(v10, v8);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v10, &qword_27F606520, &qword_2546002E0);
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t sub_2545EBF64()
{
  v1 = *(v0 + 16);
  v2 = sub_2545FEF74();
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2545EC020;

  return sub_2545CE4F0(1, v1, v2);
}

uint64_t sub_2545EC020(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v7 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_2545EC450;
  }

  else
  {
    v5 = sub_2545EC134;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2545EC134()
{
  v32 = v0;
  if (*(v0[4] + 16))
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
      v30 = v0[4];
    }

    v1 = v0[2];
    v2 = sub_2545FF0A4();
    __swift_project_value_buffer(v2, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545FE8E4();
    v3 = sub_2545FF084();
    v4 = sub_2545FF474();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[4];
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v8;
      *v7 = 136315394;
      v9 = type metadata accessor for ElementID();
      v10 = MEMORY[0x259C121B0](v6, v9);
      v12 = sub_2545F0FB4(v10, v11, &v31);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      v13 = type metadata accessor for ToggleControlEntity();
      v14 = MEMORY[0x259C121B0](v5, v13);
      v16 = sub_2545F0FB4(v14, v15, &v31);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_2545AB000, v3, v4, "ToggleControlEntityQuery.entities(for: %s) returned %s", v7, 0x16u);
      swift_arrayDestroy();
      v17 = v8;
LABEL_10:
      MEMORY[0x259C12CB0](v17, -1, -1);
      MEMORY[0x259C12CB0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v18 = v0[2];
    v19 = sub_2545FF0A4();
    __swift_project_value_buffer(v19, qword_27F60ADD8);
    sub_2545FE8E4();
    v3 = sub_2545FF084();
    v20 = sub_2545FF454();

    if (os_log_type_enabled(v3, v20))
    {
      v21 = v0[2];
      v7 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v7 = 136315138;
      v23 = type metadata accessor for ElementID();
      v24 = MEMORY[0x259C121B0](v21, v23);
      v26 = sub_2545F0FB4(v24, v25, &v31);

      *(v7 + 4) = v26;
      _os_log_impl(&dword_2545AB000, v3, v20, "ToggleControlEntityQuery.entities(for: %s) returned empty", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v17 = v22;
      goto LABEL_10;
    }
  }

  v27 = v0[4];
  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_2545EC450()
{
  v22 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = sub_2545FF0A4();
  __swift_project_value_buffer(v3, qword_27F60ADD8);
  sub_2545FE8E4();
  v4 = v1;
  v5 = sub_2545FF084();
  v6 = sub_2545FF454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = type metadata accessor for ElementID();
    v13 = MEMORY[0x259C121B0](v8, v12);
    v15 = sub_2545F0FB4(v13, v14, &v21);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_2545AB000, v5, v6, "ToggleControlEntityQuery.entities(for: %s) threw error %@", v9, 0x16u);
    sub_2545B612C(v10, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C12CB0](v11, -1, -1);
    MEMORY[0x259C12CB0](v9, -1, -1);
  }

  v18 = *(v0 + 8);
  v19 = MEMORY[0x277D84F90];

  return v18(v19);
}

uint64_t ToggleControlEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = *(*(type metadata accessor for SelectedHomeEntity() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A68, &qword_254601EC0);
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *v3;
  v4[10] = v10;
  v4[11] = v11;

  return MEMORY[0x2822009F8](sub_2545EC7C0, 0, 0);
}

uint64_t sub_2545EC7C0()
{
  v1 = v0[11];
  if (sub_2545FE964())
  {
    v3 = v0[5];
    v2 = v0[6];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545DE71C(v3, v2);
    sub_2545EDCCC(v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for HomeID();
  (*(*(v7 - 8) + 56))(v5, v4, 1, v7);
  v8 = sub_2545FEF74();
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2545EC93C;
  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[3];

  return sub_2545BCAA8(v10, v12, v6, v11, v8);
}

uint64_t sub_2545EC93C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_2545B612C(v3, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v4 = sub_2545ECE40;
  }

  else
  {
    v4 = sub_2545ECA7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545ECA7C()
{
  v41 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(sub_2545FE864() + 16);

  if (v3)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[4];
    v9 = sub_2545FF0A4();
    __swift_project_value_buffer(v9, qword_27F60ADD8);
    (*(v7 + 16))(v4, v5, v6);
    sub_2545FE8E4();
    v10 = sub_2545FF084();
    v11 = sub_2545FF474();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    if (v12)
    {
      v17 = v0[3];
      v16 = v0[4];
      v18 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v18 = 136315394;
      *(v18 + 4) = sub_2545F0FB4(v17, v16, &v40);
      *(v18 + 12) = 2080;
      v19 = sub_2545FE864();
      v20 = type metadata accessor for ToggleControlEntity();
      v21 = MEMORY[0x259C121B0](v19, v20);
      v23 = v22;

      (*(v14 + 8))(v13, v15);
      v24 = sub_2545F0FB4(v21, v23, &v40);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_2545AB000, v10, v11, "ToggleControlEntityQuery.entities(matching: %s) returned %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v39, -1, -1);
      MEMORY[0x259C12CB0](v18, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v25 = v0[4];
    v26 = sub_2545FF0A4();
    __swift_project_value_buffer(v26, qword_27F60ADD8);
    sub_2545FE8E4();
    v27 = sub_2545FF084();
    v28 = sub_2545FF454();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[3];
      v29 = v0[4];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2545F0FB4(v30, v29, &v40);
      _os_log_impl(&dword_2545AB000, v27, v28, "ToggleControlEntityQuery.entities(matching: %s) returned empty", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C12CB0](v32, -1, -1);
      MEMORY[0x259C12CB0](v31, -1, -1);
    }
  }

  (*(v0[8] + 32))(v0[2], v0[10], v0[7]);
  v34 = v0[9];
  v33 = v0[10];
  v36 = v0[5];
  v35 = v0[6];

  v37 = v0[1];

  return v37();
}

uint64_t sub_2545ECE40()
{
  v24 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[4];
  v3 = sub_2545FF0A4();
  __swift_project_value_buffer(v3, qword_27F60ADD8);
  sub_2545FE8E4();
  v4 = v1;
  v5 = sub_2545FF084();
  v6 = sub_2545FF454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_2545F0FB4(v9, v8, &v23);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_2545AB000, v5, v6, "ToggleControlEntityQuery.entities(matching: %s) threw error %@", v10, 0x16u);
    sub_2545B612C(v11, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C12CB0](v12, -1, -1);
    MEMORY[0x259C12CB0](v10, -1, -1);
  }

  v15 = v0[13];
  v16 = v0[2];
  type metadata accessor for ToggleControlEntity();
  sub_2545EDE20(&qword_27F606480, type metadata accessor for ToggleControlEntity);
  sub_2545FE854();

  v18 = v0[9];
  v17 = v0[10];
  v20 = v0[5];
  v19 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t ToggleControlEntityQuery.suggestedEntities()(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(type metadata accessor for SelectedHomeEntity() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606A68, &qword_254601EC0);
  v2[5] = v5;
  v6 = *(v5 - 8);
  v2[6] = v6;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v1;
  v2[8] = v8;
  v2[9] = v9;

  return MEMORY[0x2822009F8](sub_2545ED204, 0, 0);
}

uint64_t sub_2545ED204()
{
  v1 = v0[9];
  if (sub_2545FE964())
  {
    v3 = v0[3];
    v2 = v0[4];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545DE71C(v3, v2);
    sub_2545EDCCC(v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[4];
  v6 = type metadata accessor for HomeID();
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);
  v7 = sub_2545FEF74();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2545ED37C;
  v9 = v0[8];
  v10 = v0[4];

  return sub_2545BCAA8(v9, 0, 0, v10, v7);
}

uint64_t sub_2545ED37C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_2545B612C(v3, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v4 = sub_2545ED7DC;
  }

  else
  {
    v4 = sub_2545ED4BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545ED4BC()
{
  v34 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(sub_2545FE864() + 16);

  if (v3)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v8 = sub_2545FF0A4();
    __swift_project_value_buffer(v8, qword_27F60ADD8);
    (*(v7 + 16))(v4, v5, v6);
    v9 = sub_2545FF084();
    v10 = sub_2545FF474();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v15 = 136315138;
      v16 = sub_2545FE864();
      v17 = type metadata accessor for ToggleControlEntity();
      v18 = MEMORY[0x259C121B0](v16, v17);
      v20 = v19;

      (*(v13 + 8))(v12, v14);
      v21 = sub_2545F0FB4(v18, v20, &v33);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2545AB000, v9, v10, "ToggleControlEntityQuery.suggestedEntities() returned %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C12CB0](v32, -1, -1);
      MEMORY[0x259C12CB0](v15, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v22 = sub_2545FF0A4();
    __swift_project_value_buffer(v22, qword_27F60ADD8);
    v23 = sub_2545FF084();
    v24 = sub_2545FF454();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2545AB000, v23, v24, "ToggleControlEntityQuery.suggestedEntities() returned empty", v25, 2u);
      MEMORY[0x259C12CB0](v25, -1, -1);
    }
  }

  (*(v0[6] + 32))(v0[2], v0[8], v0[5]);
  v27 = v0[7];
  v26 = v0[8];
  v29 = v0[3];
  v28 = v0[4];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2545ED7DC()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2545AB000, v4, v5, "ToggleControlEntityQuery.suggestedEntities() threw error %@", v7, 0xCu);
    sub_2545B612C(v8, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v8, -1, -1);
    MEMORY[0x259C12CB0](v7, -1, -1);
  }

  v11 = v0[11];
  v12 = v0[2];

  type metadata accessor for ToggleControlEntity();
  sub_2545EDE20(&qword_27F606480, type metadata accessor for ToggleControlEntity);
  sub_2545FE854();

  v14 = v0[7];
  v13 = v0[8];
  v16 = v0[3];
  v15 = v0[4];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2545ED9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2545AF6A0;

  return ToggleControlEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_2545EDAA0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064C0, &qword_254601E70);
  swift_getKeyPath();
  result = sub_2545FE984();
  *a1 = result;
  return result;
}

uint64_t sub_2545EDAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D88C4;

  return ToggleControlEntityQuery.entities(for:)(a1);
}

uint64_t sub_2545EDB80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D880C;

  return ToggleControlEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_2545EDC18(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2545AFC7C();
  *v6 = v2;
  v6[1] = sub_2545D880C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_2545EDCCC(uint64_t a1)
{
  v2 = type metadata accessor for SelectedHomeEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2545EDD2C()
{
  result = qword_27F606A70;
  if (!qword_27F606A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A70);
  }

  return result;
}

unint64_t sub_2545EDD84()
{
  result = qword_27F606A78;
  if (!qword_27F606A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A78);
  }

  return result;
}

uint64_t sub_2545EDE20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2545EDE6C()
{
  result = qword_27F606A80;
  if (!qword_27F606A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606A80);
  }

  return result;
}

unint64_t sub_2545EDF0C()
{
  result = qword_27F606A88[0];
  if (!qword_27F606A88[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606A68, &qword_254601EC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F606A88);
  }

  return result;
}

uint64_t sub_2545EDFF0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2545FF3F4();
  if (!v26)
  {
    return sub_2545FF2E4();
  }

  v48 = v26;
  v52 = sub_2545FF654();
  v39 = sub_2545FF664();
  sub_2545FF614();
  result = sub_2545FF3C4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2545FF414();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);
        sub_2545FEA14();
        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2545FF644();
      result = sub_2545FF404();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2545EE410()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2545FF834();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x259C12730](1);
      sub_2545FF1B4();
      return sub_2545FF864();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x259C12730](v3);
  return sub_2545FF864();
}

uint64_t sub_2545EE490()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x259C12730](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x259C12730](v2);
  }

  v4 = *v0;
  MEMORY[0x259C12730](1);

  return sub_2545FF1B4();
}

uint64_t sub_2545EE518()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2545FF834();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x259C12730](1);
      sub_2545FF1B4();
      return sub_2545FF864();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x259C12730](v3);
  return sub_2545FF864();
}

BOOL sub_2545EE594(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v3 >= 2)
      {
        v9 = *a1;
        v10 = a1[1];
        v7 = *a2;
        v8 = a2[1];
        sub_2545D8470();
        return sub_2545FF514() == -1;
      }

      v2 = 1;
    }
  }

  v4 = 1;
  if (v3 == 1)
  {
    v4 = 2;
  }

  return v3 && v4 > v2;
}

BOOL sub_2545EE63C(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *a1;
  return (sub_2545FF0D4() & 1) == 0;
}

BOOL sub_2545EE678(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *a1;
  return (sub_2545FF0D4() & 1) == 0;
}

uint64_t sub_2545EE6B4(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *a1;
  return sub_2545FF0D4() & 1;
}

uint64_t sub_2545EE6EC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_2545FF7B4();
  }

  return 1;
}

uint64_t sub_2545EE74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a5 == 1)
      {
LABEL_12:
        MEMORY[0x28223BE20](a1);
        sub_2545FF314();
        sub_2545FE8E4();
        sub_2545FE8E4();
        swift_getWitnessTable();
        v5 = sub_2545FF274();

        return v5 & 1;
      }
    }

    else if (a5 >= 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_12;
      }

      a1 = sub_2545FF7B4();
      if (a1)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!a5)
  {
    goto LABEL_12;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_2545EE8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for ElementID();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = *(a5 + 16);
  v14(a3, a5);
  v14(a3, a5);
  v15 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
  v16 = sub_2545FEB04();
  v17 = *(*(v16 - 8) + 8);
  v17(v11, v16);
  v17(v13, v16);
  return v15 & 1;
}

uint64_t sub_2545EEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x259C12730](1);
      v13 = sub_2545FF1B4();
      goto LABEL_7;
    }

    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x259C12730](v12);
LABEL_7:
  v20[7] = a4;
  MEMORY[0x28223BE20](v13);
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v14 = sub_2545FF314();
  v15 = type metadata accessor for ElementID();
  sub_2545FE8E4();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_2545EDFF0(sub_2545EEFD0, v20, v14, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  sub_2545EF018(a1, v18);
}

uint64_t sub_2545EEB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2545FF834();
  sub_2545EEA1C(v13, a1, a2, a3, a4, a5, a6);
  return sub_2545FF864();
}

uint64_t sub_2545EEC08@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2545D71E4(v2, v3);
}

uint64_t sub_2545EEC44(uint64_t a1, uint64_t *a2)
{
  sub_2545FF834();
  sub_2545EEA1C(v5, *v2, v2[1], v2[2], a2[2], a2[3], a2[4]);
  return sub_2545FF864();
}

uint64_t sub_2545EEC94(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a2[2];
  v4 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return sub_2545EE74C(*a1, a1[1], a1[2], *a2, a2[1]) & 1;
}

uint64_t get_enum_tag_for_layout_string_17HomeWidgetIntents14CollectionTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2545EED2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2545EED80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2545EEDDC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2545EEE0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2545EEE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2545EEEB0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2545EEF28()
{
  result = qword_27F606B90;
  if (!qword_27F606B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606B90);
  }

  return result;
}

unint64_t sub_2545EEF7C()
{
  result = qword_27F606B98;
  if (!qword_27F606B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606B98);
  }

  return result;
}

uint64_t sub_2545EF018(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ElementID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x259C12730](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_2545EF160(v11, v7);
      sub_2545FEB04();
      sub_2545EF1C4();
      sub_2545FF0C4();
      MEMORY[0x259C12730](qword_254602308[v7[v10]]);
      result = sub_2545EF21C(v7);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2545EF160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElementID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2545EF1C4()
{
  result = qword_27F606430;
  if (!qword_27F606430)
  {
    sub_2545FEB04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606430);
  }

  return result;
}

uint64_t sub_2545EF21C(uint64_t a1)
{
  v2 = type metadata accessor for ElementID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SelectedHomeEntity.init(id:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2545E2F94(a1, a4);
  result = type metadata accessor for SelectedHomeEntity();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t type metadata accessor for SelectedHomeEntity()
{
  result = qword_2815330F0;
  if (!qword_2815330F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SelectedHomeEntity.selectedHome.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2545FEB04();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  type metadata accessor for IntentsService();
  swift_initStaticObject();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_2545EF43C;

  return sub_2545B0448();
}

uint64_t sub_2545EF43C(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = sub_2545EF938;
  }

  else
  {
    v4 = sub_2545EF558;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545EF558()
{
  v33 = v0;
  v1 = v0[7];
  if (v1)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = sub_2545FF0A4();
    __swift_project_value_buffer(v2, qword_27F60ADD8);
    v3 = v1;
    v4 = sub_2545FF084();
    v5 = sub_2545FF474();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v9 = 136315394;
      *(v9 + 4) = sub_2545F0FB4(0x64657463656C6573, 0xEC000000656D6F48, &v32);
      *(v9 + 12) = 2080;
      v10 = [v3 uniqueIdentifier];
      sub_2545FEAC4();

      sub_2545F1944(&qword_27F606BB8, MEMORY[0x277CC95F0]);
      v11 = sub_2545FF794();
      v13 = v12;
      (*(v7 + 8))(v6, v8);
      v14 = sub_2545F0FB4(v11, v13, &v32);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_2545AB000, v4, v5, "%s WidgetDataModel.home=%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v31, -1, -1);
      MEMORY[0x259C12CB0](v9, -1, -1);
    }

    v15 = v0[2];
    v16 = [v3 uniqueIdentifier];
    sub_2545FEAC4();

    v17 = [v3 name];
    v18 = sub_2545FF174();
    v20 = v19;

    v21 = type metadata accessor for SelectedHomeEntity();
    v22 = 0;
    v23 = (v15 + *(v21 + 20));
    *v23 = v18;
    v23[1] = v20;
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v24 = sub_2545FF0A4();
    __swift_project_value_buffer(v24, qword_27F60ADD8);
    v25 = sub_2545FF084();
    v26 = sub_2545FF454();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2545AB000, v25, v26, "SelectedHomeEntity.selectedHome homes not loaded", v27, 2u);
      MEMORY[0x259C12CB0](v27, -1, -1);
    }

    v21 = type metadata accessor for SelectedHomeEntity();
    v22 = 1;
  }

  v28 = v0[5];
  (*(*(v21 - 8) + 56))(v0[2], v22, 1);

  v29 = v0[1];

  return v29();
}

uint64_t sub_2545EF938()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF0A4();
  __swift_project_value_buffer(v1, qword_27F60ADD8);
  v2 = sub_2545FF084();
  v3 = sub_2545FF454();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2545AB000, v2, v3, "SelectedHomeEntity.selectedHome homes not loaded", v4, 2u);
    MEMORY[0x259C12CB0](v4, -1, -1);
  }

  v5 = type metadata accessor for SelectedHomeEntity();
  v6 = v0[5];
  (*(*(v5 - 8) + 56))(v0[2], 1, 1);

  v7 = v0[1];

  return v7();
}

unint64_t SelectedHomeEntity.description.getter()
{
  sub_2545FF594();

  v0 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v0);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_2545EFB28()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606BA0);
  __swift_project_value_buffer(v0, qword_27F606BA0);
  return sub_2545FE994();
}

uint64_t static SelectedHomeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SelectedHomeEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_2545FEA64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_2545FF134();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2545FF124();
  sub_2545FF114();
  v14 = (v0 + *(type metadata accessor for SelectedHomeEntity() + 20));
  v15 = *v14;
  v16 = v14[1];
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v10 + 56))(v8, 1, 1, v9);
  v17 = sub_2545FE884();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  return sub_2545FE894();
}

uint64_t SelectedHomeEntity.init()@<X0>(uint64_t a1@<X8>)
{
  sub_2545FEAF4();
  result = type metadata accessor for SelectedHomeEntity();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  return result;
}

uint64_t SelectedHomeEntity.name.getter()
{
  v1 = (v0 + *(type metadata accessor for SelectedHomeEntity() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_2545FE8E4();
  return v2;
}

uint64_t SelectedHomeEntity.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SelectedHomeEntity() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static SelectedHomeEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SelectedHomeEntity() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_2545FF7B4();
}

uint64_t sub_2545F0098()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_2545F00C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2545FF7B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2545FF7B4();

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

uint64_t sub_2545F01A0(uint64_t a1)
{
  v2 = sub_2545F154C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545F01DC(uint64_t a1)
{
  v2 = sub_2545F154C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SelectedHomeEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606BC0, &qword_254602358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545F154C();
  sub_2545FF884();
  v15[15] = 0;
  type metadata accessor for HomeID();
  sub_2545F1944(&qword_27F606BD0, type metadata accessor for HomeID);
  sub_2545FF774();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for SelectedHomeEntity() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_2545FF754();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SelectedHomeEntity.hash(into:)()
{
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v1 = (v0 + *(type metadata accessor for SelectedHomeEntity() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_2545FF1B4();
}

uint64_t SelectedHomeEntity.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v1 = (v0 + *(type metadata accessor for SelectedHomeEntity() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_2545FF1B4();
  return sub_2545FF864();
}

uint64_t SelectedHomeEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for HomeID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606BD8, &qword_254602360);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v25 - v8;
  v10 = type metadata accessor for SelectedHomeEntity();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545F154C();
  sub_2545FF874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v10;
  v15 = v13;
  v16 = v28;
  v32 = 0;
  sub_2545F1944(&qword_27F606BE0, type metadata accessor for HomeID);
  v18 = v29;
  v17 = v30;
  sub_2545FF714();
  sub_2545E2F94(v18, v15);
  v31 = 1;
  v19 = sub_2545FF6F4();
  v21 = v20;
  (*(v16 + 8))(v9, v17);
  v22 = v27;
  v23 = (v15 + *(v26 + 20));
  *v23 = v19;
  v23[1] = v21;
  sub_2545F15A0(v15, v22, type metadata accessor for SelectedHomeEntity);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2545DBEA4(v15, type metadata accessor for SelectedHomeEntity);
}

uint64_t sub_2545F0868(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_2545FF1B4();
  return sub_2545FF864();
}

uint64_t sub_2545F0910(uint64_t a1, uint64_t a2)
{
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_2545FF1B4();
}

uint64_t sub_2545F09AC(uint64_t a1, uint64_t a2)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F1944(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2545FF1B4();
  return sub_2545FF864();
}

uint64_t sub_2545F0A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_2545FF7B4();
}

uint64_t sub_2545F0B08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545F0BB0(uint64_t a1)
{
  v2 = sub_2545F1944(&qword_27F606558, type metadata accessor for SelectedHomeEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2545F0C2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_2545FEA64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_2545FF134();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_2545FF124();
  sub_2545FF114();
  v16 = (v1 + *(a1 + 20));
  v17 = *v16;
  v18 = v16[1];
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v12 + 56))(v10, 1, 1, v11);
  v19 = sub_2545FE884();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  return sub_2545FE894();
}

uint64_t sub_2545F0E84(uint64_t a1)
{
  v2 = sub_2545F1944(&qword_281533110, type metadata accessor for SelectedHomeEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_2545F0F24()
{
  sub_2545FF594();

  v0 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v0);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_2545F0FB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_2545FE8E4();
  v6 = sub_2545F1080(v11, 0, 0, 1, a1, a2);
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
    sub_2545DD564(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2545F1080(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2545F118C(a5, a6);
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
    result = sub_2545FF5E4();
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

uint64_t sub_2545F118C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2545F11D8(a1, a2);
  sub_2545F1308(&unk_286677F20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2545F11D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2545F619C(v5, 0);
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

  result = sub_2545FF5E4();
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
        v10 = sub_2545FF1D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2545F619C(v10, 0);
        result = sub_2545FF584();
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

uint64_t sub_2545F1308(uint64_t result)
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

  result = sub_2545F13F4(result, v12, 1, v3);
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

char *sub_2545F13F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C20, &qword_2546027C8);
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

uint64_t sub_2545F14E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2545F154C()
{
  result = qword_27F606BC8;
  if (!qword_27F606BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606BC8);
  }

  return result;
}

uint64_t sub_2545F15A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2545F1850()
{
  result = qword_27F606BF8;
  if (!qword_27F606BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606C00, &qword_254602568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606BF8);
  }

  return result;
}

uint64_t sub_2545F1944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2545F19B4()
{
  result = type metadata accessor for HomeID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelectedHomeEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectedHomeEntity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2545F1B88()
{
  result = qword_27F606C08;
  if (!qword_27F606C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C08);
  }

  return result;
}

unint64_t sub_2545F1BE0()
{
  result = qword_27F606C10;
  if (!qword_27F606C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C10);
  }

  return result;
}

unint64_t sub_2545F1C38()
{
  result = qword_27F606C18;
  if (!qword_27F606C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C18);
  }

  return result;
}

uint64_t sub_2545F1C94(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_2545B3CAC(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_2545B3CAC(v10, v8);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v10, &qword_27F606520, &qword_2546002E0);
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t HomeSingleTileEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C28, &qword_2546027D0);
  swift_getKeyPath();
  result = sub_2545FE984();
  *a1 = result;
  return result;
}

uint64_t sub_2545F1E28()
{
  v1 = *(v0 + 16);
  v2 = sub_2545FEF64();
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2545F1EE4;

  return sub_2545D2BB4(1, v1, v2);
}

uint64_t sub_2545F1EE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v7 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_2545B8EEC;
  }

  else
  {
    v5 = sub_2545F1FF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2545F1FF8()
{
  v32 = v0;
  if (*(v0[4] + 16))
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
      v30 = v0[4];
    }

    v1 = v0[2];
    v2 = sub_2545FF0A4();
    __swift_project_value_buffer(v2, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545FE8E4();
    v3 = sub_2545FF084();
    v4 = sub_2545FF434();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[4];
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v8;
      *v7 = 136315394;
      v9 = type metadata accessor for ElementID();
      v10 = MEMORY[0x259C121B0](v6, v9);
      v12 = sub_2545F0FB4(v10, v11, &v31);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      v13 = type metadata accessor for HomeSingleTileEntity();
      v14 = MEMORY[0x259C121B0](v5, v13);
      v16 = sub_2545F0FB4(v14, v15, &v31);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_2545AB000, v3, v4, "entities(for: %s returned %s", v7, 0x16u);
      swift_arrayDestroy();
      v17 = v8;
LABEL_10:
      MEMORY[0x259C12CB0](v17, -1, -1);
      MEMORY[0x259C12CB0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v18 = v0[2];
    v19 = sub_2545FF0A4();
    __swift_project_value_buffer(v19, qword_27F60ADD8);
    sub_2545FE8E4();
    v3 = sub_2545FF084();
    v20 = sub_2545FF454();

    if (os_log_type_enabled(v3, v20))
    {
      v21 = v0[2];
      v7 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v7 = 136315138;
      v23 = type metadata accessor for ElementID();
      v24 = MEMORY[0x259C121B0](v21, v23);
      v26 = sub_2545F0FB4(v24, v25, &v31);

      *(v7 + 4) = v26;
      _os_log_impl(&dword_2545AB000, v3, v20, "entities(for: %s returned empty", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v17 = v22;
      goto LABEL_10;
    }
  }

  v27 = v0[4];
  v28 = v0[1];

  return v28(v27);
}

uint64_t HomeSingleTileEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = *(*(type metadata accessor for SelectedHomeEntity() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C30, &qword_254602820);
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *v3;
  v4[10] = v10;
  v4[11] = v11;

  return MEMORY[0x2822009F8](sub_2545F2458, 0, 0);
}

uint64_t sub_2545F2458()
{
  v1 = v0[11];
  if (sub_2545FE964())
  {
    v3 = v0[5];
    v2 = v0[6];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545DE71C(v3, v2);
    sub_2545EDCCC(v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for HomeID();
  (*(*(v7 - 8) + 56))(v5, v4, 1, v7);
  v8 = sub_2545FEF64();
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2545F25D4;
  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[3];

  return sub_2545BF5DC(v10, v12, v6, v11, v8);
}

uint64_t sub_2545F25D4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_2545B612C(v3, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v4 = sub_2545F2AD8;
  }

  else
  {
    v4 = sub_2545F2714;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545F2714()
{
  v41 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(sub_2545FE864() + 16);

  if (v3)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[4];
    v9 = sub_2545FF0A4();
    __swift_project_value_buffer(v9, qword_27F60ADD8);
    (*(v7 + 16))(v4, v5, v6);
    sub_2545FE8E4();
    v10 = sub_2545FF084();
    v11 = sub_2545FF434();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    if (v12)
    {
      v17 = v0[3];
      v16 = v0[4];
      v18 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v18 = 136315394;
      *(v18 + 4) = sub_2545F0FB4(v17, v16, &v40);
      *(v18 + 12) = 2080;
      v19 = sub_2545FE864();
      v20 = type metadata accessor for HomeSingleTileEntity();
      v21 = MEMORY[0x259C121B0](v19, v20);
      v23 = v22;

      (*(v14 + 8))(v13, v15);
      v24 = sub_2545F0FB4(v21, v23, &v40);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_2545AB000, v10, v11, "entities(matching: %s returned %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v39, -1, -1);
      MEMORY[0x259C12CB0](v18, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v25 = v0[4];
    v26 = sub_2545FF0A4();
    __swift_project_value_buffer(v26, qword_27F60ADD8);
    sub_2545FE8E4();
    v27 = sub_2545FF084();
    v28 = sub_2545FF454();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[3];
      v29 = v0[4];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2545F0FB4(v30, v29, &v40);
      _os_log_impl(&dword_2545AB000, v27, v28, "entities(matching: %s returned empty", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C12CB0](v32, -1, -1);
      MEMORY[0x259C12CB0](v31, -1, -1);
    }
  }

  (*(v0[8] + 32))(v0[2], v0[10], v0[7]);
  v34 = v0[9];
  v33 = v0[10];
  v36 = v0[5];
  v35 = v0[6];

  v37 = v0[1];

  return v37();
}

uint64_t sub_2545F2AD8()
{
  v24 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[4];
  v3 = sub_2545FF0A4();
  __swift_project_value_buffer(v3, qword_27F60ADD8);
  sub_2545FE8E4();
  v4 = v1;
  v5 = sub_2545FF084();
  v6 = sub_2545FF454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_2545F0FB4(v9, v8, &v23);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_2545AB000, v5, v6, "entities(matching: %s threw error %@", v10, 0x16u);
    sub_2545B612C(v11, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C12CB0](v12, -1, -1);
    MEMORY[0x259C12CB0](v10, -1, -1);
  }

  v15 = v0[13];
  v16 = v0[2];
  type metadata accessor for HomeSingleTileEntity();
  sub_2545F3AB4(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
  sub_2545FE854();

  v18 = v0[9];
  v17 = v0[10];
  v20 = v0[5];
  v19 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t HomeSingleTileEntityQuery.suggestedEntities()(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(type metadata accessor for SelectedHomeEntity() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C30, &qword_254602820);
  v2[5] = v5;
  v6 = *(v5 - 8);
  v2[6] = v6;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v1;
  v2[8] = v8;
  v2[9] = v9;

  return MEMORY[0x2822009F8](sub_2545F2E9C, 0, 0);
}

uint64_t sub_2545F2E9C()
{
  v1 = v0[9];
  if (sub_2545FE964())
  {
    v3 = v0[3];
    v2 = v0[4];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545DE71C(v3, v2);
    sub_2545EDCCC(v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[4];
  v6 = type metadata accessor for HomeID();
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);
  v7 = sub_2545FEF64();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2545F3014;
  v9 = v0[8];
  v10 = v0[4];

  return sub_2545BF5DC(v9, 0, 0, v10, v7);
}

uint64_t sub_2545F3014()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_2545B612C(v3, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v4 = sub_2545F3474;
  }

  else
  {
    v4 = sub_2545F3154;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545F3154()
{
  v34 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(sub_2545FE864() + 16);

  if (v3)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v8 = sub_2545FF0A4();
    __swift_project_value_buffer(v8, qword_27F60ADD8);
    (*(v7 + 16))(v4, v5, v6);
    v9 = sub_2545FF084();
    v10 = sub_2545FF434();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v15 = 136315138;
      v16 = sub_2545FE864();
      v17 = type metadata accessor for HomeSingleTileEntity();
      v18 = MEMORY[0x259C121B0](v16, v17);
      v20 = v19;

      (*(v13 + 8))(v12, v14);
      v21 = sub_2545F0FB4(v18, v20, &v33);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2545AB000, v9, v10, "suggestedEntities() returned %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C12CB0](v32, -1, -1);
      MEMORY[0x259C12CB0](v15, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v22 = sub_2545FF0A4();
    __swift_project_value_buffer(v22, qword_27F60ADD8);
    v23 = sub_2545FF084();
    v24 = sub_2545FF454();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2545AB000, v23, v24, "suggestedEntities() returned empty", v25, 2u);
      MEMORY[0x259C12CB0](v25, -1, -1);
    }
  }

  (*(v0[6] + 32))(v0[2], v0[8], v0[5]);
  v27 = v0[7];
  v26 = v0[8];
  v29 = v0[3];
  v28 = v0[4];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2545F3474()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2545AB000, v4, v5, "suggestedEntities() threw error %@", v7, 0xCu);
    sub_2545B612C(v8, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v8, -1, -1);
    MEMORY[0x259C12CB0](v7, -1, -1);
  }

  v11 = v0[11];
  v12 = v0[2];

  type metadata accessor for HomeSingleTileEntity();
  sub_2545F3AB4(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
  sub_2545FE854();

  v14 = v0[7];
  v13 = v0[8];
  v16 = v0[3];
  v15 = v0[4];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2545F3688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2545AF6A0;

  return HomeSingleTileEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_2545F3738@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C28, &qword_2546027D0);
  swift_getKeyPath();
  result = sub_2545FE984();
  *a1 = result;
  return result;
}

uint64_t sub_2545F3784(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D88C4;

  return HomeSingleTileEntityQuery.entities(for:)(a1);
}

uint64_t sub_2545F3818(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D880C;

  return HomeSingleTileEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_2545F38B0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2545F3968();
  *v6 = v2;
  v6[1] = sub_2545D880C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_2545F3968()
{
  result = qword_27F606C38;
  if (!qword_27F606C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C38);
  }

  return result;
}

unint64_t sub_2545F39C0()
{
  result = qword_281532E98;
  if (!qword_281532E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E98);
  }

  return result;
}

unint64_t sub_2545F3A18()
{
  result = qword_281532E90;
  if (!qword_281532E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E90);
  }

  return result;
}

uint64_t sub_2545F3AB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2545F3B00()
{
  result = qword_281532EA0;
  if (!qword_281532EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532EA0);
  }

  return result;
}

unint64_t sub_2545F3BA0()
{
  result = qword_27F606C40;
  if (!qword_27F606C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606C30, &qword_254602820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C40);
  }

  return result;
}

BOOL static ElementID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ElementID();
  return qword_254602E18[*(a1 + *(v4 + 20))] == qword_254602E18[*(a2 + *(v4 + 20))];
}

{
  return *(a1 + *(type metadata accessor for ElementID() + 20)) == 6 && sub_2545B1170() == 0xDEFFDEED00000000 && sub_2545B118C() == a2;
}

uint64_t type metadata accessor for ElementID()
{
  result = qword_281532CA0;
  if (!qword_281532CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ElementID.entityIdentifierString.getter()
{
  v3 = qword_254602E18[*(v0 + *(type metadata accessor for ElementID() + 20))];
  v4 = sub_2545FF794();
  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v1 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v1);

  return v4;
}

uint64_t sub_2545F3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v94 = a3;
  v79 = sub_2545FEE64();
  v75 = *(v79 - 8);
  v4 = *(v75 + 64);
  v5 = MEMORY[0x28223BE20](v79);
  v73 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v78 = &v72 - v7;
  v83 = sub_2545FEEA4();
  v77 = *(v83 - 8);
  v8 = *(v77 + 64);
  v9 = MEMORY[0x28223BE20](v83);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &v72 - v11;
  v87 = sub_2545FEDA4();
  v81 = *(v87 - 8);
  v12 = *(v81 + 64);
  v13 = MEMORY[0x28223BE20](v87);
  v80 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v72 - v15;
  v91 = sub_2545FEE44();
  v85 = *(v91 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v91);
  v84 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v72 - v19;
  v93 = sub_2545FEE84();
  v89 = *(v93 - 8);
  v20 = *(v89 + 64);
  v21 = MEMORY[0x28223BE20](v93);
  v88 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v72 - v23;
  v25 = sub_2545FEE24();
  v92 = *(v25 - 8);
  v26 = *(v92 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v72 - v30;
  v32 = sub_2545FEE04();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v72 - v39;
  v41 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v43 = &v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v44;
  (*(v44 + 16))(v43, v96, a1);
  if (swift_dynamicCast())
  {
    (*(v33 + 32))(v37, v40, v32);
    v45 = v94;
    sub_2545FEDF4();
    (*(v33 + 8))(v37, v32);
    *(v45 + *(type metadata accessor for ElementID() + 20)) = 0;
  }

  else
  {
    v46 = v94;
    if (!swift_dynamicCast())
    {
      v48 = v93;
      if (swift_dynamicCast())
      {
        v50 = v88;
        v49 = v89;
        (*(v89 + 32))(v88, v24, v48);
        v51 = v46;
        sub_2545FEE74();
        (*(v49 + 8))(v50, v48);
        v52 = *(type metadata accessor for ElementID() + 20);
        v53 = 2;
      }

      else
      {
        v55 = v90;
        v54 = v91;
        v51 = v46;
        if (swift_dynamicCast())
        {
          v56 = v84;
          v57 = v85;
          (*(v85 + 32))(v84, v55, v54);
          sub_2545FEE34();
          (*(v57 + 8))(v56, v54);
          v52 = *(type metadata accessor for ElementID() + 20);
          v53 = 3;
        }

        else
        {
          v59 = v86;
          v58 = v87;
          if (swift_dynamicCast())
          {
            v60 = v80;
            v61 = v81;
            (*(v81 + 32))(v80, v59, v58);
            sub_2545FED94();
            (*(v61 + 8))(v60, v58);
            v52 = *(type metadata accessor for ElementID() + 20);
            v53 = 4;
          }

          else
          {
            v63 = v82;
            v62 = v83;
            if (swift_dynamicCast())
            {
              v64 = v76;
              v65 = v77;
              (*(v77 + 32))(v76, v63, v62);
              sub_2545FEE94();
              (*(v65 + 8))(v64, v62);
              v52 = *(type metadata accessor for ElementID() + 20);
              v53 = 5;
            }

            else
            {
              v67 = v78;
              v66 = v79;
              if (swift_dynamicCast())
              {
                v68 = v75;
                v69 = v73;
                (*(v75 + 32))(v73, v67, v66);
                sub_2545FEE54();
                ElementID.init(nodeID:)(v51);
                (*(v68 + 8))(v69, v66);
                return (*(v95 + 8))(v43, a1);
              }

              v70 = *(v74 + 48);
              sub_2545FF5A4();
              v52 = *(type metadata accessor for ElementID() + 20);
              v53 = 7;
            }
          }
        }
      }

      *(v51 + v52) = v53;
      return (*(v95 + 8))(v43, a1);
    }

    v47 = v92;
    (*(v92 + 32))(v29, v31, v25);
    sub_2545FEE14();
    (*(v47 + 8))(v29, v25);
    *(v46 + *(type metadata accessor for ElementID() + 20)) = 1;
  }

  return (*(v95 + 8))(v43, a1);
}

unint64_t ElementID.nodeID.getter()
{
  if (*(v0 + *(type metadata accessor for ElementID() + 20)) == 6 && sub_2545B1170() == 0xDEFFDEED00000000)
  {
    return sub_2545B118C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2545F46A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s17HomeWidgetIntents9ElementIDV4KindO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2545F46EC()
{
  v1 = *v0;
  sub_2545FF834();
  MEMORY[0x259C12730](qword_254602E18[v1]);
  return sub_2545FF864();
}

uint64_t sub_2545F4774()
{
  v1 = *v0;
  sub_2545FF834();
  MEMORY[0x259C12730](qword_254602E18[v1]);
  return sub_2545FF864();
}

uint64_t ElementID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2545FEB04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElementID.init(id:kind:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2545FEB04();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ElementID();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2545F499C()
{
  if (*v0)
  {
    result = 1684957547;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_2545F49C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2545FF7B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2545FF7B4();

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

uint64_t sub_2545F4A98(uint64_t a1)
{
  v2 = sub_2545F6C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545F4AD4(uint64_t a1)
{
  v2 = sub_2545F6C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElementID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C48, "B ");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545F6C84();
  sub_2545FF884();
  v12[15] = 0;
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606940, MEMORY[0x277CC95F0]);
  sub_2545FF774();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for ElementID() + 20));
    v12[13] = 1;
    sub_2545F6CD8();
    sub_2545FF774();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ElementID.hash(into:)()
{
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID();
  return MEMORY[0x259C12730](qword_254602E18[*(v0 + *(v1 + 20))]);
}

uint64_t ElementID.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254602E18[*(v0 + *(v1 + 20))]);
  return sub_2545FF864();
}

uint64_t ElementID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_2545FEB04();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C60, &unk_254602A18);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ElementID();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545F6C84();
  sub_2545FF874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_2545F6E68(&qword_27F606950, MEMORY[0x277CC95F0]);
  v19 = v31;
  v20 = v29;
  sub_2545FF714();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_2545F6D2C();
  sub_2545FF714();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_2545EF160(v22, v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2545EF21C(v22);
}

uint64_t sub_2545F5188(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  MEMORY[0x259C12730](qword_254602E18[*(v1 + *(a1 + 20))]);
  return sub_2545FF864();
}

uint64_t sub_2545F5238(uint64_t a1, uint64_t a2)
{
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  return MEMORY[0x259C12730](qword_254602E18[*(v2 + *(a2 + 20))]);
}

uint64_t sub_2545F52D0(uint64_t a1, uint64_t a2)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545F6E68(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  MEMORY[0x259C12730](qword_254602E18[*(v2 + *(a2 + 20))]);
  return sub_2545FF864();
}

uint64_t static ElementID.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v66 - v9;
  v11 = sub_2545FEB04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v71 = a2;
  v68 = 58;
  v69 = 0xE100000000000000;
  sub_2545D8470();
  v16 = sub_2545FF4F4();
  if (v16[2] != 2)
  {
    goto LABEL_65;
  }

  v18 = v16[4];
  v17 = v16[5];
  v19 = HIBYTE(v17) & 0xF;
  v20 = v18 & 0xFFFFFFFFFFFFLL;
  if (!((v17 & 0x2000000000000000) != 0 ? HIBYTE(v17) & 0xF : v18 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    v67 = v16;
    v62 = v17;
    sub_2545FE8E4();
    v25 = sub_2545F6210(v18, v62, 10);
    v64 = v63;

    v16 = v67;
    if (v64)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ((v17 & 0x2000000000000000) != 0)
  {
    v70 = v16[4];
    v71 = v17 & 0xFFFFFFFFFFFFFFLL;
    if (v18 == 43)
    {
      if (!v19)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        swift_once();
        goto LABEL_75;
      }

      v22 = v19 - 1;
      if (v19 != 1)
      {
        v25 = 0;
        v36 = &v70 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v22)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v18 == 45)
    {
      if (!v19)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v22 = v19 - 1;
      if (v19 != 1)
      {
        v25 = 0;
        v29 = &v70 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v31 - v30;
          if (__OFSUB__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v22)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v19)
    {
      v25 = 0;
      v41 = &v70;
      while (1)
      {
        v42 = *v41 - 48;
        if (v42 > 9)
        {
          break;
        }

        v43 = 10 * v25;
        if ((v25 * 10) >> 64 != (10 * v25) >> 63)
        {
          break;
        }

        v25 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          break;
        }

        v41 = (v41 + 1);
        if (!--v19)
        {
LABEL_61:
          LOBYTE(v22) = 0;
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
    if ((v18 & 0x1000000000000000) != 0)
    {
      v22 = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v3 = v16;
      v65 = v16[4];
      v22 = sub_2545FF5E4();
      v16 = v3;
    }

    v23 = *v22;
    if (v23 == 43)
    {
      if (v20 < 1)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v32 = v20 - 1;
      if (v20 != 1)
      {
        v25 = 0;
        if (!v22)
        {
          goto LABEL_63;
        }

        v33 = (v22 + 1);
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v32)
          {
            goto LABEL_61;
          }
        }
      }
    }

    else if (v23 == 45)
    {
      if (v20 < 1)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v24 = v20 - 1;
      if (v20 != 1)
      {
        v25 = 0;
        if (!v22)
        {
          goto LABEL_63;
        }

        v26 = (v22 + 1);
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v24)
          {
            goto LABEL_61;
          }
        }
      }
    }

    else if (v20)
    {
      v25 = 0;
      if (!v22)
      {
        goto LABEL_63;
      }

      while (1)
      {
        v39 = *v22 - 48;
        if (v39 > 9)
        {
          break;
        }

        v40 = 10 * v25;
        if ((v25 * 10) >> 64 != (10 * v25) >> 63)
        {
          break;
        }

        v25 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          break;
        }

        ++v22;
        if (!--v20)
        {
          goto LABEL_61;
        }
      }
    }
  }

  v25 = 0;
  LOBYTE(v22) = 1;
LABEL_63:
  LOBYTE(v68) = v22;
  if (v22)
  {
LABEL_65:

LABEL_66:
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v45 = sub_2545FF0A4();
    __swift_project_value_buffer(v45, qword_27F60ADD8);
    sub_2545FE8E4();
    v46 = sub_2545FF084();
    v47 = sub_2545FF444();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_2545F0FB4(a1, a2, &v70);
      _os_log_impl(&dword_2545AB000, v46, v47, "[entityIdentifier] Failed to convert string: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x259C12CB0](v49, -1, -1);
      MEMORY[0x259C12CB0](v48, -1, -1);
    }

    v50 = type metadata accessor for ElementID();
    return (*(*(v50 - 8) + 56))(a3, 1, 1, v50);
  }

LABEL_64:
  v3 = v16;
  v44 = _s17HomeWidgetIntents9ElementIDV4KindO8rawValueAESgSi_tcfC_0(v25);
  if (v44 == 8)
  {
    goto LABEL_65;
  }

  LODWORD(v67) = v44;
  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_82;
  }

  v53 = v3[6];
  v52 = v3[7];
  sub_2545FE8E4();

  v70 = v53;
  v71 = v52;
  sub_2545FF224();
  sub_2545FEA84();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2545B1088(v10);
    goto LABEL_66;
  }

  v3 = *(v12 + 32);
  (v3)(v15, v10, v11);
  if (qword_27F6063A0 != -1)
  {
    goto LABEL_86;
  }

LABEL_75:
  v54 = sub_2545FF0A4();
  __swift_project_value_buffer(v54, qword_27F60ADD8);
  sub_2545FE8E4();
  v55 = sub_2545FF084();
  v56 = sub_2545FF444();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v66 = v3;
    v58 = v57;
    v59 = swift_slowAlloc();
    v70 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_2545F0FB4(a1, a2, &v70);
    _os_log_impl(&dword_2545AB000, v55, v56, "[entityIdentifier] Converting String: '%s' to ElementID", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x259C12CB0](v59, -1, -1);
    v60 = v58;
    v3 = v66;
    MEMORY[0x259C12CB0](v60, -1, -1);
  }

  (v3)(a3, v15, v11);
  v61 = type metadata accessor for ElementID();
  *(a3 + *(v61 + 20)) = v67;
  return (*(*(v61 - 8) + 56))(a3, 0, 1, v61);
}

uint64_t sub_2545F5BC8(uint64_t a1)
{
  v4 = qword_254602E18[*(v1 + *(a1 + 20))];
  v5 = sub_2545FF794();
  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v2 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v2);

  return v5;
}

uint64_t ElementID.Kind.description.getter(unsigned __int8 a1)
{
  v1 = 0x726F737365636341;
  v2 = 0x614D65766974614ELL;
  if (a1 != 6)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  v3 = 0x65636976726553;
  if (a1 != 4)
  {
    v3 = 0x4765636976726553;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6F7250616964654DLL;
  if (a1 != 2)
  {
    v4 = 0x737953616964654DLL;
  }

  if (a1)
  {
    v1 = 0x656E656353;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2545F5D70()
{
  v1 = *v0;
  v2 = 0x726F737365636341;
  v3 = 0x614D65766974614ELL;
  if (v1 != 6)
  {
    v3 = 0x6E776F6E6B6E55;
  }

  v4 = 0x65636976726553;
  if (v1 != 4)
  {
    v4 = 0x4765636976726553;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F7250616964654DLL;
  if (v1 != 2)
  {
    v5 = 0x737953616964654DLL;
  }

  if (*v0)
  {
    v2 = 0x656E656353;
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

uint64_t ElementID.debugDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ElementID() + 20));
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        v2 = 0xEC00000072657474;
        v3 = 0x614D65766974614ELL;
      }

      else
      {
        v2 = 0xE700000000000000;
        v3 = 0x6E776F6E6B6E55;
      }
    }

    else if (v1 == 4)
    {
      v2 = 0xE700000000000000;
      v3 = 0x65636976726553;
    }

    else
    {
      v2 = 0xEC00000070756F72;
      v3 = 0x4765636976726553;
    }
  }

  else if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xEC000000656C6966;
      v3 = 0x6F7250616964654DLL;
    }

    else
    {
      v2 = 0xEB000000006D6574;
      v3 = 0x737953616964654DLL;
    }
  }

  else if (v1)
  {
    v2 = 0xE500000000000000;
    v3 = 0x656E656353;
  }

  else
  {
    v2 = 0xE900000000000079;
    v3 = 0x726F737365636341;
  }

  MEMORY[0x259C120B0](v3, v2);

  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v4 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v4);

  return 0x49746E656D656C45;
}