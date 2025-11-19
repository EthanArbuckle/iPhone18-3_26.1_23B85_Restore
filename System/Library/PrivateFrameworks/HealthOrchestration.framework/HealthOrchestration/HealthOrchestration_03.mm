uint64_t sub_228818D74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = sub_22887F180();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22887F060();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v47 = a1;
  sub_22887F030();
  sub_22887F050();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v14 = sub_22887F370();

  v51[0] = 0;
  v15 = [v12 attributesOfItemAtPath:v14 error:v51];

  v16 = v51[0];
  if (v15)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_22881BB64(&qword_27D8519A0, 255, type metadata accessor for FileAttributeKey);
    v17 = sub_22887F2F0();
    v18 = v16;

    if (*(v17 + 16))
    {
      v19 = sub_228819E28(*MEMORY[0x277CCA150]);
      if (v20)
      {
        sub_2287E66B0(*(v17 + 56) + 32 * v19, v51);

        v21 = sub_22887F0C0();
        v22 = v50;
        v23 = swift_dynamicCast();
        return (*(*(v21 - 8) + 56))(v22, v23 ^ 1u, 1, v21);
      }
    }
  }

  else
  {
    v44 = v13;
    v45 = v3;
    v25 = v51[0];
    v26 = sub_22887F020();

    swift_willThrow();
    v27 = v46[6];
    ObjectType = swift_getObjectType();
    v29 = v48;
    (*(v27 + 40))(ObjectType, v27);
    (*(v6 + 16))(v9, v47, v5);
    v30 = v26;
    v31 = sub_22887F160();
    v32 = sub_22887F690();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51[0] = v47;
      *v33 = 136315394;
      sub_22881BB64(&unk_27D851F58, 255, MEMORY[0x277CC9260]);
      v34 = sub_22887FBA0();
      v36 = v35;
      v44(v9, v5);
      v37 = sub_2287E64D8(v34, v36, v51);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2112;
      v38 = v26;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v39;
      v40 = v46;
      *v46 = v39;
      _os_log_impl(&dword_2287E4000, v31, v32, "Failed to fetch initial modfication date for: %s: %@", v33, 0x16u);
      sub_22881B888(v40, &qword_2813CF4C0, sub_22881B8E4);
      MEMORY[0x22AAC1440](v40, -1, -1);
      v41 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x22AAC1440](v41, -1, -1);
      MEMORY[0x22AAC1440](v33, -1, -1);
    }

    else
    {

      v44(v9, v5);
    }

    (*(v49 + 8))(v29, v45);
  }

  v42 = sub_22887F0C0();
  return (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
}

id sub_228819358(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = [objc_opt_self() removeFilePresenter_])
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v11 = sub_2288099A4(MEMORY[0x277D84F90]);

      *(a1 + 8) = v11;
      return result;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228819478(void *a1)
{
  v3 = *v1;
  sub_2287E9708(0, &qword_27D851F48, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_22887F0C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228818D74(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_22881B888(v6, &qword_27D851F48, MEMORY[0x277CC9578]);
  }

  v12 = (*(v8 + 32))(v10, v6, v7);
  v13 = v1[7];
  MEMORY[0x28223BE20](v12);
  *(&v20 - 2) = a1;
  *(&v20 - 1) = v10;
  os_unfair_lock_lock((v13 + 32));
  sub_22881B86C((v13 + 16), &v22);
  os_unfair_lock_unlock((v13 + 32));
  v14 = v22;
  v15 = v1[3];
  ObjectType = swift_getObjectType();
  v22 = v14;
  v21 = v1;
  v17 = *(v15 + 8);
  v19 = sub_22881BB64(&qword_27D851F50, v18, type metadata accessor for FileCoordinatorInputSignal);
  v17(&v22, &v21, v3, v19, ObjectType, v15);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_228819728@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_2287E9708(0, &qword_27D851F48, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_22887F060();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a2);
  v15 = sub_22887F0C0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, a3, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  sub_2288471B0(v10, v13);
  *a4 = *a1;
}

id sub_228819AC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FileCoordinatorInputSignal.Presenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FileCoordinatorInputSignal.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t FileCoordinatorInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_228819C30()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock(v1 + 8);
  sub_228819358(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

unint64_t sub_228819CC0(uint64_t a1)
{
  sub_22887F060();
  sub_22881BB64(&qword_27D851AC8, 255, MEMORY[0x277CC9260]);
  v2 = sub_22887F330();

  return sub_228819EB8(a1, v2);
}

unint64_t sub_228819D5C(unsigned int a1)
{
  v3 = MEMORY[0x22AAC0BB0](*(v1 + 40), a1, 4);

  return sub_22881A07C(a1, v3);
}

unint64_t sub_228819DA4(uint64_t *a1)
{
  sub_22887FC90();
  sub_22887F3E0();
  sub_22887F3E0();
  v2 = sub_22887FCD0();

  return sub_22881A0E8(a1, v2);
}

unint64_t sub_228819E28(uint64_t a1)
{
  sub_22887F3A0();
  sub_22887FC90();
  sub_22887F3E0();
  v2 = sub_22887FCD0();

  return sub_22881A1E4(a1, v2);
}

unint64_t sub_228819EB8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_22887F060();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_22881BB64(qword_27D851F90, 255, MEMORY[0x277CC9260]);
      v15 = sub_22887F360();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_22881A07C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22881A0E8(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = *(v2 + 48);
    do
    {
      v12 = (v11 + 48 * v5);
      v13 = v12[2];
      v14 = v12[3];
      v15 = *v12 == v8 && v12[1] == v7;
      if (v15 || (sub_22887FBF0() & 1) != 0)
      {
        v16 = v13 == v9 && v14 == v10;
        if (v16 || (sub_22887FBF0() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22881A1E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22887F3A0();
      v8 = v7;
      if (v6 == sub_22887F3A0() && v8 == v9)
      {
        break;
      }

      v11 = sub_22887FBF0();

      if ((v11 & 1) == 0)
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

uint64_t sub_22881A2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22881BA00();
  v5 = *(v4 + 48);
  sub_22881BAF4();
  v7 = *(v6 + 48);
  v8 = sub_22887F060();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = sub_22887F0C0();
  v10 = *(*(v9 - 8) + 16);

  return v10(a2 + v7, a1 + v5, v9);
}

uint64_t sub_22881A3B0(__int128 *a1, uint64_t a2)
{
  v4 = sub_22887F060();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_22887FCD0();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_22881BB64(&qword_27D851AC8, 255, MEMORY[0x277CC9260]);
    v21 = sub_22887F330();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x22AAC0BD0](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22881A5E0(uint64_t a1, uint64_t a2)
{
  sub_22887FCD0();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x22AAC0BD0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_22887FC90();

        sub_22887F3E0();
        v11 = sub_22887FCD0();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22881A73C(uint64_t a1, uint64_t a2)
{
  result = sub_22887FCD0();
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  for (i = (v7 + 63) >> 6; v9; v5 ^= result)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    result = MEMORY[0x22AAC0BB0](v4, *(*(a2 + 48) + ((v11 << 8) | (4 * v12))), 4);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x22AAC0BD0](v5);
    }

    v9 = *(a2 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22881A850(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v82 = a5;
  v9 = sub_22887F0C0();
  v70 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v63 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = v58 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v58 - v14;
  v74 = sub_22887F060();
  v64 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287E9708(0, &unk_27D851F80, sub_22881BAF4);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v58 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v75 = a1;
  v76 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v77 = v22;
  v78 = 0;
  v79 = v25 & v23;
  v80 = a2;
  v26 = v17;
  v81 = a3;

  v58[1] = a3;

  sub_22886EE6C(v20);
  sub_22881BAF4();
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = *(v29 + 48);
  v68 = v29 + 48;
  v69 = v30;
  if (v30(v20, 1, v27) == 1)
  {
LABEL_5:
    sub_2287EF604();
  }

  else
  {
    v32 = *(v64 + 32);
    v71 = (v70 + 32);
    v72 = v32;
    v61 = v70 + 16;
    v60 = v70 + 8;
    v73 = v64 + 32;
    v59 = (v64 + 8);
    v58[3] = v70 + 40;
    v66 = v28;
    v67 = v20;
    while (1)
    {
      v43 = *(v28 + 48);
      v72(v26, v20, v74);
      v44 = *v71;
      (*v71)(v15, &v20[v43], v9);
      v45 = *v82;
      v47 = sub_228819CC0(v26);
      v48 = v45[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        break;
      }

      v51 = v46;
      if (v45[3] >= v50)
      {
        if ((a4 & 1) == 0)
        {
          sub_228852CCC();
        }
      }

      else
      {
        sub_22885004C(v50, a4 & 1);
        v52 = sub_228819CC0(v26);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_23;
        }

        v47 = v52;
      }

      v54 = *v82;
      if (v51)
      {
        v33 = v54[7];
        v34 = v70;
        v65 = *(v70 + 72) * v47;
        v35 = *(v70 + 16);
        v36 = v63;
        v35(v63, v33 + v65, v9);
        if (sub_22887F0A0())
        {
          v37 = v36;
        }

        else
        {
          v37 = v15;
        }

        v38 = v26;
        v39 = v15;
        v40 = v62;
        v35(v62, v37, v9);
        v41 = *(v34 + 8);
        v41(v36, v9);
        v41(v39, v9);
        (*v59)(v38, v74);
        v42 = v40;
        v15 = v39;
        v26 = v38;
        (*(v34 + 40))(v54[7] + v65, v42, v9);
      }

      else
      {
        v54[(v47 >> 6) + 8] |= 1 << v47;
        v72(v54[6] + *(v64 + 72) * v47, v26, v74);
        v44((v54[7] + *(v70 + 72) * v47), v15, v9);
        v55 = v54[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_22;
        }

        v54[2] = v57;
      }

      v20 = v67;
      sub_22886EE6C(v67);
      a4 = 1;
      v28 = v66;
      if (v69(v20, 1, v66) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_22887FC20();
    __break(1u);
  }

  return result;
}

unint64_t sub_22881ADEC()
{
  result = qword_27D851E18;
  if (!qword_27D851E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E18);
  }

  return result;
}

void sub_22881AE40()
{
  if (!qword_27D851E20)
  {
    sub_22887F060();
    sub_22887F0C0();
    sub_22881BB64(&qword_27D851AC8, 255, MEMORY[0x277CC9260]);
    v0 = sub_22887F320();
    if (!v1)
    {
      atomic_store(v0, &qword_27D851E20);
    }
  }
}

unint64_t sub_22881AEF0()
{
  result = qword_27D851E30;
  if (!qword_27D851E30)
  {
    sub_22881AE40();
    sub_22881BB64(&qword_27D851E38, 255, MEMORY[0x277CC9260]);
    sub_22881BB64(&qword_27D851E40, 255, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E30);
  }

  return result;
}

void sub_22881AFD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22881ADEC();
    v7 = a3(a1, &type metadata for FileCoordinatorInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22881B03C()
{
  result = qword_27D851E50;
  if (!qword_27D851E50)
  {
    sub_22881AE40();
    sub_22881BB64(&qword_27D851E58, 255, MEMORY[0x277CC9260]);
    sub_22881BB64(&qword_27D851E60, 255, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E50);
  }

  return result;
}

void sub_22881B124()
{
  if (!qword_27D851E68)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D851E68);
    }
  }
}

uint64_t sub_22881B184()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 24);
  return sub_228818334(&v3, v1);
}

unint64_t sub_22881B1C0(uint64_t a1)
{
  result = sub_22881B1E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22881B1E8()
{
  result = qword_27D851E70;
  if (!qword_27D851E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E70);
  }

  return result;
}

unint64_t sub_22881B240()
{
  result = qword_27D851E78;
  if (!qword_27D851E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E78);
  }

  return result;
}

unint64_t sub_22881B298()
{
  result = qword_27D851E80;
  if (!qword_27D851E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E80);
  }

  return result;
}

unint64_t sub_22881B2EC(void *a1)
{
  a1[1] = sub_22881B324();
  a1[2] = sub_22881B378();
  result = sub_22881B3CC();
  a1[3] = result;
  return result;
}

unint64_t sub_22881B324()
{
  result = qword_27D851E90;
  if (!qword_27D851E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E90);
  }

  return result;
}

unint64_t sub_22881B378()
{
  result = qword_27D851E98;
  if (!qword_27D851E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E98);
  }

  return result;
}

unint64_t sub_22881B3CC()
{
  result = qword_27D851EA0;
  if (!qword_27D851EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851EA0);
  }

  return result;
}

unint64_t sub_22881B424()
{
  result = qword_27D851EA8;
  if (!qword_27D851EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851EA8);
  }

  return result;
}

uint64_t sub_22881B478(uint64_t a1, uint64_t a2)
{
  result = sub_22881BB64(&qword_27D851EB8, a2, type metadata accessor for FileCoordinatorInputSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22881B530(uint64_t *a1, int a2)
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

uint64_t sub_22881B578(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for FileCoordinatorInputSignal.Presenter()
{
  result = qword_27D851F20;
  if (!qword_27D851F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22881B618()
{
  result = sub_22887F060();
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

uint64_t sub_22881B6C0(uint64_t *a1, int a2)
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

uint64_t sub_22881B708(uint64_t result, int a2, int a3)
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

unint64_t sub_22881B768()
{
  result = qword_27D851F30;
  if (!qword_27D851F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851F30);
  }

  return result;
}

unint64_t sub_22881B7C0()
{
  result = qword_27D851F38;
  if (!qword_27D851F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851F38);
  }

  return result;
}

unint64_t sub_22881B818()
{
  result = qword_27D851F40;
  if (!qword_27D851F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851F40);
  }

  return result;
}

uint64_t sub_22881B888(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2287E9708(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22881B8E4()
{
  result = qword_2813CF4D0;
  if (!qword_2813CF4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CF4D0);
  }

  return result;
}

void sub_22881BA00()
{
  if (!qword_27D851F70)
  {
    sub_22887F060();
    sub_22887F0C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D851F70);
    }
  }
}

uint64_t sub_22881BA74(uint64_t a1, uint64_t a2)
{
  sub_2287E9708(0, &qword_27D851F68, sub_22881BA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22881BAF4()
{
  if (!qword_27D851AD0)
  {
    sub_22887F060();
    sub_22887F0C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D851AD0);
    }
  }
}

uint64_t sub_22881BB64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t WorkBarrier.__allocating_init(completion:priorityThresholdOverride:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = v7;
  return result;
}

uint64_t WorkBarrier.init(completion:priorityThresholdOverride:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = v4;
  return v3;
}

uint64_t SingleContextProvider.__allocating_init(context:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SingleContextProvider.start(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  ObjectType = swift_getObjectType();
  sub_22881BD80();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2288817D0;
  v7 = *(v4 + 88);
  *(v6 + 32) = v2[2];
  *(v6 + 40) = v7;
  v8 = *(a2 + 8);
  swift_unknownObjectRetain();
  v8(v6, ObjectType, a2);
}

void sub_22881BD80()
{
  if (!qword_2813CF2C0)
  {
    sub_2287FF5DC();
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF2C0);
    }
  }
}

uint64_t SingleContextProvider.context(for:)()
{
  result = sub_22881BE88();
  if (!v0)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t SingleContextProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22881BE5C()
{
  result = sub_22881BE88();
  if (!v0)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t WorkSource.cancel(fetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22887F7D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v17 - v12;
  sub_2287E766C(a1, v19);
  sub_22881C180();
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
    (*(a3 + 32))(v13, v18, a3);
    return (*(v11 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    v15(v10, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v10, v6);
    sub_22881C1E4();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_22881C180()
{
  result = qword_2813D11A0;
  if (!qword_2813D11A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D11A0);
  }

  return result;
}

unint64_t sub_22881C1E4()
{
  result = qword_27D852020;
  if (!qword_27D852020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852020);
  }

  return result;
}

unint64_t sub_22881C274()
{
  result = qword_27D852028;
  if (!qword_27D852028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852028);
  }

  return result;
}

uint64_t AnchoredWorkCriteria.criteria.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AnchoredWorkCriteria.anchor.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AnchoredWorkCriteria.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  v4 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t AnchoredWorkCriteria.init(criteria:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 AnchoredWorkCriteria.init(identifier:inputSignalConfigurations:anchor:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11 = *a1;
  v7 = a1[1].n128_u64[0];
  v8 = a1[1].n128_u64[1];
  type metadata accessor for WorkCriteria();
  v9 = swift_allocObject();
  result = v11;
  *(v9 + 16) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  *(v9 + 48) = a2;
  *a4 = v9;
  a4[1] = a3;
  return result;
}

__n128 SecureCodingOptionalValueAnchor.init(identifier:value:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u64[1];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u64[0] = a2;
  return result;
}

uint64_t SecureCodingOptionalValueAnchor.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

void *SecureCodingOptionalValueAnchor.value.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t SecureCodingOptionalValueAnchor.hasDifference(from:for:)(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[4];
    v4 = *(v1 + 32);
    v5 = (v4 | v3) == 0;
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = *a1;
      v8 = a1[2];
      v9 = a1[3];
      sub_22881C5C8(*a1, v2, v8, v9, v3);
      v10 = v3;
      v11 = v4;
      v5 = sub_22887F7C0();
      sub_22881C614(v7, v2, v8, v9, v3);
    }

    v12 = v5 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_22881C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }

  return result;
}

void sub_22881C614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t SecureCodingOptionalValueAnchor.merged(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  v6 = v5;
}

uint64_t sub_22881C6C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22881C71C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void SecureCodingOptionalValueAnchor.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  type metadata accessor for SecureCodingOptionalValueAnchor.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_22887FAF0();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22887FCE0();
  if (v2)
  {
    goto LABEL_3;
  }

  v7 = v23;
  v8 = v24;
  sub_22881CB2C();
  v29 = 1;
  sub_22881CB7C();
  sub_22887FAE0();
  v22 = v6;
  v9 = v26;
  if (v26 >> 60 != 15)
  {
    v13 = v25;
    sub_2288112B4();
    v14 = v13;
    v10 = sub_22887F6C0();
    if (v10)
    {
      sub_22881CBF4(v14, v9);
      goto LABEL_6;
    }

    LOBYTE(v25) = 1;
    sub_22887F8F0();
    swift_allocError();
    swift_getWitnessTable();
    v19 = v14;
    v20 = v22;
    sub_22887F8E0();
    swift_willThrow();
    sub_22881CBF4(v19, v9);
    (*(v7 + 8))(v20, v4);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v10 = 0;
LABEL_6:
  v29 = 0;
  sub_22880640C();
  v11 = v22;
  sub_22887FAE0();
  v12 = a1;
  (*(v7 + 8))(v11, v4);
  v15 = v26;
  v16 = v27;
  v17 = v28;
  *v8 = v25;
  v8[1] = v15;
  v8[2] = v16;
  v8[3] = v17;
  v8[4] = v10;
  v18 = v10;

  __swift_destroy_boxed_opaque_existential_1(v12);
}

void sub_22881CB2C()
{
  if (!qword_2813D16A0)
  {
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D16A0);
    }
  }
}

