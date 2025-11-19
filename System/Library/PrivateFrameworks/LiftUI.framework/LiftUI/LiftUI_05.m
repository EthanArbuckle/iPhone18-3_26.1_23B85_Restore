uint64_t sub_255D92070(uint64_t *a1)
{
  v3 = sub_255E385D8();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7778, &unk_255E4A8D0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D92360();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v24 = 0;
    v12 = sub_255E3AB88();
    if (v13)
    {
      v11 = v12;
    }

    else
    {
      sub_255E385C8();
      v11 = sub_255E385B8();
      (*(v20 + 8))(v6, v3);
    }

    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v23 = 1;
    sub_255D5F038();
    sub_255E3ABA8();
    v15 = v21;
    v17 = v7;
    if (v22)
    {
      v18 = v22;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    sub_255D48968(v18);

    (*(v15 + 8))(v10, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return v11;
}

unint64_t sub_255D92360()
{
  result = qword_27F7E7780;
  if (!qword_27F7E7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7780);
  }

  return result;
}

unint64_t sub_255D923C8()
{
  result = qword_27F7E7788;
  if (!qword_27F7E7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7788);
  }

  return result;
}

unint64_t sub_255D92420()
{
  result = qword_27F7E7790;
  if (!qword_27F7E7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7790);
  }

  return result;
}

unint64_t sub_255D92478()
{
  result = qword_27F7E7798;
  if (!qword_27F7E7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7798);
  }

  return result;
}

uint64_t sub_255D924CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D92514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D92578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 103;
  if (v2 != 1)
  {
    v4 = 0x6F69736E656D6964;
    v3 = 0xED000079654B736ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x56657475706D6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0xE100000000000000;
  v8 = 103;
  if (*a2 != 1)
  {
    v8 = 0x6F69736E656D6964;
    v7 = 0xED000079654B736ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x56657475706D6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D92680()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9272C()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D927C4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9286C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D93C00();
  *a2 = result;
  return result;
}

void sub_255D9289C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065756C61;
  v4 = 0xE100000000000000;
  v5 = 103;
  if (v2 != 1)
  {
    v5 = 0x6F69736E656D6964;
    v4 = 0xED000079654B736ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x56657475706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D92904()
{
  v1 = 103;
  if (*v0 != 1)
  {
    v1 = 0x6F69736E656D6964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x56657475706D6F63;
  }
}

uint64_t sub_255D92968@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D93C00();
  *a1 = result;
  return result;
}

uint64_t sub_255D92990(uint64_t a1)
{
  v2 = sub_255D93A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D929CC(uint64_t a1)
{
  v2 = sub_255D93A64();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D92A08(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E77B8, &qword_255E4AEA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D93A64();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_255D64774();
    sub_255E3ABC8();
    v24 = *(&v31 + 1);
    v11 = v31;
    v25 = v32;
    v40 = v33;
    LOBYTE(v26) = 1;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v22 = v31;
    v23 = v32;
    v39 = v33;
    LOBYTE(v31) = 2;
    v12 = sub_255E3AB88();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0x6F69736E656D6964;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xEA0000000000736ELL;
    }

    (*(v6 + 8))(v9, v5);
    v16 = v11;
    v17 = v24;
    *&v26 = v11;
    *(&v26 + 1) = v24;
    v18 = v25;
    *&v27 = v25;
    v19 = v40;
    BYTE8(v27) = v40;
    v28 = v22;
    *&v29 = v23;
    BYTE8(v29) = v39;
    *&v30 = v14;
    *(&v30 + 1) = v15;
    v20 = v29;
    a2[2] = v22;
    a2[3] = v20;
    a2[4] = v30;
    v21 = v27;
    *a2 = v26;
    a2[1] = v21;
    sub_255D93938(&v26, &v31);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *&v31 = v16;
    *(&v31 + 1) = v17;
    v32 = v18;
    v33 = v19;
    v34 = v22;
    v35 = v23;
    v36 = v39;
    v37 = v14;
    v38 = v15;
    sub_255D93AB8(&v31);
  }
}

uint64_t sub_255D92DAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v44 = v3[2];
  v45 = v8;
  v46 = v9;
  v10 = v3[1];
  v42 = *v3;
  v43 = v10;
  v47[0] = v44;
  *(v47 + 9) = *(v3 + 41);
  *v36 = v3[2];
  *&v36[9] = *(v3 + 41);
  sub_255D7B16C(v47, &v39);
  StringResolvable.resolved(with:)(a2);
  result = sub_255D38060(*v36, *&v36[8], *&v36[16], v36[24]);
  if (!v4)
  {

    v12 = sub_255E0C470();
    v13 = MEMORY[0x277CE0760];
    if (v12 == 9)
    {

      v14 = sub_255E0C424();
      if (v14 != 5)
      {

        v17 = v13;
        if (v14 <= 1)
        {
          v35 = 1;
          if (v14)
          {
            sub_255E390F8();
          }

          else
          {
            sub_255E39108();
          }
        }

        else if (v14 == 2)
        {
          v35 = 1;
          sub_255E39118();
        }

        else
        {
          v35 = 1;
          if (v14 == 3)
          {
            sub_255E390D8();
          }

          else
          {
            sub_255E390E8();
          }
        }

        v48 = 0;
LABEL_52:
        sub_255D3CE1C(a1, a3);
        v27 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, a3[3]);
        v28 = swift_allocObject();
        v29 = v45;
        *(v28 + 48) = v44;
        *(v28 + 64) = v29;
        *(v28 + 80) = v46;
        v30 = v43;
        *(v28 + 16) = v42;
        *(v28 + 32) = v30;
        *(v28 + 96) = a2;
        v40 = sub_255E38AE8();
        v37 = v27;
        v38 = v17;
        WitnessTable = swift_getWitnessTable();
        __swift_allocate_boxed_opaque_existential_1(&v39);
        sub_255D93938(&v42, v36);

        sub_255E39988();

        __swift_destroy_boxed_opaque_existential_1Tm(a3);
        result = sub_255D4F134(&v39, a3);
        if (v35)
        {
          return result;
        }

        goto LABEL_53;
      }

      v15 = sub_255E0C3D8();
      if (v15 <= 2)
      {
        if (v15)
        {
          if (v15 == 1)
          {
            v16 = sub_255E38E08();
          }

          else
          {
            v16 = sub_255E38DF8();
          }
        }

        else
        {
          v16 = sub_255E38DE8();
        }

        goto LABEL_45;
      }

      if (v15 == 3)
      {
        v16 = sub_255E38DD8();
        goto LABEL_45;
      }

      if (v15 == 4)
      {
        v16 = sub_255E38DC8();
LABEL_45:
        v48 = v16;
        sub_255D3CE1C(a1, a3);
LABEL_53:
        v31 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, a3[3]);
        v32 = swift_allocObject();
        v33 = v45;
        *(v32 + 48) = v44;
        *(v32 + 64) = v33;
        *(v32 + 80) = v46;
        v34 = v43;
        *(v32 + 16) = v42;
        *(v32 + 32) = v34;
        *(v32 + 96) = a2;
        v40 = sub_255E38AE8();
        WitnessTable = swift_getWitnessTable();
        __swift_allocate_boxed_opaque_existential_1(&v39);
        sub_255D93938(&v42, v36);

        sub_255E39988();

        __swift_destroy_boxed_opaque_existential_1Tm(a3);
        return sub_255D4F134(&v39, a3);
      }

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v17 = v13;
      v23 = sub_255E386A8();
      __swift_project_value_buffer(v23, qword_27F8152D8);
      v24 = sub_255E38688();
      v25 = sub_255E3A868();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_255D2E000, v24, v25, "AlignmentGuideModifier: fallback .center alignment", v26, 2u);
        MEMORY[0x259C4F9E0](v26, -1, -1);
      }

      sub_255E390F8();
      v48 = sub_255E38E08();
    }

    else
    {

      v17 = v13;
      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            sub_255E3A248();
            sub_255E3A248();
          }

          else
          {
            sub_255E3A208();
            sub_255E3A208();
          }

          v48 = v20;
        }

        else
        {
          if (v12)
          {
            sub_255E3A238();
            sub_255E3A238();
          }

          else
          {
            sub_255E3A228();
            sub_255E3A228();
          }

          v48 = v19;
        }
      }

      else if (v12 <= 5)
      {
        if (v12 == 4)
        {
          sub_255E3A218();
          sub_255E3A218();
        }

        else
        {
          sub_255E3A1C8();
          sub_255E3A1C8();
        }

        v48 = v21;
      }

      else if (v12 == 6)
      {
        sub_255E3A1D8();
        sub_255E3A1D8();
        v48 = v22;
      }

      else
      {
        if (v12 == 7)
        {
          sub_255E3A1E8();
          sub_255E3A1E8();
        }

        else
        {
          sub_255E3A1F8();
          sub_255E3A1F8();
        }

        v48 = v18;
      }
    }

    v35 = 0;
    goto LABEL_52;
  }

  return result;
}

