uint64_t sub_1D17D7874(uint64_t a1, uint64_t a2)
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

  v27 = MEMORY[0x1E69E7CC0];
  sub_1D178D0B4(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_1D178D0B4((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 4 * v16 + 32) = v13 * v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 4 * v6);
        v19 = *(v25 + 32 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_1D178D0B4((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v18 * v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17D7A50(uint64_t a1, uint64_t a2, char a3)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F28, &unk_1D1E74560);
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F78, &qword_1D1E746D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  if (a3)
  {
    (*(v14 + 104))(&v27 - v19, *MEMORY[0x1E69E8650], v13);
  }

  else
  {
    *v18 = v27;
    (*(v14 + 104))(v18, *MEMORY[0x1E69E8640], v13);
    (*(v14 + 32))(v20, v18, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F80, &unk_1D1E746E0);
  v21 = sub_1D1E67E8C();
  MEMORY[0x1EEE9AC00](v21);
  *(&v27 - 2) = v12;

  os_unfair_lock_lock((a1 + 48));
  sub_1D17D8F44((a1 + 16), &v31);
  os_unfair_lock_unlock((a1 + 48));
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v22;
  sub_1D1E67EAC();
  v31 = v23;
  v32 = v24;
  sub_1D1E67ECC();
  (*(v29 + 8))(v8, v30);
  (*(v14 + 8))(v20, v13);
  return (*(v28 + 8))(v12, v9);
}

uint64_t sub_1D17D7DE8(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F88, &unk_1D1E97C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - v7;
  os_unfair_lock_lock(a2 + 12);
  sub_1D17D7EAC(&a2[4], a3, v8);
  os_unfair_lock_unlock(a2 + 12);
  return sub_1D1741A30(v8, &qword_1EC643F88, &unk_1D1E97C60);
}

uint64_t sub_1D17D7EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v6 = sub_1D17420B0(a2);
  if (v7)
  {
    v8 = v6;
    v9 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 24);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1734858();
    }

    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
    v14 = *(v13 - 8);
    (*(v14 + 32))(a3, v12 + *(v14 + 72) * v8, v13);
    sub_1D174F3D0(v8, v11);
    *(a1 + 24) = v11;
    return (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

uint64_t sub_1D17D8030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F88, &unk_1D1E97C60);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v16 - v9;
  v11 = a1[2];
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    a1[2] = v11 + 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
    v13 = *(v12 - 8);
    (*(v13 + 16))(v10, a2, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    sub_1D1B0CBA8(v10, v11);
    v15 = *a1;
    v14 = a1[1];
    *a3 = v11;
    a3[1] = v15;
    a3[2] = v14;
  }

  return result;
}

uint64_t sub_1D17D817C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  if (*a2)
  {
    v4 = sub_1D17D823C;
  }

  else
  {
    v4 = sub_1D17D81B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, a3, 0);
}

uint64_t sub_1D17D81B4()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();
  sub_1D17D7A50(*(v1 + 160), *(v1 + 168), *(v1 + 176));
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D17D823C()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();
  sub_1D17D7A50(*(v1 + 184), *(v1 + 192), *(v1 + 200));
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D17D82C4(uint64_t a1, _BYTE *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D17C4BFC;

  return sub_1D17D817C(a1, a2, v2);
}

uint64_t sub_1D17D837C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D17CB228(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D17D8444(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17CB45C(a1, v5, v4);
}

uint64_t sub_1D17D84EC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = a1[1];

  *a1 = v6;
  a1[1] = v5;
  *a3 = a1[3];
}

uint64_t sub_1D17D856C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F28, &unk_1D1E74560);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a2[1];
  v10[0] = *a2;
  v10[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  sub_1D1E67ECC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D17D8698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4BFC;

  return sub_1D17D6F8C(a1, a2, a3, v10, a5);
}

uint64_t sub_1D17D8760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D17D8698(a1, v4, v5, v1 + 4, v6);
}

uint64_t sub_1D17D8844(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17D3008(a1, a2, v7, v6);
}

uint64_t sub_1D17D88F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17D3444(v2, v3, v5, v4);
}

uint64_t sub_1D17D89A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D17D42B8(a1, v4);
}

uint64_t sub_1D17D8A44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17D4588(a1, v4);
}

unint64_t sub_1D17D8AE4()
{
  result = qword_1EC643058;
  if (!qword_1EC643058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC643058);
  }

  return result;
}

uint64_t sub_1D17D8B30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17D5004(v2, v3, v4);
}

uint64_t sub_1D17D8BD8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1D1E68A8C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + 16);
  v21 = *(v1 + 24);
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = (v1 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v16 = *(v1 + v8);
  v17 = *(v1 + v8 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1D17C4CF0;

  return sub_1D17D57A8(v10, a1, v22, v21, v20, v9, v1 + v5, v12, v13);
}

id sub_1D17D8D68(id result, id a2, void *a3, char a4)
{
  v4 = a2;
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }

  else
  {
    result = a2;
    v4 = a3;
  }

  v5 = result;

  return v4;
}

void sub_1D17D8DC4(id a1, id a2, void *a3, char a4)
{
  v4 = a2;
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }
  }

  else
  {
    a1 = a2;
    v4 = a3;
  }
}

uint64_t sub_1D17D8E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D17D8EA8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D17D8EF0()
{
  result = qword_1EC643F70;
  if (!qword_1EC643F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643F70);
  }

  return result;
}

char *sub_1D17D8FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v15 = 0;
    v16 = 0;
    v3 = (a2 + 56);
    v4 = MEMORY[0x1E69E7CC0];
    v14 = -1;
    do
    {
      v6 = *(v3 - 3);
      v5 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      if (v8 < 0)
      {
        sub_1D17D8D68(*(v3 - 3), *(v3 - 2), *(v3 - 1), v8 & 0x7F);
        sub_1D17D8D68(v6, v5, v7, v8 & 0x7F);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1D177D62C(0, *(v4 + 2) + 1, 1, v4);
        }

        v10 = *(v4 + 2);
        v9 = *(v4 + 3);
        if (v10 >= v9 >> 1)
        {
          v4 = sub_1D177D62C((v9 > 1), v10 + 1, 1, v4);
        }

        sub_1D17D9114(v6, v5, v7, v8);
        *(v4 + 2) = v10 + 1;
        v11 = &v4[32 * v10];
        *(v11 + 4) = v6;
        *(v11 + 5) = v5;
        *(v11 + 6) = v7;
        v11[56] = v8 & 0x7F;
      }

      else
      {
        v15 = *(v3 - 2);
        v16 = *(v3 - 3);
        v14 = *(v3 - 1);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v14 = -1;
  }

  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  return v4;
}

void sub_1D17D9114(void *a1, void *a2, void *a3, char a4)
{
  if (a4 < 0)
  {
    sub_1D17D8DC4(a1, a2, a3, a4 & 0x7F);
  }
}

char *CameraController.__allocating_init(cameraProfile:)(void *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 2;
  v2 = type metadata accessor for CameraController();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1D17CA954(a1, v6);
}

void sub_1D17D917C(char *a1@<X8>)
{
  v3 = [v1 accessory];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isReachable];

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 userSettings];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isCameraManuallyDisabled];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v1 userSettings];
  if (v10 && (v11 = v10, v12 = [v10 currentAccessMode], v11, v12 <= 3))
  {
    v13 = qword_1D1E74C98[v12];
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  if ((v6 | v9))
  {
    goto LABEL_43;
  }

  if (v13 == 1)
  {
    v14 = 3;
    goto LABEL_43;
  }

  if (v13 == 2)
  {
    v14 = 4;
    goto LABEL_43;
  }

  v15 = [v1 accessory];
  if (!v15)
  {
LABEL_42:
    v14 = 0;
    goto LABEL_43;
  }

  v16 = v15;
  v17 = [v15 services];

  sub_1D17DAA94();
  v18 = sub_1D1E67C1C();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = sub_1D1E6873C();
  if (!v19)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_22:
  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1D3891EF0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if ([v21 hasOperatingState] && objc_msgSend(v22, sel_lastKnownOperatingState) == 2 && (objc_msgSend(v22, sel_hasOperatingStateAbnormalReasons) & 1) != 0)
    {
      break;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_41;
    }
  }

  if (([v22 lastKnownOperatingStateAbnormalReasons] & 2) != 0)
  {

    v14 = 5;
  }

  else
  {
    v24 = [v22 lastKnownOperatingStateAbnormalReasons];

    if ((v24 & 4) != 0)
    {
      v14 = 6;
    }

    else
    {
      v14 = 1;
    }
  }

LABEL_43:
  *a1 = v14;
}

uint64_t CameraController.Availability.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C62616C69617661;
  v3 = 0x646C6F436F6F74;
  if (v1 != 5)
  {
    v3 = 0x746F486F6F74;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6341746365746564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6863616552746F6ELL;
  if (v1 != 1)
  {
    v5 = 2037609826;
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

void CameraController.Resolution.videoResolutions.getter()
{
  v1 = *v0;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      if (qword_1EC642148 != -1)
      {
        swift_once();
      }

      v10 = qword_1EC6BE080;
      if (*(qword_1EC6BE080 + 16))
      {
        v11 = sub_1D174218C(2u);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 8 * v11);
          goto LABEL_26;
        }

        goto LABEL_36;
      }

      __break(1u);
    }

    else
    {
      if (v1 != 3)
      {
        if (qword_1EC642148 == -1)
        {
LABEL_19:
          v14 = qword_1EC6BE080;
          if (*(qword_1EC6BE080 + 16))
          {
            v15 = sub_1D174218C(4u);
            if (v16)
            {
              v17 = *(*(v14 + 56) + 8 * v15);
              goto LABEL_26;
            }

            goto LABEL_38;
          }

          __break(1u);
LABEL_32:
          swift_once();
          goto LABEL_10;
        }

LABEL_30:
        swift_once();
        goto LABEL_19;
      }

      if (qword_1EC642148 == -1)
      {
LABEL_5:
        v2 = qword_1EC6BE080;
        if (*(qword_1EC6BE080 + 16))
        {
          v3 = sub_1D174218C(3u);
          if (v4)
          {
            v5 = *(*(v2 + 56) + 8 * v3);
LABEL_26:

            v23 = CameraController.Resolution.videoResolutions.getter(v22);
            sub_1D17A3CF8(v23);
            return;
          }

          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  if (*v0)
  {
    if (qword_1EC642148 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (qword_1EC642148 != -1)
  {
    goto LABEL_32;
  }

LABEL_10:
  v6 = qword_1EC6BE080;
  if (*(qword_1EC6BE080 + 16))
  {
    v7 = sub_1D174218C(0);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      return;
    }

    goto LABEL_39;
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_23:
  v18 = qword_1EC6BE080;
  if (!*(qword_1EC6BE080 + 16))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = sub_1D174218C(1u);
  if (v20)
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    goto LABEL_26;
  }

LABEL_40:
  __break(1u);
}

uint64_t CameraController.StreamState.description.getter()
{
  v1 = 0x6572747320746F6ELL;
  v2 = 0x6E696D6165727473;
  if (*v0 != 2)
  {
    v2 = 0x676E6970706F7473;
  }

  if (*v0)
  {
    v1 = 0x676E697472617473;
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

uint64_t CameraController.StreamState.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17D98A4()
{
  v1 = 0x6572747320746F6ELL;
  v2 = 0x6E696D6165727473;
  if (*v0 != 2)
  {
    v2 = 0x676E6970706F7473;
  }

  if (*v0)
  {
    v1 = 0x676E697472617473;
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

uint64_t static CameraController.AudioMode.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = v3 == 1 || v2 != 1;
  v6 = v2 != 2 && v5;
  return v3 == 2 || v6;
}

uint64_t CameraController.AudioMode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D1E68C2C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CameraController.AudioMode.rawValue.getter()
{
  v1 = 0x676E696D6F636E69;
  if (*v0 != 1)
  {
    v1 = 0x7463657269646962;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646574756DLL;
  }
}

uint64_t sub_1D17D9A24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696D6F636E69;
  if (v2 != 1)
  {
    v4 = 0x7463657269646962;
    v3 = 0xED00006C616E6F69;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x646574756DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696D6F636E69;
  if (*a2 != 1)
  {
    v8 = 0x7463657269646962;
    v7 = 0xED00006C616E6F69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646574756DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D17D9B3C()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17D9BE8()
{
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D17D9C80()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17D9D28@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CameraController.AudioMode.init(rawValue:)(a1);
}

void sub_1D17D9D34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696D6F636E69;
  if (v2 != 1)
  {
    v5 = 0x7463657269646962;
    v4 = 0xED00006C616E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646574756DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D17D9D9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = v3 == 1 || v2 != 1;
  v6 = v2 != 2 && v5;
  return v3 == 2 || v6;
}

uint64_t sub_1D17D9DC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    return 0;
  }

  v4 = *a2;
  v6 = v2 != 1 && v4 == 1;
  return v4 == 2 || v6;
}

uint64_t sub_1D17D9DFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 2)
  {
    return 0;
  }

  v4 = *a1;
  v6 = v2 != 1 && v4 == 1;
  return v4 == 2 || v6;
}

uint64_t sub_1D17D9E30(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = v2 == 1 || v3 != 1;
  v6 = v3 != 2 && v5;
  return v2 == 2 || v6;
}

uint64_t CameraController.Availability.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D1E68C2C();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D17D9EE0()
{
  *v0;
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D17DA008@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CameraController.Availability.init(rawValue:)(a1);
}

void sub_1D17DA014(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6C62616C69617661;
  v5 = 0xE700000000000000;
  v6 = 0x646C6F436F6F74;
  if (v2 != 5)
  {
    v6 = 0x746F486F6F74;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000001D1EB5AA0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6341746365746564;
    v7 = 0xEE00797469766974;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC000000656C6261;
  v10 = 0x6863616552746F6ELL;
  if (v2 != 1)
  {
    v10 = 2037609826;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t CameraController.AccessMode.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6120746365746564;
  v4 = 0x6D6165727473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6710895;
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

unint64_t CameraController.AccessMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void CameraController.Resolution.init(size:displayScale:)(BOOL *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v4 = a2 * a4 * (a3 * a4);
  if (v4 >= 2560000.0)
  {
    *a1 = 4;
  }

  else if (v4 >= 2073600.0)
  {
    *a1 = 3;
  }

  else if (v4 >= 921600.0)
  {
    *a1 = 2;
  }

  else
  {
    *a1 = v4 >= 307200.0;
  }
}

uint64_t CameraController.Resolution.description.getter()
{
  v1 = *v0;
  v2 = 0x647261646E617473;
  v3 = 1751607656;
  v4 = 0x676968206C6C7566;
  if (v1 != 3)
  {
    v4 = 0x6968206172746C75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465636E61686E65;
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

uint64_t sub_1D17DA2F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643FE0, &qword_1D1E74C88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E74700;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E74710;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 80) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 88) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 96) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 104) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D1E74720;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 56) = v2;
  *(inited + 64) = 2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D1E74730;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 48) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 56) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 64) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 72) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 80) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 72) = v3;
  *(inited + 80) = 3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E74740;
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 72) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 80) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 88) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 88) = v4;
  *(inited + 96) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E74720;
  *(v5 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 104) = v5;
  v6 = sub_1D18D7C48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643FE8, &qword_1D1E74C90);
  result = swift_arrayDestroy();
  qword_1EC6BE080 = v6;
  return result;
}

uint64_t sub_1D17DA748()
{
  v1 = *v0;
  v2 = 0x647261646E617473;
  v3 = 1751607656;
  v4 = 0x676968206C6C7566;
  if (v1 != 3)
  {
    v4 = 0x6968206172746C75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465636E61686E65;
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

unint64_t sub_1D17DA7E8()
{
  result = qword_1EC643F98;
  if (!qword_1EC643F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643F98);
  }

  return result;
}

unint64_t sub_1D17DA86C()
{
  result = qword_1EC643FB0;
  if (!qword_1EC643FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643FB0);
  }

  return result;
}

uint64_t sub_1D17DA8F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D17DA948()
{
  result = qword_1EC643FC8;
  if (!qword_1EC643FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643FC8);
  }

  return result;
}

unint64_t sub_1D17DA99C()
{
  result = qword_1EC643FD0;
  if (!qword_1EC643FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643FD0);
  }

  return result;
}

unint64_t sub_1D17DA9F0()
{
  result = qword_1EC643FD8;
  if (!qword_1EC643FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643FD8);
  }

  return result;
}

unint64_t sub_1D17DAA94()
{
  result = qword_1EE079BD0;
  if (!qword_1EE079BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079BD0);
  }

  return result;
}

