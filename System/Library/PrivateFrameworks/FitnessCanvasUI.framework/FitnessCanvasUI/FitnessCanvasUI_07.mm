uint64_t sub_1E6809C98()
{
  v1 = 0x6465726F7272696DLL;
  if (*v0 != 1)
  {
    v1 = 0x72657474616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_1E6809CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E680AD84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6809D14(uint64_t a1)
{
  v2 = sub_1E680A260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6809D50(uint64_t a1)
{
  v2 = sub_1E680A260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6809D8C(uint64_t a1)
{
  v2 = sub_1E680A35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6809DC8(uint64_t a1)
{
  v2 = sub_1E680A35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6809E04(uint64_t a1)
{
  v2 = sub_1E680A308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6809E40(uint64_t a1)
{
  v2 = sub_1E680A308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6809E7C(uint64_t a1)
{
  v2 = sub_1E680A2B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6809EB8(uint64_t a1)
{
  v2 = sub_1E680A2B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionCardViewStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C30);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C38);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C40);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C48);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E680A260();
  sub_1E68B3BD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E680A308();
      v9 = v21;
      sub_1E68B3A30();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E680A2B4();
      v9 = v24;
      sub_1E68B3A30();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E680A35C();
    sub_1E68B3A30();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E680A260()
{
  result = qword_1EE2EB6F8;
  if (!qword_1EE2EB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6F8);
  }

  return result;
}

unint64_t sub_1E680A2B4()
{
  result = qword_1EE2EB6C8;
  if (!qword_1EE2EB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6C8);
  }

  return result;
}

unint64_t sub_1E680A308()
{
  result = qword_1EE2EB6B0;
  if (!qword_1EE2EB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6B0);
  }

  return result;
}

unint64_t sub_1E680A35C()
{
  result = qword_1EE2EB6E0;
  if (!qword_1EE2EB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6E0);
  }

  return result;
}

uint64_t ActionCardViewStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C50);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C58);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C60);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C68);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E680A260();
  v15 = v36;
  sub_1E68B3BC0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E68B3A10();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E676F5C0();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E68B3870();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v24 = &type metadata for ActionCardViewStyle;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E680A308();
          sub_1E68B3970();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E680A2B4();
          v26 = v17;
          sub_1E68B3970();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E680A35C();
        sub_1E68B3970();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t ActionCardViewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E680A9C8()
{
  result = qword_1ED098C70;
  if (!qword_1ED098C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098C70);
  }

  return result;
}

unint64_t sub_1E680AA70()
{
  result = qword_1ED098C78;
  if (!qword_1ED098C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098C78);
  }

  return result;
}

unint64_t sub_1E680AAC8()
{
  result = qword_1EE2EB6D0;
  if (!qword_1EE2EB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6D0);
  }

  return result;
}

unint64_t sub_1E680AB20()
{
  result = qword_1EE2EB6D8;
  if (!qword_1EE2EB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6D8);
  }

  return result;
}

unint64_t sub_1E680AB78()
{
  result = qword_1EE2EB6A0;
  if (!qword_1EE2EB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6A0);
  }

  return result;
}

unint64_t sub_1E680ABD0()
{
  result = qword_1EE2EB6A8;
  if (!qword_1EE2EB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6A8);
  }

  return result;
}

unint64_t sub_1E680AC28()
{
  result = qword_1EE2EB6B8;
  if (!qword_1EE2EB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6B8);
  }

  return result;
}

unint64_t sub_1E680AC80()
{
  result = qword_1EE2EB6C0;
  if (!qword_1EE2EB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6C0);
  }

  return result;
}

unint64_t sub_1E680ACD8()
{
  result = qword_1EE2EB6E8;
  if (!qword_1EE2EB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6E8);
  }

  return result;
}

unint64_t sub_1E680AD30()
{
  result = qword_1EE2EB6F0;
  if (!qword_1EE2EB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6F0);
  }

  return result;
}

uint64_t sub_1E680AD84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047270 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726F7272696DLL && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72657474616C70 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1E680AEA4()
{
  sub_1E67E2E4C();
  sub_1E68B20E0();
  return v1;
}

__n128 sub_1E680AEF0@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  return result;
}

void sub_1E680AF38(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

_OWORD *sub_1E680AFF0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1E67FCA14(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1E680C3E4(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1E680B99C(a1);
    v7 = sub_1E680B874(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1E680C58C();
        v11 = v13;
      }

      sub_1E67FCA14((*(v11 + 56) + 32 * v9), v14);
      sub_1E680C1C8(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1E680B99C(v14);
  }

  return result;
}

uint64_t sub_1E680B0D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  MEMORY[0x1E69523D0](v5);
  MEMORY[0x1E69523D0](v6);
  return sub_1E68B3BB0();
}

uint64_t sub_1E680B17C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1E69523D0](*v0);
  MEMORY[0x1E69523D0](v1);
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  return MEMORY[0x1E69523D0](v5);
}

uint64_t sub_1E680B1F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  MEMORY[0x1E69523D0](v5);
  MEMORY[0x1E69523D0](v6);
  return sub_1E68B3BB0();
}

BOOL sub_1E680B290(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1E680C8D4(v7, v8);
}

uint64_t sub_1E680B2D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E680B334(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1E680B378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1E680B3D8()
{
  result = qword_1EE2EC718;
  if (!qword_1EE2EC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC718);
  }

  return result;
}

void sub_1E680B42C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_getExtendedExistentialTypeMetadata();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1E680B748((v3 + v4), a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1E680B52C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = a2;
  v21 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_6;
  }

  v22 = sub_1E680B874(a2);
  if ((v23 & 1) == 0)
  {
    goto LABEL_6;
  }

  v28 = v19;
  sub_1E680B940(*(v21 + 56) + 32 * v22, v47);
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v45 = a16;
  v46 = a17;
  v24 = type metadata accessor for CanvasItemPlaceholderCache();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = v28;
LABEL_6:
    v34 = a4;
    v35 = a5;
    v37 = a7;
    v38 = a8;
    v39 = a10;
    v40 = a11;
    v41 = a12;
    v42 = a13;
    v43 = a14;
    v44 = a15;
    v45 = a16;
    v46 = a17;
    v26 = v19;
    v24 = type metadata accessor for CanvasItemPlaceholderCache();
    v25 = sub_1E688E9D4();
    v36 = v24;
    v33 = v25;

    sub_1E680AFF0(&v33, v26);
    goto LABEL_7;
  }

  v25 = v48;
LABEL_7:
  a9[3] = v24;
  result = swift_getWitnessTable();
  a9[4] = result;
  *a9 = v25;
  return result;
}

unint64_t sub_1E680B790(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  sub_1E68B31F0();
  v4 = sub_1E68B3BB0();

  return sub_1E680BA04(a1, a2, v4);
}

unint64_t sub_1E680B808(unsigned __int8 a1)
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](a1);
  v2 = sub_1E68B3BB0();

  return sub_1E680BABC(a1, v2);
}

unint64_t sub_1E680B874(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  MEMORY[0x1E69523D0](v5);
  MEMORY[0x1E69523D0](v6);
  MEMORY[0x1E69523D0](v7);
  v8 = sub_1E68B3BB0();

  return sub_1E680BB2C(a1, v8);
}

uint64_t sub_1E680B940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E680B99C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E680BA04(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E68B3B00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E680BABC(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1E680BB2C(void *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 48 * result);
      if (*v7 == *a1 && v7[1] == a1[1] && v7[2] == a1[2] && v7[3] == a1[3] && v7[4] == a1[4] && v7[5] == a1[5])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1E680BBF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C88);
  v36 = a2;
  result = sub_1E68B3930();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 48 * v20);
      v23 = v22[1];
      v39 = *v22;
      v24 = v22[2];
      v25 = v22[3];
      v37 = v22[5];
      v38 = v22[4];
      v26 = (v21 + 32 * v20);
      if (v36)
      {
        sub_1E67FCA14(v26, v40);
      }

      else
      {
        sub_1E680B940(v26, v40);
      }

      sub_1E68B3B70();
      MEMORY[0x1E69523D0](v39);
      MEMORY[0x1E69523D0](v23);
      MEMORY[0x1E69523D0](v24);
      MEMORY[0x1E69523D0](v25);
      MEMORY[0x1E69523D0](v38);
      MEMORY[0x1E69523D0](v37);
      result = sub_1E68B3BB0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      *v16 = v39;
      v16[1] = v23;
      v16[2] = v24;
      v16[3] = v25;
      v16[4] = v38;
      v16[5] = v37;
      result = sub_1E67FCA14(v40, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E680BF10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098920);
  v33 = a2;
  result = sub_1E68B3930();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1E67FCA14(v24, v34);
      }

      else
      {
        sub_1E680B940(v24, v34);
      }

      sub_1E68B3B70();
      sub_1E68B31F0();
      result = sub_1E68B3BB0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1E67FCA14(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E680C1C8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v32 = a2 + 64;
    v30 = (sub_1E68B37C0() + 1) & ~v5;
    do
    {
      v9 = (*(v2 + 48) + 48 * v6);
      v10 = v7;
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v14 = v9[3];
      v16 = v9[4];
      v15 = v9[5];
      sub_1E68B3B70();
      v17 = v11;
      v7 = v10;
      MEMORY[0x1E69523D0](v17);
      MEMORY[0x1E69523D0](v12);
      MEMORY[0x1E69523D0](v13);
      MEMORY[0x1E69523D0](v14);
      MEMORY[0x1E69523D0](v16);
      MEMORY[0x1E69523D0](v15);
      result = sub_1E68B3BB0();
      v18 = result & v10;
      if (v3 >= v30)
      {
        if (v18 < v30)
        {
          v2 = a2;
          v4 = v32;
        }

        else
        {
          v2 = a2;
          v4 = v32;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = a2;
        v4 = v32;
        if (v18 >= v30 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 48 * v3);
          v21 = (v19 + 48 * v6);
          if (v3 != v6 || v20 >= v21 + 3)
          {
            v22 = *v21;
            v23 = v21[2];
            v20[1] = v21[1];
            v20[2] = v23;
            *v20 = v22;
          }

          v24 = *(v2 + 56);
          v25 = (v24 + 32 * v3);
          v26 = (v24 + 32 * v6);
          if (v3 != v6 || v25 >= v26 + 2)
          {
            v8 = v26[1];
            *v25 = *v26;
            v25[1] = v8;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

_OWORD *sub_1E680C3E4(_OWORD *a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E680B874(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E680C58C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E680BBF8(v14, a3 & 1);
    v9 = sub_1E680B874(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1E68B3B20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1E67FCA14(a1, v20);
  }

  else
  {

    return sub_1E680C510(v9, a2, a1, v19);
  }
}

_OWORD *sub_1E680C510(unint64_t a1, _OWORD *a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = (a4[6] + 48 * a1);
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  v5[2] = a2[2];
  result = sub_1E67FCA14(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_1E680C58C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C88);
  v2 = *v0;
  v3 = sub_1E68B3920();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 48 * v17;
        v19 = (*(v2 + 48) + 48 * v17);
        v23 = v19[1];
        v24 = *v19;
        v22 = v19[2];
        v20 = 32 * v17;
        sub_1E680B940(*(v2 + 56) + 32 * v17, v25);
        v21 = (*(v4 + 48) + v18);
        *v21 = v24;
        v21[1] = v23;
        v21[2] = v22;
        result = sub_1E67FCA14(v25, (*(v4 + 56) + v20));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E680C730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098920);
  v2 = *v0;
  v3 = sub_1E68B3920();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1E680B940(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1E67FCA14(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

BOOL sub_1E680C8D4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    return a1[5] == a2[5];
  }

  return 0;
}

__n128 sub_1E680C960@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __n128 a11, unint64_t a12, unint64_t a13, uint64_t a14)
{
  v20 = *a6;
  v21 = *a7;
  v22 = a7[1];
  (*(*(a14 - 8) + 32))(a9, a1, a14);
  v23 = type metadata accessor for DynamicBrickView();
  v24 = (a9 + v23[9]);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  *(a9 + v23[10]) = v20;
  v25 = (a9 + v23[11]);
  *v25 = v21;
  v25[1] = v22;
  v26 = (a9 + v23[12]);
  v27 = swift_allocObject();
  *(v27 + 16) = a8;
  *(v27 + 24) = a10;
  *v26 = sub_1E673F5E0;
  v26[1] = v27;
  v28 = (a9 + v23[13]);
  result = a11;
  *v28 = a11;
  v28[1].n128_u64[0] = a12;
  v28[1].n128_u64[1] = a13;
  return result;
}

FitnessCanvasUI::DynamicBrickViewLayout __swiftcall DynamicBrickViewLayout.init(horizontalMargin:verticalMargin:)(Swift::Double horizontalMargin, Swift::Double verticalMargin)
{
  *v2 = horizontalMargin;
  v2[1] = verticalMargin;
  result.verticalMargin = verticalMargin;
  result.horizontalMargin = horizontalMargin;
  return result;
}

uint64_t sub_1E680CAE8()
{
  if (*v0)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1E680CB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001E68E2DB0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEE006E696772614DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E68B3B00();

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

uint64_t sub_1E680CC24(uint64_t a1)
{
  v2 = sub_1E680CE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E680CC60(uint64_t a1)
{
  v2 = sub_1E680CE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicBrickViewLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E680CE24();
  sub_1E68B3BD0();
  v8[15] = 0;
  sub_1E68B3A90();
  if (!v1)
  {
    v8[14] = 1;
    sub_1E68B3A90();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E680CE24()
{
  result = qword_1ED098C98;
  if (!qword_1ED098C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098C98);
  }

  return result;
}

uint64_t DynamicBrickViewLayout.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098CA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E680CE24();
  sub_1E68B3BC0();
  if (!v2)
  {
    v16 = 0;
    sub_1E68B39E0();
    v10 = v9;
    v15 = 1;
    sub_1E68B39E0();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DynamicBrickViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1E69523F0](*&v3);
}

uint64_t DynamicBrickViewLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E68B3B70();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1E69523F0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  return sub_1E68B3BB0();
}

uint64_t sub_1E680D124()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E68B3B70();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1E69523F0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  return sub_1E68B3BB0();
}

uint64_t DynamicBrickView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v58 = a2;
  v3 = sub_1E68B1EB0();
  v44 = v3;
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a1 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  v8 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v9 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v73 = MEMORY[0x1E697F568];
  v10 = swift_getWitnessTable();
  v11 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v70 = v10;
  v71 = v11;
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x1E6981CD8];
  v62 = v8;
  v63 = MEMORY[0x1E6981CD8];
  v64 = v9;
  v65 = v9;
  v14 = MEMORY[0x1E6981CD0];
  v66 = v10;
  v67 = MEMORY[0x1E6981CD0];
  v68 = v12;
  v69 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = v8;
  v63 = v13;
  v64 = v9;
  v65 = v9;
  v66 = v10;
  v67 = v14;
  v68 = v12;
  v69 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1E68B2C30();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v41 - v16;
  v17 = swift_getWitnessTable();
  v43 = v17;
  v42 = sub_1E681132C(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v62 = v15;
  v63 = v3;
  v64 = v17;
  v65 = v42;
  v46 = MEMORY[0x1E697CDB0];
  v18 = swift_getOpaqueTypeMetadata2();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v41 = &v41 - v23;
  v24 = v53;
  v25 = v55;
  v26 = v51;
  (*(v53 + 16))(v7, v55, v51, v22);
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  v29 = v26;
  v30 = *(v26 + 24);
  v31 = v52;
  *(v28 + 16) = v52;
  *(v28 + 24) = v30;
  (*(v24 + 32))(v28 + v27, v7, v29);
  v59 = v31;
  v60 = v30;
  v61 = v25;
  v32 = v45;
  sub_1E68B2C20();
  v33 = v56;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v34 = v44;
  v35 = v43;
  v36 = v42;
  sub_1E68B2790();
  (*(v57 + 8))(v33, v34);
  (*(v50 + 8))(v32, v15);
  v62 = v15;
  v63 = v34;
  v64 = v35;
  v65 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v41;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v20, v18, v37);
  v39 = *(v47 + 8);
  v39(v20, v18);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v38, v18, v37);
  return (v39)(v38, v18);
}

uint64_t sub_1E680D8B8(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for DynamicBrickView() + 48);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

uint64_t sub_1E680D950()
{
  v1 = *(type metadata accessor for DynamicBrickView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E680D8B8(v2);
}

uint64_t sub_1E680D9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[0] = a3;
  v29 = a1;
  v30 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  WitnessTable = swift_getWitnessTable();
  v22[1] = sub_1E68B2CE0();
  v6 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v7 = sub_1E68B1E40();
  v24 = swift_getWitnessTable();
  v55 = v24;
  v56 = MEMORY[0x1E697F568];
  v53 = swift_getWitnessTable();
  v54 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v23 = v53;
  v8 = swift_getWitnessTable();
  *&v46 = v6;
  *(&v46 + 1) = MEMORY[0x1E6981CD8];
  v47 = v7;
  v48 = v7;
  v49 = v53;
  v50 = MEMORY[0x1E6981CD0];
  v51 = v8;
  v52 = v8;
  v27 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v25 = v22 - v13;
  v35 = a2;
  v36 = a3;
  v37 = v29;
  sub_1E68B2E80();
  swift_checkMetadataState();
  sub_1E68B2CD0();
  v43 = v38;
  v44 = v39;
  v45 = v40;
  swift_checkMetadataState();
  sub_1E68B2770();

  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v42 = v50;
  sub_1E68B2E00();
  v33 = a2;
  v34 = v22[0];
  v31 = a2;
  v32 = v22[0];
  v14 = swift_checkMetadataState();
  v15 = swift_checkMetadataState();
  v16 = v23;
  v17 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();

  *&v46 = v14;
  *(&v46 + 1) = v17;
  v47 = v15;
  v48 = v15;
  v49 = v16;
  v50 = MEMORY[0x1E6981CD0];
  v51 = v8;
  v52 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v25;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v20 = *(v28 + 8);
  v20(v11, OpaqueTypeMetadata2);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v20)(v19, OpaqueTypeMetadata2);
}

unint64_t sub_1E680DEA0()
{
  result = qword_1ED098CB0;
  if (!qword_1ED098CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CB0);
  }

  return result;
}

uint64_t sub_1E680DF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DynamicBrickView();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v17 = sub_1E68B1D60();
  v18 = v13;
  v14 = sub_1E68B1D70();
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(&v17, v14, WitnessTable);

  v17 = v19;
  v18 = v20;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(&v17, v14, WitnessTable);
}

uint64_t sub_1E680E164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[0] = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v15, v16);
  v17 = sub_1E68B2140();
  v23[0] = 0;
  sub_1E680E43C(a2, a3, a4, v29);
  memcpy(v26, v29, 0x142uLL);
  memcpy(v27, v29, 0x142uLL);
  sub_1E67612FC(v26, v28, &qword_1ED098CD0);
  sub_1E6744A10(v27, &qword_1ED098CD0);
  memcpy(&v25[7], v26, 0x142uLL);
  v18 = v23[0];
  LOBYTE(a2) = sub_1E68B2500();
  v29[0] = 0;
  v28[0] = v17;
  LOBYTE(v28[1]) = v18;
  memcpy(&v28[1] + 1, v25, 0x149uLL);
  LOBYTE(v28[22]) = a2;
  *(&v28[22] + 1) = 0x4028000000000000;
  v28[23] = xmmword_1E68BF070;
  *&v28[24] = 0x4030000000000000;
  BYTE8(v28[24]) = 0;
  (*(v8 + 16))(v10, v13, a3);
  v24[0] = v10;
  memcpy(v23, v28, 0x189uLL);
  v24[1] = v23;
  sub_1E67612FC(v28, v29, &qword_1ED098CA8);
  v22[0] = a3;
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098CA8);
  v21[1] = a4;
  v21[2] = sub_1E6811550();
  sub_1E6848F14(v24, 2uLL, v22);
  sub_1E6744A10(v28, &qword_1ED098CA8);
  v19 = *(v8 + 8);
  v19(v13, a3);
  memcpy(v29, v23, 0x189uLL);
  sub_1E6744A10(v29, &qword_1ED098CA8);
  return (v19)(v10, a3);
}