double sub_255D93370()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 32) = v4;
  *(inited + 40) = v5;

  LOBYTE(v4) = v6;
  sub_255D612A0(v1, v2, v3, v6);
  sub_255D934D4((inited + 48));
  v8 = sub_255DC53CC(inited);
  swift_setDeallocating();
  sub_255D939FC(inited + 32);
  v9 = sub_255DC5124(MEMORY[0x277D84F90]);
  v10 = type metadata accessor for RemoteStateStore(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v14 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v13, v8, v9);
  v19 = v4;
  sub_255D8F6FC(v14);
  v16 = v15;
  LOBYTE(v8) = v17;

  sub_255D4CB98(v1, v2, v3, v19);
  result = v16;
  if (v8)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_255D934D4@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E77A8, &qword_255E4AE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E4AA30;
  *(inited + 32) = 0x746867696568;
  *(inited + 40) = 0xE600000000000000;
  sub_255E38A48();
  *(inited + 48) = v2;
  *(inited + 56) = 0x6874646977;
  *(inited + 64) = 0xE500000000000000;
  sub_255E38A38();
  *(inited + 72) = v3;
  *(inited + 80) = 7368564;
  *(inited + 88) = 0xE300000000000000;
  v4 = sub_255E38DE8();
  *(inited + 96) = MEMORY[0x259C4CDB0](v4);
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = 0x8000000255E65DB0;
  v5 = sub_255E38E08();
  *(inited + 120) = MEMORY[0x259C4CDB0](v5);
  *(inited + 128) = 0x6D6F74746F62;
  *(inited + 136) = 0xE600000000000000;
  v6 = sub_255E38DF8();
  *(inited + 144) = MEMORY[0x259C4CDB0](v6);
  *(inited + 152) = 0x676E696461656CLL;
  *(inited + 160) = 0xE700000000000000;
  v7 = sub_255E39108();
  *(inited + 168) = MEMORY[0x259C4CDC0](v7);
  *(inited + 176) = 0x676E696C69617274;
  *(inited + 184) = 0xE800000000000000;
  v8 = sub_255E39118();
  *(inited + 192) = MEMORY[0x259C4CDC0](v8);
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x8000000255E65DD0;
  v9 = sub_255E390F8();
  *(inited + 216) = MEMORY[0x259C4CDC0](v9);
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000255E64DF0;
  v10 = sub_255E38DD8();
  *(inited + 240) = MEMORY[0x259C4CDB0](v10);
  *(inited + 248) = 0xD000000000000010;
  *(inited + 256) = 0x8000000255E64E10;
  v11 = sub_255E38DC8();
  *(inited + 264) = MEMORY[0x259C4CDB0](v11);
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x8000000255E64E40;
  v12 = sub_255E390D8();
  *(inited + 288) = MEMORY[0x259C4CDC0](v12);
  *(inited + 296) = 0xD000000000000018;
  *(inited + 304) = 0x8000000255E64E60;
  v13 = sub_255E390E8();
  *(inited + 312) = MEMORY[0x259C4CDC0](v13);
  v14 = sub_255DC741C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E77B0, &qword_255E4AE98);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v16 = result;
  v17 = 0;
  v19 = v14 + 64;
  v18 = *(v14 + 64);
  v39 = v14;
  v20 = 1 << *(v14 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v24 = result + 64;
  if ((v21 & v18) != 0)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_10:
      v28 = v25 | (v17 << 6);
      v29 = (*(v39 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(*(v39 + 56) + 8 * v28);
      result = swift_allocObject();
      *(result + 16) = v32;
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (v16[6] + 16 * v28);
      *v33 = v31;
      v33[1] = v30;
      *(v16[7] + 8 * v28) = result | 0x4000000000000000;
      v34 = v16[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v16[2] = v36;

      if (!v22)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v23)
      {
        v37 = swift_allocObject();

        *(v37 + 16) = v16;
        *a1 = v37 | 0xA000000000000000;
        return result;
      }

      v27 = *(v19 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v22 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_255D938BC(uint64_t a1)
{
  result = sub_255D938E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D938E4()
{
  result = qword_27F7E77A0;
  if (!qword_27F7E77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E77A0);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D38060(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 88);

  v2 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_255D939FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F40, &unk_255E559F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D93A64()
{
  result = qword_27F7E77C0;
  if (!qword_27F7E77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E77C0);
  }

  return result;
}

unint64_t sub_255D93AFC()
{
  result = qword_27F7E77C8;
  if (!qword_27F7E77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E77C8);
  }

  return result;
}

unint64_t sub_255D93B54()
{
  result = qword_27F7E77D0;
  if (!qword_27F7E77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E77D0);
  }

  return result;
}

unint64_t sub_255D93BAC()
{
  result = qword_27F7E77D8;
  if (!qword_27F7E77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E77D8);
  }

  return result;
}

uint64_t sub_255D93C00()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t DecodableRemoteContentView.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DecodableRemoteContentView.modifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_255D93CE0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D93D8C()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D93E24()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D93ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D95030();
  *a2 = result;
  return result;
}

void sub_255D93EFC(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEA0000000000646FLL;
  v5 = 0x6874654D70747468;
  if (*v1 != 2)
  {
    v5 = 2036625250;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 7107189;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D93F64()
{
  v1 = 25705;
  v2 = 0x6874654D70747468;
  if (*v0 != 2)
  {
    v2 = 2036625250;
  }

  if (*v0)
  {
    v1 = 7107189;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D93FC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D95030();
  *a1 = result;
  return result;
}

uint64_t sub_255D93FF0(uint64_t a1)
{
  v2 = sub_255D94690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9402C(uint64_t a1)
{
  v2 = sub_255D94690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DecodableRemoteContentView.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = a2;
  v3 = sub_255E385D8();
  *&v50 = *(v3 - 8);
  *(&v50 + 1) = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E77E0, &unk_255E4B000);
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37[-v9];
  type metadata accessor for RemoteStateStore(0);
  sub_255D94ED0(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v91 = sub_255E38CC8();
  v48 = v11;
  type metadata accessor for LocalStateStore(0);
  sub_255D94ED0(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
  v12 = sub_255E38CC8();
  v53 = a1;
  v54 = v12;
  v14 = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D94690();
  v16 = v52;
  sub_255E3AE28();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  else
  {
    v17 = v50;
    v52 = v14;
    v65[0] = 0;
    v18 = sub_255E3AB88();
    if (v19)
    {
      *&v47 = v18;
      *(&v47 + 1) = v19;
    }

    else
    {
      sub_255E385C8();
      *&v47 = sub_255E385B8();
      *(&v47 + 1) = v21;
      (*(v17 + 8))(v6, *(&v17 + 1));
    }

    LOBYTE(v55) = 1;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v46 = *v65;
    v50 = *&v65[8];
    v45 = v66;
    LOBYTE(v55) = 2;
    sub_255E3ABA8();
    v22 = *&v65[8];
    v41 = *v65;
    v44 = *&v65[16];
    v23 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
    v84 = 3;
    sub_255D7B5F4();
    sub_255E3ABA8();
    v43 = v22;
    v42 = v23;
    (*(v51 + 8))(v10, 0);
    v51 = v85;
    v39 = *(&v86 + 1);
    v40 = v86;
    v38 = v87;
    v55 = v47;
    *&v56 = MEMORY[0x277D84F90];
    *(&v56 + 1) = v46;
    v57 = v50;
    v24 = v45;
    LOBYTE(v58) = v45;
    *(&v58 + 1) = v90[0];
    DWORD1(v58) = *(v90 + 3);
    *(&v58 + 1) = v41;
    *&v59 = v22;
    *(&v59 + 1) = v44;
    LOBYTE(v60) = v23;
    *(&v60 + 1) = *v89;
    DWORD1(v60) = *&v89[3];
    *(&v60 + 1) = v85;
    v61 = v86;
    LOBYTE(v62) = v87;
    *(&v62 + 1) = *v88;
    DWORD1(v62) = *&v88[3];
    v25 = v91;
    v26 = v48;
    v27 = v49;
    *(&v62 + 1) = v91;
    *&v63 = v48;
    v28 = v54;
    v29 = v52;
    *(&v63 + 1) = v54;
    v64 = v52;
    v30 = v56;
    *v49 = v47;
    v27[1] = v30;
    v31 = v57;
    v32 = v58;
    v33 = v60;
    v27[4] = v59;
    v27[5] = v33;
    v27[2] = v31;
    v27[3] = v32;
    v34 = v61;
    v35 = v62;
    v36 = v63;
    *(v27 + 18) = v29;
    v27[7] = v35;
    v27[8] = v36;
    v27[6] = v34;
    sub_255D4C6CC(&v55, v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    *v65 = v47;
    *&v65[16] = MEMORY[0x277D84F90];
    v66 = v46;
    v67 = v50;
    v68 = v24;
    *v69 = v90[0];
    *&v69[3] = *(v90 + 3);
    v70 = v41;
    v71 = v43;
    v72 = v44;
    v73 = v42;
    *v74 = *v89;
    *&v74[3] = *&v89[3];
    v75 = v51;
    v76 = v40;
    v77 = v39;
    v78 = v38;
    *&v79[3] = *&v88[3];
    *v79 = *v88;
    v80 = v25;
    v81 = v26;
    v82 = v28;
    v83 = v29;
    return sub_255D946E4(v65);
  }
}

unint64_t sub_255D94690()
{
  result = qword_27F7E77E8;
  if (!qword_27F7E77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E77E8);
  }

  return result;
}

uint64_t DecodableRemoteContentView.unmodifiedBody.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_255E385D8();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteContent(0);
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 24);
  v12 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = *(v1 + 48);
  v17 = *(v1 + 56);
  v16 = *(v1 + 64);
  v18 = *(v1 + 72);
  v19 = *(v1 + 80);
  v21 = *(v1 + 88);
  v20 = *(v1 + 96);
  v22 = *(v1 + 104);
  v23 = *(v1 + 112);
  v24 = *(v1 + 120);
  if (v24)
  {
    v25 = *(v1 + 136);
    v48 = *(v1 + 144);
    v49 = v17;
    *v11 = v13;
    *(v11 + 1) = v12;
    *(v11 + 2) = v14;
    v11[24] = v15;
    *(v11 + 4) = v17;
    *(v11 + 5) = v16;
    v50 = v16;
    v51 = v18;
    *(v11 + 6) = v18;
    v52 = v19;
    v11[56] = v19;
    v53 = v21;
    v54 = v20;
    *(v11 + 8) = v21;
    *(v11 + 9) = v20;
    v55 = v22;
    *(v11 + 10) = v22;
    v56 = v23;
    v11[88] = v23;
    v26 = v24;
    *(v11 + 12) = v24;
    v60 = v9;
    swift_storeEnumTagMultiPayload();
    if (v25)
    {

      sub_255D3E5A8(v13, v12, v14, v15);
      sub_255D94C04(v49, v50, v51, v52);
      sub_255D94C18(v53, v54, v55, v56);

      sub_255E385C8();
      v27 = sub_255E385B8();
      v29 = v28;
      (*(v57 + 8))(v6, v58);
      v30 = type metadata accessor for RemoteContentView(0);
      v31 = a1 + v30[9];
      *v31 = swift_getKeyPath();
      *(v31 + 1) = 0;
      v31[16] = 0;
      v32 = a1 + v30[10];
      *v32 = swift_getKeyPath();
      *(v32 + 1) = 0;
      v32[16] = 0;
      v33 = a1 + v30[11];
      *v33 = swift_getKeyPath();
      v33[8] = 0;
      *a1 = v27;
      a1[1] = v29;
      v34 = v30[5];
      sub_255D37EF4(v11, a1 + v34, type metadata accessor for RemoteContent);
      (*(v59 + 56))(a1 + v34, 0, 1, v60);
      v35 = objc_allocWithZone(type metadata accessor for ContentRegistry());

      v61 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v26, [v35 init]);
      type metadata accessor for RemoteLoader(0);
      sub_255E39F98();
      result = sub_255D37F5C(v11, type metadata accessor for RemoteContent);
      v37 = v63;
      v38 = (a1 + v30[8]);
      *v38 = v62;
      v38[1] = v37;
      v39 = a1 + v30[6];
      *v39 = sub_255D94D70;
      *(v39 + 1) = v26;
      v39[16] = 0;
      v40 = a1 + v30[7];
      *v40 = sub_255D94D70;
      *(v40 + 1) = v25;
      v40[16] = 0;
      return result;
    }
  }

  else
  {
    v60 = *(v1 + 128);
    v41 = v21;
    v42 = v17;
    v43 = v13;
    v44 = v20;
    v45 = v16;
    v46 = v12;
    v47 = v22;
    v13 = v18;
    v12 = v19;
    sub_255D3E5A8(v43, v46, v14, v15);
    sub_255D94C04(v42, v45, v13, v12);
    sub_255D94C18(v41, v44, v47, v23);
    type metadata accessor for RemoteStateStore(0);
    sub_255D94ED0(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    sub_255E38CB8();
    __break(1u);
  }

  sub_255D3E5A8(v13, v12, v14, v15);
  sub_255D94C04(v49, v50, v51, v52);
  sub_255D94C18(v53, v54, v55, v56);
  type metadata accessor for LocalStateStore(0);
  sub_255D94ED0(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D94C04(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return sub_255D3E5A8(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_255D94C18(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D6FBC4(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_255D94C30@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RemoteContentView(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  DecodableRemoteContentView.unmodifiedBody.getter((&v11 - v7));
  sub_255D37EF4(v8, v6, type metadata accessor for RemoteContentView);
  sub_255D94ED0(&qword_27F7E65B8, type metadata accessor for RemoteContentView);
  v9 = sub_255E3A038();
  result = sub_255D37F5C(v8, type metadata accessor for RemoteContentView);
  *a1 = v9;
  return result;
}

uint64_t sub_255D94D78()
{
  sub_255D94DD4();
  sub_255D4C678();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D94DD4()
{
  result = qword_27F7E77F0;
  if (!qword_27F7E77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E77F0);
  }

  return result;
}

unint64_t sub_255D94E28(uint64_t a1)
{
  result = sub_255D94E50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D94E50()
{
  result = qword_27F7E77F8;
  if (!qword_27F7E77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E77F8);
  }

  return result;
}

uint64_t sub_255D94ED0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255D94F2C()
{
  result = qword_27F7E7800;
  if (!qword_27F7E7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7800);
  }

  return result;
}

unint64_t sub_255D94F84()
{
  result = qword_27F7E7808;
  if (!qword_27F7E7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7808);
  }

  return result;
}

unint64_t sub_255D94FDC()
{
  result = qword_27F7E7810;
  if (!qword_27F7E7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7810);
  }

  return result;
}

uint64_t sub_255D95030()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255D950A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 90))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 89);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255D950E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 89) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_255D95150(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7629158;
  }

  else
  {
    v4 = 1819044198;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7629158;
  }

  else
  {
    v6 = 1819044198;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D951E8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9525C()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D952BC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9532C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255D9538C(uint64_t *a1@<X8>)
{
  v2 = 1819044198;
  if (*v1)
  {
    v2 = 7629158;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D95478()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D95538()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D955E4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D956A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D96354();
  *a2 = result;
  return result;
}

void sub_255D956D0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6874646977;
  v4 = 0xE500000000000000;
  v5 = 0x6F69746172;
  if (*v1 != 2)
  {
    v5 = 0x4D746E65746E6F63;
    v4 = 0xEB0000000065646FLL;
  }

  if (*v1)
  {
    v3 = 0x746867696568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D9574C()
{
  v1 = 0x6874646977;
  v2 = 0x6F69746172;
  if (*v0 != 2)
  {
    v2 = 0x4D746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D957C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D96354();
  *a1 = result;
  return result;
}

uint64_t sub_255D957EC(uint64_t a1)
{
  v2 = sub_255D960C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D95828(uint64_t a1)
{
  v2 = sub_255D960C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D95864(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7820, &qword_255E4BB58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D960C4();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v31 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    LOBYTE(v32) = 0;
    sub_255D65400();
    sub_255E3ABA8();
    v30 = v37;
    v28 = v38;
    v29 = v39;
    v50 = v40;
    LOBYTE(v32) = 1;
    sub_255E3ABA8();
    v25 = v37;
    v23 = v38;
    v24 = v39;
    v26 = v40;
    LOBYTE(v32) = 2;
    sub_255E3ABA8();
    v11 = v37;
    v27 = v38;
    v22 = v39;
    v12 = v40;
    LOBYTE(v37) = 3;
    sub_255D96118();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    HIDWORD(v21) = (v51 & 1) == 0;
    *&v32 = v30;
    v13 = v28;
    *(&v32 + 1) = v28;
    v14 = v29;
    *&v33 = v29;
    v15 = v50;
    BYTE8(v33) = v50;
    v16 = v23;
    *&v34 = v25;
    *(&v34 + 1) = v23;
    v17 = v24;
    *&v35 = v24;
    BYTE8(v35) = v26;
    *v36 = v11;
    *&v36[8] = v27;
    *&v36[16] = v22;
    v36[24] = v12;
    v36[25] = (v51 & 1) == 0;
    v18 = v35;
    v19 = v31;
    v31[2] = v34;
    v19[3] = v18;
    v19[4] = *v36;
    *(v19 + 74) = *&v36[10];
    v20 = v33;
    *v19 = v32;
    v19[1] = v20;
    sub_255D9616C(&v32, &v37);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v37 = v30;
    v38 = v13;
    v39 = v14;
    v40 = v15;
    v41 = v25;
    v42 = v16;
    v43 = v17;
    v44 = v26;
    v45 = v11;
    v46 = v27;
    v47 = v22;
    v48 = v12;
    v49 = BYTE4(v21);
    sub_255D961A4(&v37);
  }
}

uint64_t sub_255D95D74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v18 = *(v3 + 40);
  v19 = *(v3 + 32);
  v17 = *(v3 + 48);
  v12 = *(v3 + 56);
  v13 = *(v3 + 88);
  v20 = *(v3 + 89);
  if (v13 != 255)
  {
    sub_255DDEF98(a2, *(v3 + 64), *(v3 + 72), *(v3 + 80), v13 & 1);
    if (!v4)
    {
      goto LABEL_10;
    }

    v4 = 0;
  }

  if (v11 != 255)
  {
    sub_255DDEF98(a2, v8, v9, v10, v11 & 1);
    if (v4)
    {
    }

    else if (v12 != 255)
    {
      sub_255DDEF98(a2, v19, v18, v17, v12 & 1);
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      a3[3] = sub_255E38AE8();
      a3[4] = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_255E398A8();
    }
  }

LABEL_10:
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3[3] = sub_255E38AE8();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39898();
}

unint64_t sub_255D96048(uint64_t a1)
{
  result = sub_255D96070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D96070()
{
  result = qword_27F7E7818;
  if (!qword_27F7E7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7818);
  }

  return result;
}

unint64_t sub_255D960C4()
{
  result = qword_27F7E7828;
  if (!qword_27F7E7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7828);
  }

  return result;
}

unint64_t sub_255D96118()
{
  result = qword_27F7E7830;
  if (!qword_27F7E7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7830);
  }

  return result;
}

unint64_t sub_255D961F8()
{
  result = qword_27F7E7838;
  if (!qword_27F7E7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7838);
  }

  return result;
}

unint64_t sub_255D96250()
{
  result = qword_27F7E7840;
  if (!qword_27F7E7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7840);
  }

  return result;
}

unint64_t sub_255D962A8()
{
  result = qword_27F7E7848;
  if (!qword_27F7E7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7848);
  }

  return result;
}

unint64_t sub_255D96300()
{
  result = qword_27F7E7850;
  if (!qword_27F7E7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7850);
  }

  return result;
}

uint64_t sub_255D96354()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255D963A0()
{
  result = qword_27F7E7858;
  if (!qword_27F7E7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7858);
  }

  return result;
}

uint64_t sub_255D963F4()
{
  v1 = *v0;
  v2 = sub_255E38438();
  v3 = sub_255DCF728(v2);

  return v3;
}

uint64_t sub_255D96430(uint64_t a1)
{
  sub_255DCFC64(a1);

  v2 = *v1;
  return sub_255E38448();
}