Swift::Void __swiftcall CameraController.cameraStreamControlDidStartStream(_:)(HMCameraStreamControl a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = [(objc_class *)a1.super.super.isa streamState];
  if (v9 >= 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (qword_1EC642460 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC64F410);

  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();

  if (os_log_type_enabled(v12, v13))
  {
    v22 = v5;
    isa = a1.super.super.isa;
    v25 = v4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26[0] = v16;
    *v14 = 138412802;
    *(v14 + 4) = v2;
    *v15 = v2;
    *(v14 + 12) = 2080;

    *(v14 + 14) = sub_1D1B1312C(0xD000000000000025, 0x80000001D1EB9840, v26);
    *(v14 + 22) = 2080;
    v23 = v10;
    if (v10 > 1u)
    {
      if (v10 == 2)
      {
        v17 = 0xE900000000000067;
        v18 = 0x6E696D6165727473;
        goto LABEL_16;
      }

      v17 = 0xE800000000000000;
      v19 = 0x6970706F7473;
    }

    else
    {
      if (!v10)
      {
        v17 = 0xED0000676E696D61;
        v18 = 0x6572747320746F6ELL;
LABEL_16:
        v20 = sub_1D1B1312C(v18, v17, v26);

        *(v14 + 24) = v20;
        _os_log_impl(&dword_1D16EC000, v12, v13, "%@ %s stream state: %s", v14, 0x20u);
        sub_1D179F28C(v15);
        MEMORY[0x1D3893640](v15, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v16, -1, -1);
        MEMORY[0x1D3893640](v14, -1, -1);

        a1.super.super.isa = isa;
        v4 = v25;
        v5 = v22;
        LOBYTE(v10) = v23;
        goto LABEL_17;
      }

      v17 = 0xE800000000000000;
      v19 = 0x697472617473;
    }

    v18 = v19 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_16;
  }

LABEL_17:
  v21 = [(objc_class *)a1.super.super.isa cameraStream];
  v26[0] = v10;
  v26[1] = v21;
  v26[2] = 0;
  v27 = 0x80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  (*(v5 + 8))(v8, v4);
}

uint64_t CameraController.cameraStreamControl(_:didStopStreamWithError:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  v11 = [a1 streamState];
  if (v11 >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v23 = sub_1D1E6709C();
    __swift_project_value_buffer(v23, qword_1EC64F410);

    v24 = sub_1D1E6707C();
    v25 = sub_1D1E6835C();

    if (!os_log_type_enabled(v24, v25))
    {

      goto LABEL_31;
    }

    v42 = v10;
    v44 = a1;
    v45 = v7;
    v46 = v6;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v12;
    v12 = swift_slowAlloc();
    v48[0] = v12;
    *v26 = 138412802;
    *(v26 + 4) = v3;
    *v27 = v3;
    *(v26 + 12) = 2080;

    *(v26 + 14) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EB9870, v48);
    *(v26 + 22) = 2080;
    v43 = v28;
    if (v28 > 1u)
    {
      if (v28 == 2)
      {
        v29 = 0x6E696D6165727473;
        v30 = 0xE900000000000067;
        goto LABEL_30;
      }

      v30 = 0xE800000000000000;
      v37 = 0x6970706F7473;
    }

    else
    {
      if (!v28)
      {
        v29 = 0x6572747320746F6ELL;
        v30 = 0xED0000676E696D61;
LABEL_30:
        v10 = v42;
        v38 = sub_1D1B1312C(v29, v30, v48);

        *(v26 + 24) = v38;
        _os_log_impl(&dword_1D16EC000, v24, v25, "%@ %s stream state: %s", v26, 0x20u);
        sub_1D179F28C(v27);
        MEMORY[0x1D3893640](v27, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v12, -1, -1);
        MEMORY[0x1D3893640](v26, -1, -1);

        v7 = v45;
        v6 = v46;
        LOBYTE(v12) = v43;
        a1 = v44;
        goto LABEL_31;
      }

      v30 = 0xE800000000000000;
      v37 = 0x697472617473;
    }

    v29 = v37 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_30;
  }

  v13 = a2;
  if (qword_1EC642460 != -1)
  {
    swift_once();
  }

  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EC64F410);
  v15 = a2;

  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6833C();

  if (os_log_type_enabled(v16, v17))
  {
    v42 = v10;
    v44 = a1;
    v45 = v7;
    v46 = v6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48[0] = v20;
    *v18 = 138413058;
    *(v18 + 4) = v3;
    *v19 = v3;
    *(v18 + 12) = 2080;

    *(v18 + 14) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EB9870, v48);
    *(v18 + 22) = 2080;
    v43 = v12;
    if (v12 > 1u)
    {
      if (v12 == 2)
      {
        v21 = 0x6E696D6165727473;
        v22 = 0xE900000000000067;
        goto LABEL_26;
      }

      v22 = 0xE800000000000000;
      v31 = 0x6970706F7473;
    }

    else
    {
      if (!v12)
      {
        v21 = 0x6572747320746F6ELL;
        v22 = 0xED0000676E696D61;
LABEL_26:
        v32 = sub_1D1B1312C(v21, v22, v48);

        *(v18 + 24) = v32;
        *(v18 + 32) = 2080;
        v47 = a2;
        v33 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
        v34 = sub_1D1E6789C();
        v36 = sub_1D1B1312C(v34, v35, v48);

        *(v18 + 34) = v36;
        _os_log_impl(&dword_1D16EC000, v16, v17, "%@ %s stream state: %s error: %s", v18, 0x2Au);
        sub_1D179F28C(v19);
        MEMORY[0x1D3893640](v19, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v20, -1, -1);
        MEMORY[0x1D3893640](v18, -1, -1);

        v7 = v45;
        v6 = v46;
        LOBYTE(v12) = v43;
        a1 = v44;
        v10 = v42;
        goto LABEL_31;
      }

      v22 = 0xE800000000000000;
      v31 = 0x697472617473;
    }

    v21 = v31 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_26;
  }

LABEL_31:
  v39 = [a1 cameraStream];
  v48[0] = v12;
  v48[1] = v39;
  v48[2] = a2;
  v49 = 0x80;
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  return (*(v7 + 8))(v10, v6);
}

Swift::Void __swiftcall CameraController.cameraSnapshotControlDidUpdateMostRecentSnapshot(_:)(HMCameraSnapshotControl a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - v7);
  v9 = [(objc_class *)a1.super.super.isa mostRecentSnapshot];
  if (v9)
  {
    v10 = v9;
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64F410);

    v12 = v10;
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6835C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = v8;
      v16 = v15;
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v16 = 138412802;
      *(v16 + 4) = v2;
      *v17 = v2;
      *(v16 + 12) = 2080;

      *(v16 + 14) = sub_1D1B1312C(0xD000000000000034, 0x80000001D1EB98A0, v30);
      *(v16 + 22) = 2112;
      *(v16 + 24) = v12;
      v17[1] = v10;
      v18 = v12;
      _os_log_impl(&dword_1D16EC000, v13, v14, "%@ %s snapshot: %@", v16, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      v19 = v28;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1D3893640](v19, -1, -1);
      v20 = v16;
      v8 = v29;
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    v30[1] = 0;
    v30[2] = 0;
    v30[0] = v10;
    v31 = -127;
    v21 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v22 = sub_1D1E6709C();
    __swift_project_value_buffer(v22, qword_1EC64F410);

    v29 = sub_1D1E6707C();
    v23 = sub_1D1E6833C();

    if (os_log_type_enabled(v29, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[0] = v26;
      *v24 = 138412546;
      *(v24 + 4) = v2;
      *v25 = v2;
      *(v24 + 12) = 2080;

      *(v24 + 14) = sub_1D1B1312C(0xD000000000000034, 0x80000001D1EB98A0, v30);
      _os_log_impl(&dword_1D16EC000, v29, v23, "%@ %s no snapshot present", v24, 0x16u);
      sub_1D179F28C(v25);
      MEMORY[0x1D3893640](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v24, -1, -1);
    }

    else
    {
      v27 = v29;
    }
  }
}

uint64_t CameraController.cameraUserSettingsDidUpdate(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = [a1 currentAccessMode];
  v10 = [a1 isCameraManuallyDisabled];
  if (qword_1EC642460 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC64F410);

  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = v16;
    v17 = swift_slowAlloc();
    v31 = v17;
    *v15 = 138413058;
    *(v15 + 4) = v2;
    *v16 = v2;
    v32 = v8;
    v33[0] = v17;
    *(v15 + 12) = 2080;

    *(v15 + 14) = sub_1D1B1312C(0xD00000000000001FLL, 0x80000001D1EB98E0, v33);
    v18 = 0xE400000000000000;
    *(v15 + 22) = 2080;
    v19 = 1701736302;
    v20 = 0x80000001D1EB9820;
    v21 = 0xEF79746976697463;
    v22 = 0x6120746365746564;
    if (v9 != 3)
    {
      v22 = 1701736302;
      v21 = 0xE400000000000000;
    }

    if (v9 == 2)
    {
      v22 = 0xD000000000000011;
    }

    else
    {
      v20 = v21;
    }

    if (v9 == 1)
    {
      v19 = 0x6D6165727473;
      v18 = 0xE600000000000000;
    }

    if (!v9)
    {
      v19 = 6710895;
      v18 = 0xE300000000000000;
    }

    if (v9 <= 1)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    if (v9 <= 1)
    {
      v24 = v18;
    }

    else
    {
      v24 = v20;
    }

    v25 = sub_1D1B1312C(v23, v24, v33);

    *(v15 + 24) = v25;
    v8 = v32;
    *(v15 + 32) = 1024;
    *(v15 + 34) = v30;
    _os_log_impl(&dword_1D16EC000, v12, v13, "%@ %s updating accessMode: %s, isManuallyDisabled: %{BOOL}d", v15, 0x26u);
    v26 = v29;
    sub_1D179F28C(v29);
    MEMORY[0x1D3893640](v26, -1, -1);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v27, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  memset(v33, 0, sizeof(v33));
  v34 = -126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D17DBE7C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_1D17DBEDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  if (a2)
  {
    v11 = a2;
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EC64F410);
    v13 = a2;

    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6833C();

    if (!os_log_type_enabled(v14, v15))
    {

      goto LABEL_12;
    }

    v16 = swift_slowAlloc();
    v45 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = a1;
    v20 = v19;
    v47[0] = v19;
    *v17 = 138412802;
    *(v17 + 4) = v3;
    *v18 = v3;
    *(v17 + 12) = 2080;
    v44 = v7;
    v21 = v6;

    *(v17 + 14) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EB9920, v47);
    *(v17 + 22) = 2080;
    v46 = a2;
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v23 = sub_1D1E6789C();
    v25 = sub_1D1B1312C(v23, v24, v47);

    *(v17 + 24) = v25;
    v6 = v21;
    v7 = v44;
    _os_log_impl(&dword_1D16EC000, v14, v15, "%@ %s error: %s", v17, 0x20u);
    sub_1D179F28C(v18);
    MEMORY[0x1D3893640](v18, -1, -1);
    swift_arrayDestroy();
    v26 = v20;
    a1 = v43;
    MEMORY[0x1D3893640](v26, -1, -1);
    v27 = v17;
    v10 = v45;
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  else
  {
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v28 = sub_1D1E6709C();
    __swift_project_value_buffer(v28, qword_1EC64F410);
    v29 = a1;

    v14 = sub_1D1E6707C();
    v30 = sub_1D1E6835C();

    if (os_log_type_enabled(v14, v30))
    {
      v31 = swift_slowAlloc();
      v45 = v10;
      v32 = v31;
      v33 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47[0] = v43;
      *v32 = 138412802;
      *(v32 + 4) = v3;
      *v33 = v3;
      v44 = v6;
      *(v32 + 12) = 2080;

      *(v32 + 14) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EB9920, v47);
      *(v32 + 22) = 2080;
      v46 = a1;
      v34 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644130, &qword_1D1E74CD8);
      v35 = sub_1D1E6789C();
      v37 = sub_1D1B1312C(v35, v36, v47);

      *(v32 + 24) = v37;
      v6 = v44;
      _os_log_impl(&dword_1D16EC000, v14, v30, "%@ %s snapshot: %s", v32, 0x20u);
      sub_1D179F28C(v33);
      MEMORY[0x1D3893640](v33, -1, -1);
      v38 = v43;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v38, -1, -1);
      v39 = v32;
      v10 = v45;
      MEMORY[0x1D3893640](v39, -1, -1);
    }
  }

LABEL_12:
  v47[0] = a1;
  v47[1] = a2;
  v47[2] = 0;
  v48 = -127;
  v40 = a2;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t CameraController.StreamingOptions.description.getter()
{
  v1 = *v0;
  v2 = sub_1D18D4FC0(qword_1F4D5F418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F58, &unk_1D1E74CE0);
  swift_arrayDestroy();
  sub_1D17DC554(v2, v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F60, &qword_1D1E746D0);
  sub_1D17DC838();
  sub_1D17D8EF0();
  v3 = sub_1D1E67B0C();
  v5 = v4;

  MEMORY[0x1D3890F70](v3, v5);

  MEMORY[0x1D3890F70](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1D17DC554(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D17DC6C0(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1D17DC7B0(v11, v6, v4, a2);
  result = MEMORY[0x1D3893640](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *sub_1D17DC6C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if ((*(*(a3 + 48) + 8 * v12) & ~a4) == 0)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1D188AF90(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_1D188AF90(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D17DC7B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1D17DC6C0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_1D17DC838()
{
  result = qword_1EC643F68;
  if (!qword_1EC643F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643F60, &qword_1D1E746D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643F68);
  }

  return result;
}

unint64_t sub_1D17DC8A0()
{
  result = qword_1EC6441A0;
  if (!qword_1EC6441A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441A0);
  }

  return result;
}

unint64_t sub_1D17DC8F8()
{
  result = qword_1EC6441A8;
  if (!qword_1EC6441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441A8);
  }

  return result;
}

unint64_t sub_1D17DC94C()
{
  result = qword_1EC6441B0;
  if (!qword_1EC6441B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441B0);
  }

  return result;
}

unint64_t sub_1D17DC9A4()
{
  result = qword_1EC6441B8;
  if (!qword_1EC6441B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441B8);
  }

  return result;
}

double static CameraController.SnapshotInterval.frequent.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 3.86219022e-108;
  *a1 = xmmword_1D1E74F30;
  return result;
}

double static CameraController.SnapshotInterval.default.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 1.89253894e26;
  *a1 = xmmword_1D1E74330;
  return result;
}

double static CameraController.SnapshotInterval.infrequent.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -9.63067605e-257;
  *a1 = xmmword_1D1E74F40;
  return result;
}

double static CameraController.SnapshotInterval.extended.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 1.23674724e130;
  *a1 = xmmword_1D1E74F50;
  return result;
}

uint64_t static CameraController.SnapshotInterval.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1D1E6937C();
}

uint64_t CameraController.SnapshotInterval.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D1E6938C();
}

uint64_t CameraController.SnapshotInterval.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t sub_1D17DCAB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1D1E6937C();
}

uint64_t sub_1D17DCAC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t sub_1D17DCB14()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D1E6938C();
}

uint64_t sub_1D17DCB1C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t static CameraController.SnapshotInterval.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1D1E6934C();
}

uint64_t sub_1D17DCB78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1D1E6934C();
}

BOOL sub_1D17DCB8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return (sub_1D1E6934C() & 1) == 0;
}

BOOL sub_1D17DCBB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return (sub_1D1E6934C() & 1) == 0;
}

uint64_t sub_1D17DCBE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1D1E6934C();
}

uint64_t CameraController.SnapshotInterval.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D1E6932C();
}

unint64_t sub_1D17DCBF8()
{
  result = qword_1EC6441C0;
  if (!qword_1EC6441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441C0);
  }

  return result;
}

uint64_t sub_1D17DCC4C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D1E6932C();
}

__n128 CameraController.State.mode.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v3 = (v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t CameraController.State.name.getter()
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v1 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  v2 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);

  return v1;
}

uint64_t sub_1D17DCDF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  v6 = *(v2 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name) == a1 && *(v2 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8), (sub_1D1E6904C() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17DCF60(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability;
  result = sub_1D17A0574(*(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability), *a1);
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();
  }

  return result;
}

unsigned __int8 *sub_1D17DD07C(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();
  }

  return result;
}