void *sub_1E680E43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(a1 + *(type metadata accessor for DynamicBrickView() + 40));
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v16 = sub_1E68B21D0();
      v39 = 0;
      sub_1E6810204(a1, __dst);
      v46 = __dst[3];
      v47 = __dst[4];
      v48[0] = __dst[5];
      *(v48 + 9) = *(&__dst[5] + 9);
      v43 = __dst[0];
      v44 = __dst[1];
      v45 = __dst[2];
      v24[0] = __dst[0];
      v24[1] = __dst[1];
      v24[2] = __dst[2];
      v24[3] = __dst[3];
      v24[4] = __dst[4];
      v24[5] = __dst[5];
      *(&v24[5] + 9) = *(&__dst[5] + 9);
      sub_1E67612FC(&v43, v42, &qword_1ED098D98);
      sub_1E6744A10(v24, &qword_1ED098D98);
      *(&v38[3] + 7) = v46;
      *(&v38[4] + 7) = v47;
      *(&v38[5] + 7) = v48[0];
      v38[6] = *(v48 + 9);
      *(v38 + 7) = v43;
      *(&v38[1] + 7) = v44;
      *(&v38[2] + 7) = v45;
      v11 = v39;
      sub_1E68B1C60();
      sub_1E68B2E80();
      sub_1E68B1F30();
      *(&v36[3] + 7) = v28;
      *(&v36[4] + 7) = v29;
      *(&v36[5] + 7) = v30;
      *(&v36[6] + 7) = v31[0];
      *(v36 + 7) = v25;
      *(&v36[1] + 7) = v26;
      *(&v36[2] + 7) = v27;
      v21[0] = v16;
      LOBYTE(v21[1]) = v11;
      *(&v21[4] + 1) = v38[3];
      *(&v21[5] + 1) = v38[4];
      *(&v21[6] + 1) = v38[5];
      *(&v21[7] + 1) = v38[6];
      *(&v21[1] + 1) = v38[0];
      *(&v21[2] + 1) = v38[1];
      *(&v21[3] + 1) = v38[2];
      *(&v21[11] + 1) = v36[3];
      *(&v21[10] + 1) = v36[2];
      *(&v21[9] + 1) = v36[1];
      *(&v21[8] + 1) = v36[0];
      *&v21[15] = *(&v31[0] + 1);
      *(&v21[14] + 1) = v36[6];
      *(&v21[13] + 1) = v36[5];
      *(&v21[12] + 1) = v36[4];
      __src[2] = v21[2];
      __src[3] = v21[3];
      __src[0] = v16;
      __src[1] = v21[1];
      __src[6] = v21[6];
      __src[7] = v21[7];
      __src[4] = v21[4];
      __src[5] = v21[5];
      __src[10] = v21[10];
      __src[11] = v21[11];
      __src[8] = v21[8];
      __src[9] = v21[9];
      *&__src[15] = *&v21[15];
      __src[13] = v21[13];
      __src[14] = v21[14];
      __src[12] = v21[12];
      sub_1E6744B38(__src);
      __dst[12] = __src[12];
      __dst[13] = __src[13];
      __dst[14] = __src[14];
      *(&__dst[14] + 9) = *(&__src[14] + 9);
      __dst[8] = __src[8];
      __dst[9] = __src[9];
      __dst[10] = __src[10];
      __dst[11] = __src[11];
      __dst[4] = __src[4];
      __dst[5] = __src[5];
      __dst[6] = __src[6];
      __dst[7] = __src[7];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      __dst[3] = __src[3];
      v10 = &qword_1ED098D00;
      sub_1E67612FC(v21, v42, &qword_1ED098D00);
    }

    else
    {
      v13 = sub_1E68B21C0();
      v40[0] = 1;
      sub_1E6810470(a1, __dst);
      v29 = __dst[4];
      v30 = __dst[5];
      v31[0] = __dst[6];
      *(v31 + 9) = *(&__dst[6] + 9);
      v25 = __dst[0];
      v26 = __dst[1];
      v27 = __dst[2];
      v28 = __dst[3];
      v36[0] = __dst[0];
      v36[1] = __dst[1];
      v36[2] = __dst[2];
      v36[3] = __dst[3];
      v36[4] = __dst[4];
      v36[5] = __dst[5];
      v36[6] = __dst[6];
      *(&v36[6] + 9) = *(&__dst[6] + 9);
      sub_1E67612FC(&v25, v42, &qword_1ED098CF0);
      sub_1E6744A10(v36, &qword_1ED098CF0);
      *(&v41[4] + 7) = v29;
      *(&v41[5] + 7) = v30;
      *(&v41[6] + 7) = v31[0];
      v41[7] = *(v31 + 9);
      *(v41 + 7) = v25;
      *(&v41[1] + 7) = v26;
      *(&v41[2] + 7) = v27;
      *(&v41[3] + 7) = v28;
      v14 = v40[0];
      sub_1E68B1C60();
      sub_1E68B2E80();
      sub_1E68B1C50();
      *(__dst + 7) = v24[0];
      *(&__dst[1] + 7) = v24[1];
      *(&__dst[2] + 7) = v24[2];
      v21[0] = v13;
      LOBYTE(v21[1]) = v14;
      *(&v21[5] + 1) = v41[4];
      *(&v21[6] + 1) = v41[5];
      *(&v21[7] + 1) = v41[6];
      *(&v21[8] + 1) = v41[7];
      *(&v21[1] + 1) = v41[0];
      *(&v21[2] + 1) = v41[1];
      *(&v21[3] + 1) = v41[2];
      *(&v21[4] + 1) = v41[3];
      *&v21[12] = *(&v24[2] + 1);
      *(&v21[11] + 1) = __dst[2];
      *(&v21[10] + 1) = __dst[1];
      *(&v21[9] + 1) = __dst[0];
      __src[6] = v21[6];
      __src[7] = v21[7];
      __src[2] = v21[2];
      __src[3] = v21[3];
      __src[4] = v21[4];
      __src[5] = v21[5];
      __src[0] = v13;
      __src[1] = v21[1];
      __src[8] = v21[8];
      __src[9] = v21[9];
      __src[10] = v21[10];
      __src[11] = v21[11];
      *&__src[12] = *&v21[12];
      sub_1E6744AF8(__src);
      __dst[12] = __src[12];
      __dst[13] = __src[13];
      __dst[14] = __src[14];
      *(&__dst[14] + 9) = *(&__src[14] + 9);
      __dst[8] = __src[8];
      __dst[9] = __src[9];
      __dst[10] = __src[10];
      __dst[11] = __src[11];
      __dst[4] = __src[4];
      __dst[5] = __src[5];
      __dst[6] = __src[6];
      __dst[7] = __src[7];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      __dst[3] = __src[3];
      v10 = &qword_1ED098CF8;
      sub_1E67612FC(v21, v42, &qword_1ED098CF8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098CF8);
    sub_1E6811608();
    sub_1E68116C0();
    sub_1E68B2210();
    v42[12] = *&v20[192];
    v42[13] = *&v20[208];
    v42[14] = *&v20[224];
    *(&v42[14] + 9) = *&v20[233];
    v42[8] = *&v20[128];
    v42[9] = *&v20[144];
    v42[10] = *&v20[160];
    v42[11] = *&v20[176];
    v42[4] = *&v20[64];
    v42[5] = *&v20[80];
    v42[6] = *&v20[96];
    v42[7] = *&v20[112];
    v42[0] = *v20;
    v42[1] = *&v20[16];
    v42[2] = *&v20[32];
    v42[3] = *&v20[48];
    sub_1E6811778(v42);
  }

  else
  {
    if (v7)
    {
      v17 = sub_1E68B21C0();
      v39 = 0;
      sub_1E680F350(a1, a2, a3, __dst);
      v32 = __dst[8];
      v33 = __dst[9];
      v34 = __dst[10];
      v29 = __dst[4];
      v30 = __dst[5];
      v31[0] = __dst[6];
      v31[1] = __dst[7];
      v25 = __dst[0];
      v26 = __dst[1];
      v27 = __dst[2];
      v28 = __dst[3];
      v36[8] = __dst[8];
      v36[9] = __dst[9];
      v36[10] = __dst[10];
      v36[4] = __dst[4];
      v36[5] = __dst[5];
      v36[6] = __dst[6];
      v36[7] = __dst[7];
      v36[0] = __dst[0];
      v36[1] = __dst[1];
      v35 = __dst[11];
      v37 = __dst[11];
      v36[2] = __dst[2];
      v36[3] = __dst[3];
      sub_1E67612FC(&v25, v42, &qword_1ED098DA0);
      sub_1E6744A10(v36, &qword_1ED098DA0);
      *(&v23[8] + 7) = v32;
      *(&v23[9] + 7) = v33;
      *(&v23[10] + 7) = v34;
      *(&v23[4] + 7) = v29;
      *(&v23[5] + 7) = v30;
      *(&v23[6] + 7) = v31[0];
      *(&v23[7] + 7) = v31[1];
      *(v23 + 7) = v25;
      *(&v23[1] + 7) = v26;
      *(&v23[2] + 7) = v27;
      *(&v23[11] + 7) = v35;
      *(&v23[3] + 7) = v28;
      v12 = v39;
      sub_1E68B2E80();
      sub_1E68B1F30();
      *(&v24[3] + 6) = v46;
      *(&v24[4] + 6) = v47;
      *(&v24[5] + 6) = v48[0];
      *(&v24[6] + 6) = v48[1];
      *(v24 + 6) = v43;
      *(&v24[1] + 6) = v44;
      *(&v24[2] + 6) = v45;
      *(&v21[9] + 1) = v23[8];
      *(&v21[10] + 1) = v23[9];
      *(&v21[11] + 1) = v23[10];
      *(&v21[11] + 10) = *(&v23[10] + 9);
      *(&v21[5] + 1) = v23[4];
      *(&v21[6] + 1) = v23[5];
      *(&v21[7] + 1) = v23[6];
      *(&v21[8] + 1) = v23[7];
      *(&v21[1] + 1) = v23[0];
      *(&v21[2] + 1) = v23[1];
      *(&v21[3] + 1) = v23[2];
      *(&v21[4] + 1) = v23[3];
      *(&v21[16] + 10) = v24[4];
      *(&v21[17] + 10) = v24[5];
      *(&v21[18] + 10) = v24[6];
      *(&v21[12] + 10) = v24[0];
      *(&v21[13] + 10) = v24[1];
      *(&v21[14] + 10) = v24[2];
      v21[0] = v17;
      LOBYTE(v21[1]) = v12;
      *(&v21[19] + 1) = *(&v48[1] + 1);
      *(&v21[15] + 10) = v24[3];
      memcpy(__src, v21, 0x140uLL);
      sub_1E6811A0C(__src);
      memcpy(__dst, __src, 0x141uLL);
      v10 = &qword_1ED098D78;
      sub_1E67612FC(v21, v42, &qword_1ED098D78);
    }

    else
    {
      v8 = sub_1E68B21C0();
      v40[0] = 1;
      sub_1E680F13C(a1, __dst);
      v29 = __dst[4];
      v30 = __dst[5];
      v31[0] = __dst[6];
      *(v31 + 9) = *(&__dst[6] + 9);
      v25 = __dst[0];
      v26 = __dst[1];
      v27 = __dst[2];
      v28 = __dst[3];
      v36[0] = __dst[0];
      v36[1] = __dst[1];
      v36[2] = __dst[2];
      v36[3] = __dst[3];
      v36[4] = __dst[4];
      v36[5] = __dst[5];
      v36[6] = __dst[6];
      *(&v36[6] + 9) = *(&__dst[6] + 9);
      sub_1E67612FC(&v25, v42, &qword_1ED098DA8);
      sub_1E6744A10(v36, &qword_1ED098DA8);
      *&v19[71] = v29;
      *&v19[87] = v30;
      *&v19[103] = v31[0];
      *&v19[112] = *(v31 + 9);
      *&v19[7] = v25;
      *&v19[23] = v26;
      *&v19[39] = v27;
      *&v19[55] = v28;
      v9 = v40[0];
      sub_1E68B1C60();
      sub_1E68B2E80();
      sub_1E68B1C50();
      *(__dst + 7) = v24[0];
      *(&__dst[1] + 7) = v24[1];
      *(&__dst[2] + 7) = v24[2];
      v21[0] = v8;
      LOBYTE(v21[1]) = v9;
      *(&v21[5] + 1) = *&v19[64];
      *(&v21[6] + 1) = *&v19[80];
      *(&v21[7] + 1) = *&v19[96];
      *(&v21[8] + 1) = *&v19[112];
      *(&v21[1] + 1) = *v19;
      *(&v21[2] + 1) = *&v19[16];
      *(&v21[3] + 1) = *&v19[32];
      *(&v21[4] + 1) = *&v19[48];
      *&v21[12] = *(&v24[2] + 1);
      *(&v21[11] + 1) = __dst[2];
      *(&v21[10] + 1) = __dst[1];
      *(&v21[9] + 1) = __dst[0];
      __src[6] = v21[6];
      __src[7] = v21[7];
      __src[2] = v21[2];
      __src[3] = v21[3];
      __src[4] = v21[4];
      __src[5] = v21[5];
      __src[0] = v8;
      __src[1] = v21[1];
      __src[8] = v21[8];
      __src[9] = v21[9];
      __src[10] = v21[10];
      __src[11] = v21[11];
      *&__src[12] = *&v21[12];
      sub_1E6811A20(__src);
      memcpy(__dst, __src, 0x141uLL);
      v10 = &qword_1ED098D58;
      sub_1E67612FC(v21, v42, &qword_1ED098D58);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D78);
    sub_1E6811810();
    sub_1E68118C8();
    sub_1E68B2210();
    memcpy(v42, v20, 0x141uLL);
    sub_1E6811A18(v42);
  }

  memcpy(__dst, v42, 0x142uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D40);
  sub_1E6811784();
  sub_1E6811980();
  sub_1E68B2210();
  sub_1E6744A10(v21, v10);
  memcpy(__dst, v40, 0x142uLL);
  return memcpy(a4, __dst, 0x142uLL);
}

uint64_t sub_1E680F13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B2140();
  v13[0] = 0;
  sub_1E6810338(a1, &v27);
  v19 = *&v28[16];
  v20 = *&v28[32];
  v21 = *&v28[48];
  v22 = v28[64];
  v17 = v27;
  v18 = *v28;
  v24 = v28[64];
  v23[2] = *&v28[16];
  v23[3] = *&v28[32];
  v23[4] = *&v28[48];
  v23[0] = v27;
  v23[1] = *v28;
  sub_1E67612FC(&v17, &v25, &qword_1ED098DB0);
  sub_1E6744A10(v23, &qword_1ED098DB0);
  *&v16[39] = v19;
  *&v16[55] = v20;
  *&v16[71] = v21;
  v16[87] = v22;
  *&v16[7] = v17;
  *&v16[23] = v18;
  v15 = 0;
  v5 = *&v16[80];
  *&v26[81] = *&v16[80];
  *(a2 + 8) = 0;
  v6 = v13[0];
  v25 = v4;
  v26[0] = v13[0];
  *&v26[1] = *v16;
  *&v26[17] = *&v16[16];
  *&v26[65] = *&v16[64];
  *&v26[49] = *&v16[48];
  *&v26[33] = *&v16[32];
  *&v14[39] = *&v26[16];
  *&v14[23] = *v26;
  *&v14[7] = v4;
  *&v14[96] = *&v26[73];
  *&v14[87] = *&v26[64];
  *&v14[71] = *&v26[48];
  *&v14[55] = *&v26[32];
  *a2 = 0;
  v7 = *v14;
  v8 = *&v14[16];
  v9 = *&v14[48];
  *(a2 + 41) = *&v14[32];
  *(a2 + 25) = v8;
  *(a2 + 9) = v7;
  v10 = *&v14[64];
  v11 = *&v14[80];
  *(a2 + 105) = *&v14[96];
  *(a2 + 89) = v11;
  *(a2 + 73) = v10;
  *(a2 + 57) = v9;
  v27 = v4;
  v28[0] = v6;
  *&v28[17] = *&v16[16];
  *&v28[1] = *v16;
  v30 = v5;
  v29 = *&v16[64];
  *&v28[49] = *&v16[48];
  *&v28[33] = *&v16[32];
  sub_1E67612FC(&v25, v13, &qword_1ED098D98);
  return sub_1E6744A10(&v27, &qword_1ED098D98);
}

double sub_1E680F350@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for DynamicBrickView();
  v8 = (a1 + *(v7 + 52));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  if (v12)
  {
    v13 = (a1 + *(v7 + 36));
    if (v13[3])
    {
      v14 = v11;
      v45 = a1;
      v15 = v13[1];
      v16 = v13[2];
      v17 = *v13;
      v46 = v9;
      v18 = v13[3];
      v19 = v9;
      sub_1E673F228(v9, v10, v14, v12);
      sub_1E673F228(v17, v15, v16, v18);
      v20 = sub_1E68B21C0();
      v21 = v10;
      v47 = v10;
      v22 = v20;
      LOBYTE(v112) = 0;
      sub_1E680FFBC(v19, v21, v14 & 1, v12, v45, a2, a3, v140);
      v70 = *&v140[32];
      v71 = *&v140[48];
      v72 = *&v140[64];
      v73 = *&v140[80];
      v68 = *v140;
      v69 = *&v140[16];
      v79 = *&v140[80];
      v76 = *&v140[32];
      v77 = *&v140[48];
      v78 = *&v140[64];
      v74 = *v140;
      v75 = *&v140[16];
      sub_1E67612FC(&v68, &v129, &qword_1ED098DF0);
      sub_1E6744A10(&v74, &qword_1ED098DF0);
      *&v140[87] = v73;
      *&v140[71] = v72;
      *&v140[55] = v71;
      *&v140[39] = v70;
      *&v140[23] = v69;
      *&v140[7] = v68;
      *&v80[49] = *&v140[32];
      *&v80[65] = *&v140[48];
      *&v80[81] = *&v140[64];
      *&v80[96] = *&v140[79];
      *&v80[17] = *v140;
      *v80 = v22;
      v80[16] = v112;
      *&v80[33] = *&v140[16];
      KeyPath = swift_getKeyPath();
      v24 = swift_getKeyPath();
      v140[0] = v16 & 1;
      *&v81 = v17;
      *(&v81 + 1) = v15;
      LOBYTE(v82) = v16 & 1;
      *(&v82 + 1) = v18;
      *&v83 = KeyPath;
      *(&v83 + 1) = 2;
      LOBYTE(v84) = 0;
      *(&v84 + 1) = v24;
      v65 = *&v80[64];
      v66 = *&v80[80];
      v67 = *&v80[96];
      v61 = *v80;
      v62 = *&v80[16];
      v63 = *&v80[32];
      v64 = *&v80[48];
      v102[3] = v84;
      v102[2] = v83;
      v102[0] = v81;
      v102[1] = v82;
      v86 = *v80;
      v87 = *&v80[16];
      v92 = *&v80[96];
      v90 = *&v80[64];
      v91 = *&v80[80];
      v88 = *&v80[32];
      v89 = *&v80[48];
      LOBYTE(v129) = 0;
      v85 = 1;
      v103 = 1;
      v50 = *v80;
      v51 = *&v80[16];
      v54 = *&v80[64];
      v55 = *&v80[80];
      v52 = *&v80[32];
      v53 = *&v80[48];
      v94 = 1;
      v93[2] = v83;
      v93[3] = v84;
      v93[0] = v81;
      v93[1] = v82;
      v56 = *&v80[96];
      v57 = v81;
      v59 = v83;
      v60 = v84;
      v58 = v82;
      *&v95[32] = *&v80[32];
      *&v95[48] = *&v80[48];
      *v95 = *v80;
      *&v95[16] = *&v80[16];
      v97 = v81;
      v96 = *&v80[96];
      *&v95[80] = *&v80[80];
      *&v95[64] = *&v80[64];
      v101 = 1;
      v100 = v84;
      v99 = v83;
      v98 = v82;
      sub_1E673F26C(v17, v15, v16 & 1);

      sub_1E67612FC(v80, v140, &qword_1ED098DF8);
      sub_1E67612FC(&v81, v140, &qword_1ED098DE8);
      sub_1E67612FC(&v86, v140, &qword_1ED098DF8);
      sub_1E67612FC(v93, v140, &qword_1ED098DE8);
      sub_1E6744A10(v102, &qword_1ED098DE8);
      v108 = v65;
      v109 = v66;
      v110 = v67;
      v104 = v61;
      v105 = v62;
      v107 = v64;
      v106 = v63;
      sub_1E6744A10(&v104, &qword_1ED098DF8);
      *v137 = v58;
      *&v137[16] = v59;
      v138 = v60;
      LOBYTE(v139) = 1;
      v133 = v54;
      v134 = v55;
      v135 = v56;
      v136 = v57;
      v129 = v50;
      v130 = v51;
      v131 = v52;
      v132 = v53;
      sub_1E6811A34(&v129);
      v143 = *v137;
      v144 = *&v137[16];
      v145 = v138;
      v146 = v139;
      *&v140[64] = v133;
      *&v140[80] = v134;
      v141 = v135;
      v142 = v136;
      *v140 = v129;
      *&v140[16] = v130;
      *&v140[32] = v131;
      *&v140[48] = v132;
      sub_1E67612FC(v95, &v112, &qword_1ED098E00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098DC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098DD0);
      sub_1E673F530(&qword_1ED098DD8, &qword_1ED098DC8);
      sub_1E673F530(&qword_1ED098DE0, &qword_1ED098DD0);
      sub_1E68B2210();
      sub_1E673F0D4(v46, v47, v14 & 1);

      sub_1E6744A10(v95, &qword_1ED098E00);
      sub_1E673F0D4(v17, v15, v16 & 1);

      sub_1E6744A10(&v81, &qword_1ED098DE8);
      sub_1E6744A10(v80, &qword_1ED098DF8);
      v143 = v120;
      v144 = v121;
      v145 = v122;
      v146 = v123;
      *&v140[64] = v116;
      *&v140[80] = v117;
      v141 = v118;
      v142 = v119;
      *v140 = v112;
      *&v140[16] = v113;
      v25 = v114;
      v26 = v115;
      goto LABEL_10;
    }

    v27 = v7;
    v28 = v9;
    sub_1E673F26C(v9, v10, v11 & 1);

    sub_1E673F0D4(v28, v10, v11 & 1);

    v29 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    v9 = v28;
    v31 = v30;
    v7 = v27;
    v140[0] = v11 & 1;
    LOBYTE(v129) = 0;
    *v80 = v28;
    *&v80[8] = v10;
    v80[16] = v11 & 1;
    *&v80[24] = v12;
    *&v80[32] = v29;
    *&v80[40] = 2;
    v80[48] = 0;
    *&v80[56] = v31;
    v80[64] = 1;
  }

  else
  {
    memset(v80, 0, 65);
  }

  v32 = (a1 + *(v7 + 36));
  v33 = v32[3];
  if (v33)
  {
    v48 = v10;
    v35 = v32[1];
    v34 = v32[2];
    v36 = v11;
    v37 = *v32;
    v38 = v9;
    LOBYTE(v104) = 0;
    *&v129 = v37;
    *(&v129 + 1) = v35;
    LOBYTE(v130) = v34 & 1;
    *(&v130 + 1) = v33;
    *&v131 = swift_getKeyPath();
    *(&v131 + 1) = 2;
    LOBYTE(v132) = 0;
    *(&v132 + 1) = swift_getKeyPath();
    LOBYTE(v133) = 1;
    *&v111[7] = v129;
    v111[71] = 1;
    *&v111[55] = v132;
    *&v111[39] = v131;
    *&v111[23] = v130;
    *v140 = v37;
    *&v140[8] = v35;
    v140[16] = v34 & 1;
    *&v140[24] = v33;
    *&v140[32] = v131;
    *&v140[40] = 2;
    v140[48] = 0;
    *&v140[56] = *(&v132 + 1);
    v140[64] = 1;
    sub_1E673F228(v38, v48, v36, v12);
    sub_1E673F228(v37, v35, v34, v33);
    sub_1E67612FC(&v129, &v112, &qword_1ED098DE8);
    sub_1E6744A10(v140, &qword_1ED098DE8);
    *v95 = 0;
    v95[8] = 0;
    *&v95[25] = *&v111[16];
    *&v95[41] = *&v111[32];
    *&v95[57] = *&v111[48];
    *&v95[73] = *&v111[64];
    *&v95[9] = *v111;
  }

  else
  {
    sub_1E673F228(v9, v10, v11, v12);
    memset(v95, 0, 81);
  }

  v70 = *&v80[32];
  v71 = *&v80[48];
  v68 = *v80;
  v69 = *&v80[16];
  v108 = *&v95[64];
  v107 = *&v95[48];
  v106 = *&v95[32];
  v104 = *v95;
  v105 = *&v95[16];
  v76 = *&v80[32];
  v77 = *&v80[48];
  v127 = *&v80[48];
  v126 = *&v80[32];
  v74 = *v80;
  v75 = *&v80[16];
  v124 = *v80;
  v125 = *&v80[16];
  v86 = *v95;
  v87 = *&v95[16];
  v89 = *&v95[48];
  v90 = *&v95[64];
  v88 = *&v95[32];
  LOBYTE(v72) = v80[64];
  LOBYTE(v109) = v95[80];
  LOBYTE(v78) = v80[64];
  v128[0] = v80[64];
  LOBYTE(v91) = v95[80];
  *&v128[24] = *&v95[16];
  *&v128[8] = *v95;
  v128[88] = v95[80];
  *&v128[72] = *&v95[64];
  *&v128[56] = *&v95[48];
  *&v128[40] = *&v95[32];
  sub_1E67612FC(v80, v140, &qword_1ED098DB8);
  sub_1E67612FC(v95, v140, &qword_1ED098DC0);
  sub_1E67612FC(&v74, v140, &qword_1ED098DB8);
  sub_1E67612FC(&v86, v140, &qword_1ED098DC0);
  sub_1E6744A10(&v104, &qword_1ED098DC0);
  v63 = v70;
  v64 = v71;
  LOBYTE(v65) = v72;
  v61 = v68;
  v62 = v69;
  sub_1E6744A10(&v61, &qword_1ED098DB8);
  v135 = *&v128[32];
  v136 = *&v128[48];
  *v137 = *&v128[64];
  *&v137[9] = *&v128[73];
  v131 = v126;
  v132 = v127;
  v133 = *v128;
  v134 = *&v128[16];
  v129 = v124;
  v130 = v125;
  sub_1E6811A28(&v129);
  v143 = *v137;
  v144 = *&v137[16];
  v145 = v138;
  v146 = v139;
  *&v140[64] = v133;
  *&v140[80] = v134;
  v141 = v135;
  v142 = v136;
  *v140 = v129;
  *&v140[16] = v130;
  *&v140[32] = v131;
  *&v140[48] = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098DD0);
  sub_1E673F530(&qword_1ED098DD8, &qword_1ED098DC8);
  sub_1E673F530(&qword_1ED098DE0, &qword_1ED098DD0);
  sub_1E68B2210();
  sub_1E6744A10(v95, &qword_1ED098DC0);
  sub_1E6744A10(v80, &qword_1ED098DB8);
  v143 = v120;
  v144 = v121;
  v145 = v122;
  v146 = v123;
  *&v140[64] = v116;
  *&v140[80] = v117;
  v141 = v118;
  v142 = v119;
  *v140 = v112;
  *&v140[16] = v113;
  v25 = v114;
  v26 = v115;
LABEL_10:
  *&v140[32] = v25;
  *&v140[48] = v26;
  v39 = v144;
  *(a4 + 128) = v143;
  *(a4 + 144) = v39;
  *(a4 + 160) = v145;
  *(a4 + 176) = v146;
  v40 = *&v140[80];
  *(a4 + 64) = *&v140[64];
  *(a4 + 80) = v40;
  v41 = v142;
  *(a4 + 96) = v141;
  *(a4 + 112) = v41;
  v42 = *&v140[16];
  *a4 = *v140;
  *(a4 + 16) = v42;
  result = *&v140[32];
  v44 = *&v140[48];
  *(a4 + 32) = *&v140[32];
  *(a4 + 48) = v44;
  return result;
}

CGFloat sub_1E680FFBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v43 = a6;
  v44 = a7;
  v47 = a5;
  v41 = a4;
  v42 = a2;
  v12 = sub_1E68B2230();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v45 = swift_getKeyPath();
  a3 &= 1u;
  v49 = a3;
  v48 = 0;
  sub_1E673F26C(a1, a2, a3);

  sub_1E68B2360();
  sub_1E68B1C70();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v15, v12);
  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  MidX = CGRectGetMidX(v50);
  v26 = (v47 + *(type metadata accessor for DynamicBrickView() + 44));
  v27 = MidX - *v26;
  sub_1E68B2360();
  sub_1E68B1C70();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v24(v15, v12);
  v51.origin.x = v29;
  v51.origin.y = v31;
  v51.size.width = v33;
  v51.size.height = v35;
  result = CGRectGetMidY(v51) - v26[1];
  v38 = v41;
  v37 = v42;
  *a8 = a1;
  *(a8 + 8) = v37;
  *(a8 + 16) = a3;
  v39 = KeyPath;
  *(a8 + 24) = v38;
  *(a8 + 32) = v39;
  *(a8 + 40) = 2;
  *(a8 + 48) = 0;
  *(a8 + 56) = v45;
  *(a8 + 64) = 1;
  *(a8 + 72) = v27;
  *(a8 + 80) = result;
  return result;
}