unint64_t sub_22881CB7C()
{
  result = qword_2813D1698;
  if (!qword_2813D1698)
  {
    sub_22881CB2C();
    sub_228806364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D1698);
  }

  return result;
}

uint64_t sub_22881CBF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2288063B8(a1, a2);
  }

  return a1;
}

uint64_t SecureCodingOptionalValueAnchor.encode(to:)(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  type metadata accessor for SecureCodingOptionalValueAnchor.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_22887FB70();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = *(v1 + 8);
  v22 = *v1;
  v23 = v6;
  v7 = *(v1 + 24);
  v21 = *(v1 + 16);
  v24 = v7;
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v8;
  sub_22887FCF0();
  if (v8)
  {
    v10 = v3;
    v11 = v25;
    v12 = objc_opt_self();
    v28 = 0;
    v13 = [v12 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v28];
    v14 = v28;
    if (v13)
    {
      v15 = sub_22887F090();
      v17 = v16;

      v28 = v15;
      v29 = v17;
      v27 = 1;
      sub_228806744();
      sub_22887FB50();
      if (v11)
      {
        (*(v26 + 8))(v5, v10);

        return sub_2288063B8(v15, v17);
      }

      sub_2288063B8(v15, v17);
      goto LABEL_9;
    }

    v20 = v14;
    sub_22887F020();

    swift_willThrow();
  }

  else
  {
    LOBYTE(v28) = 1;
    v19 = v25;
    sub_22887FB60();
    v10 = v3;
    if (!v19)
    {
LABEL_9:
      v28 = v22;
      v29 = v23;
      v30 = v21;
      v31 = v24;
      v27 = 0;
      sub_228806798();

      sub_22887FB50();
    }
  }

  return (*(v26 + 8))(v5, v10);
}

uint64_t sub_22881CF40(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_22881CFF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 WorkCriteria.__allocating_init(identifier:inputSignalConfigurations:)(__n128 *a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v5 = a1->n128_u64[1];
  v4[1].n128_u64[0] = a1->n128_u64[0];
  v4[1].n128_u64[1] = v5;
  result = a1[1];
  v4[2] = result;
  v4[3].n128_u64[0] = a2;
  return result;
}

uint64_t WorkCriteria.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t WorkCriteria.init(identifier:inputSignalConfigurations:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(a1 + 16);
  *(v2 + 48) = a2;
  return v2;
}

void *WorkCriteria.__allocating_init(identifier:inputSignalConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = a3;
  return result;
}

HealthOrchestration::WorkCriteria::Identifier __swiftcall WorkCriteria.Identifier.init(_:logDescription:)(Swift::String _, Swift::String_optional logDescription)
{
  v2->value = _;
  v2[1] = logDescription;
  result.logDescription = logDescription;
  result.value = _;
  return result;
}

uint64_t WorkCriteria.deinit()
{

  return v0;
}

uint64_t WorkCriteria.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WorkCriteria.Identifier.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkCriteria.Identifier.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WorkCriteria.Identifier.logDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WorkCriteria.Identifier.logDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void static WorkCriteria.Identifier.singleWorkCriteriaIdentifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000012;
  a1[1] = 0x8000000228888A70;
  a1[2] = 0;
  a1[3] = 0;
}

HealthOrchestration::WorkCriteria::Identifier __swiftcall WorkCriteria.Identifier.init(stringLiteral:)(Swift::String stringLiteral)
{
  *v1 = stringLiteral;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.value = stringLiteral;
  return result;
}

uint64_t static WorkCriteria.Identifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t WorkCriteria.Identifier.hashValue.getter()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t WorkCriteria.Identifier.description.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

uint64_t WorkCriteria.description.getter()
{
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_22887F8A0();

  v28 = 0x6972436B726F573CLL;
  v29 = 0xEF203A6169726574;
  if (v0[5])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  MEMORY[0x22AAC0340](v1, v2);

  MEMORY[0x22AAC0340](10272, 0xE200000000000000);
  v3 = v0[6];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v4, 0);
    v5 = v27;
    v6 = v3 + 32;
    do
    {
      sub_2287E766C(v6, v24);
      v22 = 0;
      v23 = 0xE000000000000000;
      v7 = v25;
      v8 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v8 + 16))(v20, v7, v8);
      v9 = v21;
      if (v21)
      {
        v10 = v20[2];
      }

      else
      {
        v10 = v20[0];
      }

      MEMORY[0x22AAC0340](v10, v9);

      v11 = v22;
      v12 = v23;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v27 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2287F2304((v13 > 1), v14 + 1, 1);
        v5 = v27;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  v24[0] = v5;
  sub_2287F2448(0, &qword_2813CF5A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2287F2498();
  v16 = sub_22887F350();
  v18 = v17;

  MEMORY[0x22AAC0340](v16, v18);

  MEMORY[0x22AAC0340](15913, 0xE200000000000000);
  return v28;
}

unint64_t sub_22881D6F8()
{
  result = qword_27D852030;
  if (!qword_27D852030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852030);
  }

  return result;
}

unint64_t sub_22881D750()
{
  result = qword_27D852038;
  if (!qword_27D852038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852038);
  }

  return result;
}

unint64_t sub_22881D7A8()
{
  result = qword_27D852040;
  if (!qword_27D852040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852040);
  }

  return result;
}

unint64_t sub_22881D800()
{
  result = qword_2813D12E0;
  if (!qword_2813D12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D12E0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22881D8C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22881D90C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void *sub_22881D984(void *a1, int64_t a2, char a3)
{
  result = sub_22881DB14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881D9A4(void *a1, int64_t a2, char a3)
{
  result = sub_22881DC4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881D9C4(void *a1, int64_t a2, char a3)
{
  result = sub_22881DD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22881D9E4(char *a1, int64_t a2, char a3)
{
  result = sub_22881DFEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881DA04(void *a1, int64_t a2, char a3)
{
  result = sub_22881E274(a1, a2, a3, *v3, &qword_2813CF2C8, &qword_2813D1578);
  *v3 = result;
  return result;
}

char *sub_22881DA3C(char *a1, int64_t a2, char a3)
{
  result = sub_22881E140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881DA5C(void *a1, int64_t a2, char a3)
{
  result = sub_22881E274(a1, a2, a3, *v3, &qword_2813CF270, qword_2813CFDF8);
  *v3 = result;
  return result;
}

void *sub_22881DA94(void *a1, int64_t a2, char a3)
{
  result = sub_22881E3D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22881DAB4(char *a1, int64_t a2, char a3)
{
  result = sub_22881E51C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22881DAD4(char *a1, int64_t a2, char a3)
{
  result = sub_22881E654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22881DAF4(char *a1, int64_t a2, char a3)
{
  result = sub_22881E78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881DB14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22881E8C4(0, &qword_2813CF200, sub_22880F394);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22880F394();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22881DC4C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_228811DD8(0, &qword_2813CF2C0, qword_2813D13A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2287E670C(0, qword_2813D13A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22881DD98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22881E8C4(0, &qword_2813CF218, sub_22881E980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22881E980();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881DED0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF1E8, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
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

char *sub_22881DFEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_27D852050, &type metadata for ScopedExecutorIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881E140(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_27D852048, &type metadata for SimpleWorkPlan, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22881E274(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_228811DD8(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2287E670C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_22881E3D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22881E8C4(0, &qword_2813CF278, sub_22881E918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22881E918();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881E51C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF250, &type metadata for InputSignalObservationManager.AnyConfiguration, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881E654(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF228, &type metadata for WorkQueue.FetchRequest, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881E78C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF290, &type metadata for InputSignalAnchorSet.EncodedAnchor, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22881E8C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22887FBB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22881E918()
{
  if (!qword_2813D04E0)
  {
    sub_22880A550();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813D04E0);
    }
  }
}

void sub_22881E980()
{
  if (!qword_2813CF650)
  {
    sub_2287E670C(255, &unk_2813CF800);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813CF650);
    }
  }
}

uint64_t ScheduledWorkPlan.context.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ScheduledWorkPlan.executorIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 ScheduledWorkPlan.executorIdentifier.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);

  result = v5;
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t ScheduledWorkPlan.plan.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 64);

  return sub_2287EC014(a1, v1 + 64);
}

uint64_t ScheduledWorkPlan.anchor.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_22881EC54(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 120) = sub_22881F034;
  *(a2 + 128) = v5;
  return result;
}

uint64_t ScheduledWorkPlan.onFinish.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t ScheduledWorkPlan.onFinish.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t ScheduledWorkPlan.init(context:executorIdentifier:plan:anchor:scheduled:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v14 = *a3;
  v15 = *(a3 + 2);
  v16 = *(a3 + 3);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v14;
  *(a8 + 32) = v15;
  *(a8 + 40) = v16;
  *(a8 + 48) = a3[2];
  result = sub_2287EC014(a4, a8 + 64);
  *(a8 + 104) = a5;
  *(a8 + 112) = a9;
  *(a8 + 120) = a6;
  *(a8 + 128) = a7;
  return result;
}

unint64_t sub_22881EE34()
{
  result = qword_27D852058;
  if (!qword_27D852058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852058);
  }

  return result;
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

uint64_t sub_22881EEBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_22881EF04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22881EF74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22881EFB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_22881EFFC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t AsyncExecutor.run(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v23 - v12;
  sub_22881F2F4();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22887F5B0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, AssociatedTypeWitness);
  v18 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = v5;
  (*(v10 + 32))(&v19[v18], v13, AssociatedTypeWitness);
  v20 = &v19[(v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v24;
  *v20 = v23;
  *(v20 + 1) = v21;
  swift_unknownObjectRetain();

  sub_22881F930(0, 0, v16, &unk_2288832F8, v19);
}

void sub_22881F2F4()
{
  if (!qword_2813CF558)
  {
    sub_22887F5B0();
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF558);
    }
  }
}

uint64_t sub_22881F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a6;
  v8[3] = a7;
  v13 = (*(v15 + 16) + **(v15 + 16));
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_22881F484;

  return v13(a5, a8);
}

uint64_t sub_22881F484()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22881F600;
  }

  else
  {
    v2 = sub_22881F598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22881F598()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22881F600()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_22887F010();
  v2();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22881F688(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22881F83C;

  return sub_22881F34C(a1, v7, v8, v9, v1 + v6, v11, v12, v4);
}

uint64_t sub_22881F83C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22881F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22881F2F4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22881FD10(a3, v11);
  v12 = sub_22887F5B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22881FD74(v11);
  }

  else
  {
    sub_22887F5A0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22887F570();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22887F3C0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22881FD74(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22881FD74(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t dispatch thunk of AsyncExecutor.run(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22881F83C;

  return v9(a1, a2, a3);
}

uint64_t sub_22881FD10(uint64_t a1, uint64_t a2)
{
  sub_22881F2F4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22881FD74(uint64_t a1)
{
  sub_22881F2F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22881FDD0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22881FEC8;

  return v6(a1);
}

uint64_t sub_22881FEC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22881FFC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_228820078;

  return sub_22881FDD0(a1, v4);
}

uint64_t TimeoutDispatchTarget.Errors.hashValue.getter()
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](0);
  return sub_22887FCD0();
}

uint64_t TimeoutDispatchTarget.__allocating_init(timeout:target:)(__int128 *a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_2287EC014(a1, v4 + 24);
  return v4;
}

uint64_t TimeoutDispatchTarget.init(timeout:target:)(__int128 *a1, double a2)
{
  *(v2 + 16) = a2;
  sub_2287EC014(a1, v2 + 24);
  return v2;
}

void sub_228820168(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v46 = sub_22887F180();
  v14 = *(v46 - 8);
  v15 = MEMORY[0x28223BE20](v46);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1(v15))
  {
    ObjectType = swift_getObjectType();
    (*(a4 + 40))(ObjectType, a4);
    sub_2287E766C(a6, v51);
    sub_2287F56D8(a5, v50);
    v19 = sub_22887F160();
    v20 = sub_22887F690();
    sub_228820738(a5);
    if (os_log_type_enabled(v19, v20))
    {
      v42 = v20;
      v43 = v19;
      v44 = a8;
      v45 = a7;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315394;
      v24 = *a5;
      v23 = a5[1];
      v25 = a5[3];
      v40 = a5[2];
      v27 = a5[4];
      v26 = a5[5];
      v47 = 60;
      v48 = 0xE100000000000000;
      v49 = v22;
      sub_2287F56D8(a5, v50);
      MEMORY[0x22AAC0340](v24, v23);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      if (v26)
      {
        v25 = v26;
      }

      else
      {

        v27 = v40;
      }

      a7 = v45;

      MEMORY[0x22AAC0340](v27, v25);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);
      sub_228820738(a5);
      v28 = sub_2287E64D8(v47, v48, &v49);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      v29 = __swift_project_boxed_opaque_existential_1(v51, v51[3]);
      MEMORY[0x28223BE20](v29);
      (*(v31 + 16))(&v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = sub_22887F3B0();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(v51);
      v35 = sub_2287E64D8(v32, v34, &v49);

      *(v21 + 14) = v35;
      v36 = v43;
      _os_log_impl(&dword_2287E4000, v43, v42, "%s: %s: Timed out.", v21, 0x16u);
      v37 = v41;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v37, -1, -1);
      MEMORY[0x22AAC1440](v21, -1, -1);

      (*(v14 + 8))(v17, v46);
    }

    else
    {

      (*(v14 + 8))(v17, v46);
      __swift_destroy_boxed_opaque_existential_1(v51);
    }

    sub_228820800();
    v38 = swift_allocError();
    v39 = sub_22887F010();
    a7();
  }
}

uint64_t TimeoutDispatchTarget.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_2288205D8()
{
  result = qword_27D852068;
  if (!qword_27D852068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852068);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2288206A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2288206E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22882078C(uint64_t a1)
{
  sub_2287FDB84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_228820800()
{
  result = qword_2813D0428[0];
  if (!qword_2813D0428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D0428);
  }

  return result;
}

void *CalendarDayInputSignal.__allocating_init(observer:dateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  sub_228820A78(a3, &v8);
  if (v9)
  {
    sub_228820B70(a3);
    sub_2287EC014(&v8, v10);
    sub_2287EC014(v10, (v6 + 4));
  }

  else
  {
    swift_unknownObjectRetain();
    sub_228820B70(&v8);
    v6[7] = &type metadata for CalendarDayInputSignal.DateProvider;
    v6[8] = &off_283BC9890;
    swift_unknownObjectRelease();
    sub_228820B70(a3);
  }

  return v6;
}

void static InputSignalIdentifier.calendarDay.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

void static InputSignalSet.LookupKey.calendarDay.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

void CalendarDayInputSignal.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

void static CalendarDayInputSignal.identityConfiguration.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t CalendarDayInputSignal.init(observer:dateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_228820A78(a3, &v6);
  if (v7)
  {
    sub_228820B70(a3);
    sub_2287EC014(&v6, &v8);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_228820B70(&v6);
    v9 = &type metadata for CalendarDayInputSignal.DateProvider;
    v10 = &off_283BC9890;
    swift_unknownObjectRelease();
    sub_228820B70(a3);
  }

  sub_2287EC014(&v8, v3 + 32);
  return v3;
}

uint64_t sub_228820A78(uint64_t a1, uint64_t a2)
{
  sub_228821914(0, &qword_2813CF818, sub_228820B0C, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_228820B0C()
{
  result = qword_2813CF820;
  if (!qword_2813CF820)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813CF820);
  }

  return result;
}

uint64_t sub_228820B70(uint64_t a1)
{
  sub_228821914(0, &qword_2813CF818, sub_228820B0C, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228820BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v14[1] = a1;
  v2 = sub_22887F150();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22887F130();
  sub_228821914(0, &qword_2813CF2D0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v6 = sub_22887F140();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228881EA0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x277CC9978], v6);
  v12(v11 + v8, *MEMORY[0x277CC9988], v6);
  v12(v11 + 2 * v8, *MEMORY[0x277CC9998], v6);
  v12(v11 + 3 * v8, *MEMORY[0x277CC9968], v6);
  v12(v11 + 4 * v8, *MEMORY[0x277CC99C0], v6);
  v12(v11 + 5 * v8, *MEMORY[0x277CC99C8], v6);
  sub_22887D528(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22887F120();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_228820EC0()
{
  v0 = sub_22887F0C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22882168C();
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 24);
    v21 = *(result + 16);
    v19 = v9;
    v10 = result;
    ObjectType = swift_getObjectType();
    v12 = v10[7];
    v11 = v10[8];
    __swift_project_boxed_opaque_existential_1(v10 + 4, v12);
    (*(v11 + 8))(v12, v11);
    sub_228820BFC(v3, v7 + *(v5 + 52));
    (*(v1 + 8))(v3, v0);
    *v7 = 0xD000000000000016;
    v7[1] = 0x8000000228883450;
    v7[2] = 0;
    v7[3] = 0;
    v22 = v10;
    v13 = v19;
    v14 = *(v19 + 8);
    v15 = type metadata accessor for CalendarDayInputSignal();
    v17 = sub_228821870(&qword_2813D0368, v16, type metadata accessor for CalendarDayInputSignal);
    v14(v7, &v22, v15, v17, ObjectType, v13);
    sub_2288218B8(v7);
  }

  return result;
}

Swift::Void __swiftcall CalendarDayInputSignal.stopObservation()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277CBE580] object:0];
}

uint64_t CalendarDayInputSignal.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  return v0;
}

uint64_t CalendarDayInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_2288211E4(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

void sub_22882122C()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1 name:*MEMORY[0x277CBE580] object:0];
}

uint64_t _s19HealthOrchestration22CalendarDayInputSignalC16beginObservation4from14configurationsyAA11ValueAnchorVy10Foundation14DateComponentsVGSg_SayAA21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  v26 = *v0;
  v2 = sub_22887F0C0();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22882168C();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CBE580];
  [v10 removeObserver:v1 name:*MEMORY[0x277CBE580] object:0];

  v12 = [v9 defaultCenter];
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_228821868;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228844DB4;
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);

  v15 = [v12 addObserverForName:v11 object:0 queue:0 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  v16 = v1[3];
  ObjectType = swift_getObjectType();
  v17 = v1[7];
  v18 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v17);
  (*(v18 + 8))(v17, v18);
  sub_228820BFC(v4, v8 + *(v6 + 60));
  (*(v24 + 8))(v4, v25);
  *v8 = 0xD000000000000016;
  v8[1] = 0x8000000228883450;
  v8[2] = 0;
  v8[3] = 0;
  aBlock[0] = v1;
  v19 = *(v16 + 8);
  v21 = sub_228821870(&qword_2813D0368, v20, type metadata accessor for CalendarDayInputSignal);
  v19(v8, aBlock, v26, v21, ObjectType, v16);
  return sub_2288218B8(v8);
}