void sub_1D17DD18C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot;
  v5 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D1741B10(0, &qword_1EC644240, 0x1E696CB10);
  v6 = v5;
  v7 = a1;
  v8 = sub_1D1E684FC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1D17DD324(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream;
  v5 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D1741B10(0, &qword_1EC644238, 0x1E696CB18);
  v6 = v5;
  v7 = a1;
  v8 = sub_1D1E684FC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t CameraController.State.description.getter()
{
  v1 = v0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x203A656D616ELL, 0xE600000000000000);
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v2 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  v3 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);

  MEMORY[0x1D3890F70](v2, v3);

  v4 = 0xE800000000000000;
  MEMORY[0x1D3890F70](0x203A65646F6D202CLL, 0xE800000000000000);
  swift_getKeyPath();
  v19 = v0;
  sub_1D1E66CAC();

  v5 = (v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  v16 = *v5;
  v18 = *(v5 + 16);
  v6 = CameraController.Mode.description.getter();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](0x203A6F6D6564202CLL, 0xE800000000000000);
  if (*(v19 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_isDemoCamera))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_isDemoCamera))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v7, v8);

  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EB9950);
  swift_getKeyPath();
  sub_1D1E66CAC();

  v17 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x6D6165727473202CLL, 0xEF203A6574617453);
  swift_getKeyPath();
  sub_1D1E66CAC();

  if (*(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) == 2)
    {
      v4 = 0xE900000000000067;
      v9 = 0x6E696D6165727473;
      goto LABEL_15;
    }

    v10 = 0x6970706F7473;
LABEL_14:
    v9 = v10 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_15;
  }

  if (*(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState))
  {
    v10 = 0x697472617473;
    goto LABEL_14;
  }

  v4 = 0xED0000676E696D61;
  v9 = 0x6572747320746F6ELL;
LABEL_15:
  MEMORY[0x1D3890F70](v9, v4);

  MEMORY[0x1D3890F70](0x6D61657274730A2CLL, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_1D1E66CAC();

  v11 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6441F8, &qword_1D1E75140);
  v12 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v12);

  MEMORY[0x1D3890F70](0x687370616E73202CLL, 0xEC000000203A746FLL);
  swift_getKeyPath();
  sub_1D1E66CAC();

  v13 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644130, &qword_1D1E74CD8);
  v14 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v14);

  return 0;
}

uint64_t CameraController.State.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_identifier;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void (*sub_1D17DD9E8(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  v5[11] = v8;
  v5[12] = v9;
  swift_beginAccess();
  return sub_1D17DDAE4;
}

void sub_1D17DDAE4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[11];
  if ((a2 & 1) == 0)
  {
    v5 = v3[9];
    v6 = v3[10];
    v7 = v3[8];
    v8 = v7 + v3[12];
    swift_getKeyPath();
    v3[7] = v7;
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66CAC();

    v9 = *(v8 + 16);
    *v3 = *v8;
    v3[2] = v9;
    *(v3 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);

  free(v3);
}

__n128 sub_1D17DDC34@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v4 = (v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1D17DDD04(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return CameraController.State.mode.setter(&v5);
}

uint64_t type metadata accessor for CameraController.State()
{
  result = qword_1EC644218;
  if (!qword_1EC644218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraController.State.mode.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = (v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  v12 = *(v11 + 16);
  v16 = *v11;
  LOBYTE(v17) = v12;
  v19[0] = v8;
  v19[1] = v9;
  v20 = v10;
  if (_s13HomeDataModel16CameraControllerC4ModeO2eeoiySbAE_AEtFZ_0(&v16, v19))
  {
    *v11 = v8;
    *(v11 + 1) = v9;
    *(v11 + 16) = v10;
    swift_getKeyPath();
    *&v16 = v1;
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66CAC();

    v13 = *(v11 + 16);
    v16 = *v11;
    v17 = v13;
    v18 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 4) = v1;
    *(&v16 - 3) = v8;
    *(&v16 - 2) = v9;
    *(&v16 - 8) = v10;
    *&v16 = v1;
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17DE048(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = (a1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  *v13 = a2;
  *(v13 + 1) = a3;
  *(v13 + 16) = a4;
  swift_getKeyPath();
  *&v16 = a1;
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v14 = *(v13 + 16);
  v16 = *v13;
  v17 = v14;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  return (*(v9 + 8))(v12, v8);
}

void (*CameraController.State.mode.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17DD9E8(v4);
  return sub_1D17DE34C;
}

void sub_1D17DE34C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D1E66CBC();

  free(v1);
}

void *sub_1D17DE408(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1D17DE4B0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t sub_1D17DE574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v4 = *(v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  a2[1] = v4;
}

uint64_t sub_1D17DE62C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1D17DCDF4(v2, v3);
}

uint64_t sub_1D17DE694(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D17DCF60(&v4);
}

uint64_t sub_1D17DE6F0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  *a2 = *(v2 + *a1);
  return result;
}

uint64_t sub_1D17DE7B4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  *a3 = *(v5 + *a2);
  return result;
}

unsigned __int8 *sub_1D17DE868(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D17DD07C(&v4);
}

uint64_t sub_1D17DE8C0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a5;
  v40 = a4;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v15 = a2[1];
  *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot) = 0;
  *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream) = 0;
  LOBYTE(a2) = *(a2 + 16);
  v17 = (v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  v38 = 0;
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability) = 1;
  *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) = 0;
  sub_1D1E66CDC();
  v18 = v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  *v18 = v16;
  *(v18 + 8) = v15;
  *(v18 + 16) = a2;
  v19 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  (*(v11 + 32))(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_identifier, v14, v10);
  v20 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_updates;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  v22 = *(v21 - 8);
  v23 = v5 + v20;
  v24 = v39;
  (*(v22 + 16))(v23, a3, v21);
  v25 = (v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_waveformStreamProvider);
  *v25 = v40;
  v25[1] = v24;

  v26 = [a1 accessory];
  if (!v26)
  {
    *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_isDemoCamera) = 0;
    goto LABEL_6;
  }

  v27 = v26;
  v28 = [v26 isDemoAccessory];

  *(v6 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_isDemoCamera) = v28;
  if (!v28)
  {
LABEL_6:
    (*(v22 + 8))(a3, v21);

    return v6;
  }

  v29 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability;
  if (*(v6 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability) > 2u || *(v6 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability))
  {
    v31 = sub_1D1E6904C();

    if (v31)
    {
      *(v6 + v29) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v37 - 2) = v6;
      *(&v37 - 8) = 0;
      v41 = v6;
      sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
      v33 = a3;
      v34 = v38;
      sub_1D1E66C9C();
      v38 = v34;
      a3 = v33;
    }
  }

  else
  {

    *(v6 + v29) = 0;
  }

  v35 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState;
  if (*(v6 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) == 2)
  {
    (*(v22 + 8))(a3, v21);

    *(v6 + v35) = 2;
  }

  else
  {
    v36 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v36);
    *(&v37 - 2) = v6;
    *(&v37 - 8) = 2;
    v41 = v6;
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();

    (*(v22 + 8))(a3, v21);
  }

  return v6;
}

uint64_t CameraController.State.deinit()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_identifier;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_updates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);

  v6 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_waveformStreamProvider + 8);

  v7 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State___observationRegistrar;
  v8 = sub_1D1E66CEC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t CameraController.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_identifier;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_updates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);

  v6 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_waveformStreamProvider + 8);

  v7 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State___observationRegistrar;
  v8 = sub_1D1E66CEC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D17DF130@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D1E6887C();
  *a1 = result;
  return result;
}

void *CameraController.State.source.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v2 = v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  swift_beginAccess();
  if (!*(v2 + 16))
  {
    swift_getKeyPath();
    sub_1D1E66CAC();

    v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream);
    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(v2 + 16) == 1)
  {
LABEL_5:
    swift_getKeyPath();
    sub_1D1E66CAC();

    v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
    if (!v3)
    {
      return v3;
    }

LABEL_6:
    v4 = v3;
    return v3;
  }

  return 0;
}

void *CameraController.State.aspectRatio.getter()
{
  result = CameraController.State.source.getter();
  v1 = result;
  if (result)
  {
    [result aspectRatio];
    v3 = v2;

    return v3;
  }

  return result;
}

uint64_t CameraController.State.dateOfLastSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
  if (v3)
  {
    v4 = [v3 captureDate];
    sub_1D1E669BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D1E669FC();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t CameraController.State.isSourceSnapshot.getter()
{
  result = CameraController.State.source.getter();
  if (result)
  {

    v2 = CameraController.State.source.getter();
    swift_getKeyPath();
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66CAC();

    v3 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
    if (v2)
    {
      if (v3)
      {

        return v2 == v3;
      }

      else
      {
        v4 = 0;

        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t CameraController.State.statusString.getter()
{
  v1 = 0xD00000000000001DLL;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) == 2)
  {
    v2 = "HFCameraErrorNotReachable";
    v1 = 0xD000000000000014;
    return static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
  }

  swift_getKeyPath();
  sub_1D1E66CAC();

  result = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability);
  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability) > 2u)
  {
    if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability) <= 4u)
    {
      if (result == 3)
      {
        v2 = "gOptionDetectActivity";
        v1 = 0xD00000000000001ALL;
      }

      else
      {
        v2 = "HFCameraErrorExtremeColdTitle";
        v1 = 0xD000000000000025;
      }

      return static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
    }

    if (result == 5)
    {
      v4 = "HFCameraErrorExtremeColdTitle";
    }

    else
    {
      v4 = "HFCameraErrorExtremeHeatTitle";
    }

    goto LABEL_16;
  }

  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability))
  {
    if (result != 1)
    {
      v2 = "HFCameraStreamingOptionOff";
      v1 = 0xD000000000000011;
      return static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
    }

    v1 = 0xD000000000000019;
    v4 = "HFCameraErrorNotReachable";
LABEL_16:
    v2 = (v4 - 32);
    return static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
  }

  return result;
}

uint64_t CameraController.State.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  return sub_1D1E676EC();
}

uint64_t CameraController.State.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D17DF818()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D17DF8B8()
{
  v1 = *v0;
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  return sub_1D1E676EC();
}

uint64_t sub_1D17DF940()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t CameraController.State.waveform(for:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 65) = *a2;
  sub_1D1E67E1C();
  *(v3 + 32) = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D17DFA7C, v5, v4);
}

uint64_t sub_1D17DFA7C()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_waveformStreamProvider;
  v2 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 64) = *(v0 + 65);
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1D17DFB90;
  v6 = *(v0 + 16);

  return v8(v6, v0 + 64);
}

uint64_t sub_1D17DFB90()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D17DFCB0, v4, v3);
}

uint64_t sub_1D17DFCB0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17DFD88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D17DFDD8()
{
  v0 = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1D17D6B38();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1D1E66CEC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1D17DFF40()
{
  result = qword_1EC644228;
  if (!qword_1EC644228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644230, &qword_1D1E752E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644228);
  }

  return result;
}

void sub_1D17DFFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream);
  *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream) = v2;
  v4 = v2;
}

void sub_1D17DFFE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
  *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot) = v2;
  v4 = v2;
}

uint64_t sub_1D17E0024()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

void CameraController.Mode.streamingOptions.getter(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    v2 = 0;
  }

  *a1 = v2;
}

void CameraController.Mode.audioMode.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v1[16])
  {
    v2 = 3;
  }

  *a1 = v2;
}

void CameraController.Mode.resolution.getter(char *a1@<X8>)
{
  v2 = *(v1 + 1);
  if (*(v1 + 16))
  {
    v2 = 5;
  }

  *a1 = v2;
}

uint64_t CameraController.Mode.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 16))
  {
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();

    sub_1D1E6922C();
    if ((v2 & 0xFF00) != 0x500)
    {
      MEMORY[0x1D3892850](BYTE1(v2));
    }

    v4 = v1;
    return MEMORY[0x1D3892850](v4);
  }

  if (*(v0 + 16) != 1)
  {
    v4 = 2;
    return MEMORY[0x1D3892850](v4);
  }

  MEMORY[0x1D3892850](1);

  return sub_1D1E6938C();
}

uint64_t CameraController.Mode.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  CameraController.Mode.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D17E02A0()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  CameraController.Mode.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D17E02F8()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  CameraController.Mode.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D17E0348()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (v0[3] < 0)
  {
    v11 = 0x3A746E65746E6F63;
    v7 = *v0;
    v9 = v0[1];
    v10 = v0[2];
    v4 = sub_1D17E03F0();
  }

  else
  {
    v11 = 0x203A65646F6DLL;
    v6 = *v0;
    v8 = v0[1];
    v4 = CameraController.Mode.description.getter();
  }

  MEMORY[0x1D3890F70](v4);

  return v11;
}

uint64_t sub_1D17E03F0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 24))
  {
    v6 = *(v0 + 16);
    sub_1D1E6884C();

    v7 = 0xED0000676E696D61;
    strcpy(v18, "stream(state: ");
    HIBYTE(v18[1]) = -18;
    v8 = 0x6572747320746F6ELL;
    v9 = 0xE900000000000067;
    v10 = 0x6E696D6165727473;
    if (v2 != 2)
    {
      v10 = 0x676E6970706F7473;
      v9 = 0xE800000000000000;
    }

    if (v2)
    {
      v8 = 0x676E697472617473;
      v7 = 0xE800000000000000;
    }

    if (v2 <= 1u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v2 <= 1u)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    MEMORY[0x1D3890F70](v11, v12);

    MEMORY[0x1D3890F70](0x6D6165727473202CLL, 0xEA0000000000203ALL);
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6441F8, &qword_1D1E75140);
    v14 = sub_1D1E6789C();
    MEMORY[0x1D3890F70](v14);

    MEMORY[0x1D3890F70](0x3A726F727265202CLL, 0xE900000000000020);
    v5 = v6;
    goto LABEL_15;
  }

  if (*(v0 + 24) == 1)
  {
    sub_1D1E6884C();

    v18[0] = 0xD000000000000013;
    v18[1] = 0x80000001D1EB9B30;
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644130, &qword_1D1E74CD8);
    v4 = sub_1D1E6789C();
    MEMORY[0x1D3890F70](v4);

    MEMORY[0x1D3890F70](0x3A726F727265202CLL, 0xE900000000000020);
    v5 = v1;
LABEL_15:
    v15 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644250, &qword_1D1E75500);
    v16 = sub_1D1E6789C();
    MEMORY[0x1D3890F70](v16);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v18[0];
  }

  return 0x6968747972657665;
}

uint64_t CameraController.Mode.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return 1701736302;
    }

    sub_1D1E6884C();

    v19 = 0xD000000000000013;
    v3 = sub_1D1E6932C();
  }

  else
  {
    if (BYTE1(v2) == 5)
    {
      v5 = 0xE300000000000000;
      v6 = 7104878;
    }

    else
    {
      v8 = 0x647261646E617473;
      v9 = 0xE400000000000000;
      v10 = 1751607656;
      v11 = 0xE900000000000068;
      v12 = 0x676968206C6C7566;
      if (BYTE1(v2) != 3)
      {
        v12 = 0x6968206172746C75;
        v11 = 0xEA00000000006867;
      }

      if (BYTE1(v2) != 2)
      {
        v10 = v12;
        v9 = v11;
      }

      if (BYTE1(v2))
      {
        v8 = 0x6465636E61686E65;
      }

      if (BYTE1(v2) <= 1u)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      if (BYTE1(v2) <= 1u)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = v9;
      }

      MEMORY[0x1D3890F70](v13, v14);

      v6 = 0;
      v5 = 0xE000000000000000;
    }

    v19 = 0;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0x61286D6165727473, 0xEE00203A6F696475);
    sub_1D1E68ABC();
    MEMORY[0x1D3890F70](0x756C6F736572202CLL, 0xEE00203A6E6F6974);
    MEMORY[0x1D3890F70](v6, v5);

    MEMORY[0x1D3890F70](0x6E6F6974706F202CLL, 0xEB00000000203A73);
    v15 = sub_1D18D4FC0(qword_1F4D5F418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F58, &unk_1D1E74CE0);
    swift_arrayDestroy();
    sub_1D17DC554(v15, v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F60, &qword_1D1E746D0);
    sub_1D17DC838();
    sub_1D17D8EF0();
    v16 = sub_1D1E67B0C();
    v18 = v17;

    MEMORY[0x1D3890F70](v16, v18);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);
    v3 = 91;
    v4 = 0xE100000000000000;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return v19;
}

BOOL sub_1D17E0A08(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return (_s13HomeDataModel16CameraControllerC4ModeO1loiySbAE_AEtFZ_0(&v5, &v7) & 1) == 0;
}