double sub_1E6810204@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B2140();
  v17 = 0;
  sub_1E6810338(a1, &v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v25 = v15;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[0] = v10;
  v24[1] = v11;
  sub_1E67612FC(&v18, &v9, &qword_1ED098DB0);
  sub_1E6744A10(v24, &qword_1ED098DB0);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v16[64];
  v7 = *v16;
  result = *&v16[16];
  *(a2 + 33) = *&v16[16];
  v16[87] = v23;
  v8 = v17;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 97) = *&v16[80];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_1E6810338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DynamicBrickView() + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *&v16 = v4;
  *(&v16 + 1) = v5;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  *&v18 = KeyPath;
  *(&v18 + 1) = 2;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v9;
  v20 = 0;
  LOBYTE(v25) = 0;
  v23 = v18;
  v24 = v19;
  v21 = v16;
  v22 = v17;
  v15[72] = 0;
  v10 = v16;
  v11 = v17;
  v12 = v19;
  v13 = v25;
  *(a2 + 32) = v18;
  *(a2 + 48) = v12;
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v26[0] = v4;
  v26[1] = v5;
  v26[2] = v6;
  v26[3] = v7;
  v26[4] = KeyPath;
  v26[5] = 2;
  v27 = 0;
  v28 = v9;
  v29 = 0;
  sub_1E673F228(v4, v5, v6, v7);
  sub_1E67612FC(&v16, v15, &qword_1ED0981C8);
  return sub_1E6744A10(v26, &qword_1ED0981C8);
}

uint64_t sub_1E6810470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B2140();
  LOBYTE(v25) = 0;
  sub_1E6810338(a1, &v27);
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v22 = v32[0];
  v17 = v27;
  v18 = v28;
  v24 = v32[0];
  v23[2] = v29;
  v23[3] = v30;
  v23[4] = v31;
  v23[0] = v27;
  v23[1] = v28;
  sub_1E67612FC(&v17, v33, &qword_1ED098DB0);
  sub_1E6744A10(v23, &qword_1ED098DB0);
  *&v16[39] = v19;
  *&v16[55] = v20;
  *&v16[71] = v21;
  v16[87] = v22;
  *&v16[7] = v17;
  *&v16[23] = v18;
  v5 = *&v16[80];
  *&v26[81] = *&v16[80];
  v6 = v25;
  v25 = v4;
  v26[0] = v6;
  v7 = *&v16[32];
  v8 = *v16;
  *&v26[1] = *v16;
  *&v26[17] = *&v16[16];
  v9 = *&v16[48];
  *&v26[65] = *&v16[64];
  *&v26[49] = *&v16[48];
  v10 = *&v16[16];
  *&v26[33] = *&v16[32];
  v27 = v4;
  v28 = *v26;
  *&v32[9] = *&v26[73];
  v31 = *&v26[48];
  *v32 = *&v26[64];
  v29 = *&v26[16];
  v30 = *&v26[32];
  v11 = *v26;
  *a2 = v4;
  *(a2 + 16) = v11;
  v12 = *&v32[16];
  *(a2 + 80) = *v32;
  *(a2 + 96) = v12;
  v13 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v13;
  *(a2 + 32) = v29;
  v15[112] = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v33[0] = v4;
  v33[1] = 0;
  v34 = v6;
  v36 = v10;
  v35 = v8;
  v40 = v5;
  v39 = *&v16[64];
  v38 = v9;
  v37 = v7;
  sub_1E67612FC(&v25, v15, &qword_1ED098D98);
  return sub_1E6744A10(v33, &qword_1ED098D98);
}

uint64_t sub_1E6810664@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v6 = sub_1E68B1E40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = *(a1 + 4);
  v14 = *(a1 + 40);
  v15 = *(a1 + 41);
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  sub_1E68B1A40();
  v18 = v17;
  v19 = *(v3 + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1E68B2160();
  (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
  *v5 = v18;
  *(v5 + 1) = v18;
  v27[4] = swift_getWitnessTable();
  v27[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v5);
  v23 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v27[2] = WitnessTable;
  v27[3] = v23;
  v24 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v9, v6, v24);
  v25 = *(v7 + 8);
  v25(v9, v6);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v6, v24);
  return (v25)(v12, v6);
}

uint64_t sub_1E6810A34@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a2;
  v3 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v6 = sub_1E68B1E40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = *(a1 + 4);
  v14 = *(a1 + 40);
  v15 = *(a1 + 41);
  v16 = a1[1];
  v31 = *a1;
  v32 = v16;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v17 = *(v3 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1E68B2160();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  __asm { FMOV            V0.2D, #8.0 }

  *v5 = _Q0;
  v30[4] = swift_getWitnessTable();
  v30[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v5);
  v26 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v30[2] = WitnessTable;
  v30[3] = v26;
  v27 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v9, v6, v27);
  v28 = *(v7 + 8);
  v28(v9, v6);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v6, v27);
  return (v28)(v12, v6);
}

void sub_1E6810E0C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E673ED38();
    if (v1 <= 0x3F)
    {
      sub_1E673ED88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E6810EC8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1E681101C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1E681120C()
{
  result = qword_1ED098CB8;
  if (!qword_1ED098CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CB8);
  }

  return result;
}

unint64_t sub_1E6811264()
{
  result = qword_1ED098CC0;
  if (!qword_1ED098CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CC0);
  }

  return result;
}

unint64_t sub_1E68112BC()
{
  result = qword_1ED098CC8;
  if (!qword_1ED098CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CC8);
  }

  return result;
}

uint64_t sub_1E681132C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DynamicBrickView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = v3 + *(v2 + 36);
  if (*(v4 + 24))
  {
    sub_1E673F0D4(*v4, *(v4 + 8), *(v4 + 16));
  }

  v5 = v3 + *(v2 + 52);
  if (*(v5 + 24))
  {
    sub_1E673F0D4(*v5, *(v5 + 8), *(v5 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E68114B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for DynamicBrickView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1E680E164(a1, v8, v5, v6, a2);
}

unint64_t sub_1E6811550()
{
  result = qword_1ED098CD8;
  if (!qword_1ED098CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8);
    sub_1E673F530(&qword_1ED098CE0, &qword_1ED098CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CD8);
  }

  return result;
}

unint64_t sub_1E6811608()
{
  result = qword_1ED098D08;
  if (!qword_1ED098D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D00);
    sub_1E673F530(&qword_1ED098D10, &qword_1ED098D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D08);
  }

  return result;
}

unint64_t sub_1E68116C0()
{
  result = qword_1ED098D20;
  if (!qword_1ED098D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CF8);
    sub_1E673F530(&qword_1ED098D28, &qword_1ED098D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D20);
  }

  return result;
}

unint64_t sub_1E6811784()
{
  result = qword_1ED098D48;
  if (!qword_1ED098D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D38);
    sub_1E6811810();
    sub_1E68118C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D48);
  }

  return result;
}

unint64_t sub_1E6811810()
{
  result = qword_1ED098D50;
  if (!qword_1ED098D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D58);
    sub_1E673F530(&qword_1ED098D60, &qword_1ED098D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D50);
  }

  return result;
}

unint64_t sub_1E68118C8()
{
  result = qword_1ED098D70;
  if (!qword_1ED098D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D78);
    sub_1E673F530(&qword_1ED098D80, &qword_1ED098D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D70);
  }

  return result;
}

unint64_t sub_1E6811980()
{
  result = qword_1ED098D90;
  if (!qword_1ED098D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D40);
    sub_1E6811608();
    sub_1E68116C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D90);
  }

  return result;
}

uint64_t sub_1E6811A50()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
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

uint64_t sub_1E6811B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6813804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6811B2C(uint64_t a1)
{
  v2 = sub_1E681262C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811B68(uint64_t a1)
{
  v2 = sub_1E681262C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811BA4(uint64_t a1)
{
  v2 = sub_1E6812680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811BE0(uint64_t a1)
{
  v2 = sub_1E6812680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811C1C(uint64_t a1)
{
  v2 = sub_1E6812824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811C58(uint64_t a1)
{
  v2 = sub_1E6812824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811C94(uint64_t a1)
{
  v2 = sub_1E68126D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811CD0(uint64_t a1)
{
  v2 = sub_1E68126D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811D0C(uint64_t a1)
{
  v2 = sub_1E6812728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811D48(uint64_t a1)
{
  v2 = sub_1E6812728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811D84(uint64_t a1)
{
  v2 = sub_1E681277C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811DC0(uint64_t a1)
{
  v2 = sub_1E681277C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811DFC(uint64_t a1)
{
  v2 = sub_1E68127D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811E38(uint64_t a1)
{
  v2 = sub_1E68127D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Bool __swiftcall DynamicSizeClass.shouldOffsetForCarousel(containerSize:)(CGSize containerSize)
{
  v2 = *v1;
  v3 = v2 - 3;
  v4 = v2 >= 2 && containerSize.width > containerSize.height;
  if (v3 >= 3)
  {
    return v4;
  }

  else
  {
    return containerSize.width > containerSize.height;
  }
}

uint64_t DynamicSizeClass.init(canvasWidth:)@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  if (a2 <= 374.0)
  {
    *a1 = 0;
  }

  else if (a2 < 374.0 || a2 > 460.0)
  {
    if (a2 < 461.0 || a2 > 726.0)
    {
      if (a2 < 727.0 || a2 > 981.0)
      {
        if (a2 < 982.0 || a2 > 1194.0)
        {
          if (a2 < 1195.0)
          {
            result = sub_1E68B3910();
            __break(1u);
          }

          else
          {
            *a1 = 5;
          }
        }

        else
        {
          *a1 = 4;
        }
      }

      else
      {
        *a1 = 3;
      }
    }

    else
    {
      *a1 = 2;
    }
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

BOOL sub_1E6812024(double a1, double a2)
{
  v3 = *v2;
  v4 = v3 - 3;
  v5 = v3 >= 2 && a1 > a2;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t DynamicSizeClass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E08);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E10);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E18);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E20);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E28);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E30);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E38);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E681262C();
  sub_1E68B3BD0();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1E6812728();
      v21 = v33;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1E68126D4();
      v21 = v36;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1E6812680();
      v21 = v39;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1E68127D0();
      v21 = v27;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1E681277C();
      v21 = v30;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1E6812824();
  v22 = v42;
  sub_1E68B3A30();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1E681262C()
{
  result = qword_1ED098E40;
  if (!qword_1ED098E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E40);
  }

  return result;
}

unint64_t sub_1E6812680()
{
  result = qword_1ED098E48;
  if (!qword_1ED098E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E48);
  }

  return result;
}

unint64_t sub_1E68126D4()
{
  result = qword_1ED098E50;
  if (!qword_1ED098E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E50);
  }

  return result;
}

unint64_t sub_1E6812728()
{
  result = qword_1ED098E58;
  if (!qword_1ED098E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E58);
  }

  return result;
}

unint64_t sub_1E681277C()
{
  result = qword_1ED098E60;
  if (!qword_1ED098E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E60);
  }

  return result;
}

unint64_t sub_1E68127D0()
{
  result = qword_1ED098E68;
  if (!qword_1ED098E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E68);
  }

  return result;
}

unint64_t sub_1E6812824()
{
  result = qword_1ED098E70;
  if (!qword_1ED098E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E70);
  }

  return result;
}

uint64_t DynamicSizeClass.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E78);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E80);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E88);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E90);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E98);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098EA0);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098EA8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E681262C();
  v22 = v56;
  sub_1E68B3BC0();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1E68B3A10();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1E676F5CC();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1E68B3870();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v36 = &type metadata for DynamicSizeClass;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1E6812728();
          sub_1E68B3970();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1E68126D4();
          sub_1E68B3970();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1E6812680();
          sub_1E68B3970();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1E68127D0();
            v31 = v56;
            sub_1E68B3970();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1E681277C();
            v31 = v51;
            sub_1E68B3970();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1E6812824();
          sub_1E68B3970();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t DynamicSizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E68130D0(void *a1)
{
  a1[1] = sub_1E6813108();
  a1[2] = sub_1E681315C();
  result = sub_1E68131B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1E6813108()
{
  result = qword_1ED098EB0;
  if (!qword_1ED098EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EB0);
  }

  return result;
}

unint64_t sub_1E681315C()
{
  result = qword_1ED098EB8;
  if (!qword_1ED098EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EB8);
  }

  return result;
}

unint64_t sub_1E68131B0()
{
  result = qword_1ED098EC0;
  if (!qword_1ED098EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EC0);
  }

  return result;
}

unint64_t sub_1E6813208()
{
  result = qword_1ED098EC8;
  if (!qword_1ED098EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EC8);
  }

  return result;
}

unint64_t sub_1E68132E0()
{
  result = qword_1ED098ED0;
  if (!qword_1ED098ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098ED0);
  }

  return result;
}

unint64_t sub_1E6813338()
{
  result = qword_1ED098ED8;
  if (!qword_1ED098ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098ED8);
  }

  return result;
}

unint64_t sub_1E6813390()
{
  result = qword_1ED098EE0;
  if (!qword_1ED098EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EE0);
  }

  return result;
}

unint64_t sub_1E68133E8()
{
  result = qword_1ED098EE8;
  if (!qword_1ED098EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EE8);
  }

  return result;
}

unint64_t sub_1E6813440()
{
  result = qword_1ED098EF0;
  if (!qword_1ED098EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EF0);
  }

  return result;
}

unint64_t sub_1E6813498()
{
  result = qword_1ED098EF8;
  if (!qword_1ED098EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EF8);
  }

  return result;
}

unint64_t sub_1E68134F0()
{
  result = qword_1ED098F00;
  if (!qword_1ED098F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F00);
  }

  return result;
}

unint64_t sub_1E6813548()
{
  result = qword_1ED098F08;
  if (!qword_1ED098F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F08);
  }

  return result;
}

unint64_t sub_1E68135A0()
{
  result = qword_1ED098F10;
  if (!qword_1ED098F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F10);
  }

  return result;
}

unint64_t sub_1E68135F8()
{
  result = qword_1ED098F18;
  if (!qword_1ED098F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F18);
  }

  return result;
}

unint64_t sub_1E6813650()
{
  result = qword_1ED098F20;
  if (!qword_1ED098F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F20);
  }

  return result;
}

unint64_t sub_1E68136A8()
{
  result = qword_1ED098F28;
  if (!qword_1ED098F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F28);
  }

  return result;
}

unint64_t sub_1E6813700()
{
  result = qword_1ED098F30;
  if (!qword_1ED098F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F30);
  }

  return result;
}

unint64_t sub_1E6813758()
{
  result = qword_1ED098F38;
  if (!qword_1ED098F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F38);
  }

  return result;
}

unint64_t sub_1E68137B0()
{
  result = qword_1ED098F40;
  if (!qword_1ED098F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F40);
  }

  return result;
}

uint64_t sub_1E6813804(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E68B3B00();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t LazyCanvasItemDescriptor.transformed(with:missingPlaceholders:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v53 = a2;
  v64 = a1;
  v5 = *(a3 + 48);
  v6 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v50 - v7;
  v8 = *(a3 + 32);
  v9 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v50 - v10;
  v11 = *(a3 + 120);
  v12 = *(a3 + 56);
  v69 = *(a3 + 16);
  v70 = v12;
  v71[0] = v69;
  v71[1] = v12;
  *&v72[0] = *(a3 + 72);
  v13 = *&v72[0];
  *(&v72[0] + 1) = v11;
  v14 = type metadata accessor for CanvasItemContent();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v50 - v15;
  v16 = *(a3 + 40);
  v52 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 80);
  v21 = *(a3 + 104);
  v20 = *(a3 + 112);
  v71[0] = v69;
  v62 = v8;
  v63 = v5;
  *&v71[1] = v8;
  *(&v71[1] + 1) = v16;
  *&v72[0] = v5;
  *(v72 + 8) = v70;
  v58 = v13;
  v59 = v11;
  *&v22 = v13;
  v56 = v19;
  *(&v22 + 1) = v19;
  *(&v72[3] + 1) = v21;
  *&v73 = v20;
  v54 = v20;
  *(&v73 + 1) = v11;
  v68 = *(a3 + 88);
  *(&v72[1] + 8) = v22;
  *(&v72[2] + 8) = v68;
  v23 = type metadata accessor for CanvasItemDescriptor();
  v24 = sub_1E68B3750();
  v51 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  *&v71[0] = v16;
  *(v71 + 8) = v68;
  v55 = v21;
  *(&v71[1] + 1) = v21;
  v27 = type metadata accessor for CanvasItemPlaceholder();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v50 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, v66, a3, v32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v23 - 8) + 32))(v67, v34, v23);
  }

  (*(v28 + 32))(v30, v34, v27);
  swift_getWitnessTable();
  sub_1E68B3110();
  v36 = *(v23 - 8);
  if ((*(v36 + 48))(v26, 1, v23) == 1)
  {
    (*(v51 + 8))(v26, v24);
    if (sub_1E68B35E0())
    {
      v37 = &unk_1F5FD7548;
    }

    else
    {
      v37 = &unk_1F5FD7570;
    }

    v66 = sub_1E68140E0(v37);
    (*(v52 + 16))(v65, v30, v16);
    v38 = &v30[*(v27 + 52)];
    v39 = *(v38 + 13);
    v79 = *(v38 + 12);
    v80 = v39;
    v81[0] = *(v38 + 14);
    *(v81 + 9) = *(v38 + 233);
    v40 = *(v38 + 9);
    v75 = *(v38 + 8);
    v76 = v40;
    v41 = *(v38 + 11);
    v77 = *(v38 + 10);
    v78 = v41;
    v42 = *(v38 + 5);
    v72[2] = *(v38 + 4);
    v72[3] = v42;
    v43 = *(v38 + 7);
    v73 = *(v38 + 6);
    v74 = v43;
    v44 = *(v38 + 1);
    v71[0] = *v38;
    v71[1] = v44;
    v45 = *(v38 + 3);
    v72[0] = *(v38 + 2);
    v72[1] = v45;
    v64 = v69;
    *&v69 = *(&v69 + 1);
    v46 = v57;
    LazyCanvasItemContent.transformed<A, B, C>()(v64, *(&v69 + 1), v70, *(&v70 + 1), v58, v59, v57);
    (*(v28 + 8))(v30, v27);
    v47 = v60;
    (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
    v48 = v61;
    (*(*(v63 - 8) + 56))(v61, 1, 1, v63);
    return CanvasItemDescriptor.init(identifier:content:contextMenu:metrics:redactionReasons:)(v65, v46, v47, v48, v66, v67, v16);
  }

  else
  {
    (*(v28 + 8))(v30, v27);
    return (*(v36 + 32))(v67, v26, v23);
  }
}

uint64_t sub_1E68140E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F48);
    v3 = sub_1E68B37F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1E68B3B70();
      MEMORY[0x1E69523D0](v10);
      result = sub_1E68B3BB0();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E681421C()
{
  v0 = sub_1E68B1AE0();
  __swift_allocate_value_buffer(v0, qword_1EE2F8440);
  __swift_project_value_buffer(v0, qword_1EE2F8440);
  return sub_1E68B1AD0();
}

uint64_t sub_1E6814294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v93 = a3;
  v89 = a2;
  v113 = a5;
  v106 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v105 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v83 - v15;
  v16 = sub_1E68B3000();
  v100 = *(v16 - 8);
  v101 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E68B2F90();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v96 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a7;
  v20 = sub_1E68B3750();
  v86 = *(v20 - 8);
  v87 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v83 - v21;
  v22 = sub_1E68B2FB0();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v91 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F50);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v94 = &v83 - v25;
  v116 = a4;
  v117 = a10;
  v112 = a10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v97 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v83 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v95 = &v83 - v31;
  v32 = sub_1E68B3750();
  v102 = *(v32 - 8);
  v103 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v83 - v33;
  v35 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = OpaqueTypeMetadata2;
  v107 = a4;
  v39 = sub_1E68B2220();
  v109 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v108 = &v83 - v41;
  (*(a12 + 176))(a9, v40);
  if (v35[6](v34, 1, a6) == 1)
  {
    (*(v102 + 8))(v34, v103);
LABEL_5:
    v43 = v112;
    v44 = v107;
    v45 = v108;
    v46 = v104;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v111, v107, v112);
    v47 = v105;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v46, v44, v43);
    v116 = v44;
    v117 = v43;
    swift_getOpaqueTypeConformance2();
    sub_1E6744DB8(v47, v110, v44);
    v48 = *(v106 + 8);
    v48(v47, v44);
    v48(v46, v44);
    goto LABEL_6;
  }

  v35[4](v38, v34, a6);
  v42 = *((*(a12 + 184))(a9, a12) + 16);

  if (v42)
  {
    (v35[1])(v38, a6);
    goto LABEL_5;
  }

  v105 = v35;
  v106 = v39;
  v52 = v86;
  v51 = v87;
  v53 = v88;
  (*(v86 + 16))(v88, v89, v87);
  v54 = v90;
  v55 = *(v90 - 8);
  if ((*(v55 + 48))(v53, 1, v90) == 1)
  {
    (*(v52 + 8))(v53, v51);
  }

  else
  {
    (*(a11 + 32))(v54);
    (*(v55 + 8))(v53, v54);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = *(AssociatedConformanceWitness + 32);
  v85 = v38;
  v57(a6, AssociatedConformanceWitness);
  v58 = v93;
  sub_1E68B2FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F58);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_1E68BFB70;
  *(inited + 40) = 0xE400000000000000;
  v60 = (*(AssociatedConformanceWitness + 56))(a6, AssociatedConformanceWitness);
  v62 = v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F68);
  *(inited + 48) = v60;
  *(inited + 56) = v62;
  *(inited + 72) = v63;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  v64 = (*(AssociatedConformanceWitness + 48))(a6, AssociatedConformanceWitness);
  v65 = MEMORY[0x1E69E6158];
  *(inited + 96) = v64;
  *(inited + 104) = v66;
  *(inited + 120) = v65;
  *(inited + 128) = 0x6973736572706D69;
  v67 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v58;
  *(inited + 168) = v67;
  *(inited + 176) = 0x657079546469;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = (*(AssociatedConformanceWitness + 40))(a6, AssociatedConformanceWitness);
  *(inited + 200) = v68;
  *(inited + 216) = v65;
  *(inited + 224) = 0x54746E65746E6F63;
  *(inited + 232) = 0xEB00000000657079;
  v69 = *(AssociatedConformanceWitness + 64);
  v84 = a6;
  *(inited + 240) = v69(a6, AssociatedConformanceWitness);
  *(inited + 248) = v70;
  *(inited + 264) = v65;
  *(inited + 272) = 0xD000000000000013;
  *(inited + 280) = 0x80000001E68E2C60;
  v71 = (*(AssociatedConformanceWitness + 72))(a6, AssociatedConformanceWitness);
  *(inited + 312) = v65;
  *(inited + 288) = v71;
  *(inited + 296) = v72;
  sub_1E67FA778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098928);
  swift_arrayDestroy();
  sub_1E68B2F80();
  v73 = MEMORY[0x1E69E7CC0];
  sub_1E67FA778(MEMORY[0x1E69E7CC0]);
  sub_1E67FA778(v73);
  v74 = v94;
  sub_1E68B2FC0();
  v75 = sub_1E68B2FD0();
  (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
  v76 = v99;
  sub_1E68B2FE0();
  v77 = v92;
  v44 = v107;
  v43 = v112;
  sub_1E68B2710();
  (*(v100 + 8))(v76, v101);
  sub_1E6744A10(v74, &qword_1ED098F50);
  v116 = v44;
  v117 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = v95;
  v80 = v110;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v77, v110, OpaqueTypeConformance2);
  v81 = *(v98 + 8);
  v81(v77, v80);
  v82 = v97;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v79, v80, OpaqueTypeConformance2);
  v45 = v108;
  sub_1E6744CC0(v82, v80);
  v81(v82, v80);
  v81(v79, v80);
  v105[1](v85, v84);
  v39 = v106;
LABEL_6:
  v116 = v44;
  v117 = v43;
  v114 = swift_getOpaqueTypeConformance2();
  v115 = v43;
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v45, v39, WitnessTable);
  return (*(v109 + 8))(v45, v39);
}