void (*sub_255D96474(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_255E38428();
  return sub_255D39BAC;
}

uint64_t KeyedDecodingContainer.decodeAction(forKey:)@<X0>(uint64_t a1@<X8>)
{
  sub_255D7B6DC();
  result = sub_255E3ABC8();
  if (!v1)
  {
    return sub_255D34630(&v4, a1);
  }

  return result;
}

uint64_t KeyedDecodingContainer.decodeActions(forKey:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  sub_255D7B658();
  sub_255E3ABC8();
  if (!v1)
  {
    v2 = *(v10 + 16);
    if (v2)
    {
      v9 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v2, 0);
      v0 = v9;
      v3 = v10 + 32;
      do
      {
        sub_255D7B730(v3, v7);
        sub_255D34630(v7, v8);
        v9 = v0;
        v5 = *(v0 + 16);
        v4 = *(v0 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_255DE5EF0((v4 > 1), v5 + 1, 1);
          v0 = v9;
        }

        *(v0 + 16) = v5 + 1;
        sub_255D34630(v8, v0 + 40 * v5 + 32);
        v3 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v0;
}

uint64_t KeyedDecodingContainer.decodeActionIfPresent(forKey:)@<X0>(uint64_t a1@<X8>)
{
  sub_255D7B6DC();
  result = sub_255E3ABA8();
  if (!v1)
  {
    if (v5)
    {
      sub_255D3CE1C(v4, a1);
      return sub_255D96C6C(v4);
    }

    else
    {
      result = sub_255D96C04(v4);
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

uint64_t KeyedDecodingContainer.decodeActionsIfPresent(forKey:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  sub_255D7B658();
  sub_255E3ABA8();
  if (!v1)
  {
    if (v10)
    {
      v3 = *(v10 + 16);
      if (v3)
      {
        v9 = MEMORY[0x277D84F90];
        sub_255DE5EF0(0, v3, 0);
        v0 = v9;
        v4 = v10 + 32;
        do
        {
          sub_255D7B730(v4, v7);
          sub_255D34630(v7, v8);
          v9 = v0;
          v6 = *(v0 + 16);
          v5 = *(v0 + 24);
          if (v6 >= v5 >> 1)
          {
            sub_255DE5EF0((v5 > 1), v6 + 1, 1);
            v0 = v9;
          }

          *(v0 + 16) = v6 + 1;
          sub_255D34630(v8, v0 + 40 * v6 + 32);
          v4 += 40;
          --v3;
        }

        while (v3);
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

uint64_t DecodingError.context.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_255E3AA08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_255E3A9F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v14 = (*(v5 + 88))(v8, v4);
  if (v14 == *MEMORY[0x277D84160] || v14 == *MEMORY[0x277D84170])
  {
    (*(v5 + 96))(v8, v4);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7870, &qword_255E4BDC8);
    v16 = *(v10 + 32);
    v16(v13, v8 + *(v15 + 48), v9);
  }

  else if (v14 == *MEMORY[0x277D84158])
  {
    (*(v5 + 96))(v8, v4);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7868, &qword_255E4BDC0);
    v16 = *(v10 + 32);
    v16(v13, v8 + *(v18 + 48), v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    if (v14 != *MEMORY[0x277D84168])
    {
      (*(v10 + 56))(a1, 1, 1, v9);
      return (*(v5 + 8))(v8, v4);
    }

    (*(v5 + 96))(v8, v4);
    v16 = *(v10 + 32);
    v16(v13, v8, v9);
  }

  v16(a1, v13, v9);
  return (*(v10 + 56))(a1, 0, 1, v9);
}

uint64_t sub_255D96C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7860, &qword_255E4BDB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D96CC0(uint64_t a1)
{
  result = sub_255D96CE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D96CE8()
{
  result = qword_27F7E7878;
  if (!qword_27F7E7878)
  {
    sub_255E38468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7878);
  }

  return result;
}

uint64_t sub_255D96D90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 57))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255D96DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_255D96E58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  if (v7 <= 0xFD)
  {
    v14 = *v3;
    v15 = *(v3 + 8);
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);
    sub_255D612A0(*v3, v15, v16, v7);
    sub_255D8F6FC(a2);
    sub_255D4CB98(v14, v15, v16, v17);
  }

  if (v11 <= 0xFD)
  {
    sub_255D612A0(v8, v9, v10, v11);
    sub_255D8F6FC(a2);
    sub_255D4CB98(v8, v9, v10, v11);
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3[3] = sub_255E38AE8();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39C08();
}

uint64_t sub_255D96FF0()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_255D97008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_255D970D0(uint64_t a1)
{
  v2 = sub_255D974BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9710C(uint64_t a1)
{
  v2 = sub_255D974BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D97148@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7888, &qword_255E4C270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D974BC();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v24) = 0;
  sub_255D64774();
  sub_255E3ABA8();
  v11 = v27;
  v22 = v28;
  v23 = v29;
  v38 = v30;
  v39 = 1;
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  v21 = v35;
  v12 = v36;
  v20 = *(&v35 + 1);
  v13 = v37;
  v14 = v11;
  v15 = v22;
  *&v24 = v11;
  *(&v24 + 1) = v22;
  v16 = v23;
  *&v25 = v23;
  LOBYTE(v11) = v38;
  BYTE8(v25) = v38;
  *v26 = v35;
  *&v26[16] = v36;
  v26[24] = v37;
  v17 = v25;
  *a2 = v24;
  a2[1] = v17;
  a2[2] = *v26;
  *(a2 + 41) = *&v26[9];
  sub_255D97510(&v24, &v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v11;
  v31 = v21;
  v32 = v20;
  v33 = v12;
  v34 = v13;
  return sub_255D97548(&v27);
}

unint64_t sub_255D97440(uint64_t a1)
{
  result = sub_255D97468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D97468()
{
  result = qword_27F7E7880;
  if (!qword_27F7E7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7880);
  }

  return result;
}

unint64_t sub_255D974BC()
{
  result = qword_27F7E7890;
  if (!qword_27F7E7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7890);
  }

  return result;
}

unint64_t sub_255D9758C()
{
  result = qword_27F7E7898;
  if (!qword_27F7E7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7898);
  }

  return result;
}

unint64_t sub_255D975E4()
{
  result = qword_27F7E78A0;
  if (!qword_27F7E78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78A0);
  }

  return result;
}

unint64_t sub_255D9763C()
{
  result = qword_27F7E78A8;
  if (!qword_27F7E78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI28PinnedScrollableViewsOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_255D976E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_255D97730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_255D977B4(uint64_t a1, int a2)
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

uint64_t sub_255D977FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D97888()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D97940()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D979E4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D97A98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D9C17C();
  *a2 = result;
  return result;
}

void sub_255D97AC8(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE900000000000074;
  v5 = 0x6E656D6E67696C61;
  if (*v1 != 2)
  {
    v5 = 0x7377656976;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E6963617073;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D97B3C()
{
  v1 = 25705;
  v2 = 0x6E656D6E67696C61;
  if (*v0 != 2)
  {
    v2 = 0x7377656976;
  }

  if (*v0)
  {
    v1 = 0x676E6963617073;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D97BAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D9C17C();
  *a1 = result;
  return result;
}

uint64_t sub_255D97BD4(uint64_t a1)
{
  v2 = sub_255D9BE14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D97C10(uint64_t a1)
{
  v2 = sub_255D9BE14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D97C4C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7900, &unk_255E4D060);
  v2 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v34 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6618, &qword_255E3E118);
  v4 = *(*(v39 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v39);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = *(v1 + 16);
  v16 = *(v1 + 48);
  v17 = *(v1 + 56);
  if (v16 > 0xFD)
  {
    goto LABEL_4;
  }

  v36 = v12;
  v37 = v17;
  v18 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = *(v1 + 72);
  v22 = *(v1 + 80);
  v42 = v18;
  v43 = v19;
  v44 = v20;
  v45 = v16;
  if (v21)
  {

    sub_255D6EF88(v18, v19, v20, v16);
    sub_255D8F6FC(v21);
    v24 = v23;
    v26 = v25;

    sub_255D4CB98(v42, v43, v44, v45);
    v27 = v36;
    v17 = v37;
    if ((v26 & 1) == 0)
    {
      v35 = v14;
      if (v15 <= 1)
      {
        v28 = v41;
        if (v15)
        {
          v30 = sub_255E390F8();
        }

        else
        {
          v30 = sub_255E39108();
        }
      }

      else
      {
        v28 = v41;
        if (v15 == 2)
        {
          v30 = sub_255E39118();
        }

        else if (v15 == 3)
        {
          v30 = sub_255E390D8();
        }

        else
        {
          v30 = sub_255E390E8();
        }
      }

      *v27 = v30;
      *(v27 + 8) = v24;
      *(v27 + 16) = 0;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7908, &qword_255E4D070) + 44);
      v42 = v17;
      swift_getKeyPath();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
      sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
      sub_255E3A0E8();
      v10 = v35;
      sub_255D9B71C(v27, v35, &qword_27F7E6618, &qword_255E3E118);
      goto LABEL_24;
    }

LABEL_4:
    if (v15 <= 1)
    {
      v28 = v41;
      if (v15)
      {
        v29 = sub_255E390F8();
      }

      else
      {
        v29 = sub_255E39108();
      }
    }

    else
    {
      v28 = v41;
      if (v15 == 2)
      {
        v29 = sub_255E39118();
      }

      else if (v15 == 3)
      {
        v29 = sub_255E390D8();
      }

      else
      {
        v29 = sub_255E390E8();
      }
    }

    *v7 = v29;
    *(v7 + 1) = 0;
    v7[16] = 1;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7908, &qword_255E4D070) + 44);
    v42 = v17;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
    sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
    sub_255E3A0E8();
    sub_255D9B71C(v7, v10, &qword_27F7E6618, &qword_255E3E118);
LABEL_24:
    sub_255D3957C(v10, v28, &qword_27F7E6618, &qword_255E3E118);
    swift_storeEnumTagMultiPayload();
    sub_255D38950(&qword_27F7E6610, &qword_27F7E6618, &qword_255E3E118);
    sub_255E39258();
    return sub_255D395E4(v10, &qword_27F7E6618, &qword_255E3E118);
  }

  sub_255D612A0(v18, v19, v20, v16);
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D981BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_255E385D8();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7950, &qword_255E4D0F8);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v72 = sub_255E38CC8();
  v12 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9BE14();
  v14 = v50;
  sub_255E3AE28();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D647C8(0, 0, 0, 254);
  }

  else
  {
    v15 = v49;
    v46 = v12;
    v50 = a1;
    v16 = v48;
    LOBYTE(v57) = 0;
    v17 = sub_255E3AB88();
    if (v18)
    {
      v20 = v17;
      v45 = v18;
    }

    else
    {
      v21 = v6;
      sub_255E385C8();
      v20 = sub_255E385B8();
      v45 = v22;
      (*(v15 + 8))(v21, v3);
    }

    LOBYTE(v51) = 1;
    sub_255D64774();
    sub_255E3ABA8();
    v23 = v20;
    v44 = v57;
    v49 = v58;
    v24 = v59;
    v25 = v60;
    sub_255D647C8(0, 0, 0, 254);
    LOBYTE(v57) = 2;
    sub_255E3AB88();
    if (v26)
    {
      v27 = sub_255E0C424();
      if (v27 == 5)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }
    }

    else
    {
      v28 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    LOBYTE(v57) = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    if (v69)
    {
      v29 = v69;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v43 = sub_255D48968(v29);

    v30 = v28;
    (*(v16 + 8))(v10, v7);
    v42 = v23;
    *&v51 = v23;
    *(&v51 + 1) = v45;
    LOBYTE(v52) = v28;
    *(&v52 + 1) = *v71;
    DWORD1(v52) = *&v71[3];
    v31 = v44;
    *(&v52 + 1) = v44;
    v32 = v49;
    *&v53 = v49;
    *(&v53 + 1) = v24;
    v33 = v24;
    v34 = v25;
    LOBYTE(v54) = v25;
    *(&v54 + 1) = *v70;
    DWORD1(v54) = *&v70[3];
    *(&v54 + 1) = v43;
    v35 = v72;
    *&v55 = MEMORY[0x277D84F90];
    *(&v55 + 1) = v72;
    v36 = v46;
    v56 = v46;
    v37 = v55;
    v38 = v47;
    *(v47 + 48) = v54;
    *(v38 + 64) = v37;
    *(v38 + 80) = v36;
    v39 = v53;
    v40 = v52;
    *v38 = v51;
    *(v38 + 16) = v40;
    *(v38 + 32) = v39;
    sub_255D4CBEC(&v51, &v57);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v57 = v42;
    v58 = v45;
    LOBYTE(v59) = v30;
    *(&v59 + 1) = *v71;
    HIDWORD(v59) = *&v71[3];
    v60 = v31;
    v61 = v32;
    v62 = v33;
    v63 = v34;
    *v64 = *v70;
    *&v64[3] = *&v70[3];
    v65 = v43;
    v66 = MEMORY[0x277D84F90];
    v67 = v35;
    v68 = v36;
    return sub_255D9BF1C(&v57);
  }
}

uint64_t sub_255D987AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6600, &qword_255E3E110);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255D97C4C(&v11 - v7);
  sub_255D3957C(v8, v6, &qword_27F7E6600, &qword_255E3E110);
  sub_255D4CA94();
  v9 = sub_255E3A038();
  result = sub_255D395E4(v8, &qword_27F7E6600, &qword_255E3E110);
  *a1 = v9;
  return result;
}

unint64_t sub_255D98914()
{
  result = qword_27F7E78B0;
  if (!qword_27F7E78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78B0);
  }

  return result;
}

uint64_t sub_255D98968@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7910, &qword_255E4D0A8);
  v2 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v34 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6640, &qword_255E4D0B0);
  v4 = *(*(v39 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v39);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = *(v1 + 40);
  v16 = *(v1 + 41);
  v17 = *(v1 + 48);
  if (v15 > 0xFD)
  {
    goto LABEL_4;
  }

  v36 = v12;
  v37 = v17;
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = *(v1 + 64);
  v22 = *(v1 + 72);
  v42 = v18;
  v43 = v19;
  v44 = v20;
  v45 = v15;
  if (v21)
  {

    sub_255D6EF88(v18, v19, v20, v15);
    sub_255D8F6FC(v21);
    v24 = v23;
    v26 = v25;

    sub_255D4CB98(v42, v43, v44, v45);
    v27 = v36;
    v17 = v37;
    if ((v26 & 1) == 0)
    {
      v35 = v14;
      if (v16 <= 1)
      {
        v28 = v41;
        if (v16)
        {
          v30 = sub_255E38E08();
        }

        else
        {
          v30 = sub_255E38DE8();
        }
      }

      else
      {
        v28 = v41;
        if (v16 == 2)
        {
          v30 = sub_255E38DF8();
        }

        else if (v16 == 3)
        {
          v30 = sub_255E38DD8();
        }

        else
        {
          v30 = sub_255E38DC8();
        }
      }

      *v27 = v30;
      *(v27 + 8) = v24;
      *(v27 + 16) = 0;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7918, &qword_255E4D0B8) + 44);
      v42 = v17;
      swift_getKeyPath();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
      sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
      sub_255E3A0E8();
      v10 = v35;
      sub_255D9B71C(v27, v35, &qword_27F7E6640, &qword_255E4D0B0);
      goto LABEL_24;
    }

LABEL_4:
    if (v16 <= 1)
    {
      v28 = v41;
      if (v16)
      {
        v29 = sub_255E38E08();
      }

      else
      {
        v29 = sub_255E38DE8();
      }
    }

    else
    {
      v28 = v41;
      if (v16 == 2)
      {
        v29 = sub_255E38DF8();
      }

      else if (v16 == 3)
      {
        v29 = sub_255E38DD8();
      }

      else
      {
        v29 = sub_255E38DC8();
      }
    }

    *v7 = v29;
    *(v7 + 1) = 0;
    v7[16] = 1;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7918, &qword_255E4D0B8) + 44);
    v42 = v17;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
    sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
    sub_255E3A0E8();
    sub_255D9B71C(v7, v10, &qword_27F7E6640, &qword_255E4D0B0);
LABEL_24:
    sub_255D3957C(v10, v28, &qword_27F7E6640, &qword_255E4D0B0);
    swift_storeEnumTagMultiPayload();
    sub_255D38950(&qword_27F7E6638, &qword_27F7E6640, &qword_255E4D0B0);
    sub_255E39258();
    return sub_255D395E4(v10, &qword_27F7E6640, &qword_255E4D0B0);
  }

  sub_255D612A0(v18, v19, v20, v15);
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D98ED8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = a2;
  v3 = sub_255E385D8();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7950, &qword_255E4D0F8);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v72 = sub_255E38CC8();
  v12 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9BE14();
  v14 = v50;
  sub_255E3AE28();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D647C8(0, 0, 0, 254);
  }

  else
  {
    v15 = v49;
    v46 = v12;
    v50 = a1;
    v16 = v48;
    LOBYTE(v56) = 0;
    v17 = sub_255E3AB88();
    if (v18)
    {
      v20 = v17;
      v45 = v18;
    }

    else
    {
      v21 = v6;
      sub_255E385C8();
      v20 = sub_255E385B8();
      v45 = v22;
      (*(v15 + 8))(v21, v3);
    }

    LOBYTE(v51) = 1;
    sub_255D64774();
    sub_255E3ABA8();
    v23 = v20;
    v24 = v56;
    v44 = v57;
    v49 = v58;
    v25 = v59;
    sub_255D647C8(0, 0, 0, 254);
    LOBYTE(v56) = 2;
    sub_255E3AB88();
    if (v26)
    {
      v27 = sub_255E0C3D8();
      if (v27 == 5)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }
    }

    else
    {
      v28 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    LOBYTE(v56) = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    if (v69)
    {
      v29 = v69;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v43 = sub_255D48968(v29);

    v30 = v28;
    (*(v16 + 8))(v10, v7);
    v42 = v23;
    *&v51 = v23;
    *(&v51 + 1) = v45;
    *&v52 = v24;
    v31 = v24;
    v32 = v44;
    v33 = v49;
    *(&v52 + 1) = v44;
    *&v53 = v49;
    v34 = v25;
    BYTE8(v53) = v25;
    BYTE9(v53) = v28;
    *(&v53 + 10) = v70;
    HIWORD(v53) = v71;
    *&v54 = v43;
    v35 = v72;
    *(&v54 + 1) = MEMORY[0x277D84F90];
    *&v55 = v72;
    v36 = v46;
    *(&v55 + 1) = v46;
    v37 = v51;
    v38 = v52;
    v39 = v55;
    v40 = v47;
    v41 = v53;
    v47[3] = v54;
    v40[4] = v39;
    v40[1] = v38;
    v40[2] = v41;
    *v40 = v37;
    sub_255D4CD4C(&v51, &v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v56 = v42;
    v57 = v45;
    v58 = v31;
    v59 = v32;
    v60 = v33;
    v61 = v34;
    v62 = v30;
    v63 = v70;
    v64 = v71;
    v65 = v43;
    v66 = MEMORY[0x277D84F90];
    v67 = v35;
    v68 = v36;
    return sub_255D9BEEC(&v56);
  }
}

uint64_t sub_255D9948C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6628, &unk_255E3E120);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255D98968(&v11 - v7);
  sub_255D3957C(v8, v6, &qword_27F7E6628, &unk_255E3E120);
  sub_255D4CC48();
  v9 = sub_255E3A038();
  result = sub_255D395E4(v8, &qword_27F7E6628, &unk_255E3E120);
  *a1 = v9;
  return result;
}

unint64_t sub_255D995F4()
{
  result = qword_27F7E78B8;
  if (!qword_27F7E78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78B8);
  }

  return result;
}

uint64_t sub_255D99648@<X0>(uint64_t a1@<X8>)
{
  v13[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6650, &unk_255E3E130);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *(v1 + 32);
  *(v13 - v7) = *(v1 + 16);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6660, &qword_255E4D0F0) + 44);
  v13[1] = v9;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  sub_255E3A0E8();
  sub_255D3957C(v8, v6, &qword_27F7E6650, &unk_255E3E130);
  sub_255D38950(&qword_27F7E6658, &qword_27F7E6650, &unk_255E3E130);
  v11 = sub_255E3A038();
  result = sub_255D395E4(v8, &qword_27F7E6650, &unk_255E3E130);
  *v13[0] = v11;
  return result;
}

uint64_t sub_255D99850@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6660, &qword_255E4D0F0) + 44);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