BOOL sub_1D17E0A58(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return (_s13HomeDataModel16CameraControllerC4ModeO1loiySbAE_AEtFZ_0(&v7, &v5) & 1) == 0;
}

uint64_t sub_1D17E0AA8(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s13HomeDataModel16CameraControllerC4ModeO1loiySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t _s13HomeDataModel16CameraControllerC4ModeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v9 = *a1;
    if (*a1)
    {
      if (v9 == 1)
      {
        v10 = 0x676E696D6F636E69;
      }

      else
      {
        v10 = 0x7463657269646962;
      }

      if (v9 == 1)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xED00006C616E6F69;
      }

      v12 = *a2;
      if (*a2)
      {
LABEL_16:
        if (v12 == 1)
        {
          v13 = 0x676E696D6F636E69;
        }

        else
        {
          v13 = 0x7463657269646962;
        }

        if (v12 == 1)
        {
          v14 = 0xE800000000000000;
        }

        else
        {
          v14 = 0xED00006C616E6F69;
        }

        if (v10 != v13)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      v10 = 0x646574756DLL;
      v12 = *a2;
      if (*a2)
      {
        goto LABEL_16;
      }
    }

    v14 = 0xE500000000000000;
    if (v10 != 0x646574756DLL)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (v11 == v14)
    {

      goto LABEL_35;
    }

LABEL_34:
    v16 = sub_1D1E6904C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }

LABEL_35:
    v17 = v5 & 0xFF00;
    if ((v3 & 0xFF00) == 0x500)
    {
      if (v17 != 1280)
      {
        return 0;
      }
    }

    else if (v17 == 1280 || ((v5 ^ v3) & 0xFF00) != 0)
    {
      return 0;
    }

    return v2 == v4;
  }

  if (*(a1 + 16) != 1)
  {
    return v6 == 2 && (v4 | v5) == 0;
  }

  if (v6 != 1)
  {
    return 0;
  }

  v7 = *a1;

  return sub_1D1E6937C();
}

uint64_t _s13HomeDataModel16CameraControllerC4ModeO1loiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v10 = *a1;
    v11 = *a2;
    v12 = 0xE800000000000000;
    v13 = 0x676E696D6F636E69;
    if (v10 != 1)
    {
      v13 = 0x7463657269646962;
      v12 = 0xED00006C616E6F69;
    }

    if (*a1)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0x646574756DLL;
    }

    if (v10)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = 0xE800000000000000;
    v17 = 0x676E696D6F636E69;
    if (v11 != 1)
    {
      v17 = 0x7463657269646962;
      v16 = 0xED00006C616E6F69;
    }

    if (*a2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0x646574756DLL;
    }

    if (*a2)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    if (v14 == v18 && v15 == v19)
    {
    }

    else
    {
      v20 = sub_1D1E6904C();

      if ((v20 & 1) == 0)
      {
        if (v11 == 2)
        {
          return 1;
        }

        goto LABEL_45;
      }
    }

    if ((v2 & 0xFF00) != 0x500)
    {
      return BYTE1(v4) != 5 && BYTE1(v2) < BYTE1(v4);
    }

    result = 1;
    if (BYTE1(v4) != 5 || v11 == 2)
    {
      return result;
    }

LABEL_45:
    if (v10 != 2)
    {
      v9 = v11 != 1 && v10 == 1;
      return !v9;
    }

    return 0;
  }

  if (v3 != 1)
  {
    if (*(a2 + 16))
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (!*(a2 + 16))
  {
    return 1;
  }

  if (*(a2 + 16) != 1)
  {
LABEL_11:
    v9 = v3 == 1;
    return !v9;
  }

  v5 = a1[1];
  v6 = a2[1];
  v7 = *a1;

  return sub_1D1E6934C();
}

unint64_t sub_1D17E0EDC()
{
  result = qword_1EC644248;
  if (!qword_1EC644248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644248);
  }

  return result;
}

uint64_t _s4ModeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t _s4ModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D17E0FBC(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D17E0FD4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel16CameraControllerC7ContentO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1D17E1024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 25))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 24) >> 1) & 0x3E | (*(a1 + 24) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D17E1078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1D17E1108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D17E1150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D17E1198(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t CamerasModel.currentHomeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  return sub_1D17783E0(v5 + v3, a1);
}

uint64_t sub_1D17E1290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  return sub_1D17783E0(v3 + v4, a2);
}

uint64_t sub_1D17E1358(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D17783E0(a1, &v10 - v6);
  v8 = *a2;
  return sub_1D17E1438(v7);
}

uint64_t type metadata accessor for CamerasModel()
{
  result = qword_1EC6442A0;
  if (!qword_1EC6442A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D17E1438(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v1 + v7, v6);
  v8 = sub_1D17E60E8(v6, a1);
  sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
    sub_1D1E66C9C();
  }

  else
  {
    swift_beginAccess();
    sub_1D17E695C(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_1D1741A30(a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D17E161C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17E695C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t CamerasModel.homesToCameraControllers.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v1 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1D17E1748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D17E1810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D17E183C(v4);
}

uint64_t sub_1D17E183C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1D18539C8(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17E198C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

id CamerasModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D17E1BB4()
{
  result = [objc_allocWithZone(type metadata accessor for CamerasModel()) init];
  qword_1EC644258 = result;
  return result;
}

id static CamerasModel.shared.getter()
{
  if (qword_1EC642150 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC644258;

  return v1;
}

uint64_t CamerasModel.subscript.getter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11[-v6];
  swift_getKeyPath();
  v14 = v1;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v8 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v2 + v8, v7);
  v12 = v2;
  v13 = a1;
  v9 = sub_1D17BE6B4(sub_1D17E1F24);
  sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
  return v9;
}

uint64_t sub_1D17E1DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getKeyPath();
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v8 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  result = swift_beginAccess();
  v10 = *(a2 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  v11 = sub_1D1742188(a1);
  if ((v12 & 1) == 0 || (v13 = *(*(v10 + 56) + 8 * v11), , , !*(v13 + 16)) || (v14 = sub_1D1742188(a3), (v15 & 1) == 0))
  {

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v17 = *(v16 + 112);

LABEL_8:
  *a4 = v17;
  return result;
}

uint64_t CamerasModel.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v15 = v2;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v5 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v6 = *(v15 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_1D1742188(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if (*(v9 + 16))
      {
        v10 = sub_1D1742188(a2);
        if (v11)
        {
          v12 = *(*(v9 + 56) + 8 * v10);

          v13 = *(v12 + 112);

          return v13;
        }
      }
    }
  }

  return 0;
}

unint64_t CamerasModel.cameraControllersForCurrentHome.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v19 - v9;
  swift_getKeyPath();
  v20 = v0;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v11 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v1 + v11, v10);
  if ((*(v3 + 48))(v10, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    swift_getKeyPath();
    v19[0] = v1;
    sub_1D1E66CAC();

    v12 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (*(v13 + 16))
    {

      v14 = sub_1D1742188(v6);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);
        v17 = *(v3 + 8);

        v17(v6, v2);

        return v16;
      }
    }

    (*(v3 + 8))(v6, v2);
  }

  return sub_1D18D8BB4(MEMORY[0x1E69E7CC0]);
}

unint64_t CamerasModel.camerasForCurrentHome.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v19 - v9;
  swift_getKeyPath();
  v20 = v0;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v11 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v1 + v11, v10);
  if ((*(v3 + 48))(v10, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    swift_getKeyPath();
    v19[2] = v1;
    sub_1D1E66CAC();

    v12 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (*(v13 + 16))
    {

      v14 = sub_1D1742188(v6);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);

        v17 = sub_1D17E5D98(v16);

        (*(v3 + 8))(v6, v2);
        return v17;
      }
    }

    (*(v3 + 8))(v6, v2);
  }

  return sub_1D18D8BD8(MEMORY[0x1E69E7CC0]);
}

uint64_t _s13HomeDataModel07CamerasC0C15setupForTesting4withySo13HMHomeManagerC_tF_0(void *a1)
{
  v75 = sub_1D1E66A7C();
  v70 = *(v75 - 8);
  v2 = *(v70 + 64);
  v3 = MEMORY[0x1EEE9AC00](v75);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v58 - v5;
  v59 = a1;
  v6 = [a1 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  v8 = sub_1D18D8B90(MEMORY[0x1E69E7CC0]);
  if (v7 >> 62)
  {
    goto LABEL_70;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_3:
    v10 = 0;
    v64 = v7 & 0xFFFFFFFFFFFFFF8;
    v65 = v7 & 0xC000000000000001;
    v63 = v7 + 32;
    v69 = v70 + 16;
    v74 = (v70 + 8);
    v60 = v9;
    v61 = v7;
    while (1)
    {
      if (v65)
      {
        v16 = MEMORY[0x1D3891EF0](v10, v7);
        v17 = __OFADD__(v10, 1);
        v18 = v10 + 1;
        if (v17)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v10 >= *(v64 + 16))
        {
          goto LABEL_68;
        }

        v16 = *(v63 + 8 * v10);
        v17 = __OFADD__(v10, 1);
        v18 = v10 + 1;
        if (v17)
        {
          goto LABEL_67;
        }
      }

      v67 = v18;
      v68 = v8;
      v66 = v16;
      v19 = [v16 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v20 = sub_1D1E67C1C();

      v77[0] = MEMORY[0x1E69E7CC0];
      if (v20 >> 62)
      {
        break;
      }

      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_10;
      }

LABEL_37:
      v8 = MEMORY[0x1E69E7CC0];
LABEL_38:

      v32 = sub_1D18D8BB4(MEMORY[0x1E69E7CC0]);
      if (v8 >> 62)
      {
        v33 = sub_1D1E6873C();
        if (!v33)
        {
          goto LABEL_4;
        }

LABEL_40:
        v34 = 0;
        v72 = v8 & 0xFFFFFFFFFFFFFF8;
        v73 = v8 & 0xC000000000000001;
        v71 = v8;
        while (2)
        {
          if (v73)
          {
            v36 = MEMORY[0x1D3891EF0](v34, v8);
          }

          else
          {
            if (v34 >= *(v72 + 16))
            {
              goto LABEL_64;
            }

            v36 = *(v8 + 8 * v34 + 32);
          }

          v8 = v36;
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_63;
          }

          v38 = [v36 uniqueIdentifier];
          v39 = v76;
          sub_1D1E66A5C();

          v77[0] = 0;
          v77[1] = 0;
          v78 = 2;
          v40 = type metadata accessor for CameraController();
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          swift_allocObject();
          v8 = v8;
          v43 = sub_1D17CA954(v8, v77);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77[0] = v32;
          v7 = v32;
          v46 = sub_1D1742188(v39);
          v47 = v32[2];
          v48 = (v45 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            goto LABEL_65;
          }

          v50 = v45;
          if (v32[3] >= v49)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v32 = v77[0];
              if ((v45 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else
            {
              sub_1D1737C58();
              v32 = v77[0];
              if ((v50 & 1) == 0)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            sub_1D172655C(v49, isUniquelyReferenced_nonNull_native);
            v51 = sub_1D1742188(v76);
            if ((v50 & 1) != (v52 & 1))
            {
              result = sub_1D1E690FC();
              __break(1u);
              return result;
            }

            v46 = v51;
            v32 = v77[0];
            if ((v50 & 1) == 0)
            {
LABEL_54:
              v32[(v46 >> 6) + 8] |= 1 << v46;
              v53 = v70;
              v7 = v75;
              v54 = v76;
              (*(v70 + 16))(v32[6] + *(v70 + 72) * v46, v76, v75);
              *(v32[7] + 8 * v46) = v43;

              (*(v53 + 8))(v54, v7);
              v55 = v32[2];
              v17 = __OFADD__(v55, 1);
              v56 = v55 + 1;
              if (v17)
              {
                goto LABEL_66;
              }

              v32[2] = v56;
              goto LABEL_42;
            }
          }

          v35 = v32[7];
          v7 = *(v35 + 8 * v46);
          *(v35 + 8 * v46) = v43;

          (*v74)(v76, v75);
LABEL_42:
          ++v34;
          v8 = v71;
          if (v37 == v33)
          {
            goto LABEL_4;
          }

          continue;
        }
      }

      v33 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_40;
      }

LABEL_4:

      v11 = v66;
      v12 = [v66 uniqueIdentifier];
      v13 = v62;
      sub_1D1E66A5C();

      v14 = v68;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v14;
      sub_1D1753AF4(v32, v13, v15);
      (*v74)(v13, v75);

      v8 = v77[0];
      v7 = v61;
      v10 = v67;
      if (v67 == v60)
      {
        goto LABEL_71;
      }
    }

    v21 = sub_1D1E6873C();
    if (!v21)
    {
      goto LABEL_37;
    }

LABEL_10:
    v22 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v23 = v8;
      v24 = v22;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1D3891EF0](v24, v20);
        }

        else
        {
          if (v24 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v25 = *(v20 + 8 * v24 + 32);
        }

        v7 = v25;
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v26 = [v25 cameraProfiles];
        if (!v26)
        {
          goto LABEL_13;
        }

        v8 = v26;
        sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
        v27 = sub_1D1E67C1C();

        v28 = v27;
        if (!(v27 >> 62))
        {
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          goto LABEL_12;
        }

        v8 = v27;
        v29 = sub_1D1E6873C();
        v28 = v27;
        if (v29)
        {
          break;
        }

LABEL_12:

LABEL_13:

        ++v24;
        if (v22 == v21)
        {
          v8 = v23;
          goto LABEL_38;
        }
      }

      if ((v28 & 0xC000000000000001) == 0)
      {
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v30 = *(v28 + 32);
          goto LABEL_27;
        }

LABEL_69:
        __break(1u);
LABEL_70:
        v9 = sub_1D1E6873C();
        if (!v9)
        {
          break;
        }

        goto LABEL_3;
      }

      MEMORY[0x1D3891EF0](0);
LABEL_27:

      v7 = v77;
      MEMORY[0x1D3891220]();
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v8 = v77[0];
      if (v22 == v21)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_71:

  sub_1D17E183C(v8);
  return sub_1D17E2D84(v59);
}

uint64_t sub_1D17E2D84(void *a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v55 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v55 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = [a1 currentHome];
  v63 = v4;
  v60 = v12;
  if (v23)
  {
    v24 = v23;
    v25 = [v23 uniqueIdentifier];

    sub_1D1E66A5C();
    v26 = v4[4];
    v26(v20, v7, v3);
    v27 = v4[7];
    v27(v20, 0, 1, v3);
    v26(v22, v20, v3);
    v27(v22, 0, 1, v3);
    v28 = v62;
  }

  else
  {
    v56 = v4[7];
    v57 = v4 + 7;
    v56(v20, 1, 1, v3);
    v29 = [a1 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v30 = sub_1D1E67C1C();

    v61 = v22;
    v58 = v1;
    v59 = v15;
    if (v30 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v32 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1D3891EF0](v32, v30);
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v33 = *(v30 + 8 * v32 + 32);
        }

        v34 = v33;
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if ([v33 isPrimary])
        {

          v36 = [v34 uniqueIdentifier];

          v22 = v61;
          sub_1D1E66A5C();

          v37 = 0;
          goto LABEL_19;
        }

        ++v32;
        if (v35 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v37 = 1;
    v22 = v61;
LABEL_19:
    v56(v22, v37, 1, v3);
    v38 = (v63[6])(v20, 1, v3);
    v15 = v59;
    v28 = v62;
    if (v38 != 1)
    {
      sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
    }
  }

  sub_1D17783E0(v22, v28);
  sub_1D17E1438(v28);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v39 = sub_1D1E6709C();
  __swift_project_value_buffer(v39, qword_1EC64F3F8);
  sub_1D17783E0(v22, v15);
  v40 = v15;
  v41 = sub_1D1E6707C();
  v42 = sub_1D1E6835C();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v63;
  if (v43)
  {
    v61 = v22;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v64 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9C00, &v64);
    *(v45 + 12) = 2080;
    v47 = v40;
    v48 = v60;
    sub_1D17783E0(v40, v60);
    if ((v44[6])(v48, 1, v3) == 1)
    {
      sub_1D1741A30(v48, &qword_1EC642590, qword_1D1E71260);
      v49 = 0xE300000000000000;
      v50 = 7104878;
    }

    else
    {
      v50 = sub_1D1E66A1C();
      v49 = v52;
      (v44[1])(v48, v3);
    }

    sub_1D1741A30(v47, &qword_1EC642590, qword_1D1E71260);
    v53 = sub_1D1B1312C(v50, v49, &v64);

    *(v45 + 14) = v53;
    _os_log_impl(&dword_1D16EC000, v41, v42, "%s current home ID: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v46, -1, -1);
    MEMORY[0x1D3893640](v45, -1, -1);

    v51 = v61;
  }

  else
  {

    sub_1D1741A30(v40, &qword_1EC642590, qword_1D1E71260);
    v51 = v22;
  }

  return sub_1D1741A30(v51, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D17E3414(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D17E63D8(a1);
  v39 = a1;
  v15 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  v43 = v2;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v43 = v2;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v16 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v17 = *(v2 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v2 + v16);
  *(v2 + v16) = 0x8000000000000000;
  sub_1D1753AF4(v41, v14, isUniquelyReferenced_nonNull_native);
  v37 = *(v11 + 8);
  v38 = v14;
  v37(v14, v10);
  *(v2 + v16) = v42;
  swift_endAccess();
  v43 = v2;
  swift_getKeyPath();
  sub_1D1E66CBC();

  swift_getKeyPath();
  v43 = v2;
  v19 = v10;
  sub_1D1E66CAC();

  v20 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v2 + v20, v9);
  v41 = v11;
  LODWORD(v20) = (*(v11 + 48))(v9, 1, v10);
  result = sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
  if (v20 == 1)
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v22 = sub_1D1E6709C();
    __swift_project_value_buffer(v22, qword_1EC64F3F8);
    v23 = v39;
    v24 = sub_1D1E6707C();
    v25 = sub_1D1E6835C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v26 = 136315394;
      *(v26 + 4) = sub_1D1B1312C(0xD00000000000001ALL, 0x80000001D1EB9BE0, &v42);
      *(v26 + 12) = 2080;
      v27 = [v23 uniqueIdentifier];
      v28 = v38;
      sub_1D1E66A5C();

      sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v29 = sub_1D1E68FAC();
      v31 = v30;
      v37(v28, v19);
      v32 = sub_1D1B1312C(v29, v31, &v42);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_1D16EC000, v24, v25, "%s currentHomeIdentifier is nil, setting it to %s", v26, 0x16u);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v33, -1, -1);
      MEMORY[0x1D3893640](v26, -1, -1);
    }

    v34 = [v23 uniqueIdentifier];
    v35 = v40;
    sub_1D1E66A5C();

    (*(v41 + 56))(v35, 0, 1, v19);
    return sub_1D17E1438(v35);
  }

  return result;
}