uint64_t sub_1E6814ED8@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v91 = a2;
  v89 = a1;
  v96 = a4;
  v97 = a9;
  v78 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v77 = (&v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v74 - v14;
  v15 = sub_1E68B3000();
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E68B2F90();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E68B2FB0();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v79 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F50);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v80 = &v74 - v22;
  v100 = v11;
  v101 = a10;
  v95 = a10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v85 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v74 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v84 = &v74 - v28;
  v29 = sub_1E68B3750();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v74 - v31;
  v33 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v90 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E68B2220();
  v92 = *(v36 - 8);
  v93 = v36;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v74 - v38;
  v40 = *(a11 + 192);
  v89 = a11;
  v40(v97, v37);
  if ((v33[6])(v32, 1, a5) == 1)
  {
    (*(v30 + 8))(v32, v29);
    v41 = v76;
    v42 = v95;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v94, v11, v95);
    v43 = v77;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v41, v11, v42);
    v100 = v11;
    v101 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1E6744DB8(v43, OpaqueTypeMetadata2, v11);
    v44 = *(v78 + 8);
    v44(v43, v11);
    v44(v41, v11);
  }

  else
  {
    v75 = v11;
    v76 = v39;
    v77 = v33;
    v78 = OpaqueTypeMetadata2;
    (v33[4])(v90, v32, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E68BFB80;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v47 = (*(AssociatedConformanceWitness + 64))(a5, AssociatedConformanceWitness);
    v48 = MEMORY[0x1E69E6158];
    *(inited + 48) = v47;
    *(inited + 56) = v49;
    *(inited + 72) = v48;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    v50 = *(AssociatedConformanceWitness + 48);
    v74 = AssociatedConformanceWitness + 48;
    v89 = v50;
    *(inited + 96) = v50(a5, AssociatedConformanceWitness);
    *(inited + 104) = v51;
    *(inited + 120) = v48;
    *(inited + 128) = 0x6973736572706D69;
    v52 = MEMORY[0x1E69E6530];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = v91;
    *(inited + 168) = v52;
    *(inited + 176) = 0x657079546469;
    *(inited + 184) = 0xE600000000000000;
    v53 = (*(AssociatedConformanceWitness + 40))(a5, AssociatedConformanceWitness);
    *(inited + 216) = v48;
    *(inited + 192) = v53;
    *(inited + 200) = v54;
    v55 = sub_1E67FA778(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098928);
    swift_arrayDestroy();
    v56 = (*(AssociatedConformanceWitness + 56))(a5, AssociatedConformanceWitness);
    v57 = sub_1E68159A8(v56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v55;
    sub_1E6815DAC(v57, sub_1E6815C00, 0, isUniquelyReferenced_nonNull_native, &v100);

    (*(AssociatedConformanceWitness + 32))(a5, AssociatedConformanceWitness);
    sub_1E68B2FA0();
    sub_1E68B2F80();
    v59 = MEMORY[0x1E69E7CC0];
    sub_1E67FA778(MEMORY[0x1E69E7CC0]);
    sub_1E67FA778(v59);
    v60 = v80;
    sub_1E68B2FC0();
    v61 = sub_1E68B2FD0();
    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    v62 = v83;
    sub_1E68B2FF0();
    v97 = a5;
    v64 = v62;
    if (v89(a5, AssociatedConformanceWitness) == 0x666C656873 && v63 == 0xE500000000000000)
    {
    }

    else
    {
      sub_1E68B3B00();
    }

    v42 = v95;
    v65 = v78;
    v66 = v82;
    v11 = v75;
    sub_1E68B2710();
    (*(v87 + 8))(v64, v88);
    sub_1E6744A10(v60, &qword_1ED098F50);
    v100 = v11;
    v101 = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = v84;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v66, v65, OpaqueTypeConformance2);
    v69 = *(v86 + 8);
    v69(v66, v65);
    v70 = v85;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v68, v65, OpaqueTypeConformance2);
    v39 = v76;
    sub_1E6744CC0(v70, v65);
    v69(v70, v65);
    v69(v68, v65);
    v77[1](v90, v97);
  }

  v100 = v11;
  v101 = v42;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v42;
  v71 = v93;
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v39, v71, WitnessTable);
  return (*(v92 + 8))(v39, v71);
}

unint64_t sub_1E68159A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098920);
    v2 = sub_1E68B3940();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1E67FCA14(&v22, v24);
        sub_1E67FCA14(v24, v25);
        sub_1E67FCA14(v25, &v23);
        result = sub_1E680B790(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1E67FCA14(&v23, v11);
          v8 = v12;
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1E67FCA14(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

uint64_t sub_1E6815C00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1E680B940((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1E6815C4C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E680B940(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1E67FCA14(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1E6744A10(v21, &qword_1ED098F60);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1E6815DAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1E6815C4C(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1E67FCA14(v44, v42);
  v14 = *a5;
  result = sub_1E680B790(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1E680BF10(v20, a4 & 1);
    result = sub_1E680B790(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E68B3B20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1E680C730();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1E67FCA14(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1E67FCA14(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1E6815C4C(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1E67FCA14(v44, v42);
        v32 = *a5;
        result = sub_1E680B790(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1E680BF10(v36, 1);
          result = sub_1E680B790(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_1E67FCA14(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1E67FCA14(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1E6815C4C(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1E68160BC();
  }

LABEL_27:
  __break(1u);
  return result;
}

void CanvasColor.init(red:green:blue:alpha:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a5;
  a1[1] = a4;
  a1[2] = a3;
  a1[3] = a2;
}

uint64_t sub_1E6816100()
{
  v1 = 0x6168706C61;
  v2 = 0x6E65657267;
  if (*v0 != 2)
  {
    v2 = 6579570;
  }

  if (*v0)
  {
    v1 = 1702194274;
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

uint64_t sub_1E6816164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68169E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E681618C(uint64_t a1)
{
  v2 = sub_1E6816814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68161C8(uint64_t a1)
{
  v2 = sub_1E6816814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasColor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6816814();
  sub_1E68B3BD0();
  v14 = v9;
  HIBYTE(v13) = 0;
  sub_1E67621E8();
  sub_1E68B3AB0();
  if (!v2)
  {
    v14 = v8;
    HIBYTE(v13) = 1;
    sub_1E68B3AB0();
    v14 = v11;
    HIBYTE(v13) = 2;
    sub_1E68B3AB0();
    v14 = v10;
    HIBYTE(v13) = 3;
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CanvasColor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6816814();
  sub_1E68B3BC0();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_1E6762A60();
    sub_1E68B3A00();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_1E68B3A00();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_1E68B3A00();
    v12 = v15;
    HIBYTE(v14) = 3;
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CanvasColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E69523F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E69523F0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1E69523F0](*&v7);
}

uint64_t CanvasColor.hashValue.getter()
{
  sub_1E68B3B70();
  CanvasColor.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E681677C()
{
  sub_1E68B3B70();
  CanvasColor.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E68167CC()
{
  sub_1E68B3B70();
  CanvasColor.hash(into:)();
  return sub_1E68B3BB0();
}

unint64_t sub_1E6816814()
{
  result = qword_1ED098F78;
  if (!qword_1ED098F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F78);
  }

  return result;
}

unint64_t sub_1E681686C()
{
  result = qword_1ED098F88;
  if (!qword_1ED098F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F88);
  }

  return result;
}

unint64_t sub_1E68168E4()
{
  result = qword_1ED098F90;
  if (!qword_1ED098F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F90);
  }

  return result;
}

unint64_t sub_1E681693C()
{
  result = qword_1ED098F98;
  if (!qword_1ED098F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F98);
  }

  return result;
}

unint64_t sub_1E6816994()
{
  result = qword_1ED098FA0[0];
  if (!qword_1ED098FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED098FA0);
  }

  return result;
}

uint64_t sub_1E68169E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6579570 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t OrthogonalView.init(header:items:footer:metrics:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, uint64_t a37, __int128 a38, __int128 a39, uint64_t a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, uint64_t a47, uint64_t a48)
{
  v87 = *a3;
  v95 = *a6;
  v50 = a6[1];
  v94 = a6[2];
  v101 = a31;
  v102 = a32;
  v103 = a33;
  v104 = a34;
  v105 = a35;
  v106 = a36;
  v107 = a37;
  v108 = a38;
  v109 = a39;
  v110 = a40;
  v111 = a41;
  v112 = a42;
  v113 = a43;
  v114 = a44;
  v115 = a45;
  v116 = a46;
  v117 = a47;
  v118 = a48;
  v51 = type metadata accessor for OrthogonalView();
  v96 = (a9 + v51[77]);
  swift_getFunctionTypeMetadata1();
  v52 = sub_1E68B3750();
  v119 = 0;
  v120 = 0;
  v85 = a5[1];
  v86 = *a5;
  sub_1E672890C(&v119, v52, &v101);
  v93 = v101;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v101 = a31;
  *(&v101 + 1) = a39;
  v102 = AssociatedConformanceWitness;
  v103 = *(&a45 + 1);
  type metadata accessor for CanvasSectionHeader();
  v91 = sub_1E68B3750();
  v92 = *(v91 - 8);
  (*(v92 + 16))(a9, a1, v91);
  *(a9 + v51[61]) = a2;
  *(a9 + v51[62]) = v87;
  v54 = v51[63];
  v88 = sub_1E68B3750();
  v90 = *(v88 - 8);
  (*(v90 + 16))(a9 + v54, a4, v88);
  v55 = v51[68];
  v119 = a10;
  v120 = a11;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v119, FunctionTypeMetadata1, &v101);
  *(a9 + v55) = v101;
  v57 = v51[69];
  v119 = a12;
  v120 = a13;
  v58 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v119, v58, &v101);
  *(a9 + v57) = v101;
  v59 = v51[70];
  v119 = a14;
  v120 = a15;
  v60 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v119, v60, &v101);
  *(a9 + v59) = v101;
  v83 = (a9 + v51[74]);

  *v83 = sub_1E6817680(a20, a21, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *(&a36 + 1), a37, a38, a39, a40, a41, *(&a41 + 1), a42, a43, a44, a45, a46, a47, a48);
  v83[1] = v61;
  v84 = (a9 + v51[71]);

  *&v82[40] = a40;
  *&v82[24] = a39;
  *v82 = a37;
  *&v82[8] = a38;
  *v84 = sub_1E6817468(a16, a17, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *v82, *&v82[16], *&v82[32], a41, a42, a43, a44, a45, a46, a47, a48);
  v84[1] = v62;
  v63 = (a9 + v51[64]);
  *v63 = v86;
  v63[1] = v85;
  v64 = v51[72];
  v119 = a18;
  v120 = a19;
  v65 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v119, v65, &v101);
  *(a9 + v64) = v101;
  v66 = v51[73];
  v119 = a22;
  v120 = a23;
  v67 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v119, v67, &v101);
  *(a9 + v66) = v101;
  v68 = (a9 + v51[65]);
  *v68 = v95;
  v68[1] = v50;
  v68[2] = v94;
  *(a9 + v51[66]) = a7;
  v69 = *(a41 - 8);
  (*(v69 + 16))(a9 + v51[67], a8, a41);
  v70 = sub_1E681799C(a28, a29, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *(&a36 + 1), a37, a38, *(&a38 + 1), a39, *(&a39 + 1), a40, a41, *(&a41 + 1), a42, *(&a42 + 1), a43, *(&a43 + 1), a44, *(&a44 + 1), a45, *(&a45 + 1), a46, *(&a46 + 1), a47, a48);
  v72 = v71;

  (*(v69 + 8))(a8, a41);
  (*(v90 + 8))(a4, v88);
  (*(v92 + 8))(a1, v91);
  sub_1E672E440(v93);
  *v96 = v70;
  v96[1] = v72;
  if (a24)
  {
    v73 = swift_allocObject();
    *(v73 + 16) = a24;
    *(v73 + 24) = a25;
    v74 = sub_1E67E403C;
  }

  else
  {
    v74 = 0;
    v73 = 0;
  }

  v75 = (a9 + v51[75]);
  *v75 = v74;
  v75[1] = v73;
  if (a26)
  {
    v76 = swift_allocObject();
    *(v76 + 16) = a26;
    *(v76 + 24) = a27;
    v77 = sub_1E67E3FAC;
  }

  else
  {
    v77 = 0;
    v76 = 0;
  }

  v78 = (a9 + v51[76]);
  *v78 = v77;
  v78[1] = v76;
  v79 = v51[78];
  v80 = sub_1E68B1950();
  return (*(*(v80 - 8) + 32))(a9 + v79, a30, v80);
}

uint64_t sub_1E6817468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  *(v28 + 32) = a5;
  *(v28 + 40) = a6;
  *(v28 + 48) = a7;
  *(v28 + 56) = a8;
  *(v28 + 64) = a9;
  *(v28 + 80) = a10;
  *(v28 + 96) = a11;
  *(v28 + 112) = a12;
  *(v28 + 128) = a13;
  *(v28 + 144) = a14;
  *(v28 + 160) = a15;
  *(v28 + 176) = a16;
  *(v28 + 192) = a17;
  *(v28 + 208) = a18;
  *(v28 + 224) = a19;
  *(v28 + 232) = a20;
  *(v28 + 240) = a1;
  *(v28 + 248) = a2;
  v31[0] = sub_1E68246BC;
  v31[1] = v28;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208);
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v31, FunctionTypeMetadata2, &v32);
  return v32;
}

uint64_t (*sub_1E68175D4(uint64_t a1))(uint64_t a1, uint64_t a2, char a3)
{
  v3 = (v1 + *(a1 + 284));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E67D41E8;
}

uint64_t sub_1E6817680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23)
{
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  *(v27 + 48) = a7;
  *(v27 + 56) = a8;
  *(v27 + 64) = a9;
  *(v27 + 72) = a10;
  *(v27 + 80) = a11;
  *(v27 + 88) = a12;
  *(v27 + 104) = a13;
  *(v27 + 120) = a14;
  *(v27 + 128) = a15;
  *(v27 + 136) = a16;
  *(v27 + 144) = a17;
  *(v27 + 160) = a18;
  *(v27 + 176) = a19;
  *(v27 + 192) = a20;
  *(v27 + 208) = a21;
  *(v27 + 224) = a22;
  *(v27 + 232) = a23;
  *(v27 + 240) = a1;
  *(v27 + 248) = a2;
  v34[0] = sub_1E68246F0;
  v34[1] = v27;
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v34, FunctionTypeMetadata2, &v35);
  return v35;
}

uint64_t (*sub_1E68177E8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = (v1 + *(a1 + 296));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E67D5458;
}

uint64_t (*sub_1E6817894(uint64_t a1))()
{
  v2 = (v1 + *(a1 + 300));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E67D5680;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3);
  return v6;
}

uint64_t (*sub_1E6817918(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 304));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E67D5450;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3);
  return v6;
}

uint64_t sub_1E681799C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a1)
  {
    v30 = a1;
    a1 = swift_allocObject();
    a1[2] = a3;
    a1[3] = a4;
    a1[4] = a5;
    a1[5] = a6;
    a1[6] = a7;
    a1[7] = a8;
    a1[8] = a9;
    a1[9] = a10;
    a1[10] = a11;
    a1[11] = a12;
    a1[12] = a13;
    a1[13] = a14;
    a1[14] = a15;
    a1[15] = a16;
    a1[16] = a17;
    a1[17] = a18;
    a1[18] = a19;
    a1[19] = a20;
    a1[20] = a21;
    a1[21] = a22;
    a1[22] = a23;
    a1[23] = a24;
    a1[24] = a25;
    a1[25] = a26;
    a1[26] = a27;
    a1[27] = a28;
    a1[28] = a29;
    a1[29] = a30;
    a1[30] = v30;
    a1[31] = a2;
    v37 = sub_1E682471C;
  }

  else
  {
    v37 = 0;
  }

  v41[0] = v37;
  v41[1] = a1;
  swift_getFunctionTypeMetadata1();
  v38 = sub_1E68B3750();
  sub_1E672890C(v41, v38, &v42);
  return v42;
}

uint64_t (*sub_1E6817B74(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 308));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v6 = swift_allocObject();
    v7 = *(a1 + 32);
    *(v6 + 16) = *(a1 + 16);
    *(v6 + 32) = v7;
    v8 = *(a1 + 64);
    *(v6 + 48) = *(a1 + 48);
    *(v6 + 64) = v8;
    v9 = *(a1 + 96);
    *(v6 + 80) = *(a1 + 80);
    *(v6 + 96) = v9;
    v10 = *(a1 + 128);
    *(v6 + 112) = *(a1 + 112);
    *(v6 + 128) = v10;
    v11 = *(a1 + 160);
    *(v6 + 144) = *(a1 + 144);
    *(v6 + 160) = v11;
    v12 = *(a1 + 192);
    *(v6 + 176) = *(a1 + 176);
    *(v6 + 192) = v12;
    v13 = *(a1 + 224);
    *(v6 + 208) = *(a1 + 208);
    *(v6 + 224) = v13;
    *(v6 + 240) = v3;
    *(v6 + 248) = v4;
    v14 = sub_1E67D54BC;
  }

  else
  {
    v14 = 0;
  }

  sub_1E6739D68(v3);
  return v14;
}

uint64_t sub_1E6817C34(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 232);
  v7 = *(a1 + 136);
  v6 = *(a1 + 144);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89 = v3;
  v90 = v4;
  v92 = v3;
  v93 = v4;
  v87 = swift_getAssociatedConformanceWitness();
  v88 = v7;
  v94 = v7;
  v95 = AssociatedConformanceWitness;
  v96 = v87;
  v97 = swift_getAssociatedConformanceWitness();
  v91 = type metadata accessor for CanvasItemContent();
  MEMORY[0x1EEE9AC00](v91);
  v10 = &v87 - v9;
  v11 = sub_1E68B3750();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v87 - v13;
  v15 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v1 + *(a1 + 244));
  sub_1E68B33B0();
  swift_getWitnessTable();
  sub_1E68B36C0();
  if ((*(v15 + 48))(v14, 1, v6) != 1)
  {
    (*(v15 + 32))(v18, v14, v6);
    (*(v5 + 160))(v6, v5);
    (*(v15 + 8))(v18, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v10;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v26 = type metadata accessor for FullWidthItemDescriptor();
        goto LABEL_19;
      case 2:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
        v49 = v90;
        v92 = &type metadata for FullWidthStageViewLayout;
        v93 = v90;
        v94 = &type metadata for FullWidthStageViewStyle;
        v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v96 = v95;
        v97 = v95;
        v98 = sub_1E68B3750();
        v99 = v98;
        v100 = sub_1E68B3750();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v91 = TupleTypeMetadata[12];
        v51 = TupleTypeMetadata[20];
        v52 = TupleTypeMetadata[24];
        v53 = TupleTypeMetadata[28];
        v54 = TupleTypeMetadata[32];
        v55 = TupleTypeMetadata[36];
        v56 = TupleTypeMetadata[40];
        v57 = sub_1E68B3750();
        (*(*(v57 - 8) + 8))(&v21[v56], v57);
        v58 = sub_1E68B3750();
        v59 = *(*(v58 - 8) + 8);
        v59(&v21[v55], v58);
        v59(&v21[v54], v58);
        sub_1E6744A10(&v21[v53], &qword_1ED096E68);
        sub_1E6744A10(&v21[v52], &qword_1ED096E68);
        sub_1E6744A10(&v21[v51], &qword_1ED096E68);
        (*(v49[-1].Description + 1))(&v21[v91], v49);
        return 0;
      case 3:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 48, "layout title description actionButton ");
        v92 = &type metadata for InfoActionCardViewLayout;
        v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v94 = v93;
        v95 = sub_1E68B3750();
        v63 = swift_getTupleTypeMetadata();
        v64 = v63[12];
        v65 = v63[16];
        v66 = v63[20];
        v67 = sub_1E68B3750();
        (*(*(v67 - 8) + 8))(&v10[v66], v67);
        sub_1E6744A10(&v10[v65], &qword_1ED096E68);
        sub_1E6744A10(&v10[v64], &qword_1ED096E68);
        return 0;
      case 4:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 48, "artwork footnote subtitle title ");
        v22 = v90;
        v92 = v90;
        v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v94 = v93;
        v95 = v93;
        v33 = swift_getTupleTypeMetadata();
        v24 = v33[12];
        v34 = v33[16];
        sub_1E6744A10(&v10[v33[20]], &qword_1ED096E68);
        v25 = &v10[v34];
        goto LABEL_10;
      case 5:
      case 7:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 48, "artwork caption displayStyle layout title ");
        v22 = v90;
        v92 = v90;
        v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v94 = &type metadata for DynamicBrickDisplayStyle;
        v95 = &type metadata for DynamicBrickViewLayout;
        v96 = v93;
        v23 = swift_getTupleTypeMetadata();
        v24 = *(v23 + 48);
        v25 = &v10[*(v23 + 96)];
LABEL_10:
        sub_1E6744A10(v25, &qword_1ED096E68);
        sub_1E6744A10(&v10[v24], &qword_1ED096E68);
        (*(v22[-1].Description + 1))(v10, v22);
        return 0;
      case 6:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 48, "layout artwork title subtitle ");
        v35 = v90;
        v92 = &type metadata for MonogramVerticalStackViewLayout;
        v93 = v90;
        v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v95 = v94;
        v75 = swift_getTupleTypeMetadata();
        v37 = v75[12];
        v76 = v75[16];
        sub_1E6744A10(&v10[v75[20]], &qword_1ED096E68);
        v38 = &v10[v76];
        goto LABEL_22;
      case 8:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 48, "layout artwork title subtitle caption ");
        v74 = &type metadata for StandardCardViewLayout;
        goto LABEL_26;
      case 9:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
        v39 = v90;
        v92 = &type metadata for StandardHorizontalStackViewLayout;
        v93 = v90;
        v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v95 = v94;
        v96 = v94;
        v97 = v94;
        v98 = sub_1E68B3750();
        v40 = swift_getTupleTypeMetadata();
        v41 = v40[12];
        v42 = v40[16];
        v43 = v40[20];
        v44 = v40[24];
        v45 = v40[28];
        v46 = v40[32];
        v47 = sub_1E68B3750();
        (*(*(v47 - 8) + 8))(&v21[v46], v47);
        sub_1E6744A10(&v21[v45], &qword_1ED096E68);
        v48 = &v21[v44];
        goto LABEL_17;
      case 10:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 48, "layout artwork title subtitle caption ");
        v77 = v90;
        v92 = &type metadata for StandardVerticalStackViewLayout;
        v93 = v90;
        v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v95 = v94;
        v96 = v94;
        v78 = swift_getTupleTypeMetadata();
        v79 = v78[12];
        v80 = v78[16];
        v81 = v78[20];
        sub_1E6744A10(&v10[v78[24]], &qword_1ED096E68);
        sub_1E6744A10(&v10[v81], &qword_1ED096E68);
        sub_1E6744A10(&v10[v80], &qword_1ED096E68);
        (*(v77[-1].Description + 1))(&v10[v79], v77);
        return 1;
      case 11:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
        v27 = v90;
        v92 = &type metadata for SummaryCardViewLayout;
        v93 = v90;
        v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v95 = v94;
        v96 = v94;
        v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88);
        v28 = swift_getTupleTypeMetadata();
        v29 = v28[12];
        v30 = v28[16];
        v31 = v28[20];
        v32 = v28[24];
        sub_1E6744A10(&v21[v28[28]], &qword_1ED096E88);
        sub_1E6744A10(&v21[v32], &qword_1ED096E68);
        sub_1E6744A10(&v21[v31], &qword_1ED096E68);
        sub_1E6744A10(&v21[v30], &qword_1ED096E68);
        (*(v27[-1].Description + 1))(&v21[v29], v27);
        return 1;
      case 12:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 48, "layout artwork title overlay ");
        v35 = v90;
        v92 = &type metadata for TallCardViewLayout;
        v93 = v90;
        v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v95 = &type metadata for Overlay;
        v36 = swift_getTupleTypeMetadata();
        v37 = *(v36 + 48);
        v38 = &v10[*(v36 + 64)];
LABEL_22:
        sub_1E6744A10(v38, &qword_1ED096E68);
        (*(v35[-1].Description + 1))(&v10[v37], v35);
        return 1;
      case 13:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 48, "layout artwork title subtitle caption ");
        v74 = &type metadata for VerticalStackCardLayout;
LABEL_26:
        v82 = v90;
        v92 = v74;
        v93 = v90;
        v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v95 = v94;
        v96 = v94;
        v83 = swift_getTupleTypeMetadata();
        v84 = v83[12];
        v85 = v83[16];
        v86 = v83[20];
        sub_1E6744A10(&v10[v83[24]], &qword_1ED096E68);
        sub_1E6744A10(&v10[v86], &qword_1ED096E68);
        sub_1E6744A10(&v10[v85], &qword_1ED096E68);
        (*(v82[-1].Description + 1))(&v10[v84], v82);
        return 0;
      case 14:
        v26 = v88;