double sub_255D9995C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_255D9B958(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_255D999E8()
{
  result = qword_27F7E78C0;
  if (!qword_27F7E78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78C0);
  }

  return result;
}

uint64_t sub_255D99A48()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D99B28()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D99BF4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D99CD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D9C1C8();
  *a2 = result;
  return result;
}

void sub_255D99D00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000074;
  v6 = 0x6E656D6E67696C61;
  v7 = 0xE500000000000000;
  v8 = 0x7377656976;
  if (v2 != 3)
  {
    v8 = 0x695664656E6E6970;
    v7 = 0xEB00000000737765;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6963617073;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_255D99D9C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E656D6E67696C61;
  v4 = 0x7377656976;
  if (v1 != 3)
  {
    v4 = 0x695664656E6E6970;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6963617073;
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

uint64_t sub_255D99E34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D9C1C8();
  *a1 = result;
  return result;
}

uint64_t sub_255D99E5C(uint64_t a1)
{
  v2 = sub_255D9B7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D99E98(uint64_t a1)
{
  v2 = sub_255D9B7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D99ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7920, &unk_255E4D0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v25 - v5;
  v7 = sub_255E393D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v15 = v1[5];
  v16 = v1[7];
  v39 = v1[6];
  v40 = v16;
  v41 = *(v1 + 16);
  v17 = v1[3];
  v35 = v1[2];
  v36 = v17;
  v37 = v1[4];
  v38 = v15;
  v18 = v1[1];
  v33 = *v1;
  v34 = v18;
  v19 = *(v1 + 88);
  v43 = *(v1 + 72);
  v44[0] = v19;
  *(v44 + 9) = *(v1 + 97);
  v42 = *(v1 + 56);
  if (BYTE8(v43) == 254)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    LODWORD(v30) = 0;
    sub_255D9B784(&qword_27F7E71A8, MEMORY[0x277CE0428]);
    sub_255E3AE98();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_255D395E4(v6, &qword_27F7E7920, &unk_255E4D0C0);
    }
  }

  else
  {
    v30 = *(v1 + 56);
    *&v31 = *(v1 + 9);
    *(&v31 + 1) = *(&v43 + 1);
    v32[0] = *(v1 + 88);
    *(v32 + 9) = *(v1 + 97);
    if (!*(&v40 + 1))
    {
      v24 = *(v1 + 72);
      v27 = *(v1 + 56);
      v28 = v24;
      v29[0] = *(v1 + 88);
      *(v29 + 9) = *(v1 + 97);
      sub_255D736B4(&v27, &v26);
      type metadata accessor for RemoteStateStore(0);
      sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
      result = sub_255E38CB8();
      __break(1u);
      return result;
    }

    sub_255D3957C(&v42, &v27, &qword_27F7E7928, &unk_255E4D0D0);

    sub_255D72C00(v20, v6);

    v27 = v30;
    v28 = v31;
    v29[0] = v32[0];
    *(v29 + 9) = *(v32 + 9);
    sub_255D736EC(&v27);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v14, v6, v7);
  }

  v25[1] = a1;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v21 = sub_255E390F8();
    }

    else
    {
      v21 = sub_255E39108();
    }
  }

  else if (v34 == 2)
  {
    v21 = sub_255E39118();
  }

  else if (v34 == 3)
  {
    v21 = sub_255E390D8();
  }

  else
  {
    v21 = sub_255E390E8();
  }

  v25[0] = v21;
  v22 = (*(v8 + 16))(v12, v14, v7);
  MEMORY[0x28223BE20](v22);
  v25[-2] = &v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  sub_255E38828();
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_255D9A3C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6680, &qword_255E3E170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_255D99ED4(&v12 - v8);
  (*(v3 + 16))(v7, v9, v2);
  sub_255D38950(&qword_27F7E6688, &qword_27F7E6680, &qword_255E3E170);
  v10 = sub_255E3A038();
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  return result;
}

unint64_t sub_255D9A57C()
{
  result = qword_27F7E78C8;
  if (!qword_27F7E78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78C8);
  }

  return result;
}

uint64_t sub_255D9A5D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7920, &unk_255E4D0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v25 - v5;
  v7 = sub_255E393D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v15 = v1[5];
  v16 = v1[7];
  v39 = v1[6];
  v40 = v16;
  v41 = *(v1 + 16);
  v17 = v1[3];
  v35 = v1[2];
  v36 = v17;
  v37 = v1[4];
  v38 = v15;
  v18 = v1[1];
  v33 = *v1;
  v34 = v18;
  v19 = *(v1 + 88);
  v43 = *(v1 + 72);
  v44[0] = v19;
  *(v44 + 9) = *(v1 + 97);
  v42 = *(v1 + 56);
  if (BYTE8(v43) == 254)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    LODWORD(v30) = 0;
    sub_255D9B784(&qword_27F7E71A8, MEMORY[0x277CE0428]);
    sub_255E3AE98();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_255D395E4(v6, &qword_27F7E7920, &unk_255E4D0C0);
    }
  }

  else
  {
    v30 = *(v1 + 56);
    *&v31 = *(v1 + 9);
    *(&v31 + 1) = *(&v43 + 1);
    v32[0] = *(v1 + 88);
    *(v32 + 9) = *(v1 + 97);
    if (!*(&v40 + 1))
    {
      v24 = *(v1 + 72);
      v27 = *(v1 + 56);
      v28 = v24;
      v29[0] = *(v1 + 88);
      *(v29 + 9) = *(v1 + 97);
      sub_255D736B4(&v27, &v26);
      type metadata accessor for RemoteStateStore(0);
      sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
      result = sub_255E38CB8();
      __break(1u);
      return result;
    }

    sub_255D3957C(&v42, &v27, &qword_27F7E7928, &unk_255E4D0D0);

    sub_255D72C00(v20, v6);

    v27 = v30;
    v28 = v31;
    v29[0] = v32[0];
    *(v29 + 9) = *(v32 + 9);
    sub_255D736EC(&v27);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v14, v6, v7);
  }

  v25[1] = a1;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v21 = sub_255E38E08();
    }

    else
    {
      v21 = sub_255E38DE8();
    }
  }

  else if (v34 == 2)
  {
    v21 = sub_255E38DF8();
  }

  else if (v34 == 3)
  {
    v21 = sub_255E38DD8();
  }

  else
  {
    v21 = sub_255E38DC8();
  }

  v25[0] = v21;
  v22 = (*(v8 + 16))(v12, v14, v7);
  MEMORY[0x28223BE20](v22);
  v25[-2] = &v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  sub_255E38818();
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_255D9AA70(uint64_t a1)
{
  v2 = *(a1 + 40);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255D9ABA4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void, void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v58 = a5;
  v59 = a3;
  v60 = a2;
  v6 = sub_255E385D8();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7930, &unk_255E4D0E0);
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v108 = sub_255E38CC8();
  v15 = v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9B7FC();
  v17 = v64;
  sub_255E3AE28();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 254;
    v82 = 0;
    v83 = 0;
    v81 = 0;
    LOBYTE(v84) = 0;
    sub_255D395E4(&v77, &qword_27F7E7928, &unk_255E4D0D0);
  }

  else
  {
    v18 = v9;
    v19 = a1;
    LOBYTE(v77) = 0;
    v20 = sub_255E3AB88();
    if (v21)
    {
      v56 = v20;
      v23 = v13;
      v64 = v21;
    }

    else
    {
      v23 = v13;
      sub_255E385C8();
      v56 = sub_255E385B8();
      v64 = v24;
      (*(v61 + 8))(v18, v62);
    }

    LOBYTE(v68) = 1;
    sub_255D9B850();
    v25 = v10;
    v26 = v23;
    sub_255E3ABA8();
    v27 = v77;
    v106 = v78;
    LOBYTE(v77) = 2;
    v28 = sub_255E3AB88();
    v62 = v27;
    if (v29)
    {
      v30 = v60(v28);
      if (v30 == 5)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }
    }

    else
    {
      v31 = 1;
    }

    LODWORD(v61) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    LOBYTE(v68) = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    if (v77)
    {
      v32 = v77;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    v33 = v25;
    v34 = sub_255D48968(v32);

    v95 = 4;
    sub_255D9B8A4();
    sub_255E3ABA8();
    (*(v63 + 8))(v26, v33);
    v35 = v96;
    v36 = v97;
    v52 = v97;
    v53 = v96;
    v37 = v98;
    v51 = v98;
    v49 = v99;
    v63 = v100;
    v60 = v101;
    v55 = v102;
    v54 = v103;
    memset(v65, 0, sizeof(v65));
    v66 = 254;
    memset(v67, 0, sizeof(v67));
    sub_255D395E4(v65, &qword_27F7E7928, &unk_255E4D0D0);
    *&v68 = v56;
    *(&v68 + 1) = v64;
    LOBYTE(v69) = v61;
    *(&v69 + 1) = v107[0];
    DWORD1(v69) = *(v107 + 3);
    *(&v69 + 1) = v62;
    v50 = v106;
    LOBYTE(v70) = v106;
    *(&v70 + 1) = *v105;
    DWORD1(v70) = *&v105[3];
    *(&v70 + 1) = v34;
    *&v71 = MEMORY[0x277D84F90];
    *(&v71 + 1) = v35;
    *&v72 = v36;
    *(&v72 + 1) = v37;
    v38 = v49;
    *&v73 = v49;
    *(&v73 + 1) = v63;
    *&v74 = v60;
    *(&v74 + 1) = v55;
    LOBYTE(v75) = v54;
    *(&v75 + 1) = *v104;
    DWORD1(v75) = *&v104[3];
    v39 = v108;
    *(&v75 + 1) = v108;
    v76 = v15;
    v40 = v68;
    v41 = v69;
    v42 = v71;
    v44 = v58;
    v43 = v59;
    *(v58 + 32) = v70;
    *(v44 + 48) = v42;
    *v44 = v40;
    *(v44 + 16) = v41;
    v45 = v72;
    v46 = v73;
    v47 = v74;
    v48 = v75;
    *(v44 + 128) = v15;
    *(v44 + 96) = v47;
    *(v44 + 112) = v48;
    *(v44 + 64) = v45;
    *(v44 + 80) = v46;
    v43(&v68, &v77);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v77 = v56;
    v78 = v64;
    LOBYTE(v79) = v61;
    *(&v79 + 1) = v107[0];
    HIDWORD(v79) = *(v107 + 3);
    v80 = v62;
    LOBYTE(v81) = v50;
    *(&v81 + 1) = *v105;
    HIDWORD(v81) = *&v105[3];
    v82 = v34;
    v83 = MEMORY[0x277D84F90];
    v84 = v53;
    v85 = v52;
    v86 = v51;
    v87 = v38;
    v88 = v63;
    v89 = v60;
    v90 = v55;
    v91 = v54;
    *&v92[3] = *&v104[3];
    *v92 = *v104;
    v93 = v39;
    v94 = v15;
    return v57(&v77);
  }
}

uint64_t sub_255D9B238@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6698, &qword_255E3E178);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_255D9A5D0(&v12 - v8);
  (*(v3 + 16))(v7, v9, v2);
  sub_255D38950(&qword_27F7E66A0, &qword_27F7E6698, &qword_255E3E178);
  v10 = sub_255E3A038();
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  return result;
}

uint64_t sub_255D9B3EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D9B45C()
{
  result = qword_27F7E78D0;
  if (!qword_27F7E78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78D0);
  }

  return result;
}

unint64_t sub_255D9B4B0(uint64_t a1)
{
  result = sub_255D9B4D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B4D8()
{
  result = qword_27F7E78D8;
  if (!qword_27F7E78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78D8);
  }

  return result;
}

unint64_t sub_255D9B52C(uint64_t a1)
{
  result = sub_255D9B554();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B554()
{
  result = qword_27F7E78E0;
  if (!qword_27F7E78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78E0);
  }

  return result;
}

unint64_t sub_255D9B5A8(uint64_t a1)
{
  result = sub_255D9B5D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B5D0()
{
  result = qword_27F7E78E8;
  if (!qword_27F7E78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78E8);
  }

  return result;
}

unint64_t sub_255D9B624(uint64_t a1)
{
  result = sub_255D9B64C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B64C()
{
  result = qword_27F7E78F0;
  if (!qword_27F7E78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78F0);
  }

  return result;
}

unint64_t sub_255D9B6A0(uint64_t a1)
{
  result = sub_255D9B6C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B6C8()
{
  result = qword_27F7E78F8;
  if (!qword_27F7E78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E78F8);
  }

  return result;
}

uint64_t sub_255D9B71C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_255D9B784(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255D9B7FC()
{
  result = qword_27F7E7938;
  if (!qword_27F7E7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7938);
  }

  return result;
}

unint64_t sub_255D9B850()
{
  result = qword_27F7E7940;
  if (!qword_27F7E7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7940);
  }

  return result;
}

unint64_t sub_255D9B8A4()
{
  result = qword_27F7E7948;
  if (!qword_27F7E7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7948);
  }

  return result;
}

double sub_255D9B958@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = a2;
  v3 = sub_255E385D8();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7950, &qword_255E4D0F8);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v43 = sub_255E38CC8();
  v12 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9BE14();
  v14 = v42;
  sub_255E3AE28();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return result;
  }

  v38 = v12;
  v42 = a1;
  v16 = v40;
  v15 = v41;
  LOBYTE(v48) = 0;
  v17 = sub_255E3AB88();
  if (v18)
  {
    *&v37 = v17;
    *(&v37 + 1) = v18;
  }

  else
  {
    sub_255E385C8();
    *&v37 = sub_255E385B8();
    *(&v37 + 1) = v20;
    (*(v39 + 8))(v6, v3);
  }

  v21 = v15;
  LOBYTE(v44) = 2;
  sub_255D9BE68();
  sub_255E3ABA8();
  v22 = v16;
  if (v48 <= 4u)
  {
    if (v48 > 1u)
    {
      if (v48 == 2)
      {
        v23 = sub_255E3A248();
      }

      else if (v48 == 3)
      {
        v23 = sub_255E3A208();
      }

      else
      {
        v23 = sub_255E3A218();
      }

      goto LABEL_25;
    }

    if (v48)
    {
      v23 = sub_255E3A238();
      goto LABEL_25;
    }

LABEL_17:
    v23 = sub_255E3A228();
    goto LABEL_25;
  }

  if (v48 > 6u)
  {
    if (v48 == 7)
    {
      v23 = sub_255E3A1E8();
      goto LABEL_25;
    }

    if (v48 == 8)
    {
      v23 = sub_255E3A1F8();
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v48 == 5)
  {
    v23 = sub_255E3A1C8();
  }

  else
  {
    v23 = sub_255E3A1D8();
  }

LABEL_25:
  v25 = v23;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
  LOBYTE(v48) = 3;
  sub_255D5F038();
  sub_255E3ABA8();
  if (v55)
  {
    v27 = v55;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v28 = v10;
  v29 = v22;
  v30 = sub_255D48968(v27);

  (*(v29 + 8))(v28, v7);
  v31 = v37;
  v44 = v37;
  *&v45 = v25;
  *(&v45 + 1) = v26;
  *&v46 = v30;
  v32 = v43;
  *(&v46 + 1) = MEMORY[0x277D84F90];
  *&v47 = v43;
  v33 = v38;
  *(&v47 + 1) = v38;
  sub_255D4CDFC(&v44, &v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  v48 = v31;
  v49 = v25;
  v50 = v26;
  v51 = v30;
  v52 = MEMORY[0x277D84F90];
  v53 = v32;
  v54 = v33;
  sub_255D9BEBC(&v48);
  v34 = v45;
  *v21 = v44;
  v21[1] = v34;
  result = *&v46;
  v35 = v47;
  v21[2] = v46;
  v21[3] = v35;
  return result;
}

unint64_t sub_255D9BE14()
{
  result = qword_27F7E7958;
  if (!qword_27F7E7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7958);
  }

  return result;
}

unint64_t sub_255D9BE68()
{
  result = qword_27F7E7960;
  if (!qword_27F7E7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7960);
  }

  return result;
}

unint64_t sub_255D9BF70()
{
  result = qword_27F7E7968;
  if (!qword_27F7E7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7968);
  }

  return result;
}

unint64_t sub_255D9BFC8()
{
  result = qword_27F7E7970;
  if (!qword_27F7E7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7970);
  }

  return result;
}

unint64_t sub_255D9C020()
{
  result = qword_27F7E7978;
  if (!qword_27F7E7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7978);
  }

  return result;
}

unint64_t sub_255D9C078()
{
  result = qword_27F7E7980;
  if (!qword_27F7E7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7980);
  }

  return result;
}