uint64_t sub_1D17E39B0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  v11 = v2;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v11 = v2;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  sub_1D1B0D564(0, v7);
  swift_endAccess();
  v11 = v2;
  swift_getKeyPath();
  sub_1D1E66CBC();
}

void sub_1D17E3B60(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - v12;
  v14 = [a1 cameraProfiles];
  if (v14)
  {
    v15 = v14;
    sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
    v16 = sub_1D1E67C1C();

    if (v16 >> 62)
    {
      if (sub_1D1E6873C())
      {
LABEL_4:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = v7;
          v18 = MEMORY[0x1D3891EF0](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v17 = v7;
          v18 = *(v16 + 32);
        }

        v74 = v18;

        v75 = a2;
        v19 = [a2 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_getKeyPath();
        v20 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel___observationRegistrar;
        v79 = v3;
        v21 = sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
        v73 = v20;
        sub_1D1E66CAC();

        v22 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
        swift_beginAccess();
        v23 = *(v3 + v22);
        if (*(v23 + 16))
        {
          v24 = *(v3 + v22);

          v25 = sub_1D1742188(v13);
          if (v26)
          {
            v27 = *(*(v23 + 56) + 8 * v25);
            v71 = v21;
            v28 = *(v17 + 8);

            v28(v13, v6);
            v72 = v28;

            v29 = v74;
            v30 = [v74 uniqueIdentifier];
            sub_1D1E66A5C();

            v77[0] = 0;
            v77[1] = 0;
            v78 = 2;
            v31 = type metadata accessor for CameraController();
            v32 = *(v31 + 48);
            v33 = *(v31 + 52);
            swift_allocObject();
            v74 = v29;
            v34 = sub_1D17CA954(v74, v77);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77[0] = v27;
            sub_1D1753B34(v34, v11, isUniquelyReferenced_nonNull_native);
            v28(v11, v6);
            v70 = v77[0];
            v36 = [v75 uniqueIdentifier];
            sub_1D1E66A5C();

            swift_getKeyPath();
            v77[0] = v3;
            sub_1D1E66CAC();

            v77[0] = v3;
            swift_getKeyPath();
            sub_1D1E66CCC();

            swift_beginAccess();
            v37 = *(v3 + v22);
            v38 = swift_isUniquelyReferenced_nonNull_native();
            v76 = *(v3 + v22);
            *(v3 + v22) = 0x8000000000000000;
            sub_1D1753AF4(v70, v11, v38);
            v70 = v17 + 8;
            v72(v11, v6);
            *(v3 + v22) = v76;
            swift_endAccess();
            v77[0] = v3;
            swift_getKeyPath();
            sub_1D1E66CBC();

            if (qword_1EC642458 != -1)
            {
              swift_once();
            }

            v39 = sub_1D1E6709C();
            __swift_project_value_buffer(v39, qword_1EC64F3F8);
            v40 = v74;
            v41 = v75;
            v42 = sub_1D1E6707C();
            v43 = sub_1D1E6835C();

            if (!os_log_type_enabled(v42, v43))
            {

              return;
            }

            v44 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v77[0] = v75;
            *v44 = 136315650;
            *(v44 + 4) = sub_1D1B1312C(0x656D616328646461, 0xEF293A6F743A6172, v77);
            *(v44 + 12) = 2080;
            v45 = [v40 uniqueIdentifier];
            LODWORD(v73) = v43;
            v46 = v45;
            sub_1D1E66A5C();

            sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
            v47 = sub_1D1E68FAC();
            v49 = v48;
            v74 = v40;
            v50 = v72;
            v72(v11, v6);
            v51 = sub_1D1B1312C(v47, v49, v77);

            *(v44 + 14) = v51;
            *(v44 + 22) = 2080;
            v52 = [v41 uniqueIdentifier];
            sub_1D1E66A5C();

            v53 = sub_1D1E68FAC();
            v55 = v54;
            v50(v11, v6);
            v56 = sub_1D1B1312C(v53, v55, v77);

            *(v44 + 24) = v56;
            _os_log_impl(&dword_1D16EC000, v42, v73, "%s added camera profile %s to home %s", v44, 0x20u);
            v57 = v75;
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v57, -1, -1);
            v58 = v44;
            goto LABEL_17;
          }
        }

        v15 = *(v17 + 8);
        (v15)(v13, v6);
        if (qword_1EC642458 == -1)
        {
LABEL_15:
          v59 = sub_1D1E6709C();
          __swift_project_value_buffer(v59, qword_1EC64F3F8);
          v60 = v75;
          v42 = sub_1D1E6707C();
          v61 = sub_1D1E6833C();

          if (!os_log_type_enabled(v42, v61))
          {
LABEL_18:

            return;
          }

          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v77[0] = v63;
          *v62 = 136315394;
          *(v62 + 4) = sub_1D1B1312C(0x656D616328646461, 0xEF293A6F743A6172, v77);
          *(v62 + 12) = 2080;
          v64 = [v60 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
          v65 = sub_1D1E68FAC();
          v67 = v66;
          (v15)(v11, v6);
          v68 = sub_1D1B1312C(v65, v67, v77);

          *(v62 + 14) = v68;
          _os_log_impl(&dword_1D16EC000, v42, v61, "%s failed to add camera, could not find home %s", v62, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v63, -1, -1);
          v58 = v62;
LABEL_17:
          MEMORY[0x1D3893640](v58, -1, -1);
          goto LABEL_18;
        }

LABEL_27:
        swift_once();
        goto LABEL_15;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

void sub_1D17E44B4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v64 - v12;
  v14 = [a1 cameraProfiles];
  if (v14)
  {
    v15 = v14;
    sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
    v16 = sub_1D1E67C1C();

    if (v16 >> 62)
    {
      if (sub_1D1E6873C())
      {
LABEL_4:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1D3891EF0](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v17 = *(v16 + 32);
        }

        v69 = v17;

        v68 = a2;
        v18 = [a2 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_getKeyPath();
        v19 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel___observationRegistrar;
        v71[3] = v3;
        sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
        sub_1D1E66CAC();

        v20 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
        swift_beginAccess();
        v21 = *(v3 + v20);
        if (*(v21 + 16))
        {
          v22 = *(v3 + v20);

          v23 = sub_1D1742188(v13);
          if (v24)
          {
            v25 = *(*(v21 + 56) + 8 * v23);
            v65 = v19;
            v66 = v6;
            v67 = *(v7 + 8);
            v26 = v67;

            v26(v13, v6);

            v72 = v25;
            v27 = [v69 uniqueIdentifier];
            sub_1D1E66A5C();

            sub_1D1B0D724(0, v11);
            v28 = [v68 uniqueIdentifier];
            sub_1D1E66A5C();

            v29 = v72;
            swift_getKeyPath();
            v71[0] = v3;
            sub_1D1E66CAC();

            v71[0] = v3;
            swift_getKeyPath();
            sub_1D1E66CCC();

            swift_beginAccess();
            v30 = *(v3 + v20);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v70 = *(v3 + v20);
            *(v3 + v20) = 0x8000000000000000;
            sub_1D1753AF4(v29, v11, isUniquelyReferenced_nonNull_native);
            v67(v11, v66);
            *(v3 + v20) = v70;
            swift_endAccess();
            v71[0] = v3;
            swift_getKeyPath();
            sub_1D1E66CBC();

            if (qword_1EC642458 != -1)
            {
              swift_once();
            }

            v32 = sub_1D1E6709C();
            __swift_project_value_buffer(v32, qword_1EC64F3F8);
            v33 = v69;
            v34 = v68;
            v35 = sub_1D1E6707C();
            v36 = sub_1D1E6835C();

            if (!os_log_type_enabled(v35, v36))
            {

              return;
            }

            v37 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v71[0] = v69;
            *v37 = 136315650;
            *(v37 + 4) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EB9BC0, v71);
            *(v37 + 12) = 2080;
            v38 = [v33 uniqueIdentifier];
            LODWORD(v65) = v36;
            v39 = v38;
            sub_1D1E66A5C();

            sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
            v40 = v66;
            v41 = sub_1D1E68FAC();
            v43 = v42;
            v68 = v33;
            v44 = v67;
            v67(v11, v40);
            v45 = sub_1D1B1312C(v41, v43, v71);

            *(v37 + 14) = v45;
            *(v37 + 22) = 2080;
            v46 = [v34 uniqueIdentifier];
            sub_1D1E66A5C();

            v47 = sub_1D1E68FAC();
            v49 = v48;
            v44(v11, v40);
            v50 = sub_1D1B1312C(v47, v49, v71);

            *(v37 + 24) = v50;
            _os_log_impl(&dword_1D16EC000, v35, v65, "%s removed camera profile %s to home %s", v37, 0x20u);
            v51 = v69;
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v51, -1, -1);
            MEMORY[0x1D3893640](v37, -1, -1);

            v52 = v68;
            goto LABEL_18;
          }
        }

        v15 = *(v7 + 8);
        (v15)(v13, v6);
        if (qword_1EC642458 == -1)
        {
LABEL_15:
          v53 = sub_1D1E6709C();
          __swift_project_value_buffer(v53, qword_1EC64F3F8);
          v54 = v68;
          v55 = sub_1D1E6707C();
          v56 = sub_1D1E6833C();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v71[0] = v58;
            *v57 = 136315394;
            *(v57 + 4) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EB9BC0, v71);
            *(v57 + 12) = 2080;
            v59 = [v54 uniqueIdentifier];
            sub_1D1E66A5C();

            sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
            v60 = sub_1D1E68FAC();
            v62 = v61;
            (v15)(v11, v6);
            v63 = sub_1D1B1312C(v60, v62, v71);

            *(v57 + 14) = v63;
            _os_log_impl(&dword_1D16EC000, v55, v56, "%s failed to add camera, could not find home %s", v57, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v58, -1, -1);
            MEMORY[0x1D3893640](v57, -1, -1);
          }

          v52 = v69;
LABEL_18:

          return;
        }

LABEL_27:
        swift_once();
        goto LABEL_15;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

uint64_t CamerasModel.tearDownForTesting()()
{
  v1[6] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644280, &qword_1D1E755F0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644288, &qword_1D1E755F8) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1D1E67E1C();
  v1[14] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v1[15] = v8;
  v1[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D17E4F1C, v8, v7);
}

uint64_t sub_1D17E4F1C()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  *(v0 + 40) = v1;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 136) = v3;
  v4 = *(v3 + 32);
  *(v0 + 200) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = *(v0 + 136);
LABEL_14:
      v17 = *(v0 + 88);
      v18 = *(v0 + 96);
      v20 = *(v0 + 72);
      v19 = *(v0 + 80);
      v21 = (v7 - 1) & v7;
      v22 = __clz(__rbit64(v7)) | (v11 << 6);
      (*(v19 + 16))(v17, *(v12 + 48) + *(v19 + 72) * v22, v20);
      v23 = *(*(v12 + 56) + 8 * v22);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      v25 = *(v24 + 48);
      (*(v19 + 32))(v18, v17, v20);
      *(v18 + v25) = v23;
      (*(*(v24 - 8) + 56))(v18, 0, 1, v24);

      v15 = v11;
LABEL_15:
      *(v0 + 144) = v21;
      *(v0 + 152) = v15;
      v26 = *(v0 + 104);
      sub_1D1741A90(*(v0 + 96), v26, &qword_1EC644288, &qword_1D1E755F8);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
      {
        break;
      }

      v28 = *(*(v0 + 104) + *(v27 + 48));
      *(v0 + 160) = v28;
      v29 = *(v28 + 32);
      *(v0 + 201) = v29;
      v30 = -1 << v29;
      if (-(-1 << v29) < 64)
      {
        v31 = ~(-1 << -(-1 << v29));
      }

      else
      {
        v31 = -1;
      }

      v32 = v31 & *(v28 + 64);
      if (v32)
      {
        v33 = 0;
LABEL_24:
        v36 = *(v0 + 80);
        v37 = *(v0 + 88);
        v38 = *(v0 + 72);
        v39 = *(v0 + 56);
        v40 = (v32 - 1) & v32;
        v41 = __clz(__rbit64(v32)) | (v33 << 6);
        (*(v36 + 16))(v37, *(v28 + 48) + *(v36 + 72) * v41, v38);
        v42 = *(*(v28 + 56) + 8 * v41);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
        v44 = *(v43 + 48);
        (*(v36 + 32))(v39, v37, v38);
        *(v39 + v44) = v42;
        (*(*(v43 - 8) + 56))(v39, 0, 1, v43);

        v35 = v33;
      }

      else
      {
        v34 = 0;
        v35 = ((63 - v30) >> 6) - 1;
        while (v35 != v34)
        {
          v33 = v34 + 1;
          v32 = *(v28 + 72 + 8 * v34++);
          if (v32)
          {
            goto LABEL_24;
          }
        }

        v53 = *(v0 + 56);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        v40 = 0;
      }

      *(v0 + 168) = v40;
      *(v0 + 176) = v35;
      v45 = *(v0 + 64);
      sub_1D1741A90(*(v0 + 56), v45, &qword_1EC644280, &qword_1D1E755F0);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
      {
        v9 = *(*(v0 + 64) + *(v46 + 48));
        *(v0 + 184) = v9;
        v8 = sub_1D17E5564;
        v10 = 0;

        return MEMORY[0x1EEE6DFA0](v8, v9, v10);
      }

      v47 = *(v0 + 160);
      v48 = *(v0 + 104);
      v50 = *(v0 + 72);
      v49 = *(v0 + 80);

      v8 = (*(v49 + 8))(v48, v50);
      v7 = *(v0 + 144);
      v11 = *(v0 + 152);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v55 = *(v0 + 136);
    v56 = *(v0 + 104);
    v57 = *(v0 + 112);
    v59 = *(v0 + 88);
    v58 = *(v0 + 96);
    v61 = *(v0 + 56);
    v60 = *(v0 + 64);
    v62 = *(v0 + 48);

    v63 = sub_1D18D8B90(MEMORY[0x1E69E7CC0]);
    sub_1D17E183C(v63);

    v64 = *(v0 + 8);

    return v64();
  }

  else
  {
LABEL_6:
    v13 = ((1 << *(v0 + 200)) + 63) >> 6;
    if (v13 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = ((1 << *(v0 + 200)) + 63) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v51 = *(v0 + 96);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
        (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
        v21 = 0;
        goto LABEL_15;
      }

      v12 = *(v0 + 136);
      v7 = *(v12 + 8 * v16 + 64);
      ++v11;
      if (v7)
      {
        v11 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1D17E5564()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask;
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask);

    sub_1D1E67F5C();

    v4 = *(v1 + v2);
  }

  v5 = *(v0 + 184);
  *(v1 + v2) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67EDC();
  if (*(v5 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
  {
    v6 = *(v5 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67F5C();
  }

  v7 = *(v0 + 184);
  v8 = [*(v7 + 120) streamControl];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 streamState];

    if ((v10 - 1) <= 1)
    {
      v11 = [*(v7 + 120) streamControl];
      [v11 stopStream];
    }
  }

  v12 = *(*(v0 + 184) + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager);
  *(v0 + 192) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D17E572C, v12, 0);
}

uint64_t sub_1D17E572C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  sub_1D17CDB9C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E5794, v1, 0);
}