LABEL_19:
        (*(*(v26 - 8) + 8))(v10);
        return 0;
      case 15:
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v60 = v90;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v62 = *(TupleTypeMetadata3 + 48);
        sub_1E6744A10(&v10[*(TupleTypeMetadata3 + 64)], &qword_1ED096E68);
        sub_1E6744A10(&v10[v62], &qword_1ED096E68);
        (*(v60[-1].Description + 1))(v10, v60);
        return 0;
      default:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v87 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
        v39 = v90;
        v92 = &type metadata for ActionCardViewLayout;
        v93 = v90;
        v94 = &type metadata for ActionCardViewStyle;
        v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        v96 = v95;
        v68 = v89;
        v97 = v95;
        v98 = v89;
        v99 = sub_1E68B3750();
        v69 = swift_getTupleTypeMetadata();
        v41 = v69[12];
        v42 = v69[20];
        v43 = v69[24];
        v70 = v69[28];
        v71 = v69[32];
        v72 = v69[36];
        v73 = sub_1E68B3750();
        (*(*(v73 - 8) + 8))(&v21[v72], v73);
        (*(*(v68 - 8) + 8))(&v21[v71], v68);
        v48 = &v21[v70];
LABEL_17:
        sub_1E6744A10(v48, &qword_1ED096E68);
        sub_1E6744A10(&v21[v43], &qword_1ED096E68);
        sub_1E6744A10(&v21[v42], &qword_1ED096E68);
        (*(v39[-1].Description + 1))(&v21[v41], v39);
        return 0;
    }
  }

  (*(v12 + 8))(v14, v11);
  return 0;
}

uint64_t OrthogonalView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v191 = sub_1E68B2300();
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v189 = v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v177 = &v281;
  v4 = a1[3];
  v186 = a1[14];
  v280 = v4;
  *&v281 = v186;
  v5 = a1[19];
  v187 = a1[26];
  v6 = a1;
  *(&v281 + 1) = v5;
  v282 = v187;
  v183 = type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  v184 = sub_1E68B1E40();
  v185 = sub_1E68B2220();
  v181 = sub_1E68B3750();
  v198 = a1[18];
  swift_getTupleTypeMetadata2();
  v7 = sub_1E68B33B0();
  v201 = a1[29];
  v175 = *(v201 + 32);
  v176 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a1[20];
  v280 = a1[5];
  *&v281 = v4;
  v196 = v280;
  *(&v281 + 1) = v4;
  v282 = v8;
  v9 = v8;
  v197 = v8;
  *&v283 = v5;
  *(&v283 + 1) = v5;
  v10 = type metadata accessor for ActionCardView();
  v172 = v10;
  WitnessTable = swift_getWitnessTable();
  v280 = v10;
  *&v281 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v170 = sub_1E68B2440();
  sub_1E68B1E40();
  v11 = sub_1E68B1E40();
  *&v193 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v292 = v9;
  v293 = v193;
  v12 = MEMORY[0x1E697E858];
  v13 = swift_getWitnessTable();
  v290 = v13;
  v291 = MEMORY[0x1E697F568];
  v202 = v12;
  v168 = v11;
  v167 = swift_getWitnessTable();
  v280 = v11;
  *&v281 = v167;
  v155 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v14 = sub_1E68B1E40();
  v160 = v14;
  v288 = v13;
  v289 = MEMORY[0x1E697E040];
  v159 = swift_getWitnessTable();
  v280 = v14;
  *&v281 = v159;
  swift_getOpaqueTypeMetadata2();
  v161 = sub_1E68B2220();
  v163 = sub_1E68B2B90();
  v162 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v166 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v169 = sub_1E68B2220();
  v150 = sub_1E68B2220();
  v195 = v6[10];
  v180 = v6[16];
  v182 = v6[28];
  v15 = v196;
  v280 = v196;
  *&v281 = v4;
  *(&v281 + 1) = v4;
  v282 = v195;
  v16 = v197;
  *&v283 = v180;
  *(&v283 + 1) = v197;
  v284 = v5;
  v285 = v5;
  v199 = v5;
  OpaqueTypeMetadata2 = v6[24];
  v286 = OpaqueTypeMetadata2;
  v287 = v182;
  v17 = type metadata accessor for FullWidthStageView();
  v165 = v17;
  v164 = swift_getWitnessTable();
  v280 = v17;
  *&v281 = v164;
  swift_getOpaqueTypeMetadata2();
  v173 = v4;
  v18 = type metadata accessor for InfoActionCardView();
  v158 = v18;
  v157 = swift_getWitnessTable();
  v280 = v18;
  *&v281 = v157;
  swift_getOpaqueTypeMetadata2();
  v156 = sub_1E68B2220();
  v130 = sub_1E68B2220();
  v194 = v6;
  v179 = *(v6 + 21);
  v280 = v15;
  v282 = v16;
  v283 = v179;
  v178 = *(v6 + 3);
  v281 = v178;
  v19 = type metadata accessor for LargeBrickView();
  v154 = v19;
  v153 = swift_getWitnessTable();
  v280 = v19;
  *&v281 = v153;
  swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for DynamicBrickView();
  v152 = v20;
  v151 = swift_getWitnessTable();
  v280 = v20;
  *&v281 = v151;
  swift_getOpaqueTypeMetadata2();
  v143 = sub_1E68B2220();
  v21 = type metadata accessor for MonogramVerticalStackView();
  v148 = v21;
  v147 = swift_getWitnessTable();
  v280 = v21;
  *&v281 = v147;
  swift_getOpaqueTypeMetadata2();
  v144 = sub_1E68B2220();
  v149 = sub_1E68B2220();
  v124[1] = sub_1E68B2220();
  v22 = type metadata accessor for StandardCardView();
  v146 = v22;
  v145 = swift_getWitnessTable();
  v280 = v22;
  *&v281 = v145;
  swift_getOpaqueTypeMetadata2();
  v280 = v15;
  *&v281 = v4;
  *(&v281 + 1) = v16;
  v282 = v199;
  v23 = type metadata accessor for StandardHorizontalStackView();
  v142 = v23;
  v141 = swift_getWitnessTable();
  v280 = v23;
  *&v281 = v141;
  swift_getOpaqueTypeMetadata2();
  v127 = sub_1E68B2220();
  v24 = type metadata accessor for StandardVerticalStackView();
  v140 = v24;
  v139 = swift_getWitnessTable();
  v280 = v24;
  *&v281 = v139;
  swift_getOpaqueTypeMetadata2();
  v135 = type metadata accessor for SummaryCardView();
  v138 = sub_1E68B2220();
  v124[2] = sub_1E68B2220();
  v25 = type metadata accessor for TallCardView();
  v136 = swift_getWitnessTable();
  v280 = v25;
  *&v281 = v136;
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for VerticalStackCardView();
  v131 = swift_getWitnessTable();
  v280 = v26;
  *&v281 = v131;
  swift_getOpaqueTypeMetadata2();
  v124[3] = sub_1E68B2220();
  v27 = type metadata accessor for WideBrickView();
  v125 = swift_getWitnessTable();
  v280 = v27;
  *&v281 = v125;
  swift_getOpaqueTypeMetadata2();
  v124[4] = sub_1E68B2220();
  v126 = sub_1E68B2220();
  v128 = sub_1E68B2220();
  v129 = sub_1E68B2220();
  v132 = sub_1E68B2B90();
  v133 = sub_1E68B1E40();
  v134 = sub_1E68B2220();
  v137 = sub_1E68B1E40();
  v170 = sub_1E68B1E40();
  v280 = v172;
  *&v281 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v280 = v168;
  *&v281 = v167;
  v29 = swift_getOpaqueTypeConformance2();
  v280 = v160;
  *&v281 = v159;
  v30 = swift_getOpaqueTypeConformance2();
  v278 = v29;
  v279 = v30;
  v277 = swift_getWitnessTable();
  v275 = swift_getWitnessTable();
  v276 = MEMORY[0x1E697E5D8];
  v31 = swift_getWitnessTable();
  v32 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v273 = v31;
  v274 = v32;
  v33 = swift_getWitnessTable();
  v172 = MEMORY[0x1E6981870];
  v34 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v271 = v33;
  v272 = v34;
  v35 = swift_getWitnessTable();
  v269 = OpaqueTypeConformance2;
  v270 = v35;
  v36 = swift_getWitnessTable();
  v280 = v165;
  *&v281 = v164;
  v37 = swift_getOpaqueTypeConformance2();
  v280 = v158;
  *&v281 = v157;
  v38 = swift_getOpaqueTypeConformance2();
  v267 = v37;
  v268 = v38;
  v39 = swift_getWitnessTable();
  v265 = v36;
  v266 = v39;
  v40 = swift_getWitnessTable();
  v280 = v154;
  *&v281 = v153;
  v41 = swift_getOpaqueTypeConformance2();
  v280 = v152;
  *&v281 = v151;
  v42 = swift_getOpaqueTypeConformance2();
  v263 = v41;
  v264 = v42;
  v43 = swift_getWitnessTable();
  v280 = v148;
  *&v281 = v147;
  v261 = swift_getOpaqueTypeConformance2();
  v262 = v42;
  v44 = swift_getWitnessTable();
  v259 = v43;
  v260 = v44;
  v45 = swift_getWitnessTable();
  v257 = v40;
  v258 = v45;
  v46 = swift_getWitnessTable();
  v280 = v146;
  *&v281 = v145;
  v47 = swift_getOpaqueTypeConformance2();
  v280 = v142;
  *&v281 = v141;
  v48 = swift_getOpaqueTypeConformance2();
  v255 = v47;
  v256 = v48;
  v49 = swift_getWitnessTable();
  v280 = v140;
  *&v281 = v139;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = swift_getWitnessTable();
  v253 = v50;
  v254 = v51;
  v52 = swift_getWitnessTable();
  v251 = v49;
  v252 = v52;
  v53 = swift_getWitnessTable();
  v280 = v25;
  *&v281 = v136;
  v54 = swift_getOpaqueTypeConformance2();
  v280 = v26;
  *&v281 = v131;
  v55 = swift_getOpaqueTypeConformance2();
  v249 = v54;
  v250 = v55;
  v56 = swift_getWitnessTable();
  v280 = v27;
  *&v281 = v125;
  v57 = swift_getOpaqueTypeConformance2();
  v247 = OpaqueTypeMetadata2;
  v248 = v57;
  v58 = swift_getWitnessTable();
  v245 = v56;
  v246 = v58;
  v59 = swift_getWitnessTable();
  v243 = v53;
  v244 = v59;
  v60 = swift_getWitnessTable();
  v241 = v46;
  v242 = v60;
  v240 = swift_getWitnessTable();
  v238 = swift_getWitnessTable();
  v239 = v193;
  v61 = swift_getWitnessTable();
  v236 = MEMORY[0x1E6981E60];
  v237 = v61;
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x1E69805D0];
  v234 = v62;
  v235 = MEMORY[0x1E69805D0];
  v232 = swift_getWitnessTable();
  v233 = v63;
  v64 = v170;
  v65 = swift_getWitnessTable();
  v280 = v64;
  *&v281 = v65;
  v66 = v64;
  v67 = swift_getOpaqueTypeMetadata2();
  v280 = v66;
  *&v281 = v65;
  v68 = swift_getOpaqueTypeConformance2();
  v280 = v67;
  *&v281 = v68;
  v170 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v69 = v194;
  v193 = *(v194 + 4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = v69[23];
  v71 = WitnessTable;
  v280 = v193;
  *v177 = *(&v193 + 1);
  *(&v281 + 1) = AssociatedConformanceWitness;
  v282 = v71;
  type metadata accessor for CanvasContextMenu();
  v72 = sub_1E68B1E40();
  v73 = v176;
  v74 = swift_getWitnessTable();
  v75 = AssociatedTypeWitness;
  v76 = swift_getAssociatedConformanceWitness();
  v280 = v73;
  *&v281 = v75;
  *(&v281 + 1) = v72;
  v282 = v74;
  *&v283 = v76;
  sub_1E68B2D40();
  v280 = v67;
  *&v281 = v68;
  v230 = swift_getOpaqueTypeConformance2();
  v231 = v68;
  v77 = swift_getWitnessTable();
  v78 = swift_getWitnessTable();
  v228 = v77;
  v229 = v78;
  v227 = swift_getWitnessTable();
  swift_getWitnessTable();
  v79 = sub_1E68B1B50();
  v80 = swift_getWitnessTable();
  v280 = v79;
  *&v281 = v80;
  v81 = swift_getOpaqueTypeMetadata2();
  v280 = v79;
  *&v281 = v80;
  v82 = swift_getOpaqueTypeConformance2();
  v280 = v81;
  *&v281 = v82;
  swift_getOpaqueTypeMetadata2();
  v280 = v81;
  *&v281 = v82;
  swift_getOpaqueTypeConformance2();
  v83 = sub_1E68B1B80();
  v84 = sub_1E68B2480();
  v85 = swift_getWitnessTable();
  v280 = v83;
  *&v281 = v84;
  *(&v281 + 1) = v85;
  v282 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200);
  v86 = sub_1E68B2D80();
  v87 = sub_1E673F2EC();
  v88 = swift_getWitnessTable();
  v89 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v225 = v88;
  v226 = v89;
  v90 = swift_getWitnessTable();
  v223 = v87;
  v224 = v90;
  v222 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v280 = v83;
  *&v281 = v84;
  *(&v281 + 1) = v85;
  v282 = MEMORY[0x1E697CC08];
  v92 = swift_getOpaqueTypeConformance2();
  v93 = sub_1E67D2CA8();
  v219 = v91;
  v220 = v92;
  v221 = v93;
  v177 = v86;
  v184 = swift_getWitnessTable();
  v94 = sub_1E68B2CC0();
  v185 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v96 = v124 - v95;
  v97 = swift_getWitnessTable();
  v280 = v94;
  *&v281 = v97;
  v98 = v97;
  v175 = v97;
  v99 = swift_getOpaqueTypeMetadata2();
  v202 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v101 = v124 - v100;
  v280 = v94;
  *&v281 = v98;
  v176 = swift_getOpaqueTypeConformance2();
  v280 = v99;
  *&v281 = v176;
  v181 = MEMORY[0x1E697CF18];
  v102 = swift_getOpaqueTypeMetadata2();
  v183 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v104 = v124 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105);
  v107 = v124 - v106;
  sub_1E68B21D0();
  v108 = v194;
  *&v109 = v194[2];
  *(&v109 + 1) = v173;
  *&v110 = v194[4];
  *(&v110 + 1) = v196;
  v203 = v109;
  v204 = v110;
  v205 = v178;
  v206 = v193;
  v207 = v195;
  v208 = *(v194 + 11);
  *&v109 = v194[13];
  *(&v109 + 1) = v186;
  *&v110 = v194[15];
  *(&v110 + 1) = v180;
  v210 = v110;
  *&v110 = v194[17];
  *(&v110 + 1) = v198;
  *&v111 = v199;
  *(&v111 + 1) = v197;
  v209 = v109;
  v212 = v111;
  v211 = v110;
  *&v109 = WitnessTable;
  *(&v109 + 1) = OpaqueTypeMetadata2;
  v214 = v109;
  v213 = v179;
  *&v109 = v194[25];
  *(&v109 + 1) = v187;
  *&v110 = v194[27];
  *(&v110 + 1) = v182;
  v216 = v110;
  v215 = v109;
  v217 = v201;
  v112 = v188;
  v218 = v188;
  sub_1E68B2CB0();
  sub_1E68B28E0();
  (*(v185 + 8))(v96, v94);
  v113 = sub_1E68B24F0();
  v114 = (v112 + *(v108 + 64));
  v115 = *v114;
  v116 = v114[1];
  v117 = v114[2];
  v118 = v114[3];
  v119 = v189;
  sub_1E68B22F0();
  v120 = v176;
  MEMORY[0x1E69510A0](v113, v119, v99, v176, v117, v116, v115, v118);
  (*(v190 + 8))(v119, v191);
  (*(v202 + 8))(v101, v99);
  v280 = v99;
  *&v281 = v120;
  v121 = swift_getOpaqueTypeConformance2();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v104, v102, v121);
  v122 = *(v183 + 8);
  v122(v104, v102);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v107, v102, v121);
  return (v122)(v107, v102);
}

uint64_t sub_1E681A830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v96 = a8;
  v109 = a7;
  v104 = a6;
  v87 = a4;
  v85 = a2;
  v89 = a1;
  v93 = a9;
  v86 = a13;
  v84 = a12;
  v103 = a23;
  v101 = a22;
  v88 = a28;
  v102 = a29;
  v100 = a24;
  v108 = a25;
  v82 = a16;
  v99 = a17;
  v98 = a10;
  v106 = a11;
  v97 = a30;
  v81 = a18;
  v83 = a26;
  v79 = a27;
  v80 = a14;
  v78 = a15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v158 = a3;
  v159 = a15;
  v160 = a20;
  v161 = a27;
  v90 = type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  v91 = sub_1E68B1E40();
  v92 = sub_1E68B2220();
  v105 = sub_1E68B3750();
  v107 = a19;
  swift_getTupleTypeMetadata2();
  v32 = sub_1E68B33B0();
  v76 = *(a30 + 32);
  v77 = v32;
  swift_getAssociatedTypeWitness();
  v95 = a21;
  type metadata accessor for ActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  v72 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v172 = a21;
  v173 = v72;
  v33 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v171 = MEMORY[0x1E697F568];
  v110 = v33;
  v66 = swift_getWitnessTable();
  v65[33] = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v65[38] = sub_1E68B1E40();
  v168 = WitnessTable;
  v169 = MEMORY[0x1E697E040];
  v65[36] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[39] = sub_1E68B2220();
  v65[41] = sub_1E68B2B90();
  v65[40] = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v65[42] = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  sub_1E68B2220();
  v65[28] = sub_1E68B2220();
  v164 = a20;
  v165 = a20;
  v166 = a25;
  v167 = a29;
  type metadata accessor for FullWidthStageView();
  v65[43] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v73 = a3;
  v74 = a20;
  v65[37] = type metadata accessor for InfoActionCardView();
  v65[35] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[34] = sub_1E68B2220();
  v65[8] = sub_1E68B2220();
  v163 = a23;
  v65[32] = type metadata accessor for LargeBrickView();
  v65[31] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[30] = type metadata accessor for DynamicBrickView();
  v65[29] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[21] = sub_1E68B2220();
  v65[26] = type metadata accessor for MonogramVerticalStackView();
  v65[25] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[22] = sub_1E68B2220();
  v65[27] = sub_1E68B2220();
  sub_1E68B2220();
  v65[24] = type metadata accessor for StandardCardView();
  v65[23] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[20] = type metadata accessor for StandardHorizontalStackView();
  v65[19] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[5] = sub_1E68B2220();
  v65[10] = type metadata accessor for StandardVerticalStackView();
  v65[18] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[14] = type metadata accessor for SummaryCardView();
  v65[17] = sub_1E68B2220();
  v65[0] = sub_1E68B2220();
  type metadata accessor for TallCardView();
  v65[15] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v71 = a5;
  type metadata accessor for VerticalStackCardView();
  v65[9] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[1] = sub_1E68B2220();
  type metadata accessor for WideBrickView();
  v65[3] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[2] = sub_1E68B2220();
  v65[4] = sub_1E68B2220();
  v65[6] = sub_1E68B2220();
  v65[7] = sub_1E68B2220();
  v65[11] = sub_1E68B2B90();
  v65[12] = sub_1E68B1E40();
  v65[13] = sub_1E68B2220();
  v65[16] = sub_1E68B1E40();
  sub_1E68B1E40();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v156 = swift_getOpaqueTypeConformance2();
  v157 = swift_getOpaqueTypeConformance2();
  v35 = MEMORY[0x1E697F968];
  v155 = swift_getWitnessTable();
  v153 = swift_getWitnessTable();
  v154 = MEMORY[0x1E697E5D8];
  v151 = swift_getWitnessTable();
  v152 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v149 = swift_getWitnessTable();
  v150 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v147 = OpaqueTypeConformance2;
  v148 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v145 = swift_getOpaqueTypeConformance2();
  v146 = swift_getOpaqueTypeConformance2();
  v143 = v36;
  v144 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v141[76] = swift_getOpaqueTypeConformance2();
  v142 = swift_getOpaqueTypeConformance2();
  v38 = swift_getWitnessTable();
  v141[74] = swift_getOpaqueTypeConformance2();
  v141[75] = v142;
  v141[72] = v38;
  v141[73] = swift_getWitnessTable();
  v141[70] = v37;
  v141[71] = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v141[68] = swift_getOpaqueTypeConformance2();
  v141[69] = swift_getOpaqueTypeConformance2();
  v40 = swift_getWitnessTable();
  v141[66] = swift_getOpaqueTypeConformance2();
  v141[67] = swift_getWitnessTable();
  v141[64] = v40;
  v141[65] = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v141[62] = swift_getOpaqueTypeConformance2();
  v141[63] = swift_getOpaqueTypeConformance2();
  v42 = swift_getWitnessTable();
  v141[60] = a25;
  v141[61] = swift_getOpaqueTypeConformance2();
  v141[58] = v42;
  v141[59] = swift_getWitnessTable();
  v141[56] = v41;
  v141[57] = swift_getWitnessTable();
  v141[54] = v39;
  v141[55] = swift_getWitnessTable();
  v94 = v35;
  v141[53] = swift_getWitnessTable();
  v141[51] = swift_getWitnessTable();
  v141[52] = v72;
  v43 = swift_getWitnessTable();
  v141[49] = MEMORY[0x1E6981E60];
  v141[50] = v43;
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x1E69805D0];
  v141[47] = v44;
  v141[48] = MEMORY[0x1E69805D0];
  v141[45] = swift_getWitnessTable();
  v141[46] = v45;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v46 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CanvasContextMenu();
  sub_1E68B1E40();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  v141[43] = swift_getOpaqueTypeConformance2();
  v141[44] = v46;
  v141[41] = swift_getWitnessTable();
  v141[42] = swift_getWitnessTable();
  v141[40] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B50();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v70 = sub_1E68B1B80();
  v69 = sub_1E68B2480();
  v68 = swift_getWitnessTable();
  v158 = v70;
  v159 = v69;
  v160 = v68;
  v161 = MEMORY[0x1E697CC08];
  v67 = MEMORY[0x1E697D2A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65[44] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200);
  v47 = sub_1E68B2D80();
  v48 = *(v47 - 8);
  v76 = v47;
  v77 = v48;
  MEMORY[0x1EEE9AC00](v47);
  v66 = v65 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v72 = v65 - v51;
  v141[2] = v85;
  v141[3] = v73;
  v141[4] = v87;
  v141[5] = v71;
  v141[6] = v104;
  v141[7] = v109;
  v141[8] = v96;
  v141[9] = v98;
  v141[10] = v106;
  v141[11] = v84;
  v141[12] = v86;
  v141[13] = v80;
  v141[14] = v78;
  v141[15] = v82;
  v141[16] = v99;
  v141[17] = v81;
  v141[18] = v107;
  v141[19] = v74;
  v141[20] = v95;
  v141[21] = v101;
  v141[22] = v103;
  v141[23] = v100;
  v141[24] = v108;
  v141[25] = v83;
  v141[26] = v79;
  v141[27] = v88;
  v141[28] = v102;
  v141[29] = v97;
  v141[30] = v89;
  v140[2] = v85;
  v140[3] = v73;
  v140[4] = v87;
  v140[5] = v71;
  v140[6] = v104;
  v140[7] = v109;
  v140[8] = v96;
  v140[9] = v98;
  v140[10] = v106;
  v140[11] = v84;
  v140[12] = v86;
  v140[13] = v80;
  v140[14] = v78;
  v140[15] = v82;
  v140[16] = v99;
  v140[17] = v81;
  v140[18] = v107;
  v140[19] = v74;
  v140[20] = v95;
  v140[21] = v101;
  v140[22] = v103;
  v140[23] = v100;
  v140[24] = v108;
  v140[25] = v83;
  v140[26] = v79;
  v140[27] = v88;
  v140[28] = v102;
  v140[29] = v97;
  v140[30] = v89;
  v111 = v85;
  v112 = v73;
  v113 = v87;
  v114 = v71;
  v115 = v104;
  v116 = v109;
  v117 = v96;
  v118 = v98;
  v119 = v106;
  v120 = v84;
  v121 = v86;
  v122 = v80;
  v123 = v78;
  v124 = v82;
  v125 = v99;
  v126 = v81;
  v127 = v107;
  v128 = v74;
  v129 = v95;
  v130 = v101;
  v131 = v103;
  v132 = v100;
  v133 = v108;
  v134 = v83;
  v135 = v79;
  v136 = v88;
  v137 = v102;
  v138 = v97;
  v139 = v89;
  v52 = sub_1E673F2EC();
  v53 = swift_getWitnessTable();
  v54 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v141[38] = v53;
  v141[39] = v54;
  v55 = swift_getWitnessTable();
  v141[36] = v52;
  v141[37] = v55;
  v141[35] = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v158 = v70;
  v159 = v69;
  v160 = v68;
  v161 = MEMORY[0x1E697CC08];
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_1E67D2CA8();
  v57 = v66;
  sub_1E68615E8(sub_1E682330C, v141, sub_1E6823324, v140, sub_1E682333C);
  v141[32] = v56;
  v141[33] = v63;
  v141[34] = v64;
  v58 = v76;
  v59 = swift_getWitnessTable();
  v60 = v72;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v57, v58, v59);
  v61 = *(v77 + 8);
  v61(v57, v58);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v60, v58, v59);
  return (v61)(v60, v58);
}