void sub_22882168C()
{
  if (!qword_2813D1460)
  {
    sub_22887F000();
    v0 = MEMORY[0x277CC8990];
    sub_228821870(&qword_2813D16C8, 255, MEMORY[0x277CC8990]);
    sub_228821870(qword_2813D16D8, 255, v0);
    sub_228821870(&qword_2813D16D0, 255, v0);
    v1 = type metadata accessor for ValueAnchor();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D1460);
    }
  }
}

uint64_t sub_22882179C(uint64_t a1, uint64_t a2)
{
  result = sub_228821870(qword_2813D0370, a2, type metadata accessor for CalendarDayInputSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228821870(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2288218B8(uint64_t a1)
{
  sub_22882168C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228821914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228821998()
{
  result = qword_27D852070[0];
  if (!qword_27D852070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D852070);
  }

  return result;
}

void *AutoPauseController.__allocating_init(target:paused:environment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_228821E60(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

void *AutoPauseController.init(target:paused:environment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = sub_228821E60(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v4;
}

Swift::Void __swiftcall AutoPauseController.pauseIfAnyMatches(descriptions:)(Swift::OpaquePointer descriptions)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 9);
  sub_228821F30(&v2[4]);
  os_unfair_lock_unlock(v2 + 9);
}

Swift::Void __swiftcall AutoPauseController.pause()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_228821F84((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

Swift::Void __swiftcall AutoPauseController.resume()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_228821F9C((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

_BYTE *sub_228821C40(_BYTE *result, uint64_t a2)
{
  *result = 0;
  if (result[1])
  {
    if ((result[16] & 1) == 0)
    {
      result[16] = 1;
      v2 = *(a2 + 40);
      ObjectType = swift_getObjectType();
      return (*(v2 + 8))(ObjectType, v2);
    }
  }

  else if (result[16])
  {
    result[16] = 0;
    v4 = *(a2 + 40);
    v5 = swift_getObjectType();
    return (*(v4 + 16))(v5, v4);
  }

  return result;
}

Swift::Void __swiftcall AutoPauseController.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 36));
  sub_2287EA990((v2 + 16));

  os_unfair_lock_unlock((v2 + 36));
}

uint64_t AutoPauseController.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t AutoPauseController.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_228821DB0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_2288221C8((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

void sub_228821E08()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_2288221B0((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

void *sub_228821E60(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  sub_228822134();
  v10 = swift_allocObject();
  *(v10 + 36) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = 0;
  *(v10 + 24) = v11;
  *(v10 + 32) = a3;
  v5[4] = a1;
  v5[5] = a2;
  v5[2] = v10;
  v5[3] = a4;
  v12 = *(a4 + 16);
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v12 + 10);
  sub_228822194(&v12[4]);
  os_unfair_lock_unlock(v12 + 10);

  return v5;
}

_BYTE *sub_228821F30(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 8) = v3;
  return sub_2287EA9D0(a1);
}

uint64_t sub_228822030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_228822078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_2288220C8(_BYTE *result)
{
  *result = 1;
  if ((result[16] & 1) == 0)
  {
    result[16] = 1;
    v2 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    return (*(v2 + 8))(ObjectType, v2);
  }

  return result;
}

void sub_228822134()
{
  if (!qword_2813CF468)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF468);
    }
  }
}

uint64_t sub_2288222A4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228822314(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_228822454(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_228822674(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_22882272C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WorkFetch.State.State();
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for WorkFetch.State();
  v3 = (a1 + *(result + 36));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_228822798(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2288227D8(a1);
  return v2;
}

char *sub_2288227D8(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for WorkFetch.State();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_22882272C(&v10 - v6);
  v8 = sub_228870A40(v7, v4);
  (*(v5 + 8))(v7, v4);
  *(v1 + 2) = v8;
  (*(*(v3 - 8) + 32))(&v1[*(*v1 + 104)], a1, v3);
  return v1;
}

uint64_t WorkFetch.workItem.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_228822964, 0, 0);
}

uint64_t sub_228822964()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  sub_228822C70();
  v3 = v2;
  *v1 = v0;
  v1[1] = sub_228822A38;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2822007B8](v4, 0, 0, 0x6D6574496B726F77, 0xE800000000000000, sub_228822C68, v5, v3);
}

uint64_t sub_228822A38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228822B2C(uint64_t a1)
{
  sub_2288247D8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_228822D04();
}

void sub_228822C70()
{
  if (!qword_2813D0DB0)
  {
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D0DB0);
    }
  }
}

uint64_t sub_228822CC0(uint64_t a1)
{
  sub_228824980(a1, v2);
  sub_2288247D8();
  return sub_22887F580();
}

uint64_t sub_228822D04()
{
  v1 = *(v0 + 16);
  type metadata accessor for WorkFetch.State();
  sub_2288233C4();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_2288248B0(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));
  v5();
}

uint64_t sub_228822DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = type metadata accessor for WorkFetch.State.State();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  (*(v9 + 16))(&v23 - v11, a1, v8, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v19 = sub_2288248D0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v15 = *(v12 + 7);
    *(v14 + 128) = *(v12 + 6);
    *(v14 + 144) = v15;
    *(v14 + 160) = *(v12 + 16);
    v16 = *(v12 + 3);
    *(v14 + 64) = *(v12 + 2);
    *(v14 + 80) = v16;
    v17 = *(v12 + 5);
    *(v14 + 96) = *(v12 + 4);
    *(v14 + 112) = v17;
    v18 = *(v12 + 1);
    *(v14 + 32) = *v12;
    *(v14 + 48) = v18;
    v19 = sub_228824928;
LABEL_5:
    *a4 = v19;
    a4[1] = v14;
  }

  v21 = (a1 + *(type metadata accessor for WorkFetch.State() + 36));
  v22 = *v21;

  sub_2287E75A4(v22);
  *v21 = a2;
  v21[1] = a3;
  *a4 = nullsub_1;
  a4[1] = 0;
  return (*(v9 + 8))(v12, v8);
}

Swift::Void __swiftcall WorkFetch.cancel()()
{
  v1 = *(v0 + 16);
  type metadata accessor for WorkFetch.State();
  sub_2288233C4();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_228823390(v1 + v2, &v4);
  os_unfair_lock_unlock((v1 + v3));
  v4();
}

uint64_t sub_2288230E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v26 = a1;
  v27 = a3;
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  v6 = type metadata accessor for WorkFetch.State.State();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v24 = v5;
  v25 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  (*(v7 + 16))(v9, v26, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    result = (*(v7 + 8))(v9, v6);
    v18 = 0;
    v19 = nullsub_1;
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v16, v9, AssociatedTypeWitness);
    v20(v14, v16, AssociatedTypeWitness);
    v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v18 = swift_allocObject();
    v22 = v24;
    *(v18 + 2) = v25;
    *(v18 + 3) = v22;
    *(v18 + 4) = a2;
    v20(v18 + v21, v14, AssociatedTypeWitness);

    v19 = sub_228824710;
  }

  v23 = v27;
  *v27 = v19;
  v23[1] = v18;
  return result;
}

unint64_t sub_2288233C4()
{
  result = qword_2813CF198;
  if (!qword_2813CF198)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813CF198);
  }

  return result;
}

uint64_t sub_228823414()
{
  v1 = *(v0 + 16);
  type metadata accessor for WorkFetch.State();
  sub_2288233C4();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_2288246F4((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));
  v5();
}

uint64_t sub_228823504@<X0>(char *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for WorkFetch.State.State();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  (*(v5 + 16))(&v16 - v7, a1, v4, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *(v5 + 8);
      goto LABEL_6;
    }

LABEL_11:
    result = sub_22887FA10();
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v5 + 8))(v8, v4);
    goto LABEL_11;
  }

  v10 = *(v5 + 8);
  v10(v8, v4);
LABEL_6:
  v10(a1, v4);
  swift_storeEnumTagMultiPayload();
  v11 = &a1[*(type metadata accessor for WorkFetch.State() + 36)];
  v12 = *v11;
  v13 = nullsub_1;
  if (*v11)
  {
    v14 = v11[1];
    *v11 = 0;
    v11[1] = 0;
    result = swift_allocObject();
    *(result + 16) = v12;
    *(result + 24) = v14;
    v13 = sub_2288249E4;
  }

  else
  {
    result = 0;
  }

  *a2 = v13;
  a2[1] = result;
  return result;
}