uint64_t sub_1D17E57C0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = (*(v3 + 8))(v4, v2);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  if (v8)
  {
    while (1)
    {
      v10 = *(v0 + 160);
LABEL_11:
      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      v17 = *(v0 + 72);
      v18 = *(v0 + 56);
      v19 = (v8 - 1) & v8;
      v20 = __clz(__rbit64(v8)) | (v9 << 6);
      (*(v15 + 16))(v16, *(v10 + 48) + *(v15 + 72) * v20, v17);
      v21 = *(*(v10 + 56) + 8 * v20);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
      v23 = *(v22 + 48);
      (*(v15 + 32))(v18, v16, v17);
      *(v18 + v23) = v21;
      (*(*(v22 - 8) + 56))(v18, 0, 1, v22);

      v13 = v9;
LABEL_12:
      *(v0 + 168) = v19;
      *(v0 + 176) = v13;
      v24 = *(v0 + 64);
      sub_1D1741A90(*(v0 + 56), v24, &qword_1EC644280, &qword_1D1E755F0);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
      if ((*(*(v25 - 8) + 48))(v24, 1, v25) != 1)
      {
        v6 = *(*(v0 + 64) + *(v25 + 48));
        *(v0 + 184) = v6;
        v5 = sub_1D17E5564;
        v7 = 0;

        return MEMORY[0x1EEE6DFA0](v5, v6, v7);
      }

      v26 = *(v0 + 160);
      v27 = *(v0 + 104);
      v29 = *(v0 + 72);
      v28 = *(v0 + 80);

      v5 = (*(v28 + 8))(v27, v29);
      v30 = *(v0 + 144);
      v31 = *(v0 + 152);
      if (!v30)
      {
        break;
      }

      v32 = *(v0 + 136);
LABEL_23:
      v37 = *(v0 + 88);
      v38 = *(v0 + 96);
      v40 = *(v0 + 72);
      v39 = *(v0 + 80);
      v68 = (v30 - 1) & v30;
      v41 = __clz(__rbit64(v30)) | (v31 << 6);
      (*(v39 + 16))(v37, *(v32 + 48) + *(v39 + 72) * v41, v40);
      v42 = *(*(v32 + 56) + 8 * v41);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      v44 = *(v43 + 48);
      (*(v39 + 32))(v38, v37, v40);
      *(v38 + v44) = v42;
      (*(*(v43 - 8) + 56))(v38, 0, 1, v43);

      v45 = v68;
      v35 = v31;
LABEL_24:
      *(v0 + 144) = v45;
      *(v0 + 152) = v35;
      v46 = *(v0 + 104);
      sub_1D1741A90(*(v0 + 96), v46, &qword_1EC644288, &qword_1D1E755F8);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      v5 = (*(*(v47 - 8) + 48))(v46, 1, v47);
      if (v5 == 1)
      {
        v57 = *(v0 + 136);
        v58 = *(v0 + 104);
        v59 = *(v0 + 112);
        v61 = *(v0 + 88);
        v60 = *(v0 + 96);
        v63 = *(v0 + 56);
        v62 = *(v0 + 64);
        v64 = *(v0 + 48);

        v65 = sub_1D18D8B90(MEMORY[0x1E69E7CC0]);
        sub_1D17E183C(v65);

        v66 = *(v0 + 8);

        return v66();
      }

      v9 = 0;
      v48 = *(*(v0 + 104) + *(v47 + 48));
      *(v0 + 160) = v48;
      v49 = *(v48 + 32);
      *(v0 + 201) = v49;
      v50 = 1 << v49;
      v51 = *(v48 + 64);
      if (v50 < 64)
      {
        v52 = ~(-1 << v50);
      }

      else
      {
        v52 = -1;
      }

      v8 = v52 & v51;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    v33 = ((1 << *(v0 + 200)) + 63) >> 6;
    if (v33 <= (v31 + 1))
    {
      v34 = v31 + 1;
    }

    else
    {
      v34 = ((1 << *(v0 + 200)) + 63) >> 6;
    }

    v35 = v34 - 1;
    while (1)
    {
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v36 >= v33)
      {
        v55 = *(v0 + 96);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
        (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
        v45 = 0;
        goto LABEL_24;
      }

      v32 = *(v0 + 136);
      v30 = *(v32 + 8 * v36 + 64);
      ++v31;
      if (v30)
      {
        v31 = v36;
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = ((1 << *(v0 + 201)) + 63) >> 6;
    if (v11 <= (v9 + 1))
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = ((1 << *(v0 + 201)) + 63) >> 6;
    }

    v13 = v12 - 1;
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v53 = *(v0 + 56);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        v19 = 0;
        goto LABEL_12;
      }

      v10 = *(v0 + 160);
      v8 = *(v10 + 8 * v14 + 64);
      ++v9;
      if (v8)
      {
        v9 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D17E5D98(uint64_t a1)
{
  v38 = sub_1D1E66A7C();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442B0, &qword_1D1E7E9A0);
  result = sub_1D1E68BAC();
  v6 = result;
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v33 = result + 64;
  v34 = v2 + 16;
  v37 = v2;
  v31 = v9;
  v32 = v2 + 32;
  v35 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = v38;
      v20 = v39;
      v22 = v36;
      v21 = v37;
      v23 = *(v37 + 72) * v18;
      (*(v37 + 16))(v36, *(v39 + 48) + v23, v38);
      v24 = *(*(v20 + 56) + 8 * v18);
      swift_beginAccess();
      v25 = *(v24 + 112);
      *(v33 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v26 = v35;
      result = (*(v21 + 32))(*(v35 + 48) + v23, v22, v19);
      *(*(v26 + 56) + 8 * v18) = v25;
      v27 = *(v26 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v6 = v26;
      *(v26 + 16) = v29;

      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v31 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D17E6010()
{
  sub_1D177868C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D1E66CEC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D17E60E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D17783E0(a1, &v24 - v16);
  sub_1D17783E0(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1D17783E0(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1D17E69E8(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v21 = sub_1D1E6775C();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v17, &qword_1EC642980, &unk_1D1E6E6E0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D17E63D8(void *a1)
{
  v56 = sub_1D1E66A7C();
  v51 = *(v56 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v5 = sub_1D1E67C1C();

  v58[0] = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_29:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v8;
    v10 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D3891EF0](v10, v5);
      }

      else
      {
        if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v11 = *(v5 + 8 * v10 + 32);
      }

      v12 = v11;
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v6 = sub_1D1E6873C();
        if (!v6)
        {
          goto LABEL_29;
        }

        goto LABEL_3;
      }

      v13 = [v11 cameraProfiles];
      if (v13)
      {
        break;
      }

LABEL_6:

      ++v10;
      if (v7 == v6)
      {
        v8 = v9;
LABEL_30:

        v20 = sub_1D18D8BB4(MEMORY[0x1E69E7CC0]);
        if (v8 >> 62)
        {
          goto LABEL_55;
        }

        v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
LABEL_56:

          return v20;
        }

LABEL_32:
        v22 = 0;
        v54 = v8 & 0xFFFFFFFFFFFFFF8;
        v55 = v8 & 0xC000000000000001;
        v50[1] = v51 + 16;
        v52 = v8;
        v53 = (v51 + 8);
        while (1)
        {
          if (v55)
          {
            v25 = MEMORY[0x1D3891EF0](v22, v8);
          }

          else
          {
            if (v22 >= *(v54 + 16))
            {
              goto LABEL_52;
            }

            v25 = *(v8 + 8 * v22 + 32);
          }

          v26 = v25;
          v27 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            v21 = sub_1D1E6873C();
            if (!v21)
            {
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          v28 = [v25 uniqueIdentifier];
          v29 = v57;
          sub_1D1E66A5C();

          v58[0] = 0;
          v58[1] = 0;
          v59 = 2;
          v30 = type metadata accessor for CameraController();
          v31 = *(v30 + 48);
          v32 = *(v30 + 52);
          swift_allocObject();
          v33 = v26;
          v34 = sub_1D17CA954(v33, v58);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58[0] = v20;
          v8 = v20;
          v37 = sub_1D1742188(v29);
          v38 = v20[2];
          v39 = (v36 & 1) == 0;
          v40 = v38 + v39;
          if (__OFADD__(v38, v39))
          {
            goto LABEL_53;
          }

          v41 = v36;
          if (v20[3] >= v40)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v20 = v58[0];
              if (v36)
              {
                goto LABEL_33;
              }
            }

            else
            {
              sub_1D1737C58();
              v20 = v58[0];
              if (v41)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            sub_1D172655C(v40, isUniquelyReferenced_nonNull_native);
            v42 = sub_1D1742188(v57);
            if ((v41 & 1) != (v43 & 1))
            {
              goto LABEL_58;
            }

            v37 = v42;
            v20 = v58[0];
            if (v41)
            {
LABEL_33:
              v23 = v20[7];
              v24 = *(v23 + 8 * v37);
              *(v23 + 8 * v37) = v34;

              (*v53)(v57, v56);
              goto LABEL_34;
            }
          }

          v20[(v37 >> 6) + 8] |= 1 << v37;
          v44 = v51;
          v8 = v56;
          v45 = v57;
          (*(v51 + 16))(v20[6] + *(v51 + 72) * v37, v57, v56);
          *(v20[7] + 8 * v37) = v34;

          (*(v44 + 8))(v45, v8);
          v46 = v20[2];
          v47 = __OFADD__(v46, 1);
          v48 = v46 + 1;
          if (v47)
          {
            goto LABEL_54;
          }

          v20[2] = v48;
LABEL_34:
          ++v22;
          v8 = v52;
          if (v27 == v21)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v14 = v13;
    sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
    v15 = sub_1D1E67C1C();

    v16 = v15;
    if (!(v15 >> 62))
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    }

    v17 = sub_1D1E6873C();
    v16 = v15;
    if (!v17)
    {
LABEL_5:

      goto LABEL_6;
    }

LABEL_17:
    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1D3891EF0](0);
LABEL_20:

      MEMORY[0x1D3891220]();
      if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v8 = v58[0];
      if (v7 == v6)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v16 + 32);
    goto LABEL_20;
  }

  __break(1u);
LABEL_58:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D17E695C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D17E69E8(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall CamerasModel.homeManagerDidUpdateHomes(_:)(HMHomeManager a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F3F8);
  v9 = a1.super.isa;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();

  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_13;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v30 = v13;
  *v12 = 136315394;
  *(v12 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EB9C30, &v30);
  *(v12 + 12) = 2080;
  v14 = [(objc_class *)v9 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v15 = sub_1D1E67C1C();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_11:

    v21 = 0xE400000000000000;
    v19 = 1701736302;
    goto LABEL_12;
  }

  if (!sub_1D1E6873C())
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1D3891EF0](0, v15);
    goto LABEL_9;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);
LABEL_9:
    v17 = v16;

    v18 = [v17 name];

    v19 = sub_1D1E6781C();
    v21 = v20;

LABEL_12:
    v22 = sub_1D1B1312C(v19, v21, &v30);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_1D16EC000, v10, v11, "%s current is: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
LABEL_13:

    v23 = sub_1D1E67E7C();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    sub_1D1E67E1C();
    v24 = v9;
    v25 = v2;
    v26 = sub_1D1E67E0C();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v25;
    v27[5] = v24;
    sub_1D17C6EF0(0, 0, v7, &unk_1D1E75650, v27);

    return;
  }

  __break(1u);
}

uint64_t sub_1D17E6DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E6E7C, v7, v6);
}

uint64_t sub_1D17E6E7C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  _s13HomeDataModel07CamerasC0C15setupForTesting4withySo13HMHomeManagerC_tF_0(v2);
  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall CamerasModel.homeManagerDidUpdatePrimaryHome(_:)(HMHomeManager a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v40 - v6);
  if (qword_1EC642458 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64F3F8);
    v9 = a1.super.isa;
    a1.super.isa = sub_1D1E6707C();
    v10 = sub_1D1E6835C();

    if (!os_log_type_enabled(a1.super.isa, v10))
    {
      break;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000023, 0x80000001D1EB9C50, &v45);
    *(v11 + 12) = 2080;
    v13 = [(objc_class *)v9 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v14 = sub_1D1E67C1C();

    v43 = v2;
    v44 = v7;
    isa = a1.super.isa;
    v41 = v10;
    v40 = v12;
    if (v14 >> 62)
    {
      v15 = sub_1D1E6873C();
      if (!v15)
      {
LABEL_19:

        v22 = 0xE400000000000000;
        v23 = 1701736302;
LABEL_20:
        v24 = sub_1D1B1312C(v23, v22, &v45);

        *(v11 + 14) = v24;
        *(v11 + 22) = 2080;
        v25 = [(objc_class *)v9 currentHome];
        v2 = v43;
        v7 = v44;
        a1.super.isa = isa;
        v26 = v41;
        v27 = 1701736302;
        if (v25)
        {
          v28 = v25;
          v29 = [v25 name];

          v27 = sub_1D1E6781C();
          v31 = v30;
        }

        else
        {
          v31 = 0xE400000000000000;
        }

        v32 = sub_1D1B1312C(v27, v31, &v45);

        *(v11 + 24) = v32;
        _os_log_impl(&dword_1D16EC000, a1.super.isa, v26, "%s primary: %s, current: %s", v11, 0x20u);
        v33 = v40;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v33, -1, -1);
        MEMORY[0x1D3893640](v11, -1, -1);
        break;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    v16 = 0;
    v2 = (v14 & 0xFFFFFFFFFFFFFF8);
    v7 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1D3891EF0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      a1.super.isa = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ([v17 isPrimary])
      {

        v19 = [v18 name];

        v20 = sub_1D1E6781C();
        v22 = v21;

        v23 = v20;
        goto LABEL_20;
      }

      ++v16;
      if (a1.super.isa == v15)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  v34 = sub_1D1E67E7C();
  (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
  sub_1D1E67E1C();
  v35 = v9;
  v36 = v2;
  v37 = sub_1D1E67E0C();
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E85E0];
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = v36;
  v38[5] = v35;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1E75660, v38);
}

uint64_t sub_1D17E73D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17EABFC, v7, v6);
}

Swift::Void __swiftcall CamerasModel.homeManagerDidUpdateCurrentHome(_:)(HMHomeManager a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F3F8);
  v9 = a1.super.isa;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1D1B1312C(0xD000000000000023, 0x80000001D1EB9C80, &v28);
    *(v12 + 12) = 2080;
    v14 = [(objc_class *)v9 currentHome];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 name];

      v17 = sub_1D1E6781C();
      v19 = v18;
    }

    else
    {
      v19 = 0xE400000000000000;
      v17 = 1701736302;
    }

    v20 = sub_1D1B1312C(v17, v19, &v28);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1D16EC000, v10, v11, "%s current: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v21 = sub_1D1E67E7C();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_1D1E67E1C();
  v22 = v9;
  v23 = v2;
  v24 = sub_1D1E67E0C();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v23;
  v25[5] = v22;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1E75670, v25);
}

uint64_t sub_1D17E77D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E786C, v7, v6);
}

uint64_t sub_1D17E786C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1D17E2D84(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D17E78E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E7978, v7, v6);
}

uint64_t sub_1D17E7978()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1D17E3414(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D17E7A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E7AFC, v7, v6);
}