uint64_t sub_1E681BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v197 = a8;
  v206 = a7;
  v205 = a6;
  v188 = a4;
  v184 = a2;
  v193 = a1;
  v194 = a9;
  v192 = a27;
  v191 = a26;
  v187 = a15;
  v186 = a14;
  v183 = a13;
  v182 = a12;
  v202 = a23;
  v204 = a22;
  v189 = a28;
  v200 = a29;
  v203 = a24;
  v209 = a25;
  v181 = a16;
  v201 = a17;
  v199 = a10;
  v207 = a11;
  v198 = a30;
  v180 = a18;
  v196 = a19;
  v32 = sub_1E68B2460();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v185 = v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1E68B2480();
  v190 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v179 = v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v35 = sub_1E68B33B0();
  v176 = *(a30 + 32);
  v177 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v292 = a5;
  v293 = a3;
  v195 = a3;
  v294 = a3;
  v295 = a21;
  v296 = a20;
  v297 = a20;
  v36 = type metadata accessor for ActionCardView();
  v170 = v36;
  WitnessTable = swift_getWitnessTable();
  v292 = v36;
  v293 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v168 = sub_1E68B2440();
  sub_1E68B1E40();
  v37 = sub_1E68B1E40();
  v173 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v306 = a21;
  v307 = v173;
  v38 = MEMORY[0x1E697E858];
  v39 = swift_getWitnessTable();
  v304 = v39;
  v305 = MEMORY[0x1E697F568];
  v208 = v38;
  v166 = v37;
  v165 = swift_getWitnessTable();
  v292 = v37;
  v293 = v165;
  v153 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v40 = sub_1E68B1E40();
  v158 = v40;
  v302 = v39;
  v303 = MEMORY[0x1E697E040];
  v156 = swift_getWitnessTable();
  v292 = v40;
  v293 = v156;
  swift_getOpaqueTypeMetadata2();
  v159 = sub_1E68B2220();
  v161 = sub_1E68B2B90();
  v160 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v162 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v167 = sub_1E68B2220();
  v148 = sub_1E68B2220();
  v41 = v195;
  v292 = a5;
  v293 = v195;
  v294 = v195;
  v295 = v207;
  v296 = v201;
  v297 = a21;
  v298 = a20;
  v299 = a20;
  v300 = v209;
  v301 = v200;
  v42 = type metadata accessor for FullWidthStageView();
  OpaqueTypeMetadata2 = v42;
  v163 = swift_getWitnessTable();
  v292 = v42;
  v293 = v163;
  swift_getOpaqueTypeMetadata2();
  v43 = v41;
  v174 = a20;
  v44 = type metadata accessor for InfoActionCardView();
  v157 = v44;
  v155 = swift_getWitnessTable();
  v292 = v44;
  v293 = v155;
  swift_getOpaqueTypeMetadata2();
  v154 = sub_1E68B2220();
  v129 = sub_1E68B2220();
  v292 = a5;
  v293 = v205;
  v294 = v206;
  v295 = a21;
  v296 = v204;
  v297 = v202;
  v45 = type metadata accessor for LargeBrickView();
  v152 = v45;
  v151 = swift_getWitnessTable();
  v292 = v45;
  v293 = v151;
  swift_getOpaqueTypeMetadata2();
  v46 = type metadata accessor for DynamicBrickView();
  v150 = v46;
  v149 = swift_getWitnessTable();
  v292 = v46;
  v293 = v149;
  swift_getOpaqueTypeMetadata2();
  v141 = sub_1E68B2220();
  v47 = type metadata accessor for MonogramVerticalStackView();
  v146 = v47;
  v145 = swift_getWitnessTable();
  v292 = v47;
  v293 = v145;
  swift_getOpaqueTypeMetadata2();
  v142 = sub_1E68B2220();
  v147 = sub_1E68B2220();
  v123[0] = sub_1E68B2220();
  v48 = type metadata accessor for StandardCardView();
  v144 = v48;
  v143 = swift_getWitnessTable();
  v292 = v48;
  v293 = v143;
  swift_getOpaqueTypeMetadata2();
  v292 = a5;
  v293 = v43;
  v294 = a21;
  v295 = a20;
  v49 = type metadata accessor for StandardHorizontalStackView();
  v140 = v49;
  v139 = swift_getWitnessTable();
  v292 = v49;
  v293 = v139;
  swift_getOpaqueTypeMetadata2();
  v126 = sub_1E68B2220();
  v50 = type metadata accessor for StandardVerticalStackView();
  v138 = swift_getWitnessTable();
  v292 = v50;
  v293 = v138;
  swift_getOpaqueTypeMetadata2();
  v134 = type metadata accessor for SummaryCardView();
  v137 = sub_1E68B2220();
  v123[1] = sub_1E68B2220();
  v51 = type metadata accessor for TallCardView();
  v135 = swift_getWitnessTable();
  v292 = v51;
  v293 = v135;
  swift_getOpaqueTypeMetadata2();
  v171 = a5;
  v172 = a21;
  v52 = type metadata accessor for VerticalStackCardView();
  v130 = swift_getWitnessTable();
  v292 = v52;
  v293 = v130;
  swift_getOpaqueTypeMetadata2();
  v123[2] = sub_1E68B2220();
  v53 = type metadata accessor for WideBrickView();
  v124 = swift_getWitnessTable();
  v292 = v53;
  v293 = v124;
  swift_getOpaqueTypeMetadata2();
  v123[3] = sub_1E68B2220();
  v125 = sub_1E68B2220();
  v127 = sub_1E68B2220();
  v128 = sub_1E68B2220();
  v131 = sub_1E68B2B90();
  v132 = sub_1E68B1E40();
  v133 = sub_1E68B2220();
  v136 = sub_1E68B1E40();
  v168 = sub_1E68B1E40();
  v292 = v170;
  v293 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v292 = v166;
  v293 = v165;
  v55 = swift_getOpaqueTypeConformance2();
  v292 = v158;
  v293 = v156;
  v56 = swift_getOpaqueTypeConformance2();
  v290 = v55;
  v291 = v56;
  v289 = swift_getWitnessTable();
  v170 = MEMORY[0x1E6981600];
  v287 = swift_getWitnessTable();
  v288 = MEMORY[0x1E697E5D8];
  v57 = swift_getWitnessTable();
  v58 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v285 = v57;
  v286 = v58;
  v59 = swift_getWitnessTable();
  v60 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v283 = v59;
  v284 = v60;
  v61 = swift_getWitnessTable();
  v281 = OpaqueTypeConformance2;
  v282 = v61;
  v62 = swift_getWitnessTable();
  v292 = OpaqueTypeMetadata2;
  v293 = v163;
  v63 = swift_getOpaqueTypeConformance2();
  v292 = v157;
  v293 = v155;
  v64 = swift_getOpaqueTypeConformance2();
  v279 = v63;
  v280 = v64;
  v65 = swift_getWitnessTable();
  v277 = v62;
  v278 = v65;
  v66 = swift_getWitnessTable();
  v292 = v152;
  v293 = v151;
  v67 = swift_getOpaqueTypeConformance2();
  v292 = v150;
  v293 = v149;
  v68 = swift_getOpaqueTypeConformance2();
  v275 = v67;
  v276 = v68;
  v69 = swift_getWitnessTable();
  v292 = v146;
  v293 = v145;
  v273 = swift_getOpaqueTypeConformance2();
  v274 = v68;
  v70 = swift_getWitnessTable();
  v271 = v69;
  v272 = v70;
  v71 = swift_getWitnessTable();
  v269 = v66;
  v270 = v71;
  v72 = swift_getWitnessTable();
  v292 = v144;
  v293 = v143;
  v73 = swift_getOpaqueTypeConformance2();
  v292 = v140;
  v293 = v139;
  v74 = swift_getOpaqueTypeConformance2();
  v267 = v73;
  v268 = v74;
  v75 = swift_getWitnessTable();
  v292 = v50;
  v293 = v138;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  v265 = v76;
  v266 = v77;
  v78 = swift_getWitnessTable();
  v263 = v75;
  v264 = v78;
  v79 = swift_getWitnessTable();
  v292 = v51;
  v293 = v135;
  v80 = swift_getOpaqueTypeConformance2();
  v292 = v52;
  v293 = v130;
  v81 = swift_getOpaqueTypeConformance2();
  v261 = v80;
  v262 = v81;
  v82 = swift_getWitnessTable();
  v292 = v53;
  v293 = v124;
  v83 = swift_getOpaqueTypeConformance2();
  v259 = v209;
  v260 = v83;
  v84 = swift_getWitnessTable();
  v257 = v82;
  v258 = v84;
  v85 = swift_getWitnessTable();
  v255 = v79;
  v256 = v85;
  v86 = swift_getWitnessTable();
  v253 = v72;
  v254 = v86;
  v252 = swift_getWitnessTable();
  v250 = swift_getWitnessTable();
  v251 = v173;
  v87 = swift_getWitnessTable();
  v248 = MEMORY[0x1E6981E60];
  v249 = v87;
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x1E69805D0];
  v246 = v88;
  v247 = MEMORY[0x1E69805D0];
  v244 = swift_getWitnessTable();
  v245 = v89;
  v90 = v168;
  v91 = swift_getWitnessTable();
  v292 = v90;
  v293 = v91;
  v92 = v90;
  v93 = swift_getOpaqueTypeMetadata2();
  v292 = v92;
  v293 = v91;
  v94 = swift_getOpaqueTypeConformance2();
  v292 = v93;
  v293 = v94;
  v173 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v95 = v197;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v292 = v95;
  v293 = v199;
  v294 = AssociatedConformanceWitness;
  v295 = v203;
  type metadata accessor for CanvasContextMenu();
  v97 = sub_1E68B1E40();
  v98 = v177;
  v99 = swift_getWitnessTable();
  v100 = AssociatedTypeWitness;
  v101 = swift_getAssociatedConformanceWitness();
  v292 = v98;
  v293 = v100;
  v294 = v97;
  v295 = v99;
  v296 = v101;
  sub_1E68B2D40();
  v292 = v93;
  v293 = v94;
  v242 = swift_getOpaqueTypeConformance2();
  v243 = v94;
  v102 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  v240 = v102;
  v241 = v103;
  v239 = swift_getWitnessTable();
  swift_getWitnessTable();
  v104 = sub_1E68B1B50();
  v105 = swift_getWitnessTable();
  v292 = v104;
  v293 = v105;
  v106 = swift_getOpaqueTypeMetadata2();
  v292 = v104;
  v293 = v105;
  v107 = swift_getOpaqueTypeConformance2();
  v292 = v106;
  v293 = v107;
  swift_getOpaqueTypeMetadata2();
  v292 = v106;
  v293 = v107;
  swift_getOpaqueTypeConformance2();
  v108 = sub_1E68B1B80();
  v208 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v110 = v123 - v109;
  v111 = swift_getWitnessTable();
  v112 = v178;
  v292 = v108;
  v293 = v178;
  v294 = v111;
  v295 = MEMORY[0x1E697CC08];
  v176 = MEMORY[0x1E697D2A8];
  v113 = swift_getOpaqueTypeMetadata2();
  v177 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v115 = v123 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116);
  v118 = v123 - v117;
  sub_1E68B24B0();
  v210 = v184;
  v211 = v195;
  v212 = v188;
  v213 = v171;
  v214 = v205;
  v215 = v206;
  v216 = v197;
  v217 = v199;
  v218 = v207;
  v219 = v182;
  v220 = v183;
  v221 = v186;
  v222 = v187;
  v223 = v181;
  v224 = v201;
  v225 = v180;
  v226 = v196;
  v227 = v174;
  v228 = v172;
  v229 = v204;
  v230 = v202;
  v231 = v203;
  v232 = v209;
  v233 = v191;
  v234 = v192;
  v235 = v189;
  v236 = v200;
  v237 = v198;
  v238 = v193;
  sub_1E68B1B90();
  sub_1E68B2450();
  v119 = v179;
  sub_1E68B2470();
  sub_1E68B2940();
  (*(v190 + 8))(v119, v112);
  (*(v208 + 8))(v110, v108);
  v292 = v108;
  v293 = v112;
  v294 = v111;
  v295 = MEMORY[0x1E697CC08];
  v120 = swift_getOpaqueTypeConformance2();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v115, v113, v120);
  v121 = *(v177 + 8);
  v121(v115, v113);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v118, v113, v120);
  return (v121)(v118, v113);
}

uint64_t sub_1E681D308@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v217 = a8;
  v204 = a7;
  v202 = a6;
  v189 = a4;
  v209 = a2;
  v193 = a1;
  v197 = a9;
  v192 = a27;
  v191 = a26;
  v211 = a15;
  v210 = a14;
  v208 = a13;
  v207 = a12;
  v201 = a23;
  v215 = a22;
  v190 = a28;
  v203 = a29;
  v220 = a24;
  v222 = a25;
  v206 = a16;
  v216 = a17;
  v219 = a10;
  v221 = a11;
  v218 = a30;
  v205 = a18;
  v214 = a19;
  v32 = sub_1E68B2350();
  v195 = *(v32 - 8);
  v196 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v194 = v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v188 = v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v36 = sub_1E68B33B0();
  v186 = *(a30 + 32);
  v187 = v36;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v252 = a5;
  v213 = a3;
  v253 = a3;
  v254 = a3;
  v255 = a21;
  v256 = a20;
  v257 = a20;
  v37 = type metadata accessor for ActionCardView();
  v183 = v37;
  WitnessTable = swift_getWitnessTable();
  v252 = v37;
  v253 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v181 = sub_1E68B2440();
  sub_1E68B1E40();
  v38 = sub_1E68B1E40();
  v184 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v337 = a21;
  v338 = v184;
  v39 = MEMORY[0x1E697E858];
  v40 = swift_getWitnessTable();
  v335 = v40;
  v336 = MEMORY[0x1E697F568];
  v212 = v39;
  v179 = v38;
  v178 = swift_getWitnessTable();
  v252 = v38;
  v253 = v178;
  v166 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v41 = sub_1E68B1E40();
  v171 = v41;
  v333 = v40;
  v334 = MEMORY[0x1E697E040];
  v169 = swift_getWitnessTable();
  v252 = v41;
  v253 = v169;
  swift_getOpaqueTypeMetadata2();
  v172 = sub_1E68B2220();
  v174 = sub_1E68B2B90();
  v173 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v175 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v180 = sub_1E68B2220();
  v161 = sub_1E68B2220();
  v252 = a5;
  v42 = v213;
  v253 = v213;
  v254 = v213;
  v255 = v221;
  v256 = v216;
  v257 = a21;
  v258 = a20;
  v259 = a20;
  v260 = v222;
  v261 = v203;
  v43 = type metadata accessor for FullWidthStageView();
  OpaqueTypeMetadata2 = v43;
  v176 = swift_getWitnessTable();
  v252 = v43;
  v253 = v176;
  swift_getOpaqueTypeMetadata2();
  v200 = a20;
  v44 = type metadata accessor for InfoActionCardView();
  v170 = v44;
  v168 = swift_getWitnessTable();
  v252 = v44;
  v253 = v168;
  swift_getOpaqueTypeMetadata2();
  v167 = sub_1E68B2220();
  v141 = sub_1E68B2220();
  v252 = a5;
  v253 = v202;
  v254 = v204;
  v255 = a21;
  v256 = v215;
  v257 = v201;
  v45 = type metadata accessor for LargeBrickView();
  v165 = v45;
  v164 = swift_getWitnessTable();
  v252 = v45;
  v253 = v164;
  swift_getOpaqueTypeMetadata2();
  v46 = type metadata accessor for DynamicBrickView();
  v163 = v46;
  v162 = swift_getWitnessTable();
  v252 = v46;
  v253 = v162;
  swift_getOpaqueTypeMetadata2();
  v154 = sub_1E68B2220();
  v47 = type metadata accessor for MonogramVerticalStackView();
  v159 = v47;
  v158 = swift_getWitnessTable();
  v252 = v47;
  v253 = v158;
  swift_getOpaqueTypeMetadata2();
  v155 = sub_1E68B2220();
  v160 = sub_1E68B2220();
  sub_1E68B2220();
  v48 = type metadata accessor for StandardCardView();
  v157 = v48;
  v156 = swift_getWitnessTable();
  v252 = v48;
  v253 = v156;
  swift_getOpaqueTypeMetadata2();
  v252 = a5;
  v253 = v42;
  v254 = a21;
  v255 = a20;
  v49 = type metadata accessor for StandardHorizontalStackView();
  v153 = v49;
  v152 = swift_getWitnessTable();
  v252 = v49;
  v253 = v152;
  swift_getOpaqueTypeMetadata2();
  v138 = sub_1E68B2220();
  v50 = type metadata accessor for StandardVerticalStackView();
  v151 = v50;
  v150 = swift_getWitnessTable();
  v252 = v50;
  v253 = v150;
  swift_getOpaqueTypeMetadata2();
  v146 = type metadata accessor for SummaryCardView();
  v149 = sub_1E68B2220();
  v135[0] = sub_1E68B2220();
  v51 = type metadata accessor for TallCardView();
  v147 = swift_getWitnessTable();
  v252 = v51;
  v253 = v147;
  swift_getOpaqueTypeMetadata2();
  v198 = a5;
  v199 = a21;
  v52 = type metadata accessor for VerticalStackCardView();
  v142 = swift_getWitnessTable();
  v252 = v52;
  v253 = v142;
  swift_getOpaqueTypeMetadata2();
  v135[1] = sub_1E68B2220();
  v53 = type metadata accessor for WideBrickView();
  v136 = swift_getWitnessTable();
  v252 = v53;
  v253 = v136;
  swift_getOpaqueTypeMetadata2();
  v135[2] = sub_1E68B2220();
  v137 = sub_1E68B2220();
  v139 = sub_1E68B2220();
  v140 = sub_1E68B2220();
  v143 = sub_1E68B2B90();
  v144 = sub_1E68B1E40();
  v145 = sub_1E68B2220();
  v148 = sub_1E68B1E40();
  v181 = sub_1E68B1E40();
  v252 = v183;
  v253 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v252 = v179;
  v253 = v178;
  v55 = swift_getOpaqueTypeConformance2();
  v252 = v171;
  v253 = v169;
  v56 = swift_getOpaqueTypeConformance2();
  v331 = v55;
  v332 = v56;
  v330 = swift_getWitnessTable();
  v183 = MEMORY[0x1E6981600];
  v328 = swift_getWitnessTable();
  v329 = MEMORY[0x1E697E5D8];
  v57 = swift_getWitnessTable();
  v58 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v326 = v57;
  v327 = v58;
  v59 = swift_getWitnessTable();
  v60 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v324 = v59;
  v325 = v60;
  v61 = swift_getWitnessTable();
  v322 = OpaqueTypeConformance2;
  v323 = v61;
  v62 = swift_getWitnessTable();
  v252 = OpaqueTypeMetadata2;
  v253 = v176;
  v63 = swift_getOpaqueTypeConformance2();
  v252 = v170;
  v253 = v168;
  v64 = swift_getOpaqueTypeConformance2();
  v320 = v63;
  v321 = v64;
  v65 = swift_getWitnessTable();
  v318 = v62;
  v319 = v65;
  v66 = swift_getWitnessTable();
  v252 = v165;
  v253 = v164;
  v67 = swift_getOpaqueTypeConformance2();
  v252 = v163;
  v253 = v162;
  v68 = swift_getOpaqueTypeConformance2();
  v316 = v67;
  v317 = v68;
  v69 = swift_getWitnessTable();
  v252 = v159;
  v253 = v158;
  v314 = swift_getOpaqueTypeConformance2();
  v315 = v68;
  v70 = swift_getWitnessTable();
  v312 = v69;
  v313 = v70;
  v71 = swift_getWitnessTable();
  v310 = v66;
  v311 = v71;
  v72 = swift_getWitnessTable();
  v252 = v157;
  v253 = v156;
  v73 = swift_getOpaqueTypeConformance2();
  v252 = v153;
  v253 = v152;
  v74 = swift_getOpaqueTypeConformance2();
  v308 = v73;
  v309 = v74;
  v75 = swift_getWitnessTable();
  v252 = v151;
  v253 = v150;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  v306 = v76;
  v307 = v77;
  v78 = swift_getWitnessTable();
  v304 = v75;
  v305 = v78;
  v79 = swift_getWitnessTable();
  v252 = v51;
  v253 = v147;
  v80 = swift_getOpaqueTypeConformance2();
  v252 = v52;
  v253 = v142;
  v81 = swift_getOpaqueTypeConformance2();
  v302 = v80;
  v303 = v81;
  v82 = swift_getWitnessTable();
  v252 = v53;
  v253 = v136;
  v83 = swift_getOpaqueTypeConformance2();
  v300 = v222;
  v301 = v83;
  v84 = swift_getWitnessTable();
  v298 = v82;
  v299 = v84;
  v85 = swift_getWitnessTable();
  v296 = v79;
  v297 = v85;
  v86 = swift_getWitnessTable();
  v294 = v72;
  v295 = v86;
  v293 = swift_getWitnessTable();
  v291 = swift_getWitnessTable();
  v292 = v184;
  v87 = swift_getWitnessTable();
  v289 = MEMORY[0x1E6981E60];
  v290 = v87;
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x1E69805D0];
  v287 = v88;
  v288 = MEMORY[0x1E69805D0];
  v285 = swift_getWitnessTable();
  v286 = v89;
  v90 = v181;
  v91 = swift_getWitnessTable();
  v252 = v90;
  v253 = v91;
  v92 = swift_getOpaqueTypeMetadata2();
  v252 = v90;
  v253 = v91;
  v93 = swift_getOpaqueTypeConformance2();
  v252 = v92;
  v253 = v93;
  v184 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v94 = v217;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v252 = v94;
  v253 = v219;
  v254 = AssociatedConformanceWitness;
  v255 = v220;
  type metadata accessor for CanvasContextMenu();
  v96 = sub_1E68B1E40();
  v97 = v187;
  v98 = swift_getWitnessTable();
  v99 = AssociatedTypeWitness;
  v100 = swift_getAssociatedConformanceWitness();
  v252 = v97;
  v253 = v99;
  v254 = v96;
  v255 = v98;
  v256 = v100;
  v101 = sub_1E68B2D40();
  v252 = v92;
  v253 = v93;
  v283 = swift_getOpaqueTypeConformance2();
  v284 = v93;
  v102 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  v281 = v102;
  v282 = v103;
  v280 = swift_getWitnessTable();
  v178 = v101;
  OpaqueTypeMetadata2 = swift_getWitnessTable();
  v104 = sub_1E68B1B50();
  v187 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v175 = v135 - v105;
  v106 = swift_getWitnessTable();
  v252 = v104;
  v253 = v106;
  v107 = swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v181 = v135 - v108;
  WitnessTable = v106;
  v212 = v104;
  v252 = v104;
  v253 = v106;
  v109 = swift_getOpaqueTypeConformance2();
  v186 = v107;
  v252 = v107;
  v180 = v109;
  v253 = v109;
  v110 = swift_getOpaqueTypeMetadata2();
  v183 = *(v110 - 8);
  v184 = v110;
  MEMORY[0x1EEE9AC00](v110);
  v176 = v135 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112);
  v179 = v135 - v113;
  v174 = sub_1E68B2120();
  v252 = v209;
  v253 = v213;
  v114 = v189;
  v254 = v189;
  v255 = v198;
  v115 = v202;
  v256 = v202;
  v116 = v204;
  v257 = v204;
  v258 = v217;
  v259 = v219;
  v260 = v221;
  v261 = v207;
  v262 = v208;
  v263 = v210;
  v264 = v211;
  v265 = v206;
  v266 = v216;
  v267 = v205;
  v268 = v214;
  v269 = v200;
  v270 = v199;
  v271 = v215;
  v117 = v201;
  v272 = v201;
  v273 = v220;
  v274 = v222;
  v118 = v191;
  v119 = v192;
  v275 = v191;
  v276 = v192;
  v120 = v190;
  v277 = v190;
  v121 = v203;
  v278 = v203;
  v279 = v218;
  v122 = type metadata accessor for OrthogonalView();
  v172 = *(v193 + *(v122 + 260) + 8);
  v173 = v122;
  v223 = v209;
  v224 = v213;
  v225 = v114;
  v226 = v198;
  v227 = v115;
  v123 = v175;
  v228 = v116;
  v229 = v217;
  v230 = v219;
  v231 = v221;
  v232 = v207;
  v233 = v208;
  v234 = v210;
  v235 = v211;
  v236 = v206;
  v237 = v216;
  v238 = v205;
  v239 = v214;
  v240 = v200;
  v241 = v199;
  v242 = v215;
  v243 = v117;
  v244 = v220;
  v245 = v222;
  v246 = v118;
  v247 = v119;
  v248 = v120;
  v249 = v121;
  v250 = v218;
  v251 = v193;
  sub_1E67D1D10();
  sub_1E68B1B40();
  if (sub_1E6817C34(v173))
  {
    v124 = v194;
    sub_1E68B2340();
  }

  else
  {
    v124 = v194;
    sub_1E68B2330();
  }

  v125 = v181;
  v126 = v212;
  sub_1E68B2980();
  (*(v195 + 8))(v124, v196);
  (*(v187 + 8))(v123, v126);
  v127 = v176;
  v128 = v186;
  v129 = v180;
  sub_1E68B28F0();
  (*(AssociatedTypeWitness + 8))(v125, v128);
  v252 = v128;
  v253 = v129;
  v130 = swift_getOpaqueTypeConformance2();
  v131 = v179;
  v132 = v184;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v127, v184, v130);
  v133 = *(v183 + 8);
  v133(v127, v132);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v131, v132, v130);
  return (v133)(v131, v132);
}