void sub_228823738()
{
  v1 = *(v0 + 16);
  type metadata accessor for WorkFetch.State();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_228824658((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_228823808(char *a1, uint64_t a2)
{
  v13 = a2;
  v3 = type metadata accessor for WorkFetch.State.State();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  (*(v4 + 16))(&v12 - v6, a1, v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v4 + 8);
  result = v9(v7, v3);
  if (EnumCaseMultiPayload == 2)
  {
    v9(a1, v3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(a1, v13, AssociatedTypeWitness);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2288239A4()
{
  v1 = *(v0 + 16);
  type metadata accessor for WorkFetch.State();
  sub_2288233C4();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_228824678(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));
  v5();
}

uint64_t sub_228823A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t (**a4)()@<X8>)
{
  v26 = a3;
  v7 = type metadata accessor for WorkFetch.State.State();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  (*(v8 + 16))(&v23 - v10, a1, v7, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *(v8 + 8);
      goto LABEL_6;
    }

LABEL_11:
    result = sub_22887FA10();
    __break(1u);
    return result;
  }

  v23 = a2;
  if (EnumCaseMultiPayload)
  {
    (*(v8 + 8))(v11, v7);
    goto LABEL_11;
  }

  v13 = *(v8 + 8);
  v13(v11, v7);
  a2 = v23;
LABEL_6:
  v13(a1, v7);
  sub_2287F5EE4(a2, a1);
  swift_storeEnumTagMultiPayload();
  v14 = (a1 + *(type metadata accessor for WorkFetch.State() + 36));
  v15 = *v14;
  v16 = nullsub_1;
  if (*v14)
  {
    v17 = v14[1];
    *v14 = 0;
    v14[1] = 0;
    sub_2287F5EE4(a2, v24);
    result = swift_allocObject();
    *(result + 16) = v15;
    *(result + 24) = v17;
    v19 = v24[7];
    *(result + 128) = v24[6];
    *(result + 144) = v19;
    *(result + 160) = v25;
    v20 = v24[3];
    *(result + 64) = v24[2];
    *(result + 80) = v20;
    v21 = v24[5];
    *(result + 96) = v24[4];
    *(result + 112) = v21;
    v22 = v24[1];
    *(result + 32) = v24[0];
    *(result + 48) = v22;
    v16 = sub_2288249E8;
  }

  else
  {
    result = 0;
  }

  *a4 = v16;
  a4[1] = result;
  return result;
}

uint64_t *WorkFetch.deinit()
{
  v1 = *v0;
  WorkFetch.cancel()();

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t WorkFetch.__deallocating_deinit()
{
  WorkFetch.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_228823E18()
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

void sub_228823EEC()
{
  type metadata accessor for WorkFetch.State.State();
  if (v0 <= 0x3F)
  {
    sub_228824218();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_228823F74(_DWORD *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v4 <= 0x88)
  {
    v4 = 136;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 24;
  v6 = v5 & 0xFFFFFFF8;
  v7 = a2 - 2147483645;
  if ((v5 & 0xFFFFFFF8) != 0)
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *(a1 + v5);
      if (v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = *(a1 + v5);
      if (v10)
      {
        goto LABEL_19;
      }
    }

LABEL_23:
    v13 = *((a1 + v4 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    if ((v13 + 1) >= 2)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  v10 = *(a1 + v5);
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_19:
  v12 = v10 - 1;
  if (v6)
  {
    v12 = 0;
    LODWORD(v6) = *a1;
  }

  return (v6 | v12) + 0x7FFFFFFF;
}

void sub_228824098(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= 0x88)
  {
    v6 = 136;
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (a3 < 0x7FFFFFFF)
  {
    v10 = 0;
  }

  else
  {
    v8 = a3 - 2147483645;
    if ((v6 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }
  }

  if (a2 <= 0x7FFFFFFE)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *(a1 + v7) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      }

      *(a1 + v7) = 0;
    }

    else if (v10)
    {
      *(a1 + v7) = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      *((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if ((v6 & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v11 = a2 - 2147483646;
  }

  else
  {
    v11 = 1;
  }

  if ((v6 & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    bzero(a1, v7);
    *a1 = a2 - 0x7FFFFFFF;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      *(a1 + v7) = v11;
    }

    else
    {
      *(a1 + v7) = v11;
    }
  }

  else if (v10)
  {
    *(a1 + v7) = v11;
  }
}

void sub_228824218()
{
  if (!qword_27D852178)
  {
    sub_2287F851C();
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852178);
    }
  }
}

uint64_t sub_228824270()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2288242EC(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = 136;
  if (v4 > 0x88)
  {
    v5 = v4;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_27;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v11 = ((~(-1 << v8) + a2 - v6) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_27:
      v13 = *(a1 + v5);
      if (v6 <= (v13 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v13);
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_27;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v12) + 1;
}

void sub_228824464(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= 0x88)
  {
    v6 = 136;
  }

  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_37:
    if (v9 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_37;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_41:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v9)
  {
    a1[v8] = v15;
  }
}

uint64_t sub_228824698(uint64_t a1)
{
  sub_228822C70();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288247D8()
{
  if (!qword_27D852200)
  {
    sub_228822C70();
    v0 = sub_22887F590();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852200);
    }
  }
}

uint64_t sub_228824840(uint64_t a1)
{
  sub_2288247D8();

  return sub_228822CC0(a1);
}

uint64_t sub_2288248D4()
{
  v1 = *(v0 + 16);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1(v3);
  return sub_228824698(v3);
}

uint64_t sub_22882492C()
{
  v1 = *(v0 + 16);
  sub_2287F5EE4(v0 + 32, v3);
  v1(v3);
  return sub_228824698(v3);
}

uint64_t sub_228824980(uint64_t a1, uint64_t a2)
{
  sub_228822C70();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SecurelyCodableWorkPlan.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier + 8);
  v3 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier);
  a1[1] = v2;
  a1[2] = v3;
}

id SecurelyCodableWorkPlan.init(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(&v26, v7, v8);
  v9 = v27;
  v30 = v3;
  v10 = &v3[OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier];
  *v10 = v26;
  *(v10 + 2) = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22887EFB0();
  swift_allocObject();
  sub_22887EFA0();
  v11 = sub_22887EF90();
  if (v4)
  {

    swift_unknownObjectRelease();
    v17 = v30;
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for SecurelyCodableWorkPlan();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v11;
    v14 = v12;

    v15 = &v30[OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_payload];
    *v15 = v13;
    v15[1] = v14;
    ObjectType = swift_getObjectType();
    v24 = *(a3 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v26);
    v24(ObjectType, a3);
    __swift_project_boxed_opaque_existential_1(&v26, AssociatedTypeWitness);
    swift_allocObject();
    sub_22887EFA0();
    v19 = sub_22887EF90();
    v21 = v20;

    v22 = v30;
    v23 = &v30[OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_encodedContextDescriptor];
    *v23 = v19;
    v23[1] = v21;
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v25.receiver = v22;
    v25.super_class = type metadata accessor for SecurelyCodableWorkPlan();
    v17 = objc_msgSendSuper2(&v25, sel_init);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v17;
}

uint64_t sub_228824D74()
{
  sub_22887EF80();
  swift_allocObject();
  sub_22887EF70();
  sub_22887EF60();
}

uint64_t sub_228824E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v11 - v6;
  sub_22887EF80();
  swift_allocObject();
  sub_22887EF70();
  swift_getAssociatedConformanceWitness();
  v8 = v11[3];
  sub_22887EF60();

  if (!v8)
  {
    v9 = v11[0];
    a3 = (*(a3 + 24))(v7, a2, a3);
    (*(v9 + 8))(v7, AssociatedTypeWitness);
  }

  return a3;
}

void sub_22882503C(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier;
  v4 = sub_22887F370();
  v5 = sub_22887F370();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v3 + 16);
  v7 = sub_22887F370();
  [a1 encodeInteger:v6 forKey:v7];

  v8 = sub_22887F070();
  v9 = sub_22887F370();
  [a1 encodeObject:v8 forKey:v9];

  v10 = sub_22887F070();
  v11 = sub_22887F370();
  [a1 encodeObject:v10 forKey:v11];
}

uint64_t SecurelyCodableWorkPlan.init(coder:)(void *a1)
{
  v2 = sub_22887F370();
  [a1 decodeIntegerForKey_];

  sub_2287E76D0(0, &qword_27D852228);
  v3 = sub_22887F7B0();
  if (v3)
  {
    v4 = v3;
    sub_22887F390();
  }

  type metadata accessor for SecurelyCodableWorkPlan();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2288254A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id SecurelyCodableWorkPlan.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurelyCodableWorkPlan.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecurelyCodableWorkPlan();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_228825768(double *a1, double *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 0;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a2[24] >= a1[24];
  }

  return 1;
}

BOOL sub_2288257BC(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 0;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a1[24] >= a2[24];
  }

  return 1;
}

double sub_2288258B4@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_2287F71FC(v2, a1);
  v5 = qword_228883898[*(a1 + 16)];
  result = a2 - *(a1 + 8) + *(a1 + v5);
  *(a1 + v5) = result;
  *(a1 + 8) = a2;
  *(a1 + 16) = 3;
  return result;
}

double sub_22882591C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_2287F71FC(v2, a1);
  v5 = qword_228883898[*(a1 + 16)];
  result = a2 - *(a1 + 8) + *(a1 + v5);
  *(a1 + v5) = result;
  *(a1 + 8) = a2;
  return result;
}

BOOL static EnqueuedWorkPlan.< infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 1;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a1[24] < a2[24];
  }

  return 0;
}

BOOL sub_2288259DC(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 1;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a1[24] < a2[24];
  }

  return 0;
}

BOOL sub_228825A38(double *a1, double *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 1;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a2[24] < a1[24];
  }

  return 0;
}

unint64_t sub_228825A9C()
{
  result = qword_27D852238;
  if (!qword_27D852238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852238);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PriorityRuleSet.Priority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_228825BE8()
{
  result = qword_27D852240;
  if (!qword_27D852240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852240);
  }

  return result;
}

void *RequestedWorkInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = a1;
  v4[4] = a2;
  sub_22882667C();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v4[2] = v5;
  return v4;
}

void *RequestedWorkInputSignal.init(observer:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_22882667C();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v2[2] = v3;
  return v2;
}

Swift::Void __swiftcall RequestedWorkInputSignal.didEnqueueWork()()
{
  v1 = *v0;
  v2 = v0[2];
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 24);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = v4;
    v5 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 32));
    v6 = v0[4];
    ObjectType = swift_getObjectType();
    v11[0] = v5;
    v11[1] = v4;
    v10 = v0;
    v8 = *(v6 + 8);
    v9 = sub_228826A90(&qword_27D852250);
    v8(v11, &v10, v1, v9, ObjectType, v6);
  }
}

HealthOrchestration::RequestedWorkInputSignal::Anchor __swiftcall RequestedWorkInputSignal.Anchor.init(epoch:anchor:)(Swift::Int epoch, Swift::Int anchor)
{
  *v2 = epoch;
  v2[1] = anchor;
  result.anchor = anchor;
  result.epoch = epoch;
  return result;
}

void RequestedWorkInputSignal.Anchor.identifier.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "RequestedWork");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

Swift::Bool __swiftcall RequestedWorkInputSignal.Anchor.hasDifference(from:for:)(HealthOrchestration::RequestedWorkInputSignal::Anchor_optional from, HealthOrchestration::IdentityConfiguration a2)
{
  epoch = from.value.epoch;
  v4 = *(from.value.epoch + 16);
  result = 1;
  if ((v4 & 1) == 0)
  {
    v6 = *epoch;
    if (*epoch >= *v2)
    {
      v7 = epoch[1];
      return *v2 >= v6 && v7 < v2[1];
    }
  }

  return result;
}

BOOL static RequestedWorkInputSignal.Anchor.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a2 >= *a1 && a1[1] < a2[1];
}

uint64_t sub_228825F18()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 0x68636F7065;
  }
}

uint64_t sub_228825F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x68636F7065 && a2 == 0xE500000000000000;
  if (v6 || (sub_22887FBF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22887FBF0();

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

uint64_t sub_228826020(uint64_t a1)
{
  v2 = sub_228826700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22882605C(uint64_t a1)
{
  v2 = sub_228826700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestedWorkInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_228826754(0, &qword_27D852258, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228826700();
  sub_22887FCF0();
  v12 = 0;
  sub_22887FB40();
  if (!v2)
  {
    v11 = 1;
    sub_22887FB40();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RequestedWorkInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228826754(0, &qword_27D852268, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228826700();
  sub_22887FCE0();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_22887FAD0();
    v14 = 1;
    v12 = sub_22887FAD0();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

int8x16_t sub_2288263C0@<Q0>(int64x2_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  result = vbslq_s8(vcgtq_s64(*v2, *a1), *a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_2288263D8(uint64_t *a1)
{
  v3 = *(a1 + 16);
  result = 1;
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    if (*a1 >= *v1)
    {
      v6 = a1[1];
      return *v1 >= v5 && v6 < v1[1];
    }
  }

  return result;
}

BOOL sub_228826410(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a2 >= *a1 && a1[1] < a2[1];
}

BOOL sub_228826440(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a1 < *a2 || a2[1] >= a1[1];
}

BOOL sub_228826470(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a2 < *a1 || a1[1] >= a2[1];
}

BOOL sub_2288264A0(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a1 >= *a2 && a2[1] < a1[1];
}

void RequestedWorkInputSignal.identifier.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "RequestedWork");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t RequestedWorkInputSignal.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t RequestedWorkInputSignal.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22882667C()
{
  if (!qword_27D852248)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852248);
    }
  }
}

unint64_t sub_228826700()
{
  result = qword_27D852260;
  if (!qword_27D852260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852260);
  }

  return result;
}

void sub_228826754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228826700();
    v7 = a3(a1, &type metadata for RequestedWorkInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s19HealthOrchestration24RequestedWorkInputSignalC16beginObservation4from14configurationsyAC6AnchorVSg_SayAA21IdentityConfigurationVGtF_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = v1[2];
  v5 = *v1;
  os_unfair_lock_lock((v4 + 32));
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v7;
    v8 = *(v4 + 24);
    os_unfair_lock_unlock((v4 + 32));
    v9 = v1[4];
    ObjectType = swift_getObjectType();
    v14[0] = v7;
    v14[1] = v8;
    v13 = v1;
    v11 = *(v9 + 8);
    v12 = sub_228826A90(&qword_27D852250);
    v11(v14, &v13, v5, v12, ObjectType, v9);
  }
}

unint64_t sub_2288268BC(void *a1)
{
  a1[1] = sub_2288268F4();
  a1[2] = sub_228826948();
  result = sub_22882699C();
  a1[3] = result;
  return result;
}

unint64_t sub_2288268F4()
{
  result = qword_27D852270;
  if (!qword_27D852270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852270);
  }

  return result;
}

unint64_t sub_228826948()
{
  result = qword_27D852278;
  if (!qword_27D852278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852278);
  }

  return result;
}

unint64_t sub_22882699C()
{
  result = qword_27D852280;
  if (!qword_27D852280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852280);
  }

  return result;
}

unint64_t sub_2288269F8()
{
  result = qword_27D852288;
  if (!qword_27D852288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852288);
  }

  return result;
}

uint64_t sub_228826A4C(uint64_t a1)
{
  result = sub_228826A90(&qword_27D852290);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228826A90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RequestedWorkInputSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228826B30()
{
  result = qword_27D852298;
  if (!qword_27D852298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852298);
  }

  return result;
}

unint64_t sub_228826B88()
{
  result = qword_27D8522A0;
  if (!qword_27D8522A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8522A0);
  }

  return result;
}

unint64_t sub_228826BE0()
{
  result = qword_27D8522A8;
  if (!qword_27D8522A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8522A8);
  }

  return result;
}

HealthOrchestration::IdentityConfiguration __swiftcall IdentityConfiguration.init(identifier:)(HealthOrchestration::IdentityConfiguration identifier)
{
  v2 = *(identifier.identifier.value._countAndFlagsBits + 8);
  *v1 = *identifier.identifier.value._countAndFlagsBits;
  *(v1 + 8) = v2;
  *(v1 + 16) = *(identifier.identifier.value._countAndFlagsBits + 16);
  return identifier;
}

uint64_t IdentityConfiguration.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t static IdentityConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t IdentityConfiguration.hashValue.getter()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

unint64_t sub_228826D1C(uint64_t a1)
{
  result = sub_228826D44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_228826D44()
{
  result = qword_2813D0558[0];
  if (!qword_2813D0558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D0558);
  }

  return result;
}

unint64_t sub_228826D9C()
{
  result = qword_2813D0550;
  if (!qword_2813D0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0550);
  }

  return result;
}

uint64_t static InputSignalSet.LookupKey.buildNumber.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D851790 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D8522B8;
  v3 = qword_27D8522C0;
  v2 = unk_27D8522C8;
  *a1 = qword_27D8522B0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
}

uint64_t static InputSignalSet.LookupKey.constant<A>(type:_:)@<X0>(unint64_t *a1@<X1>, __n128 *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7.n128_u64[0] = *a1;
  v7.n128_u64[1] = v3;
  v8 = v4;
  v9 = v5;
  type metadata accessor for ConstantInputSignal();
  InputSignalSet.LookupKey.init(identifier:)(&v7, a2);
}

void sub_228826EF8()
{
  qword_27D8522B0 = 0xD000000000000033;
  *algn_27D8522B8 = 0x8000000228888DC0;
  qword_27D8522C0 = 0;
  unk_27D8522C8 = 0;
}

uint64_t static InputSignalIdentifier.buildNumber.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D851790 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D8522B8;
  v3 = qword_27D8522C0;
  v2 = unk_27D8522C8;
  *a1 = qword_27D8522B0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
}