unint64_t sub_255D9C0D0()
{
  result = qword_27F7E7988;
  if (!qword_27F7E7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7988);
  }

  return result;
}

unint64_t sub_255D9C128()
{
  result = qword_27F7E7990;
  if (!qword_27F7E7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7990);
  }

  return result;
}

uint64_t sub_255D9C17C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D9C1C8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_255D9C264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_255D9C2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D9C34C(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255D9C450(uint64_t a1)
{
  v2 = sub_255D9F098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9C48C(uint64_t a1)
{
  v2 = sub_255D9F098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D9C4C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67E8, &qword_255E4DB90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = v2[5];
  v17 = *v2;
  v18 = *(v2 + 1);
  v19 = *(v2 + 3);
  v20 = v13;
  v14 = sub_255D4DAD0();
  (*(v14 + 24))(a1, v14);
  (*(v6 + 16))(v10, v12, v5);
  sub_255D38950(&qword_27F7E67F0, &qword_27F7E67E8, &qword_255E4DB90);
  v15 = sub_255E3A038();
  result = (*(v6 + 8))(v12, v5);
  *a2 = v15;
  return result;
}

uint64_t sub_255D9C680()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7A20, &qword_255E4DB98);
  sub_255E39FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D38950(&qword_27F7E7A28, &qword_27F7E6160, &unk_255E4DBA0);
  sub_255D38950(&qword_27F7E7A30, &qword_27F7E6160, &unk_255E4DBA0);
  sub_255D38950(&qword_27F7E7A38, &qword_27F7E6160, &unk_255E4DBA0);
  sub_255D6FC70();
  sub_255D6F180();
  return sub_255E38AF8();
}

double sub_255D9C810@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_255D9ED48(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_255D9C89C()
{
  result = qword_27F7E7998;
  if (!qword_27F7E7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7998);
  }

  return result;
}

uint64_t sub_255D9C8F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 2003134838;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 2003134838;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D9C984()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9C9F4()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D9CA50()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D9CAC8(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 2003134838;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D9CAF4()
{
  if (*v0)
  {
    result = 2003134838;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_255D9CB28(uint64_t a1)
{
  v2 = sub_255D9ECBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9CB64(uint64_t a1)
{
  v2 = sub_255D9ECBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D9CBA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_255E385D8();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7A10, &qword_255E4DB88);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v30[5] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D9EB74(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v25 = sub_255E38CC8();
  v30[6] = v25;
  v30[7] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9ECBC();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = v23;
    LOBYTE(v26) = 0;
    v15 = sub_255E3AB88();
    v18 = v16;
    if (!v16)
    {
      sub_255E385C8();
      v19 = sub_255E385B8();
      v18 = v20;
      (*(v22 + 8))(v7, v4);
      v15 = v19;
    }

    v29[0] = v15;
    v29[1] = v18;
    v31 = 1;
    v27 = &type metadata for ViewContent;
    v28 = sub_255D44794();
    *&v26 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    (*(v24 + 8))(v11, v8);
    sub_255D34630(&v26, v30);
    sub_255D4DC70(v29, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255D9ED10(v29);
  }
}

uint64_t sub_255D9CF00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6808, &qword_255E3E1F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = sub_255D4DB78();
  (*(v12 + 24))(a1, v12);
  (*(v5 + 16))(v9, v11, v4);
  sub_255D38950(&qword_27F7E6810, &qword_27F7E6808, &qword_255E3E1F0);
  v13 = sub_255E3A038();
  result = (*(v5 + 8))(v11, v4);
  *a2 = v13;
  return result;
}

unint64_t sub_255D9D13C()
{
  result = qword_27F7E79A0;
  if (!qword_27F7E79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E79A0);
  }

  return result;
}

uint64_t sub_255D9D190()
{
  v1 = sub_255E38D48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  if (*(v0 + 176) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_255E3A858();
    v8 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v7, v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return v7;
}

uint64_t sub_255D9D2F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6858, &qword_255E3E210);
  v40 = *(v42 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v38 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E79C8, &unk_255E4DB20);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6848, &qword_255E3E208);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
  *&v43 = v14;
  *(&v43 + 1) = v15;
  v44 = v16;
  LOBYTE(v45) = v17;
  if (*(v1 + 128))
  {
    sub_255D3E5A8(v14, v15, v16, v17);

    v19 = StringResolvable.resolved(with:)(v18);
    v21 = v20;
    sub_255D38060(v43, *(&v43 + 1), v44, v45);

    sub_255D3957C(v2 + 48, &v43, &qword_27F7E6558, &qword_255E3DD80);
    if (v45)
    {
      sub_255D34630(&v43, v48);
      v46 = v19;
      v47 = v21;
      sub_255D9D954(v48, v2, &v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E79D0, &qword_255E4DB30);
      sub_255D9EA04();
      sub_255D6EEE8();
      sub_255E389D8();
      (*(v10 + 16))(v8, v13, v9);
      swift_storeEnumTagMultiPayload();
      sub_255D38950(&qword_27F7E6840, &qword_27F7E6848, &qword_255E3E208);
      sub_255D38950(&qword_27F7E6850, &qword_27F7E6858, &qword_255E3E210);
      sub_255E39258();
      (*(v10 + 8))(v13, v9);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6838, &qword_255E3E200);
      (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
      return __swift_destroy_boxed_opaque_existential_1Tm(v48);
    }

    else
    {
      v38 = a1;
      sub_255D395E4(&v43, &qword_27F7E6558, &qword_255E3DD80);
      v24 = *(v2 + 120);
      if (v24 == 255)
      {

        v29 = v38;
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6838, &qword_255E3E200);
        return (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      }

      else
      {
        v25 = *(v2 + 104);
        v26 = *(v2 + 112);
        v27 = *(v2 + 96);

        sub_255DDEBF8(v28, v27, v25, v26, v24 & 1, &v43);

        v31 = v43;
        *&v43 = v19;
        *(&v43 + 1) = v21;
        v48[0] = v31;
        sub_255D6EEE8();
        sub_255D7D39C();
        sub_255D7B41C();
        sub_255D6F180();

        v32 = v39;
        sub_255E389E8();
        v33 = v40;
        v34 = v42;
        (*(v40 + 16))(v8, v32, v42);
        swift_storeEnumTagMultiPayload();
        sub_255D38950(&qword_27F7E6840, &qword_27F7E6848, &qword_255E3E208);
        sub_255D38950(&qword_27F7E6850, &qword_27F7E6858, &qword_255E3E210);
        v35 = v38;
        sub_255E39258();

        (*(v33 + 8))(v32, v34);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6838, &qword_255E3E200);
        return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
      }
    }
  }

  else
  {
    v37 = *(v1 + 136);
    sub_255D3E5A8(v14, v15, v16, v17);
    type metadata accessor for RemoteStateStore(0);
    sub_255D9EB74(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D9D954@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = a2[16];
  if (v8)
  {
    v9 = v7;
    type metadata accessor for RemoteStateStore(0);
    sub_255D9EB74(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);

    v10 = sub_255E386C8();
    v11 = a2[18];
    if (v11)
    {
      v12 = v10;
      type metadata accessor for LocalStateStore(0);
      sub_255D9EB74(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

      v13 = sub_255E386C8();
      sub_255D9D190();
      v15 = v14;
      KeyPath = swift_getKeyPath();
      type metadata accessor for AnyWeakDataSource();
      v17 = swift_allocObject();
      *(v17 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v17 + 24) = v15;
      swift_unknownObjectWeakAssign();
      result = swift_unknownObjectRelease();
      *a3 = v9;
      a3[1] = v12;
      a3[2] = v8;
      a3[3] = v13;
      a3[4] = v11;
      a3[5] = KeyPath;
      a3[6] = v17;
      a3[7] = &off_2867E3ED8;
      return result;
    }

    v22 = a2[19];
    type metadata accessor for LocalStateStore(0);
    v20 = &qword_27F7E5EF8;
    v21 = type metadata accessor for LocalStateStore;
  }

  else
  {
    v19 = a2[17];
    type metadata accessor for RemoteStateStore(0);
    v20 = &qword_27F7E5EF0;
    v21 = type metadata accessor for RemoteStateStore;
  }

  sub_255D9EB74(v20, v21);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D9DB60()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9DC14()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D9DCB4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9DD64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D9F434();
  *a2 = result;
  return result;
}

void sub_255D9DD94(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEB000000006E6F69;
  v5 = 0x74616E6974736564;
  if (*v1 != 2)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D9DE04()
{
  v1 = 25705;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D9DE70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D9F434();
  *a1 = result;
  return result;
}

uint64_t sub_255D9DE98(uint64_t a1)
{
  v2 = sub_255D9EBC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9DED4(uint64_t a1)
{
  v2 = sub_255D9EBC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D9DF10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_255E385D8();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7A00, &qword_255E4DB80);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  v53 = MEMORY[0x277D84F90];
  v55 = 0;
  v54 = 0uLL;
  v56 = -1;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9EB74(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  *&v42 = sub_255E38CC8();
  v57 = v42;
  v58 = v12;
  type metadata accessor for LocalStateStore(0);
  sub_255D9EB74(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
  v41 = sub_255E38CC8();
  v59 = v41;
  v60 = v13;
  KeyPath = swift_getKeyPath();
  v61 = KeyPath;
  v62 = 0;
  v63 = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9EBC8();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D395E4(v51, &qword_27F7E6558, &qword_255E3DD80);
    sub_255D5C2F4(v54, *(&v54 + 1), v55, v56);
  }

  v15 = v39;
  v16 = v4;
  v36 = a1;
  v17 = v38;
  LOBYTE(v43) = 0;
  v18 = sub_255E3AB88();
  v21 = v19;
  if (!v19)
  {
    sub_255E385C8();
    v22 = sub_255E385B8();
    v21 = v23;
    (*(v15 + 8))(v7, v16);
    v18 = v22;
  }

  v47[0] = v18;
  v47[1] = v21;
  v64 = 1;
  sub_255D3EA0C();
  sub_255E3ABC8();
  v39 = v21;
  v48 = v43;
  v49 = v44;
  v50 = v45;
  LOBYTE(v43) = 2;
  if (sub_255E3ABE8())
  {
    v64 = 2;
    v45 = &type metadata for ViewContent;
    v46 = sub_255D44794();
    *&v43 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    (*(v17 + 8))(v11, v8);
    sub_255D9EC4C(&v43, v51);
  }

  else
  {
    v24 = v11;
    v25 = v8;
    LOBYTE(v43) = 3;
    if ((sub_255E3ABE8() & 1) == 0)
    {
      v26 = v24;
      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v27 = sub_255E386A8();
      __swift_project_value_buffer(v27, qword_27F8152D8);
      v28 = sub_255E38688();
      v29 = sub_255E3A848();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v37;
      if (v30)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_255D2E000, v28, v29, "NavigationLinkView did not recieve a destination or value", v32, 2u);
        MEMORY[0x259C4F9E0](v32, -1, -1);
      }

      (*(v17 + 8))(v26, v25);
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v64 = 3;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
    sub_255E3ABC8();
    (*(v17 + 8))(v24, v8);
    v42 = v43;
    v33 = v44;
    v34 = v45;
    sub_255D5C2F4(v54, *(&v54 + 1), v55, v56);
    v54 = v42;
    v55 = v33;
    v56 = v34;
  }

  v31 = v37;
LABEL_17:
  v35 = v36;
  sub_255D4DED8(v47, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return sub_255D9EC1C(v47);
}

uint64_t sub_255D9E664@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6820, &qword_255E3E1F8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255D9D2F0(&v11 - v7);
  sub_255D3957C(v8, v6, &qword_27F7E6820, &qword_255E3E1F8);
  sub_255D4DCCC();
  v9 = sub_255E3A038();
  result = sub_255D395E4(v8, &qword_27F7E6820, &qword_255E3E1F8);
  *a1 = v9;
  return result;
}

uint64_t sub_255D9E7CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D9E83C()
{
  result = qword_27F7E79A8;
  if (!qword_27F7E79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E79A8);
  }

  return result;
}

unint64_t sub_255D9E890(uint64_t a1)
{
  result = sub_255D9E8B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9E8B8()
{
  result = qword_27F7E79B0;
  if (!qword_27F7E79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E79B0);
  }

  return result;
}

unint64_t sub_255D9E90C(uint64_t a1)
{
  result = sub_255D9E934();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9E934()
{
  result = qword_27F7E79B8;
  if (!qword_27F7E79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E79B8);
  }

  return result;
}

unint64_t sub_255D9E988(uint64_t a1)
{
  result = sub_255D9E9B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9E9B0()
{
  result = qword_27F7E79C0;
  if (!qword_27F7E79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E79C0);
  }

  return result;
}

unint64_t sub_255D9EA04()
{
  result = qword_27F7E79D8;
  if (!qword_27F7E79D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E79D0, &qword_255E4DB30);
    sub_255D9EABC();
    sub_255D38950(&qword_27F7E79F0, &qword_27F7E79F8, &qword_255E4DB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E79D8);
  }

  return result;
}

unint64_t sub_255D9EABC()
{
  result = qword_27F7E79E0;
  if (!qword_27F7E79E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E79E8, &unk_255E4DB38);
    sub_255D3849C();
    sub_255D38950(&qword_27F7E5FA8, &qword_27F7E5FB0, &unk_255E3BA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E79E0);
  }

  return result;
}

uint64_t sub_255D9EB74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255D9EBC8()
{
  result = qword_27F7E7A08;
  if (!qword_27F7E7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A08);
  }

  return result;
}

uint64_t sub_255D9EC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6558, &qword_255E3DD80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_255D9ECBC()
{
  result = qword_27F7E7A18;
  if (!qword_27F7E7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A18);
  }

  return result;
}

uint64_t sub_255D9ED48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v4 = sub_255E385D8();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7A40, &unk_255E4DBE0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v40 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E39F98();
  v12 = v38;
  v13 = v39;
  v14 = a1[3];
  v15 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_255D9F098();
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v16 = v7;
    v32 = v12;
    v18 = v35;
    v17 = v36;
    LOBYTE(v38) = 0;
    v19 = sub_255E3AB88();
    v22 = v21;
    v31 = v13;
    v23 = v18;
    if (v21)
    {
      v30 = v19;
    }

    else
    {
      sub_255E385C8();
      v30 = sub_255E385B8();
      v22 = v24;
      (*(v33 + 8))(v16, v34);
    }

    v25 = v17;
    v26 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    LOBYTE(v40) = 1;
    sub_255D5F038();
    v27 = v8;
    sub_255E3ABC8();
    v28 = sub_255D48968(v38);

    (*(v23 + 8))(v11, v27);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v37);
    *v25 = v30;
    v25[1] = v22;
    v25[2] = v28;
    v25[3] = v26;
    v29 = v31;
    v25[4] = v32;
    v25[5] = v29;
  }

  return result;
}

unint64_t sub_255D9F098()
{
  result = qword_27F7E7A48;
  if (!qword_27F7E7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A48);
  }

  return result;
}

unint64_t sub_255D9F120()
{
  result = qword_27F7E7A50;
  if (!qword_27F7E7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A50);
  }

  return result;
}

unint64_t sub_255D9F178()
{
  result = qword_27F7E7A58;
  if (!qword_27F7E7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A58);
  }

  return result;
}

unint64_t sub_255D9F1D0()
{
  result = qword_27F7E7A60;
  if (!qword_27F7E7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A60);
  }

  return result;
}

unint64_t sub_255D9F228()
{
  result = qword_27F7E7A68;
  if (!qword_27F7E7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A68);
  }

  return result;
}

unint64_t sub_255D9F280()
{
  result = qword_27F7E7A70;
  if (!qword_27F7E7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A70);
  }

  return result;
}

unint64_t sub_255D9F2D8()
{
  result = qword_27F7E7A78;
  if (!qword_27F7E7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A78);
  }

  return result;
}

unint64_t sub_255D9F330()
{
  result = qword_27F7E7A80;
  if (!qword_27F7E7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A80);
  }

  return result;
}

unint64_t sub_255D9F388()
{
  result = qword_27F7E7A88;
  if (!qword_27F7E7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A88);
  }

  return result;
}

unint64_t sub_255D9F3E0()
{
  result = qword_27F7E7A90;
  if (!qword_27F7E7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A90);
  }

  return result;
}