uint64_t sub_1D17E7AFC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1D17E39B0(v2);
  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall CamerasModel.home(_:didAdd:)(HMHome _, HMAccessory didAdd)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC64F3F8);
  v14 = didAdd.super.isa;
  v15 = _.super.isa;
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_1D1B1312C(0x643A5F28656D6F68, 0xEF293A6464416469, &v43);
    *(v19 + 12) = 2080;
    v21 = [(objc_class *)v14 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D17EA9EC(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v22 = sub_1D1E68FAC();
    v23 = v9;
    v25 = v24;
    (*(v23 + 8))(v12, v8);
    v26 = sub_1D1B1312C(v22, v25, &v43);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    v27 = [(objc_class *)v15 name];
    v28 = sub_1D1E6781C();
    v30 = v29;

    v31 = sub_1D1B1312C(v28, v30, &v43);

    *(v19 + 24) = v31;
    _os_log_impl(&dword_1D16EC000, v16, v17, "%s adding camera %s to home %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v20, -1, -1);
    v32 = v19;
    v7 = v41;
    MEMORY[0x1D3893640](v32, -1, -1);
  }

  v33 = sub_1D1E67E7C();
  (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
  sub_1D1E67E1C();
  v34 = v14;
  v35 = v15;
  v36 = v42;
  v37 = sub_1D1E67E0C();
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E85E0];
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = v36;
  v38[5] = v34;
  v38[6] = v35;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1E75680, v38);
}

uint64_t sub_1D17E8014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D1E67E1C();
  v6[5] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E80B0, v8, v7);
}

uint64_t sub_1D17E80B0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1D17E3B60(v3, v2);
  v5 = v0[1];

  return v5();
}

Swift::Void __swiftcall CamerasModel.home(_:didRemove:)(HMHome _, HMAccessory didRemove)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC64F3F8);
  v14 = didRemove.super.isa;
  v15 = _.super.isa;
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EB9CB0, &v43);
    *(v19 + 12) = 2080;
    v21 = [(objc_class *)v14 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D17EA9EC(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v22 = sub_1D1E68FAC();
    v23 = v9;
    v25 = v24;
    (*(v23 + 8))(v12, v8);
    v26 = sub_1D1B1312C(v22, v25, &v43);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    v27 = [(objc_class *)v15 name];
    v28 = sub_1D1E6781C();
    v30 = v29;

    v31 = sub_1D1B1312C(v28, v30, &v43);

    *(v19 + 24) = v31;
    _os_log_impl(&dword_1D16EC000, v16, v17, "%s removing camera %s from home %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v20, -1, -1);
    v32 = v19;
    v7 = v41;
    MEMORY[0x1D3893640](v32, -1, -1);
  }

  v33 = sub_1D1E67E7C();
  (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
  sub_1D1E67E1C();
  v34 = v14;
  v35 = v15;
  v36 = v42;
  v37 = sub_1D1E67E0C();
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E85E0];
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = v36;
  v38[5] = v34;
  v38[6] = v35;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1E75690, v38);
}

uint64_t sub_1D17E85C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D1E67E1C();
  v6[5] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E8664, v8, v7);
}

uint64_t sub_1D17E8664()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1D17E44B4(v3, v2);
  v5 = v0[1];

  return v5();
}

Swift::Void __swiftcall CamerasModel.accessoryDidUpdateName(_:)(HMAccessory a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v84 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v97 = &v84 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v84 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v96 = &v84 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v84 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v100 = &v84 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v84 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v84 - v25;
  v27 = [(objc_class *)a1.super.isa home];
  if (!v27)
  {
    return;
  }

  v91 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v5;
  v28 = v27;
  v29 = [v27 uniqueIdentifier];
  v98 = v7;
  v30 = v29;

  sub_1D1E66A5C();
  v31 = v98;
  v93 = *(v98 + 32);
  v94 = v98 + 32;
  v93(v26, v24, v6);
  v32 = [(objc_class *)a1.super.isa cameraProfiles];
  if (!v32)
  {
    (*(v31 + 8))(v26, v6);
    return;
  }

  v33 = v32;
  v99 = v26;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v34 = sub_1D1E67C1C();

  if (v34 >> 62)
  {
    v83 = sub_1D1E6873C();
    v35 = v99;
    if (v83)
    {
      goto LABEL_5;
    }

LABEL_16:
    (*(v31 + 8))(v35, v6);

    return;
  }

  v35 = v99;
  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x1D3891EF0](0, v34);
  }

  else
  {
    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v36 = *(v34 + 32);
  }

  v37 = v36;
  v38 = v14;

  v39 = [v37 uniqueIdentifier];

  sub_1D1E66A5C();
  v40 = v100;
  v93(v100, v19, v6);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v41 = sub_1D1E6709C();
  __swift_project_value_buffer(v41, qword_1EC64F3F8);
  v42 = *(v31 + 16);
  v43 = v96;
  v42(v96, v99, v6);
  v89 = v42;
  v42(v14, v40, v6);
  v44 = a1.super.isa;
  v45 = sub_1D1E6707C();
  v46 = sub_1D1E6835C();

  v47 = os_log_type_enabled(v45, v46);
  v90 = v31 + 16;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v86 = v46;
    v49 = v48;
    v87 = swift_slowAlloc();
    v101 = v87;
    *v49 = 136315906;
    *(v49 + 4) = sub_1D1B1312C(0xD00000000000001ALL, 0x80000001D1EB9CD0, &v101);
    *(v49 + 12) = 2080;
    sub_1D17EA9EC(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v85 = v45;
    v50 = sub_1D1E68FAC();
    v52 = v51;
    v53 = v44;
    v54 = *(v98 + 8);
    v88 = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54(v43, v6);
    v55 = sub_1D1B1312C(v50, v52, &v101);
    v31 = v98;

    *(v49 + 14) = v55;
    *(v49 + 22) = 2080;
    v56 = sub_1D1E68FAC();
    v58 = v57;
    v96 = v54;
    v54(v38, v6);
    v59 = sub_1D1B1312C(v56, v58, &v101);

    *(v49 + 24) = v59;
    *(v49 + 32) = 2080;
    v60 = [(objc_class *)v53 name];
    v61 = sub_1D1E6781C();
    v63 = v62;

    v64 = sub_1D1B1312C(v61, v63, &v101);
    v40 = v100;

    *(v49 + 34) = v64;
    v65 = v85;
    _os_log_impl(&dword_1D16EC000, v85, v86, "%s home: %s camera: %s updated name to: %s", v49, 0x2Au);
    v66 = v87;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v66, -1, -1);
    MEMORY[0x1D3893640](v49, -1, -1);
  }

  else
  {

    v67 = *(v31 + 8);
    v88 = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v67(v14, v6);
    v96 = v67;
    v67(v43, v6);
  }

  v68 = v95;
  v69 = sub_1D1E67E7C();
  v70 = v92;
  (*(*(v69 - 8) + 56))(v92, 1, 1, v69);
  v71 = v97;
  v72 = v89;
  v89(v97, v99, v6);
  v73 = v91;
  v72(v91, v40, v6);
  sub_1D1E67E1C();
  v74 = v68;
  v75 = sub_1D1E67E0C();
  v76 = *(v31 + 80);
  v77 = (v76 + 40) & ~v76;
  v78 = (v8 + v76 + v77) & ~v76;
  v79 = swift_allocObject();
  v80 = MEMORY[0x1E69E85E0];
  *(v79 + 2) = v75;
  *(v79 + 3) = v80;
  *(v79 + 4) = v74;
  v81 = v93;
  v93(&v79[v77], v71, v6);
  v81(&v79[v78], v73, v6);
  sub_1D17C6EF0(0, 0, v70, &unk_1D1E756A0, v79);

  v82 = v96;
  (v96)(v100, v6);
  v82(v99, v6);
}

uint64_t sub_1D17E8FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  sub_1D1E67E1C();
  v6[16] = sub_1D1E67E0C();
  v11 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E90B0, v11, v10);
}

uint64_t sub_1D17E90B0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);

  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_1D17EA9EC(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 88);

    v6 = sub_1D1742188(v5);
    if (v7 & 1) != 0 && (v8 = *(*(v4 + 56) + 8 * v6), , , *(v8 + 16)) && (v9 = sub_1D1742188(*(v0 + 96)), (v10))
    {
      v12 = *(v0 + 112);
      v11 = *(v0 + 120);
      v13 = *(v0 + 104);
      v14 = *(*(v8 + 56) + 8 * v9);

      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      *(v0 + 16) = 0;
      *(v0 + 40) = -126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
      sub_1D1E67ECC();

      (*(v12 + 8))(v11, v13);
    }

    else
    {
    }
  }

  v15 = *(v0 + 120);

  v16 = *(v0 + 8);

  return v16();
}

Swift::Void __swiftcall CamerasModel.accessoryDidUpdateReachability(_:)(HMAccessory a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v81 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v81 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v96 = &v81 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v95 = &v81 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v81 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v81 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v81 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v81 - v25;
  v27 = [(objc_class *)a1.super.isa home];
  if (!v27)
  {
    return;
  }

  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v12;
  v91 = v5;
  v28 = v27;
  v29 = [v27 uniqueIdentifier];

  sub_1D1E66A5C();
  v30 = (v7 + 32);
  v93 = *(v7 + 32);
  v93(v26, v24, v6);
  v31 = [(objc_class *)a1.super.isa cameraProfiles];
  v32 = v26;
  if (!v31)
  {
    (*(v7 + 8))(v26, v6);
    return;
  }

  v33 = v31;
  isa = a1.super.isa;
  v92 = v7;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v34 = sub_1D1E67C1C();

  if (v34 >> 62)
  {
    v80 = sub_1D1E6873C();
    v35 = v95;
    v36 = v96;
    if (v80)
    {
      goto LABEL_5;
    }

LABEL_16:
    (*(v92 + 8))(v26, v6);

    return;
  }

  v35 = v95;
  v36 = v96;
  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1D3891EF0](0, v34);
  }

  else
  {
    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v37 = *(v34 + 32);
  }

  v38 = v37;

  v39 = [v38 uniqueIdentifier];

  sub_1D1E66A5C();
  v40 = v97;
  v93(v97, v19, v6);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v96 = v30;
  v41 = sub_1D1E6709C();
  __swift_project_value_buffer(v41, qword_1EC64F3F8);
  v42 = v92;
  v43 = v92 + 16;
  v44 = *(v92 + 16);
  v44(v35, v32, v6);
  v85 = v44;
  v86 = v43;
  v44(v36, v40, v6);
  v84 = isa;
  v45 = v35;
  v46 = sub_1D1E6707C();
  v47 = sub_1D1E6835C();
  v48 = os_log_type_enabled(v46, v47);
  v88 = v32;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v98 = v83;
    *v49 = 136315906;
    *(v49 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EB9CF0, &v98);
    *(v49 + 12) = 2080;
    sub_1D17EA9EC(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v82 = v47;
    v50 = sub_1D1E68FAC();
    v81 = v46;
    v52 = v51;
    v53 = *(v92 + 8);
    isa = ((v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v53(v45, v6);
    v54 = sub_1D1B1312C(v50, v52, &v98);

    *(v49 + 14) = v54;
    *(v49 + 22) = 2080;
    v55 = sub_1D1E68FAC();
    v57 = v56;
    v95 = v53;
    v53(v36, v6);
    v42 = v92;
    v58 = sub_1D1B1312C(v55, v57, &v98);

    *(v49 + 24) = v58;
    *(v49 + 32) = 1024;
    v59 = v84;
    LODWORD(v58) = [v84 isReachable];

    *(v49 + 34) = v58;
    v60 = v81;
    _os_log_impl(&dword_1D16EC000, v81, v82, "%s home: %s camera: %s reachable: %{BOOL}d", v49, 0x26u);
    v61 = v83;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v61, -1, -1);
    v62 = v49;
    v40 = v97;
    MEMORY[0x1D3893640](v62, -1, -1);
  }

  else
  {

    v63 = v84;
    v64 = *(v42 + 8);
    isa = ((v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v64(v36, v6);
    v95 = v64;
    v64(v45, v6);
  }

  v65 = v94;
  v66 = sub_1D1E67E7C();
  v67 = v91;
  (*(*(v66 - 8) + 56))(v91, 1, 1, v66);
  v68 = v90;
  v69 = v85;
  v85(v90, v88, v6);
  v70 = v89;
  v69(v89, v40, v6);
  sub_1D1E67E1C();
  v71 = v65;
  v72 = sub_1D1E67E0C();
  v73 = *(v42 + 80);
  v74 = (v73 + 40) & ~v73;
  v75 = (v8 + v73 + v74) & ~v73;
  v76 = swift_allocObject();
  v77 = MEMORY[0x1E69E85E0];
  *(v76 + 2) = v72;
  *(v76 + 3) = v77;
  *(v76 + 4) = v71;
  v78 = v93;
  v93(&v76[v74], v68, v6);
  v78(&v76[v75], v70, v6);
  sub_1D17C6EF0(0, 0, v67, &unk_1D1E756B0, v76);

  v79 = v95;
  (v95)(v97, v6);
  v79(v88, v6);
}

uint64_t sub_1D17E9B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  sub_1D1E67E1C();
  v6[16] = sub_1D1E67E0C();
  v11 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17EAC00, v11, v10);
}

uint64_t sub_1D17E9CE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17E6DE4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D17E9DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17E73D4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D17E9E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D17E77D4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D17E9F28(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F3F8);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EB9D50, &v27);
    *(v12 + 12) = 2080;
    v14 = [v9 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, &v27);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1D16EC000, v10, v11, "%s adding home: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v19 = sub_1D1E67E7C();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_1D1E67E1C();
  v20 = v9;
  v21 = v2;
  v22 = sub_1D1E67E0C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v21;
  v23[5] = v20;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1E756F8, v23);
}

uint64_t sub_1D17EA1F4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F3F8);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EB9D30, &v27);
    *(v12 + 12) = 2080;
    v14 = [v9 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, &v27);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1D16EC000, v10, v11, "%s removing home: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v19 = sub_1D1E67E7C();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_1D1E67E1C();
  v20 = v9;
  v21 = v2;
  v22 = sub_1D1E67E0C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v21;
  v23[5] = v20;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1E756E8, v23);
}

uint64_t sub_1D17EA4C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D17E8014(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D17EA5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D17E85C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D17EA6A0(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D17E8FAC(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1D17EA8C0(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D17E9B54(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_1D17EA9EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D17EAA34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17E7A64(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17EAB3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17E78E0(a1, v4, v5, v7, v6);
}

HomeDataModel::WaveformData::Source_optional __swiftcall WaveformData.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WaveformData.Source.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696F6774756FLL;
  }

  else
  {
    return 0x676E696D6F636E69;
  }
}

uint64_t sub_1D17EACB8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E696F6774756FLL;
  }

  else
  {
    v2 = 0x676E696D6F636E69;
  }

  if (*a2)
  {
    v3 = 0x676E696F6774756FLL;
  }

  else
  {
    v3 = 0x676E696D6F636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D1E6904C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D17EAD40()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17EADB8()
{
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D17EAE14()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17EAE88@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D1E68C2C();

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

void sub_1D17EAEE8(uint64_t *a1@<X8>)
{
  v2 = 0x676E696D6F636E69;
  if (*v1)
  {
    v2 = 0x676E696F6774756FLL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t _s13HomeDataModel08WaveformB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*a1)
  {
    v4 = 0x676E696F6774756FLL;
  }

  else
  {
    v4 = 0x676E696D6F636E69;
  }

  if (*a2)
  {
    v5 = 0x676E696F6774756FLL;
  }

  else
  {
    v5 = 0x676E696D6F636E69;
  }

  if (v4 == v5)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_1D1E6904C();
    swift_bridgeObjectRelease_n();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D177BC00(v2, v3);
}

unint64_t sub_1D17EAFF0()
{
  result = qword_1EC644460[0];
  if (!qword_1EC644460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC644460);
  }

  return result;
}

uint64_t sub_1D17EB068(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1D1E685AC();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1D17EB128(uint64_t a1)
{
  v2 = v1;
  v29 = *v1;
  v3 = *(v29 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v28 - v7;
  v9 = v6[16];
  if (*&v2[v9])
  {
    v10 = *&v2[v9];

    sub_1D1E67F5C();

    v6 = *v2;
  }

  v11 = &v2[v6[14]];
  v12 = *v11;
  LOBYTE(v11) = v11[8];
  v13 = &v2[v6[15]];
  v28 = *v13;
  v14 = v13[8];
  v15 = v6[13];
  v16 = (v4 + 48);
  v17 = (v4 + 16);
  v18 = (v4 + 8);
  if ((v11 & 1) != 0 || (*v16)(&v2[v15], 1, v3))
  {
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*v17)(v8, &v2[v15], v3);
    (*(*(v29 + 88) + 32))(v12, v3);
    (*v18)(v8, v3);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (!(*v16)(&v2[v15], 1, v3))
  {
    (*v17)(v8, &v2[v15], v3);
    (*(*(v29 + 88) + 32))(v28, v3);
    (*v18)(v8, v3);
  }

LABEL_9:
  v19 = sub_1D1E685AC();
  (*(*(v19 - 8) + 8))(&v2[v15], v19);
  v20 = *&v2[v9];

  v21 = &v2[*(*v2 + 136)];
  v22 = *(v21 + 1);
  v23 = v21[16];
  sub_1D17EC17C(*v21);
  v24 = &v2[*(*v2 + 144)];
  v25 = *(v24 + 1);
  v26 = v24[16];
  sub_1D17EC17C(*v24);
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_1D17EB460(uint64_t a1)
{
  sub_1D17EB128(a1);

  return MEMORY[0x1EEE6DEF0](v1);
}

id sub_1D17EB4C0()
{
  v1 = sub_1D1E6750C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter____lazy_storage___meter;
  v7 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter____lazy_storage___meter);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter____lazy_storage___meter);
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration);
    v10 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration + 8);
    v11 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration + 12);
    v12 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration + 16);
    sub_1D1741B10(0, &qword_1EC642608, 0x1E69E9610);
    (*(v2 + 104))(v5, *MEMORY[0x1E69E7F98], v1);
    v13 = v0;
    v14 = sub_1D1E683CC();
    (*(v2 + 8))(v5, v1);
    v15 = objc_allocWithZone(MEMORY[0x1E6986560]);
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v16 = [v15 initWithConfig:&v21 delegate:v13 queue:v14];

    v17 = *(v13 + v6);
    *(v13 + v6) = v16;
    v8 = v16;

    v7 = 0;
  }

  v18 = v7;
  return v8;
}