void static ConstantInputSignal<>.buildNumber(observer:)(uint64_t a1, uint64_t a2)
{
  if (qword_27D851790 != -1)
  {
    swift_once();
  }

  v5 = qword_27D8522B0;
  v4 = *algn_27D8522B8;
  v7 = qword_27D8522C0;
  v6 = unk_27D8522C8;

  v8 = MobileGestalt_get_current_device();
  if (v8)
  {
    v9 = v8;
    v10 = MobileGestalt_copy_buildVersion_obj();

    if (v10)
    {
      v11 = sub_22887F3A0();
      v13 = v12;

      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a2;
      v14[4] = v5;
      v14[5] = v4;
      v14[6] = v7;
      v14[7] = v6;
      v14[8] = v11;
      v14[9] = v13;
      swift_unknownObjectRetain();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t ConstantInputSignal.__allocating_init(identifier:value:observer:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *v8;
  v10 = *a1;
  v11 = a1[1];
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  *(v8 + 48) = *(a1 + 1);
  (*(*(*(v9 + 80) - 8) + 32))(v8 + *(v9 + 128), a2);
  return v8;
}

uint64_t ConstantInputSignal.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v4 = v1[6];
  v3 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t *ConstantInputSignal.init(identifier:value:observer:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *a1;
  v7 = a1[1];
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = v6;
  v4[5] = v7;
  *(v4 + 3) = *(a1 + 1);
  (*(*(*(v5 + 80) - 8) + 32))(v4 + *(v5 + 128));
  return v4;
}

uint64_t *ConstantInputSignal.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  return v0;
}

uint64_t ConstantInputSignal.__deallocating_deinit()
{
  ConstantInputSignal.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_228827454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return InputSignal.description.getter(a1, WitnessTable);
}

uint64_t _s19HealthOrchestration19ConstantInputSignalC16beginObservation4from14configurationsyAA11ValueAnchorVyxGSg_SayAA21IdentityConfigurationVGtF_0(uint64_t a1)
{
  v25 = *v1;
  v2 = v25;
  v3 = *(v25 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v20 - v5;
  v24 = *(v25 + 88);
  v22 = *(v7 + 96);
  *&v8 = v3;
  *(&v8 + 1) = v24;
  v27 = v8;
  v28 = v22;
  v26 = type metadata accessor for ValueAnchor();
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v20 - v10;
  v21 = *(v1 + 3);
  ObjectType = swift_getObjectType();
  v12 = *(v1 + 5);
  v13 = *(v1 + 6);
  v14 = *(v1 + 7);
  *&v27 = *(v1 + 4);
  *(&v27 + 1) = v12;
  *&v28 = v13;
  *(&v28 + 1) = v14;
  (*(v4 + 16))(v6, &v1[*(v2 + 128)], v3);
  ValueAnchor.init(identifier:value:)(&v27, v6, v3, v11);
  *&v27 = v1;
  v15 = v21;
  v16 = *(v21 + 8);

  v17 = v25;
  WitnessTable = swift_getWitnessTable();
  v16(v11, &v27, v17, WitnessTable, ObjectType, v15);
  return (*(v9 + 8))(v11, v26);
}

uint64_t sub_228827758(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228827794()
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

uint64_t (*MockEnvironmentalStateComponentObserver.handler.getter())(uint64_t, uint64_t, uint64_t)
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_228827A40;
}

uint64_t sub_228827908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  os_unfair_lock_lock((v4 + 32));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 32));

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_228827984(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_228827E44(sub_228828174, v3);
}

uint64_t MockEnvironmentalStateComponentObserver.handler.setter(uint64_t a1, uint64_t a2)
{
  sub_228827E44(a1, a2);
}

void (*MockEnvironmentalStateComponentObserver.handler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v4[7] = v5;
  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  os_unfair_lock_unlock((v5 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v4[3] = sub_228828174;
  v4[4] = v8;
  return sub_228827B1C;
}

void sub_228827B1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[5] = sub_228827F08;
    v2[6] = v6;
    MEMORY[0x28223BE20](v6);

    os_unfair_lock_lock((v5 + 32));
    sub_228827F0C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    v2[5] = sub_228828178;
    v2[6] = v7;
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v5 + 32));
    sub_22882817C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  swift_endAccess();
  free(v2);
}

uint64_t MockEnvironmentalStateComponentObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_228827F24();
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 16) = nullsub_1;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MockEnvironmentalStateComponentObserver.init()()
{
  sub_228827F24();
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 16) = nullsub_1;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MockEnvironmentalStateComponentObserver.didUpdate(state:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);

  os_unfair_lock_lock((v7 + 32));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 32));

  v10[1] = a3;
  v11 = a1;
  v10[0] = a2;
  v8(&v11, v10);
}

uint64_t MockEnvironmentalStateComponentObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228827E44(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  os_unfair_lock_lock((v6 + 32));
  sub_22882817C((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));

  return swift_endAccess();
}

void sub_228827F24()
{
  if (!qword_27D8522D0)
  {
    sub_228827F8C();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8522D0);
    }
  }
}

unint64_t sub_228827F8C()
{
  result = qword_27D8522D8;
  if (!qword_27D8522D8)
  {
    sub_2287E9598();
    sub_228828004();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D8522D8);
  }

  return result;
}

unint64_t sub_228828004()
{
  result = qword_2813CFC00;
  if (!qword_2813CFC00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813CFC00);
  }

  return result;
}

uint64_t sub_2288280B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[1] = a3;
  v7 = a1;
  v6[0] = a2;
  return v4(&v7, v6);
}

uint64_t sub_228828128(void *a1)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];

  *a1 = v5;
  a1[1] = v4;
}

Swift::Void __swiftcall Orchestrator.stop()()
{
  v1 = *(*(v0 + 56) + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22880EEF8((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

Swift::Void __swiftcall Orchestrator.pause()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F79C(&v1[4]);

  os_unfair_lock_unlock(v1 + 26);
}

Swift::Void __swiftcall Orchestrator.resume()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_2287EB0F4(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 26);
  v2._rawValue = v3;
  sub_2287EBD14(v2);
}

uint64_t Orchestrator.add(_:from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(v19, ObjectType, a2);
  *&v20 = v9;
  *(&v20 + 1) = v11;
  v21 = v19[0];
  v22 = v19[1];
  v13 = *(v3 + 48);
  os_unfair_lock_lock(v13 + 26);
  sub_22882F644(&v13[4], v19);
  os_unfair_lock_unlock(v13 + 26);
  if (v4 || (v19[0] & 1) == 0)
  {
    return sub_228820738(&v20);
  }

  sub_22882F664();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  v16 = v21;
  v15 = v22;
  *(inited + 32) = v20;
  *(inited + 48) = v16;
  *(inited + 64) = v15;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  swift_unknownObjectRetain();
  v17 = sub_228809030(inited);
  swift_setDeallocating();
  sub_228835BA0(inited + 32);
  sub_22882A5A4(v17);
}

uint64_t Orchestrator.remove(_:)()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F818(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 26);
  v3();
}

Swift::Void __swiftcall Orchestrator.resetFailedWorkCriteria()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_2287EDB9C(&v3);
  os_unfair_lock_unlock(v1 + 26);
  v2._rawValue = v3;
  sub_2287EBD14(v2);
}

Swift::String __swiftcall Orchestrator.orchestrationGraph()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F7FC(&v1[4], v5);
  os_unfair_lock_unlock(v1 + 26);
  v2 = v5[0];
  v3 = v5[1];
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void Orchestrator.start(completion:)()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F7C4(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 26);
  if (v2)
  {
    sub_22882A5A4(v2);
  }
}