uint64_t sub_255D9F434()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D9F480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D9F4C8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_255D9F524@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_255D9F584@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D9F5E8(uint64_t a1)
{
  v2 = sub_255D9F984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9F624(uint64_t a1)
{
  v2 = sub_255D9F984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D9F660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7AA0, &qword_255E4E048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v17 = MEMORY[0x277D84F90];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9F984();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 1;
  sub_255D65E28();
  sub_255E3ABC8();
  (*(v6 + 8))(v9, v5);
  v15[0] = *&v12[8];
  v15[1] = v13;
  v16 = v14;
  sub_255D9F9D8(v15, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D9FA10(v15);
}

uint64_t sub_255D9F814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D65E7C(v2, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = (*(v6 + 16))(a1, v5, v6);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v9 = MEMORY[0x277CE0F60];
  a2[3] = MEMORY[0x277CE0F78];
  a2[4] = v9;
  *a2 = v7;
  return result;
}

uint64_t sub_255D9F8C4(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

unint64_t sub_255D9F908(uint64_t a1)
{
  result = sub_255D9F930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D9F930()
{
  result = qword_27F7E7A98;
  if (!qword_27F7E7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7A98);
  }

  return result;
}

unint64_t sub_255D9F984()
{
  result = qword_27F7E7AA8;
  if (!qword_27F7E7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7AA8);
  }

  return result;
}

unint64_t sub_255D9FA54()
{
  result = qword_27F7E7AB0;
  if (!qword_27F7E7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7AB0);
  }

  return result;
}

unint64_t sub_255D9FAAC()
{
  result = qword_27F7E7AB8;
  if (!qword_27F7E7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7AB8);
  }

  return result;
}

unint64_t sub_255D9FB04()
{
  result = qword_27F7E7AC0;
  if (!qword_27F7E7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7AC0);
  }

  return result;
}

uint64_t type metadata accessor for ResizableImageModifier()
{
  result = qword_27F7E7AC8;
  if (!qword_27F7E7AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255D9FBCC()
{
  result = sub_255E39EB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255D9FC48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x68637465727473;
  }

  else
  {
    v4 = 1701603700;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x68637465727473;
  }

  else
  {
    v6 = 1701603700;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D9FCE8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9FD64()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D9FDCC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D9FE50(uint64_t *a1@<X8>)
{
  v2 = 1701603700;
  if (*v1)
  {
    v2 = 0x68637465727473;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D9FF44()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9FFFC()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DA00A0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA0154@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DA0F40();
  *a2 = result;
  return result;
}

void sub_255DA0184(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696461656CLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255DA02A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7465736E49706163;
  }

  else
  {
    v4 = 0x676E697A69736572;
  }

  if (v3)
  {
    v5 = 0xEC00000065646F4DLL;
  }

  else
  {
    v5 = 0xE900000000000073;
  }

  if (*a2)
  {
    v6 = 0x7465736E49706163;
  }

  else
  {
    v6 = 0x676E697A69736572;
  }

  if (*a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xEC00000065646F4DLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DA035C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA03EC()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DA0468()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255DA0500(uint64_t *a1@<X8>)
{
  v2 = 0x676E697A69736572;
  if (*v1)
  {
    v2 = 0x7465736E49706163;
  }

  v3 = 0xEC00000065646F4DLL;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DA054C()
{
  if (*v0)
  {
    result = 0x7465736E49706163;
  }

  else
  {
    result = 0x676E697A69736572;
  }

  *v0;
  return result;
}

uint64_t sub_255DA0594@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255DA05F8(uint64_t a1)
{
  v2 = sub_255DA0B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA0634(uint64_t a1)
{
  v2 = sub_255DA0B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA0670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7AE0, &qword_255E4E210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v35 - v6;
  v7 = sub_255E39EB8();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7AE8, &qword_255E4E218);
  v40 = *(v44 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v44);
  v13 = &v35 - v12;
  v14 = type metadata accessor for ResizableImageModifier();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA0B50();
  sub_255E3AE28();
  if (v2)
  {
    v26 = a1;
  }

  else
  {
    v37 = v14;
    v38 = v17;
    v19 = a1;
    v21 = v40;
    v20 = v41;
    v36 = v10;
    v22 = v42;
    v23 = v43;
    v47 = 1;
    sub_255DA0BA4();
    v24 = v44;
    sub_255E3ABA8();
    v25 = v38;
    *v38 = 0u;
    v25[1] = 0u;
    v45 = 0;
    sub_255DA0BF8();
    sub_255E3ABA8();
    (*(v21 + 8))(v13, v24);
    if (v46 == 2)
    {
      v28 = v22;
      (*(v20 + 56))(v23, 1, 1, v22);
      v29 = v36;
      (*(v20 + 104))(v36, *MEMORY[0x277CE0FE0], v28);
      v30 = *(v20 + 32);
    }

    else
    {
      if (v46)
      {
        v31 = MEMORY[0x277CE0FE0];
      }

      else
      {
        v31 = MEMORY[0x277CE0FD8];
      }

      v28 = v22;
      (*(v20 + 104))(v23, *v31, v22);
      (*(v20 + 56))(v23, 0, 1, v22);
      v30 = *(v20 + 32);
      v29 = v36;
      v30(v36, v23, v28);
    }

    v32 = v19;
    v34 = v38;
    v33 = v39;
    v30(v38 + *(v37 + 20), v29, v28);
    sub_255DA0C4C(v34, v33);
    v26 = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

unint64_t sub_255DA0AD0(uint64_t a1)
{
  result = sub_255DA0AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA0AF8()
{
  result = qword_27F7E7AD8;
  if (!qword_27F7E7AD8)
  {
    type metadata accessor for ResizableImageModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7AD8);
  }

  return result;
}

unint64_t sub_255DA0B50()
{
  result = qword_27F7E7AF0;
  if (!qword_27F7E7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7AF0);
  }

  return result;
}

unint64_t sub_255DA0BA4()
{
  result = qword_27F7E7AF8;
  if (!qword_27F7E7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7AF8);
  }

  return result;
}

unint64_t sub_255DA0BF8()
{
  result = qword_27F7E7B00;
  if (!qword_27F7E7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B00);
  }

  return result;
}

uint64_t sub_255DA0C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResizableImageModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255DA0CE4()
{
  result = qword_27F7E7B08;
  if (!qword_27F7E7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B08);
  }

  return result;
}

unint64_t sub_255DA0D3C()
{
  result = qword_27F7E7B10;
  if (!qword_27F7E7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B10);
  }

  return result;
}

unint64_t sub_255DA0D94()
{
  result = qword_27F7E7B18;
  if (!qword_27F7E7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B18);
  }

  return result;
}

unint64_t sub_255DA0DEC()
{
  result = qword_27F7E7B20;
  if (!qword_27F7E7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B20);
  }

  return result;
}

unint64_t sub_255DA0E44()
{
  result = qword_27F7E7B28;
  if (!qword_27F7E7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B28);
  }

  return result;
}

unint64_t sub_255DA0E98()
{
  result = qword_27F7E7B30;
  if (!qword_27F7E7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B30);
  }

  return result;
}

unint64_t sub_255DA0EEC()
{
  result = qword_27F7E7B38;
  if (!qword_27F7E7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B38);
  }

  return result;
}

uint64_t sub_255DA0F40()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_255DA0FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_255DA1008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DA1088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7B50, &qword_255E4EA70);
  v4 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v76 = v60 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E69E0, &unk_255E3E290);
  v68 = *(v73 - 8);
  v6 = *(v68 + 64);
  v7 = MEMORY[0x28223BE20](v73);
  v63 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v60 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7B58, &qword_255E4EA78);
  v11 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v71 = v60 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7B60, &qword_255E4EA80);
  v13 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v15 = v60 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E69C0, &qword_255E3E280);
  v16 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v67 = v60 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E69D0, &qword_255E3E288);
  v62 = *(v66 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v66);
  v20 = v60 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E69B0, &qword_255E3E278);
  v21 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v72 = v60 - v22;
  v23 = *(v1 + 176);
  if (v23)
  {
    v24 = *(v1 + 128);
    v26 = *(v2 + 112);
    v25 = *(v2 + 120);
    v27 = *(v2 + 104);

    sub_255DBFDEC(v28, v27, v26, v25, v24, &v80);

    v29 = v81;
    v64 = v80;
    v30 = v82;
    v31 = *(v2 + 48);
    v60[1] = a1;
    v61 = v81;
    if (v31 > 0xFD)
    {
      sub_255D3957C(v2 + 136, &v77, &qword_27F7E6558, &qword_255E3DD80);
      if (v79)
      {
        v35 = sub_255D34630(&v77, &v80);
        v63 = v60;
        *&v77 = v64;
        *(&v77 + 1) = v29;
        v78 = v30;
        v36 = MEMORY[0x28223BE20](v35);
        v37 = MEMORY[0x28223BE20](v36);
        MEMORY[0x28223BE20](v37);
        v62 = v30 & 0x1FFFFFFFFFFFFFFFLL;

        v60[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
        sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
        sub_255D6F180();
        sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
        sub_255E3A008();
        v38 = v68;
        v39 = v73;
        (*(v68 + 16))(v15, v10, v73);
        swift_storeEnumTagMultiPayload();
        sub_255D38950(&qword_27F7E69C8, &qword_27F7E69D0, &qword_255E3E288);
        sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290);
        v40 = v67;
        sub_255E39258();
        sub_255D3957C(v40, v71, &qword_27F7E69C0, &qword_255E3E280);
        swift_storeEnumTagMultiPayload();
        sub_255D4ECE0();
        v54 = v72;
        sub_255E39258();
        sub_255D395E4(v40, &qword_27F7E69C0, &qword_255E3E280);
        (*(v38 + 8))(v10, v39);
        __swift_destroy_boxed_opaque_existential_1Tm(&v80);
      }

      else
      {
        v41 = sub_255D395E4(&v77, &qword_27F7E6558, &qword_255E3DD80);
        MEMORY[0x28223BE20](v41);
        *&v77 = v64;
        *(&v77 + 1) = v29;
        v78 = v30;
        sub_255D3957C(v2 + 56, &v80, &qword_27F7E6558, &qword_255E3DD80);
        v42 = v83;
        if (v83)
        {
          v43 = v84;
          __swift_project_boxed_opaque_existential_1(&v80, v83);
          v44 = v30;
          v45 = *(v43 + 24);
          v62 = v44 & 0x1FFFFFFFFFFFFFFFLL;

          v46 = v45(v42, v43);
          __swift_destroy_boxed_opaque_existential_1Tm(&v80);
        }

        else
        {
          v62 = v30 & 0x1FFFFFFFFFFFFFFFLL;

          sub_255D395E4(&v80, &qword_27F7E6558, &qword_255E3DD80);
          v46 = 0;
        }

        v80 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
        sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
        sub_255D6F180();
        sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
        v55 = v63;
        sub_255E39FF8();
        v56 = v68;
        v57 = v73;
        (*(v68 + 16))(v71, v55, v73);
        swift_storeEnumTagMultiPayload();
        sub_255D4ECE0();
        sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290);
        v54 = v72;
        sub_255E39258();
        (*(v56 + 8))(v55, v57);
      }
    }

    else
    {
      v60[0] = v82;
      v33 = *(v2 + 32);
      v32 = *(v2 + 40);
      v80 = *(v2 + 24);
      v34 = v80;
      v81 = v33;
      v82 = v32;
      LOBYTE(v83) = v31;

      sub_255D94C04(v34, v33, v32, v31);
      v47 = StringResolvable.resolved(with:)(v23);
      v49 = v48;
      sub_255D38060(v80, v81, v82, v83);

      *&v77 = v47;
      *(&v77 + 1) = v49;
      v80 = v64;
      v81 = v61;
      v82 = v60[0];
      MEMORY[0x28223BE20](v50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
      sub_255D6F180();
      sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
      sub_255D6EEE8();
      sub_255E3A018();
      v51 = v62;
      v52 = v66;
      (*(v62 + 16))(v15, v20, v66);
      swift_storeEnumTagMultiPayload();
      sub_255D38950(&qword_27F7E69C8, &qword_27F7E69D0, &qword_255E3E288);
      sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290);
      v53 = v67;
      sub_255E39258();
      sub_255D3957C(v53, v71, &qword_27F7E69C0, &qword_255E3E280);
      swift_storeEnumTagMultiPayload();
      sub_255D4ECE0();
      v54 = v72;
      sub_255E39258();
      sub_255D395E4(v53, &qword_27F7E69C0, &qword_255E3E280);
      (*(v51 + 8))(v20, v52);
    }

    sub_255D3957C(v54, v76, &qword_27F7E69B0, &qword_255E3E278);
    swift_storeEnumTagMultiPayload();
    sub_255D4EC28();
    sub_255E39258();

    return sub_255D395E4(v54, &qword_27F7E69B0, &qword_255E3E278);
  }

  else
  {
    v59 = *(v1 + 184);
    type metadata accessor for RemoteStateStore(0);
    sub_255DA2D14();
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255DA1F28(uint64_t a1)
{
  v2 = *(a1 + 96);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255DA2008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D3957C(a1 + 56, v7, &qword_27F7E6558, &qword_255E3DD80);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    result = sub_255D395E4(v7, &qword_27F7E6558, &qword_255E3DD80);
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255DA20D0()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DA21BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DA3080();
  *a2 = result;
  return result;
}

void sub_255DA21EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE700000000000000;
  v6 = 0x746E65746E6F63;
  v7 = 0xE90000000000006ELL;
  v8 = 0x6F697463656C6573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000255E65870;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C746974;
  if (v2 != 1)
  {
    v9 = 0x6C6562616CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_255DA22A0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x746E65746E6F63;
  v4 = 0x6F697463656C6573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_255DA2350@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DA3080();
  *a1 = result;
  return result;
}

uint64_t sub_255DA2384(uint64_t a1)
{
  v2 = sub_255DA2DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA23C0(uint64_t a1)
{
  v2 = sub_255DA2DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA23FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_255E385D8();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7B68, &qword_255E4EAB0);
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v60[2] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255DA2D14();
  v47 = sub_255E38CC8();
  v78 = v47;
  v79 = v11;
  v12 = a1[3];
  v13 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_255DA2DA4();
  v14 = v48;
  sub_255E3AE28();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  else
  {
    v15 = v45;
    v16 = v46;
    LOBYTE(v49) = 0;
    v17 = sub_255E3AB88();
    if (!v18)
    {
      v20 = v6;
      sub_255E385C8();
      v48 = sub_255E385B8();
      v22 = v21;
      (*(v16 + 8))(v20, v3);
      v18 = v22;
      v17 = v48;
    }

    v60[0] = v17;
    v60[1] = v18;
    v48 = v18;
    v59 = 1;
    sub_255D3EA0C();
    v23 = v7;
    sub_255E3ABA8();
    v24 = v15;
    v25 = MEMORY[0x277D84F90];
    v61 = v49;
    v62 = v50;
    v63 = BYTE8(v50);
    v59 = 2;
    v26 = sub_255D447E8();
    sub_255E3ABA8();
    if (*(&v49 + 1))
    {
      v27 = sub_255D44794();
      v28 = swift_allocObject();
      v29 = v56;
      *(v28 + 112) = v55;
      *(v28 + 128) = v29;
      *(v28 + 144) = v57;
      *(v28 + 160) = v58;
      v30 = v52;
      *(v28 + 48) = v51;
      *(v28 + 64) = v30;
      v31 = v54;
      *(v28 + 80) = v53;
      *(v28 + 96) = v31;
      v32 = v50;
      *(v28 + 16) = v49;
      *(v28 + 32) = v32;
      v33 = &type metadata for ViewContent;
    }

    else
    {
      sub_255D395E4(&v49, &qword_27F7E6C20, &qword_255E58D80);
      v28 = 0;
      v33 = 0;
      v27 = 0;
    }

    v64 = v28;
    v65 = 0;
    v66 = 0;
    v67 = v33;
    v68 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v59 = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    v46 = v26;
    if (v49)
    {
      v34 = v49;
    }

    else
    {
      v34 = v25;
    }

    v35 = sub_255D48968(v34);

    v69 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v59 = 4;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
    sub_255E3ABC8();
    v70 = v49;
    v71 = v50;
    v72 = BYTE8(v50);
    v59 = 5;
    sub_255E3ABA8();
    if (*(&v49 + 1))
    {
      v36 = sub_255D44794();
      v37 = swift_allocObject();
      v38 = v56;
      *(v37 + 112) = v55;
      *(v37 + 128) = v38;
      *(v37 + 144) = v57;
      *(v37 + 160) = v58;
      v39 = v52;
      *(v37 + 48) = v51;
      *(v37 + 64) = v39;
      v40 = v54;
      *(v37 + 80) = v53;
      *(v37 + 96) = v40;
      v41 = v50;
      *(v37 + 16) = v49;
      *(v37 + 32) = v41;
      (*(v24 + 8))(v10, v23);
      v42 = &type metadata for ViewContent;
    }

    else
    {
      (*(v24 + 8))(v10, v7);
      sub_255D395E4(&v49, &qword_27F7E6C20, &qword_255E58D80);
      v36 = 0;
      v42 = 0;
      v37 = 0;
    }

    v73 = v37;
    v74 = 0;
    v75 = 0;
    v76 = v42;
    v77 = v36;
    sub_255D4EE14(v60, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    return sub_255DA2DF8(v60);
  }
}

uint64_t sub_255DA2AAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6998, &qword_255E3E270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255DA1088(&v11 - v7);
  sub_255D3957C(v8, v6, &qword_27F7E6998, &qword_255E3E270);
  sub_255D4EB9C();
  v9 = sub_255E3A038();
  result = sub_255D395E4(v8, &qword_27F7E6998, &qword_255E3E270);
  *a1 = v9;
  return result;
}

uint64_t sub_255DA2BE8()
{
  sub_255DA2C44();
  sub_255D4EDC0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255DA2C44()
{
  result = qword_27F7E7B40;
  if (!qword_27F7E7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B40);
  }

  return result;
}

unint64_t sub_255DA2C98(uint64_t a1)
{
  result = sub_255DA2CC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255DA2CC0()
{
  result = qword_27F7E7B48;
  if (!qword_27F7E7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B48);
  }

  return result;
}

unint64_t sub_255DA2D14()
{
  result = qword_27F7E5EF0;
  if (!qword_27F7E5EF0)
  {
    type metadata accessor for RemoteStateStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E5EF0);
  }

  return result;
}