uint64_t sub_1E681E9C8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v209 = a8;
  v217 = a7;
  v215 = a6;
  v199 = a4;
  v220 = a3;
  v198 = a2;
  v203 = a1;
  v204 = a9;
  v206 = a29;
  v202 = a28;
  v201 = a27;
  v200 = a26;
  v222 = a25;
  v212 = a24;
  v216 = a23;
  v214 = a22;
  v197 = a18;
  v213 = a17;
  v196 = a16;
  v195 = a15;
  v194 = a14;
  v193 = a13;
  v192 = a12;
  v219 = a11;
  v210 = a10;
  v282 = a2;
  v283 = a3;
  v284 = a4;
  v285 = a5;
  v286 = a6;
  v287 = a7;
  v288 = a8;
  v289 = a10;
  v290 = a11;
  v291 = a12;
  v292 = a13;
  v293 = a14;
  v294 = a15;
  v295 = a16;
  v296 = a17;
  v297 = a18;
  v298 = a19;
  v299 = a20;
  v300 = a21;
  v301 = a22;
  v302 = a23;
  v303 = a24;
  v304 = a25;
  v305 = a26;
  v306 = a27;
  v307 = a28;
  v308 = a29;
  v309 = a30;
  v211 = a30;
  v31 = type metadata accessor for OrthogonalView();
  v189 = *(v31 - 8);
  v190 = v31;
  v191 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v188 = v135 - v32;
  v207 = a19;
  swift_getTupleTypeMetadata2();
  v187 = sub_1E68B33B0();
  v218 = *(a30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v282 = a5;
  v283 = v220;
  v284 = v220;
  v285 = a21;
  v205 = a20;
  v286 = a20;
  v287 = a20;
  v33 = type metadata accessor for ActionCardView();
  v183 = v33;
  WitnessTable = swift_getWitnessTable();
  v282 = v33;
  v283 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v181 = sub_1E68B2440();
  sub_1E68B1E40();
  v34 = sub_1E68B1E40();
  v186 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v280 = a21;
  v281 = v186;
  v35 = MEMORY[0x1E697E858];
  v36 = swift_getWitnessTable();
  v278 = v36;
  v279 = MEMORY[0x1E697F568];
  v221 = v35;
  v179 = v34;
  v178 = swift_getWitnessTable();
  v282 = v34;
  v283 = v178;
  v166 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v37 = sub_1E68B1E40();
  v171 = v37;
  v276 = v36;
  v277 = MEMORY[0x1E697E040];
  v169 = swift_getWitnessTable();
  v282 = v37;
  v283 = v169;
  swift_getOpaqueTypeMetadata2();
  v172 = sub_1E68B2220();
  v174 = sub_1E68B2B90();
  v173 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v175 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v180 = sub_1E68B2220();
  v161 = sub_1E68B2220();
  v38 = a5;
  v282 = a5;
  v39 = v220;
  v283 = v220;
  v284 = v220;
  v285 = v219;
  v286 = v213;
  v287 = a21;
  v40 = v205;
  v288 = v205;
  v289 = v205;
  v290 = v222;
  v291 = v206;
  v41 = type metadata accessor for FullWidthStageView();
  v177 = v41;
  v176 = swift_getWitnessTable();
  v282 = v41;
  v283 = v176;
  swift_getOpaqueTypeMetadata2();
  v42 = type metadata accessor for InfoActionCardView();
  v170 = v42;
  v168 = swift_getWitnessTable();
  v282 = v42;
  v283 = v168;
  swift_getOpaqueTypeMetadata2();
  v167 = sub_1E68B2220();
  v141 = sub_1E68B2220();
  v43 = v38;
  v282 = v38;
  v283 = v215;
  v284 = v217;
  v285 = a21;
  v286 = v214;
  v287 = v216;
  v44 = type metadata accessor for LargeBrickView();
  v165 = v44;
  v164 = swift_getWitnessTable();
  v282 = v44;
  v283 = v164;
  swift_getOpaqueTypeMetadata2();
  v45 = type metadata accessor for DynamicBrickView();
  v163 = v45;
  v162 = swift_getWitnessTable();
  v282 = v45;
  v283 = v162;
  swift_getOpaqueTypeMetadata2();
  v154 = sub_1E68B2220();
  v46 = type metadata accessor for MonogramVerticalStackView();
  v159 = v46;
  v158 = swift_getWitnessTable();
  v282 = v46;
  v283 = v158;
  swift_getOpaqueTypeMetadata2();
  v155 = sub_1E68B2220();
  v160 = sub_1E68B2220();
  sub_1E68B2220();
  v47 = type metadata accessor for StandardCardView();
  v157 = v47;
  v156 = swift_getWitnessTable();
  v282 = v47;
  v283 = v156;
  swift_getOpaqueTypeMetadata2();
  v282 = v43;
  v283 = v39;
  v284 = a21;
  v285 = v40;
  v48 = type metadata accessor for StandardHorizontalStackView();
  v153 = v48;
  v152 = swift_getWitnessTable();
  v282 = v48;
  v283 = v152;
  swift_getOpaqueTypeMetadata2();
  v138 = sub_1E68B2220();
  v49 = type metadata accessor for StandardVerticalStackView();
  v143 = v49;
  v151 = swift_getWitnessTable();
  v282 = v49;
  v283 = v151;
  swift_getOpaqueTypeMetadata2();
  v184 = v43;
  v147 = type metadata accessor for SummaryCardView();
  v150 = sub_1E68B2220();
  v135[0] = sub_1E68B2220();
  v50 = type metadata accessor for TallCardView();
  v148 = swift_getWitnessTable();
  v282 = v50;
  v283 = v148;
  swift_getOpaqueTypeMetadata2();
  v185 = a21;
  v51 = type metadata accessor for VerticalStackCardView();
  v142 = swift_getWitnessTable();
  v282 = v51;
  v283 = v142;
  swift_getOpaqueTypeMetadata2();
  v135[1] = sub_1E68B2220();
  v52 = type metadata accessor for WideBrickView();
  v136 = swift_getWitnessTable();
  v282 = v52;
  v283 = v136;
  swift_getOpaqueTypeMetadata2();
  v135[2] = sub_1E68B2220();
  v137 = sub_1E68B2220();
  v139 = sub_1E68B2220();
  v140 = sub_1E68B2220();
  v144 = sub_1E68B2B90();
  v145 = sub_1E68B1E40();
  v146 = sub_1E68B2220();
  v149 = sub_1E68B1E40();
  v181 = sub_1E68B1E40();
  v282 = v183;
  v283 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v282 = v179;
  v283 = v178;
  v54 = swift_getOpaqueTypeConformance2();
  v282 = v171;
  v283 = v169;
  v55 = swift_getOpaqueTypeConformance2();
  v274 = v54;
  v275 = v55;
  v273 = swift_getWitnessTable();
  v183 = MEMORY[0x1E6981600];
  v271 = swift_getWitnessTable();
  v272 = MEMORY[0x1E697E5D8];
  v56 = swift_getWitnessTable();
  v57 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v269 = v56;
  v270 = v57;
  v58 = swift_getWitnessTable();
  v59 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v267 = v58;
  v268 = v59;
  v60 = swift_getWitnessTable();
  v265 = OpaqueTypeConformance2;
  v266 = v60;
  v61 = swift_getWitnessTable();
  v282 = v177;
  v283 = v176;
  v62 = swift_getOpaqueTypeConformance2();
  v282 = v170;
  v283 = v168;
  v63 = swift_getOpaqueTypeConformance2();
  v263 = v62;
  v264 = v63;
  v64 = swift_getWitnessTable();
  v261 = v61;
  v262 = v64;
  v65 = swift_getWitnessTable();
  v282 = v165;
  v283 = v164;
  v66 = swift_getOpaqueTypeConformance2();
  v282 = v163;
  v283 = v162;
  v67 = swift_getOpaqueTypeConformance2();
  v259 = v66;
  v260 = v67;
  v68 = swift_getWitnessTable();
  v282 = v159;
  v283 = v158;
  v257 = swift_getOpaqueTypeConformance2();
  v258 = v67;
  v69 = swift_getWitnessTable();
  v255 = v68;
  v256 = v69;
  v70 = swift_getWitnessTable();
  v253 = v65;
  v254 = v70;
  v71 = swift_getWitnessTable();
  v282 = v157;
  v283 = v156;
  v72 = swift_getOpaqueTypeConformance2();
  v282 = v153;
  v283 = v152;
  v73 = swift_getOpaqueTypeConformance2();
  v251 = v72;
  v252 = v73;
  v74 = swift_getWitnessTable();
  v282 = v143;
  v283 = v151;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = swift_getWitnessTable();
  v249 = v75;
  v250 = v76;
  v77 = swift_getWitnessTable();
  v247 = v74;
  v248 = v77;
  v78 = swift_getWitnessTable();
  v282 = v50;
  v283 = v148;
  v79 = swift_getOpaqueTypeConformance2();
  v282 = v51;
  v283 = v142;
  v80 = swift_getOpaqueTypeConformance2();
  v245 = v79;
  v246 = v80;
  v81 = swift_getWitnessTable();
  v282 = v52;
  v283 = v136;
  v82 = swift_getOpaqueTypeConformance2();
  v243 = v222;
  v244 = v82;
  v83 = swift_getWitnessTable();
  v241 = v81;
  v242 = v83;
  v84 = swift_getWitnessTable();
  v239 = v78;
  v240 = v84;
  v85 = swift_getWitnessTable();
  v237 = v71;
  v238 = v85;
  v236 = swift_getWitnessTable();
  v234 = swift_getWitnessTable();
  v235 = v186;
  v86 = swift_getWitnessTable();
  v232 = MEMORY[0x1E6981E60];
  v233 = v86;
  v87 = swift_getWitnessTable();
  v88 = MEMORY[0x1E69805D0];
  v230 = v87;
  v231 = MEMORY[0x1E69805D0];
  v228 = swift_getWitnessTable();
  v229 = v88;
  v89 = v181;
  v90 = swift_getWitnessTable();
  v282 = v89;
  v283 = v90;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v282 = v89;
  v283 = v90;
  v186 = swift_getOpaqueTypeConformance2();
  v282 = OpaqueTypeMetadata2;
  v283 = v186;
  WitnessTable = OpaqueTypeMetadata2;
  v183 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v180 = sub_1E68B2220();
  v92 = v207;
  v93 = v209;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v282 = v93;
  v283 = v210;
  v284 = AssociatedConformanceWitness;
  v285 = v212;
  v181 = type metadata accessor for CanvasContextMenu();
  v95 = sub_1E68B1E40();
  v178 = v95;
  v96 = v187;
  v97 = swift_getWitnessTable();
  v98 = AssociatedTypeWitness;
  v99 = swift_getAssociatedConformanceWitness();
  v282 = v96;
  v283 = v98;
  v284 = v95;
  v285 = v97;
  v286 = v99;
  v100 = sub_1E68B2D40();
  v187 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v102 = v135 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x1EEE9AC00](v103);
  v179 = v135 - v105;
  v106 = v189;
  v107 = v190;
  v177 = *(v203 + *(v190 + 244));
  v108 = v188;
  (*(v189 + 16))(v188, v104);
  v109 = (*(v106 + 80) + 240) & ~*(v106 + 80);
  v110 = swift_allocObject();
  v111 = v220;
  *(v110 + 2) = v198;
  *(v110 + 3) = v111;
  v112 = v184;
  *(v110 + 4) = v199;
  *(v110 + 5) = v112;
  v113 = v217;
  *(v110 + 6) = v215;
  *(v110 + 7) = v113;
  v114 = v210;
  *(v110 + 8) = v209;
  *(v110 + 9) = v114;
  v115 = v192;
  v116 = v193;
  *(v110 + 10) = v219;
  *(v110 + 11) = v115;
  v117 = v194;
  v118 = v195;
  *(v110 + 12) = v116;
  *(v110 + 13) = v117;
  v119 = v196;
  *(v110 + 14) = v118;
  *(v110 + 15) = v119;
  v120 = v197;
  *(v110 + 16) = v213;
  *(v110 + 17) = v120;
  v121 = v205;
  *(v110 + 18) = v92;
  *(v110 + 19) = v121;
  v122 = v214;
  *(v110 + 20) = v185;
  *(v110 + 21) = v122;
  v123 = v212;
  *(v110 + 22) = v216;
  *(v110 + 23) = v123;
  v124 = v200;
  *(v110 + 24) = v222;
  *(v110 + 25) = v124;
  v125 = v202;
  *(v110 + 26) = v201;
  *(v110 + 27) = v125;
  v126 = v211;
  *(v110 + 28) = v206;
  *(v110 + 29) = v126;
  (*(v106 + 32))(&v110[v109], v108, v107);

  v282 = WitnessTable;
  v127 = v186;
  v283 = v186;
  v226 = swift_getOpaqueTypeConformance2();
  v227 = v127;
  v128 = swift_getWitnessTable();
  v129 = swift_getWitnessTable();
  v224 = v128;
  v225 = v129;
  v130 = swift_getWitnessTable();
  sub_1E68B2D20();
  v223 = v130;
  v131 = swift_getWitnessTable();
  v132 = v179;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v102, v100, v131);
  v133 = *(v187 + 8);
  v133(v102, v100);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v132, v100, v131);
  return (v133)(v132, v100);
}

