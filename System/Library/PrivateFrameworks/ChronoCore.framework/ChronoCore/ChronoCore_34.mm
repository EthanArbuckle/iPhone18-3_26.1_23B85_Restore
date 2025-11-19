void sub_224D7139C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAE6E8();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAA428();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + qword_28135C9F0);
  os_unfair_lock_lock(*(v14 + 16));
  v15 = sub_224D70358(v3, a1, &qword_27D6F4070, &qword_224DB5668);
  if (v2)
  {

    os_unfair_lock_unlock(*(v14 + 16));
    __break(1u);
  }

  else
  {
    v16 = v15;
    os_unfair_lock_unlock(*(v14 + 16));
    if (v16)
    {
      v17 = *(*v16 + 112);
      (*(v10 + 104))(v13, *MEMORY[0x277CFA040], v9);
      sub_224A86C64(&qword_281351828, MEMORY[0x277CFA048]);
      sub_224DAEFA8();
      sub_224DAEFA8();

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      (*(v18 + 104))(v8, *MEMORY[0x277CE3BE8], v5);
      sub_224DAF638();
      swift_willThrow();
    }
  }
}

uint64_t sub_224D71690(unsigned int a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4218, &qword_224DB5FF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58D0, &qword_224DB5FF8);
  v9 = *(v17[0] - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v12 = v17 - v11;
  v17[1] = *(v1 + qword_28135A7E0);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v2;
  *(v13 + 25) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  sub_224A33088(&qword_281350FA0, &unk_27D6F5390, &unk_224DB6000);
  sub_224DAB438();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_281351358, &qword_27D6F4218, &qword_224DB5FF0);
  sub_224DAB3E8();
  (*(v5 + 8))(v8, v4);
  sub_224A33088(&qword_281351380, &unk_27D6F58D0, &qword_224DB5FF8);
  v14 = v17[0];
  v15 = sub_224DAB3A8();

  (*(v9 + 8))(v12, v14);
  return v15;
}

uint64_t sub_224D71998()
{
  sub_224A68420(&v7);
  if (v9)
  {
    if (!*(v9 + 16))
    {
      return sub_224A699F0(&v7);
    }

    v1 = sub_224A79FA8(v9);
    sub_224A699F0(&v7);
    sub_224A7B5CC(v1);

    v2 = qword_28135A7E8;
    swift_beginAccess();
    sub_224A68ED8(v0 + v2, &v7);
    if (v8)
    {
      sub_224A3317C(&v7, v6);
      sub_224A3311C(&v7, &qword_27D6F52B8, &unk_224DBB690);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_224DADE18();

      return __swift_destroy_boxed_opaque_existential_1(v6);
    }

    v4 = &qword_27D6F52B8;
    v5 = &unk_224DBB690;
  }

  else
  {
    v4 = &qword_27D6F50E0;
    v5 = &qword_224DB41A0;
  }

  return sub_224A3311C(&v7, v4, v5);
}

uint64_t sub_224D71AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _HostFilterableChange();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB258();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v49 = (v10 + 16);
  v50 = qword_28135A7E0;
  v48 = (v10 + 8);

  v19 = 0;
  *&v20 = 136446210;
  v46 = v20;
  v47 = v8;
  while (v16)
  {
LABEL_9:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = (*(a1 + 48) + ((v19 << 10) | (16 * v22)));
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23 == 0x7363697274656DLL && v24 == 0xE700000000000000;
      if (v25 || (result = sub_224DAFD88(), (result & 1) != 0))
      {
        (*v49)(v12, v51 + qword_281365438, v8);
        sub_224B530D8(a2, v7);
        v26 = v12;
        v27 = sub_224DAB228();
        v28 = v7;
        v29 = sub_224DAF278();
        if (os_log_type_enabled(v27, v29))
        {
          v30 = swift_slowAlloc();
          v44 = a2;
          v31 = v30;
          v32 = swift_slowAlloc();
          v45 = a1;
          v42 = v32;
          v43 = v26;
          v52 = v32;
          *v31 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
          v33 = sub_224DAFD28();
          v35 = v34;
          sub_224A6951C(v28);
          v36 = sub_224A33F74(v33, v35, &v52);

          *(v31 + 4) = v36;
          _os_log_impl(&dword_224A2F000, v27, v29, "Publishing metrics changed with host: %{public}s", v31, 0xCu);
          v37 = v42;
          __swift_destroy_boxed_opaque_existential_1(v42);
          a1 = v45;
          MEMORY[0x22AA5EED0](v37, -1, -1);
          v38 = v31;
          a2 = v44;
          MEMORY[0x22AA5EED0](v38, -1, -1);

          v39 = v47;
          v12 = v43;
          (*v48)(v43, v47);
          v7 = v28;
          v8 = v39;
        }

        else
        {

          sub_224A6951C(v28);
          v40 = v47;
          (*v48)(v26, v47);
          v7 = v28;
          v8 = v40;
          v12 = v26;
        }

        v41 = *(v51 + v50);

        sub_224DAB348();
      }
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
    }

    v16 = *(v13 + 8 * v21);
    ++v19;
    if (v16)
    {
      v19 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D71EE4()
{
  v1 = *(v0 + qword_28135A7E0);

  return sub_224A3311C(v0 + qword_28135A7E8, &qword_27D6F52B8, &unk_224DBB690);
}

uint64_t sub_224D71F28()
{
  v0 = sub_224D701AC();
  v1 = *(v0 + qword_28135A7E0);

  sub_224A3311C(v0 + qword_28135A7E8, &qword_27D6F52B8, &unk_224DBB690);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetHostService()
{
  result = qword_28135A7B8;
  if (!qword_28135A7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D720BC(uint64_t a1)
{
  v2 = *v1;
  sub_224D7139C(a1);
  return v3 & 1;
}

uint64_t sub_224D720E4(uint64_t a1)
{
  result = sub_224A86C64(&qword_28135A7D0, type metadata accessor for WidgetHostService);
  *(a1 + 8) = result;
  return result;
}

void *sub_224D7213C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224A68560(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_224D721CC(id a1, void *a2)
{
  if (a1)
  {
    v4 = [a1 metricsSpecification];
    v5 = v4;
    if (!a2)
    {
      v6 = 1;
      if (!v4)
      {
        v7 = MEMORY[0x277D84FA0];
        goto LABEL_29;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84FA0];
    }

    v5 = 0;
  }

  v8 = [a2 metricsSpecification];
  v9 = v8;
  if (!v5)
  {
    v6 = 0;
    if (!v8)
    {
LABEL_34:
      v7 = MEMORY[0x277D84FA0];
      if (a1)
      {
        goto LABEL_29;
      }

LABEL_35:
      if (v6)
      {
        return v7;
      }

      v22 = 0;
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  if (!v8)
  {
    v6 = 0;
LABEL_14:
    v9 = v5;
LABEL_15:

    goto LABEL_16;
  }

  sub_224A3B79C(0, &unk_281350890, 0x277CFA3F8);
  v10 = sub_224DAF6A8();

  v6 = 0;
  if (v10)
  {
    goto LABEL_34;
  }

LABEL_16:
  v7 = MEMORY[0x277D84FA0];
  v11 = *(MEMORY[0x277D84FA0] + 40);
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](1);
  sub_224DAEE78();
  v12 = sub_224DAFEA8();
  v13 = -1 << *(v7 + 32);
  v14 = v12 & ~v13;
  if ((*(v7 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14))
  {
    v15 = ~v13;
    do
    {
      v16 = (*(v7 + 48) + 16 * v14);
      v17 = v16[1];
      if (v17)
      {
        if (*v16 == 0x7363697274656DLL && v17 == 0xE700000000000000)
        {

          goto LABEL_34;
        }

        v19 = sub_224DAFD88();

        if (v19)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v7 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_224AE2E08(0x7363697274656DLL, 0xE700000000000000, v14, isUniquelyReferenced_nonNull_native);
LABEL_28:
  if (!a1)
  {
    goto LABEL_35;
  }

LABEL_29:
  v21 = [a1 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v22 = sub_224DAF008();

  if (v6)
  {
    if (!v22)
    {
      return v7;
    }

    goto LABEL_43;
  }

LABEL_37:
  v23 = [a2 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v24 = sub_224DAF008();

  if (v22)
  {
    if (v24)
    {
      v25 = sub_224C91928(v22, v24);

      if (v25)
      {
        return v7;
      }

      goto LABEL_44;
    }
  }

  else if (!v24)
  {
    return v7;
  }

LABEL_43:

LABEL_44:
  v26 = *(v7 + 40);
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  v27 = sub_224DAFEA8();
  v28 = -1 << *(v7 + 32);
  v29 = v27 & ~v28;
  if ((*(v7 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
  {
    v30 = ~v28;
    while (1)
    {
      v31 = *(*(v7 + 48) + 16 * v29 + 8);

      if (!v31)
      {
        break;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v7 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_224AE2E08(0, 0, v29, v32);
  }

  return v7;
}

uint64_t sub_224D725CC(uint64_t a1)
{
  v2 = *(a1 + 96);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = sub_224DAF728();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_224D726B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_224D729C0(a1, a2);
}

uint64_t sub_224D72700()
{
  v1 = *v0;
  v2 = sub_224DAFEC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6E00, &qword_224DC2780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-v9];
  v19 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_224DB3100;
  *(v11 + 32) = 0x6465646E65747865;
  *(v11 + 40) = 0xE800000000000000;
  v12 = *(v1 + 136);
  swift_beginAccess();
  v13 = *(v1 + 88);
  v14 = sub_224DAF728();
  *(v11 + 72) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 48));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v0 + v12, v14);
  v16 = sub_224DAFEB8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);

  return sub_224DAFED8();
}

void sub_224D72994(void *a1@<X8>)
{
  a1[3] = MEMORY[0x277D837D0];
  *a1 = 0xD000000000000014;
  a1[1] = 0x8000000224DC25F0;
}

char *sub_224D729C0(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = sub_224DAF728();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 128);
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  *&v2[v11] = v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 56);
  v15(&v2[*(*v2 + 136)], 1, 1, v5);
  v16 = &v2[*(*v2 + 144)];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  (*(*(*(v4 + 96) - 8) + 32))(&v2[*(*v2 + 120)], a1);
  (*(v14 + 32))(v10, v19, v5);
  v15(v10, 0, 1, v5);
  v17 = *(*v2 + 136);
  swift_beginAccess();
  (*(v7 + 40))(&v2[v17], v10, v6);
  swift_endAccess();
  return v2;
}

void sub_224D72C48()
{
  v1 = *(v0 + *(*v0 + 128));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(*v0 + 144);
  swift_beginAccess();
  sub_224D73800(v0 + v2, &v3);
  if (v4 >= 2)
  {
    sub_224A36F98(&v3, v5);
    os_unfair_lock_unlock(*(v1 + 16));
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_224DAB2F8();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_224D7385C(&v3);
    os_unfair_lock_unlock(*(v1 + 16));
  }
}

void sub_224D72D28()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_224DAF728();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = *(v0 + *(v1 + 128));
  os_unfair_lock_lock(*(v11 + 16));
  v12 = *(*v0 + 144);
  swift_beginAccess();
  sub_224D73800(v0 + v12, &v17);
  if (v19 >= 2)
  {
    sub_224A36F98(&v17, v20);
    v17 = 0uLL;
    v18 = 0;
    v19 = xmmword_224DC25A0;
    swift_beginAccess();
    sub_224D738B0(&v17, v0 + v12);
    swift_endAccess();
    v13 = *(*v0 + 136);
    swift_beginAccess();
    (*(v4 + 16))(v10, v0 + v13, v3);
    (*(*(v2 - 8) + 56))(v8, 1, 1, v2);
    swift_beginAccess();
    (*(v4 + 40))(v0 + v13, v8, v3);
    swift_endAccess();
    os_unfair_lock_unlock(*(v11 + 16));
    v14 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v15 = *(v14 + 8);
    sub_224DAB2D8();
    (*(v4 + 8))(v10, v3);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_224D7385C(&v17);
    os_unfair_lock_unlock(*(v11 + 16));
  }
}

uint64_t sub_224D72FD4(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 128));
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(*v1 + 144);
  swift_beginAccess();
  sub_224D73800(v1 + v5, v13);
  v6 = v14;
  sub_224D7385C(v13);
  if (v6)
  {
    os_unfair_lock_unlock(*(v4 + 16));
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = *(v7 + 8);
    return sub_224DAB2D8();
  }

  else
  {
    sub_224A3317C(a1, v13);
    swift_beginAccess();
    sub_224D738B0(v13, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(v4 + 16));
    v10 = *(*v1 + 120);
    v14 = v3;
    WitnessTable = swift_getWitnessTable();
    v13[0] = v1;
    v11 = *(v3 + 96);
    v12 = *(v3 + 112);

    sub_224DAB2B8();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_224D7316C()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 128));
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(*v0 + 144);
  swift_beginAccess();
  sub_224D73800(v0 + v3, v9);
  v4 = v9[3];
  sub_224D7385C(v9);
  os_unfair_lock_unlock(*(v2 + 16));
  if (v4 < 2)
  {
    return sub_224DAB2E8();
  }

  v6 = *(v1 + 96);
  v7 = *(v1 + 112);
  v8 = v0 + *(*v0 + 120);
  return sub_224DAB2C8();
}

void sub_224D73270(uint64_t a1)
{
  v20 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = sub_224DAF728();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11 + 16;
  v13 = *(v1 + *(v2 + 128));
  os_unfair_lock_lock(*(v13 + 16));
  v14 = *(*v1 + 144);
  swift_beginAccess();
  sub_224D73800(v1 + v14, v21);
  v15 = v22;
  sub_224D7385C(v21);
  if (v15 >= 2)
  {
    memset(v21, 0, sizeof(v21));
    v22 = xmmword_224DC25A0;
    swift_beginAccess();
    sub_224D738B0(v21, v1 + v14);
    swift_endAccess();
    v16 = *(*v1 + 136);
    swift_beginAccess();
    (*(v6 + 16))(v12, v1 + v16, v5);
    (*(*(v4 - 8) + 56))(v10, 1, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(v1 + v16, v10, v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(v13 + 16));
    v17 = *(v3 + 96);
    v18 = *(v3 + 112);
    v19 = v1 + *(*v1 + 120);
    sub_224DAB2A8();
    (*(v6 + 8))(v12, v5);
  }

  else
  {
    os_unfair_lock_unlock(*(v13 + 16));
  }
}

uint64_t *sub_224D73548()
{
  v1 = *v0;
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 120));
  v2 = *(v0 + *(*v0 + 128));

  v3 = *(*v0 + 136);
  v4 = *(v1 + 88);
  v5 = sub_224DAF728();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_224D7385C(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_224D73660()
{
  v0 = *sub_224D73548();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_224D73910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v50 = a1;
  v51 = a2;
  v7 = sub_224DA9908();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  v17 = sub_224DAB088();
  v53 = *(v17 - 8);
  v54 = v17;
  v18 = *(v53 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v48 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v52 = &v47 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v47 - v24;
  v26 = v4[13];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v4[11]);
  sub_224DAAC98();
  v27 = sub_224DAAE38();
  LODWORD(v26) = (*(*(v27 - 8) + 48))(v25, 1, v27);
  sub_224A3311C(v25, &qword_27D6F3320, &unk_224DBD6F0);
  if (v26 == 1)
  {
    v28 = v55;
    v29 = v7;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_281365120);
    (*(v28 + 16))(v12, a3, v7);
    v31 = sub_224DAB228();
    v32 = sub_224DAF288();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v56[0] = v34;
      *v33 = 136446210;
      sub_224A4C248(&qword_281351A00, MEMORY[0x277CC95F0]);
      v35 = sub_224DAFD28();
      v37 = v36;
      (*(v28 + 8))(v12, v29);
      v38 = sub_224A33F74(v35, v37, v56);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_224A2F000, v31, v32, "Cannot send remote activity launch messages: no relationship exists with id %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v12, v7);
    }
  }

  else
  {
    v39 = type metadata accessor for RemoteActivityLaunchMessage(0);
    v56[3] = v39;
    v56[4] = sub_224A4C248(&qword_2813545A0, type metadata accessor for RemoteActivityLaunchMessage);
    v56[5] = sub_224A4C248(qword_2813545A8, type metadata accessor for RemoteActivityLaunchMessage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
    sub_224A3796C(v49, boxed_opaque_existential_1 + *(v39 + 20), &unk_27D6F4680, &unk_224DB4610);
    v41 = v51;
    *boxed_opaque_existential_1 = v50;
    boxed_opaque_existential_1[1] = v41;
    (*(v55 + 56))(v16, 1, 1, v7);

    v42 = v48;
    sub_224D7420C(v56, 3, a3, v16, &qword_27D6F6E18, &unk_224DC27F8, &qword_27D6F6E20, v48);
    v50 = v7;
    v51 = a3;
    sub_224A3311C(v16, &unk_27D6F5630, &unk_224DB34C0);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v43 = v52;
    v44 = v53;
    v45 = v54;
    (*(v53 + 32))(v52, v42, v54);
    v46 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    sub_224DAAC38();
    (*(v44 + 8))(v43, v45);
  }
}

void sub_224D7420C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a7;
  v67 = a5;
  v68 = a6;
  v9 = v8;
  v61 = a4;
  v62 = a8;
  v70 = a3;
  v12 = sub_224DA9908();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v58 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v63 = &v56 - v21;
  v22 = v9[18];
  __swift_project_boxed_opaque_existential_1(v9 + 14, v9[17]);
  v23 = a1[4];
  v24 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v57 = a2;
  v56 = "very";
  v55 = *(v22 + 16);
  v25 = v69;
  v26 = v70;
  v27 = sub_224DAAB48();
  if (v25)
  {

    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281365120);
    v30 = v25;
    v31 = sub_224DAB228();
    v32 = sub_224DAF288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72 = v34;
      *v33 = 136446210;
      v71 = v25;
      v35 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      v36 = sub_224DAEE28();
      v38 = sub_224A33F74(v36, v37, &v72);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_224A2F000, v31, v32, "Could not encode keys for event replicator: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    v40 = v67;
    v39 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
    sub_224D75740(v66, v40, v39);
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
  }

  else
  {
    v42 = v28;
    v69 = v27;

    v43 = v9[12];
    __swift_project_boxed_opaque_existential_1(v9 + 8, v9[11]);
    v44 = v63;
    sub_224DAAC68();
    v46 = v64;
    v45 = v65;
    v47 = (*(v64 + 48))(v44, 1, v65);
    sub_224A3311C(v44, &unk_27D6F5630, &unk_224DB34C0);
    if (v47 == 1)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v48 = sub_224DAB258();
      __swift_project_value_buffer(v48, qword_281365120);
      v49 = sub_224DAB228();
      v50 = sub_224DAF288();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_224A2F000, v49, v50, "Cannot send messages until we have a valid local device ID", v51, 2u);
        MEMORY[0x22AA5EED0](v51, -1, -1);
      }

      v53 = v67;
      v52 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
      sub_224D75740(v66, v53, v52);
      swift_allocError();
      *v54 = 3;
      swift_willThrow();
      sub_224A78024(v69, v42);
    }

    else
    {
      (*(v46 + 16))(v59, v26, v45);
      sub_224A3796C(v61, v58, &unk_27D6F5630, &unk_224DB34C0);
      sub_224DA98F8();
      sub_224DAB068();
    }
  }
}

void sub_224D749E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a1;
  v9 = sub_224DA9908();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281365120);
  (*(v10 + 16))(v13, a3, v9);

  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a4;
    v31 = v19;
    v35 = v19;
    *v18 = 136446466;
    HIDWORD(v30) = v16;
    v20 = v34;
    *(v18 + 4) = sub_224A33F74(v34, a2, &v35);
    *(v18 + 12) = 2082;
    sub_224A4C248(&qword_281351A00, MEMORY[0x277CC95F0]);
    v21 = sub_224DAFD28();
    v22 = a2;
    v23 = a3;
    v25 = v24;
    (*(v10 + 8))(v13, v9);
    v26 = sub_224A33F74(v21, v25, &v35);
    a3 = v23;
    a2 = v22;

    *(v18 + 14) = v26;
    _os_log_impl(&dword_224A2F000, v15, BYTE4(v30), "requesting activity launch for activity %{public}s, with relationship: %{public}s", v18, 0x16u);
    v27 = v31;
    swift_arrayDestroy();
    a4 = v33;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    v28 = v18;
    v5 = v32;
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    v20 = v34;
  }

  v29 = *(v5 + 16);
  sub_224D73910(v20, a2, a3, a4);
}

uint64_t sub_224D74D10(uint64_t a1)
{
  v70 = sub_224DA9C38();
  v69 = *(v70 - 8);
  v2 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DA9C18();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v64 - v9;
  v11 = sub_224DA9688();
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v64 - v17;
  v19 = sub_224DA9AE8();
  v72 = *(v19 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v19);
  v71 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6E08, &qword_224DC27F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v64 - v24;
  v26 = type metadata accessor for RemoteActivityLaunchMessage(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = (&v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224B44674(a1, &v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48F0, &unk_224DB8630);
  v31 = swift_dynamicCast();
  v32 = *(v27 + 56);
  if (!v31)
  {
    v32(v25, 1, 1, v26);
    return sub_224A3311C(v25, &qword_27D6F6E08, &qword_224DC27F0);
  }

  v32(v25, 0, 1, v26);
  sub_224D75630(v25, v30);
  v33 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = v33;
  sub_224DA9BD8();
  sub_224DA9BC8();
  v35 = *v30;
  v36 = v30[1];
  sub_224DA9BB8();

  v38 = v72;
  if ((*(v72 + 48))(v18, 1, v19) == 1)
  {

    sub_224A3311C(v18, &qword_27D6F48D8, &unk_224DB8240);
LABEL_7:
    if (qword_281351458 != -1)
    {
      swift_once();
    }

    v39 = sub_224DAB258();
    __swift_project_value_buffer(v39, qword_281364DA8);
    v40 = sub_224DAB228();
    v41 = sub_224DAF2A8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_224A2F000, v40, v41, "Failed remotely launch app due to open app service unavailability or activity ID being invalid.", v42, 2u);
      MEMORY[0x22AA5EED0](v42, -1, -1);
    }

    return sub_224D75694(v30, type metadata accessor for RemoteActivityLaunchMessage);
  }

  v65 = v34;
  (*(v38 + 32))(v71, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  v44 = *MEMORY[0x277D0AC70];
  *(inited + 32) = sub_224DAEE18();
  v45 = MEMORY[0x277D839B0];
  *(inited + 40) = v46;
  *(inited + 72) = v45;
  *(inited + 48) = 1;
  v47 = *MEMORY[0x277D0AC58];
  *(inited + 80) = sub_224DAEE18();
  *(inited + 88) = v48;
  *(inited + 120) = v45;
  *(inited + 96) = 1;
  v49 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
  swift_arrayDestroy();
  sub_224A3796C(v30 + *(v26 + 20), v10, &unk_27D6F4680, &unk_224DB4610);
  v50 = v66;
  if ((*(v66 + 48))(v10, 1, v11) == 1)
  {
    sub_224A3311C(v10, &unk_27D6F4680, &unk_224DB4610);
  }

  else
  {
    (*(v50 + 32))(v14, v10, v11);
    v51 = *MEMORY[0x277D0AC40];
    v52 = sub_224DAEE18();
    v54 = v53;
    v55 = sub_224DA95F8();
    v76 = sub_224D756F4();
    *&v75 = v55;
    sub_224A739A4(&v75, v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v49;
    sub_224B20218(v74, v52, v54, isUniquelyReferenced_nonNull_native);

    (*(v50 + 8))(v14, v11);
    v49 = v73;
  }

  v57 = v65;
  v58 = v67;
  v59 = v71;
  sub_224DA9A98();
  v60 = v68;
  sub_224DA9C08();
  sub_224D75694(v58, MEMORY[0x277CB9790]);
  sub_224DA9C28();
  (*(v69 + 8))(v60, v70);
  sub_224D9F274(v49);

  v61 = sub_224DAECC8();

  v62 = [objc_opt_self() optionsWithDictionary_];

  v63 = sub_224DAEDE8();

  [v57 openApplication:v63 withOptions:v62 completion:0];

  (*(v72 + 8))(v59, v19);
  return sub_224D75694(v30, type metadata accessor for RemoteActivityLaunchMessage);
}

uint64_t sub_224D75630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityLaunchMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D75694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_224D756F4()
{
  result = qword_27D6F6E10;
  if (!qword_27D6F6E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D6F6E10);
  }

  return result;
}

uint64_t sub_224D75740(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224D75864()
{
  v1 = v0;
  sub_224DAF938();
  MEMORY[0x22AA5D210](0x203A6369706F74, 0xE700000000000000);
  v2 = type metadata accessor for IncomingMessage(0);
  v3 = v2[5];
  sub_224DAE0D8();
  sub_224DAFA48();
  MEMORY[0x22AA5D210](0x656E6E616863203BLL, 0xED0000203A44496CLL);
  v4 = (v1 + v2[6]);
  v10 = *v4;
  v11 = v4[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D30, &qword_224DBA9F0);
  v5 = sub_224DAEE28();
  MEMORY[0x22AA5D210](v5);

  MEMORY[0x22AA5D210](0x3A6E656B6F74203BLL, 0xE900000000000020);
  sub_224AECAB0(*v1, *(v1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6E68, &qword_224DC28B0);
  v6 = sub_224DAEE28();
  MEMORY[0x22AA5D210](v6);

  MEMORY[0x22AA5D210](0xD000000000000012, 0x8000000224DD0270);
  if (*(v1 + v2[8]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + v2[8]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AA5D210](v7, v8);

  return 0;
}

void sub_224D75A88()
{
  sub_224C1702C(319, &qword_27D6F6E80);
  if (v0 <= 0x3F)
  {
    sub_224DAE0D8();
    if (v1 <= 0x3F)
    {
      sub_224C1702C(319, &qword_27D6F5C80);
      if (v2 <= 0x3F)
      {
        sub_224DAE178();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_224D75BAC()
{
  sub_224DAE0D8();
  if (v0 <= 0x3F)
  {
    sub_224BDD38C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_224D75C9C(uint64_t a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v39 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v39 - v8;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v39[1] = v1;
  v56 = MEMORY[0x277D84F90];
  sub_224A3DFD8(0, v9, 0);
  v10 = v56;
  v11 = a1 + 64;
  v12 = -1 << *(a1 + 32);
  result = sub_224DAF798();
  v14 = result;
  v15 = 0;
  v43 = (v3 + 8);
  v44 = v6 + 16;
  v45 = a1 + 64;
  v46 = v6;
  v41 = v9;
  v42 = v6 + 8;
  v40 = a1 + 72;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v51 = v15;
    v52 = *(a1 + 36);
    v53 = v14 >> 6;
    v18 = *(a1 + 48);
    v55 = v10;
    v20 = v46;
    v19 = v47;
    v21 = v48;
    (*(v46 + 16))(v47, v18 + *(v46 + 72) * v14, v48);
    v22 = a1;
    v23 = v49;
    sub_224DAA238();
    v24 = v50;
    v25 = sub_224DA9FE8();
    v54 = v26;
    (*v43)(v23, v24);
    v27 = *(v20 + 8);
    v10 = v55;
    result = v27(v19, v21);
    v56 = v10;
    v29 = *(v10 + 16);
    v28 = *(v10 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_224A3DFD8((v28 > 1), v29 + 1, 1);
      v10 = v56;
    }

    *(v10 + 16) = v29 + 1;
    v30 = v10 + 16 * v29;
    v31 = v54;
    *(v30 + 32) = v25;
    *(v30 + 40) = v31;
    v16 = 1 << *(v22 + 32);
    v11 = v45;
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v32 = *(v45 + 8 * v53);
    if ((v32 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    a1 = v22;
    if (v52 != *(v22 + 36))
    {
      goto LABEL_24;
    }

    v33 = v32 & (-2 << (v14 & 0x3F));
    if (v33)
    {
      v16 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v17 = v41;
    }

    else
    {
      v34 = v53 << 6;
      v35 = v53 + 1;
      v17 = v41;
      v36 = (v40 + 8 * v53);
      while (v35 < (v16 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_224A3E204(v14, v52, 0);
          v16 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_224A3E204(v14, v52, 0);
    }

LABEL_4:
    v15 = v51 + 1;
    v14 = v16;
    if (v51 + 1 == v17)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_224D7607C()
{
  v1 = v0;
  v2 = *v0;
  v8 = *(v1 + 16);
  v3 = type metadata accessor for UnfairLock();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v2 + 80);
  v5 = *(v2 + 96);
  type metadata accessor for ReadOnlyHost();
  sub_224C9A3FC();
  sub_224DAED48();
  v6 = sub_224DAF728();
  sub_224A49C20(sub_224D776A4, v1, v3, v6, &off_28382D228);

  return v9;
}

void sub_224D76188(void *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *a1;
  v49 = sub_224DAA5C8();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v49);
  MEMORY[0x28223BE20](v8);
  v11 = &v41[-v10];
  if (a1[3])
  {
    v47 = v9;
    v48 = a2;
    sub_224DAB9A8();
    v12 = v5[10];
    v13 = v5[11];
    v46 = *(v13 + 8);
    v46(v12, v13);
    v14 = sub_224DAB998();
    if (!v2)
    {
      v31 = *(v6 + 8);
      v32 = v14;
      v45 = v14;
      v31(v11, v49);

      v51 = v32;
      v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v49 = 0;
      v34 = v33;
      v35 = v5[12];
      OnlyHost = type metadata accessor for ReadOnlyHost();
      swift_getTupleTypeMetadata2();
      v37 = sub_224DAF048();
      v38 = sub_224C9A3FC();
      v39 = sub_224D776C0(v37, v34, OnlyHost, v38);

      v50 = v39;
      MEMORY[0x28223BE20](v40);
      *&v41[-32] = v12;
      *&v41[-24] = v13;
      *&v41[-16] = v35;
      sub_224DAED48();
      sub_224DAED48();
      swift_getWitnessTable();
      sub_224DAEF78();

      *v48 = v52;
      return;
    }

    v45 = *(v6 + 8);
    v45(v11, v49);

    if (qword_281351438 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_281364D78);
    v16 = v2;
    v17 = sub_224DAB228();
    v18 = sub_224DAF288();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v13;
      v20 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v20 = 136446466;
      v21 = v47;
      v42 = v18;
      v46(v12, v19);
      sub_224D77628();
      v22 = v49;
      v23 = sub_224DAFD28();
      v25 = v24;
      v45(v21, v22);
      v26 = sub_224A33F74(v23, v25, &v52);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2114;
      v27 = v2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v28;
      v29 = v43;
      *v43 = v28;
      _os_log_impl(&dword_224A2F000, v17, v42, "Error fetching %{public}s snapshot configurations: %{public}@", v20, 0x16u);
      sub_224A3311C(v29, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v29, -1, -1);
      v30 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    else
    {
    }

    a2 = v48;
  }

  *a2 = 0;
}

uint64_t sub_224D766A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v25 = a5;
  v6 = sub_224DAA428();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = *(v11 + 16);
  v21(&v25 - v19, a2, TupleTypeMetadata2);

  type metadata accessor for ReadOnlyHost();
  v21(v18, a2, TupleTypeMetadata2);

  v21(v15, a2, TupleTypeMetadata2);
  v30 = *&v15[*(TupleTypeMetadata2 + 48)];
  v22 = v26;
  (*(v27 + 104))(v26, *MEMORY[0x277CFA040], v28);
  v23 = sub_224D431CC(v18, &v30, v22);
  (*(*(v9 - 8) + 8))(v15, v9);
  v30 = v23;
  sub_224C9A3FC();
  sub_224DAED48();
  return sub_224DAED68();
}

void sub_224D7697C()
{
  v1 = v0[2];
  os_unfair_lock_lock(*(v1 + 16));
  sub_224D769FC(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void sub_224D769FC(uint64_t *a1)
{
  v2 = *a1;
  if (a1[3])
  {
    MEMORY[0x28223BE20](a1);
    v4 = *(v3 + 80);
    v5 = *(v3 + 96);
    sub_224DABBC8();
    if (v1)
    {
    }
  }
}

uint64_t sub_224D76AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_224DAA5C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DABAC8();
  (*(a5 + 8))(a4, a5);
  sub_224DABA68();
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_224D76C08()
{
  v1 = v0[2];
  os_unfair_lock_lock(*(v1 + 16));
  sub_224D76C74(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

void sub_224D76C74(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = sub_224DAA5C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = a1[3];
  if (v13)
  {
    v38 = v10;
    v39 = a2;
    sub_224DAB9A8();
    v15 = *(v5 + 80);
    v14 = *(v5 + 88);
    v37 = *(v14 + 8);
    v37(v15, v14);
    v16 = sub_224DAB988();
    if (v2)
    {
      v36 = *(v7 + 8);
      v36(v12, v6);

      if (qword_281351438 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281364D78);
      v18 = v2;
      v19 = sub_224DAB228();
      v20 = sub_224DAF288();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v40 = v35;
        *v21 = 136446466;
        v33 = v19;
        v22 = v38;
        HIDWORD(v32) = v20;
        v37(v15, v14);
        sub_224D77628();
        v23 = sub_224DAFD28();
        v25 = v24;
        v36(v22, v6);
        v26 = sub_224A33F74(v23, v25, &v40);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2114;
        v27 = v2;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 14) = v28;
        v29 = v33;
        v30 = v34;
        *v34 = v28;
        _os_log_impl(&dword_224A2F000, v29, BYTE4(v32), "Error fetching %{public}s snapshot configuration dates: %{public}@", v21, 0x16u);
        sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v30, -1, -1);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x22AA5EED0](v31, -1, -1);
        MEMORY[0x22AA5EED0](v21, -1, -1);
      }

      else
      {
      }

      v13 = 0;
    }

    else
    {
      v13 = v16;
      (*(v7 + 8))(v12, v6);
    }

    a2 = v39;
  }

  *a2 = v13;
}

uint64_t sub_224D7702C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

void sub_224D77090(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  sub_224D7697C();
}

uint64_t sub_224D770B8()
{
  v0 = sub_224DA9878();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA97A8();
  v5 = sub_224D77198(v4);
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_224D77198(uint64_t a1)
{
  v2 = sub_224D76C08();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  MEMORY[0x28223BE20](v2);
  v7[2] = a1;
  v4 = sub_224BA066C(sub_224D77424, v7, v3);

  v5 = sub_224D75C9C(v4);

  return v5;
}

uint64_t sub_224D77250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B90, &qword_224DB9F00);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = *(v5 + 56);
  v11 = sub_224DA9878();
  (*(*(v11 - 8) + 16))(&v8[v10], a2, v11);
  v12 = sub_224DA9788();
  sub_224A3311C(v8, &qword_27D6F4B90, &qword_224DB9F00);
  return v12 & 1;
}

uint64_t sub_224D773E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_224D77444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_224DAED88();

  return sub_224D774A0(a1, v9, a2, a3);
}

unint64_t sub_224D774A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_224DAEDD8();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_224D77628()
{
  result = qword_2813517E0;
  if (!qword_2813517E0)
  {
    sub_224DAA5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813517E0);
  }

  return result;
}

uint64_t sub_224D776C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_224DAF088())
  {
    sub_224DAFBC8();
    v13 = sub_224DAFBB8();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_224DAF088();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_224DAF068())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_224DAF948();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_224D77444(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

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
LABEL_15:

    return v13;
  }

  return result;
}

void sub_224D779CC(void *a1)
{
  v2 = v1;
  v3 = v1[8];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v2[8] = v5;
    swift_beginAccess();
    v7 = a1;
    MEMORY[0x22AA5D350]();
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_224DAF038();
LABEL_3:
  sub_224DAF078();
  swift_endAccess();
  if (!v2[10] && v2[8] == v2[11])
  {
    sub_224D77D7C();
  }
}

uint64_t sub_224D77AA8(void *a1)
{
  v2 = v1;
  if (!v1[10])
  {
    goto LABEL_7;
  }

  v4 = qword_2813516B8;

  if (v4 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281365108);

    v6 = sub_224DAB228();
    v7 = sub_224DAF278();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 134349314;
      *(v8 + 4) = v2[8];

      *(v8 + 12) = 2082;
      swift_beginAccess();
      v10 = v2[9];
      v11 = type metadata accessor for ExtensionTask(0);

      v13 = MEMORY[0x22AA5D380](v12, v11);
      v15 = v14;

      v16 = sub_224A33F74(v13, v15, &v27);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_224A2F000, v6, v7, "Stop watchdog timer, task count %{public}ld - %{public}s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x22AA5EED0](v9, -1, -1);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }

    else
    {
    }

    sub_224DAC5F8();

    v17 = v2[10];
    v2[10] = 0;

LABEL_7:
    v18 = v2[8];
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v19)
    {
      break;
    }

    v2[8] = v20;
    swift_beginAccess();
    v21 = a1;
    a1 = sub_224D78AF4(v2 + 9, v21);

    v22 = v2[9];
    if (v22 >> 62)
    {
      goto LABEL_15;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23 < a1)
    {
      goto LABEL_16;
    }

LABEL_10:
    sub_224D78D18(a1, v23);
    swift_endAccess();
    v24 = v2[8];
    if (v24 < 0)
    {
      goto LABEL_17;
    }

    v25 = v2[9];
    if (v25 >> 62)
    {
      goto LABEL_18;
    }

    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == v24)
    {
      return result;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
LABEL_15:
  v23 = sub_224DAF838();
  if (v23 >= a1)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_224DAF838();
  if (result != v2[8])
  {
    goto LABEL_19;
  }

  return result;
}

void sub_224D77D7C()
{
  v1 = v0;
  v2 = sub_224DAC378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  os_unfair_lock_assert_owner(*(v0[2] + 16));
  if (v0[10])
  {
    __break(1u);
  }

  else
  {
    if (qword_2813516B8 != -1)
    {
      swift_once();
    }

    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_281365108);

    v11 = sub_224DAB228();
    v12 = sub_224DAF278();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v30 = v2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v29 = v3;
      v16 = v15;
      v31 = v15;
      *v14 = 134349314;
      *(v14 + 4) = v1[8];

      *(v14 + 12) = 2082;
      swift_beginAccess();
      v17 = v1[9];
      v18 = type metadata accessor for ExtensionTask(0);

      v20 = MEMORY[0x22AA5D380](v19, v18);
      v22 = v21;

      v23 = sub_224A33F74(v20, v22, &v31);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_224A2F000, v11, v12, "Start watchdog timer, task count %{public}ld - %{public}s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v24 = v16;
      v3 = v29;
      MEMORY[0x22AA5EED0](v24, -1, -1);
      v25 = v14;
      v2 = v30;
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {
    }

    v26 = v1[15];
    sub_224DAC308();
    sub_224DAC648();
    (*(v3 + 16))(v7, v9, v2);
    sub_224DAC618();
    v27 = sub_224DAC608();
    v28 = v1[10];
    v1[10] = v27;

    swift_allocObject();
    swift_weakInit();

    sub_224DAC638();

    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_224D780D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    os_unfair_lock_lock(*(v2 + 16));
    sub_224D7816C(v1);
    os_unfair_lock_unlock(*(v2 + 16));
  }

  return result;
}

uint64_t sub_224D7816C(uint64_t a1)
{
  v62[6] = *MEMORY[0x277D85DE8];
  v4 = sub_224DAF128();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  swift_beginAccess();
  v7 = *(a1 + 72);
  if (v7 >> 62)
  {
    v45 = *(a1 + 72);
    v8 = sub_224DAF838();
    v7 = v45;
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  v57 = v4;
  v58 = a1;
  if (v8)
  {
    v60 = MEMORY[0x277D84F90];
    v10 = v7;

    sub_224A3DFD8(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_16;
    }

    v54[1] = v1;
    v11 = 0;
    v9 = v60;
    v12 = v10;
    v59 = v10 & 0xC000000000000001;
    v13 = v10;
    v14 = v8;
    do
    {
      if (v59)
      {
        v15 = MEMORY[0x22AA5DCC0](v11, v12);
      }

      else
      {
        v15 = *(v12 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = [v15 description];
      v18 = sub_224DAEE18();
      v20 = v19;

      v60 = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_224A3DFD8((v21 > 1), v22 + 1, 1);
        v9 = v60;
      }

      ++v11;
      *(v9 + 16) = v22 + 1;
      v23 = v9 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v12 = v13;
    }

    while (v14 != v11);
  }

  v60 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A6B84C();
  v24 = sub_224DAEDA8();
  v26 = v25;

  MEMORY[0x22AA5D210](v24, v26);

  v28 = v62[0];
  v27 = v62[1];
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  sub_224DAF938();

  v62[0] = 0x3A746E756F43;
  v62[1] = 0xE600000000000000;
  v2 = v58;
  v60 = *(v58 + 64);
  v29 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v29);

  MEMORY[0x22AA5D210](0x7344496B7361542CLL, 0xE90000000000003ALL);
  MEMORY[0x22AA5D210](v28, v27);
  v30 = v62[0];
  v9 = v62[1];
  if (*(v2 + 96) & 1) != 0 || (BSIsBeingDebugged())
  {
    goto LABEL_21;
  }

  sub_224DABC18();
  v31 = v55;
  sub_224DABC08();
  v59 = v30;
  sub_224DABBF8();
  (*(v56 + 8))(v31, v57);
  if (qword_2813516B8 != -1)
  {
    goto LABEL_28;
  }

LABEL_16:
  v32 = sub_224DAB258();
  __swift_project_value_buffer(v32, qword_281365108);

  v33 = sub_224DAB228();
  v34 = sub_224DAF288();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v62[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_224A33F74(v59, v9, v62);
    _os_log_impl(&dword_224A2F000, v33, v34, "Watchdog detected stuck task service queue: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x22AA5EED0](v36, -1, -1);
    MEMORY[0x22AA5EED0](v35, -1, -1);
  }

  v37 = sub_224DAB228();
  v38 = sub_224DAF298();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_224A2F000, v37, v38, "Watchdog detected stuck task service queue, recent tasks not completed", v39, 2u);
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  v30 = v59;
LABEL_21:
  v40 = *(v2 + 104);
  if (v40)
  {
    v41 = *(v2 + 112);

    v40(v42);
    sub_224A3D418(v40);
  }

  if ((*(v2 + 96) & 1) == 0 && (BSIsBeingDebugged() & 1) == 0)
  {
    sub_224DAD198();
    sub_224DAD188();

    LODWORD(v62[0]) = 20;
    *(v62 + 4) = 1uLL;
    getpid();
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_224DAF938();

    v60 = 0xD000000000000026;
    v61 = 0x8000000224DD0390;
    MEMORY[0x22AA5D210](v30, v9);
    v46 = sub_224DAEDE8();

    v47 = WriteCrashReportWithStackshot();

    if (v47)
    {
      if (qword_2813516B8 != -1)
      {
        swift_once();
      }

      v48 = sub_224DAB258();
      __swift_project_value_buffer(v48, qword_281365108);
      v49 = sub_224DAB228();
      v50 = sub_224DAF2A8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = "WATCHDOG EXPIRED. Stackshot acquired";
LABEL_38:
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_224A2F000, v49, v50, v51, v53, 2u);
        MEMORY[0x22AA5EED0](v53, -1, -1);
      }
    }

    else
    {
      if (qword_2813516B8 != -1)
      {
        swift_once();
      }

      v52 = sub_224DAB258();
      __swift_project_value_buffer(v52, qword_281365108);
      v49 = sub_224DAB228();
      v50 = sub_224DAF288();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = "WATCHDOG EXPIRED. Unable to get stackshot.";
        goto LABEL_38;
      }
    }

    exit(0);
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224D78914()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[14];
  sub_224A3D418(v0[13]);

  return swift_deallocClassInstance();
}

void sub_224D78990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(*(v8 + 16));
  a5(a2);
  v9 = *(v8 + 16);

  os_unfair_lock_unlock(v9);
}

unint64_t sub_224D789F0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_224DAF838();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x22AA5DCC0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_224D78AF4(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_224D789F0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_224DAF838();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_224DAF838())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x22AA5DCC0](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x22AA5DCC0](v10, v7);
        v17 = MEMORY[0x22AA5DCC0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_224B44A20(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_224B44A20(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_224DAF838();
}

uint64_t sub_224D78D18(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_224DAF838();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_224DAF838();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_224A57BD4(result, 1);

  return sub_224B43E78(v4, v2, 0);
}

unint64_t sub_224D78DF0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_224AD94BC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_224B444FC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_224D78EC4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_224D78F30(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x22AA5D350]();
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224D78FD8(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x22AA5D350]();
  if (*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224D79080(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x22AA5D350]();
  if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224D79164(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v28 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    result = sub_224DAF7D8();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v28 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  v5 = -1 << *(a1 + 32);
  result = sub_224DAF798();
  v6 = *(a1 + 36);
  v25 = result;
  v26 = v6;
  v27 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v25;
    v10 = v26;
    v12 = v27;
    sub_224A94D00(v25, v26, v27, a1);
    sub_224DAF9B8();
    v13 = *(v28 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    if (v23)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_224DAF7F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6EB8, &unk_224DC3210);
      v8 = sub_224DAF1E8();
      sub_224DAF8A8();
      result = v8(v24, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_224A3E204(v25, v26, v27);
        return v28;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v11 >> 6;
      v16 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v16 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v11 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_224A3E204(v11, v10, 0);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_27;
          }
        }

        result = sub_224A3E204(v11, v10, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v10;
      v27 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
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
  return result;
}

uint64_t sub_224D79460(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - v3;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v43 = v8;
  v40 = a1 + 64;
  v41 = a1;
  while (v7)
  {
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v10 << 6);
    v14 = *(a1 + 48);
    v15 = sub_224DABE18();
    v16 = *(v15 - 8);
    v17 = v14 + *(v16 + 72) * v13;
    v18 = v44;
    (*(v16 + 16))(v44, v17, v15);
    v19 = *(*(a1 + 56) + 8 * v13);
    *(v18 + *(v45 + 48)) = v19;

    v20 = sub_224D812FC(v18, v19);
    sub_224A3311C(v18, &qword_27D6F6D38, &unk_224DC2010);
    v21 = v20 >> 62;
    if (v20 >> 62)
    {
      v22 = sub_224DAF838();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v11 >> 62;
    if (v11 >> 62)
    {
      result = sub_224DAF838();
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v22;
    v24 = __OFADD__(result, v22);
    v25 = result + v22;
    if (v24)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v23)
      {
LABEL_22:
        sub_224DAF838();
      }

      else
      {
        v26 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v27 = *(v26 + 16);
      }

      result = sub_224DAF968();
      v46 = result;
      v26 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_22;
    }

    v26 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v46 = v11;
LABEL_24:
    v28 = *(v26 + 16);
    v29 = *(v26 + 24);
    if (v21)
    {
      v31 = v26;
      result = sub_224DAF838();
      v26 = v31;
      v30 = result;
    }

    else
    {
      v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 &= v7 - 1;
    if (v30)
    {
      if (((v29 >> 1) - v28) < v48)
      {
        goto LABEL_43;
      }

      v32 = v26 + 8 * v28 + 32;
      v42 = v26;
      if (v21)
      {
        if (v30 < 1)
        {
          goto LABEL_45;
        }

        sub_224A33088(&qword_27D6F6EB0, &qword_27D6F6EA8, &qword_224DC2F78);
        for (i = 0; i != v30; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6EA8, &qword_224DC2F78);
          v34 = sub_224A6996C(v47, i, v20);
          v36 = *v35;
          (v34)(v47, 0);
          *(v32 + 8 * i) = v36;
        }
      }

      else
      {
        sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
        swift_arrayInitWithCopy();
      }

      v4 = v40;
      a1 = v41;
      v8 = v43;
      v11 = v46;
      if (v48 >= 1)
      {
        v37 = *(v42 + 16);
        v24 = __OFADD__(v37, v48);
        v38 = v37 + v48;
        if (v24)
        {
          goto LABEL_44;
        }

        *(v42 + 16) = v38;
      }
    }

    else
    {

      v8 = v43;
      v11 = v46;
      if (v48 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v11;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_224D79880()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C98, &unk_224DBD6C0);
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C50, &unk_224DBA3C0);
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v55);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C58, &qword_224DC1AF0);
  v47 = *(v16 - 8);
  v48 = v16;
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_processMonitor), *(v0 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_processMonitor + 24));
  v21 = *v20;
  v22 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock;
  os_unfair_lock_assert_not_owner(*(*(*v20 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock) + 16));
  v23 = *(v21 + v22);
  os_unfair_lock_lock(*(v23 + 16));
  sub_224B458F8(v21, v1, &off_283837050);
  os_unfair_lock_unlock(*(v23 + 16));
  v24 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v58 = sub_224DAC688();
  v25 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v59 = sub_224DAC6A8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  v57 = MEMORY[0x277CBCD90];
  v46 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
  sub_224DAB428();

  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v26 = sub_224DAF3D8();
  v58 = v26;
  v27 = sub_224DAF358();
  v28 = *(v27 - 8);
  v43 = *(v28 + 56);
  v44 = v28 + 56;
  v42 = v27;
  v43(v11, 1, 1, v27);
  sub_224A33088(&qword_281351310, &qword_27D6F4C50, &unk_224DBA3C0);
  v56 = sub_224B67CF4();
  v29 = v55;
  sub_224DAB448();
  sub_224A3311C(v11, &qword_27D6F5090, &qword_224DB5C30);

  (*(v12 + 8))(v15, v29);
  swift_allocObject();
  swift_weakInit();
  v55 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_2813511C8, &qword_27D6F4C58, &qword_224DC1AF0);
  v30 = v48;
  sub_224DAB488();

  (*(v47 + 8))(v19, v30);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v31 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v58 = sub_224DAC698();
  v32 = sub_224DAF3D8();
  v59 = v32;
  v33 = v43;
  v43(v11, 1, 1, v27);
  v34 = v49;
  sub_224DAB448();
  sub_224A3311C(v11, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
  v35 = v51;
  sub_224DAB488();

  (*(v50 + 8))(v34, v35);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v36 = v1[29];
  v58 = sub_224DAC0D8();
  v37 = sub_224DAF3D8();
  v59 = v37;
  v33(v11, 1, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54E0, &qword_224DBBBB0);
  sub_224A33088(&unk_2813510F8, &unk_27D6F54E0, &qword_224DBBBB0);
  v38 = v52;
  sub_224DAB448();
  sub_224A3311C(v11, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351290, &qword_27D6F5C98, &unk_224DBD6C0);
  v39 = v54;
  sub_224DAB488();

  (*(v53 + 8))(v38, v39);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v40 = v1[12];
  v41 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v40);
  v58 = (*(*(v41 + 8) + 32))(768, v40);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224D7ED8C();
}

uint64_t sub_224D7A22C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 232);
    v1 = sub_224DAC0E8();
    v4 = *(v2 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_224D7A294()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 232);
    v1 = sub_224DAC058();
    v4 = *(v2 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t sub_224D7A2FC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 232);
    v1 = sub_224DAC0D8();
    v4 = *(v2 + 48);
    *(v2 + 48) = v1;
  }

  return v1;
}

uint64_t sub_224D7A364()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v5 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5448, &qword_224DBBB68);
    sub_224A33088(&qword_281350F68, &qword_27D6F5448, &qword_224DBBB68);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 56);
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t sub_224D7A428()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = *(v0 + 232);
  result = sub_224DAC148();
  v10 = 0;
  v11 = result + 64;
  v12 = 1 << *(result + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(result + 64);
  v15 = (v12 + 63) >> 6;
  v34 = v2 + 16;
  v35 = result;
  v33 = (v2 + 8);
  v30 = (v2 + 32);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = v10;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = *(v2 + 72);
    (*(v2 + 16))(v7, *(v35 + 48) + v18 * (v17 | (v10 << 6)), v1);
    v19 = sub_224DABDB8();
    v20 = [v19 isRemote];

    if (v20)
    {
      v29 = *v30;
      v29(v31, v7, v1);
      v21 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v21;
      v23 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224ADA49C(0, *(v21 + 16) + 1, 1);
        v21 = v36;
      }

      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v32 = v25 + 1;
        sub_224ADA49C(v24 > 1, v25 + 1, 1);
        v26 = v32;
        v21 = v36;
      }

      *(v21 + 16) = v26;
      v27 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v32 = v21;
      v28 = v21 + v27 + v25 * v18;
      v1 = v23;
      result = (v29)(v28, v31, v23);
    }

    else
    {
      result = (*v33)(v7, v1);
    }
  }

  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v15)
    {

      return v32;
    }

    v14 = *(v11 + 8 * v10);
    ++v16;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D7A6F0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_224DABDB8();
  v7 = *v5;
  v8 = *(v7 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224A7E188(v7, v6, &v15);
  os_unfair_lock_unlock(*(v8 + 16));

  if (v16)
  {
    sub_224A36F98(&v15, v17);
    v9 = sub_224DAC198();
    sub_224A3317C(v17, &v15);
    sub_224A3317C(a1, v14);
    v10 = swift_allocObject();
    sub_224A36F98(&v15, v10 + 16);
    sub_224A36F98(v14, v10 + 56);
    v11 = sub_224DAC1A8();
    v12 = MEMORY[0x277CF9950];
    a3[3] = v9;
    a3[4] = v12;
    *a3 = v11;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_224A3311C(&v15, &qword_27D6F3AE8, &unk_224DB9600);
    return sub_224A3317C(a1, a3);
  }
}

uint64_t sub_224D7A85C(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE1F8();
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_224DAE1F8();
}

uint64_t sub_224D7A8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224A92724(a1, a2);
  }

  else
  {
    v5 = sub_224DAE4F8();
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

uint64_t sub_224D7A974()
{
  v0 = sub_224DABE18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    MEMORY[0x22AA5BB00](v6);
    sub_224A8BA9C();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_224D7AA94(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D7AAF4(a1);
  }

  return result;
}

uint64_t sub_224D7AAF4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v33 - v6;
  v44 = sub_224DAF3B8();
  v42 = *(v44 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v45 = &v33 - v13;
  v14 = sub_224DABE18();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v41 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v18 = *(v15 + 16);
  v46 = &v33 - v19;
  v40 = v18;
  v18();
  v20 = *(v1 + 232);
  v21 = sub_224DAC168();
  if (v21 && (v39 = a1, v22 = sub_224A73210(v21), , v22))
  {
    sub_224DABE38();

    v38 = v2;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v35 = sub_224DAD178();
    v48 = v35;
    sub_224DAF378();
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    v34 = sub_224DAF3D8();
    v47 = v34;
    v23 = sub_224DAF358();
    v24 = v43;
    (*(*(v23 - 8) + 56))(v43, 1, 1, v23);
    v36 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    v37 = v11;
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
    sub_224B67CF4();
    sub_224DAB468();
    sub_224A3311C(v24, &qword_27D6F5090, &qword_224DB5C30);

    (*(v42 + 8))(v9, v44);

    __swift_destroy_boxed_opaque_existential_1(v49);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v41;
    (v40)(v41, v39, v14);
    v27 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    (*(v15 + 32))(v28 + v27, v26, v14);
    sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450);
    v29 = v36;
    v30 = v45;
    v31 = sub_224DAB488();

    (*(v37 + 8))(v30, v29);
  }

  else
  {
    v31 = 0;
  }

  swift_beginAccess();
  sub_224B09B90(v31, v46);
  return swift_endAccess();
}

uint64_t sub_224D7B040(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_224B3E430(a1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224D7B0DC()
{
  v0 = sub_224DACB98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_224DACB08();
  v41 = *(v43 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_224DACB28();
  v36 = *(v37 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_224DACC88();
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DABE18();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v33 = v1;
    v34 = v4;
    v35 = v0;
    v19 = *(result + 232);
    result = sub_224DAC108();
    v51 = *(result + 16);
    if (v51)
    {
      v20 = 0;
      v49 = v52 + 16;
      v45 = (v52 + 32);
      v47 = (v52 + 8);
      v48 = MEMORY[0x277D84F90];
      v50 = result;
      while (1)
      {
        if (v20 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v21 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v22 = *(v52 + 72);
        (*(v52 + 16))(v16, result + v21 + v22 * v20, v53);
        v23 = v18[23];
        __swift_project_boxed_opaque_existential_1(v18 + 19, v18[22]);
        v24 = sub_224DABDB8();
        sub_224DAC6D8();

        if (v55)
        {
          __swift_project_boxed_opaque_existential_1(v54, v55);
          v25 = sub_224DAE218();
          __swift_destroy_boxed_opaque_existential_1(v54);
          if (v25)
          {
            v26 = *v45;
            (*v45)(v46, v16, v53);
            v27 = v48;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v27;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA49C(0, *(v27 + 16) + 1, 1);
              v27 = v56;
            }

            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_224ADA49C(v29 > 1, v30 + 1, 1);
              v27 = v56;
            }

            *(v27 + 16) = v30 + 1;
            v48 = v27;
            v26((v27 + v21 + v30 * v22), v46, v53);
            goto LABEL_6;
          }
        }

        else
        {
          sub_224A3311C(v54, &unk_27D6F4700, &unk_224DB3A10);
        }

        (*v47)(v16, v53);
LABEL_6:
        ++v20;
        result = v50;
        if (v51 == v20)
        {
          goto LABEL_16;
        }
      }
    }

    v48 = MEMORY[0x277D84F90];
LABEL_16:

    (*(v36 + 104))(v39, *MEMORY[0x277CF9B50], v37);
    (*(v41 + 104))(v44, *MEMORY[0x277CF9B40], v43);
    (*(v33 + 104))(v34, *MEMORY[0x277CF9BC8], v35);
    sub_224DACC48();
    v31 = v38;
    sub_224DACC38();
    sub_224A3933C(v48, v31);

    return (*(v40 + 8))(v31, v42);
  }

  return result;
}

uint64_t sub_224D7B700(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D7B774(a1, a2);
  }

  return result;
}

uint64_t sub_224D7B774(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v124 = a2;
  v115 = sub_224DACB28();
  v114 = *(v115 - 8);
  v5 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACC88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v116 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DAB258();
  v113 = *(v120 - 8);
  v12 = *(v113 + 64);
  v13 = MEMORY[0x28223BE20](v120);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v106 = &v106 - v17;
  MEMORY[0x28223BE20](v16);
  v111 = &v106 - v18;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v19 = *(*(v137 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v137);
  v136 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v135 = &v106 - v23;
  MEMORY[0x28223BE20](v22);
  v134 = &v106 - v24;
  v126 = sub_224DABE18();
  v25 = *(v126 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v126);
  v138 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_224DACB98();
  v121 = *(v123 - 8);
  v28 = *(v121 + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_224DACB08();
  v118 = *(v119 - 8);
  v30 = *(v118 + 64);
  v31 = MEMORY[0x28223BE20](v119);
  v112 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v117 = &v106 - v33;
  v34 = *(v2 + 232);
  v35 = sub_224DAC148();

  v36 = sub_224D8E32C(v35, a1);

  v37 = *(v36 + 16);
  if (v37)
  {
    v107 = v7;
    v108 = v9;
    v109 = v8;
    v110 = v3;
    v143 = MEMORY[0x277D84F90];
    sub_224ADA49C(0, v37, 0);
    v142 = v143;
    v38 = v36 + 64;
    v39 = -1 << *(v36 + 32);
    result = sub_224DAF798();
    v41 = result;
    v42 = 0;
    v132 = v25 + 32;
    v133 = v25 + 16;
    v125 = v36 + 72;
    v43 = v126;
    v44 = v25;
    v127 = v37;
    v128 = v15;
    v129 = v36 + 64;
    v130 = v36;
    v131 = v25;
    while ((v41 & 0x8000000000000000) == 0 && v41 < 1 << *(v36 + 32))
    {
      v48 = v41 >> 6;
      if ((*(v38 + 8 * (v41 >> 6)) & (1 << v41)) == 0)
      {
        goto LABEL_35;
      }

      v49 = *(v36 + 36);
      v139 = v42;
      v140 = v49;
      v50 = *(v36 + 48);
      v141 = *(v44 + 72);
      v51 = v134;
      (*(v44 + 16))(v134, v50 + v141 * v41, v43);
      v52 = *(*(v36 + 56) + 8 * v41);
      v53 = *(v44 + 32);
      v54 = v135;
      v53(v135, v51, v43);
      v55 = v137;
      *&v54[*(v137 + 48)] = v52;
      v56 = v54;
      v57 = v136;
      sub_224A44E4C(v56, v136, &qword_27D6F6D38, &unk_224DC2010);
      v58 = *(v57 + *(v55 + 48));

      v59 = v138;
      v53(v138, v57, v43);
      v60 = v142;
      v143 = v142;
      v61 = v43;
      v63 = *(v142 + 16);
      v62 = *(v142 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_224ADA49C(v62 > 1, v63 + 1, 1);
        v59 = v138;
        v60 = v143;
      }

      *(v60 + 16) = v63 + 1;
      v64 = v131;
      v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v142 = v60;
      result = (v53)(v60 + v65 + v63 * v141, v59, v61);
      v45 = 1 << *(v130 + 32);
      if (v41 >= v45)
      {
        goto LABEL_36;
      }

      v38 = v129;
      v66 = *(v129 + 8 * v48);
      if ((v66 & (1 << v41)) == 0)
      {
        goto LABEL_37;
      }

      v44 = v64;
      v36 = v130;
      if (v140 != *(v130 + 36))
      {
        goto LABEL_38;
      }

      v67 = v66 & (-2 << (v41 & 0x3F));
      if (v67)
      {
        v43 = v61;
        v45 = __clz(__rbit64(v67)) | v41 & 0x7FFFFFFFFFFFFFC0;
        v46 = v127;
        v47 = v128;
      }

      else
      {
        v68 = v48 << 6;
        v69 = v48 + 1;
        v70 = (v125 + 8 * v48);
        v46 = v127;
        v47 = v128;
        while (v69 < (v45 + 63) >> 6)
        {
          v72 = *v70++;
          v71 = v72;
          v68 += 64;
          ++v69;
          if (v72)
          {
            result = sub_224A3E204(v41, v140, 0);
            v45 = __clz(__rbit64(v71)) + v68;
            goto LABEL_19;
          }
        }

        result = sub_224A3E204(v41, v140, 0);
LABEL_19:
        v43 = v126;
      }

      v42 = v139 + 1;
      v41 = v45;
      if (v139 + 1 == v46)
      {

        v73 = v121;
        v74 = *(v121 + 104);
        v75 = v122;
        v76 = v123;
        v74(v122, *MEMORY[0x277CF9BB8], v123);
        v77 = sub_224DACB88();
        v78 = *(v73 + 8);
        v78(v75, v76);
        if (v77)
        {
          v79 = v118;
          v80 = v117;
          v81 = v119;
          (*(v118 + 104))(v117, *MEMORY[0x277CF9B48], v119);
          v82 = v113;
          v47 = v111;
          v83 = v120;
          (*(v113 + 16))(v111, v110 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v120);
          v84 = v142;

          v85 = sub_224DAB228();
          v86 = sub_224DAF2A8();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = v47;
            v88 = v82;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v143 = v90;
            *v89 = 136446210;
            v91 = MEMORY[0x22AA5D380](v84, v126);
            v93 = sub_224A33F74(v91, v92, &v143);
            v79 = v118;

            *(v89 + 4) = v93;
            v80 = v117;
            v94 = "Reloading timeline at cost for %{public}s due to external trigger (significant location change).";
            goto LABEL_31;
          }

LABEL_32:

          (*(v82 + 8))(v47, v83);
        }

        else
        {
          v74(v75, *MEMORY[0x277CF9BC0], v76);
          v95 = sub_224DACB88();
          v78(v75, v76);
          v79 = v118;
          v80 = v117;
          v81 = v119;
          (*(v118 + 104))(v117, *MEMORY[0x277CF9B40], v119);
          v82 = v113;
          v96 = *(v113 + 16);
          v97 = v110 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
          if (v95)
          {
            v47 = v106;
            v83 = v120;
            v96(v106, v97, v120);
            v84 = v142;

            v85 = sub_224DAB228();
            v86 = sub_224DAF2A8();

            if (!os_log_type_enabled(v85, v86))
            {
              goto LABEL_32;
            }

            v87 = v47;
            v88 = v82;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v143 = v90;
            *v89 = 136446210;
            v98 = MEMORY[0x22AA5D380](v84, v126);
            v100 = sub_224A33F74(v98, v99, &v143);
            v79 = v118;

            *(v89 + 4) = v100;
            v80 = v117;
            v94 = "Reloading timeline at cost for %{public}s due to external trigger (deferred location update now visible).";
          }

          else
          {
            v83 = v120;
            v96(v47, v97, v120);
            v84 = v142;

            v85 = sub_224DAB228();
            v86 = sub_224DAF2A8();

            if (!os_log_type_enabled(v85, v86))
            {
              goto LABEL_32;
            }

            v87 = v47;
            v88 = v82;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v143 = v90;
            *v89 = 136446210;
            v101 = MEMORY[0x22AA5D380](v84, v126);
            v103 = sub_224A33F74(v101, v102, &v143);
            v79 = v118;

            *(v89 + 4) = v103;
            v80 = v117;
            v94 = "Reloading timeline for free for %{public}s due to external trigger.";
          }

LABEL_31:
          _os_log_impl(&dword_224A2F000, v85, v86, v94, v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v90);
          v104 = v90;
          v81 = v119;
          MEMORY[0x22AA5EED0](v104, -1, -1);
          MEMORY[0x22AA5EED0](v89, -1, -1);

          (*(v88 + 8))(v87, v120);
        }

        v105 = v116;
        (*(v114 + 104))(v107, *MEMORY[0x277CF9B50], v115);
        (*(v79 + 16))(v112, v80, v81);
        (*(v121 + 16))(v122, v124, v123);
        sub_224DACC48();
        sub_224DACC38();
        sub_224A3933C(v84, v105);

        (*(v108 + 8))(v105, v109);
        return (*(v79 + 8))(v80, v81);
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_224D7C504(uint64_t a1)
{
  v34 = a1;
  v1 = sub_224DAE918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-v7];
  v9 = sub_224DAB258();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = v9;
    v33 = v6;
    (*(v10 + 16))(v13, result + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v9);
    v31 = *(v2 + 16);
    v31(v8, v34, v1);
    v16 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v18;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v18 = 136446210;
      sub_224A94F2C(&qword_281350C28, MEMORY[0x277CE3D70]);
      v28 = v17;
      v19 = sub_224DAFD28();
      v21 = v20;
      (*(v2 + 8))(v8, v1);
      v22 = sub_224A33F74(v19, v21, &v35);

      v23 = v29;
      *(v29 + 1) = v22;
      v24 = v23;
      _os_log_impl(&dword_224A2F000, v16, v28, "Protection Type changed to %{public}s", v23, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    else
    {

      (*(v2 + 8))(v8, v1);
    }

    (*(v10 + 8))(v13, v32);
    v26 = *(v15 + 232);
    v31(v33, v34, v1);
    sub_224DAC0A8();
  }

  return result;
}

uint64_t sub_224D7C878(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D7C8D8(v1);
  }

  return result;
}

uint64_t sub_224D7C8D8(uint64_t a1)
{
  v45 = sub_224DACB98();
  v43 = *(v45 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DACB08();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACB28();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DACC88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB258();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    v23 = sub_224A3DADC(v22);

    v25 = *(v46 + 232);
    MEMORY[0x28223BE20](v24);
    *(&v34 - 2) = v23;
    *(&v34 - 1) = v26;
    sub_224DAC128();
  }

  else
  {
    v34 = v8;
    v35 = v16;
    v36 = v11;
    v37 = v13;
    v38 = v12;
    v39 = v4;
    v40 = v7;
    v28 = v19;
    (*(v19 + 16))(v21, v46 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v17);
    v29 = sub_224DAB228();
    v30 = sub_224DAF2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_224A2F000, v29, v30, "Locale change detected - reloading all timelines", v31, 2u);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    (*(v28 + 8))(v21, v17);
    v32 = *(v46 + 232);
    (*(v41 + 104))(v36, *MEMORY[0x277CF9B50], v34);
    (*(v42 + 104))(v40, *MEMORY[0x277CF9B40], v39);
    (*(v43 + 104))(v44, *MEMORY[0x277CF9BA8], v45);
    sub_224DACC48();
    v33 = v35;
    sub_224DACC38();
    sub_224DAC158();
    return (*(v37 + 8))(v33, v38);
  }
}

uint64_t sub_224D7CD80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_persistentSubscriptions;
  swift_beginAccess();
  v36 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224A94F2C(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    result = sub_224DAF1F8();
    v7 = v38;
    v6 = v39;
    v8 = v40;
    v9 = v41;
    v10 = v42;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v3 + 56);
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v3;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_20:
      sub_224A3B7E4();

      v20 = v1[2];
      swift_unknownObjectRelease();
      v21 = v1[4];

      v22 = v1[5];

      v23 = v1[6];

      v24 = v1[7];

      v25 = v1[8];

      __swift_destroy_boxed_opaque_existential_1(v1 + 9);
      __swift_destroy_boxed_opaque_existential_1(v1 + 14);
      __swift_destroy_boxed_opaque_existential_1(v1 + 19);
      __swift_destroy_boxed_opaque_existential_1(v1 + 24);
      v26 = v1[29];

      v27 = v1[30];

      v28 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
      v29 = sub_224DAB258();
      (*(*(v29 - 8) + 8))(v1 + v28, v29);
      v30 = *(v1 + v36);

      v31 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentSubscriptions);

      v32 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_configurationLifetimeAssertions);

      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_processMonitor));

      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_protectionLevelProvider));
      v33 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentModificationContext);

      v34 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadFilters);

      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorObserver));
      v35 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount);

      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider));
      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_taskService));
      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService));
      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider));
      return v1;
    }

    while (1)
    {
      sub_224DAB328();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_20;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D7D134()
{
  sub_224D7CD80();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224D7D194()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224D7D298(uint64_t *a1)
{
  v2 = sub_224DACB98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = v7 + 32;
      v11 = *MEMORY[0x277CF9B98];
      v12 = (v3 + 104);
      v13 = (v3 + 8);
      do
      {
        sub_224A3317C(v10, v14);
        (*v12)(v6, v11, v2);
        sub_224D7D408(v14, 0, v6);
        __swift_destroy_boxed_opaque_existential_1(v14);
        (*v13)(v6, v2);
        v10 += 40;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_224D7D408(void *a1, int a2, uint64_t a3)
{
  v111 = a3;
  v109 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v4 = *(*(v121 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v121);
  v120 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v119 = &v96 - v8;
  MEMORY[0x28223BE20](v7);
  v118 = &v96 - v9;
  v127 = sub_224DABE18();
  v125 = *(v127 - 8);
  v10 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v122 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_224DACB08();
  v106 = *(v107 - 8);
  v12 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v108 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_224DACB28();
  v100 = *(v101 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v103 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_224DACC88();
  v104 = *(v105 - 8);
  v16 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_224DACB98();
  v124 = *(v110 - 8);
  v18 = *(v124 + 64);
  v19 = MEMORY[0x28223BE20](v110);
  v99 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v96 - v21;
  v23 = sub_224DA9878();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v96 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v126 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = sub_224DAE338();
  LOBYTE(v33) = [v35 isRemote];

  if ((v33 & 1) == 0)
  {
    v36 = v126[4];
    __swift_project_boxed_opaque_existential_1(v126, v126[3]);
    v37 = sub_224DAE338();
    sub_224DAF528();

    v38 = *(v112 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 32);
    __swift_project_boxed_opaque_existential_1((v112 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService), *(v112 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 24));
    sub_224DA9868();
    sub_224DAD1B8();
    (*(v24 + 8))(v27, v23);
    (*(v29 + 8))(v32, v28);
  }

  if (qword_281351410 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v39 = sub_224DAB258();
    __swift_project_value_buffer(v39, qword_281364D30);
    sub_224A3317C(v126, v129);
    v40 = v124;
    v41 = v124 + 16;
    v42 = v110;
    v97 = *(v124 + 16);
    v97(v22, v111, v110);
    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();
    v45 = os_log_type_enabled(v43, v44);
    v98 = v41;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v128 = v123;
      *v46 = 138543874;
      __swift_project_boxed_opaque_existential_1(v129, v129[3]);
      v48 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(v129);
      *(v46 + 4) = v48;
      *v47 = v48;
      *(v46 + 12) = 1026;
      *(v46 + 14) = v109 & 1;
      *(v46 + 18) = 2082;
      sub_224A94F2C(&unk_281350D28, MEMORY[0x277CF9BF8]);
      v49 = sub_224DAFD28();
      v51 = v50;
      (*(v40 + 8))(v22, v42);
      v52 = sub_224A33F74(v49, v51, &v128);

      *(v46 + 20) = v52;
      _os_log_impl(&dword_224A2F000, v43, v44, "Reload requested for %{public}@ as budgeted: %{BOOL,public}d for reason: %{public}s", v46, 0x1Cu);
      sub_224A3311C(v47, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v47, -1, -1);
      v53 = v123;
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x22AA5EED0](v53, -1, -1);
      MEMORY[0x22AA5EED0](v46, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v22, v42);
      __swift_destroy_boxed_opaque_existential_1(v129);
    }

    v54 = v125;
    v55 = *(v112 + 232);
    v56 = sub_224DAC148();
    MEMORY[0x28223BE20](v56);
    *(&v96 - 2) = v126;
    v57 = sub_224BA08E4(sub_224D8DF48, (&v96 - 4), v56);

    v58 = *(v57 + 16);
    if (!v58)
    {
      break;
    }

    v129[0] = MEMORY[0x277D84F90];
    sub_224ADA49C(0, v58, 0);
    v126 = v129[0];
    v59 = v57 + 64;
    v60 = -1 << *(v57 + 32);
    v61 = sub_224DAF798();
    v62 = 0;
    v117 = v54 + 16;
    v22 = (v54 + 32);
    v113 = v57 + 72;
    v63 = v127;
    v114 = v58;
    v115 = v57 + 64;
    v116 = v57;
    while ((v61 & 0x8000000000000000) == 0 && v61 < 1 << *(v57 + 32))
    {
      v65 = v61 >> 6;
      if ((*(v59 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
      {
        goto LABEL_31;
      }

      v66 = *(v57 + 36);
      v123 = v62;
      v124 = v66;
      v67 = *(v57 + 48);
      v125 = *(v54 + 72);
      v68 = v118;
      (*(v54 + 16))(v118, v67 + v125 * v61, v63);
      v69 = *(*(v57 + 56) + 8 * v61);
      v70 = *(v54 + 32);
      v71 = v119;
      v70(v119, v68, v127);
      v72 = v121;
      *&v71[*(v121 + 48)] = v69;
      v73 = v71;
      v74 = v120;
      sub_224A44E4C(v73, v120, &qword_27D6F6D38, &unk_224DC2010);
      v75 = v54;
      v76 = *(v74 + *(v72 + 48));

      v77 = v122;
      v78 = v74;
      v63 = v127;
      v70(v122, v78, v127);
      v79 = v126;
      v129[0] = v126;
      v81 = v126[2];
      v80 = v126[3];
      if (v81 >= v80 >> 1)
      {
        sub_224ADA49C(v80 > 1, v81 + 1, 1);
        v77 = v122;
        v79 = v129[0];
      }

      v79[2] = v81 + 1;
      v82 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v126 = v79;
      v70(v79 + v82 + v81 * v125, v77, v63);
      v64 = 1 << *(v116 + 32);
      if (v61 >= v64)
      {
        goto LABEL_32;
      }

      v59 = v115;
      v83 = *(v115 + 8 * v65);
      if ((v83 & (1 << v61)) == 0)
      {
        goto LABEL_33;
      }

      v54 = v75;
      v57 = v116;
      if (v124 != *(v116 + 36))
      {
        goto LABEL_34;
      }

      v84 = v83 & (-2 << (v61 & 0x3F));
      if (v84)
      {
        v64 = __clz(__rbit64(v84)) | v61 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v85 = v65 << 6;
        v86 = v65 + 1;
        v87 = (v113 + 8 * v65);
        while (v86 < (v64 + 63) >> 6)
        {
          v89 = *v87++;
          v88 = v89;
          v85 += 64;
          ++v86;
          if (v89)
          {
            sub_224A3E204(v61, v124, 0);
            v64 = __clz(__rbit64(v88)) + v85;
            goto LABEL_10;
          }
        }

        sub_224A3E204(v61, v124, 0);
      }

LABEL_10:
      v62 = (v123 + 1);
      v61 = v64;
      if ((v123 + 1) == v114)
      {

        v90 = v108;
        v91 = v107;
        v92 = v126;
        goto LABEL_27;
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
    swift_once();
  }

  v92 = MEMORY[0x277D84F90];
  v90 = v108;
  v91 = v107;
LABEL_27:
  (*(v100 + 104))(v103, *MEMORY[0x277CF9B50], v101);
  v93 = MEMORY[0x277CF9B48];
  if ((v109 & 1) == 0)
  {
    v93 = MEMORY[0x277CF9B40];
  }

  (*(v106 + 104))(v90, *v93, v91);
  v97(v99, v111, v110);
  sub_224DACC48();
  v94 = v102;
  sub_224DACC38();
  sub_224A3933C(v92, v94);

  return (*(v104 + 8))(v94, v105);
}

uint64_t sub_224D7E0BC(uint64_t *a1)
{
  v83 = sub_224DAC268();
  v77 = *(v83 - 8);
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v83);
  v76 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - v9;
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = v64;
  v58 = *(v15 + 16);
  if (!v58)
  {
  }

  v19 = v15;
  v20 = 0;
  v59 = v15 + 32;
  v66 = v12 + 16;
  v65 = (v12 + 8);
  v74 = v77 + 16;
  v73 = v77 + 32;
  v82 = "Reloading all content: ";
  v81 = (v77 + 8);
  v75 = v10;
  v80 = v8;
  v63 = v11;
  v62 = v12;
  v57 = v15;
  v61 = result;
  while (1)
  {
    if (v20 >= *(v19 + 16))
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v60 = v20;
    sub_224A3317C(v59 + 40 * v20, v87);
    v22 = *(v17 + 232);
    v23 = sub_224DAC108();
    v70 = *(v23 + 16);
    if (v70)
    {
      break;
    }

LABEL_4:

    v21 = v60 + 1;
    result = __swift_destroy_boxed_opaque_existential_1(v87);
    v20 = v21;
    v19 = v57;
    if (v21 == v58)
    {
    }
  }

  v24 = v23;
  v69 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  result = v24;
  v25 = 0;
  v68 = result + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v67 = result;
  while (1)
  {
    if (v25 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v26 = *(v12 + 72);
    v71 = v25;
    (*(v12 + 16))(v18, v68 + v26 * v25, v11);
    v27 = sub_224DABDB8();
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v28 = sub_224DAE338();
    v29 = sub_224DAF6A8();

    v30 = v80;
    if (v29)
    {
      v31 = *(v17 + 232);
      v32 = sub_224DAC168();
      if (v32)
      {
        break;
      }
    }

LABEL_9:
    v25 = v71 + 1;
    (*v65)(v18, v11);
    result = v67;
    if (v25 == v70)
    {
      goto LABEL_4;
    }
  }

  v33 = 0;
  v79 = v32;
  v34 = *(v32 + 64);
  v72 = v32 + 64;
  v35 = 1 << *(v32 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v78 = v38;
  if ((v36 & v34) != 0)
  {
    while (1)
    {
      v39 = v33;
LABEL_25:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v79;
      v45 = v76;
      v46 = v77;
      v47 = v83;
      (*(v77 + 16))(v76, *(v79 + 48) + *(v77 + 72) * v43, v83);
      v48 = *(*(v44 + 56) + 8 * v43);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v50 = *(v49 + 48);
      v51 = *(v46 + 32);
      v30 = v80;
      v51(v80, v45, v47);
      *(v30 + v50) = v48;
      (*(*(v49 - 8) + 56))(v30, 0, 1, v49);
      v52 = v48;
      v41 = v39;
      v10 = v75;
      v38 = v78;
LABEL_26:
      sub_224A44E4C(v30, v10, &qword_27D6F47F0, &unk_224DB7850);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      if ((*(*(v53 - 8) + 48))(v10, 1, v53) == 1)
      {
        break;
      }

      v54 = *&v10[*(v53 + 48)];
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      sub_224DABE78();
      sub_224DABE28();

      (*v81)(v10, v83);
      v33 = v41;
      if (!v37)
      {
        goto LABEL_18;
      }
    }

    v11 = v63;
    v12 = v62;
    v18 = v64;
    v17 = v61;
    goto LABEL_9;
  }

LABEL_18:
  if (v38 <= v33 + 1)
  {
    v40 = v33 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      (*(*(v55 - 8) + 56))(v30, 1, 1, v55);
      v37 = 0;
      goto LABEL_26;
    }

    v37 = *(v72 + 8 * v39);
    ++v33;
    if (v37)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t sub_224D7E7CC(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v3 = sub_224DAC268();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = sub_224DAB258();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v52 = v15;
    v53 = a2;
    v51 = v16;
    (*(v16 + 16))(v19, Strong + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v15);

    v21 = v8[2];
    v22 = v55;
    v21(v14, v55, v7);
    v21(v12, v22, v7);
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v47 = v25;
      v50 = swift_slowAlloc();
      v56[0] = v50;
      *v25 = 136446466;
      v49 = v24;
      sub_224DAC838();
      v46 = sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978]);
      v26 = sub_224DAFD28();
      v48 = v23;
      v27 = v3;
      v29 = v28;
      v45 = *(v54 + 8);
      v45(v6, v27);
      v44 = v8[1];
      v44(v14, v7);
      v30 = sub_224A33F74(v26, v29, v56);
      v3 = v27;

      v31 = v47;
      *(v47 + 1) = v30;
      *(v31 + 6) = 2082;
      sub_224DAC838();
      v32 = sub_224DAFD28();
      v34 = v33;
      v45(v6, v3);
      v44(v12, v7);
      v35 = sub_224A33F74(v32, v34, v56);

      *(v31 + 14) = v35;
      v36 = v48;
      _os_log_impl(&dword_224A2F000, v48, v49, "%{public}s:%{public}s Marking variant removed from store.", v31, 0x16u);
      v37 = v50;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v37, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    else
    {

      v38 = v8[1];
      v38(v12, v7);
      v38(v14, v7);
    }

    (*(v51 + 8))(v19, v52);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v40 = *(result + 16);
    v41 = *(result + 24);
    v42 = v54;
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_224DAC838();
    v43 = *(v41 + 16);
    sub_224DAC478();
    swift_unknownObjectRelease();
    return (*(v42 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_224D7ED34()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D7ED8C();
  }

  return result;
}

void sub_224D7ED8C()
{
  v1 = sub_224DAD158();
  v182 = *(v1 - 8);
  v2 = *(v182 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v190 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v211 = &v173 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v198 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v212 = &v173 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v200 = &v173 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v173 - v15;
  MEMORY[0x28223BE20](v14);
  v223 = &v173 - v17;
  v206 = sub_224DABE18();
  v18 = *(v206 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v206);
  v208 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v199 = &v173 - v23;
  v24 = sub_224DAC268();
  v202 = *(v24 - 8);
  v25 = *(v202 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v174 = &v173 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v221 = &v173 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v197 = &v173 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v201 = &v173 - v33;
  MEMORY[0x28223BE20](v32);
  v228 = &v173 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v177 = *(v35 - 8);
  v36 = *(v177 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v209 = &v173 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v176 = &v173 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v173 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v185 = &v173 - v45;
  v235 = MEMORY[0x277D84F98];
  v46 = v0[12];
  v47 = v0[13];
  v207 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 9, v46);
  (*(v47 + 32))(v234, 769, v46, v47);
  if (!v234[5])
  {
    sub_224A3311C(v234, &qword_27D6F50E0, &qword_224DB41A0);
    return;
  }

  v48 = sub_224A86CAC();
  sub_224A699F0(v234);
  if (v48)
  {
    v220 = v24;
    v179 = v44;
    v49 = *(v48 + 64);
    v180 = v48 + 64;
    v50 = 1 << *(v48 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v187 = v51 & v49;
    v173 = (v50 + 63) >> 6;
    v191 = (v177 + 16);
    v183 = (v177 + 32);
    v196 = (v177 + 56);
    v227 = (v202 + 16);
    v205 = (v18 + 8);
    v195 = (v182 + 56);
    v181 = v182 + 16;
    v219 = (v182 + 48);
    v194 = (v182 + 32);
    v188 = (v182 + 8);
    v222 = (v202 + 8);
    v193 = v202 + 32;
    v178 = (v177 + 8);
    v175 = v48;

    v52 = 0;
    v224 = 0;
    v189 = xmmword_224DB2780;
    v230 = MEMORY[0x277D84F90];
    v226 = MEMORY[0x277D84F90];
    v210 = v1;
    v213 = v35;
    v53 = v209;
    v192 = v16;
    while (1)
    {
      v54 = v185;
      v55 = v187;
      if (v187)
      {
        v186 = v52;
        v56 = v52;
        goto LABEL_17;
      }

      v57 = v173 <= v52 + 1 ? v52 + 1 : v173;
      v58 = v57 - 1;
      do
      {
        v56 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_92;
        }

        if (v56 >= v173)
        {
          v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
          v68 = v179;
          (*(*(v159 - 8) + 56))(v179, 1, 1, v159);
          v187 = 0;
          v186 = v58;
          goto LABEL_18;
        }

        v55 = *(v180 + 8 * v56);
        ++v52;
      }

      while (!v55);
      v186 = v56;
LABEL_17:
      v187 = (v55 - 1) & v55;
      v59 = __clz(__rbit64(v55)) | (v56 << 6);
      v60 = v175;
      v61 = v177;
      v62 = v176;
      v63 = v213;
      (*(v177 + 16))(v176, *(v175 + 48) + *(v177 + 72) * v59, v213);
      v64 = *(*(v60 + 56) + 8 * v59);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v66 = *(v65 + 48);
      v67 = *(v61 + 32);
      v68 = v179;
      v67(v179, v62, v63);
      *(v68 + v66) = v64;
      (*(*(v65 - 8) + 56))(v68, 0, 1, v65);
      v69 = v64;
      v53 = v209;
      v54 = v185;
LABEL_18:
      sub_224A44E4C(v68, v54, &qword_27D6F4930, &unk_224DB8D00);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v70 - 8) + 48))(v54, 1, v70) == 1)
      {

        v160 = v207;
        v161 = *(v207 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentModificationContext);
        v162 = v235;

        sub_224DADDC8();

        v163 = v160[30];
        os_unfair_lock_lock(*(v163 + 16));
        v164 = *(v160 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_configurationLifetimeAssertions);
        *(v160 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_configurationLifetimeAssertions) = v226;

        os_unfair_lock_unlock(*(v163 + 16));
        v165 = v230[2];
        v166 = v220;
        if (v165)
        {
          v229 = v162;
          v167 = v160[29];
          v168 = v230 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
          v169 = *(v202 + 16);
          v231 = *(v202 + 72);
          v232 = v169;
          v170 = v201;
          v171 = v169;
          do
          {
            v171(v170, v168, v166);
            v171(v174, v170, v166);
            v172 = sub_224DABD88();
            MEMORY[0x28223BE20](v172);
            *(&v173 - 4) = v208;
            *(&v173 - 3) = v170;
            *(&v173 - 2) = v207;
            sub_224DAC128();
            (*v205)(v208, v206);
            (*v222)(v170, v166);
            v168 = &v231[v168];
            --v165;
          }

          while (v165);
        }

        return;
      }

      v71 = *(v54 + *(v70 + 48));
      (*v183)(v53, v54, v213);
      v184 = v71;
      v72 = [v71 containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v73 = sub_224DAF008();

      v74 = v224;
      v75 = sub_224A7B5CC(v73);
      v224 = v74;

      v76 = v75 >> 62 ? sub_224DAF838() : *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v77 = &off_27853F000;
      v78 = &off_27853F000;
      if (v76)
      {
        break;
      }

LABEL_6:

      v53 = v209;
      (*v178)(v209, v213);
      v52 = v186;
    }

    v79 = 0;
    v229 = v75 & 0xC000000000000001;
    v214 = v75 & 0xFFFFFFFFFFFFFF8;
    v204 = v75;
    v203 = v76;
    while (1)
    {
      if (v229)
      {
        v81 = MEMORY[0x22AA5DCC0](v79, v75);
      }

      else
      {
        if (v79 >= *(v214 + 16))
        {
          goto LABEL_91;
        }

        v81 = *(v75 + 8 * v79 + 32);
      }

      v82 = v81;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
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
        return;
      }

      v232 = (v79 + 1);
      v83 = [v81 v77[322]];
      v84 = [v83 v78[458]];
      v85 = v82;
      if (v84)
      {
        v80 = v84;
      }

      else
      {
        v231 = v82;
        v86 = [v82 refreshStrategy];
        objc_opt_self();
        v87 = swift_dynamicCastObjCClass();
        v88 = v87;
        if (v87)
        {
          if ([v87 isDisabledStrategy])
          {

            swift_unknownObjectRelease();
            goto LABEL_24;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v217 = v88;
        v89 = v231;
        v90 = [v231 metrics];
        v91 = [v89 container];
        if (v91)
        {
          v92 = v91;
          v218 = [v91 canAppearInSecureEnvironment];
        }

        else
        {
          v218 = 0;
        }

        v93 = v213;
        v94 = v227;
        v95 = v209;
        sub_224DAA1F8();
        v96 = sub_224DAA048();

        if (v96)
        {
          v97 = v199;
          (*v191)(v199, v95, v93);
          v98 = 0;
          v99 = v201;
        }

        else
        {
          v98 = 1;
          v99 = v201;
          v97 = v199;
        }

        (*v196)(v97, v98, 1, v93);
        v100 = v90;
        v101 = v83;
        v102 = v228;
        v215 = v101;
        sub_224DAC228();
        v225 = *v94;
        (v225)(v99, v102, v220);
        v103 = v208;
        sub_224DABD88();
        v104 = v207;
        v105 = v207[29];
        v106 = sub_224DAD288();
        MEMORY[0x28223BE20](v106);
        *(&v173 - 4) = v103;
        *(&v173 - 3) = v102;
        *(&v173 - 2) = v104;
        v107 = v224;
        sub_224DAC128();
        (*v205)(v103, v206);
        sub_224A3317C(v234, &v233);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v226 = sub_224AD97A8(0, v226[2] + 1, 1, v226);
        }

        v108 = v200;
        v110 = v226[2];
        v109 = v226[3];
        if (v110 >= v109 >> 1)
        {
          v226 = sub_224AD97A8((v109 > 1), v110 + 1, 1, v226);
        }

        v111 = v226;
        v226[2] = v110 + 1;
        sub_224A36F98(&v233, &v111[5 * v110 + 4]);
        v112 = v235;
        v113 = *(v235 + 16);
        v224 = v107;
        v216 = v100;
        if (v113 && (v114 = sub_224A61E5C(v228), (v115 & 1) != 0))
        {
          (*(v182 + 16))(v223, *(v112 + 56) + *(v182 + 72) * v114, v1);
          v116 = 0;
        }

        else
        {
          v116 = 1;
        }

        v117 = *v195;
        v118 = v223;
        (*v195)(v223, v116, 1, v1);
        v117(v16, 1, 1, v1);
        sub_224A3796C(v118, v108, &qword_27D6F5238, &qword_224DBB1E0);
        v119 = *v219;
        if ((*v219)(v108, 1, v1) == 1)
        {
          sub_224A3311C(v108, &qword_27D6F5238, &qword_224DBB1E0);
          v120 = v212;
          sub_224D8A0A0(v231);
          v117(v120, 0, 1, v1);
          sub_224C089E8(v120, v16);
          v121 = v119;
          if (v119(v16, 1, v1) == 1)
          {
            goto LABEL_100;
          }

          sub_224DACFF8();
          v122 = v198;
          v123 = v197;
          v1 = v210;
        }

        else
        {
          (*v194)(v211, v108, v1);
          v124 = v212;
          sub_224DAD148();
          v117(v124, 0, 1, v1);
          sub_224C089E8(v124, v16);
          sub_224DACFE8();
          if (v119(v16, 1, v1) == 1)
          {
            goto LABEL_99;
          }

          v121 = v119;
          sub_224DACFF8();
          sub_224DAD088();
          if (v119(v16, 1, v1) == 1)
          {
            goto LABEL_98;
          }

          sub_224DAD098();
          v125 = [v231 supportedColorSchemes];
          if (v119(v16, 1, v1) == 1)
          {
            goto LABEL_97;
          }

          v127 = sub_224DAD078();
          if ((v125 & ~*v126) != 0)
          {
            *v126 |= v125;
          }

          v127(&v233, 0);
          sub_224DAD0B8();
          if (v119(v16, 1, v1) == 1)
          {
            goto LABEL_96;
          }

          sub_224DAD0C8();
          v128 = [v231 supportedRenderSchemes];
          sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
          v129 = sub_224DAF008();

          *&v233 = v129;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D50, &qword_224DC20C8);
          sub_224A33088(&qword_281350B70, &qword_27D6F6D50, &qword_224DC20C8);
          v130 = sub_224DAEF58();

          v131 = sub_224AE97C0(v130);

          if (v119(v16, 1, v1) == 1)
          {
            goto LABEL_95;
          }

          v132 = sub_224DAD0A8();
          sub_224C70AB4(v131);
          v132(&v233, 0);
          if ((sub_224DAD0F8() & 1) == 0)
          {
            [v231 supportsLowLuminance];
          }

          if (v121(v16, 1, v1) == 1)
          {
            goto LABEL_94;
          }

          sub_224DAD108();
          if ((sub_224DAD018() & 1) == 0)
          {
            [v231 showsWidgetLabel];
          }

          if (v121(v16, 1, v1) == 1)
          {
            goto LABEL_93;
          }

          sub_224DAD028();
          sub_224DAD128();
          if (v121(v16, 1, v1) == 1)
          {
            goto LABEL_104;
          }

          sub_224DAD138();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          inited = swift_initStackObject();
          *(inited + 16) = v189;
          *(inited + 32) = [v231 displayProperties];
          v134 = sub_224AE995C(inited);
          swift_setDeallocating();
          v135 = *(inited + 16);
          swift_arrayDestroy();
          if (v121(v16, 1, v1) == 1)
          {
            goto LABEL_103;
          }

          v136 = sub_224DAD118();
          sub_224C70AE0(v134);
          v136(&v233, 0);
          v137 = v211;
          sub_224DAD058();
          if (v121(v16, 1, v1) == 1)
          {
            goto LABEL_102;
          }

          sub_224DAD068();
          v138 = [v231 supportedProximities];
          if (v121(v16, 1, v1) == 1)
          {
            goto LABEL_101;
          }

          v140 = sub_224DAD048();
          if ((v138 & ~*v139) != 0)
          {
            *v139 |= v138;
          }

          v140(&v233, 0);
          (*v188)(v137, v1);
          v122 = v198;
          v123 = v197;
        }

        v141 = v16;
        v142 = v228;
        v143 = v123;
        v144 = v220;
        v225();
        sub_224A3796C(v141, v122, &qword_27D6F5238, &qword_224DBB1E0);
        if (v121(v122, 1, v1) == 1)
        {
          sub_224A3311C(v122, &qword_27D6F5238, &qword_224DBB1E0);
          v145 = v212;
          sub_224B0DC70(v143, v212);
          sub_224A3311C(v145, &qword_27D6F5238, &qword_224DBB1E0);
          v146 = *v222;
          (*v222)(v143, v144);
        }

        else
        {
          v147 = v190;
          (*v194)(v190, v122, v1);
          v148 = v235;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v233 = v148;
          sub_224B224C8(v147, v143, isUniquelyReferenced_nonNull_native);
          v146 = *v222;
          (*v222)(v143, v144);
          v235 = v233;
        }

        v150 = v144;
        v151 = v216;
        (v225)(v221, v142, v144);
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v153 = v192;
        if (v152)
        {
          v154 = v210;
          v155 = v230;
        }

        else
        {
          v155 = sub_224AD93E4(0, v230[2] + 1, 1, v230);
          v154 = v210;
        }

        v157 = v155[2];
        v156 = v155[3];
        if (v157 >= v156 >> 1)
        {
          v230 = sub_224AD93E4(v156 > 1, v157 + 1, 1, v155);
        }

        else
        {
          v230 = v155;
        }

        sub_224A3311C(v223, &qword_27D6F5238, &qword_224DBB1E0);
        __swift_destroy_boxed_opaque_existential_1(v234);
        v158 = v230;
        v230[2] = v157 + 1;
        (*(v202 + 32))(v158 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v157, v221, v150);
        v146(v228, v150);
        sub_224A3311C(v153, &qword_27D6F5238, &qword_224DBB1E0);
        v77 = &off_27853F000;
        v78 = &off_27853F000;
        v75 = v204;
        v76 = v203;
        v1 = v154;
        v16 = v153;
      }

LABEL_24:
      ++v79;
      if (v232 == v76)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_224D80834(uint64_t a1)
{
  v3 = *(v1 + 232);
  v4 = sub_224DAC148();
  if (*(v4 + 16) && (v5 = sub_224B0BDA0(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = sub_224D5CF3C(v7);

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_224D808C8(uint64_t a1, unint64_t a2)
{
  v41 = a2;
  v3 = sub_224DACC88();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAC268();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_224DABE18();
  v36 = *(v40 - 8);
  v9 = v36;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v34);
  v16 = &v33 - v15;
  v17 = sub_224DAC248();
  v18 = [v17 extensionIdentity];

  sub_224DAF528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  v33 = xmmword_224DB3100;
  *(inited + 16) = xmmword_224DB3100;
  v20 = sub_224DAC248();
  v21 = [v20 kind];

  v22 = sub_224DAEE18();
  v24 = v23;

  *(inited + 32) = v22;
  *(inited + 40) = v24;
  v25 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224D80D10(v16, v25);

  (*(v13 + 8))(v16, v34);
  (*(v37 + 16))(v35, a1, v38);
  sub_224DABD88();
  v26 = v39;
  sub_224A8571C(v41, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
  v27 = *(v36 + 72);
  v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v33;
  v30 = v40;
  (*(v9 + 16))(v29 + v28, v12, v40);
  sub_224A3933C(v29, v26);
  swift_setDeallocating();
  v31 = *(v9 + 8);
  v31(v29 + v28, v30);
  swift_deallocClassInstance();
  (*(v42 + 8))(v26, v43);
  return (v31)(v12, v30);
}

uint64_t sub_224D80D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v39 - v12;
  if (a2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider), *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 24));
    result = sub_224DAD8C8();
    if (result)
    {
      v40 = v7;
      v41 = v6;
      MEMORY[0x28223BE20](result);
      *(&v39 - 2) = a1;
      v15 = sub_224DACF48();

      sub_224DA9868();
      v39 = v15;
      v16 = sub_224DACF18();
      v17 = v16;
      v43 = a1;
      if (v16 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
      {
        v19 = 0;
        v42 = (v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService);
        v3 = v17 & 0xC000000000000001;
        v44 = v17 + 32;
        v45 = v17 & 0xFFFFFFFFFFFFFF8;
        v20 = a2 + 56;
        v46 = i;
        while (1)
        {
          if (v3)
          {
            v24 = MEMORY[0x22AA5DCC0](v19, v17);
          }

          else
          {
            if (v19 >= *(v45 + 16))
            {
              goto LABEL_26;
            }

            v24 = *(v44 + 8 * v19);
          }

          v25 = v24;
          if (__OFADD__(v19++, 1))
          {
            break;
          }

          v27 = [v24 kind];
          v28 = sub_224DAEE18();
          v30 = v29;

          if (*(a2 + 16))
          {
            v31 = *(a2 + 40);
            sub_224DAFE68();
            sub_224DAEE78();
            v32 = sub_224DAFEA8();
            v33 = -1 << *(a2 + 32);
            v34 = v32 & ~v33;
            if ((*(v20 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
            {
              v35 = ~v33;
              while (1)
              {
                v36 = (*(a2 + 48) + 16 * v34);
                v37 = *v36 == v28 && v36[1] == v30;
                if (v37 || (sub_224DAFD88() & 1) != 0)
                {
                  break;
                }

                v34 = (v34 + 1) & v35;
                if (((*(v20 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              v21 = v42[3];
              v49 = v42[4];
              v48 = __swift_project_boxed_opaque_existential_1(v42, v21);
              v22 = v17;
              v23 = [v25 kind];
              sub_224DAEE18();

              v17 = v22;
              sub_224DAD1B8();
LABEL_7:
              i = v46;
            }
          }

          if (v19 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_28:

      return (*(v40 + 8))(v47, v41);
    }
  }

  else
  {
    v38 = *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService), *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 24));
    sub_224DA9868();
    sub_224DAD1B8();
    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

id sub_224D81124(uint64_t a1)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DABE18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  sub_224DABD88();
  v13 = *(v1 + 232);
  v14 = sub_224DAC168();
  if (v14)
  {
    v15 = v14;
    if (*(v14 + 16))
    {
      v16 = sub_224A61E5C(a1);
      if (v17)
      {
        v18 = *(v9 + 8);
        v19 = *(*(v15 + 56) + 8 * v16);
        v18(v12, v8);

        return v19;
      }
    }
  }

  (*(v9 + 8))(v12, v8);
  return 0;
}

uint64_t sub_224D812FC(uint64_t a1, uint64_t a2)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v3 = *(*(v39 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v39);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - v6;
  v7 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v41 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v9 = a2 + 64;
    v10 = -1 << *(a2 + 32);
    result = sub_224DAF798();
    v11 = result;
    v12 = 0;
    v13 = *(a2 + 36);
    v34 = a2 + 72;
    v35 = v13;
    v36 = v7;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a2 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_21;
      }

      if (v13 != *(a2 + 36))
      {
        goto LABEL_22;
      }

      v40 = v12;
      v13 = v9;
      v16 = *(a2 + 48);
      v17 = a2;
      v18 = sub_224DAC268();
      v19 = *(v18 - 8);
      v20 = v38;
      (*(v19 + 16))(v38, v16 + *(v19 + 72) * v11, v18);
      v21 = *(*(v17 + 56) + 8 * v11);
      v22 = v37;
      v23 = v18;
      a2 = v17;
      (*(v19 + 32))(v37, v20, v23);
      *(v22 + *(v39 + 48)) = v21;
      v24 = v21;
      sub_224DAC248();
      sub_224A3311C(v22, &qword_27D6F47F8, &unk_224DC2000);
      sub_224DAF9B8();
      v25 = *(v41 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v14 = 1 << *(v17 + 32);
      if (v11 >= v14)
      {
        goto LABEL_23;
      }

      v26 = *(v13 + 8 * v15);
      v27 = v36;
      if ((v26 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v9 = v13;
      LODWORD(v13) = v35;
      if (v35 != *(a2 + 36))
      {
        goto LABEL_25;
      }

      v28 = v26 & (-2 << (v11 & 0x3F));
      if (v28)
      {
        v14 = __clz(__rbit64(v28)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v15 << 6;
        v30 = v15 + 1;
        v31 = (v34 + 8 * v15);
        while (v30 < (v14 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_224A3E204(v11, v35, 0);
            v14 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v11, v35, 0);
      }

LABEL_4:
      v12 = v40 + 1;
      v11 = v14;
      if (v40 + 1 == v27)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224D8165C()
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v1 = *(*(v81 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v81);
  v80 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v79 = &v64 - v5;
  MEMORY[0x28223BE20](v4);
  v78 = &v64 - v6;
  v75 = sub_224DABE18();
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D30, &qword_224DC2F60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v88 = MEMORY[0x277D84F90];
  v17 = *(v0 + 232);
  result = sub_224DAC148();
  v19 = 0;
  v20 = *(result + 64);
  v66 = result + 64;
  v71 = result;
  v21 = 1 << *(result + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v65 = (v21 + 63) >> 6;
  v68 = v7 + 16;
  v67 = v7 + 32;
  v70 = v7;
  v72 = (v7 + 8);
  v73 = v16;
  v74 = v14;
LABEL_6:
  if (v23)
  {
    v24 = v19;
LABEL_15:
    v77 = (v23 - 1) & v23;
    v27 = __clz(__rbit64(v23)) | (v24 << 6);
    v29 = v70;
    v28 = v71;
    v30 = v69;
    v31 = v75;
    (*(v70 + 16))(v69, *(v71 + 48) + *(v70 + 72) * v27, v75);
    v32 = *(*(v28 + 56) + 8 * v27);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v34 = *(v33 + 48);
    v35 = *(v29 + 32);
    v14 = v74;
    v35(v74, v30, v31);
    *&v14[v34] = v32;
    (*(*(v33 - 8) + 56))(v14, 0, 1, v33);

    v26 = v24;
    v16 = v73;
LABEL_16:
    sub_224A44E4C(v14, v16, &qword_27D6F6D30, &qword_224DC2F60);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    if ((*(*(v36 - 8) + 48))(v16, 1, v36) == 1)
    {

      return v88;
    }

    v76 = v26;
    v37 = *&v16[*(v36 + 48)];
    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;
    v84 = v37;

    v43 = 0;
    v44 = MEMORY[0x277D84F90];
    v82 = v42;
    v83 = v38;
    if (!v41)
    {
      goto LABEL_22;
    }

    do
    {
      v87 = v44;
LABEL_26:
      v46 = __clz(__rbit64(v41)) | (v43 << 6);
      v47 = v84;
      v48 = *(v84 + 48);
      v85 = sub_224DAC268();
      v49 = *(v85 - 8);
      v50 = v78;
      (*(v49 + 16))(v78, v48 + *(v49 + 72) * v46, v85);
      v51 = *(*(v47 + 56) + 8 * v46);
      v52 = v81;
      *(v50 + *(v81 + 48)) = v51;
      v53 = v79;
      sub_224A3796C(v50, v79, &qword_27D6F47F8, &unk_224DC2000);
      v54 = *(v53 + *(v52 + 48));
      v55 = v51;

      v86 = sub_224DAC248();
      v56 = *(v49 + 8);
      v57 = v85;
      v56(v53, v85);
      v58 = v80;
      sub_224A3796C(v50, v80, &qword_27D6F47F8, &unk_224DC2000);

      v59 = sub_224DAC258();
      sub_224A3311C(v50, &qword_27D6F47F8, &unk_224DC2000);
      v56(v58, v57);
      v44 = v87;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_224AD9600(0, v44[2] + 1, 1, v44);
        v44 = result;
      }

      v61 = v44[2];
      v60 = v44[3];
      v42 = v82;
      if (v61 >= v60 >> 1)
      {
        result = sub_224AD9600((v60 > 1), v61 + 1, 1, v44);
        v44 = result;
      }

      v41 &= v41 - 1;
      v44[2] = v61 + 1;
      v62 = &v44[2 * v61];
      v62[4] = v86;
      v62[5] = v59;
      v38 = v83;
    }

    while (v41);
LABEL_22:
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v42)
      {

        sub_224B42A30(v44);
        v16 = v73;
        result = (*v72)(v73, v75);
        v19 = v76;
        v23 = v77;
        v14 = v74;
        goto LABEL_6;
      }

      v41 = *(v38 + 8 * v45);
      ++v43;
      if (v41)
      {
        v87 = v44;
        v43 = v45;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    if (v65 <= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = v65;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v24 >= v65)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
        (*(*(v63 - 8) + 56))(v14, 1, 1, v63);
        v77 = 0;
        goto LABEL_16;
      }

      v23 = *(v66 + 8 * v24);
      ++v19;
      if (v23)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D81D64(uint64_t a1)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v71 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v61 = sub_224DABE18();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x277D84F90];
  v59 = *(v1 + 232);
  v19 = sub_224DAC108();
  v76 = a1;
  result = sub_224A392FC(sub_224D8E6EC, v75, v19);
  v21 = result;
  v55 = *(result + 16);
  if (v55)
  {
    v22 = 0;
    v58 = result + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v57 = v16 + 16;
    v56 = v16 + 8;
    v63 = v4 + 32;
    v64 = v4 + 16;
    v66 = v4;
    v69 = (v4 + 8);
    v70 = MEMORY[0x277D84F90];
    v74 = v13;
    v65 = v15;
    v54 = v16;
    v53 = result;
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      v23 = *(v16 + 72);
      v62 = v22;
      v25 = v60;
      v24 = v61;
      (*(v16 + 16))(v60, v58 + v23 * v22, v61);
      v26 = sub_224DAC168();
      result = (*(v16 + 8))(v25, v24);
      if (v26)
      {
        break;
      }

LABEL_4:
      v22 = v62 + 1;
      if (v62 + 1 == v55)
      {

        return v70;
      }
    }

    v27 = 0;
    v68 = v26;
    v28 = v26 + 64;
    v29 = 1 << *(v26 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v26 + 64);
    v32 = (v29 + 63) >> 6;
    v72 = v32;
    v73 = v26 + 64;
    while (v31)
    {
      v33 = v27;
LABEL_21:
      v36 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v37 = v36 | (v33 << 6);
      v39 = v67;
      v38 = v68;
      v40 = v66;
      (*(v66 + 16))(v67, *(v68 + 48) + *(v66 + 72) * v37, v3);
      v41 = *(*(v38 + 56) + 8 * v37);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v43 = *(v42 + 48);
      v44 = *(v40 + 32);
      v13 = v74;
      v44(v74, v39, v3);
      *&v13[v43] = v41;
      (*(*(v42 - 8) + 56))(v13, 0, 1, v42);
      v45 = v41;
      v15 = v65;
LABEL_22:
      sub_224A44E4C(v13, v15, &qword_27D6F47F0, &unk_224DB7850);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      if ((*(*(v46 - 8) + 48))(v15, 1, v46) == 1)
      {

        v16 = v54;
        v21 = v53;
        goto LABEL_4;
      }

      v47 = *&v15[*(v46 + 48)];
      v48 = v15;
      v49 = v71;
      sub_224DABE58();
      sub_224DAC248();
      v50 = *v69;
      v51 = (*v69)(v49, v3);
      MEMORY[0x22AA5D350](v51);
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();

      v70 = v77;
      v50(v48, v3);
      v28 = v73;
      v13 = v74;
      v15 = v48;
      v32 = v72;
    }

    if (v32 <= v27 + 1)
    {
      v34 = v27 + 1;
    }

    else
    {
      v34 = v32;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v32)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        (*(*(v52 - 8) + 56))(v13, 1, 1, v52);
        v31 = 0;
        v27 = v35;
        goto LABEL_22;
      }

      v31 = *(v28 + 8 * v33);
      ++v27;
      if (v31)
      {
        v27 = v33;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224D8238C(uint64_t a1)
{
  v88 = a1;
  v75 = sub_224DAC268();
  v83 = *(v75 - 8);
  v2 = *(v83 + 64);
  v3 = MEMORY[0x28223BE20](v75);
  v86 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v81 = v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v89 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = v71 - v10;
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v87 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = v71 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v71 - v18;
  v20 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84F90];
  v73 = *(v1 + 232);
  result = sub_224DAC108();
  v22 = result;
  v23 = *(result + 16);
  v76 = v11;
  v77 = v12;
  v85 = v23;
  if (v23)
  {
    v24 = 0;
    v84 = v12 + 16;
    v80 = (v12 + 8);
    v25 = (v12 + 32);
    v78 = MEMORY[0x277D84F90];
    while (v24 < *(v22 + 16))
    {
      v26 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v27 = *(v77 + 72);
      (*(v77 + 16))(v19, v22 + v26 + v27 * v24, v11);
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v28 = sub_224DABDB8();
      v29 = sub_224DAF6A8();

      if (v29)
      {
        v30 = *v25;
        (*v25)(v87, v19, v11);
        v31 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA49C(0, *(v31 + 16) + 1, 1);
          v31 = v90;
        }

        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_224ADA49C(v33 > 1, v34 + 1, 1);
          v31 = v90;
        }

        *(v31 + 16) = v34 + 1;
        v78 = v31;
        v35 = v31 + v26 + v34 * v27;
        v11 = v76;
        result = (v30)(v35, v87, v76);
      }

      else
      {
        result = (*v80)(v19, v11);
      }

      if (v85 == ++v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v78 = v20;
LABEL_13:

    result = v78;
    v71[0] = *(v78 + 16);
    if (!v71[0])
    {
LABEL_41:

      return MEMORY[0x277D84F90];
    }

    v36 = 0;
    v37 = v77;
    v72 = v78 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v71[2] = v77 + 16;
    v71[1] = v77 + 8;
    v38 = v82;
    v79 = v83 + 32;
    v80 = (v83 + 16);
    v39 = (v83 + 8);
    v85 = MEMORY[0x277D84F90];
    v40 = v75;
    v41 = v89;
    while (v36 < *(result + 16))
    {
      v42 = v39;
      v43 = v74;
      v44 = v76;
      (*(v37 + 16))(v74, v72 + *(v37 + 72) * v36, v76);
      v45 = sub_224DAC168();
      (*(v37 + 8))(v43, v44);
      if (v45)
      {
        v75 = v36;
        v46 = 0;
        v84 = v45;
        v47 = v45 + 64;
        v48 = 1 << *(v45 + 32);
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v50 = v49 & *(v45 + 64);
        v51 = (v48 + 63) >> 6;
        v39 = v42;
        v87 = v51;
        v88 = v45 + 64;
        while (v50)
        {
          v52 = v46;
LABEL_33:
          v55 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v56 = v55 | (v52 << 6);
          v57 = v83;
          v58 = v84;
          v59 = v81;
          (*(v83 + 16))(v81, *(v84 + 48) + *(v83 + 72) * v56, v40);
          v60 = *(*(v58 + 56) + 8 * v56);
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          v62 = *(v61 + 48);
          v63 = *(v57 + 32);
          v41 = v89;
          v63(v89, v59, v40);
          *(v41 + v62) = v60;
          (*(*(v61 - 8) + 56))(v41, 0, 1, v61);
          v64 = v60;
          v38 = v82;
LABEL_34:
          sub_224A44E4C(v41, v38, &qword_27D6F47F0, &unk_224DB7850);
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          if ((*(*(v65 - 8) + 48))(v38, 1, v65) == 1)
          {

            v37 = v77;
            v36 = v75;
            goto LABEL_16;
          }

          v66 = *(v38 + *(v65 + 48));
          v67 = v86;
          sub_224DABE58();
          sub_224DAC248();
          v68 = *v39;
          v69 = (*v39)(v67, v40);
          MEMORY[0x22AA5D350](v69);
          if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224DAF038();
          }

          sub_224DAF078();

          v85 = v91;
          v68(v38, v40);
          v47 = v88;
          v41 = v89;
          v51 = v87;
        }

        if (v51 <= v46 + 1)
        {
          v53 = v46 + 1;
        }

        else
        {
          v53 = v51;
        }

        v54 = v53 - 1;
        while (1)
        {
          v52 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v52 >= v51)
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
            (*(*(v70 - 8) + 56))(v41, 1, 1, v70);
            v50 = 0;
            v46 = v54;
            goto LABEL_34;
          }

          v50 = *(v47 + 8 * v52);
          ++v46;
          if (v50)
          {
            v46 = v52;
            goto LABEL_33;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

      v39 = v42;
LABEL_16:
      ++v36;
      result = v78;
      if (v36 == v71[0])
      {

        return v85;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D82B64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v90 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v5 = *(*(v100 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v100);
  v99 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v98 = &v77 - v9;
  MEMORY[0x28223BE20](v8);
  v97 = &v77 - v10;
  v106 = sub_224DABE18();
  v104 = *(v106 - 8);
  v11 = *(v104 + 64);
  MEMORY[0x28223BE20](v106);
  v101 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_224DACB98();
  v87 = *(v89 - 8);
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_224DACB08();
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v86 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_224DACB28();
  v78 = *(v79 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v81 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_224DACC88();
  v82 = *(v83 - 8);
  v19 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_224DA9878();
  v21 = *(v105 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v105);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v77 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v77 - v33;
  (*(v26 + 16))(v29, a1, v25);
  sub_224DAA278();
  v35 = *(v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService), *(v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 24));
  sub_224DA9868();
  sub_224DAD1B8();
  (*(v21 + 8))(v24, v105);
  (*(v31 + 8))(v34, v30);
  v36 = *(v3 + 232);
  v37 = sub_224DAC148();
  v108 = a1;
  v38 = sub_224BA08E4(sub_224D8D8E0, v107, v37);

  v39 = *(v38 + 16);
  if (v39)
  {
    v77 = v3;
    v109 = MEMORY[0x277D84F90];
    sub_224ADA49C(0, v39, 0);
    v105 = v109;
    v40 = v38 + 64;
    v41 = -1 << *(v38 + 32);
    result = sub_224DAF798();
    v43 = result;
    v44 = 0;
    v45 = v104;
    v95 = v104 + 32;
    v96 = v104 + 16;
    v91 = v38 + 72;
    v92 = v39;
    v46 = v106;
    v93 = v38 + 64;
    v94 = v38;
    while ((v43 & 0x8000000000000000) == 0 && v43 < 1 << *(v38 + 32))
    {
      v48 = v43 >> 6;
      if ((*(v40 + 8 * (v43 >> 6)) & (1 << v43)) == 0)
      {
        goto LABEL_24;
      }

      v49 = *(v38 + 36);
      v102 = v44;
      v103 = v49;
      v50 = *(v38 + 48);
      v104 = *(v45 + 72);
      v51 = v97;
      (*(v45 + 16))(v97, v50 + v104 * v43, v46);
      v52 = *(*(v38 + 56) + 8 * v43);
      v53 = *(v45 + 32);
      v54 = v98;
      v53(v98, v51, v106);
      v55 = v100;
      *&v54[*(v100 + 48)] = v52;
      v56 = v54;
      v57 = v99;
      sub_224A44E4C(v56, v99, &qword_27D6F6D38, &unk_224DC2010);
      v58 = *(v57 + *(v55 + 48));

      v59 = v101;
      v60 = v57;
      v46 = v106;
      v53(v101, v60, v106);
      v61 = v105;
      v109 = v105;
      v63 = *(v105 + 16);
      v62 = *(v105 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_224ADA49C(v62 > 1, v63 + 1, 1);
        v59 = v101;
        v61 = v109;
      }

      *(v61 + 16) = v63 + 1;
      v64 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v105 = v61;
      result = (v53)(v61 + v64 + v63 * v104, v59, v46);
      v38 = v94;
      v47 = 1 << *(v94 + 32);
      if (v43 >= v47)
      {
        goto LABEL_25;
      }

      v40 = v93;
      v65 = *(v93 + 8 * v48);
      if ((v65 & (1 << v43)) == 0)
      {
        goto LABEL_26;
      }

      if (v103 != *(v94 + 36))
      {
        goto LABEL_27;
      }

      v66 = v65 & (-2 << (v43 & 0x3F));
      if (v66)
      {
        v47 = __clz(__rbit64(v66)) | v43 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v67 = v94;
        v68 = v48 << 6;
        v69 = v48 + 1;
        v70 = (v91 + 8 * v48);
        while (v69 < (v47 + 63) >> 6)
        {
          v72 = *v70++;
          v71 = v72;
          v68 += 64;
          ++v69;
          if (v72)
          {
            result = sub_224A3E204(v43, v103, 0);
            v47 = __clz(__rbit64(v71)) + v68;
            goto LABEL_19;
          }
        }

        result = sub_224A3E204(v43, v103, 0);
LABEL_19:
        v38 = v67;
      }

      v44 = v102 + 1;
      v43 = v47;
      if (v102 + 1 == v92)
      {

        v73 = v90;
        v74 = v89;
        v75 = v105;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
    v73 = v90;
    v74 = v89;
LABEL_22:
    (*(v78 + 104))(v81, *MEMORY[0x277CF9B50], v79);
    (*(v84 + 104))(v86, *MEMORY[0x277CF9B48], v85);
    (*(v87 + 16))(v88, v73, v74);
    sub_224DACC48();
    v76 = v80;
    sub_224DACC38();
    sub_224A3933C(v75, v76);

    return (*(v82 + 8))(v76, v83);
  }

  return result;
}

uint64_t sub_224D83568(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = a1;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *a2;
  v18 = sub_224DABE18();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, v28, v18);
  *&v16[*(v10 + 56)] = v17;
  sub_224A3796C(v16, v14, &qword_27D6F6D38, &unk_224DC2010);
  v20 = *(v10 + 56);
  v21 = v5;
  v22 = *&v14[v20];

  v23 = sub_224DABDB8();
  (*(v19 + 8))(v14, v18);
  v24 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v21 + 16))(v8, &v23[v24], v4);

  sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v32 == v30 && v33 == v31)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_224DAFD88();
  }

  (*(v21 + 8))(v8, v4);
  sub_224A3311C(v16, &qword_27D6F6D38, &unk_224DC2010);

  return v25 & 1;
}

uint64_t sub_224D83880(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v90 = a3;
  v89 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v6 = *(*(v100 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v100);
  v99 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v76 - v10;
  MEMORY[0x28223BE20](v9);
  v97 = &v76 - v11;
  v106 = sub_224DABE18();
  v12 = *(v106 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v106);
  v101 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_224DACB98();
  v86 = *(v87 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_224DACB08();
  v82 = *(v84 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224DACB28();
  v77 = *(v78 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v80 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_224DACC88();
  v81 = *(v83 - 8);
  v21 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v79 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v76 - v26;
  v28 = [a1 extensionIdentity];
  sub_224DAF528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v30 = [a1 kind];
  v31 = sub_224DAEE18();
  v33 = v32;

  *(inited + 32) = v31;
  *(inited + 40) = v33;
  v34 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224D80D10(v27, v34);

  (*(v24 + 8))(v27, v23);
  v35 = *(v4 + 232);
  v36 = sub_224DAC148();
  swift_unknownObjectRetain();
  v37 = sub_224D8D6E4(v36, a1);

  swift_unknownObjectRelease();
  v38 = *(v37 + 16);
  if (v38)
  {
    v76 = v4;
    v107 = MEMORY[0x277D84F90];
    sub_224ADA49C(0, v38, 0);
    v105 = v107;
    v39 = v37 + 64;
    v40 = -1 << *(v37 + 32);
    result = sub_224DAF798();
    v42 = result;
    v43 = 0;
    v95 = v12 + 32;
    v96 = v12 + 16;
    v91 = v37 + 72;
    v44 = v106;
    v45 = v12;
    v92 = v38;
    v93 = v37 + 64;
    v94 = v37;
    while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v37 + 32))
    {
      v47 = v42 >> 6;
      if ((*(v39 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
      {
        goto LABEL_24;
      }

      v48 = *(v37 + 36);
      v102 = v43;
      v103 = v48;
      v49 = *(v37 + 48);
      v104 = *(v45 + 72);
      v50 = v97;
      (*(v45 + 16))(v97, v49 + v104 * v42, v44);
      v51 = *(*(v37 + 56) + 8 * v42);
      v52 = *(v45 + 32);
      v53 = v98;
      v52(v98, v50, v106);
      v54 = v100;
      *&v53[*(v100 + 48)] = v51;
      v55 = v53;
      v56 = v99;
      sub_224A44E4C(v55, v99, &qword_27D6F6D38, &unk_224DC2010);
      v57 = *(v56 + *(v54 + 48));

      v58 = v101;
      v59 = v56;
      v44 = v106;
      v52(v101, v59, v106);
      v60 = v105;
      v107 = v105;
      v62 = *(v105 + 16);
      v61 = *(v105 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_224ADA49C(v61 > 1, v62 + 1, 1);
        v58 = v101;
        v60 = v107;
      }

      *(v60 + 16) = v62 + 1;
      v63 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v105 = v60;
      result = (v52)(v60 + v63 + v62 * v104, v58, v44);
      v37 = v94;
      v46 = 1 << *(v94 + 32);
      if (v42 >= v46)
      {
        goto LABEL_25;
      }

      v39 = v93;
      v64 = *(v93 + 8 * v47);
      if ((v64 & (1 << v42)) == 0)
      {
        goto LABEL_26;
      }

      if (v103 != *(v94 + 36))
      {
        goto LABEL_27;
      }

      v65 = v64 & (-2 << (v42 & 0x3F));
      if (v65)
      {
        v46 = __clz(__rbit64(v65)) | v42 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v66 = v94;
        v67 = v47 << 6;
        v68 = v47 + 1;
        v69 = (v91 + 8 * v47);
        while (v68 < (v46 + 63) >> 6)
        {
          v71 = *v69++;
          v70 = v71;
          v67 += 64;
          ++v68;
          if (v71)
          {
            result = sub_224A3E204(v42, v103, 0);
            v46 = __clz(__rbit64(v70)) + v67;
            goto LABEL_19;
          }
        }

        result = sub_224A3E204(v42, v103, 0);
LABEL_19:
        v37 = v66;
      }

      v43 = v102 + 1;
      v42 = v46;
      if (v102 + 1 == v92)
      {

        v72 = v89;
        v73 = v88;
        v74 = v105;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
    v73 = v88;
    v72 = v89;
LABEL_22:
    (*(v77 + 104))(v80, *MEMORY[0x277CF9B50], v78);
    (*(v82 + 104))(v85, *MEMORY[0x277CF9B48], v84);
    (*(v86 + 16))(v73, v72, v87);
    sub_224DACBF8();
    sub_224DACC28();
    v75 = v79;
    sub_224DACC18();
    sub_224A3933C(v74, v75);

    return (*(v81 + 8))(v75, v83);
  }

  return result;
}

uint64_t sub_224D84200(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v55 - v8;
  v57 = sub_224DA9878();
  v56 = *(v57 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = v55 - v13;
  if (a2)
  {
    v14 = *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider), *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 24));
    result = sub_224DAD8C8();
    if (result)
    {
      MEMORY[0x28223BE20](result);
      v55[-2] = a1;
      v16 = sub_224DACF48();

      sub_224DA9868();
      v55[1] = v16;
      v17 = sub_224DACF18();
      v18 = v17;
      if (v17 >> 62)
      {
        goto LABEL_46;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
      {
        v20 = 0;
        v59 = (v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService);
        v60 = v18 + 32;
        v61 = v18 & 0xFFFFFFFFFFFFFF8;
        v21 = a2 + 56;
        v58 = (v6 + 8);
        v6 = v18 & 0xC000000000000001;
        v68 = i;
        while (1)
        {
          if (v6)
          {
            v22 = MEMORY[0x22AA5DCC0](v20, v18);
          }

          else
          {
            if (v20 >= *(v61 + 16))
            {
              goto LABEL_45;
            }

            v22 = *(v60 + 8 * v20);
          }

          v23 = v22;
          if (__OFADD__(v20++, 1))
          {
            break;
          }

          v25 = [v22 kind];
          v26 = sub_224DAEE18();
          v28 = v27;

          if (*(a2 + 16) && (v29 = *(a2 + 40), sub_224DAFE68(), sub_224DAEE78(), v30 = sub_224DAFEA8(), v31 = -1 << *(a2 + 32), v32 = v30 & ~v31, ((*(v21 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
          {
            v3 = ~v31;
            while (1)
            {
              v33 = (*(a2 + 48) + 16 * v32);
              v34 = *v33 == v26 && v33[1] == v28;
              if (v34 || (sub_224DAFD88() & 1) != 0)
              {
                break;
              }

              v32 = (v32 + 1) & v3;
              if (((*(v21 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v35 = v59[4];
            v64 = v59[3];
            v65 = v35;
            v63 = __swift_project_boxed_opaque_existential_1(v59, v64);
            v36 = [v23 extensionIdentity];
            v37 = v66;
            sub_224DAF528();

            v38 = [v23 kind];
            sub_224DAEE18();
            v3 = v18;

            sub_224DAD1B8();

            (*v58)(v37, v67);
          }

          else
          {
LABEL_6:
          }

          if (v20 == v68)
          {
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        ;
      }

LABEL_47:

      return (*(v56 + 8))(v62, v57);
    }
  }

  else
  {
    v39 = *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider), *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 24));
    result = sub_224DAD8C8();
    if (result)
    {
      v64 = v2;
      MEMORY[0x28223BE20](result);
      v55[-2] = a1;
      v40 = sub_224DACF48();

      v18 = sub_224DACF58();
      v62 = v40;

      sub_224DA9868();
      v65 = v12;
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_224DAF7E8();
        sub_224DAF538();
        sub_224A94F2C(&unk_2813509A0, MEMORY[0x277CFA140]);
        sub_224DAF1F8();
        v18 = v69;
        v41 = v70;
        v42 = v71;
        v3 = v72;
        v43 = v73;
      }

      else
      {
        v3 = 0;
        v44 = -1 << *(v18 + 32);
        v41 = v18 + 56;
        v42 = ~v44;
        v45 = -v44;
        if (v45 < 64)
        {
          v46 = ~(-1 << v45);
        }

        else
        {
          v46 = -1;
        }

        v43 = v46 & *(v18 + 56);
      }

      v61 = v42;
      a2 = (v42 + 64) >> 6;
      v63 = (v6 + 8);
      if (v18 < 0)
      {
        goto LABEL_38;
      }

      while (1)
      {
        v47 = v3;
        v48 = v43;
        v49 = v3;
        if (!v43)
        {
          break;
        }

LABEL_36:
        v50 = (v48 - 1) & v48;
        v51 = *(*(v18 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v48)))));
        if (!v51)
        {
          goto LABEL_42;
        }

        while (1)
        {
          v53 = *(v64 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 32);
          __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService), *(v64 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 24));
          v6 = a2;
          v54 = v66;
          v68 = v50;
          sub_224DAF528();
          sub_224DAD1B8();

          (*v63)(v54, v67);
          v3 = v49;
          v43 = v68;
          if ((v18 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_38:
          v52 = sub_224DAF878();
          if (v52)
          {
            v74 = v52;
            sub_224DAF538();
            swift_dynamicCast();
            v51 = v75;
            v49 = v3;
            v50 = v43;
            if (v75)
            {
              continue;
            }
          }

          goto LABEL_42;
        }
      }

      while (1)
      {
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_44;
        }

        if (v49 >= a2)
        {
          break;
        }

        v48 = *(v41 + 8 * v49);
        ++v47;
        if (v48)
        {
          goto LABEL_36;
        }
      }

LABEL_42:
      (*(v56 + 8))(v65, v57);

      return sub_224A3B7E4();
    }
  }

  return result;
}

uint64_t sub_224D849BC(int64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v28 = sub_224DACB98();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACB08();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_224DACB28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_224DACC88();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v26);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v30;
  sub_224D84200(a2, a1);
  v20 = *(v19 + 232);
  v21 = sub_224DAC108();
  v32 = a2;
  v33 = a1;
  v22 = sub_224A392FC(sub_224D8D3E8, v31, v21);
  (*(v11 + 104))(v14, *MEMORY[0x277CF9B50], v10);
  v23 = v29;
  sub_224DACB68();
  (*(v5 + 16))(v27, v23, v28);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v22, v18);

  return (*(v15 + 8))(v18, v26);
}

uint64_t sub_224D84C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v34[0] = v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v37 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v34 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v34 - v20;
  v34[1] = a1;
  v22 = sub_224DABDB8();
  v23 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v22 + v23, v21, &unk_27D6F5060, &qword_224DB5620);

  (*(v5 + 16))(v19, v36, v4);
  (*(v5 + 56))(v19, 0, 1, v4);
  v24 = *(v9 + 56);
  sub_224A3796C(v21, v12, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v19, &v12[v24], &unk_27D6F5060, &qword_224DB5620);
  v25 = *(v5 + 48);
  if (v25(v12, 1, v4) == 1)
  {
    sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
    if (v25(&v12[v24], 1, v4) == 1)
    {
      sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
LABEL_9:
      v31 = sub_224DABDD8();
      v26 = sub_224A3A53C(v31, v32, v35);

      return v26 & 1;
    }

    goto LABEL_6;
  }

  sub_224A3796C(v12, v37, &unk_27D6F5060, &qword_224DB5620);
  if (v25(&v12[v24], 1, v4) == 1)
  {
    sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
    (*(v5 + 8))(v37, v4);
LABEL_6:
    sub_224A3311C(v12, &qword_27D6F5B90, &qword_224DB5C50);
    goto LABEL_7;
  }

  v27 = &v12[v24];
  v28 = v34[0];
  (*(v5 + 32))(v34[0], v27, v4);
  sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
  v29 = v37;
  LODWORD(v36) = sub_224DAEDD8();
  v30 = *(v5 + 8);
  v30(v28, v4);
  sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
  v30(v29, v4);
  sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
  if (v36)
  {
    goto LABEL_9;
  }

LABEL_7:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_224D85158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v35 = a1;
  v4 = sub_224DACB98();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACB08();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v34[1] = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = sub_224DACB28();
  v10 = *(v34[0] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v34[0]);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_224DACC88();
  v36 = *(v38 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v34 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v34 - v25;
  (*(v18 + 16))(v21, a2, v17);
  sub_224DAA278();
  v27 = v35;
  v28 = v37;
  sub_224D80D10(v26, v35);
  (*(v23 + 8))(v26, v22);
  v29 = *(v28 + 232);
  v30 = sub_224DAC108();
  v44 = a2;
  v45 = v27;
  v31 = sub_224A392FC(sub_224D8D3C8, v43, v30);
  (*(v10 + 104))(v13, *MEMORY[0x277CF9B50], v34[0]);
  v32 = v42;
  sub_224DACB68();
  (*(v40 + 16))(v39, v32, v41);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v31, v16);

  return (*(v36 + 8))(v16, v38);
}

uint64_t sub_224D85594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = sub_224DABDB8();
  v9 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v4 + 16))(v7, &v8[v9], v3);

  sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v15[3] == v15[1] && v15[4] == v15[2])
  {
    (*(v4 + 8))(v7, v3);

LABEL_5:
    v12 = sub_224DABDD8();
    v11 = sub_224A3A53C(v12, v13, v15[0]);

    return v11 & 1;
  }

  v10 = sub_224DAFD88();
  (*(v4 + 8))(v7, v3);

  v11 = 0;
  if (v10)
  {
    goto LABEL_5;
  }

  return v11 & 1;
}

uint64_t sub_224D857C4(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_224DACB98();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_224DACB08();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DACC88();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v25);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  sub_224D84200(a1, 0);
  v20 = *(v2 + 232);
  v21 = sub_224DAC108();
  v31 = a1;
  v22 = sub_224A392FC(sub_224D8D388, v30, v21);
  (*(v12 + 104))(v15, *MEMORY[0x277CF9B50], v11);
  (*(v7 + 104))(v10, *MEMORY[0x277CF9B48], v26);
  (*(v4 + 16))(v27, v29, v28);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v22, v19);

  return (*(v16 + 8))(v19, v25);
}

uint64_t sub_224D85AE8(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = sub_224DABDB8();
  v21 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v20 + v21, v19, &unk_27D6F5060, &qword_224DB5620);

  (*(v3 + 16))(v17, v32, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v22 = *(v7 + 56);
  sub_224A3796C(v19, v10, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v17, &v10[v22], &unk_27D6F5060, &qword_224DB5620);
  v23 = v3;
  v24 = *(v3 + 48);
  if (v24(v10, 1, v2) != 1)
  {
    sub_224A3796C(v10, v33, &unk_27D6F5060, &qword_224DB5620);
    if (v24(&v10[v22], 1, v2) != 1)
    {
      v26 = v23;
      v27 = &v10[v22];
      v28 = v31;
      (*(v23 + 32))(v31, v27, v2);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v25 = sub_224DAEDD8();
      v29 = *(v26 + 8);
      v29(v28, v2);
      sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
      v29(v33, v2);
      sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
      return v25 & 1;
    }

    sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
    (*(v23 + 8))(v33, v2);
    goto LABEL_6;
  }

  sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
  if (v24(&v10[v22], 1, v2) != 1)
  {
LABEL_6:
    sub_224A3311C(v10, &qword_27D6F5B90, &qword_224DB5C50);
    v25 = 0;
    return v25 & 1;
  }

  sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_224D85F74(void *a1, int a2, uint64_t a3)
{
  v56 = a3;
  v54 = a2;
  v55 = sub_224DACB98();
  v53 = *(v55 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DACB08();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_224DACB28();
  v44 = *(v46 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACC88();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_224DABE18();
  v14 = *(v42 - 8);
  v15 = v14;
  v16 = *(v14 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v18 = *(v40 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v40);
  v21 = &v39 - v20;
  v22 = [a1 extensionIdentity];
  sub_224DAF528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  v39 = xmmword_224DB3100;
  *(inited + 16) = xmmword_224DB3100;
  v24 = [a1 kind];
  v25 = sub_224DAEE18();
  v27 = v26;

  *(inited + 32) = v25;
  *(inited + 40) = v27;
  v28 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224D80D10(v21, v28);

  (*(v18 + 8))(v21, v40);
  v29 = a1;
  v30 = v41;
  sub_224DABDE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
  v31 = *(v14 + 72);
  v32 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v39;
  v34 = v42;
  (*(v15 + 16))(v33 + v32, v30, v42);
  (*(v44 + 104))(v43, *MEMORY[0x277CF9B50], v46);
  v35 = MEMORY[0x277CF9B48];
  if ((v54 & 1) == 0)
  {
    v35 = MEMORY[0x277CF9B40];
  }

  (*(v48 + 104))(v47, *v35, v49);
  (*(v53 + 16))(v52, v56, v55);
  sub_224DACC48();
  v36 = v45;
  sub_224DACC38();
  sub_224A3933C(v33, v36);
  swift_setDeallocating();
  v37 = *(v15 + 8);
  v37(v33 + v32, v34);
  swift_deallocClassInstance();
  (*(v50 + 8))(v36, v51);
  return (v37)(v30, v34);
}

uint64_t sub_224D86530@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v75 = a3;
  v4 = sub_224DA9878();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_224DAC268();
  v9 = *(v103 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v103);
  v91 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v95 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v76 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v80 = &v74 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v74 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v74 - v25;
  v27 = sub_224DABE18();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_224DABDE8();
  v33 = v99[29];
  v34 = sub_224DAC168();
  if (!v34)
  {
    (*(v28 + 8))(v31, v27);
    return (*(v5 + 56))(v75, 1, 1, v4);
  }

  v84 = v8;
  v74 = v31;
  v36 = *(v5 + 56);
  v35 = v5 + 56;
  v83 = v26;
  v86 = v4;
  v37 = v34;
  v78 = v36;
  v36(v26, 1, 1, v4);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v81 = (v39 + 63) >> 6;
  v89 = v9 + 16;
  v88 = v9 + 32;
  v85 = (v35 - 8);
  v82 = (v35 - 24);
  v79 = v35;
  v77 = (v35 - 48);
  v92 = v37;
  v93 = (v9 + 8);

  v43 = 0;
  v94 = v9;
  v97 = v27;
  v98 = v28;
  v90 = v37 + 64;
  while (v41)
  {
    v45 = v43;
LABEL_17:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v49 = v48 | (v45 << 6);
    v51 = v91;
    v50 = v92;
    v52 = v103;
    (*(v9 + 16))(v91, *(v92 + 48) + *(v9 + 72) * v49, v103);
    v99 = *(*(v50 + 56) + 8 * v49);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
    v54 = v9;
    v55 = *(v53 + 48);
    v56 = v95;
    (*(v54 + 32))(v95, v51, v52);
    v57 = v99;
    *&v56[v55] = v99;
    (*(*(v53 - 8) + 56))(v56, 0, 1, v53);
    v58 = v57;
    v27 = v97;
    v28 = v98;
    v38 = v90;
LABEL_18:
    v59 = v56;
    v60 = v96;
    sub_224A44E4C(v59, v96, &qword_27D6F47F0, &unk_224DB7850);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
    {

      (*(v28 + 8))(v74, v27);
      return sub_224A44E4C(v83, v75, &qword_27D6F32B0, &qword_224DB3EA0);
    }

    v62 = *(v60 + *(v61 + 48));
    sub_224DABE68();
    if (!v101)
    {

      sub_224A3311C(&v100, &unk_27D6F3CB0, &unk_224DB7860);
      v9 = v94;
      v44 = v103;
      goto LABEL_6;
    }

    sub_224A36F98(&v100, v102);
    __swift_project_boxed_opaque_existential_1(v102, v102[3]);
    v63 = v87;
    sub_224DAEAF8();
    v64 = *v85;
    v65 = v86;
    if ((*v85)(v63, 1, v86) == 1)
    {

      sub_224A3311C(v63, &qword_27D6F32B0, &qword_224DB3EA0);
      __swift_destroy_boxed_opaque_existential_1(v102);
      v44 = v103;
      v9 = v94;
      v27 = v97;
      v28 = v98;
      goto LABEL_6;
    }

    v99 = *v82;
    (v99)(v84, v63, v65);
    v66 = v83;
    v67 = v80;
    sub_224A3796C(v83, v80, &qword_27D6F32B0, &qword_224DB3EA0);
    if (v64(v67, 1, v65) == 1)
    {

      sub_224A3311C(v67, &qword_27D6F32B0, &qword_224DB3EA0);
      v68 = v84;
    }

    else
    {
      sub_224A3311C(v67, &qword_27D6F32B0, &qword_224DB3EA0);
      v70 = v76;
      sub_224A3796C(v66, v76, &qword_27D6F32B0, &qword_224DB3EA0);
      result = v64(v70, 1, v65);
      if (result == 1)
      {
        goto LABEL_34;
      }

      v68 = v84;
      v71 = sub_224DA9798();

      v72 = *v77;
      (*v77)(v70, v65);
      if ((v71 & 1) == 0)
      {
        (v72)(v68, v65, &qword_224DB3EA0);
        goto LABEL_29;
      }
    }

    v73 = v83;
    sub_224A3311C(v83, &qword_27D6F32B0, &qword_224DB3EA0);
    (v99)(v73, v68, v65);
    v78(v73, 0, 1, v65);
LABEL_29:
    v9 = v94;
    v27 = v97;
    __swift_destroy_boxed_opaque_existential_1(v102);
    v44 = v103;
    v60 = v96;
    v28 = v98;
LABEL_6:
    result = (*v93)(v60, v44);
  }

  if (v81 <= v43 + 1)
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v81;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v81)
    {
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v56 = v95;
      (*(*(v69 - 8) + 56))(v95, 1, 1, v69);
      v41 = 0;
      v43 = v47;
      goto LABEL_18;
    }

    v41 = *(v38 + 8 * v45);
    ++v43;
    if (v41)
    {
      v43 = v45;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_224D86EFC()
{
  v90 = sub_224DAC268();
  v1 = *(v90 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v90);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v5 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v7 = &v80 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v8 = *(*(v85 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v85);
  v84 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v80 - v11;
  v13 = *(v0 + 232);
  v14 = sub_224DAC148();
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v96 = v1 + 16;
  v93 = v1;
  v91 = (v1 + 8);
  v86 = v14;

  v20 = 0;
  v99 = MEMORY[0x277D84F98];
  v82 = v15;
  v81 = v19;
  v89 = v7;
  v83 = v12;
  v80 = v4;
LABEL_6:
  if (v18)
  {
    v21 = v20;
LABEL_11:
    v87 = v21;
    v88 = (v18 - 1) & v18;
    v22 = __clz(__rbit64(v18)) | (v21 << 6);
    v23 = v86;
    v24 = *(v86 + 48);
    v25 = sub_224DABE18();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v12, v24 + *(v26 + 72) * v22, v25);
    v27 = *(*(v23 + 56) + 8 * v22);
    v28 = v85;
    *&v12[*(v85 + 48)] = v27;
    v29 = v12;
    v30 = v84;
    sub_224A3796C(v29, v84, &qword_27D6F6D38, &unk_224DC2010);
    v31 = *(v30 + *(v28 + 48));
    v32 = *(v26 + 8);

    v32(v30, v25);
    v33 = v31 + 64;
    v34 = 1 << *(v31 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v31 + 64);
    v37 = (v34 + 63) >> 6;
    v97 = v31;

    v38 = 0;
    v39 = v90;
    v40 = v4;
    v94 = v37;
    while (v36)
    {
LABEL_23:
      v44 = __clz(__rbit64(v36)) | (v38 << 6);
      v45 = v97;
      v46 = *(v97 + 48);
      v98 = *(v93 + 72);
      v47 = *(v93 + 16);
      v47(v7, v46 + v98 * v44, v39);
      v48 = *(*(v45 + 56) + 8 * v44);
      *&v7[*(v92 + 48)] = v48;
      v95 = v47;
      v47(v40, v7, v39);
      v49 = v48;
      sub_224DABE68();
      v50 = v101;
      if (v101)
      {
        v51 = __swift_project_boxed_opaque_existential_1(v100, v101);
        v52 = *(v50 - 8);
        v53 = *(v52 + 64);
        MEMORY[0x28223BE20](v51);
        v55 = &v80 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v52 + 16))(v55);
        sub_224A3311C(v100, &unk_27D6F3CB0, &unk_224DB7860);
        v56 = v40;
        v57 = sub_224DAEAC8();
        (*(v52 + 8))(v55, v50);
        v58 = v99;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100[0] = v58;
        v61 = sub_224A61E5C(v56);
        v62 = *(v58 + 16);
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_41;
        }

        v65 = v60;
        if (*(v58 + 24) >= v64)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224B2B3E8();
          }
        }

        else
        {
          sub_224B1ADE0(v64, isUniquelyReferenced_nonNull_native);
          v66 = sub_224A61E5C(v56);
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_43;
          }

          v61 = v66;
        }

        v39 = v90;
        v75 = v100[0];
        v99 = v100[0];
        if (v65)
        {
          v41 = *(v100[0] + 56);
          v42 = *(v41 + 8 * v61);
          *(v41 + 8 * v61) = v57;
        }

        else
        {
          *(v100[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
          v95(v75[6] + v61 * v98, v56, v39);
          *(v75[7] + 8 * v61) = v57;
          v76 = v75[2];
          v77 = __OFADD__(v76, 1);
          v78 = v76 + 1;
          if (v77)
          {
            goto LABEL_42;
          }

          v75[2] = v78;
        }

        v40 = v56;
        (*v91)(v56, v39);
        v7 = v89;
      }

      else
      {
        sub_224A3311C(v100, &unk_27D6F3CB0, &unk_224DB7860);
        v68 = v99;
        v69 = sub_224A61E5C(v40);
        if (v70)
        {
          v71 = v69;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v100[0] = v68;
          if ((v72 & 1) == 0)
          {
            sub_224B2B3E8();
            v68 = v100[0];
          }

          v73 = *v91;
          (*v91)(*(v68 + 48) + v71 * v98, v39);
          v74 = *(*(v68 + 56) + 8 * v71);

          v99 = v68;
          sub_224B1E3C0(v71, v68);
          v40 = v80;
          v73(v80, v39);
        }

        else
        {
          (*v91)(v40, v39);
        }
      }

      v37 = v94;
      v36 &= v36 - 1;
      sub_224A3311C(v7, &qword_27D6F47F8, &unk_224DC2000);
    }

    while (1)
    {
      v43 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v43 >= v37)
      {
        v4 = v40;

        v12 = v83;
        sub_224A3311C(v83, &qword_27D6F6D38, &unk_224DC2010);

        v20 = v87;
        v18 = v88;
        v15 = v82;
        v19 = v81;
        goto LABEL_6;
      }

      v36 = *(v33 + 8 * v43);
      ++v38;
      if (v36)
      {
        v38 = v43;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return v99;
      }

      v18 = *(v15 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224D876BC(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v27 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v18 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  (*(v4 + 16))(v17, v28, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(v8 + 56);
  sub_224A3796C(a1 + v18, v11, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v17, &v11[v19], &unk_27D6F5060, &qword_224DB5620);
  v20 = *(v4 + 48);
  if (v20(v11, 1, v3) != 1)
  {
    v22 = v27;
    sub_224A3796C(v11, v27, &unk_27D6F5060, &qword_224DB5620);
    if (v20(&v11[v19], 1, v3) != 1)
    {
      v23 = v26;
      (*(v4 + 32))(v26, &v11[v19], v3);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v21 = sub_224DAEDD8();
      v24 = *(v4 + 8);
      v24(v23, v3);
      sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
      v24(v22, v3);
      sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
      return v21 & 1;
    }

    sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
    (*(v4 + 8))(v22, v3);
    goto LABEL_6;
  }

  sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
  if (v20(&v11[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_224A3311C(v11, &qword_27D6F5B90, &qword_224DB5C50);
    v21 = 0;
    return v21 & 1;
  }

  sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_224D87AD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v7 - v3;
  sub_224DAF528();
  sub_224A33088(&qword_281351838, &unk_27D6F6570, &qword_224DB3C40);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v7[2] == v7[0] && v7[3] == v7[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_224DAFD88();
  }

  (*(v1 + 8))(v4, v0);

  return v5 & 1;
}

uint64_t sub_224D87C60(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *a2;
  v15 = sub_224DABE18();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13, a1, v15);
  *&v13[*(v7 + 56)] = v14;
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  sub_224A3796C(v13, v11, &qword_27D6F6D38, &unk_224DC2010);
  v17 = *(v11 + *(v7 + 56));

  v18 = sub_224DABDB8();
  (*(v16 + 8))(v11, v15);
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v20 = sub_224DAE338();
  LOBYTE(v11) = sub_224DAF6A8();

  sub_224A3311C(v13, &qword_27D6F6D38, &unk_224DC2010);
  return v11 & 1;
}

uint64_t sub_224D87E50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DACB98();
  v133 = *(v4 - 8);
  v5 = *(v133 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_224DACB08();
  v128 = *(v129 - 8);
  v8 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v131 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_224DACB28();
  v124 = *(v125 - 8);
  v10 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v126 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_224DACC88();
  v130 = *(v132 - 8);
  v12 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v127 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DABE18();
  v141 = *(v14 - 8);
  v15 = *(v141 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v139 = &v106 - v19;
  v140 = sub_224DAB258();
  v147 = *(v140 - 8);
  v20 = *(v147 + 64);
  v21 = MEMORY[0x28223BE20](v140);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v134 = &v106 - v24;
  v138 = sub_224DAB728();
  v146 = *(v138 - 8);
  v25 = *(v146 + 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_224DAE4F8();
  v145 = *(v136 - 8);
  v27 = *(v145 + 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_224DAC268();
  v150 = *(v153 - 8);
  v29 = *(v150 + 64);
  MEMORY[0x28223BE20](v153);
  v149 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v106 - v36;
  v38 = *(v1 + 232);
  result = sub_224DAC168();
  v152 = result;
  if (result)
  {
    v122 = v7;
    v123 = v4;
    v40 = sub_224DABDB8();
    v41 = (v40 + *MEMORY[0x277CFA128]);
    swift_beginAccess();
    v42 = *v41;
    v43 = v41[1];

    LOBYTE(v40) = sub_224DAA048();

    if (v40)
    {

      v44 = v147;
      v45 = v23;
      v46 = v140;
      (*(v147 + 16))(v23, v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v140);
      v47 = v141;
      (*(v141 + 16))(v18, a1, v14);
      v48 = sub_224DAB228();
      v49 = v44;
      v50 = sub_224DAF278();
      if (os_log_type_enabled(v48, v50))
      {
        v51 = swift_slowAlloc();
        v153 = v45;
        v52 = v51;
        v53 = swift_slowAlloc();
        v156[0] = v53;
        *v52 = 136446210;
        sub_224A94F2C(&qword_281350E70, MEMORY[0x277CF98E0]);
        v54 = sub_224DAFD28();
        v56 = v55;
        (*(v47 + 8))(v18, v14);
        v57 = sub_224A33F74(v54, v56, v156);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_224A2F000, v48, v50, "Ignoring proactive reload for timeline %{public}s becasue it is remote", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x22AA5EED0](v53, -1, -1);
        MEMORY[0x22AA5EED0](v52, -1, -1);

        return (*(v49 + 8))(v153, v140);
      }

      else
      {

        (*(v47 + 8))(v18, v14);
        return (*(v44 + 8))(v45, v46);
      }
    }

    else
    {
      v119 = v14;
      v120 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_224DBB050;
      *(v58 + 32) = swift_getKeyPath();
      *(v58 + 40) = swift_getKeyPath();
      *(v58 + 48) = swift_getKeyPath();
      *(v58 + 56) = swift_getKeyPath();
      result = swift_getKeyPath();
      LODWORD(v118) = 0;
      v121 = v58;
      *(v58 + 64) = result;
      v60 = *(v152 + 64);
      v142 = v152 + 64;
      v61 = 1 << *(v152 + 32);
      v62 = -1;
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      v63 = v62 & v60;
      v113 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
      v64 = (v61 + 63) >> 6;
      v144 = v150 + 16;
      v143 = v150 + 32;
      v151 = (v150 + 8);
      v115 = (v146 + 8);
      v114 = (v145 + 8);
      v112 = (v147 + 16);
      v116 = (v141 + 16);
      v117 = (v141 + 8);
      v111 = (v147 + 8);
      *&v59 = 136446210;
      v110 = v59;
      v148 = a1;
      v146 = v35;
      v145 = v37;
      v147 = v64;
      v65 = 0;
      if (v63)
      {
        while (1)
        {
          v66 = v65;
LABEL_16:
          v69 = __clz(__rbit64(v63));
          v63 &= v63 - 1;
          v70 = v69 | (v66 << 6);
          v72 = v152;
          v71 = v153;
          v74 = v149;
          v73 = v150;
          (*(v150 + 16))(v149, *(v152 + 48) + *(v150 + 72) * v70, v153);
          v75 = *(*(v72 + 56) + 8 * v70);
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          v77 = *(v76 + 48);
          v78 = *(v73 + 32);
          v35 = v146;
          v78(v146, v74, v71);
          *&v35[v77] = v75;
          (*(*(v76 - 8) + 56))(v35, 0, 1, v76);
          v79 = v75;
          v68 = v66;
          v64 = v147;
          a1 = v148;
          v37 = v145;
LABEL_17:
          sub_224A44E4C(v35, v37, &qword_27D6F47F0, &unk_224DB7850);
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          if ((*(*(v80 - 8) + 48))(v37, 1, v80) == 1)
          {
            break;
          }

          v81 = *&v37[*(v80 + 48)];
          sub_224DABE68();
          if (v155)
          {
            sub_224A36F98(&v154, v156);
            __swift_project_boxed_opaque_existential_1(v156, v156[3]);
            v83 = v135;
            sub_224DAEA78();
            sub_224DABE38();
            __swift_project_boxed_opaque_existential_1(&v154, v155);
            v84 = v137;
            sub_224DAD168();

            v85 = sub_224DAE4E8();

            (*v115)(v84, v138);
            (*v114)(v83, v136);
            __swift_destroy_boxed_opaque_existential_1(&v154);
            if (v85)
            {

              v64 = v147;
              a1 = v148;
            }

            else
            {
              v86 = v134;
              (*v112)(v134, v120 + v113, v140);
              v87 = v119;
              (*v116)(v139, v148, v119);
              v88 = sub_224DAB228();
              v89 = sub_224DAF2A8();
              v90 = os_log_type_enabled(v88, v89);
              v64 = v147;
              if (v90)
              {
                v91 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                *&v154 = v118;
                *v91 = v110;
                sub_224A94F2C(&qword_281350E70, MEMORY[0x277CF98E0]);
                v109 = v88;
                v108 = v89;
                v92 = v139;
                v107 = sub_224DAFD28();
                v94 = v93;
                (*v117)(v92, v87);
                v95 = sub_224A33F74(v107, v94, &v154);

                *(v91 + 4) = v95;
                v96 = v109;
                _os_log_impl(&dword_224A2F000, v109, v108, "Proactively reloading timeline for %{public}s because environment no longer matches.", v91, 0xCu);
                v97 = v118;
                __swift_destroy_boxed_opaque_existential_1(v118);
                MEMORY[0x22AA5EED0](v97, -1, -1);
                MEMORY[0x22AA5EED0](v91, -1, -1);

                (*v111)(v134, v140);
              }

              else
              {

                (*v117)(v139, v87);
                (*v111)(v86, v140);
              }

              LODWORD(v118) = 1;
              a1 = v148;
            }

            __swift_destroy_boxed_opaque_existential_1(v156);
          }

          else
          {

            sub_224A3311C(&v154, &unk_27D6F3CB0, &unk_224DB7860);
          }

          result = (*v151)(v37, v153);
          v65 = v68;
          if (!v63)
          {
            goto LABEL_9;
          }
        }

        v98 = v119;
        v99 = v123;
        v100 = v122;
        if (v118)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
          v101 = v141;
          v102 = *(v141 + 72);
          v103 = (*(v141 + 80) + 32) & ~*(v141 + 80);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_224DB3100;
          (*(v101 + 16))(v104 + v103, a1, v98);
          (*(v124 + 104))(v126, *MEMORY[0x277CF9B50], v125);
          (*(v128 + 104))(v131, *MEMORY[0x277CF9B40], v129);
          (*(v133 + 104))(v100, *MEMORY[0x277CF9BA8], v99);
          sub_224DACC48();
          v105 = v127;
          sub_224DACC38();
          sub_224A3933C(v104, v105);
          swift_setDeallocating();
          (*(v101 + 8))(v104 + v103, v98);
          swift_deallocClassInstance();
          return (*(v130 + 8))(v105, v132);
        }
      }

      else
      {
LABEL_9:
        if (v64 <= v65 + 1)
        {
          v67 = v65 + 1;
        }

        else
        {
          v67 = v64;
        }

        v68 = v67 - 1;
        while (1)
        {
          v66 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            break;
          }

          if (v66 >= v64)
          {
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
            (*(*(v82 - 8) + 56))(v35, 1, 1, v82);
            v63 = 0;
            goto LABEL_17;
          }

          v63 = *(v142 + 8 * v66);
          ++v65;
          if (v63)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_224D88F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_224DABE18();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = v6;
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABD68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v27 = *(result + 232);

    v47 = a3;
    sub_224DAC118();

    (*(v8 + 104))(v22, *MEMORY[0x277CF98C0], v7);
    (*(v8 + 56))(v22, 0, 1, v7);
    v28 = *(v11 + 48);
    sub_224A3796C(v24, v14, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3796C(v22, &v14[v28], &qword_27D6F4C30, &unk_224DBB310);
    v29 = *(v8 + 48);
    if (v29(v14, 1, v7) == 1)
    {
      sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
      if (v29(&v14[v28], 1, v7) == 1)
      {
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v30 = v47;
LABEL_10:
        v47 = *(v26 + 232);
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = v44;
        v37 = v45;
        v38 = v46;
        (*(v45 + 16))(v44, v30, v46);
        v39 = (*(v37 + 80) + 24) & ~*(v37 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = v35;
        (*(v37 + 32))(v40 + v39, v36, v38);

        sub_224DAC0B8();

        sub_224A3311C(v24, &qword_27D6F4C30, &unk_224DBB310);
      }
    }

    else
    {
      sub_224A3796C(v14, v19, &qword_27D6F4C30, &unk_224DBB310);
      if (v29(&v14[v28], 1, v7) != 1)
      {
        v31 = &v14[v28];
        v32 = v42;
        (*(v8 + 32))(v42, v31, v7);
        sub_224A94F2C(&unk_281350E90, MEMORY[0x277CF98C8]);
        v33 = sub_224DAEDD8();
        v34 = *(v8 + 8);
        v34(v32, v7);
        sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
        v34(v19, v7);
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v30 = v47;
        if (v33)
        {
          goto LABEL_10;
        }

LABEL_8:
        sub_224D87E50(v30);

        return sub_224A3311C(v24, &qword_27D6F4C30, &unk_224DBB310);
      }

      sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
      (*(v8 + 8))(v19, v7);
    }

    sub_224A3311C(v14, &qword_27D6F4C28, qword_224DBA340);
    v30 = v47;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_224D89598(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D87E50(a2);
  }

  return result;
}

uint64_t sub_224D895F8(void *a1, uint64_t a2, uint64_t a3)
{
  v97 = a3;
  v95 = sub_224DACB98();
  v75 = *(v95 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = sub_224DACB08();
  v77 = *(v93 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = sub_224DACB28();
  v78 = *(v91 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_224DACC88();
  v74 = *(v89 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_224DAB258();
  v76 = *(v71 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_224DABE18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v87 = &v68[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v98 = &v68[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v68[-v23];
  MEMORY[0x28223BE20](v22);
  v101 = &v68[-v24];
  v25 = a1[3];
  v26 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  result = sub_224DAD3C8();
  v100 = *(result + 16);
  if (v100)
  {
    v28 = 0;
    v84 = a2 & 0xC000000000000001;
    v85 = (v16 + 16);
    v29 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v29 = a2;
    }

    v80 = v29;
    v102 = a2 + 56;
    v82 = (v16 + 32);
    v79 = (v16 + 8);
    v30 = MEMORY[0x277D84F90];
    v81 = v15;
    v31 = a2;
    v103 = a2;
    v99 = v16;
    v86 = result;
    while (1)
    {
      if (v28 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v32 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v33 = *(v16 + 72);
      (*(v16 + 16))(v101, result + v32 + v33 * v28, v15);
      v34 = sub_224DABDB8();
      if (v84)
      {
        v35 = sub_224DAF888();

        if (v35)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v72 = v30;
        if (*(v31 + 16))
        {
          sub_224DAF538();
          v41 = *(v31 + 40);
          v42 = sub_224DAF698();
          v43 = -1 << *(v31 + 32);
          v44 = v42 & ~v43;
          if ((*(v102 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            while (1)
            {
              v46 = *(*(v31 + 48) + 8 * v44);
              v47 = sub_224DAF6A8();

              if (v47)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              v31 = v103;
              if (((*(v102 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

            v15 = v81;
            v16 = v99;
            v30 = v72;
LABEL_11:
            v36 = *v82;
            (*v82)(v83, v101, v15);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v104 = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA49C(0, *(v30 + 16) + 1, 1);
              v30 = v104;
            }

            v39 = *(v30 + 16);
            v38 = *(v30 + 24);
            if (v39 >= v38 >> 1)
            {
              sub_224ADA49C(v38 > 1, v39 + 1, 1);
              v30 = v104;
            }

            *(v30 + 16) = v39 + 1;
            v40 = v30 + v32 + v39 * v33;
            v15 = v81;
            (v36)(v40, v83, v81);
            v31 = v103;
            goto LABEL_7;
          }
        }

LABEL_5:

        v15 = v81;
        v16 = v99;
        v30 = v72;
      }

      (*v79)(v101, v15);
LABEL_7:
      result = v86;
      if (++v28 == v100)
      {
        goto LABEL_24;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_24:

  v49 = *(v30 + 16);
  if (v49)
  {
    v51 = *(v16 + 16);
    v50 = v16 + 16;
    v85 = v51;
    v86 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
    v52 = (*(v50 + 64) + 32) & ~*(v50 + 64);
    v72 = v30;
    v53 = v30 + v52;
    v84 = *(v50 + 56);
    v83 = (v76 + 16);
    v81 = (v76 + 8);
    LODWORD(v80) = *MEMORY[0x277CF9B50];
    v79 = (v78 + 104);
    LODWORD(v78) = *MEMORY[0x277CF9B40];
    v77 += 104;
    LODWORD(v76) = *MEMORY[0x277CF9BA8];
    v75 += 104;
    v74 += 8;
    *&v48 = 138543362;
    v69 = v48;
    v82 = (v50 - 8);
    v73 = (v50 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = v71;
    v55 = v70;
    v56 = v98;
    v99 = v50;
    do
    {
      v102 = v53;
      v103 = v49;
      v59 = v85;
      v85(v56);
      (*v83)(v55, v97 + v86, v54);
      v60 = v56;
      v61 = v87;
      v59(v87, v60, v15);
      v62 = sub_224DAB228();
      v63 = sub_224DAF2A8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = v61;
        v66 = swift_slowAlloc();
        *v64 = v69;
        v67 = sub_224DABDB8();
        v101 = *v82;
        (v101)(v65, v15);
        *(v64 + 4) = v67;
        *v66 = v67;
        _os_log_impl(&dword_224A2F000, v62, v63, "Locale change detected - reloading timelines for  %{public}@", v64, 0xCu);
        sub_224A3311C(v66, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v66, -1, -1);
        v55 = v70;
        v54 = v71;
        MEMORY[0x22AA5EED0](v64, -1, -1);
      }

      else
      {

        v101 = *v82;
        (v101)(v61, v15);
      }

      (*v81)(v55, v54);
      v57 = v96[3];
      v100 = v96[4];
      __swift_project_boxed_opaque_existential_1(v96, v57);
      (*v79)(v90, v80, v91);
      (*v77)(v92, v78, v93);
      (*v75)(v94, v76, v95);
      sub_224DACC48();
      v58 = v88;
      sub_224DACC38();
      v56 = v98;
      sub_224DAD3E8();
      (*v74)(v58, v89);
      (v101)(v56, v15);
      v53 = v102 + v84;
      v49 = v103 - 1;
    }

    while (v103 != 1);
  }
}

uint64_t sub_224D8A0A0(void *a1)
{
  sub_224DAD148();
  [a1 supportedColorSchemes];
  sub_224DAD098();
  v2 = [a1 supportedRenderSchemes];
  sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
  sub_224DAF008();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D50, &qword_224DC20C8);
  sub_224A33088(&qword_281350B70, &qword_27D6F6D50, &qword_224DC20C8);
  v3 = sub_224DAEF58();

  sub_224AE97C0(v3);

  sub_224DAD0C8();
  [a1 supportsLowLuminance];
  sub_224DAD108();
  [a1 showsWidgetLabel];
  sub_224DAD028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB2780;
  *(inited + 32) = [a1 displayProperties];
  sub_224AE995C(inited);
  swift_setDeallocating();
  v5 = *(inited + 16);
  swift_arrayDestroy();
  sub_224DAD138();
  [a1 supportedProximities];
  return sub_224DAD068();
}

uint64_t sub_224D8A3D8(uint64_t a1)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DABE18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  (*(v4 + 16))(v7, a1, v3);
  sub_224DABD88();
  v14 = *(v13 + 232);
  sub_224DAC028();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_224D8A554(uint64_t a1)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DABE18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  (*(v4 + 16))(v7, a1, v3);
  sub_224DABD88();
  v14 = *(v13 + 232);
  sub_224DAC038();
  return (*(v9 + 8))(v12, v8);
}

void sub_224D8A6E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v5[30];
  os_unfair_lock_lock(*(v6 + 16));
  sub_224D86530(a1, v5, a2);
  v7 = *(v6 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_224D8A764(uint64_t a1)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_224DABE18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *v1;
  (*(v4 + 16))(v7, a1, v3);
  sub_224DABD88();
  v14 = *(v13 + 232);
  v17 = v12;
  v18 = a1;
  v19 = v13;
  sub_224DAC128();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_224D8A9B4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_224D8AB14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_224DAC268();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
  sub_224DAC9B8();
  if (swift_dynamicCast())
  {
    v10 = [a1 widget];
    v11 = [a1 metrics];
    sub_224DAC238();
    sub_224DAC2D8();
    (*(v6 + 8))(v9, v5);

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v12 = sub_224DA9688();
  return (*(*(v12 - 8) + 56))(a2, v14, 1, v12);
}

uint64_t sub_224D8AD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    v11 = sub_224AE8AF4(inited);
    swift_setDeallocating();
    sub_224BCA6B4(inited + 32);
    sub_224D84200(a3, v11);

    v12 = *(v5 + 232);
    v13 = sub_224DAC108();
    MEMORY[0x28223BE20](v13);
    v15 = &v21;
    v22[0] = a3;
    v22[1] = a1;
    v23 = a2;
    v16 = sub_224D8E708;
  }

  else
  {
    sub_224D84200(a3, 0);

    v17 = *(v4 + 232);
    v18 = sub_224DAC108();
    MEMORY[0x28223BE20](v18);
    v15 = v22;
    v23 = a3;
    v16 = sub_224D8E6EC;
  }

  v19 = sub_224A392FC(v16, v15, v14);
  sub_224A3933C(v19, a4);
}

uint64_t sub_224D8AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v40 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  v36 = a1;
  v23 = sub_224DABDB8();
  v24 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v23 + v24, v22, &unk_27D6F5060, &qword_224DB5620);

  (*(v6 + 16))(v20, v39, v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v25 = *(v10 + 56);
  sub_224A3796C(v22, v13, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v20, &v13[v25], &unk_27D6F5060, &qword_224DB5620);
  v26 = *(v6 + 48);
  if (v26(v13, 1, v5) != 1)
  {
    sub_224A3796C(v13, v40, &unk_27D6F5060, &qword_224DB5620);
    if (v26(&v13[v25], 1, v5) != 1)
    {
      v28 = &v13[v25];
      v29 = v35;
      (*(v6 + 32))(v35, v28, v5);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v30 = v40;
      LODWORD(v39) = sub_224DAEDD8();
      v31 = *(v6 + 8);
      v31(v29, v5);
      sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
      v31(v30, v5);
      sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
      if (v39)
      {
        goto LABEL_9;
      }

LABEL_7:
      v27 = 0;
      return v27 & 1;
    }

    sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
    (*(v6 + 8))(v40, v5);
LABEL_6:
    sub_224A3311C(v13, &qword_27D6F5B90, &qword_224DB5C50);
    goto LABEL_7;
  }

  sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
  if (v26(&v13[v25], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
LABEL_9:
  if (sub_224DABDD8() == v37 && v32 == v38)
  {

    v27 = 1;
  }

  else
  {
    v27 = sub_224DAFD88();
  }

  return v27 & 1;
}

uint64_t sub_224D8B38C()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6E98, &qword_224DC2F68);
  return sub_224DAEE28();
}

uint64_t sub_224D8B418()
{
  v0 = sub_224DA250C(&unk_283827DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6EA0, &qword_224DC2F70);
  result = swift_arrayDestroy();
  off_281352F90 = v0;
  return result;
}

uint64_t sub_224D8B474()
{
  v0 = sub_224DA250C(&unk_283827E58);
  result = sub_224A3311C(&unk_283827E78, &qword_27D6F6EA0, &qword_224DC2F70);
  off_281353BD8 = v0;
  return result;
}

uint64_t sub_224D8B4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 240);
  os_unfair_lock_lock(*(v7 + 16));
  sub_224D8B550(v3, a1, a2, a3, &v9);
  os_unfair_lock_unlock(*(v7 + 16));
  return v9;
}

uint64_t sub_224D8B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount;
  swift_beginAccess();
  if (!*(*(a1 + v10) + 16) || (sub_224A3E7EC(a2), (v11 & 1) == 0))
  {
    result = swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  if (qword_281353BD0 != -1)
  {
    swift_once();
  }

  v12 = off_281353BD8;
  v13 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v14 = sub_224DA9FE8();
  v16 = v15;
  swift_endAccess();
  if (!v12[2])
  {

    goto LABEL_9;
  }

  v17 = sub_224A3A40C(v14, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v21 = *(v12[7] + 8 * v17);
  v25[0] = a3;
  v25[1] = a4;
  MEMORY[0x28223BE20](result);
  v24[2] = v25;

  v22 = sub_224B3E818(sub_224D8DE78, v24, v21);

  v23 = v22 & 1;
LABEL_10:
  *a5 = v23;
  return result;
}

uint64_t sub_224D8B730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v11 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224D84200(a1, v11);

  v12 = *(v5 + 232);
  v13 = sub_224DAC108();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v14 = sub_224A392FC(sub_224D8DE54, v16, v13);
  sub_224A3933C(v14, a4);
}

uint64_t sub_224D8B890()
{
  v1 = *(*v0 + 232);
  v2 = sub_224DAC148();
  v3 = sub_224D79460(v2);

  return v3;
}

uint64_t sub_224D8B8E4()
{
  v51 = sub_224DA9688();
  v48 = *(v51 - 8);
  v1 = *(v48 + 64);
  v2 = MEMORY[0x28223BE20](v51);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v45 = v43 - v6;
  MEMORY[0x28223BE20](v5);
  v50 = v43 - v7;
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  v16 = sub_224D8165C();
  v17 = *(v16 + 16);
  v46 = v15;
  v47 = v4;
  if (v17)
  {
    v57 = v0;
    v58 = MEMORY[0x277D84F90];
    sub_224ADA224(0, v17, 0);
    v18 = v58;
    v56 = v16;
    v19 = (v16 + 40);
    do
    {
      v20 = *v19;
      v21 = *(v19 - 1);
      v22 = v20;
      sub_224DAC238();
      v58 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_224ADA224(v23 > 1, v24 + 1, 1);
        v18 = v58;
      }

      *(v18 + 16) = v24 + 1;
      (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, v13, v8);
      v19 += 2;
      --v17;
    }

    while (v17);

    v15 = v46;
    v4 = v47;
    v0 = v57;
    v25 = *(v18 + 16);
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_17:

    v40 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v18 = MEMORY[0x277D84F90];
  v25 = *(MEMORY[0x277D84F90] + 16);
  if (!v25)
  {
    goto LABEL_17;
  }

LABEL_7:
  v26 = v0[2];
  v56 = v0[3];
  ObjectType = swift_getObjectType();
  v29 = *(v9 + 16);
  v28 = v9 + 16;
  v54 = v29;
  v55 = ObjectType;
  v30 = v18 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
  v31 = *(v28 + 56);
  v52 = (v28 - 8);
  v53 = v31;
  v43[0] = v48 + 8;
  v49 = (v48 + 32);
  v57 = MEMORY[0x277D84F90];
  v43[1] = v26;
  v44 = v8;
  v29(v15, v30, v8);
  while (1)
  {
    v32 = *(v56 + 8);
    sub_224DAC3F8();
    v33 = v45;
    sub_224DA9548();
    v34 = v51;
    (*v43[0])(v4, v51);
    (*v52)(v15, v8);
    v35 = *v49;
    (*v49)(v50, v33, v34);
    v36 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_224AD9420(0, v36[2] + 1, 1, v36);
    }

    v38 = v36[2];
    v37 = v36[3];
    v57 = v36;
    v15 = v46;
    if (v38 >= v37 >> 1)
    {
      v57 = sub_224AD9420(v37 > 1, v38 + 1, 1, v57);
    }

    v39 = v57;
    v57[2] = v38 + 1;
    v35(&v39[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v38], v50, v51);
    v4 = v47;
    v8 = v44;
    v30 += v53;
    if (!--v25)
    {
      break;
    }

    v54(v15, v30, v44);
  }

  v40 = v57;
LABEL_18:
  v41 = sub_224AE9040(v40);

  return v41;
}

void *sub_224D8BDB0()
{
  v1 = sub_224DA9688();
  v71 = *(v1 - 8);
  v2 = *(v71 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v70 = &v67 - v7;
  MEMORY[0x28223BE20](v6);
  v77 = &v67 - v8;
  v9 = sub_224DAC268();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v14 = *(*(v83 - 1) + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v67 - v15;
  v16 = *(v0 + 12);
  v17 = *(v0 + 13);
  __swift_project_boxed_opaque_existential_1(v0 + 9, v16);
  (*(v17 + 32))(v84, 768, v16, v17);
  if (!*(&v85 + 1))
  {
    sub_224A3311C(v84, &qword_27D6F50E0, &qword_224DB41A0);
    return MEMORY[0x277D84FA0];
  }

  v86[0] = v84[0];
  v86[1] = v84[1];
  v86[2] = v85;
  v18 = sub_224A86CAC();
  if (!v18)
  {
    sub_224A699F0(v86);
    return MEMORY[0x277D84FA0];
  }

  v79 = v0;
  v69 = v1;
  v19 = *(v18 + 64);
  v80 = v18 + 64;
  v81 = v18;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;

  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v73 = v5;
  v72 = v13;
  v74 = v10;
  while (1)
  {
    v75 = v26;
    if (!v22)
    {
      break;
    }

LABEL_12:
    v28 = __clz(__rbit64(v22)) | (v25 << 6);
    v29 = v81;
    v30 = *(v81 + 48);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v32 = v82;
    (*(*(v31 - 8) + 16))(v82, v30 + *(*(v31 - 8) + 72) * v28, v31);
    v33 = *(*(v29 + 56) + 8 * v28);
    *(v32 + *(v83 + 12)) = v33;
    v34 = [v33 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v35 = sub_224DAF008();

    MEMORY[0x28223BE20](v36);
    *(&v67 - 2) = v32;
    v37 = sub_224AD8B0C(sub_224D8DEEC, (&v67 - 4), v35);

    sub_224A3311C(v32, &qword_27D6F38A8, &unk_224DB4650);
    v38 = v37[2];
    result = v75;
    v39 = v75[2];
    v40 = v39 + v38;
    if (__OFADD__(v39, v38))
    {
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

    result = swift_isUniquelyReferenced_nonNull_native();
    v26 = v75;
    if (!result || v40 > v75[3] >> 1)
    {
      if (v39 <= v40)
      {
        v41 = v39 + v38;
      }

      else
      {
        v41 = v39;
      }

      result = sub_224AD93E4(result, v41, 1, v75);
      v26 = result;
    }

    v5 = v73;
    v10 = v74;
    v22 &= v22 - 1;
    if (v37[2])
    {
      v42 = v26[2];
      if ((v26[3] >> 1) - v42 < v38)
      {
        goto LABEL_42;
      }

      v43 = v26 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v42;
      swift_arrayInitWithCopy();

      v13 = v72;
      if (v38)
      {
        v44 = v26[2];
        v45 = __OFADD__(v44, v38);
        v46 = v44 + v38;
        if (v45)
        {
          goto LABEL_43;
        }

        v26[2] = v46;
      }
    }

    else
    {

      v13 = v72;
      if (v38)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v27 >= v23)
    {
      break;
    }

    v22 = *(v80 + 8 * v27);
    ++v25;
    if (v22)
    {
      v25 = v27;
      goto LABEL_12;
    }
  }

  v47 = v75[2];
  if (v47)
  {
    v48 = *(v79 + 2);
    v81 = *(v79 + 3);
    v82 = v48;
    v49 = v75;
    ObjectType = swift_getObjectType();
    v52 = *(v10 + 16);
    v51 = v10 + 16;
    v79 = v52;
    v80 = ObjectType;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v78 = *(v51 + 56);
    v54 = (v51 - 8);
    v68 = (v71 + 8);
    v76 = (v71 + 32);
    v83 = MEMORY[0x277D84F90];
    v55 = v69;
    v74 = v51;
    v52(v13, v53, v9);
    while (1)
    {
      v56 = *(v81 + 8);
      sub_224DAC3F8();
      v57 = v13;
      v58 = v70;
      sub_224DA9548();
      (*v68)(v5, v55);
      (*v54)(v57, v9);
      v59 = *v76;
      (*v76)(v77, v58, v55);
      v60 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_224AD9420(0, v60[2] + 1, 1, v60);
      }

      v62 = v60[2];
      v61 = v60[3];
      v83 = v60;
      v13 = v72;
      if (v62 >= v61 >> 1)
      {
        v83 = sub_224AD9420(v61 > 1, v62 + 1, 1, v83);
      }

      v63 = v83;
      v83[2] = v62 + 1;
      v64 = v63 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v62;
      v55 = v69;
      v59(v64, v77, v69);
      v5 = v73;
      v53 += v78;
      if (!--v47)
      {
        break;
      }

      v79(v13, v53, v9);
    }

    v65 = v83;
  }

  else
  {

    v65 = MEMORY[0x277D84F90];
  }

  v66 = sub_224AE9040(v65);

  sub_224A699F0(v86);
  return v66;
}

uint64_t sub_224D8C574()
{
  v2 = v1;
  v3 = sub_224DA9688();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  *v46 = *(v0 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
  sub_224DAC9B8();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x277D84FA0];
  }

  v36 = v12;
  v37 = v3;
  v38 = v10;
  v39 = v7;
  v13 = v47;
  v47 = MEMORY[0x277D84FA0];
  v14 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  result = sub_224DAC678();
  v16 = result;
  v17 = *(result + 16);
  if (!v17)
  {

    return MEMORY[0x277D84FA0];
  }

  v18 = 0;
  v19 = result + 32;
  v20 = v40 + 16;
  v21 = (v40 + 8);
  v34 = result;
  v35 = v13;
  v32 = result + 32;
  v33 = v17;
  v45 = v40 + 16;
  while (v18 < *(v16 + 16))
  {
    sub_224A3317C(v19 + 40 * v18, v46);
    v22 = sub_224DAC9A8();
    if (v2)
    {

      result = __swift_destroy_boxed_opaque_existential_1(v46);
      v2 = 0;
    }

    else
    {
      v23 = v20;
      v43 = v22;
      __swift_destroy_boxed_opaque_existential_1(v46);
      v24 = *(v43 + 16);
      if (v24)
      {
        v41 = v18;
        v42 = 0;
        v25 = v39;
        v26 = v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v44 = *(v40 + 72);
        v27 = *(v40 + 16);
        v29 = v37;
        v28 = v38;
        v30 = v36;
        do
        {
          v27(v30, v26, v29);
          sub_224DA9548();
          sub_224ADB390(v28, v25);
          v31 = *v21;
          (*v21)(v28, v29);
          v31(v30, v29);
          v26 += v44;
          --v24;
        }

        while (v24);

        v18 = v41;
        v2 = v42;
        v16 = v34;
        v19 = v32;
        v17 = v33;
        v20 = v45;
      }

      else
      {

        v20 = v23;
      }
    }

    if (++v18 == v17)
    {

      return v47;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D8C898@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v6 = sub_224DAF008();

  v10[2] = a2;
  sub_224D40D40(sub_224D8DF08, v10, v6);
  v8 = v7;

  *a3 = v8;
  return result;
}

uint64_t sub_224D8C960(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *a1;
  v9 = [v8 widget];
  v10 = [v8 metrics];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  return sub_224DAC228();
}

uint64_t sub_224D8CAC8()
{
  v1 = *v0;
  v2 = sub_224D8B8E4();
  v3 = sub_224D8BDB0();
  return sub_224AD6960(v3, v2);
}

uint64_t sub_224D8CB30(uint64_t a1)
{
  result = sub_224A94F2C(&qword_2813580D8, type metadata accessor for MobileTimelineService);
  *(a1 + 8) = result;
  return result;
}

void *sub_224D8CE10(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a5(a4);
    v14 = a6(v13, a2, a3, a4);
    a7(a4, 2);

    return v14;
  }

  return result;
}

uint64_t sub_224D8CECC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_224DAFD88() & 1;
  }
}

uint64_t sub_224D8CF24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v33 = a3;
  v29[1] = a2;
  v31 = a1;
  v6 = sub_224DACB98();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_224DACB08();
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACB28();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_224DACC88();
  v19 = *(v32 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v32);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 232);
  v24 = sub_224DAC108();
  v39 = v31;
  v25 = sub_224A392FC(v33, v38, v24);
  (*(v15 + 104))(v18, *MEMORY[0x277CF9B50], v14);
  (*(v10 + 104))(v13, *MEMORY[0x277CF9B40], v30);
  v26 = swift_allocObject();
  v27 = v37;
  *(v26 + 16) = v36;
  *(v26 + 24) = v27;
  *v9 = v26;
  (*(v34 + 104))(v9, *MEMORY[0x277CF9B70], v35);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v25, v22);

  return (*(v19 + 8))(v22, v32);
}

uint64_t sub_224D8D258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281352F88 != -1)
  {
    v12 = a1;
    v13 = a2;
    swift_once();
    a1 = v12;
    a2 = v13;
  }

  v6 = off_281352F90;
  if (*(off_281352F90 + 2) && (v7 = sub_224A3A40C(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    v15[0] = a3;
    v15[1] = a4;
    MEMORY[0x28223BE20](v7);
    v14[2] = v15;

    v10 = sub_224B3E818(sub_224D8E728, v14, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_224D8D408(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v43 = a4;
  v32 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v37 = &v30 - v6;
  v41 = sub_224DABE18();
  v7 = *(*(v41 - 8) + 64);
  result = MEMORY[0x28223BE20](v41);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v11 = 0;
  v44 = a3;
  v12 = *(a3 + 64);
  v33 = 0;
  v34 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v38 = v9 + 16;
  v36 = v9 + 8;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v45 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v11 << 6);
    v21 = v44;
    v22 = v39;
    v23 = v40;
    v24 = *(v40 + 16);
    v25 = v41;
    v24(v39, v44[6] + *(v40 + 72) * v20, v41);
    v26 = v21[7];
    v35 = v20;
    v27 = *(v26 + 8 * v20);
    v28 = v37;
    v24(v37, v22, v25);
    *(v28 + *(v42 + 48)) = v27;
    swift_bridgeObjectRetain_n();
    LOBYTE(v24) = sub_224DABDF8();
    sub_224A3311C(v28, &qword_27D6F6D38, &unk_224DC2010);

    result = (*(v23 + 8))(v22, v25);
    v15 = v45;
    if (v24)
    {
      *(v32 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_224B2E0C4(v32, v31, v33, v44);
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      return sub_224B2E0C4(v32, v31, v33, v44);
    }

    v19 = *(v34 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v45 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D8D6E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_unknownObjectRetain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      swift_unknownObjectRetain();
      v11 = sub_224D8CE10(v14, v8, a1, a2, MEMORY[0x277D85038], sub_224D8D408, MEMORY[0x277D85030]);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      swift_unknownObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);
  swift_unknownObjectRetain();
  v11 = sub_224D8D408((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  swift_unknownObjectRelease();
  if (v3)
  {
    swift_willThrow();
  }

  swift_unknownObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_224D8D900(void *a1)
{
  v2 = sub_224DABD68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v39 = sub_224DABE18();
  v20 = *(v39 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v39);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_224DABDE8();
  v25 = *(v41 + 232);
  sub_224DAC118();
  v26 = v3;
  (*(v3 + 104))(v17, *MEMORY[0x277CF98B0], v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v27 = *(v7 + 56);
  sub_224A3796C(v19, v10, &qword_27D6F4C30, &unk_224DBB310);
  sub_224A3796C(v17, &v10[v27], &qword_27D6F4C30, &unk_224DBB310);
  v28 = *(v3 + 48);
  v41 = v2;
  if (v28(v10, 1, v2) != 1)
  {
    v37 = v20;
    sub_224A3796C(v10, v40, &qword_27D6F4C30, &unk_224DBB310);
    if (v28(&v10[v27], 1, v41) != 1)
    {
      v30 = &v10[v27];
      v31 = v38;
      v32 = v41;
      (*(v26 + 32))(v38, v30, v41);
      sub_224A94F2C(&unk_281350E90, MEMORY[0x277CF98C8]);
      v33 = v26 + 32;
      v29 = sub_224DAEDD8();
      v34 = *(v33 - 24);
      v34(v31, v32);
      sub_224A3311C(v17, &qword_27D6F4C30, &unk_224DBB310);
      sub_224A3311C(v19, &qword_27D6F4C30, &unk_224DBB310);
      (*(v37 + 8))(v23, v39);
      v34(v40, v32);
      sub_224A3311C(v10, &qword_27D6F4C30, &unk_224DBB310);
      return v29 & 1;
    }

    sub_224A3311C(v17, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3311C(v19, &qword_27D6F4C30, &unk_224DBB310);
    (*(v37 + 8))(v23, v39);
    (*(v26 + 8))(v40, v41);
    goto LABEL_6;
  }

  sub_224A3311C(v17, &qword_27D6F4C30, &unk_224DBB310);
  sub_224A3311C(v19, &qword_27D6F4C30, &unk_224DBB310);
  (*(v20 + 8))(v23, v39);
  if (v28(&v10[v27], 1, v41) != 1)
  {
LABEL_6:
    sub_224A3311C(v10, &qword_27D6F4C28, qword_224DBA340);
    v29 = 0;
    return v29 & 1;
  }

  sub_224A3311C(v10, &qword_27D6F4C30, &unk_224DBB310);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_224D8DE94(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_224DAFD88() & 1;
  }
}

uint64_t sub_224D8DF84(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a4;
  v38 = a2;
  v39 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v5 = *(*(v50 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v50);
  v49 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v38 - v8;
  v47 = sub_224DABE18();
  v9 = *(*(v47 - 8) + 64);
  result = MEMORY[0x28223BE20](v47);
  v54 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v52 = a3;
  v14 = *(a3 + 64);
  v42 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v40 = 0;
  v41 = (v15 + 63) >> 6;
  v45 = v11 + 16;
  v46 = v11;
  v44 = v11 + 8;
  while (v17)
  {
    v18 = __clz(__rbit64(v17));
    v53 = (v17 - 1) & v17;
LABEL_11:
    v21 = v18 | (v13 << 6);
    v22 = v52;
    v23 = v46;
    v24 = v47;
    v25 = *(v46 + 16);
    v26 = v54;
    v25(v54, v52[6] + *(v46 + 72) * v21, v47);
    v27 = v22[7];
    v43 = v21;
    v28 = *(v27 + 8 * v21);
    v29 = v48;
    v25(v48, v26, v24);
    v31 = v49;
    v30 = v50;
    *(v29 + *(v50 + 48)) = v28;
    sub_224A3796C(v29, v31, &qword_27D6F6D38, &unk_224DC2010);
    v32 = *(v31 + *(v30 + 48));
    swift_bridgeObjectRetain_n();

    v33 = sub_224DABDB8();
    v34 = *(v23 + 8);
    v35 = v34(v31, v24);
    v56 = v33;
    MEMORY[0x28223BE20](v35);
    *(&v38 - 2) = &v56;
    v36 = v55;
    LOBYTE(v31) = sub_224B449EC(sub_224D6E378, (&v38 - 4), v51);
    v55 = v36;
    sub_224A3311C(v29, &qword_27D6F6D38, &unk_224DC2010);

    result = v34(v54, v24);
    v17 = v53;
    if (v31)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_224B2E0C4(v39, v38, v40, v52);
      }
    }
  }

  v19 = v13;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v41)
    {
      return sub_224B2E0C4(v39, v38, v40, v52);
    }

    v20 = *(v42 + 8 * v13);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v53 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D8E32C(uint64_t a1, unint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_224D8CE10(v13, v7, a1, a2, MEMORY[0x277D84FC8], sub_224D8DF84, MEMORY[0x277D84FC0]);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_224D8DF84((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_224D8E528(uint64_t a1)
{
  v3 = *(sub_224DABE18() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224D88F84(a1, v4, v5);
}

uint64_t objectdestroy_34Tm()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224D8E660()
{
  v1 = *(sub_224DABE18() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224D89598(v2, v3);
}

uint64_t sub_224D8E744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_224A3796C(a3, v27 - v11, &unk_27D6F4620, &qword_224DB34D0);
  v13 = sub_224DAF128();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_224A3311C(v12, &unk_27D6F4620, &qword_224DB34D0);
  }

  else
  {
    sub_224DAF118();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_224DAF0C8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_224DAEE48() + 32;
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

      sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);

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

  sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);
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

uint64_t sub_224D8EA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAAFC8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  v17 = sub_224DAC268();
  (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  v18 = sub_224DAAFD8();
  if (*(v18 + 16) && (v19 = sub_224B31510(v32), (v20 & 1) != 0))
  {
    v30 = a3;
    (*(v10 + 16))(v14, *(v18 + 56) + *(v10 + 72) * v19, v9);

    (*(v10 + 32))(v16, v14, v9);
    v29[1] = sub_224DAAD38();
    v21 = sub_224DAAFA8();
    v23 = v22;
    sub_224D936BC(&qword_27D6F6EC0, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
    v24 = v31;
    sub_224DAAD18();
    if (!v24)
    {
      sub_224A78024(v21, v23);
      v28 = sub_224DAB018();
      (*(*(v28 - 8) + 8))(a1, v28);
      (*(v10 + 8))(v16, v9);
      return sub_224D9364C(v8, v30);
    }

    sub_224A78024(v21, v23);
    v25 = sub_224DAB018();
    (*(*(v25 - 8) + 8))(a1, v25);
    (*(v10 + 8))(v16, v9);
    a3 = v30;
  }

  else
  {

    sub_224D95514();
    swift_allocError();
    swift_willThrow();
    v26 = sub_224DAB018();
    (*(*(v26 - 8) + 8))(a1, v26);
  }

  return sub_224D93704(a3, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
}

uint64_t sub_224D8EE04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6EF8, &qword_224DC3470);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAC268();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224D956BC();
  v17 = v22;
  sub_224DAFEF8();
  if (!v17)
  {
    v18 = v20;
    sub_224D936BC(&qword_27D6F56D0, MEMORY[0x277CF9978]);
    sub_224DAFC48();
    (*(v21 + 8))(v10, v7);
    sub_224D9364C(v6, v14);
    sub_224D9543C(v14, v18, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_224D93704(v14, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
}

uint64_t sub_224D8F0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E45746567646977 && a2 == 0xEE0079654B797274)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224D8F170(uint64_t a1)
{
  v2 = sub_224D956BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224D8F1AC(uint64_t a1)
{
  v2 = sub_224D956BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224D8F200(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F08, &qword_224DC3478);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224D956BC();
  sub_224DAFF08();
  sub_224DAC268();
  sub_224D936BC(&qword_27D6F5CA8, MEMORY[0x277CF9978]);
  sub_224DAFCB8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224D8F378()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5668, &qword_224DBD770);
    sub_224A33088(&qword_281350FC0, &qword_27D6F5668, &qword_224DBD770);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_224D8F43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = v9 - v4;
  if ((*(v0 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_started) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_started) = 1;
    v6 = *(v0 + 88);
    v9[1] = sub_224B53220();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6ED0, &qword_224DC3308);
    sub_224A33088(&qword_281351190, &qword_27D6F6ED0, &qword_224DC3308);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    if ((*(v6 + OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_started) & 1) == 0)
    {
      *(v6 + OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_started) = 1;
      v7 = sub_224DAF128();
      (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;

      sub_224D8E744(0, 0, v5, &unk_224DC3310, v8);
    }
  }

  return result;
}

uint64_t sub_224D8F680(uint64_t a1)
{
  v2 = sub_224DAAE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB018();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ReplicatorUpdateObserver.Update(0);
  v13 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D9543C(a1, v15, type metadata accessor for ReplicatorUpdateObserver.Update);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      return sub_224D93704(v15, type metadata accessor for ReplicatorUpdateObserver.Update);
    }

    else
    {
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4238, &unk_224DC3330) + 48);
      (*(v8 + 32))(v11, v15, v7);
      (*(v3 + 32))(v6, &v15[v17], v2);
      sub_224D8F928(v11, v6);

      (*(v3 + 8))(v6, v2);
      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

void sub_224D8F928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v97 = sub_224DAAF48();
  v99 = *(v97 - 1);
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  v96 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB018();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 8);
  MEMORY[0x28223BE20](v8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56D8, &qword_224DBD790);
  v11 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = v81 - v12;
  v92 = sub_224DA9908();
  v95 = *(v92 - 8);
  v13 = v95[8];
  v14 = MEMORY[0x28223BE20](v92);
  v88 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v81 - v16;
  v18 = sub_224DAC268();
  v19 = *(v18 - 8);
  v93 = v18;
  v94 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v81 - v25;
  v27 = sub_224DA9688();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v85 = v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v89 = v81 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v81 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v81 - v37;
  sub_224AEFFB4(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_224A3311C(v26, &unk_27D6F4680, &unk_224DB4610);
    v39 = sub_224DAB228();
    v40 = sub_224DAF288();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_224A2F000, v39, v40, "Replicator temporary URL is not available; ignoring record updates", v41, 2u);
      MEMORY[0x22AA5EED0](v41, -1, -1);
    }
  }

  else
  {
    v98 = v28;
    v42 = *(v28 + 32);
    v90 = v38;
    v91 = v27;
    v42(v38, v26, v27);
    sub_224D93764(v36, v22, a1, a2);
    v43 = v3;
    v84 = a2;
    sub_224DAB008();
    v44 = sub_224D94A10(v22, v17);
    v45 = v95 + 1;
    v46 = v92;
    v83 = v95[1];
    v83(v17, v92);
    if (v44)
    {
      (*(v94 + 8))(v22, v93);
      v47 = *(v98 + 8);
      v48 = v91;
      v47(v36, v91);
      v47(v90, v48);
    }

    else
    {
      v49 = *(v43 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager + 24);
      v95 = *(v43 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager + 32);
      __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager), v49);
      sub_224DAA3A8();
      v82 = v43[7];
      v95 = v43[10];
      v81[1] = __swift_project_boxed_opaque_existential_1(v43 + 4, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v50 = *(v99 + 72);
      v51 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      *(swift_allocObject() + 16) = xmmword_224DB3100;
      sub_224DAAF88();
      sub_224DAABE8();
      v95 = v45;

      v52 = v43[12];
      v53 = v43[13];
      ObjectType = swift_getObjectType();
      v55 = *(v53 + 8);
      v82 = ObjectType;
      sub_224DAC3F8();
      v56 = *(v53 + 16);
      sub_224DAC448();
      v57 = v88;
      sub_224DAB008();
      sub_224DAC458();
      v102 = v43;
      v83(v57, v46);
      v58 = v89;
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v101 = v36;
      v96 = v22;
      v59 = sub_224DAB258();
      __swift_project_value_buffer(v59, qword_281365120);
      v60 = v98;
      v61 = v85;
      v62 = v91;
      v99 = *(v98 + 16);
      v100 = (v98 + 16);
      (v99)(v85, v58, v91);
      v63 = sub_224DAB228();
      v64 = sub_224DAF2A8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v103 = v95;
        *v65 = 136446210;
        sub_224D936BC(&qword_281351A70, MEMORY[0x277CC9260]);
        v66 = sub_224DAFD28();
        v68 = v67;
        v97 = *(v60 + 8);
        v97(v61, v62);
        v69 = sub_224A33F74(v66, v68, &v103);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_224A2F000, v63, v64, "Wrote to %{public}s", v65, 0xCu);
        v70 = v95;
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x22AA5EED0](v70, -1, -1);
        MEMORY[0x22AA5EED0](v65, -1, -1);
      }

      else
      {

        v97 = *(v60 + 8);
        v97(v61, v62);
      }

      v71 = v93;
      v72 = v94;
      v73 = v87;
      v74 = v96;
      (*(v94 + 16))(v87, v96, v93);
      v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56E8, &unk_224DC3340) + 44);
      v76 = v89;
      (v99)(v73 + v75, v89, v62);
      (*(v60 + 56))(v73 + v75, 0, 1, v62);
      v77 = *(v86 + 44);
      v78 = sub_224DAAE38();
      (*(*(v78 - 8) + 16))(v73 + v77, v84, v78);
      v79 = v102[3];
      sub_224DAB348();
      sub_224A3311C(v73, &qword_27D6F56D8, &qword_224DBD790);
      v80 = v97;
      v97(v76, v62);
      (*(v72 + 8))(v74, v71);
      v80(v101, v62);
      v80(v90, v62);
    }
  }
}

uint64_t sub_224D906AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v126 = a3;
  v8 = sub_224DAAF28();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v107 - v13;
  v123 = sub_224DAAF48();
  v125 = *(v123 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x28223BE20](v123);
  v128 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_224DAAB88();
  v120 = *(v131 - 8);
  v17 = *(v120 + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_224DAC268();
  v135 = *(v132 - 8);
  v19 = *(v135 + 64);
  v20 = MEMORY[0x28223BE20](v132);
  v127 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v133 = &v107 - v22;
  v124 = sub_224DAAD48();
  v122 = *(v124 - 8);
  v23 = *(v122 + 64);
  MEMORY[0x28223BE20](v124);
  v121 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAACE8();
  v143 = *(v25 - 8);
  v26 = *(v143 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v139 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v107 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6638, qword_224DC07A0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v141 = (&v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v129 = &v107 - v35;
  v36 = sub_224DAAE38();
  v37 = *(*(v36 - 8) + 64);
  result = MEMORY[0x28223BE20](v36);
  v42 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v40 + 2);
  if (!v43)
  {
    return result;
  }

  v117 = v40;
  v134 = v43;
  v118 = v14;
  v119 = v39;
  result = sub_224D91948(a2, v42);
  if (v4)
  {
    return result;
  }

  v111 = a2;
  v116 = v42;
  result = sub_224DAAE18();
  v44 = *(result + 16);
  v114 = v36;
  v115 = v6;
  v136 = v44;
  if (!v44)
  {
    v57 = v6;

    v58 = 1;
    v59 = v129;
    v46 = v143;
    goto LABEL_18;
  }

  v113 = v12;
  v112 = 0;
  v45 = 0;
  v46 = v143;
  v138 = result + ((*(v143 + 80) + 32) & ~*(v143 + 80));
  v137 = (v143 + 16);
  v140 = 0x8000000224DC43A0;
  v47 = (v143 + 8);
  while (1)
  {
    if (v45 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v50 = result;
    v51 = v138 + *(v46 + 72) * v45;
    v52 = *(v46 + 16);
    v53 = v25;
    v52(v30, v51, v25);
    if (sub_224DAACD8() == 0xD000000000000011 && 0x8000000224DC5340 == v54)
    {
      break;
    }

    v55 = sub_224DAFD88();

    if (v55)
    {
      goto LABEL_12;
    }

LABEL_6:
    ++v45;
    v25 = v53;
    (*v47)(v30, v53);
    v46 = v143;
    v49 = v141;
    result = v50;
    if (v136 == v45)
    {

      v58 = 1;
      v5 = v112;
      v36 = v114;
      v57 = v115;
      v12 = v113;
      v59 = v129;
      goto LABEL_19;
    }
  }

LABEL_12:
  if (sub_224DAACB8() != 0xD000000000000013 || v140 != v56)
  {
    v48 = sub_224DAFD88();

    if (v48)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

LABEL_17:

  v59 = v129;
  v25 = v53;
  v46 = v143;
  (*(v143 + 32))(v129, v30, v25);
  v58 = 0;
  v5 = v112;
  v36 = v114;
  v57 = v115;
  v12 = v113;
LABEL_18:
  v49 = v141;
LABEL_19:
  (*(v46 + 56))(v59, v58, 1, v25);
  sub_224A3796C(v59, v49, &qword_27D6F6638, qword_224DC07A0);
  if ((*(v46 + 48))(v49, 1, v25) == 1)
  {
    sub_224A3311C(v49, &qword_27D6F6638, qword_224DC07A0);
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
    v62 = *(sub_224DA9908() - 8);
    v63 = *(v62 + 72);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_224DB3100;
    v66 = v116;
    sub_224DAAD98();
    *v61 = v65;
    v67 = *MEMORY[0x277D46558];
    v68 = sub_224DAAC58();
    (*(*(v68 - 8) + 104))(v61, v67, v68);
    v36 = v114;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v69 = v66;
    sub_224A3311C(v59, &qword_27D6F6638, qword_224DC07A0);
    return (*(v119 + 8))(v69, v36);
  }

  v70 = v139;
  v71 = (*(v46 + 32))(v139, v49, v25);
  MEMORY[0x28223BE20](v71);
  v72 = v46;
  v69 = v116;
  *(&v107 - 4) = v57;
  *(&v107 - 3) = v69;
  *(&v107 - 2) = v70;
  v73 = sub_224D41144(sub_224D951D4, (&v107 - 6), v117);
  if (!v5)
  {
    v113 = v12;
    v74 = v57[7];
    v141 = v57[10];
    v75 = v73;
    __swift_project_boxed_opaque_existential_1(v57 + 4, v74);
    v76 = v122;
    v77 = v121;
    (*(v122 + 104))(v121, *MEMORY[0x277D46688], v124);
    v140 = v75;
    sub_224DAABC8();
    v108 = v25;
    (*(v76 + 8))(v77, v124);

    v78 = *(v135 + 16);
    v79 = &v117[(*(v135 + 80) + 32) & ~*(v135 + 80)];
    v80 = 0x8000000224DC43A0;
    v121 = OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_logger;
    v138 = *(v135 + 72);
    v137 = (v120 + 8);
    v140 = (v135 + 8);
    v117 = "liveControlReplicator";
    v112 = v125 + 16;
    v111 = (v125 + 8);
    *(&v81 + 1) = 2;
    v110 = xmmword_224DB3100;
    *&v81 = 136315394;
    v109 = v81;
    v82 = v116;
    v84 = v132;
    v83 = v133;
    v135 += 16;
    v141 = v78;
    v122 = 0x8000000224DC43A0;
    v78(v133, v79, v132);
    while (1)
    {
      if (sub_224DAACB8() == 0xD000000000000013 && v80 == v86)
      {
      }

      else
      {
        v87 = sub_224DAFD88();

        if ((v87 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v88 = v130;
      sub_224DAACC8();
      v89 = sub_224DAAB68();
      (*v137)(v88, v131);
      if (v89 > 3)
      {
        v124 = sub_224DAACB8();
        v136 = v90;
        v91 = sub_224DA9908();
        v92 = v118;
        (*(*(v91 - 8) + 56))(v118, 1, 1, v91);
        sub_224DAAD38();
        v93 = v132;
        v142[3] = v132;
        v142[4] = sub_224D936BC(&qword_27D6F5CA8, MEMORY[0x277CF9978]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v142);
        v141(boxed_opaque_existential_1, v133, v93);
        v95 = sub_224DAAD28();
        v97 = v96;
        __swift_destroy_boxed_opaque_existential_1(v142);
        sub_224DA96C8();
        sub_224D9543C(v92, v113, MEMORY[0x277D46780]);
        v98 = v115;
        sub_224DAAEE8();
        sub_224A78024(v95, v97);
        sub_224D93704(v92, MEMORY[0x277D46780]);
        v99 = v98[7];
        v136 = v98[10];
        __swift_project_boxed_opaque_existential_1(v98 + 4, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
        v100 = v125;
        v101 = *(v125 + 72);
        v102 = (*(v125 + 80) + 32) & ~*(v125 + 80);
        v103 = swift_allocObject();
        *(v103 + 16) = v110;
        v104 = *(v100 + 16);
        v105 = v128;
        v106 = v123;
        v104(v103 + v102, v128);
        sub_224DAABF8();
        (*v111)(v105, v106);

        v82 = v116;
        v84 = v132;
        v83 = v133;
        v85 = v141;
        v80 = v122;
        goto LABEL_26;
      }

      v84 = v132;
      v83 = v133;
LABEL_35:
      v85 = v141;
LABEL_26:
      (*v140)(v83, v84);
      v79 += v138;
      if (!--v134)
      {
        sub_224A3311C(v129, &qword_27D6F6638, qword_224DC07A0);
        (*(v143 + 8))(v139, v108);
        return (*(v119 + 8))(v82, v114);
      }

      v85(v83, v79, v84);
    }
  }

  sub_224A3311C(v129, &qword_27D6F6638, qword_224DC07A0);
  (*(v72 + 8))(v70, v25);
  return (*(v119 + 8))(v69, v36);
}

uint64_t sub_224D91948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = sub_224DAAC58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_224DA9908();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v35);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v8 + 16);
  v16(v11, a1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D46558])
  {
    v31 = a1;
    v32 = v16;
    (*(v8 + 96))(v11, v7);
    v17 = *v11;
    if (*(v17 + 16) == 1)
    {
      v18 = v12;
      v19 = v35;
      (*(v12 + 16))(v15, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v35);

      v20 = v34[8];
      __swift_project_boxed_opaque_existential_1(v34 + 4, v34[7]);
      v21 = *(v20 + 16);
      sub_224DAAC98();
      v22 = sub_224DAAE38();
      v23 = *(v22 - 8);
      v24 = (*(v23 + 48))(v6, 1, v22);
      v25 = v32;
      if (v24 == 1)
      {
        sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
        type metadata accessor for ReplicationService.ReplicationServiceError();
        sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
        swift_allocError();
        v25(v26, v31, v7);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (*(v18 + 8))(v15, v19);
      }

      else
      {
        (*(v18 + 8))(v15, v19);
        return (*(v23 + 32))(v33, v6, v22);
      }
    }

    else
    {

      type metadata accessor for ReplicationService.ReplicationServiceError();
      sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
      swift_allocError();
      v32(v29, v31, v7);
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v16(v28, a1, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v8 + 8))(v11, v7);
  }
}

BOOL sub_224D91E58()
{
  v0 = sub_224DAAB88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_224DAACB8() == 0xD000000000000013 && 0x8000000224DC43A0 == v5)
  {
  }

  else
  {
    v6 = sub_224DAFD88();

    result = 0;
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  sub_224DAACC8();
  v8 = sub_224DAAB68();
  (*(v1 + 8))(v4, v0);
  return v8 > 3;
}

uint64_t sub_224D91F9C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v141 = a2;
  v153 = a1;
  v125 = a4;
  v124 = sub_224DAAFF8();
  v5 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v123 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v122 = v117 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = v117 - v12;
  v128 = sub_224DAAFC8();
  v121 = *(v128 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v128);
  v127 = v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_224DA9688();
  v130 = *(v131 - 8);
  v15 = *(v130 + 64);
  v16 = MEMORY[0x28223BE20](v131);
  v120 = v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v134 = v117 - v18;
  v19 = sub_224DAC268();
  v151 = *(v19 - 8);
  v20 = *(v151 + 64);
  MEMORY[0x28223BE20](v19);
  v132 = v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v137 = v117 - v24;
  v139 = type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata(0);
  v25 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v145 = v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DA9908();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v129 = v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v138 = v117 - v33;
  MEMORY[0x28223BE20](v32);
  v133 = v117 - v34;
  v35 = sub_224DAAEA8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_224DAAF28();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v136 = v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = v117 - v44;
  v46 = sub_224DAAF48();
  v142 = *(v46 - 8);
  v143 = v46;
  v47 = *(v142 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v126 = v117 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v148 = v117 - v50;
  v51 = sub_224D91E58();
  v140 = a3;
  v135 = sub_224DAACB8();
  v149 = v52;
  v146 = v28;
  v147 = v27;
  v53 = (*(v28 + 56))(v45, 1, 1, v27);
  if (v51)
  {
    MEMORY[0x22AA59200](v53);
    sub_224D936BC(&qword_27D6F5CA8, MEMORY[0x277CF9978]);
    v54 = v153;
    v55 = v150;
    sub_224DAAE68();
    if (v55)
    {

      (*(v36 + 8))(v39, v35);
      return sub_224D93704(v45, MEMORY[0x277D46780]);
    }

    v150 = 0;
    v61 = v133;
    sub_224DAAE88();
    v117[1] = sub_224DA9898();
    v118 = v19;
    sub_224D9543C(v45, v136, MEMORY[0x277D46780]);
    v62 = v145;
    v63 = v118;
    sub_224DAAEE8();
    (v146[1])(v61, v147);
    (*(v36 + 8))(v39, v35);
    sub_224D93704(v45, MEMORY[0x277D46780]);
    v64 = v151;
    v65 = v137;
    (*(v151 + 16))(v137, v54, v63);
    v66 = 0;
  }

  else
  {
    sub_224DAAD38();
    v152[3] = v19;
    v152[4] = sub_224D936BC(&qword_27D6F5CA8, MEMORY[0x277CF9978]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v152);
    (*(v151 + 16))(boxed_opaque_existential_1, v153, v19);
    v58 = v150;
    v59 = sub_224DAAD28();
    if (v58)
    {
      sub_224D93704(v45, MEMORY[0x277D46780]);

      return __swift_destroy_boxed_opaque_existential_1(v152);
    }

    v150 = 0;
    v67 = v59;
    v68 = v60;
    __swift_destroy_boxed_opaque_existential_1(v152);
    sub_224DA96C8();
    sub_224D9543C(v45, v136, MEMORY[0x277D46780]);
    v63 = v19;
    sub_224DAAEE8();
    v64 = v151;
    sub_224A78024(v67, v68);
    sub_224D93704(v45, MEMORY[0x277D46780]);
    v66 = 1;
    v65 = v137;
    v62 = v145;
  }

  v118 = v63;
  v69 = *(v64 + 56);
  v69(v65, v66, 1, v63);
  v69(v62, 1, 1, v63);
  sub_224D9364C(v65, v62);
  v70 = v144;
  v71 = v62;
  v72 = v144[9];
  v149 = __swift_project_boxed_opaque_existential_1(v144 + 4, v144[7]);
  sub_224DAACB8();
  v73 = v138;
  sub_224DAAD98();
  v74 = *(v72 + 16);
  sub_224D936BC(&qword_27D6F6EC0, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
  sub_224D936BC(&qword_27D6F6EC8, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
  v75 = v150;
  v76 = sub_224DAAB38();
  if (v75)
  {

    (v146[1])(v73, v147);
    (*(v142 + 8))(v148, v143);
    return sub_224D93704(v71, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
  }

  else
  {
    v141 = v78;
    v79 = v76;
    v149 = v77;
    v80 = v146[1];
    v80(v73, v147);

    sub_224DAC248();
    sub_224DAC258();
    sub_224DAC238();
    v81 = v70[12];
    v82 = v70[13];
    swift_getObjectType();
    v83 = *(v82 + 8);
    sub_224DAC3F8();
    v153 = v80;
    v152[0] = sub_224DAC408();
    v152[1] = v84;
    sub_224DAAE48();
    v85 = v134;
    v150 = 0;

    v86 = *(v144 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager + 32);
    __swift_project_boxed_opaque_existential_1((v144 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager), *(v144 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager + 24));
    sub_224DA9658();
    LOBYTE(v81) = sub_224DAA378();

    if (v81)
    {
      v87 = v130;
      v88 = v119;
      v89 = v131;
      (*(v130 + 16))(v119, v85, v131);
      (*(v87 + 56))(v88, 0, 1, v89);
      v140 = v79;
      sub_224A77FD0(v79, v149);
      v90 = v127;
      sub_224DAAFB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
      v91 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
      v92 = *(*v91 + 72);
      v93 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_224DB3100;
      v95 = (v94 + v93);
      v96 = v91[14];
      *v95 = v141;
      v97 = v121;
      (*(v121 + 16))(&v95[v96], v90, v128);
      v144 = sub_224DA06F0(v94);
      swift_setDeallocating();
      sub_224A3311C(v95, &unk_27D6F6FE0, &unk_224DB9C50);
      swift_deallocClassInstance();
      v98 = v142;
      (*(v142 + 16))(v126, v148, v143);
      (v146[2])(v133, v129, v147);
      v99 = sub_224DA9878();
      (*(*(v99 - 8) + 56))(v122, 1, 1, v99);
      v152[0] = MEMORY[0x277D84F90];
      sub_224D936BC(&unk_27D6F5720, MEMORY[0x277D467D0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
      sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300);
      sub_224DAF788();
      sub_224DAAF58();
      sub_224A78024(v140, v149);
      (*(v97 + 8))(v127, v128);
      v153(v129, v147);
      (*(v130 + 8))(v134, v131);
      (*(v151 + 8))(v132, v118);
      (*(v98 + 8))(v148, v143);
      return sub_224D93704(v145, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
    }

    else
    {
      v100 = v130;
      v101 = v120;
      v102 = v131;
      (*(v130 + 16))(v120, v85, v131);
      v103 = sub_224DAB228();
      v104 = sub_224DAF288();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v152[0] = v146;
        *v105 = 136315138;
        sub_224D936BC(&qword_281351A70, MEMORY[0x277CC9260]);
        v106 = sub_224DAFD28();
        v107 = v101;
        v109 = v108;
        LODWORD(v144) = v104;
        v110 = *(v100 + 8);
        v150 = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v110(v107, v102);
        v111 = sub_224A33F74(v106, v109, v152);

        *(v105 + 4) = v111;
        _os_log_impl(&dword_224A2F000, v103, v144, "Archive at URL does not exist: %s", v105, 0xCu);
        v112 = v146;
        __swift_destroy_boxed_opaque_existential_1(v146);
        MEMORY[0x22AA5EED0](v112, -1, -1);
        MEMORY[0x22AA5EED0](v105, -1, -1);
      }

      else
      {

        v110 = *(v100 + 8);
        v150 = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v110(v101, v102);
      }

      type metadata accessor for ReplicationService.ReplicationServiceError();
      sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
      swift_allocError();
      v114 = v142;
      v113 = v143;
      v115 = v148;
      (*(v142 + 16))(v116, v148, v143);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_224A78024(v79, v149);
      v153(v129, v147);
      v110(v134, v131);
      (*(v151 + 8))(v132, v118);
      (*(v114 + 8))(v115, v113);
      return sub_224D93704(v145, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
    }
  }
}

void *sub_224D93424()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v3 = v0[11];

  v4 = v0[12];
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_logger;
  v6 = sub_224DAB258();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager));
  v7 = *(v0 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_subscriptions);

  return v0;
}

uint64_t sub_224D934CC()
{
  sub_224D93424();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224D9354C()
{
  result = sub_224DAB258();
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

uint64_t sub_224D9364C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D936BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224D93704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224D93764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v137 = a4;
  v138 = a2;
  v148 = a1;
  v139 = sub_224DA9908();
  v136 = *(v139 - 8);
  v5 = *(v136 + 64);
  MEMORY[0x28223BE20](v139);
  v134 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v123 - v9;
  v149 = sub_224DAC268();
  v151 = *(v149 - 8);
  v10 = v151[8];
  v11 = MEMORY[0x28223BE20](v149);
  v133 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v123 - v13;
  v14 = sub_224DAB018();
  v146 = *(v14 - 8);
  v147 = v14;
  v15 = *(v146 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v143 = &v123 - v18;
  v19 = type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v142 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v140 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v130 = &v123 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v144 = &v123 - v29;
  MEMORY[0x28223BE20](v28);
  v152 = &v123 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v150 = &v123 - v33;
  v34 = sub_224DAAFC8();
  v154 = *(v34 - 8);
  v155 = v34;
  v35 = *(v154 + 64);
  MEMORY[0x28223BE20](v34);
  v153 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_224DAAB88();
  v156 = *(v37 - 8);
  v157 = v37;
  v38 = *(v156 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_224DAB0F8();
  v42 = *(v41 - 8);
  v158 = v41;
  v159 = v42;
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v123 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v160 = &v123 - v47;
  v48 = sub_224DAAF48();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v141 = &v123 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v123 - v53;
  sub_224DAAF88();
  sub_224DAAF08();
  v55 = *(v49 + 8);
  v55(v54, v48);
  v56 = sub_224AFC108();
  if (v56 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v58 = v57;
    sub_224DAAF88();
    v59 = sub_224DAAF08();
    v61 = v60;
    v55(v54, v48);
    *v58 = v59;
    v58[1] = v61;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v62 = v56;
  v127 = v55;
  v128 = v48;
  v129 = a3;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v63 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v64 = sub_224B0B668(v62), (v65 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v74 = v73;
    *v73 = sub_224AF02C0(v62);
    v74[1] = v75;
    goto LABEL_10;
  }

  v66 = v158;
  v67 = v159;
  (*(v159 + 16))(v46, *(v63 + 56) + *(v159 + 72) * v64, v158);
  v68 = v160;
  (*(v67 + 32))(v160, v46, v66);
  sub_224DAB0C8();
  v69 = sub_224DAAEB8();
  v71 = v70;
  (*(v156 + 8))(v40, v157);
  if (v71)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v67 + 8))(v68, v66);
  }

  v76 = sub_224DAAFD8();
  if (!*(v76 + 16) || (v77 = sub_224B31510(v69), (v78 & 1) == 0))
  {

    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v159 + 8))(v160, v158);
  }

  v79 = v153;
  v80 = v154;
  v81 = v155;
  (*(v154 + 16))(v153, *(v76 + 56) + *(v154 + 72) * v77, v155);

  v82 = v150;
  sub_224DAAF98();
  v83 = sub_224DA9688();
  v84 = *(v83 - 8);
  if ((*(v84 + 48))(v82, 1, v83) == 1)
  {
    v85 = v160;
    sub_224A3311C(v82, &unk_27D6F4680, &unk_224DB4610);
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v80 + 8))(v79, v81);
    return (*(v159 + 8))(v85, v158);
  }

  v156 = v84;
  (*(v84 + 32))(v148, v82, v83);
  v86 = v152;
  v87 = v149;
  v124 = v151[7];
  v124(v152, 1, 1, v149);
  v88 = *(v146 + 16);
  v89 = v143;
  v126 = v146 + 16;
  v125 = v88;
  v88(v143, v129, v147);
  v90 = v142;
  v91 = v145;
  sub_224D8EA44(v89, v69, v142);
  v157 = v83;
  if (v91)
  {
  }

  else
  {
    sub_224A3311C(v86, &qword_27D6F4A18, &qword_224DB9070);
    sub_224D954A4(v90, v86);
  }

  v92 = v144;
  sub_224A3796C(v86, v144, &qword_27D6F4A18, &qword_224DB9070);
  v150 = v151[6];
  v93 = (v150)(v92, 1, v87);
  sub_224A3311C(v92, &qword_27D6F4A18, &qword_224DB9070);
  if (v93 == 1)
  {
    v94 = v141;
    sub_224DAAF88();
    sub_224DAAEF8();
    v95 = sub_224DA96A8();
    v97 = v96;

    if (v97 >> 60 == 15)
    {
      sub_224C4DE90();
      swift_allocError();
      swift_willThrow();
      v127(v94, v128);
      sub_224A3311C(v152, &qword_27D6F4A18, &qword_224DB9070);
      (*(v156 + 8))(v148, v157);
      (*(v154 + 8))(v153, v155);
      return (*(v159 + 8))(v160, v158);
    }

    sub_224DAAD38();
    sub_224D936BC(&qword_27D6F56D0, MEMORY[0x277CF9978]);
    v98 = v132;
    sub_224DAAD18();
    v145 = sub_224DAC248();
    v144 = sub_224DAC258();
    sub_224DAC218();
    sub_224DAC228();
    sub_224AC1D9C(v95, v97);
    v99 = v149;
    (v151[1])(v98, v149);
    v127(v141, v128);
    v100 = v152;
    sub_224A3311C(v152, &qword_27D6F4A18, &qword_224DB9070);
    v101 = v130;
    v124(v130, 0, 1, v99);
    sub_224D954A4(v101, v100);
  }

  v102 = v129;
  v103 = v152;
  v104 = v140;
  sub_224A3796C(v152, v140, &qword_27D6F4A18, &qword_224DB9070);
  v105 = v149;
  v106 = (v150)(v104, 1, v149);
  v107 = v159;
  if (v106 == 1)
  {
    sub_224A3311C(v104, &qword_27D6F4A18, &qword_224DB9070);
    v108 = v135;
    v109 = v147;
    v125(v135, v102, v147);
    v110 = sub_224DAB228();
    v111 = sub_224DAF2A8();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v150 = v112;
      v151 = swift_slowAlloc();
      v161 = v151;
      *v112 = 136446210;
      sub_224DAAF88();
      sub_224D936BC(&qword_281351720, MEMORY[0x277D46790]);
      v113 = v128;
      v114 = sub_224DAFD28();
      v116 = v115;
      v127(v54, v113);
      (*(v146 + 8))(v108, v109);
      v117 = sub_224A33F74(v114, v116, &v161);
      v107 = v159;

      v118 = v150;
      *(v150 + 4) = v117;
      _os_log_impl(&dword_224A2F000, v110, v111, "Could not retrieve widget entry key for %{public}s", v118, 0xCu);
      v119 = v151;
      __swift_destroy_boxed_opaque_existential_1(v151);
      MEMORY[0x22AA5EED0](v119, -1, -1);
      MEMORY[0x22AA5EED0](v118, -1, -1);
    }

    else
    {

      (*(v146 + 8))(v108, v109);
    }

    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_224A3311C(v152, &qword_27D6F4A18, &qword_224DB9070);
    (*(v156 + 8))(v148, v157);
  }

  else
  {
    v120 = v151;
    v121 = v133;
    (v151[4])(v133, v104, v105);
    v122 = v134;
    sub_224DAAD98();
    sub_224B44A4C(v122, v138);
    (*(v136 + 8))(v122, v139);
    (v120[1])(v121, v105);
    sub_224A3311C(v103, &qword_27D6F4A18, &qword_224DB9070);
  }

  (*(v154 + 8))(v153, v155);
  return (*(v107 + 8))(v160, v158);
}

uint64_t sub_224D94A10(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_224DA9908();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56F8, &qword_224DBBCC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v34 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = *(v2 + 104);
  v21 = *(v2 + 96);
  swift_getObjectType();
  v22 = *(v20 + 8);
  v23 = v35;
  sub_224DAC428();
  if (v23)
  {

    (*(v4 + 56))(v19, 1, 1, v3);
  }

  v35 = 0;
  (*(v4 + 16))(v17, v33, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v24 = *(v7 + 48);
  sub_224A3796C(v17, v10, &unk_27D6F5630, &unk_224DB34C0);
  sub_224A3796C(v19, &v10[v24], &unk_27D6F5630, &unk_224DB34C0);
  v25 = *(v4 + 48);
  if (v25(v10, 1, v3) != 1)
  {
    sub_224A3796C(v10, v34, &unk_27D6F5630, &unk_224DB34C0);
    if (v25(&v10[v24], 1, v3) != 1)
    {
      v27 = v32;
      (*(v4 + 32))(v32, &v10[v24], v3);
      sub_224D936BC(&qword_281351A10, MEMORY[0x277CC95F0]);
      v28 = v34;
      v26 = sub_224DAEDD8();
      v29 = *(v4 + 8);
      v29(v27, v3);
      sub_224A3311C(v17, &unk_27D6F5630, &unk_224DB34C0);
      sub_224A3311C(v19, &unk_27D6F5630, &unk_224DB34C0);
      v29(v28, v3);
      sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
      return v26 & 1;
    }

    sub_224A3311C(v17, &unk_27D6F5630, &unk_224DB34C0);
    sub_224A3311C(v19, &unk_27D6F5630, &unk_224DB34C0);
    (*(v4 + 8))(v34, v3);
    goto LABEL_8;
  }

  sub_224A3311C(v17, &unk_27D6F5630, &unk_224DB34C0);
  sub_224A3311C(v19, &unk_27D6F5630, &unk_224DB34C0);
  if (v25(&v10[v24], 1, v3) != 1)
  {
LABEL_8:
    sub_224A3311C(v10, &qword_27D6F56F8, &qword_224DBBCC8);
    v26 = 0;
    return v26 & 1;
  }

  sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
  v26 = 1;
  return v26 & 1;
}

void *sub_224D94EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47 = a2;
  v45 = a4;
  v46 = a13;
  v39 = a12;
  v40 = a3;
  v42 = a11;
  v16 = *(a6 - 8);
  v17 = *(v16 + 64);
  v43 = a9;
  MEMORY[0x28223BE20](a1);
  v44 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB258();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a6;
  v51[4] = a9;
  v51[5] = a10;
  v51[6] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(v16 + 32))(boxed_opaque_existential_1, a1, a6);
  v49 = a7;
  v50 = v39;
  v24 = __swift_allocate_boxed_opaque_existential_1(&v48);
  (*(*(a7 - 8) + 32))(v24, v40, a7);
  v25 = type metadata accessor for PlaceholderArchiveReplicator(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v28[2] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5668, &qword_224DBD770);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v28[3] = sub_224DAB358();
  *(v28 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_subscriptions) = MEMORY[0x277D84FA0];
  *(v28 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_started) = 0;
  sub_224BBF304(v51, (v28 + 4));
  updated = type metadata accessor for ReplicatorUpdateObserver(0);
  v33 = v45;
  (*(v20 + 16))(v23, v45, v19);
  v34 = v44;
  (*(v16 + 16))(v44, boxed_opaque_existential_1, a6);
  v35 = sub_224B554B8(v34, 0xD000000000000013, 0x8000000224DC43A0, v23, updated, a6, v43, v42);
  v36 = v46;
  v37 = v47;
  v28[11] = v35;
  v28[12] = v37;
  v28[13] = v36;
  (*(v20 + 32))(v28 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_logger, v33, v19);
  sub_224A36F98(&v48, v28 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v28;
}

uint64_t sub_224D951D4@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[2];
  result = sub_224D91F9C(a1, v6, v7, a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_224D95218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224B532B8(a1, v4, v5, v6);
}

uint64_t sub_224D952CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_224ACFF60;

  return sub_224A3BBFC(a1, v5);
}

uint64_t sub_224D95384(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_224ACED1C;

  return sub_224A3BBFC(a1, v5);
}

uint64_t sub_224D9543C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224D954A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_224D95514()
{
  result = qword_27D6F6ED8;
  if (!qword_27D6F6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6ED8);
  }

  return result;
}

void sub_224D955A0()
{
  sub_224D9560C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_224D9560C()
{
  if (!qword_281350E28)
  {
    sub_224DAC268();
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_281350E28);
    }
  }
}

unint64_t sub_224D95668()
{
  result = qword_27D6F6EF0;
  if (!qword_27D6F6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6EF0);
  }

  return result;
}

unint64_t sub_224D956BC()
{
  result = qword_27D6F6F00;
  if (!qword_27D6F6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F00);
  }

  return result;
}

unint64_t sub_224D95724()
{
  result = qword_27D6F6F10;
  if (!qword_27D6F6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F10);
  }

  return result;
}

unint64_t sub_224D9577C()
{
  result = qword_27D6F6F18;
  if (!qword_27D6F6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F18);
  }

  return result;
}

unint64_t sub_224D957D4()
{
  result = qword_27D6F6F20;
  if (!qword_27D6F6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F20);
  }

  return result;
}

uint64_t sub_224D95828(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_224DAAE38();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224D958B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_224DAAE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_224D95B14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_224DAAE38() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_224D95E1C(uint64_t a1)
{
  sub_224DAF938();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_224DAFD58();
  MEMORY[0x22AA5D210](0xD000000000000010, 0x8000000224DD05A0);
  v4 = *(a1 + 44);
  sub_224DAAE38();
  sub_224DAFA48();
  return 0;
}

uint64_t sub_224D95ECC()
{
  if (sub_224DAEDD8())
  {
    v0 = *(_s6UpdateVMa() + 44);

    JUMPOUT(0x22AA59150);
  }

  return 0;
}

uint64_t sub_224D95F60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_224D95ECC();
}

uint64_t sub_224D95F74@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D441C8]) init];
  result = sub_224A3B79C(0, &qword_27D6F4BE8, 0x277D441C8);
  a1[3] = result;
  a1[4] = &off_28382DFC8;
  *a1 = v2;
  return result;
}

uint64_t sub_224D95FE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F58, &qword_224DC38B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224D9E954();
  sub_224DAFF08();
  v17 = a2;
  v16 = 0;
  sub_224DAF538();
  sub_224D9EDC0(&qword_27D6F6F60, MEMORY[0x277CFA140]);
  sub_224DAFCE8();
  if (!v4)
  {
    v15 = 1;
    sub_224DAFCC8();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_224D961C0()
{
  if (*v0)
  {
    result = 1684957547;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_224D961F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000224DC6EB0 == a2 || (sub_224DAFD88() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_224DAFD88();

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

uint64_t sub_224D962E0(uint64_t a1)
{
  v2 = sub_224D9E954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224D9631C(uint64_t a1)
{
  v2 = sub_224D9E954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224D96358@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_224D9E730(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_224D963A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_224DAFE68();
  sub_224DAF6B8();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224D9640C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_224DAF6B8();

  return sub_224DAEE78();
}

uint64_t sub_224D96460()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_224DAFE68();
  sub_224DAF6B8();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224D964C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  if ((sub_224DAF6A8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_224DAFD88();
}

void sub_224D9657C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_224A39F40;
    v5[3] = &block_descriptor_98_0;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setScreenOnChangedHandler_];
  _Block_release(v4);
}

void sub_224D96628(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_224A39F40;
    v5[3] = &block_descriptor_95_0;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 activateWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_224D967F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_5:
    *a2 = v8;
    return result;
  }

  v10[9] = v2;
  v8 = sub_224B0CD98(v7, 0);
  v9 = sub_224B300B8(v10, v8 + 4, v7, v6);

  result = sub_224A3B7E4();
  if (v9 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_224D968E0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5758, &qword_224DC38E0);
    sub_224A33088(&qword_281350F30, &qword_27D6F5758, &qword_224DC38E0);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_224D969A4()
{
  v1 = OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery);
  }

  else
  {
    v3 = v0;
    type metadata accessor for DiagnosticNearbyDeviceDiscovery();
    swift_allocObject();
    v2 = sub_224BCA708(sub_224D95F74, 0);
    v4 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_224D96A38()
{
  v1 = v0;
  v2 = sub_224DAF318();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_224DAF3C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB848();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsQueue;
  v12 = *(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsQueue);
  }

  else
  {
    v14 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    v19[1] = "\nOther stale keys: ";
    v19[2] = v14;
    sub_224DAB828();
    (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
    v19[3] = MEMORY[0x277D84F90];
    sub_224D9EDC0(&qword_281350A88, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
    sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
    sub_224DAF788();
    v15 = sub_224DAF418();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

uint64_t sub_224D96CE0()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 56);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = sub_224DAB8F8();
  result = (*(v3 + 8))(v6, v2);
  if (v9)
  {
    swift_beginAccess();
    v11 = *(v1 + 184);
    v12 = *(v1 + 192);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 160, v11);
    (*(v12 + 16))(v8, v11, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = *(v1 + 184);
    v15 = *(v1 + 192);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 160, v14);
    v16 = *(v15 + 40);

    v16(sub_224A9C9F8, v13, v14, v15);
    swift_endAccess();

    sub_224A3317C(v1 + 160, v20);
    v17 = v21;
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v18 + 64))(0, 0, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224D96F1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v234 = v191 - v4;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v193 = *(v233 - 8);
  v5 = *(v193 + 64);
  MEMORY[0x28223BE20](v233);
  v232 = v191 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F70, &qword_224DC38C8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v191 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v216 = v191 - v16;
  v224 = sub_224DA9908();
  v17 = *(v224 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v224);
  v21 = v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v207 = v191 - v23;
  MEMORY[0x28223BE20](v22);
  v194 = v191 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v204 = v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v223 = v191 - v29;
  v225 = sub_224DAAE38();
  v30 = *(v225 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v225);
  v197 = v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v203 = v191 - v35;
  v198 = v36;
  MEMORY[0x28223BE20](v34);
  v196 = v191 - v37;
  v221 = sub_224DA9878();
  v38 = *(v221 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v221);
  v195 = v191 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v192 = v191 - v43;
  MEMORY[0x28223BE20](v42);
  v209 = v191 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F78, &qword_224DC38D0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v222 = v191 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v228 = (v191 - v49);
  v50 = sub_224DAB8C8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = (v191 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v230 = v1;
  v55 = v1[7];
  *v54 = v55;
  (*(v51 + 104))(v54, *MEMORY[0x277D85200], v50);
  v56 = v55;
  LOBYTE(v55) = sub_224DAB8F8();
  (*(v51 + 8))(v54, v50);
  if (v55)
  {
    v205 = v13;
    v206 = v11;
    v57 = v230;
    swift_beginAccess();
    v58 = v57[4];
    v59 = v58 + 64;
    v60 = 1 << *(v58 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v58 + 64);
    v220 = (v60 + 63) >> 6;
    v208 = v38 + 16;
    v212 = (v38 + 32);
    v219 = (v30 + 56);
    v217 = (v38 + 8);
    v200 = (v30 + 32);
    v210 = v38;
    v191[1] = v38 + 40;
    v214 = (v17 + 8);
    v201 = v30;
    v199 = (v30 + 8);
    v211 = v58;

    v63 = 0;
    v64 = 0;
    v213 = MEMORY[0x277D84F98];
    *&v65 = 136446210;
    v202 = v65;
    v215 = v17;
    v226 = v21;
    v66 = v228;
    v218 = v59;
LABEL_5:
    v67 = v221;
    v68 = v220;
    while (v62)
    {
      v227 = v64;
      v73 = v63;
LABEL_18:
      v231 = ((v62 - 1) & v62);
      v78 = __clz(__rbit64(v62)) | (v73 << 6);
      v79 = *(v211 + 48) + 24 * v78;
      v80 = *v79;
      v81 = *(v79 + 8);
      v82 = *(v79 + 16);
      v83 = v210;
      v84 = v209;
      (*(v210 + 16))(v209, *(v211 + 56) + *(v210 + 72) * v78, v67);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
      v86 = *(v85 + 48);
      v87 = v222;
      *v222 = v80;
      *(v87 + 1) = v81;
      *(v87 + 2) = v82;
      v88 = *(v83 + 32);
      v77 = v87;
      v88(&v87[v86], v84, v67);
      (*(*(v85 - 8) + 56))(v77, 0, 1, v85);
      v89 = v80;

      v64 = v227;
      v66 = v228;
      v76 = v223;
LABEL_19:
      sub_224A44E4C(v77, v66, &qword_27D6F6F78, &qword_224DC38D0);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
      if ((*(*(v90 - 8) + 48))(v66, 1, v90) == 1)
      {
        v227 = v64;

        v139 = *(v213 + 64);
        v218 = v213 + 64;
        v140 = 1 << *(v213 + 32);
        v141 = -1;
        if (v140 < 64)
        {
          v141 = ~(-1 << v140);
        }

        v142 = v141 & v139;

        swift_beginAccess();
        v143 = 0;
        v144 = (v140 + 63) >> 6;
        v145 = v215;
        v220 = v215 + 16;
        v228 = (v215 + 32);
        v231 = (v193 + 16);
        v219 = (v201 + 48);
        v217 = (v201 + 16);
        v146 = v206;
        v147 = v205;
        v148 = v226;
        v221 = v144;
        while (v142)
        {
          v149 = v143;
LABEL_59:
          v229 = (v142 - 1) & v142;
          v152 = __clz(__rbit64(v142)) | (v149 << 6);
          v153 = v213;
          v154 = v207;
          v155 = v224;
          (*(v145 + 16))(v207, *(v213 + 48) + *(v145 + 72) * v152, v224);
          v156 = *(*(v153 + 56) + 8 * v152);
          v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F80, &qword_224DC38D8);
          v158 = *(v157 + 48);
          v159 = *(v145 + 32);
          v160 = v155;
          v159(v146, v154, v155);
          *(v146 + v158) = v156;
          (*(*(v157 - 8) + 56))(v146, 0, 1, v157);

          v151 = v149;
          v148 = v226;
LABEL_60:
          sub_224A44E4C(v146, v147, &qword_27D6F6F70, &qword_224DC38C8);
          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F80, &qword_224DC38D8);
          if ((*(*(v161 - 8) + 48))(v147, 1, v161) == 1)
          {

            sub_224D99138();
          }

          v162 = *(v147 + *(v161 + 48));
          (*v228)(v148, v147, v160);
          v163 = v162[2];
          if (v163)
          {
            v223 = v151;
            v235[0] = MEMORY[0x277D84F90];
            sub_224ADA79C(0, v163, 0);
            sub_224DAF538();
            v164 = v235[0];
            v222 = v162;
            v165 = v162 + 6;
            do
            {
              v166 = *(v165 - 2);
              v167 = *(v165 - 1);
              v168 = *v165;
              v169 = *MEMORY[0x277CFA138];
              swift_beginAccess();
              (*v231)(v232, v166 + v169, v233);
              v170 = *MEMORY[0x277CFA130];
              swift_beginAccess();
              sub_224A3796C(v166 + v170, v234, &unk_27D6F5060, &qword_224DB5620);

              v171 = sub_224DAF508();
              v235[0] = v164;
              v173 = *(v164 + 16);
              v172 = *(v164 + 24);
              if (v173 >= v172 >> 1)
              {
                sub_224ADA79C((v172 > 1), v173 + 1, 1);
                v164 = v235[0];
              }

              *(v164 + 16) = v173 + 1;
              v174 = (v164 + 24 * v173);
              v174[4] = v171;
              v174[5] = v167;
              v174[6] = v168;
              v165 += 3;
              --v163;
            }

            while (v163);
            v175 = v230[17];
            __swift_project_boxed_opaque_existential_1(v230 + 13, v230[16]);
            v176 = v204;
            v148 = v226;
            sub_224DAAC98();
            v177 = v225;
            if ((*v219)(v176, 1, v225) == 1)
            {
              (*v214)(v148, v224);

              sub_224A3311C(v176, &qword_27D6F3320, &unk_224DBD6F0);
            }

            else
            {
              v178 = v201;
              v179 = *(v201 + 32);
              v180 = v230;
              v181 = v203;
              v179(v203, v176, v177);
              v182 = v197;
              (*(v178 + 16))(v197, v181, v177);
              v183 = (*(v178 + 80) + 32) & ~*(v178 + 80);
              v184 = swift_allocObject();
              v185 = v222;
              *(v184 + 16) = v180;
              *(v184 + 24) = v185;
              v179((v184 + v183), v182, v177);
              sub_224A3317C((v180 + 8), v235);
              v186 = v236;
              v187 = v237;
              __swift_project_boxed_opaque_existential_1(v235, v236);
              v188 = *(v187 + 64);
              v148 = v226;

              v188(v164, v148, sub_224D9EC7C, v184, v186, v187);

              (*(v178 + 8))(v203, v177);
              (*v214)(v148, v224);
              __swift_destroy_boxed_opaque_existential_1(v235);
            }

            v143 = v223;
            v146 = v206;
            v147 = v205;
            v145 = v215;
            v144 = v221;
          }

          else
          {
            (*v214)(v148, v160);

            v143 = v151;
            v145 = v215;
            v144 = v221;
          }

          v142 = v229;
        }

        if (v144 <= (v143 + 1))
        {
          v150 = (v143 + 1);
        }

        else
        {
          v150 = v144;
        }

        v151 = (v150 - 1);
        while (1)
        {
          v149 = (v143 + 1);
          if (__OFADD__(v143, 1))
          {
            goto LABEL_73;
          }

          if (v149 >= v144)
          {
            v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F80, &qword_224DC38D8);
            (*(*(v189 - 8) + 56))(v146, 1, 1, v189);
            v229 = 0;
            v160 = v224;
            goto LABEL_60;
          }

          v142 = *(v218 + 8 * v149);
          ++v143;
          if (v142)
          {
            goto LABEL_59;
          }
        }
      }

      v91 = *v66;
      v92 = *(v66 + 8);
      v93 = *(v66 + 16);
      v229 = *(v90 + 48);
      sub_224D9C314(v91, v76);
      if (!v64)
      {
        v227 = 0;
        v105 = v225;
        (*v219)(v76, 0, 1, v225);
        (*v200)(v196, v76, v105);
        v106 = v91;

        v107 = v192;
        sub_224DA9808();
        v108 = v230;
        swift_beginAccess();
        v109 = *v212;
        (*v212)(v195, v107, v221);
        v110 = v108[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v238 = v108[5];
        v112 = v238;
        v108[5] = 0x8000000000000000;
        v113 = sub_224B0C03C(v106, v92, v93);
        v115 = *(v112 + 16);
        v116 = (v114 & 1) == 0;
        v117 = __OFADD__(v115, v116);
        v118 = v115 + v116;
        if (v117)
        {
          goto LABEL_75;
        }

        v119 = v114;
        if (*(v112 + 24) >= v118)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_31;
          }

          v122 = v113;
          sub_224B2B68C();
          v113 = v122;
          v121 = v238;
          if ((v119 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_32:
          (*(v210 + 40))(v121[7] + *(v210 + 72) * v113, v195, v221);
        }

        else
        {
          sub_224B1B598(v118, isUniquelyReferenced_nonNull_native);
          v113 = sub_224B0C03C(v106, v92, v93);
          if ((v119 & 1) != (v120 & 1))
          {
            goto LABEL_77;
          }

LABEL_31:
          v121 = v238;
          if (v119)
          {
            goto LABEL_32;
          }

LABEL_34:
          v121[(v113 >> 6) + 8] |= 1 << v113;
          v123 = (v121[6] + 24 * v113);
          *v123 = v106;
          v123[1] = v92;
          v123[2] = v93;
          v109((v121[7] + *(v210 + 72) * v113), v195, v221);
          v124 = v121[2];
          v117 = __OFADD__(v124, 1);
          v125 = v124 + 1;
          if (v117)
          {
            goto LABEL_76;
          }

          v121[2] = v125;
        }

        v126 = v230[5];
        v230[5] = v121;

        swift_endAccess();
        v127 = v194;
        sub_224DAAD98();
        v128 = v213;
        if (*(v213 + 16) && (v129 = sub_224A438E8(v127), (v130 & 1) != 0))
        {
          v131 = *(*(v128 + 56) + 8 * v129);
        }

        else
        {
          v131 = MEMORY[0x277D84F90];
        }

        v132 = v106;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_224AD9F90(0, *(v131 + 2) + 1, 1, v131);
        }

        v134 = *(v131 + 2);
        v133 = *(v131 + 3);
        if (v134 >= v133 >> 1)
        {
          v131 = sub_224AD9F90((v133 > 1), v134 + 1, 1, v131);
        }

        *(v131 + 2) = v134 + 1;
        v135 = &v131[24 * v134];
        *(v135 + 4) = v132;
        *(v135 + 5) = v92;
        *(v135 + 6) = v93;
        v136 = v213;
        v137 = swift_isUniquelyReferenced_nonNull_native();
        v235[0] = v136;
        v138 = v194;
        sub_224B240A0(v131, v194, v137);

        v213 = v235[0];
        (*v214)(v138, v224);
        (*v199)(v196, v225);
        (*v217)(v66 + v229, v221);
        v64 = v227;
        v59 = v218;
        v62 = v231;
        goto LABEL_5;
      }

      (*v219)(v76, 1, 1, v225);
      sub_224A3311C(v76, &qword_27D6F3320, &unk_224DBD6F0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v94 = sub_224DAB258();
      __swift_project_value_buffer(v94, qword_281365120);
      v95 = v91;

      v96 = sub_224DAB228();
      v97 = sub_224DAF288();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v238 = v99;
        *v98 = v202;
        v235[0] = v95;
        v235[1] = v92;
        v235[2] = v93;
        v100 = v95;

        v101 = sub_224DAEE28();
        v103 = sub_224A33F74(v101, v102, &v238);
        v69 = v221;

        *(v98 + 4) = v103;
        _os_log_impl(&dword_224A2F000, v96, v97, "Could not queue staleness message for: %{public}s: No relationship", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x22AA5EED0](v99, -1, -1);
        MEMORY[0x22AA5EED0](v98, -1, -1);
      }

      else
      {

        v69 = v221;
      }

      swift_beginAccess();
      v70 = v95;

      v71 = v216;
      sub_224B0E8E0(v70, v92, v93, v216);

      sub_224A3311C(v71, &qword_27D6F32B0, &qword_224DB3EA0);
      swift_endAccess();
      swift_beginAccess();
      v72 = v70;

      sub_224B0E8E0(v72, v92, v93, v71);

      sub_224A3311C(v71, &qword_27D6F32B0, &qword_224DB3EA0);
      swift_endAccess();

      v66 = v228;
      (*v217)(v228 + v229, v69);
      v64 = 0;
      v59 = v218;
      v68 = v220;
      v67 = v69;
      v62 = v231;
    }

    if (v68 <= v63 + 1)
    {
      v74 = v63 + 1;
    }

    else
    {
      v74 = v68;
    }

    v75 = v74 - 1;
    v76 = v223;
    v77 = v222;
    while (1)
    {
      v73 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v73 >= v68)
      {
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
        (*(*(v104 - 8) + 56))(v77, 1, 1, v104);
        v231 = 0;
        v63 = v75;
        goto LABEL_19;
      }

      v62 = *(v59 + 8 * v73);
      ++v63;
      if (v62)
      {
        v227 = v64;
        v63 = v73;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224D987E8(void *a1)
{
  swift_beginAccess();
  v2 = a1[5];
  v3 = MEMORY[0x277D84F98];
  a1[5] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v4 = a1[4];
  a1[4] = v3;

  v5 = a1[6];

  sub_224DAA948();
}

uint64_t sub_224D98870(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v94 - v10;
  v11 = sub_224DA9878();
  v12 = *(v11 - 8);
  v102 = v11;
  v103 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v99 = &v94 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v94 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v94 - v22;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v24 = sub_224DAB258();
  v25 = __swift_project_value_buffer(v24, qword_281365120);
  v26 = a1;

  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();

  v29 = os_log_type_enabled(v27, v28);
  v104 = v23;
  v98 = v16;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v100 = v25;
    v97 = v31;
    v107[0] = v31;
    *v30 = 136446210;
    v107[3] = v26;
    v107[4] = a2;
    v107[5] = a3;
    v32 = v26;

    v33 = sub_224DAEE28();
    v35 = v26;
    v36 = sub_224A33F74(v33, v34, v107);

    *(v30 + 4) = v36;
    v26 = v35;
    _os_log_impl(&dword_224A2F000, v27, v28, "Marking timeline key as stale: %{public}s", v30, 0xCu);
    v37 = v97;
    __swift_destroy_boxed_opaque_existential_1(v97);
    v38 = v37;
    v25 = v100;
    MEMORY[0x22AA5EED0](v38, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  sub_224DA9808();
  swift_beginAccess();
  v39 = a4[5];
  if (*(v39 + 16))
  {
    v40 = a4[5];

    v41 = sub_224B0C03C(v26, a2, a3);
    if (v42)
    {
      v96 = v26;
      v97 = a2;
      v100 = v25;
      v43 = *(v39 + 56);
      v44 = v102;
      v45 = v103;
      v95 = *(v103 + 72);
      v46 = *(v103 + 16);
      v46(v21, v43 + v95 * v41, v102);

      v47 = a4[18];
      v48 = v99;
      sub_224DA9768();
      v49 = sub_224DA9788();
      v50 = *(v45 + 8);
      v50(v48, v44);
      if (v49)
      {
        v99 = v50;
        swift_beginAccess();
        v51 = a4[4];
        v52 = v46;
        if (*(v51 + 16))
        {
          v53 = a4[4];

          v54 = sub_224B0C03C(v96, v97, a3);
          if (v55)
          {
            v56 = v98;
            v52(v98, *(v51 + 56) + v54 * v95, v44);

            v57 = v104;
            if (sub_224DA9788())
            {
              v58 = v101;
              v52(v101, v57, v44);
              (*(v103 + 56))(v58, 0, 1, v44);
              swift_beginAccess();
              v59 = v96;
              v60 = v96;

              v61 = v60;
              v62 = v97;
              sub_224B09DB8(v58, v61, v97, a3);
              swift_endAccess();
              (v99)(v98, v44);
            }

            else
            {
              (v99)(v56, v44);
              v59 = v96;
              v62 = v97;
            }

LABEL_20:
            sub_224D99138();
            v82 = v21;
            v83 = v99;
            (v99)(v82, v44);
            v84 = v59;

            v85 = sub_224DAB228();
            v86 = v44;
            v87 = sub_224DAF2A8();

            if (os_log_type_enabled(v85, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v105 = v89;
              v106[0] = v84;
              *v88 = 136446210;
              v106[1] = v62;
              v106[2] = a3;
              v90 = v84;

              v91 = sub_224DAEE28();
              v93 = sub_224A33F74(v91, v92, &v105);

              *(v88 + 4) = v93;
              _os_log_impl(&dword_224A2F000, v85, v87, "Delaying staleness message: %{public}s", v88, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v89);
              MEMORY[0x22AA5EED0](v89, -1, -1);
              MEMORY[0x22AA5EED0](v88, -1, -1);
            }

            return v83(v104, v86);
          }
        }

        v79 = v101;
        v52(v101, v104, v44);
        (*(v103 + 56))(v79, 0, 1, v44);
        swift_beginAccess();
        v59 = v96;
        v80 = v96;

        v81 = v80;
        v62 = v97;
        sub_224B09DB8(v79, v81, v97, a3);
        swift_endAccess();
        goto LABEL_20;
      }

      v50(v21, v44);
      v26 = v96;
      a2 = v97;
    }

    else
    {
    }
  }

  v63 = v26;

  v64 = sub_224DAB228();
  v65 = sub_224DAF2A8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v106[0] = v67;
    *v66 = 136446210;
    v107[0] = v63;
    v107[1] = a2;
    v107[2] = a3;
    v68 = v63;

    v69 = sub_224DAEE28();
    v70 = a2;
    v72 = sub_224A33F74(v69, v71, v106);

    *(v66 + 4) = v72;
    _os_log_impl(&dword_224A2F000, v64, v65, "Sending staleness message immediately: %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x22AA5EED0](v67, -1, -1);
    MEMORY[0x22AA5EED0](v66, -1, -1);
  }

  else
  {

    v70 = a2;
  }

  v74 = v103;
  v73 = v104;
  v76 = v101;
  v75 = v102;
  (*(v103 + 16))(v101, v104, v102);
  (*(v74 + 56))(v76, 0, 1, v75);
  swift_beginAccess();
  v77 = v63;

  sub_224B09DB8(v76, v77, v70, a3);
  swift_endAccess();
  sub_224D96F1C();
  return (*(v74 + 8))(v73, v75);
}

uint64_t sub_224D99138()
{
  v1 = v0;
  v2 = sub_224DA9878();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = sub_224DAB8C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 56);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v41 = v18;
  v19 = sub_224DAB8F8();
  (*(v14 + 8))(v17, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v20 = *(v1 + 48);

  sub_224DAA948();

  sub_224D9B028(v12);
  sub_224DA9748();
  LOBYTE(v20) = sub_224DA9798();
  v19 = *(v3 + 8);
  (v19)(v10, v2);
  if ((v20 & 1) == 0)
  {
    return (v19)(v12, v2);
  }

  if (qword_2813516C8 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281365120);
  (*(v3 + 16))(v7, v12, v2);
  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();
  if (os_log_type_enabled(v22, v23))
  {
    v38 = v23;
    v40 = v22;
    v24 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    v39 = v24;
    *v24 = 136446210;
    if (qword_281351A50 != -1)
    {
      swift_once();
    }

    v25 = qword_281351A58;
    v26 = sub_224DA9778();
    v27 = [v25 stringFromDate_];

    v28 = sub_224DAEE18();
    v30 = v29;

    (v19)(v7, v2);
    v31 = sub_224A33F74(v28, v30, &v42);

    v32 = v39;
    *(v39 + 1) = v31;
    v33 = v40;
    _os_log_impl(&dword_224A2F000, v40, v38, "Staleness queue has entries; starting timer. Due %{public}s", v32, 0xCu);
    v34 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x22AA5EED0](v34, -1, -1);
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  else
  {

    (v19)(v7, v2);
  }

  v36 = *(v1 + 48);

  sub_224DA9808();
  sub_224DA9758();
  (v19)(v10, v2);
  swift_allocObject();
  swift_weakInit();

  sub_224DAA938();

  (v19)(v12, v2);
}

void sub_224D99640(void *a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation)
{
  v4 = v3;
  v8 = sub_224DA9878();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  if (sub_224DAF518())
  {
    sub_224DA9808();
    v29 = *(v4 + 56);
    (*(v9 + 16))(v12, v14, v8);
    v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = v4;
    *(v16 + 3) = a1;
    *(v16 + 4) = a2;
    *(v16 + 5) = isEscapingClosureAtFileLocation;
    (*(v9 + 32))(&v16[v15], v12, v8);
    a2 = swift_allocObject();
    *(a2 + 16) = sub_224D9E9A8;
    *(a2 + 24) = v16;
    v34 = sub_224A8A838;
    v35 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_224A9B6F8;
    v33 = &block_descriptor_59;
    v17 = _Block_copy(&aBlock);

    v18 = a1;

    dispatch_sync(v29, v17);
    _Block_release(v17);
    (*(v9 + 8))(v14, v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_281365120);
  v20 = a1;

  v29 = sub_224DAB228();
  v21 = sub_224DAF2A8();

  if (os_log_type_enabled(v29, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136446210;
    aBlock = v20;
    v31 = a2;
    v32 = isEscapingClosureAtFileLocation;
    v24 = v20;

    v25 = sub_224DAEE28();
    v27 = sub_224A33F74(v25, v26, &v36);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_224A2F000, v29, v21, "Ignoring refresh of timeline key without container: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    MEMORY[0x22AA5EED0](v22, -1, -1);
  }

  else
  {
    v28 = v29;
  }
}

uint64_t sub_224D99A50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v83 = a2;
  v8 = sub_224DA9878();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v82 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v71[-v14];
  MEMORY[0x28223BE20](v13);
  v79 = &v71[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v76 = &v71[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v71[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v71[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v71[-v27];
  swift_beginAccess();
  v29 = *(a1 + 32);
  v30 = *(v29 + 16);
  v77 = v15;
  v78 = a4;
  v80 = a3;
  if (v30)
  {

    v31 = sub_224B0C03C(v83, a3, a4);
    if (v32)
    {
      (*(v9 + 16))(v26, *(v29 + 56) + *(v9 + 72) * v31, v8);

      v33 = *(v9 + 56);
      v33(v26, 0, 1, v8);
      (*(v9 + 32))(v28, v26, v8);
      v33(v28, 0, 1, v8);
      goto LABEL_11;
    }
  }

  v33 = *(v9 + 56);
  v34 = 1;
  v33(v26, 1, 1, v8);
  swift_beginAccess();
  v35 = *(a1 + 40);
  if (*(v35 + 16))
  {
    v36 = *(a1 + 40);

    v37 = sub_224B0C03C(v83, v80, v78);
    if (v38)
    {
      (*(v9 + 16))(v28, *(v35 + 56) + *(v9 + 72) * v37, v8);
      v34 = 0;
    }
  }

  v33(v28, v34, 1, v8);
  if ((*(v9 + 48))(v26, 1, v8) != 1)
  {
    sub_224A3311C(v26, &qword_27D6F32B0, &qword_224DB3EA0);
  }

LABEL_11:
  sub_224A3796C(v28, v23, &qword_27D6F32B0, &qword_224DB3EA0);
  v39 = (*(v9 + 48))(v23, 1, v8);
  v40 = v82;
  if (v39 == 1)
  {
    sub_224A3311C(v28, &qword_27D6F32B0, &qword_224DB3EA0);
    v28 = v23;
  }

  else
  {
    v41 = v79;
    (*(v9 + 32))();
    if (sub_224DA9798())
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v42 = sub_224DAB258();
      __swift_project_value_buffer(v42, qword_281365120);
      v43 = *(v9 + 16);
      v43(v77, v81, v8);
      v43(v40, v41, v8);
      v44 = v83;
      v45 = v78;

      v46 = sub_224DAB228();
      v47 = sub_224DAF2A8();

      v83 = v44;

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v75 = v49;
        *v48 = 136446466;
        v84[0] = v49;
        v84[1] = v83;
        v84[2] = v80;
        v84[3] = v45;
        v50 = v83;

        v51 = sub_224DAEE28();
        v74 = v46;
        v53 = sub_224A33F74(v51, v52, v84);

        v73 = v48;
        *(v48 + 4) = v53;
        *(v48 + 12) = 2050;
        v54 = v82;
        v55 = v77;
        sub_224DA9758();
        v57 = v56;
        v58 = v54;
        v59 = *(v9 + 8);
        v72 = v47;
        (v59)(v58, v8);
        v82 = v59;
        (v59)(v55, v8);
        v60 = v73;
        *(v73 + 14) = v57;
        v61 = v74;
        _os_log_impl(&dword_224A2F000, v74, v72, "Stale timeline refreshed: %{public}s. Elapsed: %{public}fs", v60, 0x16u);
        v62 = v75;
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x22AA5EED0](v62, -1, -1);
        MEMORY[0x22AA5EED0](v60, -1, -1);
      }

      else
      {

        v63 = *(v9 + 8);
        (v63)(v82, v8);
        v82 = v63;
        (v63)(v77, v8);
      }

      v64 = v76;
      v33(v76, 1, 1, v8);
      swift_beginAccess();
      v65 = v83;

      v66 = v64;
      v67 = v80;
      sub_224B09DB8(v66, v65, v80, v45);
      swift_endAccess();
      v68 = v65;
      v69 = v79;
      sub_224D9A1CC(v68, v67, v45, v79, v81);
      (v82)(v69, v8);
    }

    else
    {
      (*(v9 + 8))(v41, v8);
    }
  }

  return sub_224A3311C(v28, &qword_27D6F32B0, &qword_224DB3EA0);
}

void sub_224D9A1CC(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v112 = a5;
  v113 = a4;
  v107 = a3;
  v105 = a2;
  v109 = a1;
  v101 = sub_224DAB7B8();
  v100 = *(v101 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_224DAB848();
  v97 = *(v99 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v96 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v103 = v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v92 - v16;
  v110 = sub_224DA9908();
  v108 = *(v110 - 8);
  v18 = *(v108 + 64);
  v19 = MEMORY[0x28223BE20](v110);
  v95 = v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v94 = v92 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v104 = v92 - v23;
  MEMORY[0x28223BE20](v22);
  v106 = v92 - v24;
  v25 = sub_224DA9878();
  v111 = *(v25 - 8);
  v26 = *(v111 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v102 = v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v92 - v28;
  v30 = sub_224DAB8C8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = (v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v6[7];
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x277D85200], v30);
  v36 = v35;
  LOBYTE(v35) = sub_224DAB8F8();
  v38 = *(v31 + 8);
  v37 = (v31 + 8);
  v38(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  if ((sub_224DAD818() & 1) == 0)
  {
    return;
  }

  sub_224DA9768();
  v39 = sub_224DA9798();
  (*(v111 + 8))(v29, v25);
  if ((v39 & 1) == 0)
  {
    return;
  }

  v37 = v109;
  v40 = &v109[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 1);

  sub_224DAA058();
  v44 = v43;

  if (v44)
  {
    sub_224DA9888();

    v45 = v108;
    v46 = v110;
    if ((*(v108 + 48))(v17, 1, v110) == 1)
    {
      v47 = &unk_27D6F5630;
      v48 = &unk_224DB34C0;
      v49 = v17;
    }

    else
    {
      v93 = *(v45 + 32);
      v92[1] = v45 + 32;
      v93(v106, v17, v46);
      v50 = v6[17];
      __swift_project_boxed_opaque_existential_1(v6 + 13, v6[16]);
      v51 = v103;
      sub_224DAAC98();
      v52 = v51;
      v53 = sub_224DAAE38();
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v52, 1, v53) != 1)
      {
        v92[0] = v6;
        v66 = v94;
        sub_224DAADF8();
        (*(v54 + 8))(v52, v53);
        v67 = v104;
        v68 = v66;
        v69 = v110;
        v93(v104, v68, v110);
        v103 = sub_224D96A38();
        v70 = v108;
        v71 = v95;
        (*(v108 + 16))(v95, v67, v69);
        v72 = v111;
        v73 = *(v111 + 16);
        v73(v29, v112, v25);
        v73(v102, v113, v25);
        v74 = (*(v70 + 80) + 16) & ~*(v70 + 80);
        v75 = (v18 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
        v76 = *(v72 + 80);
        v77 = (v76 + v75 + 8) & ~v76;
        v78 = (v26 + v76 + v77) & ~v76;
        v79 = swift_allocObject();
        v93((v79 + v74), v71, v110);
        *(v79 + v75) = v92[0];
        v80 = *(v72 + 32);
        v80(v79 + v77, v29, v25);
        v80(v79 + v78, v102, v25);
        v81 = (v79 + ((v26 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));
        v82 = v109;
        v83 = v105;
        *v81 = v109;
        v81[1] = v83;
        v81[2] = v107;
        v118 = sub_224D9EA10;
        v119 = v79;
        aBlock = MEMORY[0x277D85DD0];
        v115 = 1107296256;
        v116 = sub_224A39F40;
        v117 = &block_descriptor_52_2;
        v84 = _Block_copy(&aBlock);

        v85 = v82;

        v86 = v96;
        sub_224DAB7E8();
        v120 = MEMORY[0x277D84F90];
        sub_224D9EDC0(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v87 = v98;
        v88 = v101;
        sub_224DAF788();
        v89 = v103;
        MEMORY[0x22AA5D760](0, v86, v87, v84);
        _Block_release(v84);

        (*(v100 + 8))(v87, v88);
        (*(v97 + 8))(v86, v99);
        v90 = *(v108 + 8);
        v91 = v110;
        v90(v104, v110);
        v90(v106, v91);

        return;
      }

      (*(v108 + 8))(v106, v110);
      v47 = &qword_27D6F3320;
      v48 = &unk_224DBD6F0;
      v49 = v52;
    }

    sub_224A3311C(v49, v47, v48);
  }

  if (qword_2813516C8 != -1)
  {
    goto LABEL_17;
  }

LABEL_11:
  v55 = sub_224DAB258();
  __swift_project_value_buffer(v55, qword_281365120);
  v56 = v37;
  v57 = v107;

  v58 = sub_224DAB228();
  v59 = sub_224DAF288();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v120 = v61;
    *v60 = 136446210;
    aBlock = v56;
    v115 = v105;
    v116 = v57;
    v62 = v56;

    v63 = sub_224DAEE28();
    v65 = sub_224A33F74(v63, v64, &v120);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_224A2F000, v58, v59, "Invalid device for staleness key %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x22AA5EED0](v61, -1, -1);
    MEMORY[0x22AA5EED0](v60, -1, -1);
  }
}

uint64_t sub_224D9AD30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v6 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  v7 = OBJC_IVAR____TtC10ChronoCore16StalenessService_diagnostics;
  v8 = sub_224DAD828();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery);

  return v0;
}

uint64_t sub_224D9AE08()
{
  sub_224D9AD30();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StalenessService()
{
  result = qword_28135ACF8;
  if (!qword_28135ACF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D9AEB4()
{
  result = sub_224DAD828();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_224D9AFB0()
{
  result = qword_28135C140[0];
  if (!qword_28135C140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28135C140);
  }

  return result;
}

uint64_t sub_224D9B028@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v138 = &v122 - v4;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
  v5 = *(*(v143 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v143);
  v137 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = (&v122 - v8);
  v9 = sub_224DA9878();
  v140 = *(v9 - 8);
  v10 = *(v140 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v136 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v149 = &v122 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v122 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v145 = &v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v139 = &v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v122 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v146 = &v122 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v128 = &v122 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v127 = &v122 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v132 = &v122 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v122 - v33;
  v35 = sub_224DAB8C8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = (&v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = v1[7];
  *v39 = v40;
  (*(v36 + 104))(v39, *MEMORY[0x277D85200], v35);
  v41 = v40;
  v42 = sub_224DAB8F8();
  result = (*(v36 + 8))(v39, v35);
  if (v42)
  {
    swift_beginAccess();
    if (*(v1[4] + 16))
    {
      v125 = v34;
      v123 = v24;
      v124 = v17;
      swift_beginAccess();
      v44 = v1[5];

      sub_224DA9748();
      v45 = v44 + 64;
      v46 = 1 << *(v44 + 32);
      v47 = -1;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      v48 = v47 & *(v44 + 64);
      v49 = (v46 + 63) >> 6;
      v148 = (v140 + 16);
      v129 = (v140 + 56);
      v147 = (v140 + 8);
      v141 = (v140 + 32);
      v134 = v44;

      v50 = 0;
      v144 = v9;
      v51 = v1;
      v52 = v137;
      v131 = v44 + 64;
      v130 = v49;
      v133 = v1;
      while (1)
      {
        v53 = v149;
        if (!v48)
        {
          break;
        }

        v54 = v50;
LABEL_13:
        v55 = __clz(__rbit64(v48)) | (v54 << 6);
        v56 = *(v134 + 48) + 24 * v55;
        v58 = *v56;
        v57 = *(v56 + 8);
        v59 = *(v56 + 16);
        v60 = *(v140 + 72);
        v61 = *(v134 + 56) + v60 * v55;
        v62 = v142;
        v63 = *(v140 + 16);
        v135 = *(v143 + 48);
        v63(v142 + v135, v61, v144);
        *v62 = v58;
        v62[1] = v57;
        v62[2] = v59;
        sub_224A3796C(v62, v52, &qword_27D6F6F68, &unk_224DC38B8);
        v64 = *v52;
        v65 = v52;
        v66 = *(v52 + 16);
        v67 = v51[4];
        if (*(v67 + 16))
        {
          v68 = *(v65 + 8);
          v69 = v58;

          v70 = sub_224B0C03C(v64, v68, v66);
          if (v71)
          {
            v9 = v144;
            v63(v138, *(v67 + 56) + v70 * v60, v144);

            v72 = 0;
            v73 = 1;
          }

          else
          {

            v73 = 0;
            v72 = 1;
            v9 = v144;
          }

          v51 = v133;
        }

        else
        {
          v74 = v58;

          v73 = 0;
          v72 = 1;
          v9 = v144;
        }

        v75 = v147;
        v48 &= v48 - 1;
        v76 = v138;
        (*v129)(v138, v72, 1, v9);
        v77 = *(v143 + 48);
        sub_224A3311C(v76, &qword_27D6F32B0, &qword_224DB3EA0);
        v78 = *v75;
        v52 = v137;
        (*v75)(&v137[v77], v9);
        if (v73)
        {
          v79 = v51[18];
          v80 = v142;
          v81 = v128;
          sub_224DA9768();
          sub_224D9EDC0(&qword_281351A40, MEMORY[0x277CC9578]);
          v82 = v132;
          v83 = sub_224DAEDB8();
          sub_224A3311C(v80, &qword_27D6F6F68, &unk_224DC38B8);
          if (v83)
          {
            v84 = v81;
          }

          else
          {
            v84 = v82;
          }

          if (v83)
          {
            v85 = v82;
          }

          else
          {
            v85 = v81;
          }

          v78(v84, v9);
          v86 = *v141;
          v87 = v127;
          (*v141)(v127, v85, v9);
          v88 = v82;
          v51 = v133;
          result = (v86)(v88, v87, v9);
        }

        else
        {
          result = sub_224A3311C(v142, &qword_27D6F6F68, &unk_224DC38B8);
        }

        v50 = v54;
        v45 = v131;
        v49 = v130;
      }

      while (1)
      {
        v54 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          __break(1u);
          goto LABEL_60;
        }

        if (v54 >= v49)
        {
          break;
        }

        v48 = *(v45 + 8 * v54);
        ++v50;
        if (v48)
        {
          goto LABEL_13;
        }
      }

      v89 = *v141;
      v90 = v125;
      (*v141)(v125, v132, v9);

      if (sub_224DAD818())
      {
        sub_224DA9808();
        v91 = v51[5];
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = sub_224B0CE28(*(v91 + 16), 0);
          v94 = sub_224B30238(v150, (v93 + ((*(v140 + 80) + 32) & ~*(v140 + 80))), v92, v91);
          v142 = v150[0];
          v143 = v94;

          result = sub_224A3B7E4();
          if (v143 != v92)
          {
            goto LABEL_61;
          }

          v9 = v144;
          v90 = v125;
        }

        else
        {
          v93 = MEMORY[0x277D84F90];
        }

        v95 = v51[4];
        v96 = *(v95 + 16);
        if (v96)
        {
          v97 = sub_224B0CE28(*(v95 + 16), 0);
          v98 = sub_224B30238(v150, (v97 + ((*(v140 + 80) + 32) & ~*(v140 + 80))), v96, v95);
          v142 = v150[4];
          v143 = v150[0];

          result = sub_224A3B7E4();
          if (v98 != v96)
          {
            goto LABEL_62;
          }

          v9 = v144;
          v90 = v125;
        }

        else
        {
          v97 = MEMORY[0x277D84F90];
        }

        v99 = v147;
        v150[0] = v93;
        sub_224B42CB0(v97);
        v100 = v150[0];
        v101 = *v148;
        (*v148)(v139, v90, v9);
        v102 = *(v100 + 16);
        if (v102)
        {
          v103 = *(v140 + 80);
          v144 = v100;
          v104 = v100 + ((v103 + 32) & ~v103);
          v105 = *(v140 + 72);
          v106 = v145;
          do
          {
            v101(v106, v104, v9);
            sub_224DA9768();
            if (sub_224DA9788())
            {
              sub_224D9EDC0(&qword_281351A40, MEMORY[0x277CC9578]);
              v108 = v139;
              v109 = sub_224DAEDB8();
              v110 = *v147;
              (*v147)(v145, v9);
              if (v109)
              {
                v111 = v149;
              }

              else
              {
                v111 = v108;
              }

              if (v109)
              {
                v112 = v108;
              }

              else
              {
                v112 = v149;
              }

              v110(v111, v9);
              v113 = v136;
              v89(v136, v112, v9);
              v114 = v108;
              v106 = v145;
              v115 = v113;
              v53 = v149;
              v89(v114, v115, v9);
            }

            else
            {
              v107 = *v147;
              (*v147)(v53, v9);
              v107(v106, v9);
            }

            v104 += v105;
            --v102;
          }

          while (v102);

          v99 = v147;
        }

        else
        {
        }

        v116 = v123;
        v89(v123, v139, v9);
        sub_224D9EDC0(&qword_281351A40, MEMORY[0x277CC9578]);
        v90 = v125;
        v117 = sub_224DAEDB8();
        v118 = *v99;
        (*v99)(v146, v9);
        if (v117)
        {
          v119 = v116;
        }

        else
        {
          v119 = v90;
        }

        if (v117)
        {
          v120 = v90;
        }

        else
        {
          v120 = v116;
        }

        v118(v119, v9);
        v121 = v124;
        v89(v124, v120, v9);
        v89(v90, v121, v9);
      }

      return (v89)(v126, v90, v9);
    }

    else
    {
      return sub_224DA9748();
    }
  }

  else
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  return result;
}

uint64_t sub_224D9BD08()
{
  v0 = sub_224DAB8C8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 56);
  *v4 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = v1[13];
  v9(v4, v8, v0);
  v10 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  v11 = v1[1];
  v11(v4, v0);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (qword_2813516C8 != -1)
  {
LABEL_10:
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_281365120);
  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v11;
    v16 = v8;
    v17 = v9;
    v18 = v15;
    *v15 = 0;
    _os_log_impl(&dword_224A2F000, v13, v14, "Staleness timer fired", v15, 2u);
    v19 = v18;
    v9 = v17;
    v8 = v16;
    v11 = v24;
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  v20 = *(v6 + 56);
  *v4 = v20;
  v9(v4, v8, v0);
  v21 = v20;
  LOBYTE(v20) = sub_224DAB8F8();
  result = (v11)(v4, v0);
  if (v20)
  {
    v22 = *(v6 + 48);

    sub_224DAA948();

    v23 = sub_224D9BF94();
    sub_224D96F1C(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224D9BF94()
{
  v1 = v0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
  v2 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v4 = v34 - v3;
  v37 = sub_224DA9878();
  v39 = *(v37 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB8C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 56);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  v14 = sub_224DAB8F8();
  result = (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  result = sub_224DAD818();
  if (result)
  {
    sub_224DA9808();
    swift_beginAccess();
    v16 = *(v1 + 32);
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;
    v34[1] = v39 + 16;
    v35 = v16;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v20; result = sub_224A3311C(v4, &qword_27D6F6F68, &unk_224DC38B8))
    {
      v23 = v1;
      v24 = i;
LABEL_11:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v24 << 6);
      v27 = *(v35 + 48) + 24 * v26;
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v36 + 48);
      (*(v39 + 16))(&v4[v31], *(v35 + 56) + *(v39 + 72) * v26, v37);
      *v4 = v29;
      *(v4 + 1) = v28;
      *(v4 + 2) = v30;
      v32 = v29;

      v33 = &v4[v31];
      v1 = v23;
      sub_224D9A1CC(v32, v28, v30, v33, v38);
    }

    while (1)
    {
      v24 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        return (*(v39 + 8))(v38, v37);
      }

      v20 = *(v17 + 8 * v24);
      ++i;
      if (v20)
      {
        v23 = v1;
        i = v24;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_224D9C314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_224DA9908();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a1 + *MEMORY[0x277CFA128]);
  swift_beginAccess();
  if (!v17[1])
  {
    sub_224D9ED00();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  v18 = *v17;
  v19 = v17[1];

  sub_224DA9888();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_224A3311C(v11, &unk_27D6F5630, &unk_224DB34C0);
    sub_224D9ED00();
    swift_allocError();
    *v20 = 2;
    return swift_willThrow();
  }

  (*(v13 + 32))(v16, v11, v12);
  v23 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v2[16]);
  sub_224DAAC98();
  v24 = sub_224DAAE38();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v7, 1, v24) == 1)
  {
    sub_224A3311C(v7, &qword_27D6F3320, &unk_224DBD6F0);
    sub_224D9ED00();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    return (*(v25 + 32))(v28, v7, v24);
  }
}

uint64_t sub_224D9C6A0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_224DAAE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v19 = *(a3 + 56);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
  v13 = (*(v11 + 80) + 41) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a3;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2 & 1;
  (*(v11 + 32))(v14 + v13, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_224D9ED54;
  *(v15 + 24) = v14;
  aBlock[4] = sub_224BC4B74;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_91_1;
  v16 = _Block_copy(aBlock);

  sub_224BA7AC0(a1, a2 & 1);

  dispatch_sync(v19, v16);
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224D9C8F8(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v118 = a5;
  v117 = a4;
  v115 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v122 = &v109 - v9;
  v10 = sub_224DA9908();
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = *(v113 + 64);
  MEMORY[0x28223BE20](v10);
  v112 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAAE38();
  v119 = *(v13 - 8);
  v120 = v13;
  v14 = *(v119 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v110 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v111 = &v109 - v17;
  v18 = sub_224DA9878();
  v125 = *(v18 - 8);
  v19 = *(v125 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v123 = &v109 - v24;
  v116 = a1;
  v25 = *(a1 + 16);
  v127 = v23;
  v128 = a2;
  v124 = v25;
  if (!v25)
  {
LABEL_16:
    if (v117)
    {
      v35 = v119;
      v36 = v120;
      if (qword_2813516C8 != -1)
      {
LABEL_37:
        swift_once();
      }

      v53 = sub_224DAB258();
      __swift_project_value_buffer(v53, qword_281365120);
      v54 = v111;
      (*(v35 + 2))(v111, v118, v36);
      v55 = v115;
      v56 = v115;
      v57 = sub_224DAB228();
      v58 = sub_224DAF288();
      sub_224B92BE0(v55, 1);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v131[0] = v129;
        *v59 = 136446466;
        v60 = v112;
        sub_224DAAD98();
        sub_224D9EDC0(&qword_281351A00, MEMORY[0x277CC95F0]);
        v61 = v114;
        v62 = sub_224DAFD28();
        v63 = v54;
        v65 = v64;
        (*(v113 + 8))(v60, v61);
        (*(v35 + 1))(v63, v36);
        v66 = sub_224A33F74(v62, v65, v131);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2082;
        v130 = v115;
        v67 = v115;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
        v68 = sub_224DAEE28();
        v70 = sub_224A33F74(v68, v69, v131);

        *(v59 + 14) = v70;
        _os_log_impl(&dword_224A2F000, v57, v58, "Could not send staleness message to %{public}s: %{public}s", v59, 0x16u);
        v71 = v129;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v71, -1, -1);
        MEMORY[0x22AA5EED0](v59, -1, -1);
      }

      else
      {

        (*(v35 + 1))(v54, v36);
      }

      return sub_224D99138();
    }

    v73 = v119;
    v72 = v120;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v74 = sub_224DAB258();
    __swift_project_value_buffer(v74, qword_281365120);
    v75 = v110;
    (*(v73 + 16))(v110, v118, v72);
    v76 = sub_224DAB228();
    v77 = sub_224DAF2A8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v131[0] = v129;
      *v78 = 136446210;
      v79 = v112;
      sub_224DAAD98();
      sub_224D9EDC0(&qword_281351A00, MEMORY[0x277CC95F0]);
      v80 = v114;
      v81 = sub_224DAFD28();
      v83 = v82;
      (*(v113 + 8))(v79, v80);
      (*(v73 + 8))(v75, v72);
      v84 = sub_224A33F74(v81, v83, v131);

      *(v78 + 4) = v84;
      _os_log_impl(&dword_224A2F000, v76, v77, "Sent staleness message to %{public}s", v78, 0xCu);
      v85 = v129;
      __swift_destroy_boxed_opaque_existential_1(v129);
      MEMORY[0x22AA5EED0](v85, -1, -1);
      MEMORY[0x22AA5EED0](v78, -1, -1);

      if (!v124)
      {
        return sub_224D99138();
      }
    }

    else
    {

      (*(v73 + 8))(v75, v72);
      if (!v124)
      {
        return sub_224D99138();
      }
    }

    v86 = (v125 + 56);
    v129 = (v125 + 32);
    v87 = (v116 + 48);
    do
    {
      v92 = *(v87 - 2);
      v91 = *(v87 - 1);
      v93 = *v87;
      v94 = v128;
      swift_beginAccess();
      v95 = *(v94 + 32);
      v96 = v92;
      swift_bridgeObjectRetain_n();
      v97 = v96;
      v98 = sub_224B0C03C(v97, v91, v93);
      if (v99)
      {
        v100 = v98;
        v101 = *(v94 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = *(v94 + 32);
        v130 = v103;
        *(v94 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_224B2B68C();
          v103 = v130;
        }

        v104 = *(v103 + 48) + 24 * v100;
        v105 = *v104;
        v106 = *(v104 + 16);

        v89 = v122;
        v90 = v127;
        (*(v125 + 32))(v122, *(v103 + 56) + *(v125 + 72) * v100, v127);
        sub_224B1EF54(v100, v103);

        v107 = *(v94 + 32);
        *(v94 + 32) = v103;

        v88 = 0;
      }

      else
      {

        v88 = 1;
        v89 = v122;
        v90 = v127;
      }

      (*v86)(v89, v88, 1, v90);
      sub_224A3311C(v89, &qword_27D6F32B0, &qword_224DB3EA0);
      swift_endAccess();

      v87 += 3;
      v124 = (v124 - 1);
    }

    while (v124);
    return sub_224D99138();
  }

  v26 = v124;
  v126 = (v125 + 32);
  v121 = v125 + 40;
  v27 = (v116 + 48);
  while (1)
  {
    v129 = v26;
    v30 = *(v27 - 1);
    v31 = *v27;
    v32 = *(v27 - 2);
    swift_bridgeObjectRetain_n();
    v33 = v32;
    v34 = v123;
    sub_224DA9808();
    swift_beginAccess();
    v35 = *v126;
    v36 = v22;
    (*v126)(v22, v34, v18);
    v37 = *(a2 + 40);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v130 = *(a2 + 40);
    v39 = v130;
    *(a2 + 40) = 0x8000000000000000;
    v41 = sub_224B0C03C(v33, v30, v31);
    v42 = v39[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v45 = v40;
    if (v39[3] < v44)
    {
      break;
    }

    if (v38)
    {
      v48 = v130;
      if (v40)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_224B2B68C();
      v48 = v130;
      if (v45)
      {
LABEL_3:
        v22 = v36;
        v18 = v127;
        (*(v125 + 40))(v48[7] + *(v125 + 72) * v41, v36, v127);

        goto LABEL_4;
      }
    }

LABEL_12:
    v48[(v41 >> 6) + 8] |= 1 << v41;
    v49 = (v48[6] + 24 * v41);
    *v49 = v33;
    v49[1] = v30;
    v49[2] = v31;
    v22 = v36;
    v18 = v127;
    v35((v48[7] + *(v125 + 72) * v41), v36, v127);
    v50 = v48[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_36;
    }

    v48[2] = v52;
LABEL_4:
    a2 = v128;
    v28 = v129;
    v29 = *(v128 + 40);
    *(v128 + 40) = v48;

    swift_endAccess();

    v27 += 3;
    v26 = (v28 - 1);
    if (!v26)
    {
      goto LABEL_16;
    }
  }

  sub_224B1B598(v44, v38);
  v46 = sub_224B0C03C(v33, v30, v31);
  if ((v45 & 1) == (v47 & 1))
  {
    v41 = v46;
    v48 = v130;
    if (v45)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224D9D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v71 = a5;
  v72 = a7;
  v70 = a6;
  v65 = a3;
  v66 = a4;
  v76 = a2;
  v8 = sub_224DA9878();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v58 - v11;
  v12 = sub_224DA9908();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v74 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_281365120);
  v63 = *(v13 + 16);
  v63(v18, a1, v12);
  v20 = sub_224DAB228();
  v21 = sub_224DAF2A8();
  v22 = os_log_type_enabled(v20, v21);
  v73 = v12;
  v62 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v61 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446210;
    v26 = sub_224DA9898();
    v27 = v13;
    v29 = v28;
    (*(v27 + 8))(v18, v12);
    v30 = sub_224A33F74(v26, v29, aBlock);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_224A2F000, v20, v21, "Checking if device is nearby %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    v31 = v24;
    a1 = v61;
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v18, v12);
  }

  v32 = v76;
  v59 = sub_224D969A4();
  v61 = sub_224DA9898();
  v60 = v33;
  v34 = v68;
  v35 = v69;
  v36 = *(v68 + 16);
  v36(v75, v65, v69);
  v37 = v67;
  v36(v67, v66, v35);
  v63(v74, a1, v73);
  v38 = *(v34 + 80);
  v39 = (v38 + 24) & ~v38;
  v40 = (v9 + v38 + v39) & ~v38;
  v41 = (v9 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = v62;
  v43 = (*(v62 + 80) + v41 + 24) & ~*(v62 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v32;
  v45 = *(v34 + 32);
  v45(v44 + v39, v75, v35);
  v45(v44 + v40, v37, v35);
  v46 = (v44 + v41);
  v47 = v70;
  v48 = v71;
  *v46 = v71;
  v46[1] = v47;
  v49 = v73;
  v46[2] = v72;
  (*(v42 + 32))(v44 + v43, v74, v49);
  v50 = v59;
  v51 = *(v59 + 48);
  v52 = swift_allocObject();
  v53 = v61;
  v52[2] = v50;
  v52[3] = v53;
  v52[4] = v60;
  v52[5] = sub_224D9EB30;
  v52[6] = v44;
  v52[7] = 0x3FF0000000000000;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_224D9EC38;
  *(v54 + 24) = v52;
  aBlock[4] = sub_224BC4B74;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_65_0;
  v55 = _Block_copy(aBlock);

  v56 = v48;

  dispatch_sync(v51, v55);
  _Block_release(v55);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
    __break(1u);
  }

  return result;
}

void sub_224D9D9A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a8;
  v94 = a6;
  v14 = sub_224DABE18();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = *(v91 + 64);
  MEMORY[0x28223BE20](v14);
  v90 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v86 = *(v17 - 8);
  v87 = v17;
  v18 = *(v86 + 64);
  MEMORY[0x28223BE20](v17);
  v85 = &v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v84 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v76 - v24;
  v26 = sub_224DAB8C8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = (&v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = a2;
  v31 = *(a2 + 56);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D851F0], v26);
  v88 = v31;
  LOBYTE(v31) = sub_224DAB8F8();
  (*(v27 + 8))(v30, v26);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  sub_224DA9758();
  v8 = v32;
  if (a1)
  {
    v82 = a4;
    v33 = a5;
    sub_224DAF4E8();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
    v35 = *(v34 - 8);
    v77 = *(v35 + 48);
    v36 = v77(v25, 1, v34);
    v37 = MEMORY[0x277CFA138];
    v76 = v35;
    if (v36 == 1)
    {
      sub_224A3311C(v25, &qword_27D6F4B00, &unk_224DB9AB0);
      v38 = *v37;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v79 = sub_224DA9FE8();
      v40 = v39;
      swift_endAccess();
    }

    else
    {
      v51 = v85;
      sub_224DAA268();
      (*(v35 + 8))(v25, v34);
      v52 = v87;
      v79 = sub_224DA9FE8();
      v40 = v53;
      (*(v86 + 8))(v51, v52);
    }

    v97 = 0;
    v98 = 0xE000000000000000;
    sub_224DAF938();
    v95 = v97;
    v96 = v98;
    MEMORY[0x22AA5D210](0xD00000000000001FLL, 0x8000000224DD0750);
    sub_224DAF188();
    MEMORY[0x22AA5D210](0xD000000000000035, 0x8000000224DD0770);
    v97 = v33;
    v98 = v94;
    v99 = a7;
    v33;
    v83 = a7;

    v54 = sub_224DAEE28();
    MEMORY[0x22AA5D210](v54);

    v80 = v95;
    v81 = v96;
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_224DAF938();

    v97 = 0xD00000000000001FLL;
    v98 = 0x8000000224DD07B0;
    MEMORY[0x22AA5D210](v79, v40);

    v78 = v97;
    v79 = v98;
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_224DAF938();
    v95 = v97;
    v96 = v98;
    MEMORY[0x22AA5D210](0xD000000000000110, 0x8000000224DD07D0);
    v55 = sub_224DA9858();
    MEMORY[0x22AA5D210](v55);

    MEMORY[0x22AA5D210](0xD000000000000014, 0x8000000224DD08F0);
    v56 = sub_224DA9858();
    MEMORY[0x22AA5D210](v56);

    MEMORY[0x22AA5D210](0xD000000000000010, 0x8000000224DD0910);
    sub_224DA9908();
    sub_224D9EDC0(&qword_281351A00, MEMORY[0x277CC95F0]);
    v57 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v57);

    MEMORY[0x22AA5D210](0x7562207070410A0ALL, 0xEE00203A656C646ELL);
    v58 = v84;
    sub_224DAF4E8();
    if (v77(v58, 1, v34) == 1)
    {
      sub_224A3311C(v58, &qword_27D6F4B00, &unk_224DB9AB0);
      v59 = 0;
      v60 = 0xE000000000000000;
    }

    else
    {
      v61 = v85;
      sub_224DAA268();
      (*(v76 + 8))(v58, v34);
      v62 = v87;
      v63 = sub_224DA9FE8();
      v60 = v64;
      (*(v86 + 8))(v61, v62);
      v59 = v63;
    }

    MEMORY[0x22AA5D210](v59, v60);

    MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DC9550);
    v65 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    v66 = sub_224DA9FE8();
    v68 = v67;
    swift_endAccess();
    MEMORY[0x22AA5D210](v66, v68);

    MEMORY[0x22AA5D210](0x207465676469570ALL, 0xEE00203A646E696BLL);
    v69 = v83;

    MEMORY[0x22AA5D210](v94, v69);
    MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DD0930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4308, &qword_224DB6B38);
    sub_224DAF3E8();
    v70 = MEMORY[0x22AA5D380](v97, &type metadata for StalenessKey);
    v72 = v71;

    MEMORY[0x22AA5D210](v70, v72);

    v73 = v90;
    sub_224DABDA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_224DB3100;
    *(v74 + 32) = sub_224DA9898();
    *(v74 + 40) = v75;
    sub_224DAD7E8();

    (*(v91 + 8))(v73, v92);
    return;
  }

  if (qword_2813516C8 != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v41 = sub_224DAB258();
  __swift_project_value_buffer(v41, qword_281365120);
  v42 = a5;

  v43 = sub_224DAB228();
  v44 = sub_224DAF288();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v95 = v46;
    *v45 = 134349314;
    *(v45 + 4) = v8 / 60.0;
    *(v45 + 12) = 2082;
    v97 = v42;
    v98 = v94;
    v99 = a7;
    v47 = v42;

    v48 = sub_224DAEE28();
    v50 = sub_224A33F74(v48, v49, &v95);

    *(v45 + 14) = v50;
    _os_log_impl(&dword_224A2F000, v43, v44, "Timeline is still stale %{public}f minutes after staleness observed. Device is not nearby. %{public}s", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x22AA5EED0](v46, -1, -1);
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }
}

uint64_t sub_224D9E498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F28, &qword_224DC3890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 32) = 0x746144656C617473;
  *(inited + 40) = 0xEA00000000007365;
  swift_beginAccess();
  *(inited + 48) = *(a1 + 32);
  *(inited + 56) = 0x65746144646E6573;
  *(inited + 64) = 0xE900000000000073;
  swift_beginAccess();
  *(inited + 72) = *(a1 + 40);

  sub_224DA2E88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F30, &qword_224DC3898);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F38, &qword_224DC38A0);
  v5 = sub_224DAECF8();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_224D9E628()
{
  v1 = *(*v0 + 56);
  sub_224DAF3E8();
  return v3;
}

uint64_t sub_224D9E688(uint64_t a1)
{
  sub_224B44674(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48F0, &unk_224DB8630);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v1 + 24);
    v5[0] = v4;

    sub_224DAB348();
  }

  return result;
}

uint64_t sub_224D9E730(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F40, &qword_224DC38A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_224D9E954();
  sub_224DAFEF8();
  if (!v1)
  {
    sub_224DAF538();
    v10[7] = 0;
    sub_224D9EDC0(&qword_27D6F6F50, MEMORY[0x277CFA140]);
    sub_224DAFC68();
    v8 = v11;
    v10[6] = 1;
    sub_224DAFC58();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_224D9E954()
{
  result = qword_27D6F6F48;
  if (!qword_27D6F6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F48);
  }

  return result;
}

uint64_t sub_224D9E9A8()
{
  v1 = *(sub_224DA9878() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_224D99A50(v2, v3, v4, v5, v6);
}

uint64_t sub_224D9EA10()
{
  v1 = *(sub_224DA9908() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_224DA9878() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (v3 + v5 + 8) & ~v5;
  v8 = (v6 + v5 + v7) & ~v5;
  v9 = *(v0 + v3);
  v10 = v0 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);

  return sub_224D9D3B8(v0 + v2, v9, v0 + v7, v0 + v8, v11, v12, v13);
}

void sub_224D9EB30(char a1)
{
  v3 = *(sub_224DA9878() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_224DA9908() - 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + v8 + 16);
  v14 = v1 + ((*(v9 + 80) + v8 + 24) & ~*(v9 + 80));

  sub_224D9D9A8(a1, v10, v1 + v5, v1 + v7, v11, v12, v13, v14);
}

uint64_t sub_224D9EC7C(void *a1, char a2)
{
  v5 = *(sub_224DAAE38() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_224D9C6A0(a1, a2 & 1, v6, v7, v8);
}

unint64_t sub_224D9ED00()
{
  result = qword_27D6F6F88;
  if (!qword_27D6F6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F88);
  }

  return result;
}

uint64_t sub_224D9ED54()
{
  v1 = *(sub_224DAAE38() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_224D9C8F8(v2, v3, v4, v5, v6);
}

uint64_t sub_224D9EDC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224D9EE2C()
{
  result = qword_27D6F6F90;
  if (!qword_27D6F6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F90);
  }

  return result;
}

unint64_t sub_224D9EE84()
{
  result = qword_27D6F6F98;
  if (!qword_27D6F6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F98);
  }

  return result;
}

unint64_t sub_224D9EEDC()
{
  result = qword_27D6F6FA0;
  if (!qword_27D6F6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6FA0);
  }

  return result;
}

unint64_t sub_224D9EF34()
{
  result = qword_27D6F6FA8;
  if (!qword_27D6F6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6FA8);
  }

  return result;
}

uint64_t RelevancePowerlogReporter.__allocating_init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RelevancePowerlogReporter.init(subsystem:category:)(a1, a2, a3, a4);
  return v8;
}

unint64_t sub_224D9F01C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39C8, &unk_224DC3BD0);
    v2 = sub_224DAFBB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_224A739A4(&v27, v29);
        sub_224A739A4(v29, v30);
        sub_224A739A4(v30, &v28);
        result = sub_224A3A40C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_224A739A4(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_224A739A4(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_224D9F274(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7098, &qword_224DC3C78);
    v2 = sub_224DAFBB8();
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_224A33E0C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_224A739A4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_224A739A4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_224A739A4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_224DAF8B8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_224A739A4(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_224D9F53C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7098, &qword_224DC3C78);
    v2 = sub_224DAFBB8();
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
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_224C5C748();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_224A739A4(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_224A739A4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_224DAF8B8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_224A739A4(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t RelevancePowerlogReporter.init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;

  v5 = sub_224DAEDE8();

  v6 = *(v4 + 64);
  v7 = *(v4 + 72);

  v8 = sub_224DAEDE8();

  v9 = PPSCreateTelemetryIdentifier();

  if (v9)
  {
    v10 = MEMORY[0x277D841D8];
  }

  else
  {
    v10 = 0;
    v12[1] = 0;
    v12[2] = 0;
  }

  v12[0] = v9;
  v12[3] = v10;
  swift_beginAccess();
  sub_224D9F8F4(v12, v4 + 16);
  swift_endAccess();
  return v4;
}

uint64_t sub_224D9F8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4760, &unk_224DB3680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_224D9F964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, double a7)
{
  swift_beginAccess();
  sub_224A3796C(v7 + 16, v38, &qword_27D6F4760, &unk_224DB3680);
  if (!v39)
  {
    sub_224AD523C(v38);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_27D6F2D00 != -1)
    {
      swift_once();
    }

    v35 = sub_224DAB258();
    __swift_project_value_buffer(v35, qword_27D6F71F8);
    v34 = sub_224DAB228();
    v36 = sub_224DAF288();
    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_224A2F000, v34, v36, "Could not unwrap telemetryID of current activity", v37, 2u);
      MEMORY[0x22AA5EED0](v37, -1, -1);
    }

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_224DC3AB0;
  *(inited + 40) = 0x8000000224DD0980;
  v16 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v16 timeIntervalSince1970];
  v18 = v17;

  v19 = MEMORY[0x277D839F8];
  *(inited + 48) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = 0x4449656C646E7562;
  v20 = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 120) = v20;
  *(inited + 128) = 1684957547;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 168) = MEMORY[0x277D83E40];
  v21 = swift_allocObject();
  *(inited + 144) = v21;

  v22 = sub_224DA2F98(0xCuLL, a3, a4);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v21[2] = v22;
  v21[3] = v24;
  v21[4] = v26;
  v21[5] = v28;
  strcpy((inited + 176), "relevanceCount");
  *(inited + 191) = -18;
  v29 = MEMORY[0x277D83B88];
  if (a6)
  {
    v30 = -1;
  }

  else
  {
    v30 = a5;
  }

  *(inited + 192) = v30;
  *(inited + 216) = v29;
  strcpy((inited + 224), "executionTime");
  *(inited + 238) = -4864;
  v31 = a7 * 1000.0;
  v32 = -1;
  if (a7 * 1000.0 < 0.0 || v31 >= 9.22337204e18)
  {
    goto LABEL_11;
  }

  if (COERCE_UNSIGNED_INT64(fabs(a7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v31 > -9.22337204e18)
  {
    v32 = v31;
LABEL_11:
    *(inited + 264) = v29;
    *(inited + 240) = v32;
    v33 = sub_224DA0AC0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
    swift_arrayDestroy();
    sub_224D9F274(v33);

    v34 = sub_224DAECC8();

    PPSSendTelemetry();
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t RelevancePowerlogReporter.deinit()
{
  sub_224AD523C(v0 + 16);
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return v0;
}

uint64_t RelevancePowerlogReporter.__deallocating_deinit()
{
  sub_224AD523C(v0 + 16);
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_224D9FE14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7020, &qword_224DB47C8);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_224A3A40C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_224D9FF28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7060, &unk_224DC3C30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3958, &qword_224DB4750);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F7060, &unk_224DC3C30);
      result = sub_224B0B2F8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAE178();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA0110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3B40, &qword_224DB4850);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_224A3A40C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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

unint64_t sub_224DA0290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D18, &unk_224DC3D10);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_224B0B580(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_224DA0398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FF0, &unk_224DB4118);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FF8, &qword_224DC3BB0);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F6FF0, &unk_224DB4118);
      v12 = *v6;
      result = sub_224B0B668(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_224DAB0F8();
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

unint64_t sub_224DA0580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D80, &qword_224DC3D50);
    v3 = sub_224DAFBB8();
    for (i = a1 + 32; ; i += 48)
    {
      sub_224A3796C(i, v11, &qword_27D6F7150, &qword_224DC3D58);
      v5 = v11[0];
      result = sub_224B0B6F0(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_224A36F98(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_224DA06F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D68, &unk_224DC3BA0);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F6FE0, &unk_224DB9C50);
      v12 = *v6;
      result = sub_224B31510(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_224DAAFC8();
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

unint64_t sub_224DA08CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7138, &unk_224DC3D40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7140, &unk_224DC00E0);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7138, &unk_224DC3D40);
      result = sub_224A683FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA0AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39C8, &unk_224DC3BD0);
    v3 = sub_224DAFBB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_224A3796C(v4, &v13, &unk_27D6F58E0, &unk_224DB6450);
      v5 = v13;
      v6 = v14;
      result = sub_224A3A40C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_224A739A4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_224DA0BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7158, &unk_224DC3D60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7160, &qword_224DB4738);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7158, &unk_224DC3D60);
      v12 = *v6;
      result = sub_224A3E7EC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_224DAC378();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
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

unint64_t sub_224DA0DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D70, &qword_224DB41E0);
    v3 = sub_224DAFBB8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_224B0B6F0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_224DA0EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39B8, &qword_224DC3D70);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_224A3E7EC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_224DA0FA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7090, &unk_224DC3C60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3970, &qword_224DB4758);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7090, &unk_224DC3C60);
      v12 = *v6;
      v13 = v6[1];
      result = sub_224A3A40C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_224DAC5E8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA11A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3B10, &unk_224DC3D00);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_224A3A40C(v5, v6);
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

unint64_t sub_224DA12A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70D8, &unk_224DC3CC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70E0, &qword_224DB4950);
    v8 = sub_224DAFBB8();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70D8, &unk_224DC3CC0);
      result = sub_224B0B8A4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC918();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = *(v9 + 2);
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA149C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F70C8, &unk_224DC3CB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CA0, &qword_224DB4958);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F70C8, &unk_224DC3CB0);
      result = sub_224B0B8A4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC918();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for PlatterContentError(0);
      result = sub_224DA30E4(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA16A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70B8, &unk_224DC3CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70C0, &qword_224DB4940);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70B8, &unk_224DC3CA0);
      result = sub_224B0B8A4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC918();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_224DAEC58();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA18C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FB8, &qword_224DC3B60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3930, &qword_224DB4730);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F6FB8, &qword_224DC3B60);
      result = sub_224A89A08(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA1AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C60, &qword_224DB4920);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_224A5C3D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_224DA1BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C58, &unk_224DC3C90);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      swift_unknownObjectRetain();
      result = sub_224A5C3D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_224DA1CF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_224DA1DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70A8, &unk_224DC3C80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70B0, &qword_224DB4910);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70A8, &unk_224DC3C80);
      result = sub_224B0BB84(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA1FDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C00, &qword_224DC3C70);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_224A3A40C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_224DA20F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7070, &unk_224DC3C40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B98, &qword_224DB4888);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F7070, &unk_224DC3C40);
      result = sub_224A683FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

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

unint64_t sub_224DA22EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7080, &unk_224DC3C50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BA8, &qword_224DB4898);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F7080, &unk_224DC3C50);
      result = sub_224B0BBA8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC2B8();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_224DAD158();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

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

uint64_t sub_224DA2520(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7050, &unk_224DC3C20);
  v3 = sub_224DAFBB8();
  v4 = a1[4];
  v5 = sub_224AA3CDC(v3);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = a1 + 5;
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;

    v7 = sub_224AA3CDC(v15);
    --v10;
    result = v14;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224DA260C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7048, &qword_224DC3C18);
  v3 = sub_224DAFBB8();
  v4 = a1[4];
  v5 = sub_224AA3CDC(v3);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = a1 + 5;
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;
    v15 = swift_unknownObjectRetain();
    v7 = sub_224AA3CDC(v15);
    --v10;
    result = v14;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_224DA270C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7040, &qword_224DC3C08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3A98, &qword_224DC3C10);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7040, &qword_224DC3C08);
      v12 = *v6;
      result = sub_224B0BD50(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_224DAC5E8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
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

unint64_t sub_224DA28F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AA0, &qword_224DC3C00);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_224A77FD0(v7, v8);
      result = sub_224A3A40C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_224DA2A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A70, &qword_224DB47D8);
  v3 = sub_224DAFBB8();
  v13 = *(a1 + 32);
  result = sub_224B304F8();
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_224B304F8();
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_224DA2B24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7030, &qword_224DB47E0);
  v4 = sub_224DAFBB8();
  v16 = *(a1 + 32);
  result = sub_224B304F8();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    v15 = v1;
    return v4;
  }

  v7 = (a1 + 48);
  v8 = v2 - 1;
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v16;
    *(v4[7] + 8 * result) = *(&v16 + 1);
    v9 = v4[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v1 = *(&v16 + 1);
    v4[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;

    v13 = v1;
    result = sub_224B304F8();
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_224DA2C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A80, &unk_224DC3BF0);
  v3 = sub_224DAFBB8();
  v4 = *(a1 + 32);
  v18 = *(a1 + 40);
  v5 = sub_224B304F8();
  v6 = v18;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v5;
  result = v4;
  v10 = (a1 + 64);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = result;
    *(v3[7] + 16 * v8) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = (v10 + 24);
    v15 = *(v10 - 1);
    v17 = *v10;

    swift_unknownObjectRetain();
    v8 = sub_224B304F8();
    v10 = v14;
    result = v15;
    v6 = v17;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_224DA2D90(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_224DA2E9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_224DAFBB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_224A3A40C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_224DA2F98(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_224DAEE98();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_224DAEF28();
}

uint64_t sub_224DA30E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterContentError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224DA3148()
{
  v0 = sub_224DA9B28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  result = sub_224DA9AB8();
  v9 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v10 = 0;
    v20 = (v1 + 8);
    v24 = (v1 + 32);
    v25 = v1 + 16;
    v11 = MEMORY[0x277D84F90];
    v22 = v5;
    v23 = v0;
    v21 = result;
    while (v10 < *(v9 + 16))
    {
      v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v13 = *(v1 + 72);
      (*(v1 + 16))(v7, v9 + v12 + v13 * v10, v0);
      if (sub_224DA9B18())
      {
        v14 = *v24;
        (*v24)(v5, v7, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA68C(0, *(v11 + 16) + 1, 1);
          v11 = v27;
        }

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_224ADA68C(v16 > 1, v17 + 1, 1);
          v11 = v27;
        }

        *(v11 + 16) = v17 + 1;
        v18 = v11 + v12 + v17 * v13;
        v5 = v22;
        v0 = v23;
        result = (v14)(v18, v22, v23);
        v9 = v21;
      }

      else
      {
        result = (*v20)(v7, v0);
      }

      if (v26 == ++v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_13:

    v19 = *(v11 + 16);

    return v19 != 0;
  }

  return result;
}

uint64_t sub_224DA33B0(uint64_t a1)
{
  v3 = sub_224DA9878();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7178, &qword_224DC3E18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v81 - v8;
  v103 = sub_224DA9908();
  v118 = *(v103 - 8);
  v10 = *(v118 + 64);
  v11 = MEMORY[0x28223BE20](v103);
  v86 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - v13;
  v15 = sub_224DADB68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v116 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v20);
  v115 = &v81 - v23;
  v24 = sub_224DADE68();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v101 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v109 = &v81 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v81 - v31;
  v105 = *(v1 + 96);
  os_unfair_lock_lock(*(v105 + 16));
  v104 = a1;
  v102 = sub_224DA3EF0(a1);
  v33 = sub_224DADE58();
  v100 = *(v33 + 16);
  if (!v100)
  {

    v36 = MEMORY[0x277D84F98];
LABEL_28:
    os_unfair_lock_unlock(*(v105 + 16));
    return v36;
  }

  v88 = v22;
  v35 = 0;
  v99 = v33 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v117 = *(v1 + 16);
  v98 = v25 + 104;
  v114 = v25 + 8;
  v97 = *MEMORY[0x277CF9E20];
  v96 = (v16 + 48);
  v93 = (v16 + 32);
  v107 = (v16 + 8);
  v85 = (v118 + 16);
  v95 = (v118 + 8);
  v94 = (v16 + 16);
  v91 = v16;
  v82 = v16 + 40;
  v36 = MEMORY[0x277D84F98];
  *&v34 = 134349312;
  v81 = v34;
  v92 = v9;
  v106 = v15;
  v113 = v14;
  v90 = v25;
  v89 = v33;
  v119 = v25 + 16;
  v84 = v24;
  while (v35 < *(v33 + 16))
  {
    v108 = *(v25 + 72);
    v118 = *(v25 + 16);
    (v118)(v32, v99 + v108 * v35, v24);
    v39 = v32;
    v40 = v109;
    (*(v25 + 104))(v109, v97, v24);
    v41 = sub_224DADE48();
    v42 = v40;
    v43 = v39;
    v110 = *(v25 + 8);
    v110(v42, v24);
    v44 = v102 << (v41 & 1);
    sub_224DAD988();
    os_unfair_lock_assert_owner(*(v105 + 16));
    sub_224DADB58();
    sub_224DADEB8();

    v45 = (*v96)(v9, 1, v15);
    v111 = v35;
    v112 = v36;
    if (v45 == 1)
    {
      sub_224A3311C(v9, &qword_27D6F7178, &qword_224DC3E18);
      v46 = 0;
    }

    else
    {
      v47 = *v93;
      v48 = v88;
      (*v93)(v88, v9, v15);
      v49 = sub_224DADB28();
      sub_224DA73A8(&qword_27D6F7168, MEMORY[0x277CF9DD0]);
      v83 = v44;
      if (v49 == v44)
      {
        sub_224DADD48();
        sub_224DADEE8();
        v50 = v115;
        v47(v115, v48, v15);
        v51 = v103;
        v52 = v113;
        v53 = v118;
        goto LABEL_17;
      }

      v46 = sub_224DADD38();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v54 = sub_224DAB258();
      __swift_project_value_buffer(v54, qword_281365120);
      v55 = sub_224DAB228();
      v56 = sub_224DAF2A8();
      v57 = os_log_type_enabled(v55, v56);
      v44 = v83;
      if (v57)
      {
        v58 = swift_slowAlloc();
        *v58 = v81;
        swift_beginAccess();
        v59 = sub_224DADB28();
        swift_endAccess();
        *(v58 + 4) = v59;
        *(v58 + 12) = 2050;
        *(v58 + 14) = v44;
        _os_log_impl(&dword_224A2F000, v55, v56, "maximumBudgetPerWindow has changed from %{public}ld to %{public}ld, removing and recreating budget", v58, 0x16u);
        v60 = v58;
        v15 = v106;
        MEMORY[0x22AA5EED0](v60, -1, -1);
      }

      v61 = v88;
      swift_beginAccess();
      sub_224DADEC8();
      (*v107)(v61, v15);
      v43 = v39;
    }

    v62 = __OFSUB__(v44, v46);
    v51 = v103;
    if (v62)
    {
      goto LABEL_31;
    }

    v52 = v113;
    (*v85)(v86, v113, v103);
    v39 = v43;
    v53 = v118;
    (v118)(v109, v43, v24);
    sub_224DA9808();
    v50 = v115;
    v24 = v84;
    sub_224DADB38();
    sub_224DADEE8();
LABEL_17:
    (*v95)(v52, v51);
    v63 = v101;
    v53(v101, v39, v24);
    v15 = v106;
    (*v94)(v116, v50, v106);
    v64 = v112;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v64;
    v66 = sub_224B0BC7C(v63);
    v68 = v64[2];
    v69 = (v67 & 1) == 0;
    v62 = __OFADD__(v68, v69);
    v70 = v68 + v69;
    if (v62)
    {
      goto LABEL_30;
    }

    v71 = v67;
    v32 = v39;
    if (v64[3] >= v70)
    {
      v73 = v111;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v79 = v66;
        sub_224B2862C();
        v66 = v79;
        v15 = v106;
      }
    }

    else
    {
      sub_224B15790(v70, isUniquelyReferenced_nonNull_native);
      v66 = sub_224B0BC7C(v63);
      v73 = v111;
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_33;
      }
    }

    v9 = v92;
    v36 = v120;
    if (v71)
    {
      v37 = v91;
      (*(v91 + 40))(v120[7] + *(v91 + 72) * v66, v116, v15);
      v38 = v110;
      v110(v63, v24);
      (*(v37 + 8))(v115, v15);
      v38(v32, v24);
    }

    else
    {
      v120[(v66 >> 6) + 8] |= 1 << v66;
      v74 = v66;
      (v118)(v36[6] + v66 * v108, v63, v24);
      v75 = v91;
      (*(v91 + 32))(v36[7] + *(v91 + 72) * v74, v116, v15);
      v76 = v110;
      v110(v63, v24);
      (*(v75 + 8))(v115, v15);
      v76(v32, v24);
      v77 = v36[2];
      v62 = __OFADD__(v77, 1);
      v78 = v77 + 1;
      if (v62)
      {
        goto LABEL_32;
      }

      v36[2] = v78;
    }

    v35 = v73 + 1;
    v25 = v90;
    v33 = v89;
    if (v100 == v35)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224DA3EF0(uint64_t a1)
{
  v3 = sub_224DAD9C8();
  v4 = *(v3 - 8);
  v110 = v3;
  v111 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v109 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v105 = &v96 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v99 = &v96 - v11;
  MEMORY[0x28223BE20](v10);
  v98 = &v96 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = (&v96 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v17 = *(v16 - 8);
  v102 = v16;
  v103 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v101 = &v96 - v19;
  v20 = sub_224DA9AE8();
  v106 = *(v20 - 8);
  v107 = v20;
  v21 = *(v106 + 64);
  MEMORY[0x28223BE20](v20);
  v104 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v96 - v28;
  v30 = sub_224DABCC8();
  v108 = *(v30 - 8);
  v31 = *(v108 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v1;
  v35 = __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v36 = sub_224DAD938();
  v37 = *v35;
  sub_224BD7040(v36, v38, v33);

  sub_224DA9BD8();
  sub_224DA9BC8();
  sub_224DAD938();
  sub_224DA9BB8();
  v96 = a1;

  v109 = v29;
  sub_224A3796C(v29, v27, &qword_27D6F48D8, &unk_224DB8240);
  v40 = v106;
  v39 = v107;
  v41 = (*(v106 + 48))(v27, 1, v107);
  v42 = v30;
  v97 = v33;
  if (v41 == 1)
  {
    sub_224A3311C(v27, &qword_27D6F48D8, &unk_224DB8240);
LABEL_7:
    v50 = v96;
    v51 = v105;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_281365120);
    v54 = v110;
    v53 = v111;
    (*(v111 + 16))(v51, v50, v110);
    swift_retain_n();
    v55 = sub_224DAB228();
    v56 = sub_224DAF278();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v42;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v113 = v59;
      *v58 = 136446466;
      sub_224DA73A8(&qword_27D6F4B70, MEMORY[0x277CF9D80]);
      v60 = sub_224DAFD28();
      v61 = v51;
      v63 = v62;
      (*(v53 + 8))(v61, v54);
      v64 = sub_224A33F74(v60, v63, &v113);

      *(v58 + 4) = v64;
      *(v58 + 12) = 2050;

      *(v58 + 14) = 60;

      _os_log_impl(&dword_224A2F000, v55, v56, "Push NOT allowed for %{public}s, defaulting to normal budget %{public}ld", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x22AA5EED0](v59, -1, -1);
      MEMORY[0x22AA5EED0](v58, -1, -1);

      sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
      (*(v108 + 8))(v97, v57);
    }

    else
    {

      (*(v53 + 8))(v51, v54);
      sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
      (*(v108 + 8))(v97, v42);
    }

    return 60;
  }

  v43 = v104;
  (*(v40 + 32))(v104, v27, v39);
  v44 = v34;
  if ((sub_224DA3148() & 1) == 0)
  {
    (*(v40 + 8))(v43, v39);
    goto LABEL_7;
  }

  v45 = sub_224DABCA8();
  v46 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v47 = v100;
  sub_224A3796C(v45 + v46, v100, &unk_27D6F5060, &qword_224DB5620);

  v49 = v102;
  v48 = v103;
  if ((*(v103 + 48))(v47, 1, v102) == 1)
  {
    (*(v40 + 8))(v43, v39);
    sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
    (*(v108 + 8))(v97, v42);
    sub_224A3311C(v47, &unk_27D6F5060, &qword_224DB5620);
    return 60;
  }

  v105 = v42;
  (*(v48 + 32))(v101, v47, v49);
  v66 = *(v44 + 64);
  sub_224DA9FE8();
  LOBYTE(v66) = sub_224DA9AF8();

  v67 = v108;
  if ((v66 & 1) == 0)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v83 = sub_224DAB258();
    __swift_project_value_buffer(v83, qword_281365120);
    v84 = v110;
    v85 = v111;
    v86 = v99;
    (*(v111 + 16))(v99, v96, v110);
    swift_retain_n();
    v87 = sub_224DAB228();
    v88 = sub_224DAF278();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v112 = v100;
      *v89 = 136446466;
      sub_224DA73A8(&qword_27D6F4B70, MEMORY[0x277CF9D80]);
      v90 = sub_224DAFD28();
      v91 = v40;
      v93 = v92;
      (*(v85 + 8))(v86, v84);
      v94 = sub_224A33F74(v90, v93, &v112);

      *(v89 + 4) = v94;
      *(v89 + 12) = 2050;

      *(v89 + 14) = 60;

      _os_log_impl(&dword_224A2F000, v87, v88, "Frequent pushes NOT allowed for %{public}s, defaulting to normal budget %{public}ld", v89, 0x16u);
      v95 = v100;
      __swift_destroy_boxed_opaque_existential_1(v100);
      MEMORY[0x22AA5EED0](v95, -1, -1);
      MEMORY[0x22AA5EED0](v89, -1, -1);

      (*(v103 + 8))(v101, v102);
      (*(v91 + 8))(v104, v107);
      sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
      (*(v108 + 8))(v97, v105);
    }

    else
    {

      (*(v85 + 8))(v86, v84);
      (*(v103 + 8))(v101, v49);
      (*(v40 + 8))(v104, v107);
      sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
      (*(v67 + 8))(v97, v105);
    }

    return 60;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v68 = sub_224DAB258();
  __swift_project_value_buffer(v68, qword_281365120);
  v69 = v110;
  v70 = v111;
  v71 = v98;
  (*(v111 + 16))(v98, v96, v110);
  swift_retain_n();
  v72 = sub_224DAB228();
  v73 = sub_224DAF278();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = v40;
    v76 = swift_slowAlloc();
    v112 = v76;
    *v74 = 136446466;
    sub_224DA73A8(&qword_27D6F4B70, MEMORY[0x277CF9D80]);
    v77 = sub_224DAFD28();
    v78 = v71;
    v79 = v77;
    v81 = v80;
    (*(v70 + 8))(v78, v69);
    v82 = sub_224A33F74(v79, v81, &v112);

    *(v74 + 4) = v82;
    *(v74 + 12) = 2050;

    *(v74 + 14) = 240;

    _os_log_impl(&dword_224A2F000, v72, v73, "Frequent pushes allowed for %{public}s, defaulting to high frequency budget %{public}ld", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x22AA5EED0](v76, -1, -1);
    MEMORY[0x22AA5EED0](v74, -1, -1);

    (*(v103 + 8))(v101, v102);
    (*(v75 + 8))(v104, v107);
  }

  else
  {

    (*(v70 + 8))(v71, v69);
    (*(v103 + 8))(v101, v102);
    (*(v40 + 8))(v104, v39);
  }

  sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
  (*(v108 + 8))(v97, v105);
  return 240;
}

uint64_t sub_224DA4EBC(uint64_t a1, int a2)
{
  LODWORD(v221) = a2;
  v211 = sub_224DADE68();
  v209 = *(v211 - 8);
  v4 = *(v209 + 64);
  MEMORY[0x28223BE20](v211);
  v203 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_224DADB68();
  v198 = *(v210 - 8);
  v6 = *(v198 + 64);
  MEMORY[0x28223BE20](v210);
  v197 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9908();
  v205 = *(v8 - 8);
  v206 = v8;
  v9 = *(v205 + 64);
  MEMORY[0x28223BE20](v8);
  v204 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_224DAD928();
  v215 = *(v213 - 8);
  v11 = *(v215 + 64);
  v12 = MEMORY[0x28223BE20](v213);
  v214 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = sub_224DAD9C8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v191 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v212 = &v191 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v208 = &v191 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v207 = &v191 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v202 = &v191 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v201 = &v191 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v195 = &v191 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v193 = &v191 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v194 = &v191 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v192 = &v191 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v191 - v41;
  v200 = v2;
  v222 = sub_224DA33B0(a1);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v196 = v22;
  v43 = sub_224DAB258();
  v44 = __swift_project_value_buffer(v43, qword_281365120);
  v217 = v15[2];
  v218 = v15 + 2;
  v217(v42, a1, v14);

  v219 = v44;
  v45 = v14;
  v46 = sub_224DAB228();
  v47 = sub_224DAF278();

  v48 = os_log_type_enabled(v46, v47);
  v216 = a1;
  v199 = v19;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = v15;
    v51 = swift_slowAlloc();
    v223 = v51;
    *v49 = 136446722;
    v52 = v45;
    sub_224DAD978();
    v53 = v213;
    v54 = sub_224DAEE28();
    v56 = v55;
    v220 = *(v50 + 1);
    v220(v42, v52);
    v57 = sub_224A33F74(v54, v56, &v223);

    *(v49 + 4) = v57;
    *(v49 + 12) = 1026;
    *(v49 + 14) = v221 & 1;
    *(v49 + 18) = 2082;
    sub_224DA73A8(&qword_27D6F39F0, MEMORY[0x277CF9E28]);
    v58 = sub_224DAECF8();
    v60 = sub_224A33F74(v58, v59, &v223);

    *(v49 + 20) = v60;
    _os_log_impl(&dword_224A2F000, v46, v47, "Checking subscription type %{public}s, alerting %{BOOL,public}d, budgets %{public}s", v49, 0x1Cu);
    swift_arrayDestroy();
    v61 = v51;
    v62 = v50;
    MEMORY[0x22AA5EED0](v61, -1, -1);
    v63 = v49;
    a1 = v216;
    MEMORY[0x22AA5EED0](v63, -1, -1);

    v64 = v52;
  }

  else
  {

    v220 = v15[1];
    v220(v42, v45);
    v64 = v45;
    v53 = v213;
    v62 = v15;
  }

  v65 = v214;
  sub_224DAD978();
  v66 = (*(v215 + 88))(v65, v53);
  v67 = v212;
  if (v66 == *MEMORY[0x277CF9D70])
  {
    v68 = v207;
    v69 = v217;
    v217(v207, a1, v64);
    v70 = v208;
    v69(v208, a1, v64);
    v71 = sub_224DAB228();
    v72 = sub_224DAF288();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v223 = v215;
      *v73 = 136446466;
      LODWORD(v214) = v72;
      v74 = sub_224DAD938();
      v212 = v62;
      v76 = v75;
      v77 = v220;
      v220(v68, v64);
      v78 = sub_224A33F74(v74, v76, &v223);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2082;
      v79 = v204;
      sub_224DAD988();
      sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0]);
      v80 = v206;
      v81 = sub_224DAFD28();
      v83 = v82;
      (*(v205 + 8))(v79, v80);
      v77(v70, v64);
      v84 = sub_224A33F74(v81, v83, &v223);

      *(v73 + 14) = v84;
      _os_log_impl(&dword_224A2F000, v71, v214, "none subscription: not sending updated archive immediately: %{public}s.%{public}s", v73, 0x16u);
      v85 = v215;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v85, -1, -1);
      v86 = v73;
      a1 = v216;
      MEMORY[0x22AA5EED0](v86, -1, -1);
    }

    else
    {

      v105 = v220;
      v220(v70, v64);
      v105(v68, v64);
    }

    v106 = 0;
    if (v221)
    {
LABEL_35:
      if (v106)
      {
        goto LABEL_36;
      }

LABEL_29:

      v106 = 0;
      return v106 & 1;
    }

LABEL_39:

    return v106 & 1;
  }

  if (v66 == *MEMORY[0x277CF9D60])
  {
    v87 = v201;
    v88 = v217;
    v217(v201, a1, v64);
    v89 = v202;
    v88(v202, a1, v64);
    v90 = sub_224DAB228();
    v91 = sub_224DAF288();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v223 = v215;
      *v92 = 136446466;
      LODWORD(v214) = v91;
      v93 = sub_224DAD938();
      v95 = v94;
      v212 = v62;
      v96 = v220;
      v220(v87, v64);
      v97 = sub_224A33F74(v93, v95, &v223);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2082;
      v98 = v204;
      sub_224DAD988();
      sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0]);
      v99 = v206;
      v100 = sub_224DAFD28();
      v102 = v101;
      (*(v205 + 8))(v98, v99);
      v96(v89, v64);
      v103 = sub_224A33F74(v100, v102, &v223);

      *(v92 + 14) = v103;
      _os_log_impl(&dword_224A2F000, v90, v214, "stateChanges subscription: not sending updated archive immediately: %{public}s.%{public}s", v92, 0x16u);
      v104 = v215;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v104, -1, -1);
      MEMORY[0x22AA5EED0](v92, -1, -1);
    }

    else
    {

      v129 = v220;
      v220(v89, v64);
      v129(v87, v64);
    }

    goto LABEL_34;
  }

  if (v66 != *MEMORY[0x277CF9D78])
  {
    if (v66 == *MEMORY[0x277CF9D68])
    {
      v106 = sub_224DA65F4(v222, v221 & 1);
      if (v221)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v149 = v217;
    v217(v212, a1, v64);
    v150 = v196;
    v149(v196, a1, v64);
    v151 = sub_224DAB228();
    v152 = sub_224DAF288();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v223 = v208;
      *v153 = 136446466;
      LODWORD(v207) = v152;
      v154 = sub_224DAD938();
      v156 = v155;
      v212 = v62;
      v157 = v220;
      v220(v67, v64);
      v158 = sub_224A33F74(v154, v156, &v223);

      *(v153 + 4) = v158;
      *(v153 + 12) = 2082;
      v159 = v204;
      sub_224DAD988();
      sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0]);
      v160 = v206;
      v161 = sub_224DAFD28();
      v163 = v162;
      (*(v205 + 8))(v159, v160);
      v157(v150, v64);
      v164 = sub_224A33F74(v161, v163, &v223);

      *(v153 + 14) = v164;
      _os_log_impl(&dword_224A2F000, v151, v207, "unknown subscription: not sending updated archive immediately: %{public}s.%{public}s", v153, 0x16u);
      v165 = v208;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v165, -1, -1);
      v53 = v213;
      MEMORY[0x22AA5EED0](v153, -1, -1);
    }

    else
    {

      v168 = v220;
      v220(v150, v64);
      v168(v67, v64);
    }

    (*(v215 + 8))(v214, v53);
LABEL_34:
    v106 = 0;
    a1 = v216;
    if (v221)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if ((v221 & 1) == 0)
  {
    v130 = v193;
    v131 = v217;
    v217(v193, a1, v64);
    v132 = v195;
    v131(v195, a1, v64);
    v133 = sub_224DAB228();
    v134 = sub_224DAF278();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v223 = v221;
      *v135 = 136446466;
      LODWORD(v219) = v134;
      v136 = sub_224DAD938();
      v138 = v137;
      v139 = v132;
      v140 = v220;
      v220(v130, v64);
      v141 = sub_224A33F74(v136, v138, &v223);

      *(v135 + 4) = v141;
      *(v135 + 12) = 2082;
      v142 = v204;
      sub_224DAD988();
      sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0]);
      v143 = v206;
      v144 = sub_224DAFD28();
      v146 = v145;
      (*(v205 + 8))(v142, v143);
      v140(v139, v64);
      v147 = sub_224A33F74(v144, v146, &v223);

      *(v135 + 14) = v147;
      _os_log_impl(&dword_224A2F000, v133, v219, "alerting subscription: not sending updated non-alerting archive immediately: %{public}s.%{public}s", v135, 0x16u);
      v148 = v221;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v148, -1, -1);
      MEMORY[0x22AA5EED0](v135, -1, -1);
    }

    else
    {

      v167 = v220;
      v220(v132, v64);
      v167(v130, v64);
    }

    v106 = 0;
    goto LABEL_39;
  }

  v107 = sub_224DA6CF4(v222, 1);
  v108 = v192;
  v109 = v217;
  v217(v192, a1, v64);
  v110 = v194;
  v109(v194, a1, v64);
  v111 = sub_224DAB228();
  v112 = sub_224DAF278();
  if (!os_log_type_enabled(v111, v112))
  {

    v166 = v220;
    v220(v110, v64);
    v166(v108, v64);
    if (v107)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  v113 = swift_slowAlloc();
  v215 = swift_slowAlloc();
  v223 = v215;
  *v113 = 136446466;
  v114 = sub_224DAD938();
  v212 = v62;
  v115 = v108;
  v116 = v110;
  LODWORD(v221) = v107;
  v118 = v117;
  v119 = v220;
  v220(v115, v64);
  v120 = sub_224A33F74(v114, v118, &v223);

  *(v113 + 4) = v120;
  *(v113 + 12) = 2082;
  LODWORD(v214) = v112;
  v121 = v204;
  sub_224DAD988();
  sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0]);
  v122 = v206;
  v123 = sub_224DAFD28();
  v125 = v124;
  (*(v205 + 8))(v121, v122);
  v119(v116, v64);
  v126 = sub_224A33F74(v123, v125, &v223);

  *(v113 + 14) = v126;
  _os_log_impl(&dword_224A2F000, v111, v214, "alerting subscription: Sending updated alerting archive immediately: %{public}s.%{public}s", v113, 0x16u);
  v127 = v215;
  swift_arrayDestroy();
  MEMORY[0x22AA5EED0](v127, -1, -1);
  v128 = v113;
  a1 = v216;
  MEMORY[0x22AA5EED0](v128, -1, -1);

  if ((v221 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_36:
  v169 = v203;
  v170 = v211;
  (*(v209 + 104))(v203, *MEMORY[0x277CF9E18], v211);
  if (*(v222 + 16))
  {
    v171 = sub_224B0BC7C(v169);
    v169 = v203;
    if (v172)
    {
      v173 = v198;
      v174 = v197;
      v175 = v210;
      (*(v198 + 16))(v197, *(v222 + 56) + *(v198 + 72) * v171, v210);
      (*(v209 + 8))(v169, v170);

      sub_224DA73A8(&qword_27D6F7168, MEMORY[0x277CF9DD0]);
      sub_224DADD58();
      v176 = *(v200 + 16);
      sub_224DADEE8();
      (*(v173 + 8))(v174, v175);
LABEL_43:
      v106 = 1;
      return v106 & 1;
    }
  }

  (*(v209 + 8))(v169, v170);
  v177 = v199;
  v217(v199, a1, v64);

  v178 = sub_224DAB228();
  v179 = sub_224DAF288();

  if (!os_log_type_enabled(v178, v179))
  {

    v220(v177, v64);
    goto LABEL_43;
  }

  v180 = swift_slowAlloc();
  v181 = swift_slowAlloc();
  v223 = v181;
  *v180 = 136446722;
  sub_224DA73A8(&qword_27D6F4B70, MEMORY[0x277CF9D80]);
  v182 = sub_224DAFD28();
  v184 = v183;
  v220(v177, v64);
  v185 = sub_224A33F74(v182, v184, &v223);

  *(v180 + 4) = v185;
  *(v180 + 12) = 1026;
  v106 = 1;
  *(v180 + 14) = 1;
  *(v180 + 18) = 2082;
  sub_224DA73A8(&qword_27D6F39F0, MEMORY[0x277CF9E28]);
  v186 = sub_224DAECF8();
  v188 = v187;

  v189 = sub_224A33F74(v186, v188, &v223);

  *(v180 + 20) = v189;
  _os_log_impl(&dword_224A2F000, v178, v179, "No budget for %{public}s, alerting %{BOOL,public}d, budgets %{public}s", v180, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x22AA5EED0](v181, -1, -1);
  MEMORY[0x22AA5EED0](v180, -1, -1);

  return v106 & 1;
}

uint64_t sub_224DA65F4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_224DADE68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DADB68();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = MEMORY[0x277CF9E20];
  if ((a2 & 1) == 0)
  {
    v18 = MEMORY[0x277CF9E18];
  }

  (*(v7 + 104))(v10, *v18, v6);
  if (!*(a1 + 16) || (v19 = sub_224B0BC7C(v10), (v20 & 1) == 0))
  {
    (*(v7 + 8))(v10, v6);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_281365120);

    v31 = sub_224DAB228();
    v32 = sub_224DAF288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = 67240450;
      *(v33 + 4) = a2 & 1;
      *(v33 + 8) = 2082;
      sub_224DA73A8(&qword_27D6F39F0, MEMORY[0x277CF9E28]);
      v35 = sub_224DAECF8();
      v37 = sub_224A33F74(v35, v36, &v50);

      *(v33 + 10) = v37;
      _os_log_impl(&dword_224A2F000, v31, v32, "full subscription: no budget, alerting %{BOOL,public}d, budgets %{public}s", v33, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    return 0;
  }

  v21 = v49;
  (*(v49 + 16))(v15, *(a1 + 56) + *(v49 + 72) * v19, v11);
  (*(v7 + 8))(v10, v6);
  (*(v21 + 32))(v17, v15, v11);
  sub_224DA73A8(&qword_27D6F7168, MEMORY[0x277CF9DD0]);
  if (sub_224DADD28())
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_281365120);
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136446210;
      swift_beginAccess();
      sub_224DA73A8(&qword_27D6F7170, MEMORY[0x277CF9DD0]);
      v27 = sub_224DAFD28();
      v29 = sub_224A33F74(v27, v28, &v51);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_224A2F000, v23, v24, "full subscription: budget is exhausted, not sending updated archive immediately: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    (*(v49 + 8))(v17, v11);
    return 0;
  }

  sub_224DADD58();
  v39 = *(v3 + 16);
  sub_224DADEE8();
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v40 = sub_224DAB258();
  __swift_project_value_buffer(v40, qword_281365120);
  v41 = sub_224DAB228();
  v42 = sub_224DAF2A8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v43 = 136446210;
    swift_beginAccess();
    sub_224DA73A8(&qword_27D6F7170, MEMORY[0x277CF9DD0]);
    v45 = sub_224DAFD28();
    v47 = sub_224A33F74(v45, v46, &v51);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_224A2F000, v41, v42, "full subscription: budget allows sending update immediately: %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x22AA5EED0](v44, -1, -1);
    MEMORY[0x22AA5EED0](v43, -1, -1);
  }

  (*(v49 + 8))(v17, v11);
  return 1;
}

uint64_t sub_224DA6CF4(uint64_t a1, char a2)
{
  v5 = sub_224DADE68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_224DADB68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v42[-v16];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  (*(v6 + 104))(v9, *MEMORY[0x277CF9E20], v5);
  if (!*(a1 + 16) || (v18 = sub_224B0BC7C(v9), (v19 & 1) == 0))
  {
    (*(v6 + 8))(v9, v5);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_281365120);
    v29 = sub_224DAB228();
    v30 = sub_224DAF288();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67240192;
      *(v31 + 4) = 1;
      _os_log_impl(&dword_224A2F000, v29, v30, "full subscription: no budget, alerting %{BOOL,public}d", v31, 8u);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    return 0;
  }

  (*(v11 + 16))(v15, *(a1 + 56) + *(v11 + 72) * v18, v10);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 32))(v17, v15, v10);
  sub_224DA73A8(&qword_27D6F7168, MEMORY[0x277CF9DD0]);
  if (sub_224DADD28())
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281365120);
    v21 = sub_224DAB228();
    v22 = sub_224DAF2A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136446210;
      swift_beginAccess();
      sub_224DA73A8(&qword_27D6F7170, MEMORY[0x277CF9DD0]);
      v25 = sub_224DAFD28();
      v27 = sub_224A33F74(v25, v26, &v43);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_224A2F000, v21, v22, "alerts subscription: budget is exhausted, not sending updated immediately:  %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x22AA5EED0](v24, -1, -1);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    return 0;
  }

  sub_224DADD58();
  v33 = *(v2 + 16);
  sub_224DADEE8();
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v34 = sub_224DAB258();
  __swift_project_value_buffer(v34, qword_281365120);
  v35 = sub_224DAB228();
  v36 = sub_224DAF2A8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v37 = 136446210;
    swift_beginAccess();
    sub_224DA73A8(&qword_27D6F7170, MEMORY[0x277CF9DD0]);
    v39 = sub_224DAFD28();
    v41 = sub_224A33F74(v39, v40, &v43);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_224A2F000, v35, v36, "alerts subscription: budget allows sending update archive immediately: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x22AA5EED0](v38, -1, -1);
    MEMORY[0x22AA5EED0](v37, -1, -1);
  }

  (*(v11 + 8))(v17, v10);
  return 1;
}

uint64_t sub_224DA7334()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  v2 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_224DA73A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224DA73F0()
{
  v1 = *(v0 + 4);
  v2 = 1702195828;
  if (!*v0)
  {
    v2 = 0x65736C6166;
  }

  v7 = v2;

  MEMORY[0x22AA5D210](58, 0xE100000000000000);

  v3 = sub_224DA8870(v1);
  v5 = v4;

  MEMORY[0x22AA5D210](v3, v5);

  return v7;
}

id sub_224DA74E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  sub_224DA9FE8();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  swift_unknownObjectRetain();
  v7 = sub_224DAEDE8();

  v8 = [v6 initWithEffectiveBundleIdentifier:v7 delegate:a2 onQueue:a4];

  swift_unknownObjectRelease();
  return v8;
}

void sub_224DA7670()
{
  if (*&v0[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager])
  {
    __break(1u);
  }

  else
  {
    v1.receiver = v0;
    v1.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v1, sel_dealloc);
  }
}

uint64_t type metadata accessor for _LocationAuthorizationMonitorImpl()
{
  result = qword_281352B40;
  if (!qword_281352B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224DA7818(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager];
  if (*&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager])
  {
    v3 = &a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler];
    v4 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler];
    v5 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    sub_224A3D418(v4);
    if (*v1)
    {
      v6 = *(v1 + 1);
      v7 = *v1;
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(ObjectType, v6);
    }

    *v1 = 0;
    *(v1 + 1) = 0;
    swift_unknownObjectRelease();
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281364D60);
    v10 = a1;
    v11 = sub_224DAB228();
    v12 = sub_224DAF278();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      sub_224DA89A4();
      v15 = sub_224DAFD28();
      v17 = sub_224A33F74(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_224A2F000, v11, v12, "[mon:%{public}s] invalidated", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v13, -1, -1);
    }
  }
}

void sub_224DA7A08()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock];
  os_unfair_lock_lock(*(v1 + 16));
  sub_224DA7AC8(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = v3;
  if (v3)
  {
    (v3)(&v0[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier]);

    sub_224A3D418(v2);
  }
}

void sub_224DA7AC8(char *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v2 = a2;
  if (*&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager])
  {
    v4 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager + 8];
    v5 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager];
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 16);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v4);
    v9 = v8;
    v10 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status;
    v11 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status];
    v100 = HIDWORD(v8);
    if (v11 == 2)
    {
      v101 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status;
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v12 = sub_224DAB258();
      __swift_project_value_buffer(v12, qword_281364D60);
      v13 = a1;
      v14 = sub_224DAB228();
      v15 = sub_224DAF2A8();

      if (os_log_type_enabled(v14, v15))
      {
        v96 = v2;
        v16 = swift_slowAlloc();
        v105 = v9;
        v17 = swift_slowAlloc();
        v115 = v17;
        *v16 = 136446466;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
        sub_224DA89A4();
        v18 = sub_224DAFD28();
        v20 = sub_224A33F74(v18, v19, &v115);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2082;
        v21 = 1702195828;
        if (v105)
        {
          v22 = 0xE400000000000000;
        }

        else
        {
          v21 = 0x65736C6166;
          v22 = 0xE500000000000000;
        }

        v109 = v21;

        MEMORY[0x22AA5D210](58, 0xE100000000000000);

        v23 = sub_224DA8870(v100);
        v25 = v24;

        MEMORY[0x22AA5D210](v23, v25);

        v26 = sub_224A33F74(v109, v22, &v115);

        *(v16 + 14) = v26;
        _os_log_impl(&dword_224A2F000, v14, v15, "[mon:%{public}s] auth initialized to %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        v27 = v17;
        v9 = v105;
        MEMORY[0x22AA5EED0](v27, -1, -1);
        v28 = v16;
        v2 = v96;
        MEMORY[0x22AA5EED0](v28, -1, -1);
      }

      swift_unknownObjectRelease();

      v10 = v101;
LABEL_11:
      *&a1[v10] = v9 & 0xFFFFFFFF00000001;
      *v2 = 0;
      v2[1] = 0;
      return;
    }

    if ((v8 & 1) == (v11 & 1))
    {
      if (HIDWORD(v11) == HIDWORD(v8))
      {
        v107 = v8;
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v52 = sub_224DAB258();
        __swift_project_value_buffer(v52, qword_281364D60);
        v53 = a1;
        v54 = sub_224DAB228();
        v55 = sub_224DAF298();

        if (os_log_type_enabled(v54, v55))
        {
          v98 = v2;
          v56 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v115 = v94;
          *v56 = 136446466;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          v103 = v10;
          sub_224DA89A4();
          v57 = sub_224DAFD28();
          v59 = sub_224A33F74(v57, v58, &v115);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2082;
          v60 = 1702195828;
          if (v107)
          {
            v61 = 0xE400000000000000;
          }

          else
          {
            v60 = 0x65736C6166;
            v61 = 0xE500000000000000;
          }

          v112 = v60;

          MEMORY[0x22AA5D210](58, 0xE100000000000000);

          v62 = sub_224DA8870(v100);
          v64 = v63;

          MEMORY[0x22AA5D210](v62, v64);

          v9 = v107;

          v65 = sub_224A33F74(v112, v61, &v115);

          *(v56 + 14) = v65;
          v10 = v103;
          _os_log_impl(&dword_224A2F000, v54, v55, "[mon:%{public}s] auth reported to change when it actually didn't : %{public}s", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v94, -1, -1);
          v66 = v56;
          v2 = v98;
          MEMORY[0x22AA5EED0](v66, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v9 = v107;
        }
      }

      else
      {
        v99 = v2;
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v71 = sub_224DAB258();
        __swift_project_value_buffer(v71, qword_281364D60);
        v72 = a1;
        v73 = sub_224DAB228();
        v74 = sub_224DAF2A8();

        if (os_log_type_enabled(v73, v74))
        {
          v108 = v9;
          v75 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v115 = v95;
          *v75 = 136446722;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          v104 = v10;
          sub_224DA89A4();
          v76 = sub_224DAFD28();
          v78 = sub_224A33F74(v76, v77, &v115);

          *(v75 + 4) = v78;
          *(v75 + 12) = 2082;
          v79 = 1702195828;
          if (v11)
          {
            v80 = 0xE400000000000000;
          }

          else
          {
            v79 = 0x65736C6166;
            v80 = 0xE500000000000000;
          }

          v113 = v79;

          MEMORY[0x22AA5D210](58, 0xE100000000000000);

          v81 = sub_224DA8870(SHIDWORD(v11));
          v83 = v82;

          MEMORY[0x22AA5D210](v81, v83);

          v84 = sub_224A33F74(v113, v80, &v115);

          *(v75 + 14) = v84;
          *(v75 + 22) = 2082;
          v85 = 0x65736C6166;
          if (v108)
          {
            v85 = 1702195828;
            v86 = 0xE400000000000000;
          }

          else
          {
            v86 = 0xE500000000000000;
          }

          v114 = v85;

          MEMORY[0x22AA5D210](58, 0xE100000000000000);

          v87 = sub_224DA8870(v100);
          v89 = v88;

          MEMORY[0x22AA5D210](v87, v89);

          v90 = sub_224A33F74(v114, v86, &v115);

          *(v75 + 24) = v90;
          v10 = v104;
          _os_log_impl(&dword_224A2F000, v73, v74, "[mon:%{public}s] auth changed from %{public}s to %{public}s", v75, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v95, -1, -1);
          v91 = v75;
          v9 = v108;
          MEMORY[0x22AA5EED0](v91, -1, -1);
        }

        swift_unknownObjectRelease();

        v2 = v99;
      }

      goto LABEL_11;
    }

    v106 = v8;
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281364D60);
    v30 = a1;
    v31 = sub_224DAB228();
    v32 = sub_224DAF2A8();

    if (os_log_type_enabled(v31, v32))
    {
      v97 = v2;
      v33 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v115 = v93;
      *v33 = 136446722;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      v102 = v10;
      sub_224DA89A4();
      v34 = sub_224DAFD28();
      v36 = sub_224A33F74(v34, v35, &v115);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      v37 = 1702195828;
      if (v11)
      {
        v38 = 0xE400000000000000;
      }

      else
      {
        v37 = 0x65736C6166;
        v38 = 0xE500000000000000;
      }

      v110 = v37;

      MEMORY[0x22AA5D210](58, 0xE100000000000000);

      v39 = sub_224DA8870(SHIDWORD(v11));
      v41 = v40;

      MEMORY[0x22AA5D210](v39, v41);

      v42 = sub_224A33F74(v110, v38, &v115);

      *(v33 + 14) = v42;
      *(v33 + 22) = 2082;
      v92 = v32;
      v43 = v30;
      v44 = v106;
      v45 = 0x65736C6166;
      if (v106)
      {
        v45 = 1702195828;
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      v111 = v45;

      MEMORY[0x22AA5D210](58, 0xE100000000000000);

      v47 = sub_224DA8870(v100);
      v49 = v48;

      MEMORY[0x22AA5D210](v47, v49);

      v50 = sub_224A33F74(v111, v46, &v115);

      *(v33 + 24) = v50;
      v10 = v102;
      _os_log_impl(&dword_224A2F000, v31, v92, "[mon:%{public}s] auth changed from %{public}s to %{public}s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v93, -1, -1);
      v51 = v33;
      v2 = v97;
      MEMORY[0x22AA5EED0](v51, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v43 = v30;
      v44 = v106;
    }

    *&a1[v10] = v44 & 0xFFFFFFFF00000001;
    v67 = *&v43[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler];
    v68 = *&v43[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler + 8];
    if (v67)
    {
      v69 = swift_allocObject();
      *(v69 + 16) = v67;
      *(v69 + 24) = v68;
      v70 = sub_224C984F8;
    }

    else
    {
      v70 = 0;
      v69 = 0;
    }

    *v2 = v70;
    v2[1] = v69;
    sub_224A364AC(v67);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_224DA8700()
{
  sub_224C4EFE8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for LocationAuthorizationMonitorStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationAuthorizationMonitorStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_224DA8870(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x7265746544746F6ELL;
    }

    if (a1 == 1)
    {
      return 0x7463697274736572;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6465696E6564;
      case 3:
        return 0xD000000000000010;
      case 4:
        return 0xD000000000000013;
    }
  }

  v2 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v2);

  MEMORY[0x22AA5D210](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_224DA89A4()
{
  result = qword_281351940;
  if (!qword_281351940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3900, &unk_224DB4640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351940);
  }

  return result;
}

char *sub_224DA8A08(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v64 = a5;
  v62 = a3;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = v60 - v15;
  v16 = &v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler];
  *v16 = 0;
  v16[1] = 0;
  *&v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status] = 2;
  v17 = &v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock;
  type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *&v7[v18] = v19;
  *v20 = 0;
  *&v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount] = 1;
  *(v19 + 16) = v20;
  v67 = v13;
  v21 = *(v13 + 16);
  v65 = v12;
  v60[0] = v21;
  v60[1] = v13 + 16;
  v21(&v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], a1, v12);
  v22 = *v16;
  v23 = v16[1];
  *v16 = v64;
  v16[1] = a6;

  sub_224A3D418(v22);
  v69.receiver = v7;
  v69.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v69, sel_init);
  v63 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock;
  v25 = *(*&v24[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock] + 16);
  v26 = v24;
  os_unfair_lock_lock(v25);
  v27 = *(v62 + 8);
  v64 = a1;
  ObjectType = a4;
  v28 = v27(a1, v26, &off_2838379C0, a4, a2);
  v30 = v29;

  v31 = &v26[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager];
  v32 = *&v26[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager];
  *v31 = v28;
  v31[1] = v30;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v28)
  {
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v47 = sub_224DAB258();
    __swift_project_value_buffer(v47, qword_281364D60);
    v48 = v26;
    v35 = sub_224DAB228();
    v36 = sub_224DAF288();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v68 = v38;
      *v37 = 136446210;
      v49 = v24;
      v50 = v61;
      v40 = v65;
      (v60[0])(v61, &v48[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], v65);
      sub_224DA89A4();
      v51 = sub_224DAFD28();
      v53 = v52;
      v54 = v50;
      v24 = v49;
      (*(v67 + 8))(v54, v40);
      v55 = sub_224A33F74(v51, v53, &v68);

      *(v37 + 4) = v55;
      v46 = "[mon:%{public}s] failed to create";
      goto LABEL_10;
    }

LABEL_11:

    v40 = v65;
    v56 = v67;
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v33 = sub_224DAB258();
  __swift_project_value_buffer(v33, qword_281364D60);
  v34 = v26;
  v35 = sub_224DAB228();
  v36 = sub_224DAF278();

  if (!os_log_type_enabled(v35, v36))
  {
    goto LABEL_11;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v68 = v38;
  *v37 = 136446210;
  v39 = v61;
  v40 = v65;
  (v60[0])(v61, &v34[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], v65);
  sub_224DA89A4();
  v41 = sub_224DAFD28();
  v42 = v24;
  v44 = v43;
  (*(v67 + 8))(v39, v40);
  v45 = sub_224A33F74(v41, v44, &v68);
  v24 = v42;

  *(v37 + 4) = v45;
  v46 = "[mon:%{public}s] created";
LABEL_10:
  _os_log_impl(&dword_224A2F000, v35, v36, v46, v37, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v38);
  MEMORY[0x22AA5EED0](v38, -1, -1);
  v56 = v67;
  MEMORY[0x22AA5EED0](v37, -1, -1);

LABEL_12:
  v57 = *(*&v24[v63] + 16);
  v58 = v26;

  os_unfair_lock_unlock(v57);

  (*(v56 + 8))(v64, v40);
  return v58;
}

void CHDRegisterForTemporaryFolder_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error clearing temporary directory contents on startup: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void CHDJetsamSetElevatedInactivePriority_cold_1(int a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = strerror(a1);
  _os_log_error_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error raising Jetsam Inactive Priority: %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ProactiveSuggestionClientModelLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ProactiveSuggestionClientModelLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TemporaryProactive.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __getATXInfoTimelineEntryRelevanceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getATXInfoTimelineEntryRelevanceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TemporaryProactive.m" lineNumber:18 description:{@"Unable to find class %s", "ATXInfoTimelineEntryRelevance"}];

  __break(1u);
}

void __getATXInfoTimelineEntryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getATXInfoTimelineEntryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TemporaryProactive.m" lineNumber:17 description:{@"Unable to find class %s", "ATXInfoTimelineEntry"}];

  __break(1u);
}

void __getATXInfoTimelineDonationClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getATXInfoTimelineDonationClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TemporaryProactive.m" lineNumber:16 description:{@"Unable to find class %s", "ATXInfoTimelineDonationClient"}];

  __break(1u);
  sub_224DA92A8();
}