uint64_t sub_2288285E4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v4 = v3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 11) | (32 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v17 = v14[2];
      v16 = v14[3];
      v20[0] = *v14;
      v20[1] = v15;
      v20[2] = v17;
      v20[3] = v16;

      v18 = v21(v20);
      if (v4)
      {

        return v19 & 1;
      }

      if (v18)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v19 = 1;
    return v19 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v19 = 0;
        return v19 & 1;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Orchestrator.__allocating_init(context:inputSignalProviders:executorProviders:workQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Orchestrator.init(context:inputSignalProviders:executorProviders:workQueue:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t Orchestrator.debugSnapshot.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F4F8(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 26);
  return v3;
}

uint64_t sub_228828824(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v32 = v5;
  v33 = result;
  v31 = v1;
  while (v4)
  {
LABEL_10:
    v10 = *(*(result + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      v13 = sub_22887FA20();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_22887FA20();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v13;
    v15 = __OFADD__(result, v13);
    v16 = result + v13;
    if (v15)
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v14)
      {
LABEL_20:
        sub_22887FA20();
      }

LABEL_21:
      result = sub_22887F8D0();
      v17 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v17 = v8;
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v12;
    v34 = v17;
    if (v11)
    {
      result = sub_22887FA20();
      v21 = v12;
      v22 = result;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v36)
      {
        goto LABEL_41;
      }

      v23 = v18 + 8 * v19 + 32;
      if (v11)
      {
        if (v22 < 1)
        {
          goto LABEL_43;
        }

        v24 = v21;
        sub_2287E70A8(0, &qword_2813CF620, 255, type metadata accessor for WorkCriteriaRecord, MEMORY[0x277D83940]);
        sub_228836450(&qword_27D852328, &qword_2813CF620, 255, type metadata accessor for WorkCriteriaRecord);
        for (i = 0; i != v22; ++i)
        {
          v26 = sub_22880EDF4(v35, i, v24);
          v28 = *v27;

          (v26)(v35, 0);
          *(v23 + 8 * i) = v28;
        }
      }

      else
      {
        type metadata accessor for WorkCriteriaRecord();
        swift_arrayInitWithCopy();
      }

      v5 = v32;
      result = v33;
      v1 = v31;
      v8 = v34;
      if (v36 >= 1)
      {
        v29 = *(v18 + 16);
        v15 = __OFADD__(v29, v36);
        v30 = v29 + v36;
        if (v15)
        {
          goto LABEL_42;
        }

        *(v18 + 16) = v30;
      }
    }

    else
    {

      v5 = v32;
      result = v33;
      v8 = v34;
      if (v36 > 0)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t Orchestrator.Errors.hashValue.getter()
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](0);
  return sub_22887FCD0();
}

uint64_t sub_228828C3C()
{
  v1 = 0x657669746341;
  if (*v0 != 1)
  {
    v1 = 0x6465646E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261745320746F4ELL;
  }
}

uint64_t sub_228828C98()
{
  if (*v0)
  {
    return 0x646573756150;
  }

  else
  {
    return 0x676E696E6E7552;
  }
}

uint64_t Orchestrator.init(context:inputSignalProviders:executorProviders:workQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v85 = a5;
  v84 = a4;
  v83 = a3;
  v89 = a2;
  v77 = *v6;
  v80 = sub_22887F180();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v91 = sub_22887F6F0();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22887F6E0();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22887F270();
  MEMORY[0x28223BE20](v12 - 8);
  v6[2] = a1;
  v6[3] = a2;
  v87 = sub_22880AA7C();
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_22887F8A0();

  strcpy(&v94, "Orchestration-");
  HIBYTE(v94) = -18;
  swift_getObjectType();
  v93[0] = a1;
  swift_unknownObjectRetain();
  v13 = sub_22887F3B0();
  MEMORY[0x22AAC0340](v13);

  v82 = *(&v94 + 1);
  sub_22887F260();
  *&v94 = MEMORY[0x277D84F90];
  sub_2287E710C(&qword_2813CF510, MEMORY[0x277D85230]);
  v14 = MEMORY[0x277D85230];
  sub_2287E70A8(0, &qword_2813CF590, 255, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2287E7154(&qword_2813CF580, &qword_2813CF590, v14);
  v15 = a1;
  v16 = v89;
  sub_22887F820();
  (v90[13])(v88, *MEMORY[0x277D85260], v91);
  v6[5] = sub_22887F710();
  type metadata accessor for InputSignalObservationManager();
  swift_allocObject();
  swift_unknownObjectRetain();
  v17 = v83;

  v18 = InputSignalObservationManager.init(context:providers:)(v15, v16, v17);
  v19 = v84;
  v20 = v85;
  v6[7] = v18;
  v82 = v6;
  v6[4] = v20;
  v21 = *(v18 + 16);
  v88 = *(v19 + 16);
  v86 = v15;
  v81 = v21;
  if (v88)
  {
    v87 = v19 + 32;

    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2287E766C(v87 + 40 * v22, &v94);
      v25 = *(&v95 + 1);
      v26 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
      v27 = (*(v26 + 16))(v15, v16, v25, v26);
      v28 = *(v27 + 16);
      if (v28)
      {
        v90 = v24;
        v93[0] = v23;
        sub_22881D9C4(0, v28, 0);
        v29 = v93[0];
        v30 = 32;
        do
        {
          v91 = *(v27 + v30);
          v31 = *(&v95 + 1);
          v32 = v96;
          __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
          v33 = (*(v32 + 8))(v31, v32);
          v35 = v34;
          v93[0] = v29;
          v37 = *(v29 + 16);
          v36 = *(v29 + 24);
          swift_unknownObjectRetain();
          if (v37 >= v36 >> 1)
          {
            sub_22881D9C4((v36 > 1), v37 + 1, 1);
            v29 = v93[0];
          }

          *(v29 + 16) = v37 + 1;
          v38 = v29 + 32 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          *(v38 + 48) = v91;
          v30 += 16;
          --v28;
        }

        while (v28);

        v15 = v86;
        v24 = v90;
        v23 = MEMORY[0x277D84F90];
      }

      else
      {

        v29 = v23;
      }

      __swift_destroy_boxed_opaque_existential_1(&v94);
      v39 = *(v29 + 16);
      v40 = v24[2];
      v41 = &v40[v39];
      v16 = v89;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v41 <= v24[3] >> 1)
      {
        if (!*(v29 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v40 <= v41)
        {
          v43 = &v40[v39];
        }

        else
        {
          v43 = v40;
        }

        v24 = sub_22882FDA0(isUniquelyReferenced_nonNull_native, v43, 1, v24);
        if (!*(v29 + 16))
        {
LABEL_3:

          if (v39)
          {
            goto LABEL_38;
          }

          goto LABEL_4;
        }
      }

      v44 = v24[2];
      if ((v24[3] >> 1) - v44 < v39)
      {
        goto LABEL_39;
      }

      v40 = &v24[4 * v44];
      sub_228835C1C(0, &qword_2813CF650, &unk_2813CF800);
      swift_arrayInitWithCopy();

      if (v39)
      {
        v45 = v24[2];
        v46 = __OFADD__(v45, v39);
        v47 = v45 + v39;
        if (v46)
        {
          goto LABEL_40;
        }

        v24[2] = v47;
      }

LABEL_4:
      if (++v22 == v88)
      {
        goto LABEL_26;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_26:
  v48 = MEMORY[0x277D84F98];
  v100 = MEMORY[0x277D84F98];
  v49 = v24[2];
  v90 = v24;
  if (v49)
  {
    v50 = 0;
    v40 = 0;
    v51 = v24 + 6;
    v24 = v82;
    v52 = v81;
    while (v50 < v90[2])
    {
      v53 = *(v51 - 2);
      v54 = *(v51 - 1);
      v91 = *v51;
      *&v94 = v53;
      *(&v94 + 1) = v54;
      v95 = v91;

      swift_unknownObjectRetain();
      sub_228829888(&v100, &v94, v15, v16, v52);
      swift_unknownObjectRelease();

      ++v50;
      v51 += 2;
      if (v49 == v50)
      {
        v48 = v100;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v24 = v82;
LABEL_32:
    v55 = MEMORY[0x277D84F90];
    v56 = sub_228809188(MEMORY[0x277D84F90]);
    v57 = sub_2288092BC(v55);
    v94 = 0uLL;
    *&v95 = v48;
    *(&v95 + 1) = v56;
    *&v96 = MEMORY[0x277D84FA0];
    *(&v96 + 1) = v57;
    LOWORD(v97) = 0;
    BYTE2(v97) = 0;
    *(&v97 + 1) = MEMORY[0x277D84FA0];
    sub_228835C90();
    v99 = 0;
    v98 = 0uLL;
    v58 = swift_allocObject();
    *(v58 + 104) = 0;

    sub_228835CF0(&v94, v93);

    v59 = v97;
    *(v58 + 48) = v96;
    *(v58 + 64) = v59;
    *(v58 + 80) = v98;
    *(v58 + 96) = v99;
    v60 = v95;
    *(v58 + 16) = v94;
    *(v58 + 32) = v60;
    sub_228835D28(&v94);
    v24[6] = v58;
    v61 = v24[3];
    ObjectType = swift_getObjectType();
    v63 = v78;
    (*(v61 + 40))(ObjectType, v61);
    swift_retain_n();

    v64 = sub_22887F160();
    v65 = sub_22887F6B0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v93[0] = v67;
      *v66 = 136315650;
      v68 = v24[2];
      swift_getObjectType();
      v92 = v68;
      swift_unknownObjectRetain();
      v69 = sub_22887F3B0();
      v71 = sub_2287E64D8(v69, v70, v93);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2048;
      v72 = *(*(v24[7] + 16) + 16);

      *(v66 + 14) = v72;

      *(v66 + 22) = 2048;
      v73 = *(v48 + 16);

      *(v66 + 24) = v73;

      _os_log_impl(&dword_2287E4000, v64, v65, "[%s]: Initialized with %ld input signals and %ld planners", v66, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x22AAC1440](v67, -1, -1);
      MEMORY[0x22AAC1440](v66, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v74 = (*(v79 + 8))(v63, v80);
    v75 = *(v24[7] + 32);
    MEMORY[0x28223BE20](v74);
    *(&v77 - 2) = v24;
    *(&v77 - 1) = &protocol witness table for Orchestrator;

    os_unfair_lock_lock(v75 + 8);
    sub_228835D58(&v75[4]);
    os_unfair_lock_unlock(v75 + 8);

    swift_unknownObjectRelease();

    return v24;
  }

  return result;
}

uint64_t sub_228829888(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a4;
  v96 = a3;
  v8 = sub_22887F180();
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v91 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v85 - v12;
  MEMORY[0x28223BE20](v11);
  v94 = &v85 - v13;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 24);

  v99 = ObjectType;
  v93 = v19;
  v19(&v100, ObjectType, v17);
  v103 = v14;
  v104 = v15;
  v105 = v100;
  v106 = v101;
  v92 = a1;
  if (*(*a1 + 16) && (sub_228819DA4(&v103), (v20 & 1) != 0))
  {
    v21 = v96;
    swift_getObjectType();
    v22 = v91;
    (*(v95 + 40))();

    swift_unknownObjectRetain();
    sub_2287F56D8(&v103, &v100);
    swift_unknownObjectRetain();
    v23 = sub_22887F160();
    v24 = sub_22887F6A0();
    swift_unknownObjectRelease();
    sub_228820738(&v103);
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v107 = v26;
      *v25 = 136315906;
      *&v100 = v21;
      swift_unknownObjectRetain();
      v27 = sub_22887F3B0();
      v29 = sub_2287E64D8(v27, v28, &v107);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = v103;
      v31 = v104;

      v32 = sub_2287E64D8(v30, v31, &v107);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      v100 = v105;
      v101 = v106;
      v33 = *(&v106 + 1);
      v34 = v106;
      sub_2288373F0(&v100, &v102);

      sub_228820738(&v103);
      if (!v33)
      {
        v33 = *(&v100 + 1);
        v34 = v100;
      }

      sub_22883744C(&v100);
      v35 = sub_2287E64D8(v34, v33, &v107);

      *(v25 + 24) = v35;
      *(v25 + 32) = 2080;
      *&v102 = v16;
      swift_unknownObjectRetain();
      v36 = sub_22887F3B0();
      v38 = sub_2287E64D8(v36, v37, &v107);

      *(v25 + 34) = v38;
      _os_log_impl(&dword_2287E4000, v23, v24, "[%s]: Executor provider %s returned multiple executors with the same identifier (%s). Ignoring %s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v26, -1, -1);
      MEMORY[0x22AAC1440](v25, -1, -1);
    }

    else
    {
      sub_228820738(&v103);
    }

    return (*(v97 + 8))(v22, v98);
  }

  else
  {
    *&v100 = a5;
    v39 = v99;
    v40 = (*(v17 + 32))(&v100, v99, v17);
    if (!v40)
    {
      return sub_228820738(&v103);
    }

    v41 = v40;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v89 = v16;
    v43 = AssociatedConformanceWitness;
    v45 = AssociatedConformanceWitness + 24;
    v44 = *(AssociatedConformanceWitness + 24);
    v46 = swift_checkMetadataState();
    v91 = v41;
    v85 = v46;
    v88 = v43;
    v87 = v45;
    v86 = v44;
    v44(&v100, v46, v43);
    v47 = v100;
    v93(&v102, v39, v17);
    if (v47 == v102)
    {

      v48 = v96;
    }

    else
    {
      v50 = sub_22887FBF0();

      v48 = v96;
      if ((v50 & 1) == 0)
      {
        swift_getObjectType();
        v63 = v90;
        (*(v95 + 40))();
        swift_unknownObjectRetain();
        sub_2287F56D8(&v103, &v100);
        swift_unknownObjectRetain();
        v64 = sub_22887F160();
        v65 = sub_22887F6A0();
        swift_unknownObjectRelease();
        sub_228820738(&v103);
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v102 = v67;
          *v66 = 136315650;
          *&v100 = v48;
          swift_unknownObjectRetain();
          v68 = sub_22887F3B0();
          v70 = sub_2287E64D8(v68, v69, &v102);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2080;
          v72 = *(&v105 + 1);
          v71 = v105;
          v74 = *(&v106 + 1);
          v73 = v106;
          *&v100 = 60;
          *(&v100 + 1) = 0xE100000000000000;
          MEMORY[0x22AAC0340](v103, v104);
          MEMORY[0x22AAC0340](8250, 0xE200000000000000);
          if (v74)
          {
            v72 = v74;
          }

          else
          {

            v73 = v71;
          }

          MEMORY[0x22AAC0340](v73, v72);

          MEMORY[0x22AAC0340](62, 0xE100000000000000);
          sub_228820738(&v103);
          v81 = sub_2287E64D8(v100, *(&v100 + 1), &v102);

          *(v66 + 14) = v81;
          *(v66 + 22) = 2080;
          v86(&v100, v85, v88);
          v82 = *(&v101 + 1);
          if (*(&v101 + 1))
          {
            v83 = v101;
          }

          else
          {
            v83 = v100;
          }

          v84 = sub_2287E64D8(v83, v82, &v102);

          *(v66 + 24) = v84;
          _os_log_impl(&dword_2287E4000, v64, v65, "[%s]: Executor %s returned a planner with a differing identifier (%s)", v66, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AAC1440](v67, -1, -1);
          MEMORY[0x22AAC1440](v66, -1, -1);
          swift_unknownObjectRelease();

          return (*(v97 + 8))(v90, v98);
        }

        else
        {
          sub_228820738(&v103);

          swift_unknownObjectRelease();
          return (*(v97 + 8))(v63, v98);
        }
      }
    }

    swift_getObjectType();
    v51 = v94;
    (*(v95 + 40))();
    swift_unknownObjectRetain();
    sub_2287F56D8(&v103, &v100);
    v52 = sub_22887F160();
    v53 = sub_22887F6B0();
    swift_unknownObjectRelease();
    sub_228820738(&v103);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v107 = v99;
      *v54 = 136315394;
      *&v100 = v48;
      swift_unknownObjectRetain();
      v55 = sub_22887F3B0();
      v57 = sub_2287E64D8(v55, v56, &v107);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      v58 = v103;
      v59 = v104;
      v60 = *(&v105 + 1);
      v96 = v105;
      v62 = *(&v106 + 1);
      v61 = v106;
      *&v102 = 60;
      *(&v102 + 1) = 0xE100000000000000;
      sub_2287F56D8(&v103, &v100);
      MEMORY[0x22AAC0340](v58, v59);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      if (v62)
      {
        v60 = v62;
      }

      else
      {

        v61 = v96;
      }

      MEMORY[0x22AAC0340](v61, v60);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);
      sub_228820738(&v103);
      v75 = sub_2287E64D8(v102, *(&v102 + 1), &v107);

      *(v54 + 14) = v75;
      _os_log_impl(&dword_2287E4000, v52, v53, "[%s]: Received executor/planner %s", v54, 0x16u);
      v76 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v76, -1, -1);
      MEMORY[0x22AAC1440](v54, -1, -1);

      (*(v97 + 8))(v94, v98);
    }

    else
    {

      (*(v97 + 8))(v51, v98);
    }

    v77 = v91;
    v78 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v100 = *v78;
    v80 = swift_getObjectType();
    sub_228836150(v77, &v103, isUniquelyReferenced_nonNull_native, &v100, v80, v88);
    result = sub_228820738(&v103);
    *v78 = v100;
  }

  return result;
}

uint64_t Orchestrator.deinit()
{
  v1 = *(*(v0 + 56) + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22880FA28((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t Orchestrator.__deallocating_deinit()
{
  Orchestrator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22882A454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  if (*(*(a1 + 16) + 16) && (sub_228819DA4(a2), (v10 & 1) != 0))
  {
    sub_2288376E8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_2287F56D8(a2, &v14);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 16);
    ObjectType = swift_getObjectType();
    sub_228836150(a3, a2, isUniquelyReferenced_nonNull_native, &v14, ObjectType, a4);
    result = sub_228820738(a2);
    *(a1 + 16) = v14;
    if (*(a1 + 48) == 1)
    {
      sub_2287F56D8(a2, &v14);
      sub_228877314(&v14, a2);

      *a5 = 1;
    }

    else
    {
      *a5 = 0;
    }
  }

  return result;
}

uint64_t sub_22882A5A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = a1 + 64;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    for (i = 0; v5; result = )
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v9 << 6);
      v12 = *(a1 + 56);
      v13 = (*(a1 + 48) + 48 * v11);
      v15 = v13[1];
      v14 = v13[2];
      v25 = *v13;
      v26 = v15;
      v27 = v14;
      v22 = *(v12 + 16 * v11);
      ObjectType = swift_getObjectType();
      v16 = swift_allocObject();
      *(v16 + 16) = v20;
      v17 = v26;
      *(v16 + 24) = v25;
      *(v16 + 40) = v17;
      *(v16 + 56) = v27;
      *(v16 + 72) = v22;
      v18 = *(*(&v22 + 1) + 32);
      swift_unknownObjectRetain_n();
      sub_2287F56D8(&v25, v24);

      v18(sub_228837634, v16, ObjectType, *(&v22 + 1));
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
      }

      v5 = *(v2 + 8 * v9);
      ++i;
      if (v5)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = *(v1 + 48);
    os_unfair_lock_lock(v19 + 26);
    sub_228837644(&v19[4], &v25);
    os_unfair_lock_unlock(v19 + 26);
    (v25)();
  }

  return result;
}

uint64_t sub_22882A7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + 16);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = *(v4 + 56);
      v14 = (*(v4 + 48) + 48 * v12);
      v16 = v14[1];
      v15 = v14[2];
      v24[0] = *v14;
      v24[1] = v16;
      v24[2] = v15;
      if (*(v13 + 16 * v12) == a2)
      {
        break;
      }

      v7 &= v7 - 1;
      sub_2287F56D8(v24, v23);

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_2287F56D8(v24, v23);

    sub_2288488FC(v24);
    swift_unknownObjectRelease();
    sub_2288489C4(v24);

    sub_22887B9F4(v24, v23);
    sub_228820738(v24);
    sub_2288375E4(v23[0], v23[1]);
    v17 = nullsub_1;
    if (*(a1 + 48) == 1)
    {
      v18 = sub_22882A9E8(a1);
      v20 = v19;
      result = swift_allocObject();
      *(result + 16) = v18;
      *(result + 24) = v20;
      v17 = sub_2287FEDA4;
    }

    else
    {
      result = 0;
    }

LABEL_12:
    *a3 = v17;
    a3[1] = result;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        result = 0;
        v17 = nullsub_1;
        goto LABEL_12;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_22882A9E8(uint64_t a1))()
{
  v2 = v1;
  v4 = sub_22887F180();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_22887E164(v8);
  v10 = sub_2288166F0(v9, *(a1 + 32));

  v11 = nullsub_1;
  if (v10)
  {
    if (*(a1 + 72))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v13 = *(a1 + 64);
      v15 = *(v1 + 16);
      v14 = *(v1 + 24);
      swift_getObjectType();
      (*(v14 + 40))();

      v16 = sub_22887F160();
      v17 = sub_22887F6B0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v33 = v5;
        v19 = v18;
        v32 = swift_slowAlloc();
        v34 = v15;
        v35[0] = v32;
        *v19 = 136315394;
        swift_unknownObjectRetain();
        v20 = sub_22887F3B0();
        v22 = sub_2287E64D8(v20, v21, v35);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2048;
        *(v19 + 14) = Current - v13;
        _os_log_impl(&dword_2287E4000, v16, v17, "[%s]: Work criteria ready after %fs.", v19, 0x16u);
        v23 = v32;
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x22AAC1440](v23, -1, -1);
        MEMORY[0x22AAC1440](v19, -1, -1);

        (*(v33 + 8))(v7, v4);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      *(a1 + 64) = CFAbsoluteTimeGetCurrent();
    }

    v25 = sub_228828824(v24);

    v27 = *(*(v2 + 56) + 24);
    MEMORY[0x28223BE20](v26);
    *(&v31 - 2) = v28;
    *(&v31 - 1) = v25;
    os_unfair_lock_lock((v27 + 24));
    sub_228837860((v27 + 16), v35);
    os_unfair_lock_unlock((v27 + 24));

    v29 = v35[0];

    *(a1 + 40) = v29;
    v11 = nullsub_1;
    if (!*(v29 + 16))
    {
      return sub_22882B11C(a1);
    }
  }

  return v11;
}

uint64_t sub_22882AD2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22887F180();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 49) & 1) == 0)
  {
    v10 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(ObjectType, v10);

    v12 = sub_22887F160();
    v13 = sub_22887F6B0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = a1;
      v15 = v14;
      v16 = swift_slowAlloc();
      v24 = v2;
      v25 = a2;
      v17 = v16;
      v26 = v16;
      *v15 = 136315138;

      v18 = sub_22887F3B0();
      v20 = sub_2287E64D8(v18, v19, &v26);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2287E4000, v12, v13, "%s: Pausing.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x22AAC1440](v17, -1, -1);
      v21 = v15;
      a1 = v23;
      MEMORY[0x22AAC1440](v21, -1, -1);
    }

    result = (*(v6 + 8))(v9, v5);
    *(a1 + 49) = 1;
  }

  return result;
}

uint64_t Orchestrator.paused.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 65);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

Swift::Void __swiftcall Orchestrator.test_signalBarrier()()
{
  v1 = *(v0 + 40);
  v3[4] = nullsub_1;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_2288006C0;
  v3[3] = &block_descriptor_6;
  v2 = _Block_copy(v3);

  dispatch_async_and_wait(v1, v2);
  _Block_release(v2);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }
}

uint64_t sub_22882B06C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(result + 48))
  {
    v5 = 0;
  }

  else
  {
    *(result + 48) = 1;
    v8 = result;
    *(result + 64) = CFAbsoluteTimeGetCurrent();
    v9 = v8[9];
    sub_2287F8E74(a2);
    sub_2287E75A4(v9);
    v8[9] = a2;
    v8[10] = a3;
    v5 = v8[2];

    v11 = sub_22887E164(v10);
    sub_228859734(v11);
  }

  *a4 = v5;
  return result;
}