unint64_t sub_255DA2DA4()
{
  result = qword_27F7E7B70;
  if (!qword_27F7E7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PickerView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PickerView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255DA2F7C()
{
  result = qword_27F7E7B78;
  if (!qword_27F7E7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B78);
  }

  return result;
}

unint64_t sub_255DA2FD4()
{
  result = qword_27F7E7B80;
  if (!qword_27F7E7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B80);
  }

  return result;
}

unint64_t sub_255DA302C()
{
  result = qword_27F7E7B88;
  if (!qword_27F7E7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B88);
  }

  return result;
}

uint64_t sub_255DA3080()
{
  v0 = sub_255E3AB48();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DA30DC@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v117) = a2;
  v118 = a1;
  v125 = a5;
  v7 = sub_255E38DB8();
  v108 = *(v7 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v7);
  v107 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255DA463C(&qword_27F7E7B98, MEMORY[0x277CDDDF0]);
  v142 = a3;
  v143 = v7;
  v124 = v7;
  v144 = a4;
  v145 = v10;
  v130 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v110 = *(OpaqueTypeMetadata2 - 8);
  v12 = *(v110 + 64);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v109 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v114 = &v101 - v15;
  v16 = sub_255E38C98();
  v104 = *(v16 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v16);
  v103 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_255DA463C(&qword_27F7E7BA0, MEMORY[0x277CDDBD0]);
  v142 = a3;
  v143 = v16;
  v128 = v19;
  v129 = v16;
  v144 = a4;
  v145 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v106 = *(v20 - 8);
  v21 = *(v106 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v112 = &v101 - v24;
  v25 = sub_255E38E88();
  v26 = sub_255DA463C(&qword_27F7E7BA8, MEMORY[0x277CDDE68]);
  v131 = a3;
  v142 = a3;
  v143 = v25;
  v126 = a4;
  v127 = v26;
  v144 = a4;
  v145 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v111 = v20;
  v28 = sub_255E39268();
  v115 = *(v28 - 8);
  v29 = *(v115 + 64);
  MEMORY[0x28223BE20](v28);
  v113 = &v101 - v30;
  v31 = swift_checkMetadataState();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v101 - v35;
  v102 = *(v27 - 8);
  v37 = *(v102 + 64);
  v38 = MEMORY[0x28223BE20](v34);
  v40 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v101 - v41;
  v122 = v28;
  v123 = OpaqueTypeMetadata2;
  v121 = sub_255E39268();
  v120 = *(v121 - 8);
  v43 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v101 - v44;
  v116 = v31;
  if (v117)
  {
    if (v117 == 1)
    {
      v45 = v103;
      sub_255E38C88();
      v46 = v105;
      v47 = v131;
      v48 = v129;
      v49 = v126;
      v50 = v128;
      sub_255E39918();
      (*(v104 + 8))(v45, v48);
      v142 = v47;
      v143 = v48;
      v144 = v49;
      v145 = v50;
      v117 = MEMORY[0x277CDE720];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v52 = v112;
      v53 = v111;
      sub_255D4F130(v46, v111, OpaqueTypeConformance2);
      v118 = *(v106 + 8);
      v118(v46, v53);
      sub_255D4F130(v52, v53, OpaqueTypeConformance2);
      v142 = v47;
      v143 = v31;
      v144 = v49;
      v145 = v127;
      v54 = swift_getOpaqueTypeConformance2();
      v55 = v113;
      sub_255D3F908(v46, v27, v53);
      v134 = v54;
      v135 = OpaqueTypeConformance2;
      v56 = v122;
      swift_getWitnessTable();
      v57 = v124;
      v142 = v47;
      v143 = v124;
      v144 = v49;
      v145 = v130;
      swift_getOpaqueTypeConformance2();
      v58 = v119;
      v59 = v56;
      v60 = v56;
      v61 = v49;
      sub_255D3F810(v55, v59);
      (*(v115 + 8))(v55, v60);
      v62 = v46;
      v63 = v127;
      v64 = v118;
      v118(v62, v53);
      v64(v112, v53);
      v65 = v128;
    }

    else
    {
      v80 = v107;
      sub_255E38DA8();
      v81 = v109;
      v83 = v130;
      v82 = v131;
      v57 = v124;
      v61 = v126;
      sub_255E39918();
      (*(v108 + 8))(v80, v57);
      v142 = v82;
      v143 = v57;
      v144 = v61;
      v145 = v83;
      v84 = swift_getOpaqueTypeConformance2();
      v85 = v114;
      v86 = v123;
      sub_255D4F130(v81, v123, v84);
      v118 = *(v110 + 8);
      v118(v81, v86);
      sub_255D4F130(v85, v86, v84);
      v142 = v131;
      v143 = v31;
      v63 = v127;
      v144 = v61;
      v145 = v127;
      v87 = swift_getOpaqueTypeConformance2();
      v65 = v128;
      v142 = v131;
      v143 = v129;
      v144 = v61;
      v145 = v128;
      v88 = swift_getOpaqueTypeConformance2();
      v140 = v87;
      v141 = v88;
      v89 = v122;
      swift_getWitnessTable();
      v90 = v119;
      sub_255D3F908(v81, v89, v86);
      v91 = v118;
      v118(v81, v86);
      v92 = v86;
      v58 = v90;
      v91(v114, v92);
    }
  }

  else
  {
    sub_255E38E78();
    v66 = v131;
    v67 = v126;
    v68 = v127;
    sub_255E39918();
    (*(v32 + 8))(v36, v31);
    v142 = v66;
    v143 = v31;
    v144 = v67;
    v145 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    sub_255D4F130(v40, v27, v69);
    v118 = *(v102 + 8);
    v118(v40, v27);
    sub_255D4F130(v42, v27, v69);
    v142 = v66;
    v143 = v129;
    v144 = v67;
    v145 = v128;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = v113;
    sub_255D3F810(v40, v27);
    v132 = v69;
    v133 = v70;
    v72 = v122;
    swift_getWitnessTable();
    v57 = v124;
    v142 = v131;
    v143 = v124;
    v73 = v126;
    v144 = v126;
    v145 = v130;
    swift_getOpaqueTypeConformance2();
    v74 = v119;
    sub_255D3F810(v71, v72);
    v75 = v71;
    v63 = v127;
    (*(v115 + 8))(v75, v72);
    v76 = v40;
    v58 = v74;
    v77 = v118;
    v118(v76, v27);
    v78 = v42;
    v65 = v128;
    v79 = v27;
    v61 = v73;
    v77(v78, v79);
  }

  v93 = v131;
  v142 = v131;
  v143 = v116;
  v144 = v61;
  v145 = v63;
  v94 = swift_getOpaqueTypeConformance2();
  v142 = v93;
  v143 = v129;
  v144 = v61;
  v145 = v65;
  v95 = swift_getOpaqueTypeConformance2();
  v138 = v94;
  v139 = v95;
  WitnessTable = swift_getWitnessTable();
  v142 = v93;
  v143 = v57;
  v144 = v61;
  v145 = v130;
  v97 = swift_getOpaqueTypeConformance2();
  v136 = WitnessTable;
  v137 = v97;
  v98 = v121;
  v99 = swift_getWitnessTable();
  sub_255D4F130(v58, v98, v99);
  return (*(v120 + 8))(v58, v98);
}

uint64_t sub_255DA3DE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F74747562;
  if (v2 != 1)
  {
    v3 = 0x686374697773;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000063;
  }

  v6 = 0x6E6F74747562;
  if (*a2 != 1)
  {
    v6 = 0x686374697773;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE900000000000063;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DA3EDC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA3F7C()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DA4008()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA40A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DA4A7C();
  *a2 = result;
  return result;
}

void sub_255DA40D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0x6E6F74747562;
  if (v2 != 1)
  {
    v4 = 0x686374697773;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6974616D6F747561;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_255DA41E0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255DA4234@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DA428C(uint64_t a1)
{
  v2 = sub_255DA4800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA42C8(uint64_t a1)
{
  v2 = sub_255DA4800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA4304@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v9 = *v2;
  v8 = __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_255E38E88();
  sub_255DA463C(&qword_27F7E7BA8, MEMORY[0x277CDDE68]);
  swift_getOpaqueTypeMetadata2();
  sub_255E38C98();
  sub_255DA463C(&qword_27F7E7BA0, MEMORY[0x277CDDBD0]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E38DB8();
  sub_255DA463C(&qword_27F7E7B98, MEMORY[0x277CDDDF0]);
  swift_getOpaqueTypeMetadata2();
  a2[3] = sub_255E39268();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255DA30DC(v8, v9, v3, v4, boxed_opaque_existential_1);
}

uint64_t sub_255DA4594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DA4684(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_255DA45C0(uint64_t a1)
{
  result = sub_255DA45E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA45E8()
{
  result = qword_27F7E7B90;
  if (!qword_27F7E7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7B90);
  }

  return result;
}

uint64_t sub_255DA463C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255DA4684(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7BB0, &qword_255E4EC88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA4800();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }

  else
  {
    sub_255DA4854();
    sub_255E3ABA8();
    (*(v4 + 8))(v7, v3);
    if (v12 == 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v12;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v10;
  }
}

unint64_t sub_255DA4800()
{
  result = qword_27F7E7BB8;
  if (!qword_27F7E7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7BB8);
  }

  return result;
}

unint64_t sub_255DA4854()
{
  result = qword_27F7E7BC0;
  if (!qword_27F7E7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7BC0);
  }

  return result;
}

unint64_t sub_255DA48CC()
{
  result = qword_27F7E7BC8;
  if (!qword_27F7E7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7BC8);
  }

  return result;
}

unint64_t sub_255DA4924()
{
  result = qword_27F7E7BD0;
  if (!qword_27F7E7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7BD0);
  }

  return result;
}

unint64_t sub_255DA497C()
{
  result = qword_27F7E7BD8;
  if (!qword_27F7E7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7BD8);
  }

  return result;
}

unint64_t sub_255DA49D4()
{
  result = qword_27F7E7BE0;
  if (!qword_27F7E7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7BE0);
  }

  return result;
}

unint64_t sub_255DA4A28()
{
  result = qword_27F7E7BE8;
  if (!qword_27F7E7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7BE8);
  }

  return result;
}