id sub_1D17EB684(int a1, double a2)
{
  v24 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644618, &qword_1D1E759E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445F0, &unk_1D1E759D0);
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445C8, &qword_1D1E759C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  *&v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter____lazy_storage___meter] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644540, &qword_1D1E75908);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v4);
  sub_1D1E67E8C();
  (*(v5 + 8))(v8, v4);
  (*(v14 + 16))(&v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_stream], v17, v13);
  v18 = v23;
  (*(v9 + 16))(&v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_continuation], v12, v23);
  v19 = &v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration];
  *v19 = 0;
  *(v19 + 2) = 0;
  *(v19 + 6) = v24;
  *(v19 + 2) = a2;
  *&v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_tokens] = MEMORY[0x1E69E7CD0];
  v20 = type metadata accessor for PowerSpectrumMeter();
  v25.receiver = v2;
  v25.super_class = v20;
  v21 = objc_msgSendSuper2(&v25, sel_init);
  (*(v9 + 8))(v12, v18);
  (*(v14 + 8))(v17, v13);
  return v21;
}

void sub_1D17EB9B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445F0, &unk_1D1E759D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  (*(v3 + 16))(&v20 - v5, &v1[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_continuation], v2);
  sub_1D1E67EDC();
  (*(v3 + 8))(v6, v2);
  v7 = OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_tokens;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = *&v1[v7];
  swift_bridgeObjectRetain_n();
  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v8 + 48) + ((v15 << 9) | (8 * v16)));
    v18 = sub_1D17EB4C0();
    [v18 unregisterPowerSpectrumForStreamToken_];
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v19 = type metadata accessor for PowerSpectrumMeter();
      v21.receiver = v1;
      v21.super_class = v19;
      objc_msgSendSuper2(&v21, sel_dealloc);
      return;
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for PowerSpectrumMeter()
{
  result = qword_1EC644528;
  if (!qword_1EC644528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D17EBD54()
{
  sub_1D17EBE74(319, &qword_1EC644538, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D17EBE74(319, &qword_1EC644548, MEMORY[0x1E69E8660]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D17EBE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644540, &qword_1D1E75908);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D17EBEE0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D17EB4C0();
  [v4 unregisterPowerSpectrumForStreamToken_];

  swift_beginAccess();
  sub_1D1AE0748(a1);
  return swift_endAccess();
}

void sub_1D17EBF60()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445C8, &qword_1D1E759C0);
  sub_1D1E67EFC();
}

unint64_t sub_1D17EC098()
{
  result = qword_1EC6445B0;
  if (!qword_1EC6445B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643F30, &qword_1D1E74588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6445B0);
  }

  return result;
}

unint64_t sub_1D17EC0FC(uint64_t a1)
{
  result = sub_1D17EC124();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D17EC124()
{
  result = qword_1EC6445C0;
  if (!qword_1EC6445C0)
  {
    type metadata accessor for PowerSpectrumMeter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6445C0);
  }

  return result;
}

uint64_t sub_1D17EC17C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - v5;

  os_unfair_lock_lock((a1 + 48));
  v7 = *(a1 + 40);

  os_unfair_lock_unlock((a1 + 48));
  v16[1] = a1;

  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; result = (*(v3 + 8))(v6, v2))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v3 + 16))(v6, *(v7 + 56) + *(v3 + 72) * (v15 | (v14 << 6)), v2);
    sub_1D1E67EDC();
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 64 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D17EC360(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445E8, &qword_1D1E759C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v46 - v7;
  if (!a1)
  {
    v9 = sub_1D18D8BFC(MEMORY[0x1E69E7CC0]);
    if ((v9 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = -1 << *(v9 + 32);
    v11 = v9 + 64;
    v12 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v55 = v15 & *(v9 + 64);
    goto LABEL_9;
  }

  v9 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1D1E68ACC();
  v11 = 0;
  v12 = 0;
  v55 = 0;
  v9 = v10 | 0x8000000000000000;
LABEL_9:

  v16 = 0;
  v46[1] = v12;
  v47 = v8;
  v17 = (v12 + 64) >> 6;
  v50 = (v5 + 8);
  v51 = v17;
  v52 = v11;
  v53 = v9;
  v48 = v4;
  v49 = v2;
  while (1)
  {
    v19 = v55;
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    v28 = sub_1D1E68ADC();
    if (!v28)
    {
      goto LABEL_45;
    }

    v30 = v29;
    v56 = v28;
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    swift_dynamicCast();
    v26 = v57;
    v56 = v30;
    sub_1D1741B10(0, &qword_1EC6445D8, 0x1E6986548);
    swift_dynamicCast();
    v27 = v57;
    v22 = v19;
    if (!v26)
    {
LABEL_45:
      sub_1D1716918();
      return;
    }

LABEL_22:
    v54 = v27;
    v31 = [v27 channels];
    v55 = v22;
    if (!v31)
    {
      goto LABEL_11;
    }

    v32 = v31;
    sub_1D1741B10(0, &qword_1EC6445F8, 0x1E6986558);
    v33 = sub_1D1E67C1C();

    if (v33 >> 62)
    {
      if (!sub_1D1E6873C())
      {
        goto LABEL_10;
      }
    }

    else if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1D3891EF0](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v34 = *(v33 + 32);
    }

    v35 = v34;

    v36 = [v35 bins];

    if (!v36)
    {
      goto LABEL_49;
    }

    sub_1D1741B10(0, &unk_1EC644600, 0x1E6986550);
    v37 = sub_1D1E67C1C();

    if (v37 >> 62)
    {
      v38 = sub_1D1E6873C();
      if (!v38)
      {
LABEL_10:

LABEL_11:
        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_12;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_10;
      }
    }

    v57 = MEMORY[0x1E69E7CC0];
    sub_1D178D0B4(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      goto LABEL_48;
    }

    v39 = 0;
    v18 = v57;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1D3891EF0](v39, v37);
      }

      else
      {
        v40 = *(v37 + 8 * v39 + 32);
      }

      v41 = v40;
      [v40 powerLevel];
      v43 = v42;

      v57 = v18;
      v45 = v18[2];
      v44 = v18[3];
      if (v45 >= v44 >> 1)
      {
        sub_1D178D0B4((v44 > 1), v45 + 1, 1);
        v18 = v57;
      }

      ++v39;
      v18[2] = v45 + 1;
      *(v18 + v45 + 8) = v43;
    }

    while (v38 != v39);

    v4 = v48;
    v8 = v47;
LABEL_12:
    v57 = [v26 integerValue];
    v58 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445F0, &unk_1D1E759D0);
    sub_1D1E67ECC();

    (*v50)(v8, v4);
    v11 = v52;
    v9 = v53;
    v17 = v51;
  }

  v20 = v16;
  v21 = v55;
  if (v55)
  {
LABEL_18:
    v22 = (v21 - 1) & v21;
    v23 = (v16 << 9) | (8 * __clz(__rbit64(v21)));
    v24 = *(*(v9 + 48) + v23);
    v25 = *(*(v9 + 56) + v23);
    v26 = v24;
    v27 = v25;
    if (!v26)
    {
      goto LABEL_45;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= v17)
    {
      goto LABEL_45;
    }

    v21 = *(v11 + 8 * v16);
    ++v20;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

unint64_t sub_1D17EC890()
{
  result = qword_1EC6445E0;
  if (!qword_1EC6445E0)
  {
    sub_1D1741B10(255, &qword_1EC6445D0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6445E0);
  }

  return result;
}

uint64_t sub_1D17ECA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17ECAEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t AccessoryDetails.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticEndpoint();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticServiceGroup();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticService(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StaticAccessory(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AccessoryDetails.Payload(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryDetails(0);
  sub_1D17ECA38(v1 + *(v23 + 20), v22, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECF60(v22, v10, type metadata accessor for StaticServiceGroup);
      v28 = sub_1D1E66A7C();
      (*(*(v28 - 8) + 16))(a1, v10, v28);
      v26 = type metadata accessor for StaticServiceGroup;
      v27 = v10;
    }

    else
    {
      sub_1D17ECF60(v22, v6, type metadata accessor for StaticEndpoint);
      v30 = sub_1D1E66A7C();
      (*(*(v30 - 8) + 16))(a1, v6, v30);
      v26 = type metadata accessor for StaticEndpoint;
      v27 = v6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v22, v14, type metadata accessor for StaticService);
    v29 = sub_1D1E66A7C();
    (*(*(v29 - 8) + 16))(a1, v14, v29);
    v26 = type metadata accessor for StaticService;
    v27 = v14;
  }

  else
  {
    sub_1D17ECF60(v22, v18, type metadata accessor for StaticAccessory);
    v25 = sub_1D1E66A7C();
    (*(*(v25 - 8) + 16))(a1, v18, v25);
    v26 = type metadata accessor for StaticAccessory;
    v27 = v18;
  }

  return sub_1D17ECFC8(v27, v26);
}

uint64_t sub_1D17ECF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17ECFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall AccessoryDetails.commit()()
{
  v1 = type metadata accessor for AccessoryDetails(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D17ECA38(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetails);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1D17ECF60(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AccessoryDetails);
  sub_1D17C6EF0(0, 0, v7, &unk_1D1E75A18, v10);
}

uint64_t sub_1D17ED250()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AccessoryDetails(0) + 20);
  v3 = swift_task_alloc();
  v0[3] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x1E69E87D8] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D17ED344;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1D17ED344()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17ED45C, 0, 0);
}

uint64_t sub_1D17ED470(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDetails(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17ED230(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D17ED568()
{
  v1 = 0x64616F6C796170;
  v2 = 0x654D656369766564;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x666E496369736162;
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

uint64_t sub_1D17ED5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1808268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D17ED620(uint64_t a1)
{
  v2 = sub_1D18073B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17ED65C(uint64_t a1)
{
  v2 = sub_1D18073B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644628, &qword_1D1E75A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18073B4();
  sub_1D1E6930C();
  v15[15] = 0;
  type metadata accessor for AccessoryDetails.Payload(0);
  sub_1D1807408(&qword_1EC644638, type metadata accessor for AccessoryDetails.Payload);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for AccessoryDetails(0);
    v12 = v11[5];
    v15[14] = 1;
    type metadata accessor for AccessoryDetailsBasicInfo();
    sub_1D1807408(&qword_1EC644640, type metadata accessor for AccessoryDetailsBasicInfo);
    sub_1D1E68F1C();
    v13 = v11[6];
    v15[13] = 2;
    type metadata accessor for StaticDeviceMetadata();
    sub_1D1807408(&qword_1EC644648, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E68E5C();
    v15[12] = *(v3 + v11[7]);
    v15[11] = 3;
    sub_1D1807450();
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AccessoryDetails.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticDeviceMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  AccessoryDetails.Payload.hash(into:)(a1);
  v13 = type metadata accessor for AccessoryDetails(0);
  v14 = v1 + v13[5];
  AccessoryDetailsBasicInfo.hash(into:)(a1);
  sub_1D1741C08(v2 + v13[6], v12, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D17ECF60(v12, v8, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)();
    sub_1D17ECFC8(v8, type metadata accessor for StaticDeviceMetadata);
  }

  v15 = *(v2 + v13[7]);
  if (v15 == 8)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (v15 > 4)
  {
    switch(v15)
    {
      case 5:
        v17 = 3;
        return MEMORY[0x1D3892850](v17);
      case 6:
        v17 = 4;
        return MEMORY[0x1D3892850](v17);
      case 7:
        v17 = 6;
        return MEMORY[0x1D3892850](v17);
    }

LABEL_17:
    MEMORY[0x1D3892850](5);
    v17 = v15 & 1;
    return MEMORY[0x1D3892850](v17);
  }

  if (v15 == 2)
  {
    v17 = 0;
    return MEMORY[0x1D3892850](v17);
  }

  if (v15 == 3)
  {
    v17 = 1;
    return MEMORY[0x1D3892850](v17);
  }

  if (v15 != 4)
  {
    goto LABEL_17;
  }

  v17 = 2;
  return MEMORY[0x1D3892850](v17);
}

uint64_t AccessoryDetails.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticDeviceMetadata();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v17);
  v11 = type metadata accessor for AccessoryDetails(0);
  v12 = v0 + v11[5];
  AccessoryDetailsBasicInfo.hash(into:)(v17);
  sub_1D1741C08(v1 + v11[6], v10, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D17ECF60(v10, v6, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)();
    sub_1D17ECFC8(v6, type metadata accessor for StaticDeviceMetadata);
  }

  v13 = *(v1 + v11[7]);
  if (v13 != 8)
  {
    sub_1D1E6922C();
    if (v13 > 4)
    {
      switch(v13)
      {
        case 5:
          v14 = 3;
          goto LABEL_20;
        case 6:
          v14 = 4;
          goto LABEL_20;
        case 7:
          v14 = 6;
          goto LABEL_20;
      }
    }

    else
    {
      switch(v13)
      {
        case 2:
          v14 = 0;
          goto LABEL_20;
        case 3:
          v14 = 1;
          goto LABEL_20;
        case 4:
          v14 = 2;
LABEL_20:
          MEMORY[0x1D3892850](v14);
          return sub_1D1E6926C();
      }
    }

    MEMORY[0x1D3892850](5);
    v14 = v13 & 1;
    goto LABEL_20;
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t AccessoryDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v26 - v5;
  v30 = type metadata accessor for AccessoryDetailsBasicInfo();
  v6 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AccessoryDetails.Payload(0);
  v9 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644658, &qword_1D1E75A28);
  v29 = *(v33 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v26 - v12;
  v14 = type metadata accessor for AccessoryDetails(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 28);
  v19[v18] = 8;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18073B4();
  v34 = v13;
  v21 = v35;
  sub_1D1E692FC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  v35 = v19;
  v23 = v29;
  v40 = 0;
  sub_1D1807408(&qword_1EC644660, type metadata accessor for AccessoryDetails.Payload);
  sub_1D1E68D7C();
  sub_1D17ECF60(v32, v18, type metadata accessor for AccessoryDetails.Payload);
  v39 = 1;
  sub_1D1807408(&qword_1EC644668, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1E68D7C();
  sub_1D17ECF60(v22, v18 + *(v14 + 20), type metadata accessor for AccessoryDetailsBasicInfo);
  type metadata accessor for StaticDeviceMetadata();
  v38 = 2;
  sub_1D1807408(&qword_1EC644670, type metadata accessor for StaticDeviceMetadata);
  v24 = v28;
  sub_1D1E68CBC();
  sub_1D1741A90(v24, v18 + *(v14 + 24), &qword_1EC644620, &unk_1D1E75A00);
  v36 = 3;
  sub_1D18074A4();
  sub_1D1E68CBC();
  (*(v23 + 8))(v34, v33);
  *v35 = v37;
  sub_1D17ECA38(0, v27, type metadata accessor for AccessoryDetails);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D17ECFC8(0, type metadata accessor for AccessoryDetails);
}