uint64_t sub_1E681FDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v366 = a8;
  v363 = a7;
  v360 = a6;
  v362 = a5;
  v339 = a4;
  v351 = a3;
  v330 = a2;
  v337 = a1;
  v317 = a9;
  v355 = a30;
  v342 = a29;
  v343 = a28;
  v341 = a27;
  v368 = a24;
  v365 = a23;
  v361 = a22;
  v364 = a21;
  v354 = a18;
  v358 = a17;
  v349 = a16;
  v350 = a15;
  v352 = a14;
  v357 = a13;
  v353 = a26;
  v367 = a12;
  v340 = a19;
  v359 = a10;
  v32 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v314 = v266 - v33;
  v348 = a31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v428 = a11;
  v347 = *(&a11 + 1);
  v344 = a11;
  *&v429 = AssociatedConformanceWitness;
  *(&v429 + 1) = a25;
  v338 = a25;
  v327 = type metadata accessor for CanvasContextMenu();
  v316 = *(v327 - 8);
  MEMORY[0x1EEE9AC00](v327);
  v313 = v266 - v34;
  v346 = a20;
  v320 = *(a20 - 8);
  v333 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v331 = v266 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v428 = v339;
  *(&v428 + 1) = a5;
  *&v429 = v360;
  v37 = v363;
  *(&v429 + 1) = v363;
  v430 = v366;
  v431 = a10;
  v432 = a11;
  v433 = a12;
  v434 = v357;
  v435 = v352;
  v436 = v350;
  v437 = v349;
  v438 = v358;
  v439 = v354;
  v440 = a19;
  v441 = a20;
  v38 = v364;
  v442 = v364;
  v39 = v361;
  v443 = v361;
  v444 = v365;
  v445 = v368;
  v446 = a25;
  v40 = v353;
  v447 = v353;
  v448 = v341;
  v449 = v343;
  v450 = v342;
  v41 = v355;
  v451 = v355;
  v452 = a31;
  v356 = type metadata accessor for OrthogonalView();
  v345 = *(v356 - 8);
  v334 = *(v345 + 64);
  MEMORY[0x1EEE9AC00](v356);
  v326 = v266 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v312 = v266 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v329 = v266 - v46;
  *&v428 = v37;
  *(&v428 + 1) = v362;
  *&v429 = v362;
  *(&v429 + 1) = v39;
  v430 = v38;
  v431 = v38;
  v47 = type metadata accessor for ActionCardView();
  v335 = v47;
  WitnessTable = swift_getWitnessTable();
  *&v428 = v47;
  *(&v428 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v325 = sub_1E68B2440();
  sub_1E68B1E40();
  v48 = sub_1E68B1E40();
  v336 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v426 = v39;
  v427 = v336;
  v49 = MEMORY[0x1E697E858];
  v50 = swift_getWitnessTable();
  v424 = v50;
  v425 = MEMORY[0x1E697F568];
  v328 = v49;
  v318 = v48;
  v307 = swift_getWitnessTable();
  *&v428 = v48;
  *(&v428 + 1) = v307;
  v295 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v51 = sub_1E68B1E40();
  v300 = v51;
  v422 = v50;
  v423 = MEMORY[0x1E697E040];
  v298 = swift_getWitnessTable();
  *&v428 = v51;
  *(&v428 + 1) = v298;
  swift_getOpaqueTypeMetadata2();
  v301 = sub_1E68B2220();
  v303 = sub_1E68B2B90();
  v302 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v304 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v319 = sub_1E68B2220();
  v290 = sub_1E68B2220();
  v52 = v363;
  *&v428 = v363;
  v53 = v362;
  *(&v428 + 1) = v362;
  *&v429 = v362;
  *(&v429 + 1) = v367;
  v430 = v354;
  v54 = v361;
  v431 = v361;
  v55 = v364;
  *&v432 = v364;
  *(&v432 + 1) = v364;
  v433 = v40;
  v434 = v41;
  v56 = type metadata accessor for FullWidthStageView();
  v306 = v56;
  v305 = swift_getWitnessTable();
  *&v428 = v56;
  *(&v428 + 1) = v305;
  swift_getOpaqueTypeMetadata2();
  v57 = v53;
  v58 = type metadata accessor for InfoActionCardView();
  v299 = v58;
  v297 = swift_getWitnessTable();
  *&v428 = v58;
  *(&v428 + 1) = v297;
  swift_getOpaqueTypeMetadata2();
  v296 = sub_1E68B2220();
  v272 = sub_1E68B2220();
  v59 = v52;
  *&v428 = v52;
  *(&v428 + 1) = v366;
  *&v429 = v359;
  *(&v429 + 1) = v54;
  v430 = v365;
  v431 = v368;
  v60 = type metadata accessor for LargeBrickView();
  v294 = v60;
  v293 = swift_getWitnessTable();
  *&v428 = v60;
  *(&v428 + 1) = v293;
  swift_getOpaqueTypeMetadata2();
  v61 = type metadata accessor for DynamicBrickView();
  v292 = v61;
  v291 = swift_getWitnessTable();
  *&v428 = v61;
  *(&v428 + 1) = v291;
  swift_getOpaqueTypeMetadata2();
  v283 = sub_1E68B2220();
  v62 = type metadata accessor for MonogramVerticalStackView();
  v288 = v62;
  v287 = swift_getWitnessTable();
  *&v428 = v62;
  *(&v428 + 1) = v287;
  swift_getOpaqueTypeMetadata2();
  v284 = sub_1E68B2220();
  v289 = sub_1E68B2220();
  v266[0] = sub_1E68B2220();
  v63 = type metadata accessor for StandardCardView();
  v286 = v63;
  v285 = swift_getWitnessTable();
  *&v428 = v63;
  *(&v428 + 1) = v285;
  swift_getOpaqueTypeMetadata2();
  *&v428 = v59;
  *(&v428 + 1) = v57;
  *&v429 = v54;
  *(&v429 + 1) = v55;
  v64 = type metadata accessor for StandardHorizontalStackView();
  v282 = v64;
  v281 = swift_getWitnessTable();
  *&v428 = v64;
  *(&v428 + 1) = v281;
  swift_getOpaqueTypeMetadata2();
  v269 = sub_1E68B2220();
  v65 = type metadata accessor for StandardVerticalStackView();
  v280 = v65;
  v279 = swift_getWitnessTable();
  *&v428 = v65;
  *(&v428 + 1) = v279;
  swift_getOpaqueTypeMetadata2();
  v276 = type metadata accessor for SummaryCardView();
  v278 = sub_1E68B2220();
  v266[1] = sub_1E68B2220();
  v66 = type metadata accessor for TallCardView();
  v277 = swift_getWitnessTable();
  *&v428 = v66;
  *(&v428 + 1) = v277;
  swift_getOpaqueTypeMetadata2();
  v67 = type metadata accessor for VerticalStackCardView();
  v273 = swift_getWitnessTable();
  *&v428 = v67;
  *(&v428 + 1) = v273;
  swift_getOpaqueTypeMetadata2();
  v266[2] = sub_1E68B2220();
  v68 = type metadata accessor for WideBrickView();
  v267 = swift_getWitnessTable();
  *&v428 = v68;
  *(&v428 + 1) = v267;
  swift_getOpaqueTypeMetadata2();
  v266[3] = sub_1E68B2220();
  v268 = sub_1E68B2220();
  v270 = sub_1E68B2220();
  v271 = sub_1E68B2220();
  v274 = sub_1E68B2B90();
  v275 = sub_1E68B1E40();
  v322 = sub_1E68B2220();
  v309 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322);
  v323 = v266 - v69;
  v324 = sub_1E68B1E40();
  v310 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v325 = v266 - v70;
  v321 = sub_1E68B1E40();
  v311 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321);
  v308 = v266 - v71;
  *&v428 = v335;
  *(&v428 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v428 = v318;
  *(&v428 + 1) = v307;
  v73 = swift_getOpaqueTypeConformance2();
  *&v428 = v300;
  *(&v428 + 1) = v298;
  v74 = swift_getOpaqueTypeConformance2();
  v420 = v73;
  v421 = v74;
  v75 = MEMORY[0x1E697F968];
  v419 = swift_getWitnessTable();
  v417 = swift_getWitnessTable();
  v418 = MEMORY[0x1E697E5D8];
  v76 = swift_getWitnessTable();
  v77 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v415 = v76;
  v416 = v77;
  v78 = swift_getWitnessTable();
  v79 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v413 = v78;
  v414 = v79;
  v80 = swift_getWitnessTable();
  v411 = OpaqueTypeConformance2;
  v412 = v80;
  v81 = swift_getWitnessTable();
  *&v428 = v306;
  *(&v428 + 1) = v305;
  v82 = swift_getOpaqueTypeConformance2();
  *&v428 = v299;
  *(&v428 + 1) = v297;
  v83 = swift_getOpaqueTypeConformance2();
  v409 = v82;
  v410 = v83;
  v84 = swift_getWitnessTable();
  v407 = v81;
  v408 = v84;
  v85 = swift_getWitnessTable();
  *&v428 = v294;
  *(&v428 + 1) = v293;
  v86 = swift_getOpaqueTypeConformance2();
  *&v428 = v292;
  *(&v428 + 1) = v291;
  v87 = swift_getOpaqueTypeConformance2();
  v405 = v86;
  v406 = v87;
  v88 = swift_getWitnessTable();
  *&v428 = v288;
  *(&v428 + 1) = v287;
  v403 = swift_getOpaqueTypeConformance2();
  v404 = v87;
  v89 = swift_getWitnessTable();
  v401 = v88;
  v402 = v89;
  v90 = swift_getWitnessTable();
  v399 = v85;
  v400 = v90;
  v91 = swift_getWitnessTable();
  *&v428 = v286;
  *(&v428 + 1) = v285;
  v92 = swift_getOpaqueTypeConformance2();
  *&v428 = v282;
  *(&v428 + 1) = v281;
  v93 = swift_getOpaqueTypeConformance2();
  v397 = v92;
  v398 = v93;
  v94 = swift_getWitnessTable();
  *&v428 = v280;
  *(&v428 + 1) = v279;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = swift_getWitnessTable();
  v395 = v95;
  v396 = v96;
  v97 = swift_getWitnessTable();
  v393 = v94;
  v394 = v97;
  v98 = swift_getWitnessTable();
  *&v428 = v66;
  *(&v428 + 1) = v277;
  v99 = swift_getOpaqueTypeConformance2();
  *&v428 = v67;
  *(&v428 + 1) = v273;
  v100 = swift_getOpaqueTypeConformance2();
  v391 = v99;
  v392 = v100;
  v101 = swift_getWitnessTable();
  *&v428 = v68;
  *(&v428 + 1) = v267;
  v102 = swift_getOpaqueTypeConformance2();
  v103 = v353;
  v389 = v353;
  v390 = v102;
  v104 = swift_getWitnessTable();
  v387 = v101;
  v388 = v104;
  v105 = swift_getWitnessTable();
  v385 = v98;
  v386 = v105;
  v106 = swift_getWitnessTable();
  v383 = v91;
  v384 = v106;
  v307 = v75;
  v382 = swift_getWitnessTable();
  v380 = swift_getWitnessTable();
  v381 = v336;
  v107 = swift_getWitnessTable();
  v378 = MEMORY[0x1E6981E60];
  v379 = v107;
  v292 = swift_getWitnessTable();
  v108 = MEMORY[0x1E69805D0];
  v376 = v292;
  v377 = MEMORY[0x1E69805D0];
  v297 = swift_getWitnessTable();
  v374 = v297;
  v375 = v108;
  v109 = v321;
  v110 = swift_getWitnessTable();
  *&v428 = v109;
  *(&v428 + 1) = v110;
  v111 = v110;
  v295 = v110;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v296 = OpaqueTypeMetadata2;
  v301 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v294 = v266 - v113;
  *&v428 = v109;
  *(&v428 + 1) = v111;
  v298 = swift_getOpaqueTypeConformance2();
  *&v428 = OpaqueTypeMetadata2;
  *(&v428 + 1) = v298;
  v302 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v300 = sub_1E68B2220();
  v304 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v293 = v266 - v114;
  v115 = sub_1E68B1E40();
  v116 = *(v115 - 8);
  v305 = v115;
  v306 = v116;
  MEMORY[0x1EEE9AC00](v115);
  v299 = v266 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1EEE9AC00](v118);
  v303 = v266 - v120;
  v121 = v345;
  v122 = *(v345 + 16);
  v335 = v345 + 16;
  v336 = v122;
  v123 = v329;
  (v122)(v329, v351, v356, v119);
  v124 = v320;
  v125 = v346;
  (*(v320 + 16))(v331, v330, v346);
  v126 = *(v121 + 80);
  v127 = v121;
  v128 = (v126 + 240) & ~v126;
  v287 = v128 + v334;
  WitnessTable = v128;
  v334 = v126 | 7;
  v129 = (v287 + *(v124 + 80)) & ~*(v124 + 80);
  v130 = swift_allocObject();
  v131 = v362;
  *(v130 + 2) = v339;
  *(v130 + 3) = v131;
  v132 = v363;
  *(v130 + 4) = v360;
  *(v130 + 5) = v132;
  v133 = v359;
  *(v130 + 6) = v366;
  *(v130 + 7) = v133;
  v134 = v347;
  *(v130 + 8) = v344;
  *(v130 + 9) = v134;
  v135 = v357;
  *(v130 + 10) = v367;
  *(v130 + 11) = v135;
  v136 = v350;
  *(v130 + 12) = v352;
  *(v130 + 13) = v136;
  v137 = v358;
  *(v130 + 14) = v349;
  *(v130 + 15) = v137;
  v138 = v340;
  *(v130 + 16) = v354;
  *(v130 + 17) = v138;
  v139 = v364;
  *(v130 + 18) = v125;
  *(v130 + 19) = v139;
  v140 = v365;
  *(v130 + 20) = v361;
  *(v130 + 21) = v140;
  v141 = v338;
  *(v130 + 22) = v368;
  *(v130 + 23) = v141;
  *(v130 + 24) = v103;
  v142 = v341;
  v143 = v343;
  *(v130 + 25) = v341;
  *(v130 + 26) = v143;
  v144 = v355;
  *(v130 + 27) = v342;
  *(v130 + 28) = v144;
  *(v130 + 29) = v348;
  v145 = *(v127 + 32);
  v345 = v127 + 32;
  v333 = v145;
  v146 = v356;
  v145(&v130[v128], v123, v356);
  v147 = v125;
  (*(v124 + 32))(&v130[v129], v331, v125);
  v148 = v146[67];
  v149 = (v351 + v146[68]);
  v150 = v149[1];
  v291 = *v149;
  v151 = (v351 + v146[69]);
  v153 = *v151;
  v152 = v151[1];
  v289 = v148;
  v290 = v153;
  v319 = v152;
  v320 = v150;
  v154 = (v351 + v146[70]);
  v156 = *v154;
  v155 = v154[1];
  v288 = v156;
  v318 = v155;
  v157 = v312;
  v336(v312);
  v331 = ((v287 + 7) & 0xFFFFFFFFFFFFFFF8);
  v158 = swift_allocObject();
  v159 = v339;
  v160 = v362;
  *(v158 + 16) = v339;
  *(v158 + 24) = v160;
  v161 = v363;
  *(v158 + 32) = v360;
  *(v158 + 40) = v161;
  v162 = v359;
  *(v158 + 48) = v366;
  *(v158 + 56) = v162;
  v163 = v347;
  *(v158 + 64) = v344;
  *(v158 + 72) = v163;
  v164 = v357;
  *(v158 + 80) = v367;
  *(v158 + 88) = v164;
  v165 = v350;
  *(v158 + 96) = v352;
  *(v158 + 104) = v165;
  v166 = v358;
  *(v158 + 112) = v349;
  *(v158 + 120) = v166;
  v167 = v354;
  v168 = v340;
  *(v158 + 128) = v354;
  *(v158 + 136) = v168;
  v169 = v364;
  *(v158 + 144) = v147;
  *(v158 + 152) = v169;
  v170 = v365;
  *(v158 + 160) = v361;
  *(v158 + 168) = v170;
  v171 = v338;
  *(v158 + 176) = v368;
  *(v158 + 184) = v171;
  *(v158 + 192) = v353;
  *(v158 + 200) = v142;
  v172 = v343;
  v173 = v342;
  *(v158 + 208) = v343;
  *(v158 + 216) = v173;
  v174 = v348;
  *(v158 + 224) = v355;
  *(v158 + 232) = v174;
  v175 = v157;
  v176 = v356;
  v333(v158 + WitnessTable, v175, v356);
  *&v331[v158] = v337;
  (v336)(v326, v351, v176);
  v177 = swift_allocObject();
  v178 = v362;
  *(v177 + 16) = v159;
  *(v177 + 24) = v178;
  v179 = v363;
  *(v177 + 32) = v360;
  *(v177 + 40) = v179;
  v180 = v359;
  *(v177 + 48) = v366;
  *(v177 + 56) = v180;
  v181 = v347;
  *(v177 + 64) = v344;
  *(v177 + 72) = v181;
  v182 = v357;
  *(v177 + 80) = v367;
  *(v177 + 88) = v182;
  v183 = v350;
  *(v177 + 96) = v352;
  *(v177 + 104) = v183;
  v184 = v358;
  *(v177 + 112) = v349;
  *(v177 + 120) = v184;
  *(v177 + 128) = v167;
  *(v177 + 136) = v168;
  v185 = v364;
  *(v177 + 144) = v346;
  *(v177 + 152) = v185;
  v186 = v365;
  *(v177 + 160) = v361;
  *(v177 + 168) = v186;
  *(v177 + 176) = v368;
  *(v177 + 184) = v171;
  v187 = v341;
  *(v177 + 192) = v353;
  *(v177 + 200) = v187;
  v188 = v342;
  *(v177 + 208) = v172;
  *(v177 + 216) = v188;
  v189 = v348;
  *(v177 + 224) = v355;
  *(v177 + 232) = v189;
  v333(v177 + WitnessTable, v326, v356);
  *&v331[v177] = v337;
  v190 = v354;
  v191 = v363;
  v192 = v366;
  v193 = v359;
  v194 = v362;
  v195 = v348;
  sub_1E6892048(&v428);
  v373[0] = v428;
  v373[1] = v429;

  v264 = v193;
  v196 = v351;
  CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)(sub_1E6823C58, v130, v351 + v289, v373, v291, v320, v290, v319, v323, v288, v318, sub_1E6823E2C, v158, sub_1E6823E44, v177, v346, v190, v191, v192, v264, v367, v194, v195, v355, v361, v365, v368, v353, v364);

  v197 = v329;
  v198 = v196;
  v199 = v356;
  (v336)(v329, v198, v356);
  v200 = v331;
  v201 = swift_allocObject();
  v202 = v339;
  v203 = v362;
  *(v201 + 16) = v339;
  *(v201 + 24) = v203;
  v204 = v363;
  *(v201 + 32) = v360;
  *(v201 + 40) = v204;
  v205 = v359;
  *(v201 + 48) = v366;
  *(v201 + 56) = v205;
  v206 = v344;
  v207 = v347;
  *(v201 + 64) = v344;
  *(v201 + 72) = v207;
  v208 = v357;
  *(v201 + 80) = v367;
  *(v201 + 88) = v208;
  v209 = v352;
  v210 = v350;
  *(v201 + 96) = v352;
  *(v201 + 104) = v210;
  v211 = v358;
  *(v201 + 112) = v349;
  *(v201 + 120) = v211;
  v212 = v340;
  *(v201 + 128) = v354;
  *(v201 + 136) = v212;
  v213 = v364;
  *(v201 + 144) = v346;
  *(v201 + 152) = v213;
  v214 = v365;
  *(v201 + 160) = v361;
  *(v201 + 168) = v214;
  v215 = v338;
  *(v201 + 176) = v368;
  *(v201 + 184) = v215;
  v216 = v341;
  *(v201 + 192) = v353;
  *(v201 + 200) = v216;
  v217 = v342;
  *(v201 + 208) = v343;
  *(v201 + 216) = v217;
  v218 = v348;
  *(v201 + 224) = v355;
  *(v201 + 232) = v218;
  v333(v201 + WitnessTable, v197, v199);
  v219 = v337;
  *&v200[v201] = v337;
  v221 = v322;
  v220 = v323;
  sub_1E68B2AA0();

  (*(v309 + 8))(v220, v221);
  v222 = v351;
  v223 = v356;
  (v336)(v197, v351, v356);
  v224 = v331;
  v225 = swift_allocObject();
  v226 = v362;
  *(v225 + 16) = v202;
  *(v225 + 24) = v226;
  v227 = v363;
  *(v225 + 32) = v360;
  *(v225 + 40) = v227;
  v228 = v359;
  *(v225 + 48) = v366;
  *(v225 + 56) = v228;
  v229 = v347;
  *(v225 + 64) = v206;
  *(v225 + 72) = v229;
  v230 = v357;
  *(v225 + 80) = v367;
  *(v225 + 88) = v230;
  v231 = v350;
  *(v225 + 96) = v209;
  *(v225 + 104) = v231;
  v232 = v358;
  *(v225 + 112) = v349;
  *(v225 + 120) = v232;
  v233 = v340;
  *(v225 + 128) = v354;
  *(v225 + 136) = v233;
  v234 = v364;
  *(v225 + 144) = v346;
  *(v225 + 152) = v234;
  v235 = v365;
  *(v225 + 160) = v361;
  *(v225 + 168) = v235;
  v236 = v338;
  *(v225 + 176) = v368;
  *(v225 + 184) = v236;
  v237 = v341;
  *(v225 + 192) = v353;
  *(v225 + 200) = v237;
  *(v225 + 208) = v343;
  *(v225 + 216) = v217;
  v238 = v348;
  *(v225 + 224) = v355;
  *(v225 + 232) = v238;
  v239 = v223;
  v333(v225 + WitnessTable, v329, v223);
  *&v224[v225] = v219;
  v240 = v308;
  v242 = v324;
  v241 = v325;
  sub_1E68B27E0();

  (*(v310 + 8))(v241, v242);
  sub_1E68B24B0();
  sub_1E68B2E30();
  v243 = v294;
  v244 = v321;
  sub_1E68B2960();
  (*(v311 + 8))(v240, v244);
  v265 = v217;
  v245 = v222 + *(v239 + 252);
  v246 = v298;
  v247 = v346;
  v248 = v293;
  v249 = v296;
  sub_1E6814294(v330, v245, v337, v296, v293, v352, v358, v340, v346, v298, v265, v238);
  (*(v301 + 8))(v243, v249);
  v250 = v238;
  v251 = *(v238 + 168);
  v252 = v314;
  v251(v247, v250);
  v253 = v313;
  sub_1E67C02C4(v252, *(v351 + *(v356 + 288)), *(v351 + *(v356 + 288) + 8), v313);

  *&v428 = v249;
  *(&v428 + 1) = v246;
  v371 = swift_getOpaqueTypeConformance2();
  v372 = v246;
  v254 = v300;
  v255 = swift_getWitnessTable();
  v256 = v299;
  v257 = v327;
  MEMORY[0x1E69512E0](v253, v254, v327, v255);
  (*(v316 + 8))(v253, v257);
  (*(v304 + 8))(v248, v254);
  v258 = swift_getWitnessTable();
  v369 = v255;
  v370 = v258;
  v259 = v305;
  v260 = swift_getWitnessTable();
  v261 = v303;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v256, v259, v260);
  v262 = *(v306 + 8);
  v262(v256, v259);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v261, v259, v260);
  return (v262)(v261, v259);
}

uint64_t (*sub_1E6821D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30))(uint64_t a1)
{
  v30 = *(a12 - 8);
  v31 = MEMORY[0x1EEE9AC00](a17);
  v33 = v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[0] = v34;
  v55[1] = v35;
  v55[2] = v36;
  v55[3] = v37;
  v55[4] = v38;
  v55[5] = v39;
  v56 = v40;
  v57 = v41;
  v58 = a12;
  v59 = v43;
  v60 = v42;
  v61 = v44;
  v62 = v45;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  *(v46 + 168) = v49;
  *(v46 + 184) = v31;
  v63 = a19;
  v64 = v51;
  v65 = v50;
  v66 = a30;
  v52 = type metadata accessor for OrthogonalView();
  result = sub_1E6817B74(v52);
  if (result)
  {
    v54 = result;
    (*(a30 + 152))(a19, a30);
    v54(v33);
    sub_1E672E440(v54);
    return (*(v30 + 8))(v33, a12);
  }

  return result;
}

uint64_t sub_1E6821F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v55 - v30;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v55 - v33;
  v55[0] = v35;
  v55[1] = v36;
  v55[2] = v37;
  v55[3] = v38;
  v55[4] = v39;
  v56 = v40;
  v57 = v41;
  v58 = a12;
  v59 = v42;
  v60 = v43;
  v61 = v44;
  v62 = v45;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  v63 = v49;
  v64 = a26;
  *(v46 + 184) = v50;
  *(v46 + 200) = v32;
  v65 = v51;
  v52 = type metadata accessor for OrthogonalView();
  sub_1E68177E8(v52);
  sub_1E67D5458(a1, a3);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v31, a12, a26);
  v53 = *(v28 + 8);
  v53(v31, a12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v34, a12, a26);
  return (v53)(v34, a12);
}

uint64_t sub_1E6822130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v51 - v26;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v51 - v29;
  v51[0] = v31;
  v51[1] = v32;
  v51[2] = v33;
  v51[3] = v34;
  v51[4] = v35;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v55 = v39;
  v56 = v40;
  v57 = v42;
  v58 = v41;
  v59 = a21;
  v60 = v44;
  v61 = v43;
  v62 = v45;
  v63 = v28;
  v64 = v47;
  v65 = v46;
  v48 = type metadata accessor for OrthogonalView();
  sub_1E68175D4(v48);
  sub_1E67D41E8(a1, a3, 0);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v27, a5, a21);
  v49 = *(v24 + 8);
  v49(v27, a5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v30, a5, a21);
  return (v49)(v30, a5);
}

void (*sub_1E6822314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t (*a31)(uint64_t)))(uint64_t)
{
  v32 = type metadata accessor for OrthogonalView();
  result = a31(v32);
  if (result)
  {
    v34 = result;
    result(a2);
    return sub_1E672E440(v34);
  }

  return result;
}

uint64_t sub_1E68223C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v146 = a1;
  v155 = a9;
  v156 = a26;
  *&v171 = a2;
  *(&v171 + 1) = a3;
  v129 = a4;
  *&v172 = a4;
  *(&v172 + 1) = a5;
  v131 = a5;
  v133 = a6;
  v173 = a6;
  v174 = a7;
  v135 = a7;
  v137 = a8;
  v175 = a8;
  v118 = a10;
  v119 = a11;
  v176 = a10;
  v177 = a11;
  v121 = a12;
  v122 = a13;
  v178 = a12;
  v179 = a13;
  v180 = a14;
  v181 = a15;
  v125 = a16;
  v126 = a17;
  v182 = a16;
  v183 = a17;
  v127 = a18;
  v184 = a18;
  v185 = a19;
  v186 = a20;
  v130 = a21;
  v187 = a21;
  v132 = a22;
  v188 = a22;
  v134 = a23;
  v189 = a23;
  v136 = a24;
  v190 = a24;
  v138 = a25;
  v139 = a28;
  v191 = a25;
  v192 = a26;
  v193 = a27;
  v194 = a28;
  v140 = a29;
  v195 = a29;
  v196 = a30;
  v120 = type metadata accessor for OrthogonalView();
  v117 = *(v120 - 8);
  v116 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v147 = &v113 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v148 = a3;
  *&v171 = a3;
  *(&v171 + 1) = a15;
  v142 = a15;
  v143 = a20;
  *&v172 = a20;
  *(&v172 + 1) = a27;
  v145 = a27;
  v33 = type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  v153 = v33;
  v154 = sub_1E68B1E40();
  v34 = sub_1E68B2220();
  v150 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v144 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v113 - v37;
  v141 = a30;
  v128 = a19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v123 = a2;
  v124 = a14;
  *&v171 = a2;
  *(&v171 + 1) = a14;
  *&v172 = AssociatedConformanceWitness;
  *(&v172 + 1) = v156;
  v40 = type metadata accessor for CanvasSectionHeader();
  v41 = sub_1E68B3750();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v113 - v43;
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v113 - v47;
  v49 = sub_1E68B3750();
  v151 = *(v49 - 8);
  v152 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v157 = &v113 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v149 = &v113 - v53;
  v54 = v146;
  (*(v42 + 16))(v44, v52);
  if ((*(v45 + 48))(v44, 1, v40) == 1)
  {
    (*(v42 + 8))(v44, v41);
    (*(v150 + 56))(v157, 1, 1, v34);
    v55 = sub_1E673F2EC();
    WitnessTable = swift_getWitnessTable();
    v57 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
    v169 = WitnessTable;
    v170 = v57;
    v58 = swift_getWitnessTable();
    v167 = v55;
    v168 = v58;
    swift_getWitnessTable();
  }

  else
  {
    (*(v45 + 32))(v48, v44, v40);
    v114 = v48;
    v115 = v45;
    v59 = v117;
    v60 = v54;
    v61 = v120;
    (*(v117 + 16))(v147, v54, v120);
    v62 = (*(v59 + 80) + 240) & ~*(v59 + 80);
    v63 = swift_allocObject();
    v64 = v148;
    *(v63 + 2) = v123;
    *(v63 + 3) = v64;
    v65 = v131;
    *(v63 + 4) = v129;
    *(v63 + 5) = v65;
    v66 = v135;
    *(v63 + 6) = v133;
    *(v63 + 7) = v66;
    v67 = v118;
    v68 = v119;
    *(v63 + 8) = v137;
    *(v63 + 9) = v67;
    v69 = v121;
    v70 = v122;
    *(v63 + 10) = v68;
    *(v63 + 11) = v69;
    v72 = v124;
    v71 = v125;
    *(v63 + 12) = v70;
    *(v63 + 13) = v72;
    v137 = v34;
    v73 = v142;
    *(v63 + 14) = v142;
    *(v63 + 15) = v71;
    v74 = v127;
    *(v63 + 16) = v126;
    *(v63 + 17) = v74;
    v135 = v38;
    v75 = v143;
    *(v63 + 18) = v128;
    *(v63 + 19) = v75;
    v76 = v132;
    *(v63 + 20) = v130;
    *(v63 + 21) = v76;
    v77 = v136;
    *(v63 + 22) = v134;
    *(v63 + 23) = v77;
    v78 = v156;
    *(v63 + 24) = v138;
    *(v63 + 25) = v78;
    v79 = v145;
    v80 = v139;
    v81 = v140;
    *(v63 + 26) = v145;
    *(v63 + 27) = v80;
    v82 = v141;
    *(v63 + 28) = v81;
    *(v63 + 29) = v82;
    (*(v59 + 32))(&v63[v62], v147, v61);
    v83 = v60 + v61[73];
    v84 = *v83;
    v85 = *(v83 + 8);
    v86 = (v60 + v61[64]);
    v87 = v86[1];
    v171 = *v86;
    v172 = v87;
    LODWORD(v60) = *(v60 + v61[66]);

    v111 = v75;
    v112 = v79;
    v110 = v73;
    v88 = v137;
    v89 = v144;
    v90 = v114;
    sub_1E68AF848(sub_1E6823354, v63, v84, v85, &v171, v60, v40, v148, v144, v110, v111, v112);

    (*(v115 + 8))(v90, v40);
    v91 = sub_1E673F2EC();
    v92 = swift_getWitnessTable();
    v93 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
    v160 = v92;
    v161 = v93;
    v94 = swift_getWitnessTable();
    v158 = v91;
    v159 = v94;
    v95 = swift_getWitnessTable();
    v96 = v135;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v89, v88, v95);
    v97 = v150;
    v98 = *(v150 + 8);
    v98(v89, v88);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v96, v88, v95);
    v98(v96, v88);
    v99 = v157;
    (*(v97 + 32))(v157, v89, v88);
    (*(v97 + 56))(v99, 0, 1, v88);
  }

  v100 = v149;
  v101 = v157;
  sub_1E67FDFA4(v157, v149);
  v102 = v152;
  v103 = *(v151 + 8);
  v103(v101, v152);
  v104 = sub_1E673F2EC();
  v105 = swift_getWitnessTable();
  v106 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v165 = v105;
  v166 = v106;
  v107 = swift_getWitnessTable();
  v163 = v104;
  v164 = v107;
  v162 = swift_getWitnessTable();
  v108 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v100, v102, v108);
  return (v103)(v100, v102);
}

uint64_t sub_1E6822DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  v49 = a7;
  v47 = a6;
  v45 = a5;
  v43 = a4;
  v52 = a1;
  v54 = a8;
  v51 = a21;
  v50 = a20;
  v48 = a19;
  v46 = a18;
  v44 = a17;
  v42 = a16;
  v41 = a13;
  v40 = a12;
  v39 = a11;
  v38 = a10;
  v37 = a9;
  v53 = sub_1E68B3750();
  v23 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v25 = &v37 - v24;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v37 - v31;
  v55 = a2;
  v56 = a3;
  v57 = v43;
  v58 = v45;
  v59 = v47;
  v60 = v49;
  v61 = v37;
  v62 = v38;
  v63 = v39;
  v64 = v40;
  v65 = v41;
  v66 = a14;
  v67 = a15;
  v68 = v42;
  v69 = v44;
  v70 = v46;
  v71 = v48;
  v72 = v50;
  v73 = v51;
  v33 = type metadata accessor for OrthogonalView();
  sub_1E68175D4(v33);
  v34 = *(a2 - 8);
  (*(v34 + 16))(v25, v52, a2);
  (*(v34 + 56))(v25, 0, 1, a2);
  sub_1E67D41E8(v25, 0, 1);

  (*(v23 + 8))(v25, v53);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v29, a3, a15);
  v35 = *(v26 + 8);
  v35(v29, a3);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v32, a3, a15);
  return (v35)(v32, a3);
}