uint64_t sub_255DA4A7C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_255DA4AC8(int a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v88 = a3;
  v87 = a1;
  v91 = 0xEF79786F72507765;
  v90 = 0x69566C6C6F726373;
  v6 = sub_255E3A3B8();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_255E3A3D8();
  v82 = *(v84 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C00, &qword_255E4EF80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v76 - v13;
  v89 = sub_255E38B18();
  v15 = *(v89 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  v20 = *(v3 + 40);
  if (v20 <= 0xFD)
  {
    v21 = &v76 - v18;
    v22 = v15;
    v23 = *(v3 + 24);
    v24 = *(v3 + 32);
    *&aBlock = *(v3 + 16);
    *(&aBlock + 1) = v23;
    *&v100 = v24;
    BYTE8(v100) = v20;
    sub_255D3E5A8(aBlock, v23, v24, v20);
    v25 = StringResolvable.resolved(with:)(a2);
    v27 = v26;
    sub_255D38060(aBlock, *(&aBlock + 1), v100, BYTE8(v100));
    v90 = v25;
    v91 = v27;
    v15 = v22;
    v19 = v21;
  }

  v28 = *(v4 + 136);
  if ((v28 & 0xFE) == 0x7E)
  {
    v29 = 0.0;
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v32 = *(v4 + 96);
    v94 = *(v4 + 80);
    v95 = v32;
    v96 = *(v4 + 112);
    *&v97 = *(v4 + 128);
    *(&v97 + 1) = v28;
    v98[0] = *(v4 + 144);
    *(v98 + 9) = *(v4 + 153);
    aBlock = v94;
    v100 = v32;
    v101 = v96;
    v102 = v97;
    v103 = v28;
    *(v104 + 9) = *(v4 + 153);
    v104[0] = *(v4 + 144);
    sub_255D647DC(&aBlock, v92);
    v33 = sub_255D60484(a2);
    v35 = v34;
    v92[2] = v96;
    v92[3] = v97;
    v93[0] = v98[0];
    *(v93 + 9) = *(v98 + 9);
    v92[0] = v94;
    v92[1] = v95;
    sub_255D64744(v92);
    v31 = 0;
    v29 = v33;
    v30 = v35;
  }

  v36 = *(v4 + 72);
  if (v36 > 0xFD)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v41 = sub_255E386A8();
    __swift_project_value_buffer(v41, qword_27F8152D8);
    v42 = sub_255E38688();
    v43 = sub_255E3A848();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_14;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_255D2E000, v42, v43, "ScrollAction: unable to resolve scrollToId", v44, 2u);
    goto LABEL_13;
  }

  v78 = v30;
  v79 = v31;
  v37 = v29;
  v38 = *(v4 + 56);
  v39 = *(v4 + 64);
  *&aBlock = *(v4 + 48);
  *(&aBlock + 1) = v38;
  *&v100 = v39;
  BYTE8(v100) = v36;
  sub_255D3E5A8(aBlock, v38, v39, v36);
  v40 = StringResolvable.resolved(with:)(a2);
  v46 = v45;
  v77 = v40;
  sub_255D38060(aBlock, *(&aBlock + 1), v100, BYTE8(v100));
  v47 = v91;
  _s6LiftUI15LocalStateStoreCyypSgSScig_0(v90, v91, &aBlock);
  if (!*(&v100 + 1))
  {

    sub_255D395E4(&aBlock, &qword_27F7E7C08, &qword_255E4EF88);
    (*(v15 + 56))(v14, 1, 1, v89);
    goto LABEL_19;
  }

  v48 = v89;
  v49 = swift_dynamicCast();
  (*(v15 + 56))(v14, v49 ^ 1u, 1, v48);
  if ((*(v15 + 48))(v14, 1, v48) == 1)
  {

LABEL_19:
    sub_255D395E4(v14, &qword_27F7E7C00, &qword_255E4EF80);
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v50 = sub_255E386A8();
    __swift_project_value_buffer(v50, qword_27F8152D8);

    v42 = sub_255E38688();
    v51 = sub_255E3A848();

    if (!os_log_type_enabled(v42, v51))
    {

      goto LABEL_14;
    }

    v44 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&aBlock = v52;
    *v44 = 136315138;
    v53 = sub_255D378C0(v90, v47, &aBlock);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_255D2E000, v42, v51, "ScrollAction: unable to resolve ScrollViewProxy at key %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x259C4F9E0](v52, -1, -1);
LABEL_13:
    MEMORY[0x259C4F9E0](v44, -1, -1);
LABEL_14:

    return;
  }

  v54 = v15;
  v55 = v15 + 32;
  v56 = *(v15 + 32);
  v56(v19, v14, v48);
  v91 = v56;
  if (v87)
  {
    if ([objc_opt_self() isMainThread])
    {
      *&aBlock = v77;
      *(&aBlock + 1) = v46;
      sub_255E38B08();
      (*(v54 + 8))(v19, v48);

      return;
    }

    v57 = v55;
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v58 = sub_255E386A8();
    __swift_project_value_buffer(v58, qword_27F8152D8);
    v59 = sub_255E38688();
    v60 = sub_255E3A848();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_255D2E000, v59, v60, "Synchronous call to ScrollAction is not on main thread, running async on main thread.", v61, 2u);
      MEMORY[0x259C4F9E0](v61, -1, -1);
    }

    v48 = v89;
    v55 = v57;
  }

  v88 = v55;
  sub_255DA5ED4();
  v90 = sub_255E3A878();
  v62 = *(v54 + 16);
  v76 = v54;
  v63 = v80;
  v62(v80, v19, v48);
  v64 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v65 = (v16 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v91(v66 + v64, v63, v48);
  v67 = (v66 + v65);
  v68 = v78;
  *v67 = v77;
  v67[1] = v46;
  v69 = v66 + ((v65 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v69 = v37;
  *(v69 + 8) = v68;
  *(v69 + 16) = v79;
  *&v101 = sub_255DA5F20;
  *(&v101 + 1) = v66;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v100 = sub_255D5D0C8;
  *(&v100 + 1) = &block_descriptor_0;
  v70 = _Block_copy(&aBlock);

  v71 = v81;
  sub_255E3A3C8();
  *&aBlock = MEMORY[0x277D84F90];
  sub_255DA5FF8(&qword_27F7E6AE0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255DA6040();
  v72 = v19;
  v73 = v83;
  v74 = v86;
  sub_255E3A928();
  v75 = v90;
  MEMORY[0x259C4EBE0](0, v71, v73, v70);
  _Block_release(v70);

  (*(v85 + 8))(v73, v74);
  (*(v82 + 8))(v71, v84);
  (*(v76 + 8))(v72, v89);
}

uint64_t sub_255DA559C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x79654B61746164;
  if (v2 != 1)
  {
    v4 = 0x726F68636E61;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x79654B61746164;
  if (*a2 != 1)
  {
    v8 = 0x726F68636E61;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DA5690()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA5724()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DA57A4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA5834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DA62A8();
  *a2 = result;
  return result;
}

void sub_255DA5864(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x79654B61746164;
  if (v2 != 1)
  {
    v5 = 0x726F68636E61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DA58B4()
{
  v1 = 0x79654B61746164;
  if (*v0 != 1)
  {
    v1 = 0x726F68636E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255DA5900@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DA62A8();
  *a1 = result;
  return result;
}

uint64_t sub_255DA5928(uint64_t a1)
{
  v2 = sub_255DA60A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA5964(uint64_t a1)
{
  v2 = sub_255DA60A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_255DA59A0(uint64_t *a1)
{
  v4 = *v1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C10, &qword_255E4EF90);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA60A4();
  sub_255E3AE28();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    v26 = 0;
    sub_255D3EA0C();
    v11 = v20;
    sub_255E3ABA8();
    v12 = v22;
    v13 = BYTE8(v22);
    *(v1 + 3) = v21;
    v1[8] = v12;
    *(v1 + 72) = v13;
    v26 = 1;
    sub_255E3ABA8();
    v14 = v22;
    v15 = BYTE8(v22);
    *(v1 + 1) = v21;
    v1[4] = v14;
    *(v1 + 40) = v15;
    v26 = 2;
    sub_255D653AC();
    sub_255E3ABA8();
    (*(v10 + 8))(v8, v11);
    v17 = v24;
    *(v1 + 7) = v23;
    *(v1 + 8) = v17;
    *(v1 + 9) = v25[0];
    *(v1 + 153) = *(v25 + 9);
    v18 = v22;
    *(v1 + 5) = v21;
    *(v1 + 6) = v18;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_255DA5C7C()
{
  sub_255D64814(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D64814(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_255DA60F8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return swift_deallocClassInstance();
}

uint64_t sub_255DA5D24(unint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_255DA4AC8(0, a1, a2);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t *sub_255DA5DCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_255DA59A0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_255DA5E24(uint64_t a1, uint64_t a2)
{
  result = sub_255DA5FF8(&qword_27F7E7BF0, a2, type metadata accessor for ScrollAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255DA5E7C(uint64_t a1, uint64_t a2)
{
  result = sub_255DA5FF8(&qword_27F7E7BF8, a2, type metadata accessor for ScrollAction);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA5ED4()
{
  result = qword_27F7E6AD8;
  if (!qword_27F7E6AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7E6AD8);
  }

  return result;
}

uint64_t sub_255DA5F20()
{
  v1 = *(sub_255E38B18() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + v2);
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v10 = *v4;
  v11 = v4[1];
  return sub_255E38B08();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255DA5FF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_255DA6040()
{
  result = qword_27F7E6AF0;
  if (!qword_27F7E6AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6AE8, &qword_255E3E938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6AF0);
  }

  return result;
}

unint64_t sub_255DA60A4()
{
  result = qword_27F7E7C18;
  if (!qword_27F7E7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C18);
  }

  return result;
}

void sub_255DA60F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((a8 & 0xFE) != 0x7ELL)
  {
    sub_255D64814(a1, a2, a3, a4);
    sub_255D647C8(a5, a6, a7, a8);

    sub_255D647C8(a9, a10, a11, a12);
  }
}

unint64_t sub_255DA61A4()
{
  result = qword_27F7E7C20;
  if (!qword_27F7E7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C20);
  }

  return result;
}

unint64_t sub_255DA61FC()
{
  result = qword_27F7E7C28;
  if (!qword_27F7E7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C28);
  }

  return result;
}

unint64_t sub_255DA6254()
{
  result = qword_27F7E7C30;
  if (!qword_27F7E7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C30);
  }

  return result;
}

uint64_t sub_255DA62A8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DA6304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C48, &qword_255E4F240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA67D0();
  sub_255E3AE28();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    sub_255D65400();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DA6498()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DA650C()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DA6560@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255DA65F0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DA6648(uint64_t a1)
{
  v2 = sub_255DA67D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA6684(uint64_t a1)
{
  v2 = sub_255DA67D0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_255DA66D8(uint64_t a1)
{
  result = sub_255DA6700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA6700()
{
  result = qword_27F7E7C38;
  if (!qword_27F7E7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C38);
  }

  return result;
}

unint64_t sub_255DA6754(uint64_t a1)
{
  result = sub_255DA677C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA677C()
{
  result = qword_27F7E7C40;
  if (!qword_27F7E7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C40);
  }

  return result;
}

unint64_t sub_255DA67D0()
{
  result = qword_27F7E7C50;
  if (!qword_27F7E7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C50);
  }

  return result;
}

unint64_t sub_255DA6838()
{
  result = qword_27F7E7C58;
  if (!qword_27F7E7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C58);
  }

  return result;
}

unint64_t sub_255DA6890()
{
  result = qword_27F7E7C60;
  if (!qword_27F7E7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C60);
  }

  return result;
}

unint64_t sub_255DA68E8()
{
  result = qword_27F7E7C68;
  if (!qword_27F7E7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C68);
  }

  return result;
}

uint64_t sub_255DA695C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C90, &qword_255E4F7D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C98, &qword_255E4F7D8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = *(v1 + 96);
  v48 = v5;
  if (v15 <= 0xFD)
  {
    v16 = a1;
    v17 = &v45 - v13;
    v18 = *(v1 + 72);
    v19 = *(v1 + 80);
    v20 = *(v1 + 88);
    *&v55 = v18;
    *(&v55 + 1) = v19;
    *&v56 = v20;
    BYTE8(v56) = v15;
    if (!*(v1 + 104))
    {
LABEL_25:
      v44 = *(v2 + 112);
      sub_255D3E5A8(v18, v19, v20, v15);
      goto LABEL_26;
    }

    sub_255D94C04(v18, v19, v20, v15);

    StringResolvable.resolved(with:)(v21);
    sub_255D38060(v55, *(&v55 + 1), v56, BYTE8(v56));

    v14 = v17;
    a1 = v16;
    v5 = v48;
  }

  v22 = sub_255DA835C();
  if (v22 <= 1)
  {
    if (v22)
    {
      sub_255E387C8();
    }

    else
    {
      sub_255E387A8();
    }
  }

  else if (v22 == 2)
  {
    sub_255E387D8();
  }

  else
  {
    if (v22 != 3)
    {
      v23 = sub_255E387E8();
      (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
      goto LABEL_14;
    }

    sub_255E387B8();
  }

  v24 = sub_255E387E8();
  (*(*(v24 - 8) + 56))(v14, 0, 1, v24);
LABEL_14:
  v47 = v14;
  sub_255DA83A8(v14, v12);
  sub_255D4D8B8(v1, &v55);
  v25 = swift_allocObject();
  *(v25 + 144) = v63;
  v26 = v62;
  *(v25 + 112) = v61;
  *(v25 + 128) = v26;
  v27 = v58;
  *(v25 + 48) = v57;
  *(v25 + 64) = v27;
  v28 = v60;
  *(v25 + 80) = v59;
  *(v25 + 96) = v28;
  v29 = v56;
  *(v25 + 16) = v55;
  *(v25 + 32) = v29;
  MEMORY[0x28223BE20](v25);
  *(&v45 - 2) = v1;
  sub_255E39FC8();
  v30 = sub_255D48A94(*(v1 + 24));
  v31 = *(v1 + 104);
  if (!v31)
  {
    v42 = *(v1 + 112);
LABEL_26:
    type metadata accessor for RemoteStateStore(0);
    sub_255DA854C(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
    return result;
  }

  v32 = *(v1 + 120);
  if (!v32)
  {
    v43 = *(v1 + 128);
    type metadata accessor for LocalStateStore(0);
    sub_255DA854C(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

    v18 = sub_255E38CB8();
    __break(1u);
    goto LABEL_25;
  }

  v33 = v30;
  v53 = v4;
  v54 = sub_255DA8480();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
  (*(v5 + 16))(boxed_opaque_existential_1, v49, v4);
  v35 = *(v33 + 16);
  if (v35)
  {
    v45 = v4;
    v46 = a1;
    v36 = v33 + 32;

    do
    {
      sub_255D3CE1C(v36, &v55);
      v37 = *(&v56 + 1);
      v38 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      (*(v38 + 16))(v50, &v52, v31, v32, v37, v38);
      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
      sub_255D34630(v50, v51);
      __swift_destroy_boxed_opaque_existential_1Tm(&v52);
      sub_255D34630(v51, &v52);
      v36 += 40;
      --v35;
    }

    while (v35);

    v4 = v45;
    a1 = v46;
  }

  else
  {
  }

  (*(v48 + 8))(v49, v4);
  sub_255D34630(&v52, &v55);
  v39 = *(&v56 + 1);
  __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
  v40 = View.anyView.getter(v39);
  sub_255DA84E4(v47);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v55);
  *a1 = v40;
  return result;
}

uint64_t sub_255DA6F78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = a1[13];
  if (v6)
  {
    v7 = a1[15];
    if (v7)
    {
      v8 = a1[3];
      v9 = sub_255E3A778();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v8;
      v10[5] = v6;
      v10[6] = v7;

      sub_255D52540(0, 0, v5, &unk_255E5A580, v10);
    }
  }

  else
  {
    v12 = a1[14];
    type metadata accessor for RemoteStateStore(0);
    sub_255DA854C(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    sub_255E38CB8();
    __break(1u);
  }

  v13 = a1[16];
  type metadata accessor for LocalStateStore(0);
  sub_255DA854C(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255DA7184()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA7230()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DA72C8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA7370@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DA889C();
  *a2 = result;
  return result;
}

void sub_255DA73A0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (*v1 != 2)
  {
    v5 = 1701605234;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x736E6F69746361;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255DA7408()
{
  v1 = 25705;
  v2 = 0x6C6562616CLL;
  if (*v0 != 2)
  {
    v2 = 1701605234;
  }

  if (*v0)
  {
    v1 = 0x736E6F69746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DA746C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DA889C();
  *a1 = result;
  return result;
}

uint64_t sub_255DA7494(uint64_t a1)
{
  v2 = sub_255DA85E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA74D0(uint64_t a1)
{
  v2 = sub_255DA85E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA750C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_255E385D8();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7CB8, &qword_255E4F7E8);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v48[2] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255DA854C(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v40 = sub_255E38CC8();
  v52 = v40;
  v53 = v12;
  type metadata accessor for LocalStateStore(0);
  sub_255DA854C(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
  v39 = sub_255E38CC8();
  v54 = v39;
  v55 = v13;
  v14 = a1[3];
  v15 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_255DA85E8();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
LABEL_4:
  }

  v16 = v37;
  v17 = v4;
  v18 = MEMORY[0x277D84F90];
  LOBYTE(v43) = 0;
  v19 = sub_255E3AB88();
  v21 = v8;
  if (!v20)
  {
    sub_255E385C8();
    v23 = sub_255E385B8();
    v25 = v24;
    (*(v16 + 8))(v7, v17);
    v20 = v25;
    v19 = v23;
  }

  v48[0] = v19;
  v48[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  LOBYTE(v43) = 1;
  sub_255D7B658();
  sub_255E3ABC8();
  v26 = 0;
  v27 = v38;
  v28 = v56;
  v29 = *(v56 + 16);
  if (v29)
  {
    v37 = 0;
    v35 = v21;
    v47 = v18;
    sub_255DE5EF0(0, v29, 0);
    v30 = v47;
    v31 = v28 + 32;
    do
    {
      sub_255D7B730(v31, v42);
      sub_255D34630(v42, &v43);
      v47 = v30;
      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_255DE5EF0((v32 > 1), v33 + 1, 1);
        v30 = v47;
      }

      *(v30 + 16) = v33 + 1;
      sub_255D34630(&v43, v30 + 40 * v33 + 32);
      v31 += 40;
      --v29;
    }

    while (v29);

    v21 = v35;
    v27 = v38;
    v26 = v37;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v48[3] = v30;
  LOBYTE(v42[0]) = 2;
  v45 = &type metadata for ViewContent;
  v46 = sub_255D44794();
  *&v43 = swift_allocObject();
  sub_255D447E8();
  sub_255E3ABC8();
  v34 = v36;
  if (v26)
  {
    (*(v27 + 8))(v11, v21);
    __swift_deallocate_boxed_opaque_existential_1(&v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);

    goto LABEL_4;
  }

  sub_255D34630(&v43, v49);
  LOBYTE(v42[0]) = 3;
  sub_255D3EA0C();
  sub_255E3ABA8();
  (*(v27 + 8))(v11, v21);
  *&v49[40] = v43;
  v50 = v44;
  v51 = v45;
  sub_255D4D8B8(v48, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  return sub_255DA863C(v48);
}

uint64_t sub_255DA7B48@<X0>(uint64_t *a1@<X8>)
{
  sub_255DA695C(&v3);
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

unint64_t sub_255DA7BF8()
{
  result = qword_27F7E7C70;
  if (!qword_27F7E7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C70);
  }

  return result;
}

uint64_t sub_255DA7C4C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255DA7CA0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DA7CF8(uint64_t a1)
{
  v2 = sub_255DA8594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA7D34(uint64_t a1)
{
  v2 = sub_255DA8594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA7D70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_255E38808();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_255E387F8();
  (*(v3 + 16))(v7, v9, v2);
  sub_255DA854C(&qword_27F7E69F0, MEMORY[0x277CDD680]);
  v10 = sub_255E3A038();
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  return result;
}

uint64_t sub_255DA7ECC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255DA8100(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_255DA7F44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255DA7FB4()
{
  result = qword_27F7E7C78;
  if (!qword_27F7E7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C78);
  }

  return result;
}

unint64_t sub_255DA8008(uint64_t a1)
{
  result = sub_255DA8030();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255DA8030()
{
  result = qword_27F7E7C80;
  if (!qword_27F7E7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C80);
  }

  return result;
}

unint64_t sub_255DA8084(uint64_t a1)
{
  result = sub_255DA80AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255DA80AC()
{
  result = qword_27F7E7C88;
  if (!qword_27F7E7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7C88);
  }

  return result;
}

uint64_t sub_255DA8100(uint64_t *a1)
{
  v3 = sub_255E385D8();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7CA8, &qword_255E4F7E0);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA8594();
  sub_255E3AE28();
  if (!v1)
  {
    v13 = v19;
    v17 = v3;
    v14 = sub_255E3AB88();
    if (v15)
    {
      v12 = v14;
    }

    else
    {
      sub_255E385C8();
      v12 = sub_255E385B8();
      (*(v18 + 8))(v6, v17);
    }

    (*(v13 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}