void (*sub_22882B11C(uint64_t a1))()
{
  v2 = v1;
  v4 = sub_22887F180();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = nullsub_1;
  if ((*(a1 + 50) & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = *(a1 + 64);
    v12 = *(v1 + 16);
    v11 = *(v1 + 24);
    swift_getObjectType();
    (*(v11 + 40))();

    v13 = sub_22887F160();
    v14 = sub_22887F6B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v28 = v12;
      v29 = v17;
      *v16 = 136315394;
      swift_unknownObjectRetain();
      v18 = sub_22887F3B0();
      v20 = sub_2287E64D8(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = Current - v10;
      _os_log_impl(&dword_2287E4000, v13, v14, "[%s]: Initial registration complete after %fs.", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x22AAC1440](v17, -1, -1);
      MEMORY[0x22AAC1440](v16, -1, -1);

      (*(v5 + 8))(v7, v27);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    *(a1 + 50) = 1;
    v21 = sub_2287EB4A4(a1);
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v24 = swift_allocObject();
    v24[2] = v2;
    v24[3] = v21;
    v24[4] = v22;
    v24[5] = v23;

    return sub_228836144;
  }

  return v8;
}

uint64_t sub_22882B3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  os_unfair_lock_lock(v2 + 26);
  sub_22883765C(&v2[4]);
  os_unfair_lock_unlock(v2 + 26);
  os_unfair_lock_lock(v2 + 26);
  sub_228837828(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 26);
  v4();
}

uint64_t sub_22882B45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v8 = *(a3 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v26 = MEMORY[0x277D84F90];
    sub_22887F960();
    v13 = *(a4 + 16);
    v21 = *(a4 + 24);
    type metadata accessor for WorkCriteriaRecord();
    v14 = (a3 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = *(a2 + 16);
      v25[0] = *a2;
      v25[1] = v17;
      v25[2] = *(a2 + 32);
      v24[0] = v15;
      v24[1] = v16;
      swift_allocObject();
      sub_2287F56D8(a2, v23);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      WorkCriteriaRecord.init(context:executorIdentifier:planner:criteria:)(v13, v21, v25, a5, a6, v24);
      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      v14 += 2;
      --v8;
    }

    while (v8);
    v9 = v26;
    v7 = a1;
  }

  sub_2287F56D8(a2, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[0] = *(v7 + 24);
  sub_228849D90(v9, a2, isUniquelyReferenced_nonNull_native);
  result = sub_228820738(a2);
  *(v7 + 24) = *&v25[0];
  return result;
}

uint64_t sub_22882B5F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v10 = v179;
  v11 = sub_22887F180();
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v17 = &v154 - v16;
  v18 = *(a1 + 8);
  v168 = *a1;
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  v167 = *(a1 + 32);
  v21 = *(a1 + 40);
  v164 = a4;
  v163 = a3;
  if (v21)
  {
    v160 = v14;
    v161 = v13;
    v165 = v19;
    if (v21 == 1)
    {
      v22 = *(v166 + 16);
      v23 = *(v166 + 24);
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 40);
      v159 = v22;
      v158 = ObjectType;
      v25(ObjectType, v23);

      v26 = v168;
      v27 = v17;
      v28 = v167;
      sub_2288362F8(v168, v18, v20, v19, v167, 1);

      v29 = a2;
      v30 = v20;
      v31 = sub_22887F160();
      v32 = sub_22887F6B0();

      v33 = v28;
      v34 = v31;
      sub_228836398(v26, v18, v30, v19, v33, 1);
      LODWORD(v166) = v32;
      if (os_log_type_enabled(v31, v32))
      {
        v157 = v27;
        v162 = v18;
        v155 = v30;
        v35 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        *&v180 = v156;
        *v35 = 136315650;
        *&v170 = v159;
        swift_unknownObjectRetain();
        v36 = sub_22887F3B0();
        v38 = sub_2287E64D8(v36, v37, &v180);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        v40 = v29[4];
        v39 = v29[5];
        v41 = v29[7];
        v159 = v29[6];
        v43 = v29[8];
        v42 = v29[9];
        *&v170 = 60;
        *(&v170 + 1) = 0xE100000000000000;

        MEMORY[0x22AAC0340](v40, v39);
        MEMORY[0x22AAC0340](8250, 0xE200000000000000);
        a2 = v29;
        if (v42)
        {
          v44 = v42;
        }

        else
        {

          v43 = v159;
          v44 = v41;
        }

        v117 = v157;

        MEMORY[0x22AAC0340](v43, v44);

        MEMORY[0x22AAC0340](62, 0xE100000000000000);

        v118 = sub_2287E64D8(v170, *(&v170 + 1), &v180);

        *(v35 + 14) = v118;
        *(v35 + 22) = 2080;
        v19 = v165;
        if (v165)
        {
          v85 = v155;
          v119 = v155;
          v120 = v165;
        }

        else
        {
          v120 = v162;

          v119 = v168;
          v85 = v155;
        }

        v121 = sub_2287E64D8(v119, v120, &v180);

        *(v35 + 24) = v121;
        _os_log_impl(&dword_2287E4000, v34, v166, "[%s]: %s Removing criteria %s.", v35, 0x20u);
        v122 = v156;
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v122, -1, -1);
        MEMORY[0x22AAC1440](v35, -1, -1);

        v160[1](v117, v161);
        v18 = v162;
      }

      else
      {

        v160[1](v27, v161);
        v85 = v30;
        a2 = v29;
      }

      v123 = *(a2 + 3);
      v170 = *(a2 + 2);
      v171 = v123;
      v172 = *(a2 + 4);
      v125 = sub_22882C8A8(&v180, &v170);
      a4 = v164;
      if (!*v124)
      {
        result = (v125)(&v180, 0);
        goto LABEL_66;
      }

      v53 = v124;

      v126 = v168;
      v127 = v167;
      sub_2288362F8(v168, v18, v85, v19, v167, 1);
      v10 = sub_228836B00(v53, a2, v126, v18);
      sub_228836398(v126, v18, v85, v19, v127, 1);

      if (*v53 >> 62)
      {
        v128 = sub_22887FA20();
        if (v128 >= v10)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v128 = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v128 >= v10)
        {
LABEL_60:
          sub_2288727E4(v10, v128);
          result = (v125)(&v180, 0);
          goto LABEL_66;
        }
      }

      __break(1u);
    }

    else
    {
      v154 = v15;
      v49 = *(a2 + 3);
      v180 = *(a2 + 2);
      v181 = v49;
      v182 = *(a2 + 4);
      v50 = a3[3];
      if (!*(v50 + 16))
      {
        goto LABEL_48;
      }

      v51 = sub_228819DA4(&v180);
      if ((v52 & 1) == 0)
      {
        goto LABEL_48;
      }

      v53 = *(*(v50 + 56) + 8 * v51);
      v155 = v20;
      v162 = v18;
      if (!(v53 >> 62))
      {
        v18 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
        v20 = *(&v180 + 1);
        v54 = v180;
        v158 = *(&v181 + 1);
        v159 = v181;

        if (v18)
        {
          v55 = 0;
          v157 = v53 & 0xC000000000000001;
          v156 = v53 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v157)
            {
              v56 = MEMORY[0x22AAC07F0](v55, v53);
              v10 = (v55 + 1);
              if (__OFADD__(v55, 1))
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else
            {
              if (v55 >= *(v156 + 16))
              {
                __break(1u);
                goto LABEL_73;
              }

              v56 = v53[v55 + 4];

              v10 = (v55 + 1);
              if (__OFADD__(v55, 1))
              {
                goto LABEL_35;
              }
            }

            v58 = v56[6];
            v57 = v56[7];
            v59 = v56[4] == v54 && v56[5] == v20;
            if (v59 || (sub_22887FBF0() & 1) != 0)
            {
              v60 = v58 == v159 && v57 == v158;
              if (v60 || (sub_22887FBF0()) && (v56[10] == v168 && v162 == v56[11] || (sub_22887FBF0()))
              {
                break;
              }
            }

            ++v55;
            v19 = v165;
            if (v10 == v18)
            {
              goto LABEL_47;
            }
          }

          v134 = v56[17];
          MEMORY[0x28223BE20](v133);
          *(&v154 - 2) = v167;
          os_unfair_lock_lock(v134 + 17);
          sub_2288364B4(&v134[4]);
          os_unfair_lock_unlock(v134 + 17);
          v136 = *v163;
          if (!*v163)
          {

            v140 = v164;
            v164[12] = 0;
            v140[4] = 0u;
            v140[5] = 0u;
            v140[2] = 0u;
            v140[3] = 0u;
            *v140 = 0u;
            v140[1] = 0u;
            return result;
          }

          v137 = v56[17];
          MEMORY[0x28223BE20](v135);
          *(&v154 - 4) = v56;
          *(&v154 - 3) = a5;
          *(&v154 - 2) = v136;

          os_unfair_lock_lock((v137 + 68));
          sub_228837840((v137 + 16), &v170);
          os_unfair_lock_unlock((v137 + 68));

          v138 = v170;
          if (v170 < 3)
          {
            v139 = v164;
            v164[12] = 0;
            v139[4] = 0u;
            v139[5] = 0u;
            v139[2] = 0u;
            v139[3] = 0u;
            *v139 = 0u;
            v139[1] = 0u;
            return result;
          }

          v141 = v177;
          v142 = v175;
          v167 = v176;
          v168 = &v154;
          v143 = v174;
          v144 = v173;
          v145 = *(&v172 + 1);
          v165 = v172;
          v146 = *(&v171 + 1);
          v147 = v171;
          v148 = *(&v170 + 1);
          v149 = swift_allocObject();
          swift_weakInit();
          v150 = swift_allocObject();
          *(v150 + 16) = v149;
          *(v150 + 24) = v138;
          *(v150 + 32) = v148;
          *(v150 + 40) = v147;
          v151 = v165;
          *(v150 + 48) = v146;
          *(v150 + 56) = v151;
          *(v150 + 64) = v145;
          *(v150 + 72) = v144;
          *(v150 + 80) = v143;
          *(v150 + 88) = v142;
          v152 = v167;
          *(v150 + 96) = v167;
          *(v150 + 104) = v141;
          *(v150 + 112) = v178;
          *(v150 + 128) = a2;
          v153 = v164;
          *v164 = v138;
          v153[1] = v148;
          v153[2] = v147;
          v153[3] = v146;
          v153[4] = v151;
          v153[5] = v145;
          v153[6] = v144;
          v153[7] = v143;
          v153[8] = v142;
          v153[9] = v152;
          v153[10] = v141;
          v153[11] = sub_2287FBEDC;
          v153[12] = v150;

          swift_unknownObjectRetain();

LABEL_46:
        }

LABEL_47:

        a4 = v164;
        v20 = v155;
        v18 = v162;
LABEL_48:
        v98 = *(v166 + 16);
        v99 = *(v166 + 24);
        v100 = swift_getObjectType();
        v101 = *(v99 + 40);
        v102 = v154;
        v167 = v100;
        v101(v100, v99);

        v103 = sub_22887F160();
        v104 = sub_22887F690();

        if (os_log_type_enabled(v103, v104))
        {
          LODWORD(v166) = v104;
          v162 = v18;
          v155 = v20;
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          *&v179[0] = v106;
          *v105 = 136315650;
          *&v170 = v98;
          swift_unknownObjectRetain();
          v107 = sub_22887F3B0();
          v109 = sub_2287E64D8(v107, v108, v179);

          *(v105 + 4) = v109;
          *(v105 + 12) = 2080;
          v111 = a2[4];
          v110 = a2[5];
          v113 = a2[6];
          v112 = a2[7];
          v115 = a2[8];
          v114 = a2[9];
          *&v170 = 60;
          *(&v170 + 1) = 0xE100000000000000;

          MEMORY[0x22AAC0340](v111, v110);
          MEMORY[0x22AAC0340](8250, 0xE200000000000000);
          if (v114)
          {
            v116 = v114;
          }

          else
          {

            v115 = v113;
            v116 = v112;
          }

          v129 = v155;

          MEMORY[0x22AAC0340](v115, v116);

          MEMORY[0x22AAC0340](62, 0xE100000000000000);

          v130 = sub_2287E64D8(v170, *(&v170 + 1), v179);

          *(v105 + 14) = v130;
          *(v105 + 22) = 2080;
          v131 = v165;
          if (!v165)
          {
            v131 = v162;

            v129 = v168;
          }

          v132 = sub_2287E64D8(v129, v131, v179);

          *(v105 + 24) = v132;
          _os_log_impl(&dword_2287E4000, v103, v166, "[%s]: %s requested criteria update for non-existent criteria %s; ignoring.", v105, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AAC1440](v106, -1, -1);
          MEMORY[0x22AAC1440](v105, -1, -1);

          result = (v160[1])(v154, v161);
          a4 = v164;
        }

        else
        {

          result = (v160[1])(v102, v161);
        }

        goto LABEL_66;
      }
    }

    v18 = sub_22887FA20();
    goto LABEL_13;
  }

  v45 = *(a2 + 3);
  v180 = *(a2 + 2);
  v181 = v45;
  v182 = *(a2 + 4);
  v46 = a3[3];
  if (*(v46 + 16) && (v47 = sub_228819DA4(&v180), (v48 & 1) != 0))
  {
    v169 = *(*(v46 + 56) + 8 * v47);
  }

  else
  {
LABEL_36:
    v169 = MEMORY[0x277D84F90];
  }

  v61 = v168;
  v62 = v167;
  sub_2288362F8(v168, v18, v20, v19, v167, 0);
  v10 = 0;
  v55 = sub_228836668(&v169, a2, v61);
  sub_228836398(v61, v18, v20, v19, v62, 0);

  if (v169 >> 62)
  {
LABEL_73:
    v63 = sub_22887FA20();
    if (v63 >= v55)
    {
LABEL_39:
      v160 = v10;
      sub_2288727E4(v55, v63);
      v64 = *(v166 + 16);
      v165 = *(v166 + 24);
      v65 = a2[5];
      v66 = v19;
      v67 = a2[6];
      v68 = a2[7];
      v69 = v20;
      v70 = a2[8];
      v71 = a2[9];
      *&v170 = a2[4];
      *(&v170 + 1) = v65;
      *&v171 = v67;
      *(&v171 + 1) = v68;
      *&v172 = v70;
      *(&v172 + 1) = v71;
      v72 = a2[14];
      v161 = a2[15];
      v73 = v168;
      *&v179[0] = v168;
      *(&v179[0] + 1) = v18;
      type metadata accessor for WorkCriteriaRecord();
      swift_allocObject();
      sub_2288362F8(v73, v18, v69, v66, v167, 0);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      a2 = WorkCriteriaRecord.init(context:executorIdentifier:planner:criteria:)(v64, v165, &v170, v72, v161, v179);

      MEMORY[0x22AAC03E0](v74);
      if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_40;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v63 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v63 >= v55)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_75:
  sub_22887F4E0();
LABEL_40:
  sub_22887F520();
  v75 = v169;
  v77 = *(a2 + 3);
  v76 = *(a2 + 4);
  v179[0] = *(a2 + 2);
  v179[1] = v77;
  v179[2] = v76;
  sub_2287F56D8(v179, &v170);
  v78 = v163;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v170 = v78[3];
  sub_228849D90(v75, v179, isUniquelyReferenced_nonNull_native);
  v80 = sub_228820738(v179);
  v78[3] = v170;
  v81 = *v78;
  a4 = v164;
  if (*v78)
  {
    v82 = a2[17];
    MEMORY[0x28223BE20](v80);
    *(&v154 - 4) = a2;
    *(&v154 - 3) = a5;
    *(&v154 - 2) = v81;

    os_unfair_lock_lock((v82 + 68));
    sub_228837840((v82 + 16), &v170);
    os_unfair_lock_unlock((v82 + 68));

    v83 = v170;
    if (v170 < 3)
    {

      a4[12] = 0;
      *(a4 + 4) = 0u;
      *(a4 + 5) = 0u;
      *(a4 + 2) = 0u;
      *(a4 + 3) = 0u;
      *a4 = 0u;
      *(a4 + 1) = 0u;
      return result;
    }

    v86 = v177;
    v87 = v175;
    v167 = v176;
    v88 = v174;
    v168 = &v154;
    v89 = v173;
    v165 = *(&v172 + 1);
    v163 = v172;
    v90 = *(&v171 + 1);
    v91 = v171;
    v92 = *(&v170 + 1);
    v93 = swift_allocObject();
    swift_weakInit();
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v83;
    *(v94 + 32) = v92;
    *(v94 + 40) = v91;
    v95 = v163;
    *(v94 + 48) = v90;
    *(v94 + 56) = v95;
    v96 = v165;
    *(v94 + 64) = v165;
    *(v94 + 72) = v89;
    *(v94 + 80) = v88;
    *(v94 + 88) = v87;
    v97 = v167;
    *(v94 + 96) = v167;
    *(v94 + 104) = v86;
    *(v94 + 112) = v178;
    *(v94 + 128) = a2;
    *a4 = v83;
    a4[1] = v92;
    a4[2] = v91;
    a4[3] = v90;
    a4[4] = v95;
    a4[5] = v96;
    a4[6] = v89;
    a4[7] = v88;
    a4[8] = v87;
    a4[9] = v97;
    a4[10] = v86;
    a4[11] = sub_2287FBEDC;
    a4[12] = v94;

    swift_unknownObjectRetain();
    goto LABEL_46;
  }

LABEL_66:
  a4[12] = 0;
  *(a4 + 4) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  return result;
}

void (*sub_22882C8A8(uint64_t **a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_228835068(v4, a2);
  return sub_22882C920;
}

void sub_22882C920(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_22882C96C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22887F240();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22887F270();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22887F250();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_not_owner((*(a1 + 48) + 104));
  v18._rawValue = a2;
  sub_2287EBD14(v18);
  if (a3)
  {
    sub_22880AA7C();
    (*(v15 + 104))(v17, *MEMORY[0x277D851C8], v14);

    v25 = sub_22887F720();
    (*(v15 + 8))(v17, v14);
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    aBlock[4] = sub_2287FED74;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2287E72C0;
    aBlock[3] = &block_descriptor_26;
    v20 = _Block_copy(aBlock);

    sub_22887F260();
    v29 = MEMORY[0x277D84F90];
    sub_2287E710C(qword_2813CF680, MEMORY[0x277D85198]);
    v21 = a3;
    v22 = MEMORY[0x277D85198];
    sub_2287E70A8(0, &qword_2813CF5C8, 255, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2287E7154(qword_2813CF5B0, &qword_2813CF5C8, v22);
    sub_22887F820();
    v23 = v25;
    MEMORY[0x22AAC0630](0, v13, v10, v20);
    _Block_release(v20);

    sub_2287E75A4(v21);
    (*(v28 + 8))(v10, v8);
    (*(v26 + 8))(v13, v27);
  }
}

uint64_t sub_22882CD58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_228828824(v4);

  v156 = sub_228872318(v5);
  sub_22882F7CC(&v156);
  v6 = v2;
  if (v2)
  {
    goto LABEL_119;
  }

  v153 = v156;
  v156 = 0;
  v157 = 0xE000000000000000;
  sub_22887F8A0();
  v160 = v156;
  v161 = v157;
  MEMORY[0x22AAC0340](0x6420746369727473, 0xEF20687061726769);
  swift_getObjectType();
  v7 = sub_22882E2F4();
  MEMORY[0x22AAC0340](v7);

  MEMORY[0x22AAC0340](0x6C202020200A7B20, 0xEF203D206C656261);
  v8 = sub_22882E2F4();
  MEMORY[0x22AAC0340](v8);

  MEMORY[0x22AAC0340](0xD000000000000047, 0x8000000228888F10);
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_228876C14(v10, 0);
    v12 = sub_22887CEE8(&v156, v11 + 4, v10, v9);
    v6 = v158;
    swift_bridgeObjectRetain_n();
    sub_2287EF604();
    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_114;
    }

    v6 = v2;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v156 = v11;
  v2 = v6;
  sub_22882F760(&v156);
  v144 = 0;

  v13 = v156;
  v14 = *(v156 + 16);
  if (v14)
  {
    v162 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v14, 0);
    v15 = v162;
    v16 = (v13 + 56);
    do
    {
      v17 = *v16;
      v156 = 0;
      v157 = 0xE000000000000000;

      sub_22887F8A0();

      v156 = 0x2020202020202020;
      v157 = 0xE800000000000000;
      if (!v17)
      {
      }

      v2 = sub_228837590();

      v18 = sub_22887F7F0();
      v20 = v19;

      MEMORY[0x22AAC0340](v18, v20);

      MEMORY[0x22AAC0340](34, 0xE100000000000000);
      MEMORY[0x22AAC0340](34, 0xE100000000000000);

      MEMORY[0x22AAC0340](0xD000000000000010, 0x8000000228888F60);

      v21 = v156;
      v22 = v157;
      v162 = v15;
      v6 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v6 >= v23 >> 1)
      {
        sub_2287F2304((v23 > 1), v6 + 1, 1);
        v15 = v162;
      }

      v16 += 4;
      *(v15 + 16) = v6 + 1;
      v24 = v15 + 16 * v6;
      *(v24 + 32) = v21;
      *(v24 + 40) = v22;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v156 = v15;
  sub_2287F0FBC(0, &qword_2813CF5A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v145 = sub_2287F2498();
  v25 = sub_22887F350();
  v27 = v26;

  MEMORY[0x22AAC0340](v25, v27);

  MEMORY[0x22AAC0340](0xD000000000000046, 0x8000000228888F80);
  LODWORD(v28) = v153 < 0 || (v153 & 0x4000000000000000) != 0;
  if (v28 == 1)
  {
    goto LABEL_112;
  }

  v29 = *(v153 + 16);
LABEL_20:
  v30 = MEMORY[0x277D84F90];
  v154 = v29;
  v143 = v28;
  v146 = v29 & ~(v29 >> 63);
  if (v29)
  {
    v156 = MEMORY[0x277D84F90];
    sub_22881D9E4(0, v29 & ~(v29 >> 63), 0);
    if ((v29 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v30 = v156;
      v32 = v153;
      do
      {
        if ((v153 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x22AAC07F0](v31, v32);
        }

        else
        {
          v33 = *(v32 + 8 * v31 + 32);
        }

        v35 = v33[4];
        v34 = v33[5];
        v36 = v33[7];
        v6 = v33[9];
        v148 = v33[8];
        v149 = v33[6];

        v156 = v30;
        v38 = *(v30 + 2);
        v37 = *(v30 + 3);
        if (v38 >= v37 >> 1)
        {
          sub_22881D9E4((v37 > 1), v38 + 1, 1);
          v32 = v153;
          v30 = v156;
        }

        ++v31;
        *(v30 + 2) = v38 + 1;
        v39 = &v30[48 * v38];
        *(v39 + 4) = v35;
        *(v39 + 5) = v34;
        *(v39 + 6) = v149;
        *(v39 + 7) = v36;
        *(v39 + 8) = v148;
        *(v39 + 9) = v6;
        v29 = v154;
      }

      while (v154 != v31);
      goto LABEL_29;
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_29:
  v40 = sub_22887D784(v30);

  v41 = *(v40 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v42 = sub_228876B6C(*(v40 + 16), 0);
    v43 = sub_22887CD44(&v156, v42 + 4, v41, v40);
    v2 = v156;
    v6 = v159;

    sub_2287EF604();
    if (v43 != v41)
    {
      goto LABEL_115;
    }
  }

  v156 = v42;
  v2 = v144;
  sub_22882F6DC(&v156, sub_228831778, sub_228831078);
  if (v144)
  {
LABEL_117:
    for (i = v2; ; i = v6)
    {

      __break(1u);
LABEL_119:
      ;
    }
  }

  v44 = v156;
  v45 = *(v156 + 16);
  if (v45)
  {
    v162 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v45, 0);
    v46 = (v44 + 72);
    v6 = v162;
    do
    {
      v150 = v6;
      v48 = *(v46 - 3);
      v47 = *(v46 - 2);
      v49 = *(v46 - 1);
      v50 = *v46;
      v156 = 0;
      v157 = 0xE000000000000000;

      sub_22887F8A0();

      v156 = 0x2020202020202020;
      v157 = 0xE800000000000000;

      MEMORY[0x22AAC0340](46, 0xE100000000000000);
      if (v50)
      {
        v51 = v50;
      }

      else
      {

        v49 = v48;
        v51 = v47;
      }

      MEMORY[0x22AAC0340](v49, v51);

      sub_228837590();
      v52 = sub_22887F7F0();
      v54 = v53;

      MEMORY[0x22AAC0340](v52, v54);

      MEMORY[0x22AAC0340](34, 0xE100000000000000);
      MEMORY[0x22AAC0340](34, 0xE100000000000000);

      MEMORY[0x22AAC0340](0x3D65706168735B20, 0xEE005D6573756F68);

      v55 = v156;
      v56 = v157;
      v6 = v150;
      v162 = v150;
      v58 = *(v150 + 16);
      v57 = *(v150 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_2287F2304((v57 > 1), v58 + 1, 1);
        v6 = v162;
      }

      v46 += 6;
      *(v6 + 16) = v58 + 1;
      v59 = v6 + 16 * v58;
      *(v59 + 32) = v55;
      *(v59 + 40) = v56;
      --v45;
    }

    while (v45);

    v29 = v154;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v156 = v6;
  v60 = sub_22887F350();
  v62 = v61;

  MEMORY[0x22AAC0340](v60, v62);

  MEMORY[0x22AAC0340](0xA7D202020200ALL, 0xE700000000000000);
  if (!v29)
  {
    v85 = MEMORY[0x277D84F90];
    v156 = MEMORY[0x277D84F90];
    v99 = sub_22887F350();
    v101 = v100;

    MEMORY[0x22AAC0340](v99, v101);

    MEMORY[0x22AAC0340](10, 0xE100000000000000);
    goto LABEL_65;
  }

  v162 = MEMORY[0x277D84F90];
  sub_2287F2304(0, v146, 0);
  if (v29 < 0)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v63 = 0;
  v64 = v162;
  v151 = v153 & 0xC000000000000001;
  do
  {
    if (v151)
    {
      v65 = MEMORY[0x22AAC07F0](v63, v153);
    }

    else
    {
      v65 = *(v153 + 8 * v63 + 32);
    }

    v156 = 0;
    v157 = 0xE000000000000000;
    sub_22887F8A0();

    v156 = 538976288;
    v157 = 0xE400000000000000;
    v66 = sub_22882E140();
    MEMORY[0x22AAC0340](v66);

    MEMORY[0x22AAC0340](0xD000000000000013, 0x8000000228888FD0);
    v67 = *(v65 + 136);
    os_unfair_lock_lock((v67 + 68));
    v68 = *(v67 + 16);

    os_unfair_lock_unlock((v67 + 68));
    v70 = v68[2];
    v69 = v68[3];
    v72 = v68[4];
    v71 = v68[5];

    if (!v71)
    {

      v72 = v70;
      v71 = v69;
    }

    MEMORY[0x22AAC0340](v72, v71);

    sub_228837590();
    v73 = sub_22887F7F0();
    v75 = v74;

    MEMORY[0x22AAC0340](v73, v75);

    MEMORY[0x22AAC0340](34, 0xE100000000000000);
    MEMORY[0x22AAC0340](34, 0xE100000000000000);

    MEMORY[0x22AAC0340](93, 0xE100000000000000);

    v76 = v156;
    v77 = v157;
    v162 = v64;
    v79 = *(v64 + 16);
    v78 = *(v64 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_2287F2304((v78 > 1), v79 + 1, 1);
      v64 = v162;
    }

    ++v63;
    *(v64 + 16) = v79 + 1;
    v80 = v64 + 16 * v79;
    *(v80 + 32) = v76;
    *(v80 + 40) = v77;
  }

  while (v154 != v63);
  v156 = v64;
  v81 = sub_22887F350();
  v83 = v82;

  MEMORY[0x22AAC0340](v81, v83);

  MEMORY[0x22AAC0340](10, 0xE100000000000000);
  v162 = MEMORY[0x277D84F90];
  sub_2287F2304(0, v146, 0);
  v84 = 0;
  v85 = v162;
  do
  {
    if (v151)
    {
      v86 = MEMORY[0x22AAC07F0](v84, v153);
    }

    else
    {
      v86 = *(v153 + 8 * v84 + 32);
    }

    v156 = 538976288;
    v157 = 0xE400000000000000;
    v87 = sub_22882E140();
    MEMORY[0x22AAC0340](v87);

    MEMORY[0x22AAC0340](540945696, 0xE400000000000000);
    v89 = v86[6];
    v88 = v86[7];
    v90 = v86[8];
    v6 = v86[9];

    MEMORY[0x22AAC0340](46, 0xE100000000000000);
    if (v6)
    {
      v88 = v6;
    }

    else
    {

      v90 = v89;
    }

    MEMORY[0x22AAC0340](v90, v88);

    v91 = sub_22887F7F0();
    v93 = v92;

    MEMORY[0x22AAC0340](v91, v93);

    MEMORY[0x22AAC0340](34, 0xE100000000000000);
    MEMORY[0x22AAC0340](34, 0xE100000000000000);

    v94 = v156;
    v95 = v157;
    v162 = v85;
    v97 = *(v85 + 16);
    v96 = *(v85 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_2287F2304((v96 > 1), v97 + 1, 1);
      v85 = v162;
    }

    ++v84;
    *(v85 + 16) = v97 + 1;
    v98 = v85 + 16 * v97;
    *(v98 + 32) = v94;
    *(v98 + 40) = v95;
  }

  while (v154 != v84);
LABEL_65:
  v156 = v85;
  v102 = sub_22887F350();
  v104 = v103;

  MEMORY[0x22AAC0340](v102, v104);

  MEMORY[0x22AAC0340](10, 0xE100000000000000);
  v105 = v153;
  if (v143)
  {
    v106 = sub_22887FA20();
  }

  else
  {
    v106 = *(v153 + 16);
  }

  v107 = MEMORY[0x277D84F90];
  LODWORD(v28) = v145;
  if (v106)
  {
    v108 = 0;
    v144 = v153 & 0xC000000000000001;
    v142 = v106;
    do
    {
      if (v144)
      {
        v155 = MEMORY[0x22AAC07F0](v108, v105);
        v109 = __OFADD__(v108, 1);
        v110 = v108 + 1;
        if (v109)
        {
LABEL_104:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v108 >= *(v105 + 16))
        {
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
          v29 = sub_22887FA20();
          goto LABEL_20;
        }

        v155 = *(v153 + 32 + 8 * v108);

        v109 = __OFADD__(v108, 1);
        v110 = v108 + 1;
        if (v109)
        {
          goto LABEL_104;
        }
      }

      v152 = v110;
      v111 = *(v155 + 128);
      v112 = *(v111 + 16);
      if (v112)
      {
        sub_2287F0FBC(0, &qword_2813CF288, &type metadata for InputSignalIdentifier, MEMORY[0x277D84560]);
        v28 = swift_allocObject();
        v113 = _swift_stdlib_malloc_size(v28);
        v114 = v113 - 32;
        if (v113 < 32)
        {
          v114 = v113 - 1;
        }

        v28[2] = v112;
        v28[3] = 2 * (v114 >> 5);
        v115 = sub_22887D068(&v156, v28 + 4, v112, v111);
        v2 = v156;
        v6 = v159;

        sub_2287EF604();
        if (v115 != v112)
        {
          goto LABEL_109;
        }

        v116 = MEMORY[0x277D84F90];
      }

      else
      {
        v116 = MEMORY[0x277D84F90];
        v28 = MEMORY[0x277D84F90];
      }

      v156 = v28;
      v2 = 0;
      sub_22882F760(&v156);
      v117 = v156;
      v118 = *(v156 + 16);
      if (v118)
      {
        v147 = v107;
        v162 = v116;
        sub_2287F2304(0, v118, 0);
        v116 = v162;
        v119 = (v117 + 56);
        do
        {
          v2 = *(v119 - 3);
          v120 = *v119;
          v156 = 538976288;
          v157 = 0xE400000000000000;
          if (!v120)
          {
          }

          sub_228837590();

          swift_bridgeObjectRetain_n();
          v121 = sub_22887F7F0();
          v123 = v122;

          MEMORY[0x22AAC0340](v121, v123);

          MEMORY[0x22AAC0340](34, 0xE100000000000000);
          MEMORY[0x22AAC0340](34, 0xE100000000000000);

          MEMORY[0x22AAC0340](540945696, 0xE400000000000000);
          v124 = sub_22882E140();
          MEMORY[0x22AAC0340](v124);

          v125 = v156;
          v126 = v157;
          v162 = v116;
          v6 = *(v116 + 16);
          v127 = *(v116 + 24);
          if (v6 >= v127 >> 1)
          {
            sub_2287F2304((v127 > 1), v6 + 1, 1);
            v116 = v162;
          }

          v119 += 4;
          *(v116 + 16) = v6 + 1;
          v128 = v116 + 16 * v6;
          *(v128 + 32) = v125;
          *(v128 + 40) = v126;
          --v118;
        }

        while (v118);

        v107 = v147;
      }

      else
      {
      }

      v129 = *(v116 + 16);
      v130 = *(v107 + 2);
      v28 = (v130 + v129);
      if (__OFADD__(v130, v129))
      {
        goto LABEL_107;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v28 > *(v107 + 3) >> 1)
      {
        if (v130 <= v28)
        {
          v132 = v130 + v129;
        }

        else
        {
          v132 = v130;
        }

        v107 = sub_228830214(isUniquelyReferenced_nonNull_native, v132, 1, v107);
      }

      v105 = v153;
      LODWORD(v28) = v145;
      if (*(v116 + 16))
      {
        if ((*(v107 + 3) >> 1) - *(v107 + 2) < v129)
        {
          goto LABEL_110;
        }

        swift_arrayInitWithCopy();

        v108 = v152;
        if (v129)
        {
          v133 = *(v107 + 2);
          v109 = __OFADD__(v133, v129);
          v134 = v133 + v129;
          if (v109)
          {
            goto LABEL_111;
          }

          *(v107 + 2) = v134;
        }
      }

      else
      {

        v108 = v152;
        if (v129)
        {
          goto LABEL_108;
        }
      }
    }

    while (v108 != v142);
  }

  v156 = v107;
  v135 = sub_22887F350();
  v137 = v136;

  MEMORY[0x22AAC0340](v135, v137);

  result = MEMORY[0x22AAC0340](32010, 0xE200000000000000);
  v139 = v161;
  *a2 = v160;
  a2[1] = v139;
  return result;
}